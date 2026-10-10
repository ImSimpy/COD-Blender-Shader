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
; shader hash: 9e06ec6cceacc4da9222c79d18472325
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
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
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
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
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
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
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
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1155 = phi float [ 0.000000e+00, %488 ], [ %1136, %1135 ]
  %1156 = phi float [ 0.000000e+00, %488 ], [ %1137, %1135 ]
  %1157 = phi float [ 0.000000e+00, %488 ], [ %1138, %1135 ]
  %1158 = phi float [ 0.000000e+00, %488 ], [ %1008, %1135 ]
  %1159 = phi float [ 0.000000e+00, %488 ], [ %1009, %1135 ]
  %1160 = phi float [ 0.000000e+00, %488 ], [ %1010, %1135 ]
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
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1829 = fmul fast float %1828, %1158
  %1830 = fmul fast float %1828, %1159
  %1831 = fmul fast float %1828, %1160
  %1832 = fmul fast float %1828, %1155
  %1833 = fmul fast float %1828, %1156
  %1834 = fmul fast float %1828, %1157
  br label %1835

; <label>:1835                                    ; preds = %1827, %1810
  %1836 = phi float [ %1832, %1827 ], [ %1155, %1810 ]
  %1837 = phi float [ %1833, %1827 ], [ %1156, %1810 ]
  %1838 = phi float [ %1834, %1827 ], [ %1157, %1810 ]
  %1839 = phi float [ %1829, %1827 ], [ %1158, %1810 ]
  %1840 = phi float [ %1830, %1827 ], [ %1159, %1810 ]
  %1841 = phi float [ %1831, %1827 ], [ %1160, %1810 ]
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
  %1855 = fsub fast float %1683, %1839
  %1856 = fsub fast float %1684, %1840
  %1857 = fsub fast float %1685, %1841
  %1858 = fmul fast float %1849, %1855
  %1859 = fmul fast float %1849, %1856
  %1860 = fmul fast float %1849, %1857
  %1861 = fadd fast float %1858, %1839
  %1862 = fadd fast float %1859, %1840
  %1863 = fadd fast float %1860, %1841
  %1864 = fsub fast float %1669, %1161
  %1865 = fmul fast float %1849, %1864
  %1866 = fadd fast float %1865, %1161
  %1867 = fsub fast float %1811, %1836
  %1868 = fsub fast float %1812, %1837
  %1869 = fsub fast float %1813, %1838
  %1870 = fmul fast float %1854, %1867
  %1871 = fmul fast float %1854, %1868
  %1872 = fmul fast float %1854, %1869
  %1873 = fadd fast float %1870, %1836
  %1874 = fadd fast float %1871, %1837
  %1875 = fadd fast float %1872, %1838
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
  %1891 = fmul fast float %1888, %1839
  %1892 = fmul fast float %1889, %1840
  %1893 = fmul fast float %1890, %1841
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
  %1911 = fmul fast float %1910, %1839
  %1912 = fadd fast float %1911, %1909
  %1913 = fmul fast float %1912, %1839
  %1914 = fmul fast float %1907, 2.000000e+00
  %1915 = fsub fast float 1.000000e+00, %1914
  %1916 = fmul fast float %1915, %1840
  %1917 = fadd fast float %1916, %1914
  %1918 = fmul fast float %1917, %1840
  %1919 = fmul fast float %1908, 2.000000e+00
  %1920 = fsub fast float 1.000000e+00, %1919
  %1921 = fmul fast float %1920, %1841
  %1922 = fadd fast float %1921, %1919
  %1923 = fmul fast float %1922, %1841
  br label %1924

; <label>:1924                                    ; preds = %1896, %1894, %1881, %1851, %1835
  %1925 = phi float [ %1836, %1835 ], [ %1836, %1896 ], [ %1836, %1894 ], [ %1836, %1881 ], [ %1873, %1851 ]
  %1926 = phi float [ %1837, %1835 ], [ %1837, %1896 ], [ %1837, %1894 ], [ %1837, %1881 ], [ %1874, %1851 ]
  %1927 = phi float [ %1838, %1835 ], [ %1838, %1896 ], [ %1838, %1894 ], [ %1838, %1881 ], [ %1875, %1851 ]
  %1928 = phi float [ %1839, %1835 ], [ %1913, %1896 ], [ %1839, %1894 ], [ %1891, %1881 ], [ %1861, %1851 ]
  %1929 = phi float [ %1840, %1835 ], [ %1918, %1896 ], [ %1840, %1894 ], [ %1892, %1881 ], [ %1862, %1851 ]
  %1930 = phi float [ %1841, %1835 ], [ %1923, %1896 ], [ %1841, %1894 ], [ %1893, %1881 ], [ %1863, %1851 ]
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
  %2134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2683 = fmul fast float %2682, %2013
  %2684 = fmul fast float %2682, %2014
  %2685 = fmul fast float %2682, %2015
  %2686 = fmul fast float %2682, %2010
  %2687 = fmul fast float %2682, %2011
  %2688 = fmul fast float %2682, %2012
  br label %2689

; <label>:2689                                    ; preds = %2681, %2664
  %2690 = phi float [ %2686, %2681 ], [ %2010, %2664 ]
  %2691 = phi float [ %2687, %2681 ], [ %2011, %2664 ]
  %2692 = phi float [ %2688, %2681 ], [ %2012, %2664 ]
  %2693 = phi float [ %2683, %2681 ], [ %2013, %2664 ]
  %2694 = phi float [ %2684, %2681 ], [ %2014, %2664 ]
  %2695 = phi float [ %2685, %2681 ], [ %2015, %2664 ]
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
  %2709 = fsub fast float %2537, %2693
  %2710 = fsub fast float %2538, %2694
  %2711 = fsub fast float %2539, %2695
  %2712 = fmul fast float %2703, %2709
  %2713 = fmul fast float %2703, %2710
  %2714 = fmul fast float %2703, %2711
  %2715 = fadd fast float %2712, %2693
  %2716 = fadd fast float %2713, %2694
  %2717 = fadd fast float %2714, %2695
  %2718 = fsub fast float %2523, %2016
  %2719 = fmul fast float %2703, %2718
  %2720 = fadd fast float %2719, %2016
  %2721 = fsub fast float %2665, %2690
  %2722 = fsub fast float %2666, %2691
  %2723 = fsub fast float %2667, %2692
  %2724 = fmul fast float %2708, %2721
  %2725 = fmul fast float %2708, %2722
  %2726 = fmul fast float %2708, %2723
  %2727 = fadd fast float %2724, %2690
  %2728 = fadd fast float %2725, %2691
  %2729 = fadd fast float %2726, %2692
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
  %2745 = fmul fast float %2742, %2693
  %2746 = fmul fast float %2743, %2694
  %2747 = fmul fast float %2744, %2695
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
  %2765 = fmul fast float %2764, %2693
  %2766 = fadd fast float %2765, %2763
  %2767 = fmul fast float %2766, %2693
  %2768 = fmul fast float %2761, 2.000000e+00
  %2769 = fsub fast float 1.000000e+00, %2768
  %2770 = fmul fast float %2769, %2694
  %2771 = fadd fast float %2770, %2768
  %2772 = fmul fast float %2771, %2694
  %2773 = fmul fast float %2762, 2.000000e+00
  %2774 = fsub fast float 1.000000e+00, %2773
  %2775 = fmul fast float %2774, %2695
  %2776 = fadd fast float %2775, %2773
  %2777 = fmul fast float %2776, %2695
  br label %2778

; <label>:2778                                    ; preds = %2750, %2748, %2735, %2705, %2689
  %2779 = phi float [ %2690, %2689 ], [ %2690, %2750 ], [ %2690, %2748 ], [ %2690, %2735 ], [ %2727, %2705 ]
  %2780 = phi float [ %2691, %2689 ], [ %2691, %2750 ], [ %2691, %2748 ], [ %2691, %2735 ], [ %2728, %2705 ]
  %2781 = phi float [ %2692, %2689 ], [ %2692, %2750 ], [ %2692, %2748 ], [ %2692, %2735 ], [ %2729, %2705 ]
  %2782 = phi float [ %2693, %2689 ], [ %2767, %2750 ], [ %2693, %2748 ], [ %2745, %2735 ], [ %2715, %2705 ]
  %2783 = phi float [ %2694, %2689 ], [ %2772, %2750 ], [ %2694, %2748 ], [ %2746, %2735 ], [ %2716, %2705 ]
  %2784 = phi float [ %2695, %2689 ], [ %2777, %2750 ], [ %2695, %2748 ], [ %2747, %2735 ], [ %2717, %2705 ]
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
  %2988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %3537 = fmul fast float %3536, %2867
  %3538 = fmul fast float %3536, %2868
  %3539 = fmul fast float %3536, %2869
  %3540 = fmul fast float %3536, %2864
  %3541 = fmul fast float %3536, %2865
  %3542 = fmul fast float %3536, %2866
  br label %3543

; <label>:3543                                    ; preds = %3535, %3518
  %3544 = phi float [ %3540, %3535 ], [ %2864, %3518 ]
  %3545 = phi float [ %3541, %3535 ], [ %2865, %3518 ]
  %3546 = phi float [ %3542, %3535 ], [ %2866, %3518 ]
  %3547 = phi float [ %3537, %3535 ], [ %2867, %3518 ]
  %3548 = phi float [ %3538, %3535 ], [ %2868, %3518 ]
  %3549 = phi float [ %3539, %3535 ], [ %2869, %3518 ]
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
  %3563 = fsub fast float %3391, %3547
  %3564 = fsub fast float %3392, %3548
  %3565 = fsub fast float %3393, %3549
  %3566 = fmul fast float %3557, %3563
  %3567 = fmul fast float %3557, %3564
  %3568 = fmul fast float %3557, %3565
  %3569 = fadd fast float %3566, %3547
  %3570 = fadd fast float %3567, %3548
  %3571 = fadd fast float %3568, %3549
  %3572 = fsub fast float %3377, %2870
  %3573 = fmul fast float %3557, %3572
  %3574 = fadd fast float %3573, %2870
  %3575 = fsub fast float %3519, %3544
  %3576 = fsub fast float %3520, %3545
  %3577 = fsub fast float %3521, %3546
  %3578 = fmul fast float %3562, %3575
  %3579 = fmul fast float %3562, %3576
  %3580 = fmul fast float %3562, %3577
  %3581 = fadd fast float %3578, %3544
  %3582 = fadd fast float %3579, %3545
  %3583 = fadd fast float %3580, %3546
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
  %3599 = fmul fast float %3596, %3547
  %3600 = fmul fast float %3597, %3548
  %3601 = fmul fast float %3598, %3549
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
  %3619 = fmul fast float %3618, %3547
  %3620 = fadd fast float %3619, %3617
  %3621 = fmul fast float %3620, %3547
  %3622 = fmul fast float %3615, 2.000000e+00
  %3623 = fsub fast float 1.000000e+00, %3622
  %3624 = fmul fast float %3623, %3548
  %3625 = fadd fast float %3624, %3622
  %3626 = fmul fast float %3625, %3548
  %3627 = fmul fast float %3616, 2.000000e+00
  %3628 = fsub fast float 1.000000e+00, %3627
  %3629 = fmul fast float %3628, %3549
  %3630 = fadd fast float %3629, %3627
  %3631 = fmul fast float %3630, %3549
  br label %3632

; <label>:3632                                    ; preds = %3604, %3602, %3589, %3559, %3543
  %3633 = phi float [ %3544, %3543 ], [ %3544, %3604 ], [ %3544, %3602 ], [ %3544, %3589 ], [ %3581, %3559 ]
  %3634 = phi float [ %3545, %3543 ], [ %3545, %3604 ], [ %3545, %3602 ], [ %3545, %3589 ], [ %3582, %3559 ]
  %3635 = phi float [ %3546, %3543 ], [ %3546, %3604 ], [ %3546, %3602 ], [ %3546, %3589 ], [ %3583, %3559 ]
  %3636 = phi float [ %3547, %3543 ], [ %3621, %3604 ], [ %3547, %3602 ], [ %3599, %3589 ], [ %3569, %3559 ]
  %3637 = phi float [ %3548, %3543 ], [ %3626, %3604 ], [ %3548, %3602 ], [ %3600, %3589 ], [ %3570, %3559 ]
  %3638 = phi float [ %3549, %3543 ], [ %3631, %3604 ], [ %3549, %3602 ], [ %3601, %3589 ], [ %3571, %3559 ]
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
  br i1 %3759, label %3760, label %4272

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
  %3777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %3811, label %4240, label %3812

; <label>:3812                                    ; preds = %3760
  %3813 = and i32 %3808, 1023
  br label %3814

; <label>:3814                                    ; preds = %3941, %3812
  %3815 = phi i32 [ %3891, %3941 ], [ 0, %3812 ]
  %3816 = phi float [ %3942, %3941 ], [ 0.000000e+00, %3812 ]
  %3817 = phi float [ %3943, %3941 ], [ %1162, %3812 ]
  %3818 = phi float [ %3944, %3941 ], [ %3729, %3812 ]
  %3819 = phi float [ %3945, %3941 ], [ %3727, %3812 ]
  %3820 = phi float [ %3946, %3941 ], [ 0.000000e+00, %3812 ]
  %3821 = phi float [ %3947, %3941 ], [ 0.000000e+00, %3812 ]
  %3822 = phi float [ %3948, %3941 ], [ %3718, %3812 ]
  %3823 = phi float [ %3949, %3941 ], [ %3719, %3812 ]
  %3824 = phi float [ %3950, %3941 ], [ %3720, %3812 ]
  %3825 = phi float [ %3951, %3941 ], [ %3755, %3812 ]
  %3826 = phi float [ %3952, %3941 ], [ %3756, %3812 ]
  %3827 = phi float [ %3953, %3941 ], [ %3757, %3812 ]
  %3828 = phi float [ %3954, %3941 ], [ %3726, %3812 ]
  %3829 = phi float [ %3955, %3941 ], [ %3725, %3812 ]
  %3830 = phi float [ %3956, %3941 ], [ 0.000000e+00, %3812 ]
  %3831 = phi float [ %3957, %3941 ], [ %3724, %3812 ]
  %3832 = phi float [ %3958, %3941 ], [ %3721, %3812 ]
  %3833 = phi float [ %3959, %3941 ], [ %3722, %3812 ]
  %3834 = phi float [ %3960, %3941 ], [ %3723, %3812 ]
  %3835 = add nuw nsw i32 %3815, %3810
  %3836 = shl i32 %3835, 2
  %3837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.i32 %3837, 0
  %3839 = shl i32 %3838, 8
  %3840 = or i32 %3839, 48
  %3841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.f32 %3841, 0
  %3843 = extractvalue %dx.types.ResRet.f32 %3841, 1
  %3844 = extractvalue %dx.types.ResRet.f32 %3841, 2
  %3845 = extractvalue %dx.types.ResRet.f32 %3841, 3
  %3846 = or i32 %3839, 64
  %3847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3848 = extractvalue %dx.types.ResRet.i32 %3847, 0
  %3849 = extractvalue %dx.types.ResRet.i32 %3847, 1
  %3850 = or i32 %3839, 80
  %3851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3852 = extractvalue %dx.types.ResRet.f32 %3851, 2
  %3853 = extractvalue %dx.types.ResRet.f32 %3851, 3
  %3854 = or i32 %3839, 96
  %3855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3856 = extractvalue %dx.types.ResRet.f32 %3855, 0
  %3857 = extractvalue %dx.types.ResRet.f32 %3855, 1
  %3858 = extractvalue %dx.types.ResRet.f32 %3855, 2
  %3859 = extractvalue %dx.types.ResRet.f32 %3855, 3
  %3860 = or i32 %3839, 112
  %3861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3860, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 2
  %3863 = or i32 %3839, 128
  %3864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3863, i32 undef)  ; BufferLoad(srv,index,wot)
  %3865 = extractvalue %dx.types.ResRet.f32 %3864, 0
  %3866 = extractvalue %dx.types.ResRet.f32 %3864, 1
  %3867 = extractvalue %dx.types.ResRet.f32 %3864, 2
  %3868 = extractvalue %dx.types.ResRet.f32 %3864, 3
  %3869 = or i32 %3839, 144
  %3870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3869, i32 undef)  ; BufferLoad(srv,index,wot)
  %3871 = extractvalue %dx.types.ResRet.f32 %3870, 0
  %3872 = extractvalue %dx.types.ResRet.f32 %3870, 1
  %3873 = extractvalue %dx.types.ResRet.f32 %3870, 2
  %3874 = extractvalue %dx.types.ResRet.f32 %3870, 3
  %3875 = or i32 %3839, 160
  %3876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3875, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.f32 %3876, 0
  %3878 = extractvalue %dx.types.ResRet.f32 %3876, 1
  %3879 = extractvalue %dx.types.ResRet.f32 %3876, 2
  %3880 = extractvalue %dx.types.ResRet.f32 %3876, 3
  %3881 = or i32 %3839, 192
  %3882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3881, i32 undef)  ; BufferLoad(srv,index,wot)
  %3883 = extractvalue %dx.types.ResRet.i32 %3882, 0
  %3884 = or i32 %3839, 208
  %3885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3884, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.f32 %3885, 0
  %3887 = or i32 %3839, 248
  %3888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.f32 %3888, 0
  %3890 = extractvalue %dx.types.ResRet.f32 %3888, 1
  %3891 = add nuw nsw i32 %3815, 1
  %3892 = bitcast float %3845 to i32
  %3893 = and i32 %3892, 512
  %3894 = icmp eq i32 %3893, 0
  %3895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3839, i32 undef)  ; BufferLoad(srv,index,wot)
  %3896 = extractvalue %dx.types.ResRet.f32 %3895, 0
  %3897 = extractvalue %dx.types.ResRet.f32 %3895, 1
  %3898 = extractvalue %dx.types.ResRet.f32 %3895, 2
  %3899 = extractvalue %dx.types.ResRet.f32 %3895, 3
  %3900 = call float @dx.op.dot4.f32(i32 56, float %3896, float %3897, float %3898, float %3899, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3901 = or i32 %3839, 16
  %3902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3901, i32 undef)  ; BufferLoad(srv,index,wot)
  %3903 = extractvalue %dx.types.ResRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.ResRet.f32 %3902, 1
  %3905 = extractvalue %dx.types.ResRet.f32 %3902, 2
  %3906 = extractvalue %dx.types.ResRet.f32 %3902, 3
  %3907 = call float @dx.op.dot4.f32(i32 56, float %3903, float %3904, float %3905, float %3906, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3908 = or i32 %3839, 32
  %3909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3910 = extractvalue %dx.types.ResRet.f32 %3909, 0
  %3911 = extractvalue %dx.types.ResRet.f32 %3909, 1
  %3912 = extractvalue %dx.types.ResRet.f32 %3909, 2
  %3913 = extractvalue %dx.types.ResRet.f32 %3909, 3
  %3914 = call float @dx.op.dot4.f32(i32 56, float %3910, float %3911, float %3912, float %3913, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3915 = call float @dx.op.unary.f32(i32 27, float %3900)  ; Round_ni(value)
  %3916 = call float @dx.op.unary.f32(i32 6, float %3915)  ; FAbs(value)
  %3917 = call float @dx.op.unary.f32(i32 27, float %3907)  ; Round_ni(value)
  %3918 = call float @dx.op.unary.f32(i32 6, float %3917)  ; FAbs(value)
  %3919 = call float @dx.op.unary.f32(i32 6, float %3914)  ; FAbs(value)
  %3920 = call float @dx.op.unary.f32(i32 27, float %3919)  ; Round_ni(value)
  %3921 = fadd fast float %3918, %3916
  %3922 = fadd fast float %3921, %3920
  %3923 = fcmp fast oeq float %3922, 0.000000e+00
  %3924 = call float @dx.op.dot4.f32(i32 56, float %3896, float %3897, float %3898, float %3899, float %3767, float %3768, float %3769, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3925 = call float @dx.op.dot4.f32(i32 56, float %3903, float %3904, float %3905, float %3906, float %3767, float %3768, float %3769, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3926 = call float @dx.op.dot4.f32(i32 56, float %3896, float %3897, float %3898, float %3899, float %3770, float %3771, float %3772, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3927 = call float @dx.op.dot4.f32(i32 56, float %3903, float %3904, float %3905, float %3906, float %3770, float %3771, float %3772, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3928 = fsub fast float %3924, %3900
  %3929 = fsub fast float %3926, %3900
  %3930 = fsub fast float %3925, %3907
  %3931 = fsub fast float %3927, %3907
  %3932 = call float @dx.op.dot3.f32(i32 55, float %3842, float %3843, float %3844, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %3933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3934 = extractvalue %dx.types.CBufRet.f32 %3933, 2
  %3935 = fadd fast float %3934, %3932
  %3936 = call float @dx.op.unary.f32(i32 7, float %3935)  ; Saturate(value)
  %3937 = extractvalue %dx.types.CBufRet.f32 %3933, 0
  %3938 = fcmp fast ogt float %3936, %3937
  %3939 = and i1 %3923, %3938
  %3940 = and i1 %3894, %3939
  br i1 %3940, label %3962, label %3941

; <label>:3941                                    ; preds = %4226, %4043, %3962, %3814
  %3942 = phi float [ %3816, %3962 ], [ %4046, %4043 ], [ %4046, %4226 ], [ %3816, %3814 ]
  %3943 = phi float [ %3817, %3962 ], [ %3817, %4043 ], [ %4201, %4226 ], [ %3817, %3814 ]
  %3944 = phi float [ %3818, %3962 ], [ %3818, %4043 ], [ %4200, %4226 ], [ %3818, %3814 ]
  %3945 = phi float [ %3819, %3962 ], [ %3819, %4043 ], [ %4198, %4226 ], [ %3819, %3814 ]
  %3946 = phi float [ %3820, %3962 ], [ %3820, %4043 ], [ %4170, %4226 ], [ %3820, %3814 ]
  %3947 = phi float [ %3821, %3962 ], [ %3821, %4043 ], [ %4168, %4226 ], [ %3821, %3814 ]
  %3948 = phi float [ %3822, %3962 ], [ %3822, %4043 ], [ %4236, %4226 ], [ %3822, %3814 ]
  %3949 = phi float [ %3823, %3962 ], [ %3823, %4043 ], [ %4237, %4226 ], [ %3823, %3814 ]
  %3950 = phi float [ %3824, %3962 ], [ %3824, %4043 ], [ %4238, %4226 ], [ %3824, %3814 ]
  %3951 = phi float [ %3825, %3962 ], [ %3825, %4043 ], [ %4149, %4226 ], [ %3825, %3814 ]
  %3952 = phi float [ %3826, %3962 ], [ %3826, %4043 ], [ %4150, %4226 ], [ %3826, %3814 ]
  %3953 = phi float [ %3827, %3962 ], [ %3827, %4043 ], [ %4151, %4226 ], [ %3827, %3814 ]
  %3954 = phi float [ %3828, %3962 ], [ %3828, %4043 ], [ %4178, %4226 ], [ %3828, %3814 ]
  %3955 = phi float [ %3829, %3962 ], [ %3829, %4043 ], [ %4175, %4226 ], [ %3829, %3814 ]
  %3956 = phi float [ %3830, %3962 ], [ %3830, %4043 ], [ %4172, %4226 ], [ %3830, %3814 ]
  %3957 = phi float [ %3831, %3962 ], [ %3831, %4043 ], [ %4166, %4226 ], [ %3831, %3814 ]
  %3958 = phi float [ %3832, %3962 ], [ %3832, %4043 ], [ %4161, %4226 ], [ %3832, %3814 ]
  %3959 = phi float [ %3833, %3962 ], [ %3833, %4043 ], [ %4162, %4226 ], [ %3833, %3814 ]
  %3960 = phi float [ %3834, %3962 ], [ %3834, %4043 ], [ %4163, %4226 ], [ %3834, %3814 ]
  %3961 = icmp eq i32 %3891, %3813
  br i1 %3961, label %4239, label %3814

; <label>:3962                                    ; preds = %3814
  %3963 = extractvalue %dx.types.ResRet.f32 %3861, 3
  %3964 = extractvalue %dx.types.ResRet.f32 %3861, 1
  %3965 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3966 = extractvalue %dx.types.ResRet.f32 %3851, 1
  %3967 = extractvalue %dx.types.ResRet.f32 %3851, 0
  %3968 = extractvalue %dx.types.ResRet.i32 %3847, 3
  %3969 = extractvalue %dx.types.ResRet.i32 %3847, 2
  %3970 = add i32 %3968, 0
  %3971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3970, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3973 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3971, %dx.types.Handle %3972, float %3900, float %3907, float undef, float undef, i32 0, i32 0, i32 undef, float %3928, float %3930, float undef, float %3929, float %3931, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3974 = extractvalue %dx.types.ResRet.f32 %3973, 0
  %3975 = fmul fast float %3974, %3967
  %3976 = fadd fast float %3975, %3966
  %3977 = call float @dx.op.unary.f32(i32 7, float %3976)  ; Saturate(value)
  %3978 = fmul fast float %3900, %3856
  %3979 = call float @dx.op.tertiary.f32(i32 46, float %3857, float %3907, float %3978)  ; FMad(a,b,c)
  %3980 = fadd fast float %3979, %3965
  %3981 = fmul fast float %3900, %3858
  %3982 = call float @dx.op.tertiary.f32(i32 46, float %3859, float %3907, float %3981)  ; FMad(a,b,c)
  %3983 = fadd fast float %3982, %3964
  %3984 = fmul fast float %3928, %3856
  %3985 = call float @dx.op.tertiary.f32(i32 46, float %3857, float %3930, float %3984)  ; FMad(a,b,c)
  %3986 = fmul fast float %3928, %3858
  %3987 = call float @dx.op.tertiary.f32(i32 46, float %3859, float %3930, float %3986)  ; FMad(a,b,c)
  %3988 = fmul fast float %3929, %3856
  %3989 = call float @dx.op.tertiary.f32(i32 46, float %3857, float %3931, float %3988)  ; FMad(a,b,c)
  %3990 = fmul fast float %3929, %3858
  %3991 = call float @dx.op.tertiary.f32(i32 46, float %3859, float %3931, float %3990)  ; FMad(a,b,c)
  %3992 = add i32 %3969, 0
  %3993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3992, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3994 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3993, %dx.types.Handle %3972, float %3980, float %3983, float undef, float undef, i32 0, i32 0, i32 undef, float %3985, float %3987, float undef, float %3989, float %3991, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3995 = extractvalue %dx.types.ResRet.f32 %3994, 0
  %3996 = and i32 %3892, 1024
  %3997 = icmp ne i32 %3996, 0
  %3998 = fcmp fast ogt float %3995, 0x3FE0101020000000
  %3999 = uitofp i1 %3998 to float
  %4000 = select i1 %3997, float %3999, float %3995
  %4001 = and i32 %3892, 8192
  %4002 = icmp ne i32 %4001, 0
  %4003 = select i1 %4002, float %3963, float 1.000000e+00
  %4004 = fmul fast float %3900, 2.000000e+00
  %4005 = fadd fast float %4004, -1.000000e+00
  %4006 = call float @dx.op.unary.f32(i32 6, float %4005)  ; FAbs(value)
  %4007 = fmul fast float %4006, %3889
  %4008 = fsub fast float %4007, %3889
  %4009 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  %4010 = fmul fast float %3907, 2.000000e+00
  %4011 = fadd fast float %4010, -1.000000e+00
  %4012 = call float @dx.op.unary.f32(i32 6, float %4011)  ; FAbs(value)
  %4013 = fmul fast float %4012, %3890
  %4014 = fsub fast float %4013, %3890
  %4015 = call float @dx.op.unary.f32(i32 7, float %4014)  ; Saturate(value)
  %4016 = fmul fast float %3919, %3852
  %4017 = fsub fast float %4016, %3852
  %4018 = call float @dx.op.unary.f32(i32 7, float %4017)  ; Saturate(value)
  %4019 = fmul fast float %3977, %4003
  %4020 = fmul fast float %4019, %3974
  %4021 = fmul fast float %4020, %4009
  %4022 = fmul fast float %4021, %4000
  %4023 = fmul fast float %4022, %4015
  %4024 = fmul fast float %4023, %4018
  %4025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4025, 1
  %4027 = extractvalue %dx.types.CBufRet.f32 %4025, 0
  %4028 = fsub fast float %3936, %4027
  %4029 = fmul fast float %4028, %4026
  %4030 = call float @dx.op.unary.f32(i32 7, float %4029)  ; Saturate(value)
  %4031 = fmul fast float %4024, %3853
  %4032 = fadd fast float %4024, %3853
  %4033 = fmul fast float %4032, %3862
  %4034 = fsub fast float %4033, %3862
  %4035 = call float @dx.op.unary.f32(i32 7, float %4034)  ; Saturate(value)
  %4036 = and i32 %3892, 128
  %4037 = icmp ne i32 %4036, 0
  %4038 = select i1 %4037, float %4035, float %4031
  %4039 = fmul fast float %4038, %4030
  %4040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4040, 0
  %4042 = fcmp fast ugt float %4039, %4041
  br i1 %4042, label %4043, label %3941

; <label>:4043                                    ; preds = %3962
  %4044 = select i1 %4002, float %4039, float 0.000000e+00
  %4045 = fadd fast float %4044, %3816
  %4046 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  br i1 %4002, label %3941, label %4047

; <label>:4047                                    ; preds = %4043
  %4048 = and i32 %3892, 4
  %4049 = and i32 %3892, 8
  %4050 = add i32 %3848, 0
  %4051 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4050, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4052 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4053 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4051, %dx.types.Handle %4052, float %3980, float %3983, float undef, float undef, i32 0, i32 0, i32 undef, float %3985, float %3987, float undef, float %3989, float %3991, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4054 = extractvalue %dx.types.ResRet.f32 %4053, 0
  %4055 = extractvalue %dx.types.ResRet.f32 %4053, 1
  %4056 = extractvalue %dx.types.ResRet.f32 %4053, 2
  %4057 = extractvalue %dx.types.ResRet.f32 %4053, 3
  %4058 = bitcast float %3874 to i32
  %4059 = and i32 %4058, 255
  %4060 = uitofp i32 %4059 to float
  %4061 = lshr i32 %4058, 8
  %4062 = and i32 %4061, 255
  %4063 = uitofp i32 %4062 to float
  %4064 = fmul fast float %4057, %4060
  %4065 = fadd fast float %4064, %4063
  %4066 = fmul fast float %4065, 0x3F70101000000000
  %4067 = add i32 %3849, 0
  %4068 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4067, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4069 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4068, %dx.types.Handle %4052, float %3980, float %3983, float undef, float undef, i32 0, i32 0, i32 undef, float %3985, float %3987, float undef, float %3989, float %3991, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4070 = extractvalue %dx.types.ResRet.f32 %4069, 0
  %4071 = extractvalue %dx.types.ResRet.f32 %4069, 1
  %4072 = extractvalue %dx.types.ResRet.f32 %4069, 2
  %4073 = extractvalue %dx.types.ResRet.f32 %4069, 3
  %4074 = bitcast float %3868 to i32
  %4075 = and i32 %4074, 255
  %4076 = uitofp i32 %4075 to float
  %4077 = lshr i32 %4074, 8
  %4078 = and i32 %4077, 255
  %4079 = uitofp i32 %4078 to float
  %4080 = lshr i32 %4074, 16
  %4081 = and i32 %4080, 255
  %4082 = uitofp i32 %4081 to float
  %4083 = fmul fast float %4082, 0x3F70101000000000
  %4084 = fmul fast float %4070, %4076
  %4085 = fadd fast float %4084, %4079
  %4086 = fmul fast float %4085, 0x3F70101000000000
  %4087 = fadd fast float %4071, -5.000000e-01
  %4088 = fadd fast float %4073, -5.000000e-01
  %4089 = fmul fast float %4087, %4083
  %4090 = fmul fast float %4088, %4083
  %4091 = fadd fast float %4089, 5.000000e-01
  %4092 = fadd fast float %4090, 5.000000e-01
  %4093 = fmul fast float %4054, %3877
  %4094 = fmul fast float %4055, %3878
  %4095 = fmul fast float %4056, %3879
  %4096 = fmul fast float %4091, 2.000000e+00
  %4097 = fadd fast float %4096, -1.000000e+00
  %4098 = fmul fast float %4092, 2.000000e+00
  %4099 = fadd fast float %4098, -1.000000e+00
  %4100 = fadd fast float %4097, %4099
  %4101 = fmul fast float %4100, 5.000000e-01
  %4102 = fsub fast float %4097, %4099
  %4103 = fmul fast float %4102, 5.000000e-01
  %4104 = call float @dx.op.unary.f32(i32 6, float %4101)  ; FAbs(value)
  %4105 = fsub fast float 1.000000e+00, %4104
  %4106 = call float @dx.op.unary.f32(i32 6, float %4103)  ; FAbs(value)
  %4107 = fsub fast float %4105, %4106
  %4108 = call float @dx.op.dot3.f32(i32 55, float %4101, float %4103, float %4107, float %4101, float %4103, float %4107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4109 = call float @dx.op.unary.f32(i32 25, float %4108)  ; Rsqrt(value)
  %4110 = fmul fast float %4101, %4109
  %4111 = fmul fast float %4103, %4109
  %4112 = fmul fast float %4109, %4107
  %4113 = fmul fast float %4112, %3842
  %4114 = fmul fast float %4112, %3843
  %4115 = fmul fast float %4112, %3844
  %4116 = fmul fast float %4110, %3865
  %4117 = fmul fast float %4110, %3866
  %4118 = fmul fast float %4110, %3867
  %4119 = fadd fast float %4116, %4113
  %4120 = fadd fast float %4117, %4114
  %4121 = fadd fast float %4118, %4115
  %4122 = fmul fast float %4111, %3871
  %4123 = fmul fast float %4111, %3872
  %4124 = fmul fast float %4111, %3873
  %4125 = fadd fast float %4119, %4122
  %4126 = fadd fast float %4120, %4123
  %4127 = fadd fast float %4121, %4124
  %4128 = call float @dx.op.dot3.f32(i32 55, float %4125, float %4126, float %4127, float %4125, float %4126, float %4127)  ; Dot3(ax,ay,az,bx,by,bz)
  %4129 = call float @dx.op.unary.f32(i32 25, float %4128)  ; Rsqrt(value)
  %4130 = fmul fast float %4125, %4129
  %4131 = fmul fast float %4126, %4129
  %4132 = fmul fast float %4127, %4129
  %4133 = icmp ne i32 %4049, 0
  %4134 = select i1 %4133, float 1.000000e+00, float 0.000000e+00
  %4135 = fmul fast float %4039, %4134
  %4136 = and i32 %3892, 1
  %4137 = icmp eq i32 %4136, 0
  br i1 %4137, label %4138, label %4142

; <label>:4138                                    ; preds = %4047
  %4139 = fsub fast float %4130, %3825
  %4140 = fsub fast float %4131, %3826
  %4141 = fsub fast float %4132, %3827
  br label %4142

; <label>:4142                                    ; preds = %4138, %4047
  %4143 = phi float [ %4139, %4138 ], [ %4130, %4047 ]
  %4144 = phi float [ %4140, %4138 ], [ %4131, %4047 ]
  %4145 = phi float [ %4141, %4138 ], [ %4132, %4047 ]
  %4146 = fmul float %4145, %4135
  %4147 = fmul float %4144, %4135
  %4148 = fmul float %4143, %4135
  %4149 = fadd fast float %4148, %3825
  %4150 = fadd fast float %4147, %3826
  %4151 = fadd fast float %4146, %3827
  %4152 = icmp ne i32 %4048, 0
  %4153 = select i1 %4152, float 1.000000e+00, float 0.000000e+00
  %4154 = fmul fast float %4039, %4153
  %4155 = fsub fast float %4093, %3832
  %4156 = fsub fast float %4094, %3833
  %4157 = fsub fast float %4095, %3834
  %4158 = fmul fast float %4155, %4154
  %4159 = fmul fast float %4156, %4154
  %4160 = fmul fast float %4157, %4154
  %4161 = fadd fast float %4158, %3832
  %4162 = fadd fast float %4159, %3833
  %4163 = fadd fast float %4160, %3834
  %4164 = fsub fast float %4066, %3831
  %4165 = fmul fast float %4164, %4154
  %4166 = fadd fast float %4165, %3831
  %4167 = fmul fast float %4154, %3821
  %4168 = fsub fast float %3821, %4167
  %4169 = fmul fast float %4154, %3820
  %4170 = fsub fast float %3820, %4169
  %4171 = fadd fast float %4039, %3830
  %4172 = call float @dx.op.unary.f32(i32 7, float %4171)  ; Saturate(value)
  %4173 = fsub fast float %4086, %3829
  %4174 = fmul fast float %4173, %4135
  %4175 = fadd fast float %4174, %3829
  %4176 = fsub fast float %4072, %3828
  %4177 = fmul fast float %4176, %4135
  %4178 = fadd fast float %4177, %3828
  %4179 = call float @dx.op.dot3.f32(i32 55, float %4093, float %4094, float %4095, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4181 = extractvalue %dx.types.CBufRet.f32 %4180, 0
  %4182 = extractvalue %dx.types.CBufRet.f32 %4180, 1
  %4183 = fmul fast float %4182, %4179
  %4184 = fadd fast float %4183, %4181
  %4185 = call float @dx.op.unary.f32(i32 7, float %4184)  ; Saturate(value)
  %4186 = bitcast float %3880 to i32
  %4187 = and i32 %4186, 65535
  %4188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4187)  ; LegacyF16ToF32(value)
  %4189 = lshr i32 %4186, 16
  %4190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4189)  ; LegacyF16ToF32(value)
  %4191 = fcmp fast oge float %4188, 0.000000e+00
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 0
  %4194 = select i1 %4191, float %4188, float %4193
  %4195 = fadd fast float %4194, %4190
  %4196 = fsub fast float %4185, %3819
  %4197 = fmul fast float %4196, %4039
  %4198 = fadd fast float %4197, %3819
  %4199 = fmul fast float %4195, %4039
  %4200 = call float @dx.op.binary.f32(i32 35, float %3818, float %4199)  ; FMax(a,b)
  %4201 = call float @dx.op.binary.f32(i32 35, float %3817, float %4039)  ; FMax(a,b)
  %4202 = and i32 %3892, 16
  %4203 = icmp eq i32 %4202, 0
  br i1 %4203, label %4226, label %4204

; <label>:4204                                    ; preds = %4142
  %4205 = bitcast float %3886 to i32
  %4206 = add i32 %3883, 0
  %4207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4206, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4208 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4207, %dx.types.Handle %4052, float %3980, float %3983, float undef, float undef, i32 0, i32 0, i32 undef, float %3985, float %3987, float undef, float %3989, float %3991, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 0
  %4210 = extractvalue %dx.types.ResRet.f32 %4208, 1
  %4211 = extractvalue %dx.types.ResRet.f32 %4208, 2
  %4212 = and i32 %4205, 65535
  %4213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4212)  ; LegacyF16ToF32(value)
  %4214 = fmul fast float %4209, %3877
  %4215 = fmul fast float %4210, %3878
  %4216 = fmul fast float %4211, %3879
  %4217 = and i32 %3892, 16384
  %4218 = icmp ne i32 %4217, 0
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 0
  %4221 = select i1 %4218, float %4220, float 1.000000e+00
  %4222 = fmul fast float %4221, %4213
  %4223 = fmul fast float %4214, %4222
  %4224 = fmul fast float %4215, %4222
  %4225 = fmul fast float %4216, %4222
  br label %4226

; <label>:4226                                    ; preds = %4204, %4142
  %4227 = phi float [ %4223, %4204 ], [ 0.000000e+00, %4142 ]
  %4228 = phi float [ %4224, %4204 ], [ 0.000000e+00, %4142 ]
  %4229 = phi float [ %4225, %4204 ], [ 0.000000e+00, %4142 ]
  %4230 = fsub fast float %4227, %3822
  %4231 = fsub fast float %4228, %3823
  %4232 = fsub fast float %4229, %3824
  %4233 = fmul fast float %4230, %4039
  %4234 = fmul fast float %4231, %4039
  %4235 = fmul fast float %4232, %4039
  %4236 = fadd fast float %4233, %3822
  %4237 = fadd fast float %4234, %3823
  %4238 = fadd fast float %4235, %3824
  br label %3941

; <label>:4239                                    ; preds = %3941
  br label %4240

; <label>:4240                                    ; preds = %4239, %3760
  %4241 = phi float [ 0.000000e+00, %3760 ], [ %3942, %4239 ]
  %4242 = phi float [ %1162, %3760 ], [ %3943, %4239 ]
  %4243 = phi float [ %3729, %3760 ], [ %3944, %4239 ]
  %4244 = phi float [ %3727, %3760 ], [ %3945, %4239 ]
  %4245 = phi float [ 0.000000e+00, %3760 ], [ %3946, %4239 ]
  %4246 = phi float [ 0.000000e+00, %3760 ], [ %3947, %4239 ]
  %4247 = phi float [ %3718, %3760 ], [ %3948, %4239 ]
  %4248 = phi float [ %3719, %3760 ], [ %3949, %4239 ]
  %4249 = phi float [ %3720, %3760 ], [ %3950, %4239 ]
  %4250 = phi float [ %3755, %3760 ], [ %3951, %4239 ]
  %4251 = phi float [ %3756, %3760 ], [ %3952, %4239 ]
  %4252 = phi float [ %3757, %3760 ], [ %3953, %4239 ]
  %4253 = phi float [ %3726, %3760 ], [ %3954, %4239 ]
  %4254 = phi float [ %3725, %3760 ], [ %3955, %4239 ]
  %4255 = phi float [ 0.000000e+00, %3760 ], [ %3956, %4239 ]
  %4256 = phi float [ %3724, %3760 ], [ %3957, %4239 ]
  %4257 = phi float [ %3721, %3760 ], [ %3958, %4239 ]
  %4258 = phi float [ %3722, %3760 ], [ %3959, %4239 ]
  %4259 = phi float [ %3723, %3760 ], [ %3960, %4239 ]
  %4260 = call float @dx.op.dot3.f32(i32 55, float %4250, float %4251, float %4252, float %4250, float %4251, float %4252)  ; Dot3(ax,ay,az,bx,by,bz)
  %4261 = call float @dx.op.unary.f32(i32 25, float %4260)  ; Rsqrt(value)
  %4262 = fmul fast float %4261, %4250
  %4263 = fmul fast float %4261, %4251
  %4264 = fmul fast float %4261, %4252
  %4265 = fadd fast float %4255, %1162
  %4266 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4267 = call float @dx.op.dot3.f32(i32 55, float %4262, float %4263, float %4264, float %4262, float %4263, float %4264)  ; Dot3(ax,ay,az,bx,by,bz)
  %4268 = call float @dx.op.unary.f32(i32 25, float %4267)  ; Rsqrt(value)
  %4269 = fmul fast float %4268, %4262
  %4270 = fmul fast float %4268, %4263
  %4271 = fmul fast float %4268, %4264
  br label %4272

; <label>:4272                                    ; preds = %4240, %3715
  %4273 = phi float [ %4269, %4240 ], [ %3755, %3715 ]
  %4274 = phi float [ %4270, %4240 ], [ %3756, %3715 ]
  %4275 = phi float [ %4271, %4240 ], [ %3757, %3715 ]
  %4276 = phi float [ %4247, %4240 ], [ %3718, %3715 ]
  %4277 = phi float [ %4248, %4240 ], [ %3719, %3715 ]
  %4278 = phi float [ %4249, %4240 ], [ %3720, %3715 ]
  %4279 = phi float [ %4257, %4240 ], [ %3721, %3715 ]
  %4280 = phi float [ %4258, %4240 ], [ %3722, %3715 ]
  %4281 = phi float [ %4259, %4240 ], [ %3723, %3715 ]
  %4282 = phi float [ %4256, %4240 ], [ %3724, %3715 ]
  %4283 = phi float [ %4266, %4240 ], [ %1162, %3715 ]
  %4284 = phi float [ %4254, %4240 ], [ %3725, %3715 ]
  %4285 = phi float [ %4253, %4240 ], [ %3726, %3715 ]
  %4286 = phi float [ %4246, %4240 ], [ 0.000000e+00, %3715 ]
  %4287 = phi float [ %4245, %4240 ], [ 0.000000e+00, %3715 ]
  %4288 = phi float [ %4241, %4240 ], [ 0.000000e+00, %3715 ]
  %4289 = phi float [ %4243, %4240 ], [ %3729, %3715 ]
  %4290 = phi float [ %4242, %4240 ], [ %1162, %3715 ]
  %4291 = phi float [ %4244, %4240 ], [ %3727, %3715 ]
  %4292 = add i32 %54, 392
  %4293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4292, i32 undef)  ; BufferLoad(srv,index,wot)
  %4294 = extractvalue %dx.types.ResRet.i32 %4293, 0
  %4295 = extractvalue %dx.types.ResRet.i32 %4293, 1
  %4296 = extractvalue %dx.types.ResRet.i32 %4293, 2
  %4297 = extractvalue %dx.types.ResRet.i32 %4293, 3
  %4298 = bitcast i32 %4294 to float
  %4299 = bitcast i32 %4295 to float
  %4300 = bitcast i32 %4296 to float
  %4301 = bitcast i32 %4297 to float
  %4302 = fsub fast float %4279, %4298
  %4303 = fsub fast float %4280, %4299
  %4304 = fsub fast float %4281, %4300
  %4305 = fmul fast float %4302, %192
  %4306 = fmul fast float %4303, %192
  %4307 = fmul fast float %4304, %192
  %4308 = fadd fast float %4305, %4298
  %4309 = fadd fast float %4306, %4299
  %4310 = fadd fast float %4307, %4300
  %4311 = fsub fast float %4283, %4301
  %4312 = fmul fast float %4311, %192
  %4313 = fadd fast float %4312, %4301
  %4314 = fadd fast float %4282, 0xBFB99999A0000000
  %4315 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4316 = fmul fast float %4315, 0x3FF1C71C80000000
  %4317 = call float @dx.op.binary.f32(i32 36, float %4282, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4318 = fsub fast float 1.000000e+00, %4316
  %4319 = call float @dx.op.unary.f32(i32 7, float %4318)  ; Saturate(value)
  %4320 = fmul fast float %4308, %4319
  %4321 = fmul fast float %4309, %4319
  %4322 = fmul fast float %4310, %4319
  %4323 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4324 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4325 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4326 = fmul fast float %4308, %4316
  %4327 = fmul fast float %4309, %4316
  %4328 = fmul fast float %4310, %4316
  %4329 = fadd fast float %4326, %4317
  %4330 = fadd fast float %4327, %4317
  %4331 = fadd fast float %4328, %4317
  %4332 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4333 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4334 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4335 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4337 = extractvalue %dx.types.CBufRet.i32 %4336, 3
  %4338 = and i32 %4337, 8
  %4339 = icmp ne i32 %4338, 0
  %4340 = call float @dx.op.binary.f32(i32 35, float %4323, float %4308)  ; FMax(a,b)
  %4341 = call float @dx.op.binary.f32(i32 35, float %4324, float %4308)  ; FMax(a,b)
  %4342 = call float @dx.op.binary.f32(i32 35, float %4325, float %4308)  ; FMax(a,b)
  %4343 = call float @dx.op.dot3.f32(i32 55, float %4323, float %4324, float %4325, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4344 = select i1 %252, float %4308, float %4323
  %4345 = select i1 %252, float %4343, float %4324
  %4346 = select i1 %252, float 1.000000e+00, float %4325
  %4347 = select i1 %4339, float %4340, float %4344
  %4348 = select i1 %4339, float %4341, float %4345
  %4349 = select i1 %4339, float %4342, float %4346
  %4350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4351 = extractvalue %dx.types.CBufRet.f32 %4350, 0
  %4352 = extractvalue %dx.types.CBufRet.f32 %4350, 1
  %4353 = extractvalue %dx.types.CBufRet.f32 %4350, 2
  %4354 = fadd fast float %4351, %158
  %4355 = fadd fast float %4352, %159
  %4356 = fadd fast float %4353, %160
  %4357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4358 = extractvalue %dx.types.CBufRet.f32 %4357, 0
  %4359 = extractvalue %dx.types.CBufRet.f32 %4357, 1
  %4360 = fsub fast float %4354, %4358
  %4361 = fsub fast float %4355, %4359
  %4362 = fmul fast float %4360, %4360
  %4363 = fmul fast float %4361, %4361
  %4364 = fadd fast float %4362, %4363
  %4365 = call float @dx.op.unary.f32(i32 24, float %4364)  ; Sqrt(value)
  %4366 = extractvalue %dx.types.CBufRet.f32 %4357, 2
  %4367 = fcmp fast olt float %4365, %4366
  br i1 %4367, label %4368, label %4435

; <label>:4368                                    ; preds = %4272
  %4369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4370 = extractvalue %dx.types.CBufRet.f32 %4369, 0
  %4371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.f32 %4371, 0
  %4373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4374 = extractvalue %dx.types.CBufRet.f32 %4373, 0
  %4375 = extractvalue %dx.types.CBufRet.f32 %4369, 1
  %4376 = extractvalue %dx.types.CBufRet.f32 %4371, 1
  %4377 = extractvalue %dx.types.CBufRet.f32 %4373, 1
  %4378 = extractvalue %dx.types.CBufRet.f32 %4369, 3
  %4379 = extractvalue %dx.types.CBufRet.f32 %4371, 3
  %4380 = extractvalue %dx.types.CBufRet.f32 %4373, 3
  %4381 = fadd fast float %4378, %4354
  %4382 = fadd fast float %4379, %4355
  %4383 = fadd fast float %4380, %4356
  %4384 = fmul fast float %4381, %4370
  %4385 = call float @dx.op.tertiary.f32(i32 46, float %4382, float %4372, float %4384)  ; FMad(a,b,c)
  %4386 = call float @dx.op.tertiary.f32(i32 46, float %4383, float %4374, float %4385)  ; FMad(a,b,c)
  %4387 = fmul fast float %4381, %4375
  %4388 = call float @dx.op.tertiary.f32(i32 46, float %4382, float %4376, float %4387)  ; FMad(a,b,c)
  %4389 = call float @dx.op.tertiary.f32(i32 46, float %4383, float %4377, float %4388)  ; FMad(a,b,c)
  %4390 = fsub fast float %4386, %4378
  %4391 = fsub fast float %4389, %4379
  %4392 = fsub fast float %4390, %4358
  %4393 = fadd fast float %4392, %4366
  %4394 = fsub fast float %4391, %4359
  %4395 = fadd fast float %4394, %4366
  %4396 = extractvalue %dx.types.CBufRet.f32 %4357, 3
  %4397 = fmul fast float %4393, %4396
  %4398 = fmul fast float %4395, %4396
  %4399 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4400 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4401 = fsub fast float 1.000000e+00, %4399
  %4402 = fsub fast float 1.000000e+00, %4400
  %4403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4401, float %4402, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4404 = extractvalue %dx.types.ResRet.f32 %4403, 0
  %4405 = fcmp fast ugt float %4404, 0.000000e+00
  br i1 %4405, label %4406, label %4709

; <label>:4406                                    ; preds = %4368
  %4407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4408 = extractvalue %dx.types.CBufRet.f32 %4407, 2
  %4409 = fmul fast float %4408, %4404
  %4410 = extractvalue %dx.types.CBufRet.f32 %4407, 3
  %4411 = fadd fast float %4410, %4409
  %4412 = extractvalue %dx.types.CBufRet.f32 %4373, 2
  %4413 = fadd fast float %4411, %4380
  %4414 = fmul fast float %4386, %4374
  %4415 = call float @dx.op.tertiary.f32(i32 46, float %4389, float %4377, float %4414)  ; FMad(a,b,c)
  %4416 = call float @dx.op.tertiary.f32(i32 46, float %4413, float %4412, float %4415)  ; FMad(a,b,c)
  %4417 = fsub fast float %4416, %4380
  %4418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4419 = extractvalue %dx.types.CBufRet.f32 %4418, 2
  %4420 = fsub fast float %4417, %4419
  %4421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4401, float %4402, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4422 = extractvalue %dx.types.ResRet.f32 %4421, 0
  %4423 = extractvalue %dx.types.ResRet.f32 %4421, 1
  %4424 = extractvalue %dx.types.ResRet.f32 %4421, 2
  %4425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %4401, float %4402, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4426 = extractvalue %dx.types.ResRet.f32 %4425, 0
  %4427 = extractvalue %dx.types.ResRet.f32 %4425, 1
  %4428 = extractvalue %dx.types.ResRet.f32 %4425, 2
  %4429 = fadd fast float %4426, %4422
  %4430 = fmul fast float %4429, 0x3F847AE140000000
  %4431 = fadd fast float %4427, %4423
  %4432 = fmul fast float %4431, 0x3F847AE140000000
  %4433 = fadd fast float %4428, %4424
  %4434 = fmul fast float %4433, 0x3F847AE140000000
  br label %4709

; <label>:4435                                    ; preds = %4272
  %4436 = and i32 %228, 1
  %4437 = icmp eq i32 %4436, 0
  br i1 %4437, label %4709, label %4438

; <label>:4438                                    ; preds = %4435
  %4439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4440 = extractvalue %dx.types.CBufRet.f32 %4439, 0
  %4441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4442 = extractvalue %dx.types.CBufRet.f32 %4441, 0
  %4443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4444 = extractvalue %dx.types.CBufRet.f32 %4443, 0
  %4445 = extractvalue %dx.types.CBufRet.f32 %4439, 1
  %4446 = extractvalue %dx.types.CBufRet.f32 %4441, 1
  %4447 = extractvalue %dx.types.CBufRet.f32 %4443, 1
  %4448 = extractvalue %dx.types.CBufRet.f32 %4439, 3
  %4449 = extractvalue %dx.types.CBufRet.f32 %4441, 3
  %4450 = extractvalue %dx.types.CBufRet.f32 %4443, 3
  %4451 = fadd fast float %4448, %4354
  %4452 = fadd fast float %4449, %4355
  %4453 = fadd fast float %4450, %4356
  %4454 = fmul fast float %4451, %4440
  %4455 = call float @dx.op.tertiary.f32(i32 46, float %4452, float %4442, float %4454)  ; FMad(a,b,c)
  %4456 = call float @dx.op.tertiary.f32(i32 46, float %4453, float %4444, float %4455)  ; FMad(a,b,c)
  %4457 = fmul fast float %4451, %4445
  %4458 = call float @dx.op.tertiary.f32(i32 46, float %4452, float %4446, float %4457)  ; FMad(a,b,c)
  %4459 = call float @dx.op.tertiary.f32(i32 46, float %4453, float %4447, float %4458)  ; FMad(a,b,c)
  %4460 = fsub fast float %4456, %4448
  %4461 = fsub fast float %4459, %4449
  %4462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4463 = extractvalue %dx.types.CBufRet.f32 %4462, 0
  %4464 = extractvalue %dx.types.CBufRet.f32 %4462, 1
  %4465 = extractvalue %dx.types.CBufRet.f32 %4462, 2
  %4466 = extractvalue %dx.types.CBufRet.f32 %4462, 3
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 3
  %4469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.i32 %4469, 0
  %4471 = extractvalue %dx.types.CBufRet.i32 %4469, 1
  %4472 = udiv i32 %4471, %4470
  %4473 = fsub fast float %4460, %4463
  %4474 = fsub fast float %4461, %4464
  %4475 = call float @dx.op.binary.f32(i32 35, float %4473, float 0.000000e+00)  ; FMax(a,b)
  %4476 = call float @dx.op.binary.f32(i32 35, float %4474, float 0.000000e+00)  ; FMax(a,b)
  %4477 = call float @dx.op.binary.f32(i32 36, float %4475, float %4465)  ; FMin(a,b)
  %4478 = call float @dx.op.binary.f32(i32 36, float %4476, float %4466)  ; FMin(a,b)
  %4479 = add i32 %4470, -1
  %4480 = add i32 %4472, -1
  %4481 = fmul fast float %4477, %4468
  %4482 = fmul fast float %4478, %4468
  %4483 = fptoui float %4481 to i32
  %4484 = fptoui float %4482 to i32
  %4485 = call i32 @dx.op.binary.i32(i32 40, i32 %4483, i32 %4479)  ; UMin(a,b)
  %4486 = call i32 @dx.op.binary.i32(i32 40, i32 %4484, i32 %4480)  ; UMin(a,b)
  %4487 = mul i32 %4486, %4470
  %4488 = add i32 %4487, %4485
  %4489 = shl i32 %4488, 2
  %4490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4489, i32 undef)  ; BufferLoad(srv,index,wot)
  %4491 = extractvalue %dx.types.ResRet.i32 %4490, 0
  %4492 = icmp eq i32 %4491, -1
  br i1 %4492, label %4709, label %4493

; <label>:4493                                    ; preds = %4438
  %4494 = mul i32 %4491, 148
  %4495 = add i32 %4494, 4
  %4496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4495, i32 undef)  ; BufferLoad(srv,index,wot)
  %4497 = extractvalue %dx.types.ResRet.f32 %4496, 0
  %4498 = add i32 %4494, 8
  %4499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4498, i32 undef)  ; BufferLoad(srv,index,wot)
  %4500 = extractvalue %dx.types.ResRet.f32 %4499, 0
  %4501 = add i32 %4494, 36
  %4502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4501, i32 undef)  ; BufferLoad(srv,index,wot)
  %4503 = extractvalue %dx.types.ResRet.f32 %4502, 0
  %4504 = add i32 %4494, 60
  %4505 = add i32 %4494, 92
  %4506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4505, i32 undef)  ; BufferLoad(srv,index,wot)
  %4507 = extractvalue %dx.types.ResRet.i32 %4506, 0
  %4508 = add i32 %4494, 116
  %4509 = fsub fast float %4460, %4497
  %4510 = fsub fast float %4461, %4500
  %4511 = fmul fast float %4468, %4509
  %4512 = fmul fast float %4468, %4510
  %4513 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4514 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4515 = fsub fast float 1.000000e+00, %4514
  %4516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4517 = extractvalue %dx.types.CBufRet.f32 %4516, 2
  %4518 = call float @dx.op.unary.f32(i32 83, float %4513)  ; DerivCoarseX(value)
  %4519 = call float @dx.op.unary.f32(i32 83, float %4515)  ; DerivCoarseX(value)
  %4520 = call float @dx.op.unary.f32(i32 84, float %4513)  ; DerivCoarseY(value)
  %4521 = call float @dx.op.unary.f32(i32 84, float %4515)  ; DerivCoarseY(value)
  %4522 = fmul fast float %4518, %4517
  %4523 = fmul fast float %4519, %4517
  %4524 = fmul fast float %4520, %4517
  %4525 = fmul fast float %4521, %4517
  %4526 = call float @dx.op.dot2.f32(i32 54, float %4524, float %4525, float %4524, float %4525)  ; Dot2(ax,ay,bx,by)
  %4527 = call float @dx.op.dot2.f32(i32 54, float %4522, float %4523, float %4522, float %4523)  ; Dot2(ax,ay,bx,by)
  %4528 = call float @dx.op.binary.f32(i32 35, float %4527, float %4526)  ; FMax(a,b)
  %4529 = call float @dx.op.unary.f32(i32 23, float %4528)  ; Log(value)
  %4530 = fmul fast float %4529, 5.000000e-01
  %4531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.f32 %4531, 1
  %4533 = fadd fast float %4532, %4530
  %4534 = call float @dx.op.binary.f32(i32 35, float %4533, float 0.000000e+00)  ; FMax(a,b)
  %4535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4536 = extractvalue %dx.types.CBufRet.f32 %4535, 3
  %4537 = fadd fast float %4536, %4534
  %4538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4539 = extractvalue %dx.types.CBufRet.f32 %4538, 3
  %4540 = fadd fast float %4537, %4539
  %4541 = add i32 %4507, 0
  %4542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4541, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4543 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4542, i32 0)  ; GetDimensions(handle,mipLevel)
  %4544 = extractvalue %dx.types.Dimensions %4543, 0
  %4545 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4544)  ; FirstbitLo(value)
  %4546 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4547 = extractvalue %dx.types.CBufRet.i32 %4546, 1
  %4548 = sub nsw i32 %4547, %4545
  %4549 = sitofp i32 %4548 to float
  %4550 = fsub fast float %4540, %4549
  %4551 = call float @dx.op.binary.f32(i32 35, float %4550, float 0.000000e+00)  ; FMax(a,b)
  %4552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4542, %dx.types.Handle %46, float %4513, float %4515, float %4503, float undef, i32 0, i32 0, i32 undef, float %4551)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4553 = extractvalue %dx.types.ResRet.f32 %4552, 0
  %4554 = fcmp ule float %4553, 0x3FE0101020000000
  %4555 = extractvalue %dx.types.CBufRet.i32 %4546, 0
  %4556 = and i32 %4555, 128
  %4557 = icmp ne i32 %4556, 0
  %4558 = and i1 %4554, %4557
  br i1 %4558, label %4709, label %4559

; <label>:4559                                    ; preds = %4493
  %4560 = add i32 %4494, 20
  %4561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4560, i32 undef)  ; BufferLoad(srv,index,wot)
  %4562 = extractvalue %dx.types.ResRet.f32 %4561, 0
  %4563 = add i32 %4494, 24
  %4564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4563, i32 undef)  ; BufferLoad(srv,index,wot)
  %4565 = extractvalue %dx.types.ResRet.f32 %4564, 0
  %4566 = add i32 %4494, 40
  %4567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4566, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4569 = add i32 %4494, 96
  %4570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4569, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.i32 %4570, 0
  %4572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4573 = extractvalue %dx.types.CBufRet.f32 %4572, 2
  %4574 = fmul fast float %4573, %4513
  %4575 = fmul fast float %4573, %4515
  %4576 = extractvalue %dx.types.CBufRet.f32 %4572, 3
  %4577 = fadd fast float %4574, %4576
  %4578 = fadd fast float %4575, %4576
  %4579 = add i32 %4571, 0
  %4580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4579, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4581 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4580, i32 0)  ; GetDimensions(handle,mipLevel)
  %4582 = extractvalue %dx.types.Dimensions %4581, 0
  %4583 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4582)  ; FirstbitLo(value)
  %4584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4585 = extractvalue %dx.types.CBufRet.i32 %4584, 1
  %4586 = sub nsw i32 %4585, %4583
  %4587 = sitofp i32 %4586 to float
  %4588 = fsub fast float %4537, %4587
  %4589 = call float @dx.op.binary.f32(i32 35, float %4588, float 0.000000e+00)  ; FMax(a,b)
  %4590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4580, %dx.types.Handle %46, float %4577, float %4578, float %4568, float undef, i32 0, i32 0, i32 undef, float %4589)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4591 = extractvalue %dx.types.ResRet.f32 %4590, 0
  %4592 = fmul fast float %4591, %4562
  %4593 = fadd fast float %4592, %4565
  %4594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4595 = extractvalue %dx.types.CBufRet.f32 %4594, 0
  %4596 = extractvalue %dx.types.CBufRet.f32 %4594, 1
  %4597 = extractvalue %dx.types.CBufRet.f32 %4594, 2
  %4598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.f32 %4598, 3
  %4600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4601 = extractvalue %dx.types.CBufRet.f32 %4600, 3
  %4602 = extractvalue %dx.types.CBufRet.f32 %4594, 3
  %4603 = fadd fast float %4599, %4460
  %4604 = fadd fast float %4601, %4461
  %4605 = fadd fast float %4593, %4602
  %4606 = fmul fast float %4603, %4595
  %4607 = call float @dx.op.tertiary.f32(i32 46, float %4604, float %4596, float %4606)  ; FMad(a,b,c)
  %4608 = call float @dx.op.tertiary.f32(i32 46, float %4605, float %4597, float %4607)  ; FMad(a,b,c)
  %4609 = fsub fast float %4608, %4602
  %4610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4611 = extractvalue %dx.types.CBufRet.f32 %4610, 2
  %4612 = fsub fast float %4609, %4611
  %4613 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4614 = extractvalue %dx.types.CBufRet.i32 %4613, 0
  %4615 = call i32 @dx.op.binary.i32(i32 40, i32 %4491, i32 %4614)  ; UMin(a,b)
  %4616 = mul i32 %4615, 36
  %4617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4616, i32 undef)  ; BufferLoad(srv,index,wot)
  %4618 = extractvalue %dx.types.ResRet.i32 %4617, 0
  %4619 = add i32 %4616, 4
  %4620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.f32 %4620, 0
  %4622 = fmul fast float %4621, %4513
  %4623 = fmul fast float %4621, %4515
  %4624 = extractvalue %dx.types.CBufRet.f32 %4620, 1
  %4625 = fadd fast float %4622, %4624
  %4626 = fadd fast float %4623, %4624
  %4627 = icmp eq i32 %4618, 0
  br i1 %4627, label %4696, label %4628

; <label>:4628                                    ; preds = %4559
  br label %4629

; <label>:4629                                    ; preds = %4686, %4628
  %4630 = phi float [ %4687, %4686 ], [ 0.000000e+00, %4628 ]
  %4631 = phi float [ %4688, %4686 ], [ 0.000000e+00, %4628 ]
  %4632 = phi float [ %4689, %4686 ], [ 0.000000e+00, %4628 ]
  %4633 = phi float [ %4690, %4686 ], [ 0.000000e+00, %4628 ]
  %4634 = phi float [ %4691, %4686 ], [ 0.000000e+00, %4628 ]
  %4635 = phi float [ %4692, %4686 ], [ 0.000000e+00, %4628 ]
  %4636 = phi i32 [ %4693, %4686 ], [ 0, %4628 ]
  %4637 = shl i32 %4636, 2
  %4638 = add i32 %4504, %4637
  %4639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4638, i32 undef)  ; BufferLoad(srv,index,wot)
  %4640 = extractvalue %dx.types.ResRet.f32 %4639, 0
  %4641 = add i32 %4508, %4637
  %4642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4641, i32 undef)  ; BufferLoad(srv,index,wot)
  %4643 = extractvalue %dx.types.ResRet.i32 %4642, 0
  %4644 = add i32 %4643, 0
  %4645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4644, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4646 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4645, i32 0)  ; GetDimensions(handle,mipLevel)
  %4647 = extractvalue %dx.types.Dimensions %4646, 0
  %4648 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4647)  ; FirstbitLo(value)
  %4649 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4650 = extractvalue %dx.types.CBufRet.i32 %4649, 1
  %4651 = sub nsw i32 %4650, %4648
  %4652 = sitofp i32 %4651 to float
  %4653 = fsub fast float %4537, %4652
  %4654 = call float @dx.op.binary.f32(i32 35, float %4653, float 0.000000e+00)  ; FMax(a,b)
  %4655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4645, %dx.types.Handle %46, float %4625, float %4626, float %4640, float undef, i32 0, i32 0, i32 undef, float %4654)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4656 = extractvalue %dx.types.ResRet.f32 %4655, 0
  %4657 = fcmp fast ogt float %4656, 0.000000e+00
  br i1 %4657, label %4658, label %4686

; <label>:4658                                    ; preds = %4629
  %4659 = add i32 %4619, %4637
  %4660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4659, i32 undef)  ; BufferLoad(srv,index,wot)
  %4661 = extractvalue %dx.types.ResRet.i32 %4660, 0
  %4662 = and i32 %4661, 32767
  %4663 = mul nuw nsw i32 %4662, 928
  %4664 = add nuw nsw i32 %4663, 48
  %4665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4664, i32 undef)  ; BufferLoad(srv,index,wot)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  %4667 = extractvalue %dx.types.ResRet.f32 %4665, 1
  %4668 = extractvalue %dx.types.ResRet.f32 %4665, 2
  %4669 = add nuw nsw i32 %4663, 60
  %4670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4669, i32 undef)  ; BufferLoad(srv,index,wot)
  %4671 = extractvalue %dx.types.ResRet.f32 %4670, 0
  %4672 = extractvalue %dx.types.ResRet.f32 %4670, 1
  %4673 = extractvalue %dx.types.ResRet.f32 %4670, 2
  %4674 = fmul fast float %4666, %4656
  %4675 = fmul fast float %4667, %4656
  %4676 = fmul fast float %4668, %4656
  %4677 = fadd fast float %4674, %4630
  %4678 = fadd fast float %4675, %4631
  %4679 = fadd fast float %4676, %4632
  %4680 = fmul fast float %4671, %4656
  %4681 = fmul fast float %4672, %4656
  %4682 = fmul fast float %4673, %4656
  %4683 = fadd fast float %4680, %4633
  %4684 = fadd fast float %4681, %4634
  %4685 = fadd fast float %4682, %4635
  br label %4686

; <label>:4686                                    ; preds = %4658, %4629
  %4687 = phi float [ %4677, %4658 ], [ %4630, %4629 ]
  %4688 = phi float [ %4678, %4658 ], [ %4631, %4629 ]
  %4689 = phi float [ %4679, %4658 ], [ %4632, %4629 ]
  %4690 = phi float [ %4683, %4658 ], [ %4633, %4629 ]
  %4691 = phi float [ %4684, %4658 ], [ %4634, %4629 ]
  %4692 = phi float [ %4685, %4658 ], [ %4635, %4629 ]
  %4693 = add nuw i32 %4636, 1
  %4694 = icmp eq i32 %4693, %4618
  br i1 %4694, label %4695, label %4629

; <label>:4695                                    ; preds = %4686
  br label %4696

; <label>:4696                                    ; preds = %4695, %4559
  %4697 = phi float [ 0.000000e+00, %4559 ], [ %4687, %4695 ]
  %4698 = phi float [ 0.000000e+00, %4559 ], [ %4688, %4695 ]
  %4699 = phi float [ 0.000000e+00, %4559 ], [ %4689, %4695 ]
  %4700 = phi float [ 0.000000e+00, %4559 ], [ %4690, %4695 ]
  %4701 = phi float [ 0.000000e+00, %4559 ], [ %4691, %4695 ]
  %4702 = phi float [ 0.000000e+00, %4559 ], [ %4692, %4695 ]
  %4703 = fadd fast float %4700, %4697
  %4704 = fmul fast float %4703, 0x3F847AE140000000
  %4705 = fadd fast float %4701, %4698
  %4706 = fmul fast float %4705, 0x3F847AE140000000
  %4707 = fadd fast float %4702, %4699
  %4708 = fmul fast float %4707, 0x3F847AE140000000
  br label %4709

; <label>:4709                                    ; preds = %4696, %4493, %4438, %4435, %4406, %4368
  %4710 = phi float [ %4420, %4406 ], [ -1.310720e+05, %4368 ], [ %4612, %4696 ], [ -1.310720e+05, %4438 ], [ -1.310720e+05, %4493 ], [ -1.310720e+05, %4435 ]
  %4711 = phi float [ %4430, %4406 ], [ 0.000000e+00, %4368 ], [ %4704, %4696 ], [ 0.000000e+00, %4438 ], [ 0.000000e+00, %4493 ], [ 0.000000e+00, %4435 ]
  %4712 = phi float [ %4432, %4406 ], [ 0.000000e+00, %4368 ], [ %4706, %4696 ], [ 0.000000e+00, %4438 ], [ 0.000000e+00, %4493 ], [ 0.000000e+00, %4435 ]
  %4713 = phi float [ %4434, %4406 ], [ 0.000000e+00, %4368 ], [ %4708, %4696 ], [ 0.000000e+00, %4438 ], [ 0.000000e+00, %4493 ], [ 0.000000e+00, %4435 ]
  %4714 = phi i1 [ true, %4406 ], [ false, %4368 ], [ true, %4696 ], [ false, %4438 ], [ false, %4493 ], [ false, %4435 ]
  %4715 = and i32 %228, 3
  %4716 = icmp eq i32 %4715, 1
  %4717 = select i1 %4716, float 1.000000e+00, float 0.000000e+00
  %4718 = fsub fast float %4710, %160
  %4719 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4720 = select i1 %4714, float %4719, float 1.000000e+00
  %4721 = fmul fast float %4720, %4717
  %4722 = icmp eq i32 %4715, 3
  %4723 = select i1 %4722, float 1.000000e+00, float %4721
  %4724 = call float @dx.op.binary.f32(i32 35, float %4288, float %4723)  ; FMax(a,b)
  %4725 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4726 = fcmp fast une float %4725, 0.000000e+00
  %4727 = fsub fast float -0.000000e+00, %178
  %4728 = fsub fast float -0.000000e+00, %179
  %4729 = fsub fast float -0.000000e+00, %180
  br i1 %4726, label %4730, label %4892

; <label>:4730                                    ; preds = %4709
  %4731 = call float @dx.op.dot3.f32(i32 55, float %4727, float %4728, float %4729, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4732 = fmul fast float %4725, 2.500000e+00
  %4733 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4734 = fmul fast float %4725, 0x4013FFFFE0000000
  %4735 = fadd fast float %4734, 0xBFFFFFFFE0000000
  %4736 = call float @dx.op.unary.f32(i32 7, float %4735)  ; Saturate(value)
  %4737 = fmul fast float %4725, 0x4004000020000000
  %4738 = fadd fast float %4737, 0xBFF8000040000000
  %4739 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4740 = call float @dx.op.unary.f32(i32 7, float %4733)  ; Saturate(value)
  %4741 = fmul fast float %4314, 1.000000e+01
  %4742 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4743 = fmul fast float %4742, 2.000000e+00
  %4744 = fsub fast float 3.000000e+00, %4743
  %4745 = fmul fast float %4742, %4742
  %4746 = fmul fast float %4745, %4744
  %4747 = fsub fast float 1.000000e+00, %4746
  %4748 = fsub fast float 0x3FE3333340000000, %4335
  %4749 = fmul fast float %4748, 0x400AAAAAA0000000
  %4750 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4751 = fmul fast float %4747, %4750
  %4752 = fmul fast float %4347, 0x3FEA2B8620000000
  %4753 = fmul fast float %4348, 0x3FEA2B8620000000
  %4754 = fmul fast float %4349, 0x3FEA2B8620000000
  %4755 = fadd fast float %4752, 0x3FC81DFBA0000000
  %4756 = fmul fast float %4755, %4347
  %4757 = fadd fast float %4756, 0x3F910E6020000000
  %4758 = fadd fast float %4753, 0x3FC81DFBA0000000
  %4759 = fmul fast float %4758, %4348
  %4760 = fadd fast float %4759, 0x3F910E6020000000
  %4761 = fadd fast float %4754, 0x3FC81DFBA0000000
  %4762 = fmul fast float %4761, %4349
  %4763 = fadd fast float %4762, 0x3F910E6020000000
  %4764 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  %4765 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4766 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4767 = fsub fast float %4764, %4347
  %4768 = fsub fast float %4765, %4348
  %4769 = fsub fast float %4766, %4349
  %4770 = fmul fast float %4767, %4740
  %4771 = fmul fast float %4770, %4751
  %4772 = fmul fast float %4768, %4740
  %4773 = fmul fast float %4772, %4751
  %4774 = fmul fast float %4769, %4740
  %4775 = fmul fast float %4774, %4751
  %4776 = fadd fast float %4771, %4347
  %4777 = fadd fast float %4773, %4348
  %4778 = fadd fast float %4775, %4349
  %4779 = fmul fast float %4285, %4285
  %4780 = fmul fast float %4779, %4779
  %4781 = fadd fast float %4736, 1.000000e+00
  %4782 = fsub fast float %4781, %4751
  %4783 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4784 = call float @dx.op.dot3.f32(i32 55, float %102, float %103, float %104, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4785 = call float @dx.op.unary.f32(i32 7, float %4784)  ; Saturate(value)
  %4786 = fsub fast float 1.000000e+00, %4780
  %4787 = call float @dx.op.binary.f32(i32 36, float %4783, float %4786)  ; FMin(a,b)
  %4788 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4789 = call float @dx.op.binary.f32(i32 35, float %4787, float %4788)  ; FMax(a,b)
  %4790 = fadd fast float %4785, 0xBFE4CCCCC0000000
  %4791 = fmul fast float %4790, 0x4006DB6DA0000000
  %4792 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4793 = fmul fast float %4792, 2.000000e+00
  %4794 = fsub fast float 3.000000e+00, %4793
  %4795 = bitcast float %4332 to i32
  %4796 = ashr i32 %4795, 1
  %4797 = add nsw i32 %4796, 532487669
  %4798 = bitcast i32 %4797 to float
  %4799 = fsub fast float 1.000000e+00, %4798
  %4800 = bitcast float %4799 to i32
  %4801 = sub nsw i32 2129859010, %4800
  %4802 = bitcast i32 %4801 to float
  %4803 = fmul fast float %4802, 2.000000e+00
  %4804 = bitcast float %4333 to i32
  %4805 = ashr i32 %4804, 1
  %4806 = add nsw i32 %4805, 532487669
  %4807 = bitcast i32 %4806 to float
  %4808 = fsub fast float 1.000000e+00, %4807
  %4809 = bitcast float %4808 to i32
  %4810 = sub nsw i32 2129859010, %4809
  %4811 = bitcast i32 %4810 to float
  %4812 = fmul fast float %4811, 2.000000e+00
  %4813 = bitcast float %4334 to i32
  %4814 = ashr i32 %4813, 1
  %4815 = add nsw i32 %4814, 532487669
  %4816 = bitcast i32 %4815 to float
  %4817 = fsub fast float 1.000000e+00, %4816
  %4818 = bitcast float %4817 to i32
  %4819 = sub nsw i32 2129859010, %4818
  %4820 = bitcast i32 %4819 to float
  %4821 = fmul fast float %4820, 2.000000e+00
  %4822 = fsub fast float 0x4002A9FBE0000000, %4803
  %4823 = fadd fast float %4803, 0x3FD54FDF00000000
  %4824 = bitcast float %4823 to i32
  %4825 = sub nsw i32 2129859010, %4824
  %4826 = bitcast i32 %4825 to float
  %4827 = fmul fast float %4826, %4822
  %4828 = fmul fast float %4827, %4827
  %4829 = fsub fast float 0x4002A9FBE0000000, %4812
  %4830 = fadd fast float %4812, 0x3FD54FDF00000000
  %4831 = bitcast float %4830 to i32
  %4832 = sub nsw i32 2129859010, %4831
  %4833 = bitcast i32 %4832 to float
  %4834 = fmul fast float %4833, %4829
  %4835 = fmul fast float %4834, %4834
  %4836 = fsub fast float 0x4002A9FBE0000000, %4821
  %4837 = fadd fast float %4821, 0x3FD54FDF00000000
  %4838 = bitcast float %4837 to i32
  %4839 = sub nsw i32 2129859010, %4838
  %4840 = bitcast i32 %4839 to float
  %4841 = fmul fast float %4840, %4836
  %4842 = fmul fast float %4841, %4841
  %4843 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4828)  ; FMax(a,b)
  %4844 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4835)  ; FMax(a,b)
  %4845 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4842)  ; FMax(a,b)
  %4846 = fsub fast float 1.000000e+00, %4731
  %4847 = fadd fast float %4846, %4747
  %4848 = call float @dx.op.unary.f32(i32 7, float %4847)  ; Saturate(value)
  %4849 = fsub fast float 1.000000e+00, %4723
  %4850 = fmul fast float %4789, %4849
  %4851 = fmul fast float %4792, %4792
  %4852 = fmul fast float %4851, %4850
  %4853 = fmul fast float %4852, %4794
  %4854 = fmul fast float %4849, 0xBFE99999A0000000
  %4855 = fmul fast float %4854, %4740
  %4856 = fmul fast float %4855, %4751
  %4857 = fadd fast float %4856, 1.000000e+00
  %4858 = fadd fast float %4335, -1.000000e+00
  %4859 = fmul fast float %4857, %4858
  %4860 = fadd fast float %4859, 1.000000e+00
  %4861 = fsub fast float %4843, %4332
  %4862 = fsub fast float %4844, %4333
  %4863 = fsub fast float %4845, %4334
  %4864 = fmul fast float %4853, %4861
  %4865 = fmul fast float %4853, %4862
  %4866 = fmul fast float %4853, %4863
  %4867 = fadd fast float %4864, %4332
  %4868 = fadd fast float %4865, %4333
  %4869 = fadd fast float %4866, %4334
  %4870 = fsub fast float %102, %4273
  %4871 = fsub fast float %103, %4274
  %4872 = fsub fast float %104, %4275
  %4873 = fmul fast float %4853, %4870
  %4874 = fmul fast float %4853, %4871
  %4875 = fmul fast float %4853, %4872
  %4876 = fadd fast float %4873, %4273
  %4877 = fadd fast float %4874, %4274
  %4878 = fadd fast float %4875, %4275
  %4879 = fmul fast float %4853, %4848
  %4880 = call float @dx.op.unary.f32(i32 7, float %4860)  ; Saturate(value)
  %4881 = fsub fast float 1.000000e+00, %4880
  %4882 = fmul fast float %4879, %4881
  %4883 = fadd fast float %4882, %4880
  %4884 = fsub fast float 1.000000e+00, %4285
  %4885 = fmul fast float %4853, %4884
  %4886 = fadd fast float %4885, %4285
  %4887 = call float @dx.op.dot3.f32(i32 55, float %4876, float %4877, float %4878, float %4876, float %4877, float %4878)  ; Dot3(ax,ay,az,bx,by,bz)
  %4888 = call float @dx.op.unary.f32(i32 25, float %4887)  ; Rsqrt(value)
  %4889 = fmul fast float %4876, %4888
  %4890 = fmul fast float %4877, %4888
  %4891 = fmul fast float %4878, %4888
  br label %4892

; <label>:4892                                    ; preds = %4730, %4709
  %4893 = phi float [ %4867, %4730 ], [ %4332, %4709 ]
  %4894 = phi float [ %4868, %4730 ], [ %4333, %4709 ]
  %4895 = phi float [ %4869, %4730 ], [ %4334, %4709 ]
  %4896 = phi float [ %4889, %4730 ], [ %4273, %4709 ]
  %4897 = phi float [ %4890, %4730 ], [ %4274, %4709 ]
  %4898 = phi float [ %4891, %4730 ], [ %4275, %4709 ]
  %4899 = phi float [ %4776, %4730 ], [ %4347, %4709 ]
  %4900 = phi float [ %4777, %4730 ], [ %4348, %4709 ]
  %4901 = phi float [ %4778, %4730 ], [ %4349, %4709 ]
  %4902 = phi float [ %4883, %4730 ], [ %4335, %4709 ]
  %4903 = phi float [ %4886, %4730 ], [ %4285, %4709 ]
  %4904 = fsub fast float -0.000000e+00, %160
  %4905 = select i1 %252, float 0.000000e+00, float %4895
  %4906 = call float @dx.op.dot3.f32(i32 55, float %4896, float %4897, float %4898, float %4727, float %4728, float %4729)  ; Dot3(ax,ay,az,bx,by,bz)
  %4907 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4908 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %4896, float %4897, float %4898)  ; Dot3(ax,ay,az,bx,by,bz)
  %4909 = fmul fast float %4908, 2.000000e+00
  %4910 = fmul fast float %4909, %4896
  %4911 = fmul fast float %4909, %4897
  %4912 = fmul fast float %4909, %4898
  %4913 = fsub fast float %178, %4910
  %4914 = fsub fast float %179, %4911
  %4915 = fsub fast float %180, %4912
  %4916 = call float @dx.op.binary.f32(i32 36, float %4903, float 1.000000e+00)  ; FMin(a,b)
  %4917 = fsub fast float 1.000000e+00, %4903
  %4918 = bitcast float %4917 to i32
  %4919 = sub nsw i32 2129859010, %4918
  %4920 = bitcast i32 %4919 to float
  %4921 = fsub fast float 1.000000e+00, %66
  %4922 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4923 = call float @dx.op.binary.f32(i32 35, float %4922, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4924 = fdiv fast float %4921, %4923
  %4925 = call float @dx.op.dot3.f32(i32 55, float %4896, float %4897, float %4898, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4926 = call float @dx.op.unary.f32(i32 7, float %4925)  ; Saturate(value)
  %4927 = fmul fast float %4926, 5.000000e-01
  %4928 = fadd fast float %4927, 5.000000e-01
  %4929 = fmul fast float %4928, %66
  %4930 = call float @dx.op.dot3.f32(i32 55, float %4896, float %4897, float %4898, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4931 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4932 = fmul fast float %4931, %4924
  %4933 = fadd fast float %4929, %4932
  %4934 = fsub fast float 5.000000e-01, %4927
  %4935 = fmul fast float %4934, %4899
  %4936 = fmul fast float %4934, %4900
  %4937 = fmul fast float %4934, %4901
  %4938 = fadd fast float %4933, %4935
  %4939 = fadd fast float %4933, %4936
  %4940 = fadd fast float %4933, %4937
  %4941 = call float @dx.op.dot3.f32(i32 55, float %4913, float %4914, float %4915, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4942 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4943 = fmul fast float %4942, 5.000000e-01
  %4944 = fadd fast float %4943, 5.000000e-01
  %4945 = fmul fast float %4944, %66
  %4946 = call float @dx.op.dot3.f32(i32 55, float %4913, float %4914, float %4915, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4947 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4948 = fmul fast float %4947, %4924
  %4949 = fadd fast float %4945, %4948
  %4950 = fsub fast float 5.000000e-01, %4943
  %4951 = fmul fast float %4950, %4899
  %4952 = fmul fast float %4950, %4900
  %4953 = fmul fast float %4950, %4901
  %4954 = fadd fast float %4949, %4951
  %4955 = fadd fast float %4949, %4952
  %4956 = fadd fast float %4949, %4953
  %4957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4958 = extractvalue %dx.types.CBufRet.f32 %4957, 0
  %4959 = call float @dx.op.binary.f32(i32 36, float %4899, float %4958)  ; FMin(a,b)
  %4960 = fsub fast float 1.000000e+00, %4916
  %4961 = fmul fast float %4959, %4960
  %4962 = fsub fast float 1.000000e+00, %4961
  %4963 = bitcast float %4962 to i32
  %4964 = sub nsw i32 2129859010, %4963
  %4965 = bitcast i32 %4964 to float
  %4966 = call float @dx.op.binary.f32(i32 36, float %4900, float %4958)  ; FMin(a,b)
  %4967 = fmul fast float %4966, %4960
  %4968 = fsub fast float 1.000000e+00, %4967
  %4969 = bitcast float %4968 to i32
  %4970 = sub nsw i32 2129859010, %4969
  %4971 = bitcast i32 %4970 to float
  %4972 = call float @dx.op.binary.f32(i32 36, float %4901, float %4958)  ; FMin(a,b)
  %4973 = fmul fast float %4972, %4960
  %4974 = fsub fast float 1.000000e+00, %4973
  %4975 = bitcast float %4974 to i32
  %4976 = sub nsw i32 2129859010, %4975
  %4977 = bitcast i32 %4976 to float
  %4978 = fmul fast float %4916, %67
  %4979 = fmul fast float %4978, %4938
  %4980 = fmul fast float %4979, %4965
  %4981 = fmul fast float %4916, %68
  %4982 = fmul fast float %4981, %4939
  %4983 = fmul fast float %4982, %4971
  %4984 = fmul fast float %4916, %69
  %4985 = fmul fast float %4984, %4940
  %4986 = fmul fast float %4985, %4977
  %4987 = call float @dx.op.binary.f32(i32 36, float %4893, float %4958)  ; FMin(a,b)
  %4988 = fmul fast float %4987, %4960
  %4989 = fsub fast float 1.000000e+00, %4988
  %4990 = bitcast float %4989 to i32
  %4991 = sub nsw i32 2129859010, %4990
  %4992 = bitcast i32 %4991 to float
  %4993 = call float @dx.op.binary.f32(i32 36, float %4894, float %4958)  ; FMin(a,b)
  %4994 = fmul fast float %4993, %4960
  %4995 = fsub fast float 1.000000e+00, %4994
  %4996 = bitcast float %4995 to i32
  %4997 = sub nsw i32 2129859010, %4996
  %4998 = bitcast i32 %4997 to float
  %4999 = call float @dx.op.binary.f32(i32 36, float %4905, float %4958)  ; FMin(a,b)
  %5000 = fmul fast float %4999, %4960
  %5001 = fsub fast float 1.000000e+00, %5000
  %5002 = bitcast float %5001 to i32
  %5003 = sub nsw i32 2129859010, %5002
  %5004 = bitcast i32 %5003 to float
  %5005 = fmul fast float %4978, %4954
  %5006 = fmul fast float %5005, %4992
  %5007 = fmul fast float %4981, %4955
  %5008 = fmul fast float %5007, %4998
  %5009 = fmul fast float %4984, %4956
  %5010 = fmul fast float %5009, %5004
  %5011 = call float @dx.op.dot3.f32(i32 55, float %4980, float %4983, float %4986, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5012 = select i1 %252, float 0.000000e+00, float %4980
  %5013 = select i1 %252, float %5011, float %4983
  %5014 = select i1 %252, float 0.000000e+00, float %4986
  %5015 = call float @dx.op.dot3.f32(i32 55, float %5006, float %5008, float %5010, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5016 = select i1 %252, float 0.000000e+00, float %5006
  %5017 = select i1 %252, float %5015, float %5008
  %5018 = select i1 %252, float 0.000000e+00, float %5010
  %5019 = fmul fast float %4907, 9.843750e-01
  %5020 = fmul fast float %4902, 9.843750e-01
  %5021 = fadd fast float %5019, 7.812500e-03
  %5022 = fadd fast float %5020, 7.812500e-03
  %5023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5021, float %5022, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5024 = extractvalue %dx.types.ResRet.f32 %5023, 2
  %5025 = extractvalue %dx.types.ResRet.f32 %5023, 3
  %5026 = fmul fast float %5024, %4893
  %5027 = fmul fast float %5024, %4894
  %5028 = fmul fast float %5024, %4905
  %5029 = fadd fast float %5026, %5025
  %5030 = fadd fast float %5027, %5025
  %5031 = fadd fast float %5028, %5025
  %5032 = fcmp fast ogt float %4286, 0.000000e+00
  br i1 %5032, label %5033, label %5059

; <label>:5033                                    ; preds = %4892
  %5034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4286, float %4907, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5035 = extractvalue %dx.types.ResRet.f32 %5034, 0
  %5036 = extractvalue %dx.types.ResRet.f32 %5034, 1
  %5037 = extractvalue %dx.types.ResRet.f32 %5034, 2
  %5038 = fadd fast float %5035, -5.000000e-01
  %5039 = fadd fast float %5036, -5.000000e-01
  %5040 = fadd fast float %5037, -5.000000e-01
  %5041 = fsub fast float 1.000000e+00, %4893
  %5042 = fsub fast float 1.000000e+00, %4894
  %5043 = fsub fast float 1.000000e+00, %4905
  %5044 = fmul fast float %4893, 4.000000e+00
  %5045 = fmul fast float %5044, %5041
  %5046 = fmul fast float %5045, %5038
  %5047 = fmul fast float %4894, 4.000000e+00
  %5048 = fmul fast float %5047, %5042
  %5049 = fmul fast float %5048, %5039
  %5050 = fmul fast float %4905, 4.000000e+00
  %5051 = fmul fast float %5050, %5043
  %5052 = fmul fast float %5051, %5040
  %5053 = fadd fast float %5046, %5029
  %5054 = fadd fast float %5049, %5030
  %5055 = fadd fast float %5052, %5031
  %5056 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5057 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5058 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  br label %5059

; <label>:5059                                    ; preds = %5033, %4892
  %5060 = phi float [ %5056, %5033 ], [ %5029, %4892 ]
  %5061 = phi float [ %5057, %5033 ], [ %5030, %4892 ]
  %5062 = phi float [ %5058, %5033 ], [ %5031, %4892 ]
  %5063 = call float @dx.op.binary.f32(i32 35, float %5061, float %5062)  ; FMax(a,b)
  %5064 = call float @dx.op.binary.f32(i32 35, float %5060, float %5063)  ; FMax(a,b)
  %5065 = fsub fast float 1.000000e+00, %5064
  %5066 = fmul fast float %5065, %5012
  %5067 = fmul fast float %5065, %5013
  %5068 = fmul fast float %5065, %5014
  %5069 = call float @dx.op.dot3.f32(i32 55, float %4899, float %4900, float %4901, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5070 = fcmp fast ogt float %5069, 0x3E7FF19E20000000
  %5071 = fdiv fast float 1.000000e+00, %5069
  %5072 = select i1 %5070, float %5071, float 0.000000e+00
  %5073 = fmul fast float %5072, %4899
  %5074 = fmul fast float %5072, %4900
  %5075 = fmul fast float %5072, %4901
  %5076 = fadd fast float %5073, -1.000000e+00
  %5077 = fadd fast float %5074, -1.000000e+00
  %5078 = fadd fast float %5075, -1.000000e+00
  %5079 = fmul fast float %5076, 5.000000e-01
  %5080 = fmul fast float %5077, 5.000000e-01
  %5081 = fmul fast float %5078, 5.000000e-01
  %5082 = fadd fast float %5079, 1.000000e+00
  %5083 = fadd fast float %5080, 1.000000e+00
  %5084 = fadd fast float %5081, 1.000000e+00
  %5085 = fmul fast float %5060, %5016
  %5086 = fmul fast float %5061, %5017
  %5087 = fmul fast float %5062, %5018
  %5088 = fsub fast float 1.000000e+00, %4907
  %5089 = bitcast float %5088 to i32
  %5090 = sitofp i32 %5089 to float
  %5091 = fmul fast float %5090, 5.000000e+00
  %5092 = fadd fast float %5091, 0xC1EFBF8940000000
  %5093 = fptosi float %5092 to i32
  %5094 = bitcast i32 %5093 to float
  %5095 = fmul fast float %5094, %4287
  %5096 = fmul fast float %5012, %5095
  %5097 = fmul fast float %5096, %5065
  %5098 = fmul fast float %5097, %5082
  %5099 = fmul fast float %5013, %5095
  %5100 = fmul fast float %5099, %5065
  %5101 = fmul fast float %5100, %5083
  %5102 = fmul fast float %5014, %5095
  %5103 = fmul fast float %5102, %5065
  %5104 = fmul fast float %5103, %5084
  %5105 = fmul fast float %5066, %4313
  %5106 = fmul fast float %5067, %4313
  %5107 = fmul fast float %5068, %4313
  %5108 = fadd fast float %5085, %4276
  %5109 = fadd fast float %5108, %5098
  %5110 = fmul fast float %5109, %4313
  %5111 = fadd fast float %5086, %4277
  %5112 = fadd fast float %5111, %5101
  %5113 = fmul fast float %5112, %4313
  %5114 = fadd fast float %5087, %4278
  %5115 = fadd fast float %5114, %5104
  %5116 = fmul fast float %5115, %4313
  %5117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.f32 %5117, 3
  %5119 = fcmp fast oeq float %5118, 0.000000e+00
  br i1 %5119, label %6189, label %5120

; <label>:5120                                    ; preds = %5059
  %5121 = extractvalue %dx.types.CBufRet.f32 %5117, 0
  %5122 = extractvalue %dx.types.CBufRet.f32 %5117, 1
  %5123 = extractvalue %dx.types.CBufRet.f32 %5117, 2
  %5124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5125 = extractvalue %dx.types.CBufRet.f32 %5124, 0
  %5126 = extractvalue %dx.types.CBufRet.f32 %5124, 1
  %5127 = extractvalue %dx.types.CBufRet.f32 %5124, 2
  %5128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5129 = extractvalue %dx.types.CBufRet.f32 %5128, 0
  %5130 = extractvalue %dx.types.CBufRet.f32 %5128, 1
  %5131 = call float @dx.op.dot3.f32(i32 55, float %5125, float %5126, float %5127, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5132 = select i1 %252, float %5129, float %5125
  %5133 = select i1 %252, float %5131, float %5126
  %5134 = select i1 %252, float %5130, float %5127
  %5135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5136 = extractvalue %dx.types.CBufRet.f32 %5135, 2
  %5137 = fmul fast float %5136, %102
  %5138 = fmul fast float %5136, %103
  %5139 = fmul fast float %5136, %104
  %5140 = fadd fast float %5137, %158
  %5141 = fadd fast float %5138, %159
  %5142 = fadd fast float %5139, %160
  %5143 = fcmp fast olt float %5118, 0.000000e+00
  br i1 %5143, label %5768, label %5144

; <label>:5144                                    ; preds = %5120
  %5145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.f32 %5145, 0
  %5147 = extractvalue %dx.types.CBufRet.f32 %5145, 1
  %5148 = extractvalue %dx.types.CBufRet.f32 %5145, 2
  %5149 = extractvalue %dx.types.CBufRet.f32 %5145, 3
  %5150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5151 = extractvalue %dx.types.CBufRet.f32 %5150, 0
  %5152 = extractvalue %dx.types.CBufRet.f32 %5150, 1
  %5153 = extractvalue %dx.types.CBufRet.f32 %5150, 2
  %5154 = extractvalue %dx.types.CBufRet.f32 %5150, 3
  %5155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5155, 0
  %5157 = extractvalue %dx.types.CBufRet.f32 %5155, 1
  %5158 = extractvalue %dx.types.CBufRet.f32 %5155, 2
  %5159 = extractvalue %dx.types.CBufRet.f32 %5155, 3
  %5160 = fmul fast float %5146, %5140
  %5161 = call float @dx.op.tertiary.f32(i32 46, float %5141, float %5147, float %5160)  ; FMad(a,b,c)
  %5162 = call float @dx.op.tertiary.f32(i32 46, float %5142, float %5148, float %5161)  ; FMad(a,b,c)
  %5163 = fadd fast float %5162, %5149
  %5164 = fmul fast float %5151, %5140
  %5165 = call float @dx.op.tertiary.f32(i32 46, float %5141, float %5152, float %5164)  ; FMad(a,b,c)
  %5166 = call float @dx.op.tertiary.f32(i32 46, float %5142, float %5153, float %5165)  ; FMad(a,b,c)
  %5167 = fadd fast float %5166, %5154
  %5168 = fmul fast float %5156, %5140
  %5169 = call float @dx.op.tertiary.f32(i32 46, float %5141, float %5157, float %5168)  ; FMad(a,b,c)
  %5170 = call float @dx.op.tertiary.f32(i32 46, float %5142, float %5158, float %5169)  ; FMad(a,b,c)
  %5171 = fadd fast float %5170, %5159
  %5172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5173 = extractvalue %dx.types.CBufRet.f32 %5172, 0
  %5174 = extractvalue %dx.types.CBufRet.f32 %5172, 1
  %5175 = extractvalue %dx.types.CBufRet.f32 %5172, 3
  %5176 = fmul fast float %5175, %5163
  %5177 = fmul fast float %5175, %5167
  %5178 = fadd fast float %5176, %5173
  %5179 = fadd fast float %5177, %5174
  %5180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5181 = extractvalue %dx.types.CBufRet.f32 %5180, 0
  %5182 = extractvalue %dx.types.CBufRet.f32 %5180, 1
  %5183 = extractvalue %dx.types.CBufRet.f32 %5180, 3
  %5184 = fmul fast float %5183, %5163
  %5185 = fmul fast float %5183, %5167
  %5186 = fadd fast float %5184, %5181
  %5187 = fadd fast float %5185, %5182
  %5188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5189 = extractvalue %dx.types.CBufRet.f32 %5188, 1
  %5190 = fsub fast float %5189, %5171
  %5191 = extractvalue %dx.types.CBufRet.f32 %5188, 2
  %5192 = fmul fast float %5190, %5191
  %5193 = fsub fast float 1.000000e+00, %5192
  %5194 = call float @dx.op.unary.f32(i32 7, float %5193)  ; Saturate(value)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5180, 2
  %5196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5197 = extractvalue %dx.types.CBufRet.f32 %5196, 2
  %5198 = fadd fast float %5197, %5195
  %5199 = fcmp fast ogt float %5198, 0.000000e+00
  br i1 %5199, label %5200, label %5224

; <label>:5200                                    ; preds = %5144
  %5201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5202 = extractvalue %dx.types.CBufRet.f32 %5201, 0
  %5203 = extractvalue %dx.types.CBufRet.f32 %5201, 1
  %5204 = fsub fast float %5186, %5202
  %5205 = fsub fast float %5187, %5203
  %5206 = fcmp fast olt float %5204, 0.000000e+00
  %5207 = fcmp fast olt float %5205, 0.000000e+00
  %5208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5209 = extractvalue %dx.types.CBufRet.f32 %5208, 0
  %5210 = extractvalue %dx.types.CBufRet.f32 %5208, 1
  %5211 = extractvalue %dx.types.CBufRet.f32 %5208, 2
  %5212 = extractvalue %dx.types.CBufRet.f32 %5208, 3
  %5213 = select i1 %5206, float %5209, float %5211
  %5214 = select i1 %5207, float %5210, float %5212
  %5215 = fmul fast float %5213, %5204
  %5216 = fmul fast float %5214, %5205
  %5217 = call float @dx.op.unary.f32(i32 6, float %5215)  ; FAbs(value)
  %5218 = call float @dx.op.unary.f32(i32 6, float %5216)  ; FAbs(value)
  %5219 = extractvalue %dx.types.CBufRet.f32 %5135, 0
  %5220 = call float @dx.op.binary.f32(i32 35, float %5217, float %5218)  ; FMax(a,b)
  %5221 = fsub fast float %5219, %5220
  %5222 = call float @dx.op.unary.f32(i32 7, float %5221)  ; Saturate(value)
  %5223 = fmul fast float %5222, %5194
  br label %5224

; <label>:5224                                    ; preds = %5200, %5144
  %5225 = phi float [ %5223, %5200 ], [ 0.000000e+00, %5144 ]
  %5226 = extractvalue %dx.types.CBufRet.f32 %5172, 2
  %5227 = extractvalue %dx.types.CBufRet.f32 %5196, 1
  %5228 = fadd fast float %5227, %5226
  %5229 = fcmp fast ogt float %5228, 0.000000e+00
  %5230 = extractvalue %dx.types.CBufRet.f32 %5135, 0
  br i1 %5229, label %5231, label %5254

; <label>:5231                                    ; preds = %5224
  %5232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5233 = extractvalue %dx.types.CBufRet.f32 %5232, 0
  %5234 = extractvalue %dx.types.CBufRet.f32 %5232, 1
  %5235 = fsub fast float %5178, %5233
  %5236 = fsub fast float %5179, %5234
  %5237 = fcmp fast olt float %5235, 0.000000e+00
  %5238 = fcmp fast olt float %5236, 0.000000e+00
  %5239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5240 = extractvalue %dx.types.CBufRet.f32 %5239, 0
  %5241 = extractvalue %dx.types.CBufRet.f32 %5239, 1
  %5242 = extractvalue %dx.types.CBufRet.f32 %5239, 2
  %5243 = extractvalue %dx.types.CBufRet.f32 %5239, 3
  %5244 = select i1 %5237, float %5240, float %5242
  %5245 = select i1 %5238, float %5241, float %5243
  %5246 = fmul fast float %5244, %5235
  %5247 = fmul fast float %5245, %5236
  %5248 = call float @dx.op.unary.f32(i32 6, float %5246)  ; FAbs(value)
  %5249 = call float @dx.op.unary.f32(i32 6, float %5247)  ; FAbs(value)
  %5250 = call float @dx.op.binary.f32(i32 35, float %5248, float %5249)  ; FMax(a,b)
  %5251 = fsub fast float %5230, %5250
  %5252 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  %5253 = fmul fast float %5252, %5194
  br label %5254

; <label>:5254                                    ; preds = %5231, %5224
  %5255 = phi float [ %5253, %5231 ], [ 0.000000e+00, %5224 ]
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 1
  %5258 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  %5259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5260 = extractvalue %dx.types.CBufRet.f32 %5259, 0
  %5261 = extractvalue %dx.types.CBufRet.f32 %5259, 1
  %5262 = fsub fast float %5163, %5260
  %5263 = fsub fast float %5167, %5261
  %5264 = fcmp fast olt float %5262, 0.000000e+00
  %5265 = fcmp fast olt float %5263, 0.000000e+00
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 0
  %5268 = extractvalue %dx.types.CBufRet.f32 %5266, 1
  %5269 = extractvalue %dx.types.CBufRet.f32 %5266, 2
  %5270 = extractvalue %dx.types.CBufRet.f32 %5266, 3
  %5271 = select i1 %5264, float %5267, float %5269
  %5272 = select i1 %5265, float %5268, float %5270
  %5273 = fmul fast float %5271, %5262
  %5274 = fmul fast float %5272, %5263
  %5275 = call float @dx.op.unary.f32(i32 6, float %5273)  ; FAbs(value)
  %5276 = call float @dx.op.unary.f32(i32 6, float %5274)  ; FAbs(value)
  %5277 = call float @dx.op.binary.f32(i32 35, float %5275, float %5276)  ; FMax(a,b)
  %5278 = fsub fast float %5230, %5277
  %5279 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5280 = call float @dx.op.binary.f32(i32 36, float %5279, float %5258)  ; FMin(a,b)
  %5281 = fmul fast float %5280, %5194
  %5282 = fsub fast float %5255, %5281
  %5283 = fsub fast float %5225, %5255
  %5284 = fsub fast float %5283, %5281
  %5285 = call float @dx.op.binary.f32(i32 35, float %5281, float %5255)  ; FMax(a,b)
  %5286 = call float @dx.op.binary.f32(i32 35, float %5285, float %5225)  ; FMax(a,b)
  %5287 = fcmp fast olt float %5286, 1.000000e+00
  br i1 %5287, label %5288, label %5686, !dx.controlflow.hints !91

; <label>:5288                                    ; preds = %5254
  %5289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.f32 %5289, 0
  %5291 = fcmp fast une float %5290, 0.000000e+00
  br i1 %5291, label %5292, label %5686, !dx.controlflow.hints !92

; <label>:5292                                    ; preds = %5288
  %5293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5294 = extractvalue %dx.types.CBufRet.f32 %5293, 0
  %5295 = extractvalue %dx.types.CBufRet.f32 %5293, 1
  %5296 = extractvalue %dx.types.CBufRet.f32 %5293, 2
  %5297 = extractvalue %dx.types.CBufRet.f32 %5293, 3
  %5298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5299 = extractvalue %dx.types.CBufRet.f32 %5298, 0
  %5300 = extractvalue %dx.types.CBufRet.f32 %5298, 1
  %5301 = extractvalue %dx.types.CBufRet.f32 %5298, 2
  %5302 = extractvalue %dx.types.CBufRet.f32 %5298, 3
  %5303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5304 = extractvalue %dx.types.CBufRet.f32 %5303, 0
  %5305 = extractvalue %dx.types.CBufRet.f32 %5303, 1
  %5306 = extractvalue %dx.types.CBufRet.f32 %5303, 2
  %5307 = extractvalue %dx.types.CBufRet.f32 %5303, 3
  %5308 = fmul fast float %5294, %5140
  %5309 = call float @dx.op.tertiary.f32(i32 46, float %5141, float %5295, float %5308)  ; FMad(a,b,c)
  %5310 = call float @dx.op.tertiary.f32(i32 46, float %5142, float %5296, float %5309)  ; FMad(a,b,c)
  %5311 = fadd fast float %5310, %5297
  %5312 = fmul fast float %5299, %5140
  %5313 = call float @dx.op.tertiary.f32(i32 46, float %5141, float %5300, float %5312)  ; FMad(a,b,c)
  %5314 = call float @dx.op.tertiary.f32(i32 46, float %5142, float %5301, float %5313)  ; FMad(a,b,c)
  %5315 = fadd fast float %5314, %5302
  %5316 = fmul fast float %5304, %5140
  %5317 = call float @dx.op.tertiary.f32(i32 46, float %5141, float %5305, float %5316)  ; FMad(a,b,c)
  %5318 = call float @dx.op.tertiary.f32(i32 46, float %5142, float %5306, float %5317)  ; FMad(a,b,c)
  %5319 = fadd fast float %5318, %5307
  %5320 = fcmp fast oge float %5311, 1.000000e+00
  %5321 = fcmp fast oge float %5315, 1.000000e+00
  %5322 = or i1 %5320, %5321
  %5323 = fcmp fast olt float %5311, 0.000000e+00
  %5324 = fcmp fast olt float %5315, 0.000000e+00
  %5325 = or i1 %5323, %5324
  %5326 = or i1 %5322, %5325
  br i1 %5326, label %5686, label %5327, !dx.controlflow.hints !93

; <label>:5327                                    ; preds = %5292
  %5328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5329 = extractvalue %dx.types.CBufRet.f32 %5328, 0
  %5330 = extractvalue %dx.types.CBufRet.f32 %5328, 1
  %5331 = extractvalue %dx.types.CBufRet.f32 %5328, 2
  %5332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5333 = extractvalue %dx.types.CBufRet.i32 %5332, 2
  %5334 = uitofp i32 %5333 to float
  %5335 = extractvalue %dx.types.CBufRet.i32 %5332, 3
  %5336 = uitofp i32 %5335 to float
  %5337 = extractvalue %dx.types.CBufRet.f32 %5328, 3
  %5338 = fmul fast float %5337, 2.000000e+00
  %5339 = fsub fast float %5311, %5329
  %5340 = fsub fast float %5315, %5330
  %5341 = fmul fast float %5338, %5339
  %5342 = fmul fast float %5338, %5340
  %5343 = fdiv fast float 1.000000e+00, %5123
  %5344 = fmul fast float %5342, %5343
  %5345 = call float @dx.op.unary.f32(i32 6, float %5344)  ; FAbs(value)
  %5346 = fmul fast float %5331, %5142
  %5347 = fmul fast float %5346, %5338
  %5348 = call float @dx.op.unary.f32(i32 6, float %5347)  ; FAbs(value)
  %5349 = call float @dx.op.unary.f32(i32 6, float %5341)  ; FAbs(value)
  %5350 = call float @dx.op.binary.f32(i32 35, float %5349, float %5348)  ; FMax(a,b)
  %5351 = call float @dx.op.binary.f32(i32 35, float %5350, float %5345)  ; FMax(a,b)
  %5352 = fmul fast float %5351, 2.000000e+00
  %5353 = call float @dx.op.unary.f32(i32 23, float %5352)  ; Log(value)
  %5354 = call float @dx.op.binary.f32(i32 35, float %5353, float %5334)  ; FMax(a,b)
  %5355 = call float @dx.op.unary.f32(i32 22, float %5354)  ; Frc(value)
  %5356 = fadd fast float %5355, 0xBFEA666660000000
  %5357 = fmul fast float %5356, 8.000000e+00
  %5358 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  %5359 = call float @dx.op.unary.f32(i32 27, float %5354)  ; Round_ni(value)
  %5360 = fadd fast float %5359, %5358
  %5361 = call float @dx.op.binary.f32(i32 36, float %5360, float %5336)  ; FMin(a,b)
  %5362 = call float @dx.op.unary.f32(i32 27, float %5361)  ; Round_ni(value)
  %5363 = fsub fast float -0.000000e+00, %5362
  %5364 = call float @dx.op.unary.f32(i32 21, float %5363)  ; Exp(value)
  %5365 = fmul fast float %5364, %5338
  %5366 = fmul fast float %5365, %5311
  %5367 = fmul fast float %5365, %5315
  %5368 = fmul fast float %5366, 2.500000e-01
  %5369 = fmul fast float %5367, 2.500000e-01
  %5370 = fadd fast float %5368, 5.000000e-01
  %5371 = fadd fast float %5369, 5.000000e-01
  %5372 = fsub fast float %5336, %5334
  %5373 = fptoui float %5372 to i32
  %5374 = add i32 %5373, 320
  %5375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5374)  ; CBufferLoadLegacy(handle,regIndex)
  %5376 = extractvalue %dx.types.CBufRet.f32 %5375, 0
  %5377 = extractvalue %dx.types.CBufRet.f32 %5375, 1
  %5378 = fcmp fast une float %5361, %5336
  %5379 = fsub fast float %5311, %5376
  %5380 = fsub fast float %5315, %5377
  %5381 = call float @dx.op.unary.f32(i32 6, float %5379)  ; FAbs(value)
  %5382 = call float @dx.op.unary.f32(i32 6, float %5380)  ; FAbs(value)
  %5383 = fmul fast float %5381, %5365
  %5384 = fmul fast float %5382, %5365
  %5385 = fcmp fast olt float %5383, 1.000000e+00
  %5386 = fcmp fast olt float %5384, 1.000000e+00
  %5387 = and i1 %5385, %5386
  %5388 = or i1 %5378, %5387
  br i1 %5388, label %5389, label %5686, !dx.controlflow.hints !94

; <label>:5389                                    ; preds = %5327
  %5390 = fmul fast float %5367, 5.000000e-01
  %5391 = fmul fast float %5366, 5.000000e-01
  %5392 = fadd fast float %5390, 5.000000e-01
  %5393 = fadd fast float %5391, 5.000000e-01
  %5394 = sitofp i32 %5333 to float
  %5395 = fsub fast float %5361, %5394
  %5396 = call float @dx.op.unary.f32(i32 27, float %5395)  ; Round_ni(value)
  %5397 = call float @dx.op.unary.f32(i32 22, float %5361)  ; Frc(value)
  %5398 = call float @dx.op.unary.f32(i32 22, float %5393)  ; Frc(value)
  %5399 = call float @dx.op.unary.f32(i32 22, float %5392)  ; Frc(value)
  %5400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5398, float %5399, float %5396, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5401 = extractvalue %dx.types.ResRet.f32 %5400, 0
  %5402 = extractvalue %dx.types.ResRet.f32 %5400, 1
  %5403 = extractvalue %dx.types.ResRet.f32 %5400, 2
  %5404 = extractvalue %dx.types.ResRet.f32 %5400, 3
  %5405 = fcmp fast ogt float %5397, 0.000000e+00
  br i1 %5405, label %5406, label %5427, !dx.controlflow.hints !95

; <label>:5406                                    ; preds = %5389
  %5407 = fadd fast float %5396, 1.000000e+00
  %5408 = call float @dx.op.unary.f32(i32 22, float %5370)  ; Frc(value)
  %5409 = call float @dx.op.unary.f32(i32 22, float %5371)  ; Frc(value)
  %5410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5408, float %5409, float %5407, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5411 = extractvalue %dx.types.ResRet.f32 %5410, 0
  %5412 = extractvalue %dx.types.ResRet.f32 %5410, 1
  %5413 = extractvalue %dx.types.ResRet.f32 %5410, 2
  %5414 = extractvalue %dx.types.ResRet.f32 %5410, 3
  %5415 = fsub fast float %5411, %5401
  %5416 = fsub fast float %5412, %5402
  %5417 = fsub fast float %5413, %5403
  %5418 = fsub fast float %5414, %5404
  %5419 = fmul fast float %5415, %5397
  %5420 = fmul fast float %5416, %5397
  %5421 = fmul fast float %5417, %5397
  %5422 = fmul fast float %5418, %5397
  %5423 = fadd fast float %5419, %5401
  %5424 = fadd fast float %5420, %5402
  %5425 = fadd fast float %5421, %5403
  %5426 = fadd fast float %5422, %5404
  br label %5427

; <label>:5427                                    ; preds = %5406, %5389
  %5428 = phi float [ %5423, %5406 ], [ %5401, %5389 ]
  %5429 = phi float [ %5424, %5406 ], [ %5402, %5389 ]
  %5430 = phi float [ %5425, %5406 ], [ %5403, %5389 ]
  %5431 = phi float [ %5426, %5406 ], [ %5404, %5389 ]
  %5432 = fadd fast float %5428, -5.000000e-01
  %5433 = fadd fast float %5430, -5.000000e-01
  %5434 = fmul fast float %5432, 0xBFD5555560000000
  %5435 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5433, float %5434)  ; FMad(a,b,c)
  %5436 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5429, float 0.000000e+00)  ; FMad(a,b,c)
  %5437 = fadd fast float %5436, %5431
  %5438 = fmul fast float %5432, -7.500000e-01
  %5439 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5433, float %5438)  ; FMad(a,b,c)
  %5440 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5429, float 0.000000e+00)  ; FMad(a,b,c)
  %5441 = fadd fast float %5440, %5431
  %5442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5443 = extractvalue %dx.types.CBufRet.f32 %5442, 0
  %5444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5445 = extractvalue %dx.types.CBufRet.f32 %5444, 0
  %5446 = extractvalue %dx.types.CBufRet.f32 %5444, 1
  %5447 = extractvalue %dx.types.CBufRet.f32 %5444, 2
  %5448 = extractvalue %dx.types.CBufRet.f32 %5444, 3
  %5449 = fsub fast float %5445, %5435
  %5450 = fsub fast float %5446, %5437
  %5451 = fsub fast float %5447, %5439
  %5452 = fsub fast float %5448, %5441
  %5453 = fmul fast float %5449, %5443
  %5454 = fmul fast float %5450, %5443
  %5455 = fmul fast float %5451, %5443
  %5456 = fmul fast float %5452, %5443
  %5457 = fadd fast float %5453, %5435
  %5458 = fadd fast float %5454, %5437
  %5459 = fadd fast float %5455, %5439
  %5460 = fadd fast float %5456, %5441
  %5461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5462 = extractvalue %dx.types.ResRet.i32 %5461, 0
  %5463 = and i32 %5462, 536870911
  %5464 = uitofp i32 %5463 to float
  %5465 = fmul fast float %5464, %5311
  %5466 = fmul fast float %5464, %5315
  %5467 = fptoui float %5465 to i32
  %5468 = fptoui float %5466 to i32
  %5469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5470 = extractvalue %dx.types.ResRet.i32 %5469, 0
  %5471 = and i32 %5470, 31
  %5472 = lshr i32 %5467, %5471
  %5473 = lshr i32 %5468, %5471
  %5474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5475 = extractvalue %dx.types.ResRet.i32 %5474, 0
  %5476 = and i32 %5475, 31
  %5477 = shl i32 1, %5476
  %5478 = call i32 @dx.op.binary.i32(i32 40, i32 %5477, i32 4)  ; UMin(a,b)
  %5479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5480 = extractvalue %dx.types.ResRet.i32 %5479, 0
  %5481 = extractvalue %dx.types.ResRet.i32 %5479, 1
  %5482 = icmp eq i32 %5478, 0
  br i1 %5482, label %5524, label %5483

; <label>:5483                                    ; preds = %5427
  br label %5484

; <label>:5484                                    ; preds = %5512, %5483
  %5485 = phi i32 [ %5515, %5512 ], [ 0, %5483 ]
  %5486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5487 = extractvalue %dx.types.ResRet.i32 %5486, 0
  %5488 = lshr i32 %5487, 16
  %5489 = and i32 %5488, 31
  %5490 = shl i32 %5473, %5489
  %5491 = add i32 %5490, %5472
  %5492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5493 = extractvalue %dx.types.ResRet.i32 %5492, 0
  %5494 = and i32 %5493, 31
  %5495 = shl i32 %5491, %5494
  %5496 = add i32 %5495, %5485
  %5497 = shl i32 %5496, 2
  %5498 = add i32 %5497, 32
  %5499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5498, i32 undef)  ; BufferLoad(srv,index,wot)
  %5500 = extractvalue %dx.types.ResRet.i32 %5499, 0
  %5501 = icmp slt i32 %5500, 0
  %5502 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5485
  %5503 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5485
  %5504 = bitcast float* %5502 to i32*
  %5505 = bitcast float* %5503 to i32*
  br i1 %5501, label %5506, label %5512

; <label>:5506                                    ; preds = %5484
  %5507 = and i32 %5500, 1073741823
  %5508 = add nuw nsw i32 %5507, 20
  %5509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5508, i32 undef)  ; BufferLoad(srv,index,wot)
  %5510 = extractvalue %dx.types.ResRet.i32 %5509, 0
  %5511 = extractvalue %dx.types.ResRet.i32 %5509, 1
  br label %5512

; <label>:5512                                    ; preds = %5506, %5484
  %5513 = phi i32 [ %5510, %5506 ], [ %5480, %5484 ]
  %5514 = phi i32 [ %5511, %5506 ], [ %5481, %5484 ]
  store i32 %5513, i32* %5504, align 4
  store i32 %5514, i32* %5505, align 4
  %5515 = add nuw i32 %5485, 1
  %5516 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5517 = extractvalue %dx.types.CBufRet.i32 %5516, 2
  %5518 = icmp eq i32 %5517, 0
  %5519 = icmp ugt i32 %5500, -1073741825
  %5520 = and i1 %5519, %5518
  %5521 = icmp ult i32 %5515, %5478
  %5522 = and i1 %5520, %5521
  br i1 %5522, label %5484, label %5523

; <label>:5523                                    ; preds = %5512
  br label %5524

; <label>:5524                                    ; preds = %5523, %5427
  %5525 = phi i32 [ 0, %5427 ], [ %5515, %5523 ]
  %5526 = extractvalue %dx.types.CBufRet.f32 %5289, 2
  %5527 = fptoui float %5526 to i32
  %5528 = icmp eq i32 %5527, 0
  br i1 %5528, label %5580, label %5529

; <label>:5529                                    ; preds = %5524
  br label %5530

; <label>:5530                                    ; preds = %5575, %5529
  %5531 = phi i32 [ %5576, %5575 ], [ %5525, %5529 ]
  %5532 = phi i32 [ %5577, %5575 ], [ 0, %5529 ]
  %5533 = lshr i32 %5532, 2
  %5534 = and i32 %5532, 3
  %5535 = add nuw nsw i32 %5533, 83
  %5536 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5535)  ; CBufferLoadLegacy(handle,regIndex)
  %5537 = extractvalue %dx.types.CBufRet.i32 %5536, 0
  %5538 = extractvalue %dx.types.CBufRet.i32 %5536, 1
  %5539 = extractvalue %dx.types.CBufRet.i32 %5536, 2
  %5540 = extractvalue %dx.types.CBufRet.i32 %5536, 3
  %5541 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5537, i32* %5541, align 4
  %5542 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5538, i32* %5542, align 4
  %5543 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5539, i32* %5543, align 4
  %5544 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5540, i32* %5544, align 4
  %5545 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5534
  %5546 = load i32, i32* %5545, align 4, !tbaa !96, !noalias !100
  %5547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5548 = extractvalue %dx.types.ResRet.i32 %5547, 0
  %5549 = lshr i32 %5548, 16
  %5550 = and i32 %5549, 31
  %5551 = shl i32 %5473, %5550
  %5552 = add i32 %5551, %5472
  %5553 = shl i32 %5552, 2
  %5554 = add i32 %5553, %5546
  %5555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5554, i32 undef)  ; BufferLoad(srv,index,wot)
  %5556 = extractvalue %dx.types.ResRet.i32 %5555, 0
  %5557 = icmp eq i32 %5556, 0
  br i1 %5557, label %5575, label %5558

; <label>:5558                                    ; preds = %5530
  %5559 = icmp slt i32 %5556, 0
  %5560 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5531
  %5561 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5531
  %5562 = bitcast float* %5560 to i32*
  %5563 = bitcast float* %5561 to i32*
  br i1 %5559, label %5564, label %5571

; <label>:5564                                    ; preds = %5558
  %5565 = and i32 %5556, 1073741823
  %5566 = add i32 %5546, 20
  %5567 = add i32 %5566, %5565
  %5568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5567, i32 undef)  ; BufferLoad(srv,index,wot)
  %5569 = extractvalue %dx.types.ResRet.i32 %5568, 0
  %5570 = extractvalue %dx.types.ResRet.i32 %5568, 1
  br label %5571

; <label>:5571                                    ; preds = %5564, %5558
  %5572 = phi i32 [ %5569, %5564 ], [ %5480, %5558 ]
  %5573 = phi i32 [ %5570, %5564 ], [ %5481, %5558 ]
  store i32 %5572, i32* %5562, align 4
  store i32 %5573, i32* %5563, align 4
  %5574 = add i32 %5531, 1
  br label %5575

; <label>:5575                                    ; preds = %5571, %5530
  %5576 = phi i32 [ %5531, %5530 ], [ %5574, %5571 ]
  %5577 = add nuw i32 %5532, 1
  %5578 = icmp eq i32 %5577, %5527
  br i1 %5578, label %5579, label %5530

; <label>:5579                                    ; preds = %5575
  br label %5580

; <label>:5580                                    ; preds = %5579, %5524
  %5581 = phi i32 [ %5525, %5524 ], [ %5576, %5579 ]
  %5582 = icmp eq i32 %5581, 1
  %5583 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  %5584 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  br i1 %5582, label %5585, label %5588

; <label>:5585                                    ; preds = %5580
  %5586 = load float, float* %5583, align 4
  %5587 = load float, float* %5584, align 4
  br label %5615

; <label>:5588                                    ; preds = %5580
  %5589 = load float, float* %5583, align 4
  %5590 = load float, float* %5584, align 4
  %5591 = fdiv fast float 1.000000e+00, %5590
  %5592 = fsub fast float %5589, %5591
  %5593 = icmp ugt i32 %5581, 1
  br i1 %5593, label %5594, label %5610

; <label>:5594                                    ; preds = %5588
  br label %5595

; <label>:5595                                    ; preds = %5595, %5594
  %5596 = phi float [ %5605, %5595 ], [ %5592, %5594 ]
  %5597 = phi float [ %5606, %5595 ], [ %5589, %5594 ]
  %5598 = phi i32 [ %5607, %5595 ], [ 1, %5594 ]
  %5599 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5598
  %5600 = load float, float* %5599, align 4
  %5601 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5598
  %5602 = load float, float* %5601, align 4
  %5603 = fdiv fast float 1.000000e+00, %5602
  %5604 = fsub fast float %5600, %5603
  %5605 = call float @dx.op.binary.f32(i32 36, float %5596, float %5604)  ; FMin(a,b)
  %5606 = call float @dx.op.binary.f32(i32 35, float %5597, float %5600)  ; FMax(a,b)
  %5607 = add nuw i32 %5598, 1
  %5608 = icmp eq i32 %5607, %5581
  br i1 %5608, label %5609, label %5595

; <label>:5609                                    ; preds = %5595
  br label %5610

; <label>:5610                                    ; preds = %5609, %5588
  %5611 = phi float [ %5592, %5588 ], [ %5605, %5609 ]
  %5612 = phi float [ %5589, %5588 ], [ %5606, %5609 ]
  %5613 = fsub fast float %5612, %5611
  %5614 = fdiv fast float 1.000000e+00, %5613
  br label %5615

; <label>:5615                                    ; preds = %5610, %5585
  %5616 = phi float [ %5586, %5585 ], [ %5612, %5610 ]
  %5617 = phi float [ %5587, %5585 ], [ %5614, %5610 ]
  %5618 = fadd fast float %5319, %5616
  %5619 = fmul fast float %5618, %5617
  %5620 = call float @dx.op.unary.f32(i32 7, float %5619)  ; Saturate(value)
  %5621 = fmul fast float %5620, 2.000000e+00
  %5622 = fsub fast float 1.000000e+00, %5621
  %5623 = fmul fast float %5457, %5457
  %5624 = fsub fast float %5458, %5623
  %5625 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5624)  ; FMax(a,b)
  %5626 = fdiv fast float 1.000000e+00, %5625
  %5627 = fmul fast float %5458, %5457
  %5628 = fsub fast float %5459, %5627
  %5629 = fsub fast float %5622, %5457
  %5630 = fmul fast float %5622, %5622
  %5631 = fsub fast float %5630, %5458
  %5632 = fmul fast float %5626, %5628
  %5633 = fmul fast float %5632, %5629
  %5634 = fsub fast float %5631, %5633
  %5635 = fmul fast float %5458, %5458
  %5636 = fsub fast float %5460, %5635
  %5637 = fmul fast float %5628, %5628
  %5638 = fmul fast float %5637, %5626
  %5639 = fsub fast float %5636, %5638
  %5640 = fdiv fast float %5634, %5639
  %5641 = fmul fast float %5640, %5628
  %5642 = fsub fast float %5629, %5641
  %5643 = fmul fast float %5642, %5626
  %5644 = fmul fast float %5643, %5457
  %5645 = fsub fast float 1.000000e+00, %5644
  %5646 = fmul fast float %5640, %5458
  %5647 = fsub fast float %5645, %5646
  %5648 = fmul fast float %5643, %5643
  %5649 = fmul fast float %5640, 4.000000e+00
  %5650 = fmul fast float %5649, %5647
  %5651 = fsub fast float %5648, %5650
  %5652 = call float @dx.op.unary.f32(i32 24, float %5651)  ; Sqrt(value)
  %5653 = fcmp fast oge float %5643, 0.000000e+00
  %5654 = fsub fast float -0.000000e+00, %5652
  %5655 = select i1 %5653, float %5654, float %5652
  %5656 = fsub fast float %5655, %5643
  %5657 = fdiv fast float %5656, %5640
  %5658 = fdiv fast float %5647, %5656
  %5659 = fmul fast float %5657, 5.000000e-01
  %5660 = fmul fast float %5658, 2.000000e+00
  %5661 = select i1 %5653, float %5659, float %5660
  %5662 = select i1 %5653, float %5660, float %5659
  %5663 = call float @dx.op.binary.f32(i32 35, float %5661, float %5662)  ; FMax(a,b)
  %5664 = call float @dx.op.binary.f32(i32 36, float %5661, float %5662)  ; FMin(a,b)
  %5665 = fcmp fast ogt float %5622, %5663
  %5666 = fsub fast float %5622, %5664
  %5667 = fsub fast float %5622, %5663
  %5668 = fsub fast float %5663, %5664
  %5669 = select i1 %5665, float %5667, float %5668
  %5670 = fmul float %5666, %5669
  %5671 = select i1 %5665, float %5664, float %5622
  %5672 = fcmp fast ogt float %5622, %5664
  %5673 = fmul fast float %5671, %5663
  %5674 = fadd fast float %5671, %5663
  %5675 = fmul fast float %5674, %5457
  %5676 = fadd fast float %5673, %5458
  %5677 = fsub fast float %5676, %5675
  %5678 = fdiv fast float %5677, %5670
  %5679 = select i1 %5672, float %5678, float 0.000000e+00
  %5680 = fsub fast float 1.000000e+00, %5679
  %5681 = select i1 %5665, float %5680, float %5679
  %5682 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  %5683 = extractvalue %dx.types.CBufRet.f32 %5442, 3
  %5684 = fmul fast float %5683, %5682
  %5685 = fsub fast float 1.000000e+00, %5684
  br label %5686

; <label>:5686                                    ; preds = %5615, %5327, %5292, %5288, %5254
  %5687 = phi float [ 1.000000e+00, %5254 ], [ %5685, %5615 ], [ 1.000000e+00, %5292 ], [ 1.000000e+00, %5327 ], [ 1.000000e+00, %5288 ]
  %5688 = fcmp fast ogt float %5284, 0.000000e+00
  br i1 %5688, label %5689, label %5695, !dx.controlflow.hints !109

; <label>:5689                                    ; preds = %5686
  %5690 = fadd fast float %5197, %5171
  %5691 = call float @dx.op.binary.f32(i32 35, float %5690, float 0.000000e+00)  ; FMax(a,b)
  %5692 = fadd fast float %5691, 0x3F10000000000000
  %5693 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5186, float %5187, float undef, float undef, i32 0, i32 0, i32 undef, float %5692)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5694 = extractvalue %dx.types.ResRet.f32 %5693, 0
  br label %5695

; <label>:5695                                    ; preds = %5689, %5686
  %5696 = phi float [ %5694, %5689 ], [ 1.000000e+00, %5686 ]
  %5697 = fcmp fast ogt float %5282, 0.000000e+00
  br i1 %5697, label %5698, label %5704, !dx.controlflow.hints !110

; <label>:5698                                    ; preds = %5695
  %5699 = fadd fast float %5227, %5171
  %5700 = call float @dx.op.binary.f32(i32 35, float %5699, float 0.000000e+00)  ; FMax(a,b)
  %5701 = fadd fast float %5700, 0x3F10000000000000
  %5702 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5178, float %5179, float undef, float undef, i32 0, i32 0, i32 undef, float %5701)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5703 = extractvalue %dx.types.ResRet.f32 %5702, 0
  br label %5704

; <label>:5704                                    ; preds = %5698, %5695
  %5705 = phi float [ %5703, %5698 ], [ 1.000000e+00, %5695 ]
  %5706 = fcmp fast ogt float %5281, 0.000000e+00
  br i1 %5706, label %5707, label %5714, !dx.controlflow.hints !111

; <label>:5707                                    ; preds = %5704
  %5708 = extractvalue %dx.types.CBufRet.f32 %5196, 0
  %5709 = fadd fast float %5708, %5171
  %5710 = call float @dx.op.binary.f32(i32 35, float %5709, float 0.000000e+00)  ; FMax(a,b)
  %5711 = fadd fast float %5710, 0x3F10000000000000
  %5712 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5163, float %5167, float undef, float undef, i32 0, i32 0, i32 undef, float %5711)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5713 = extractvalue %dx.types.ResRet.f32 %5712, 0
  br label %5714

; <label>:5714                                    ; preds = %5707, %5704
  %5715 = phi float [ %5713, %5707 ], [ 1.000000e+00, %5704 ]
  %5716 = fsub fast float %5696, %5687
  %5717 = fmul fast float %5716, %5225
  %5718 = fadd fast float %5717, %5687
  %5719 = fsub fast float %5705, %5718
  %5720 = fmul fast float %5719, %5255
  %5721 = fadd fast float %5720, %5718
  %5722 = fsub fast float %5715, %5721
  %5723 = fmul fast float %5722, %5281
  %5724 = fadd fast float %5723, %5721
  %5725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5726 = extractvalue %dx.types.CBufRet.f32 %5725, 2
  %5727 = fcmp fast ogt float %5726, 0.000000e+00
  br i1 %5727, label %5728, label %5768, !dx.controlflow.hints !112

; <label>:5728                                    ; preds = %5714
  %5729 = fcmp fast ugt float %5726, 0.000000e+00
  br i1 %5729, label %5730, label %5765

; <label>:5730                                    ; preds = %5728
  %5731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5732 = extractvalue %dx.types.CBufRet.f32 %5731, 0
  %5733 = extractvalue %dx.types.CBufRet.f32 %5731, 1
  %5734 = extractvalue %dx.types.CBufRet.f32 %5731, 2
  %5735 = extractvalue %dx.types.CBufRet.f32 %5731, 3
  %5736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5737 = extractvalue %dx.types.CBufRet.f32 %5736, 0
  %5738 = extractvalue %dx.types.CBufRet.f32 %5736, 1
  %5739 = extractvalue %dx.types.CBufRet.f32 %5736, 2
  %5740 = extractvalue %dx.types.CBufRet.f32 %5736, 3
  %5741 = extractvalue %dx.types.CBufRet.f32 %5725, 0
  %5742 = extractvalue %dx.types.CBufRet.f32 %5725, 1
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.CBufRet.f32 %5743, 1
  %5746 = extractvalue %dx.types.CBufRet.f32 %5743, 2
  %5747 = fadd fast float %5744, %5140
  %5748 = fadd fast float %5745, %5141
  %5749 = fadd fast float %5746, %5142
  %5750 = fmul fast float %5747, %5732
  %5751 = call float @dx.op.tertiary.f32(i32 46, float %5733, float %5748, float %5750)  ; FMad(a,b,c)
  %5752 = call float @dx.op.tertiary.f32(i32 46, float %5734, float %5749, float %5751)  ; FMad(a,b,c)
  %5753 = fadd fast float %5752, %5735
  %5754 = fmul fast float %5747, %5737
  %5755 = call float @dx.op.tertiary.f32(i32 46, float %5738, float %5748, float %5754)  ; FMad(a,b,c)
  %5756 = call float @dx.op.tertiary.f32(i32 46, float %5739, float %5749, float %5755)  ; FMad(a,b,c)
  %5757 = fadd fast float %5756, %5740
  %5758 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5753, float %5757, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5759 = extractvalue %dx.types.ResRet.f32 %5758, 0
  %5760 = fmul fast float %5759, %5742
  %5761 = fadd fast float %5760, %5741
  %5762 = call float @dx.op.unary.f32(i32 7, float %5761)  ; Saturate(value)
  %5763 = fmul fast float %5762, %5726
  %5764 = fsub fast float 1.000000e+00, %5763
  br label %5765

; <label>:5765                                    ; preds = %5730, %5728
  %5766 = phi float [ %5764, %5730 ], [ 1.000000e+00, %5728 ]
  %5767 = fmul fast float %5766, %5724
  br label %5768

; <label>:5768                                    ; preds = %5765, %5714, %5120
  %5769 = phi float [ 1.000000e+00, %5120 ], [ %5767, %5765 ], [ %5724, %5714 ]
  %5770 = call float @dx.op.binary.f32(i32 36, float %5769, float %5769)  ; FMin(a,b)
  %5771 = call float @dx.op.binary.f32(i32 36, float %5769, float %5770)  ; FMin(a,b)
  %5772 = fcmp fast ogt float %5771, 0.000000e+00
  br i1 %5772, label %5773, label %5933, !dx.controlflow.hints !113

; <label>:5773                                    ; preds = %5768
  %5774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5775 = extractvalue %dx.types.CBufRet.f32 %5774, 0
  %5776 = extractvalue %dx.types.CBufRet.f32 %5774, 1
  %5777 = extractvalue %dx.types.CBufRet.f32 %5774, 2
  %5778 = extractvalue %dx.types.CBufRet.f32 %5774, 3
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.CBufRet.f32 %5779, 2
  %5783 = extractvalue %dx.types.CBufRet.f32 %5779, 3
  %5784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5785 = extractvalue %dx.types.CBufRet.f32 %5784, 0
  %5786 = extractvalue %dx.types.CBufRet.f32 %5784, 1
  %5787 = extractvalue %dx.types.CBufRet.f32 %5784, 2
  %5788 = extractvalue %dx.types.CBufRet.f32 %5784, 3
  %5789 = fmul fast float %5775, %5140
  %5790 = call float @dx.op.tertiary.f32(i32 46, float %5141, float %5776, float %5789)  ; FMad(a,b,c)
  %5791 = call float @dx.op.tertiary.f32(i32 46, float %5142, float %5777, float %5790)  ; FMad(a,b,c)
  %5792 = fadd fast float %5791, %5778
  %5793 = fmul fast float %5780, %5140
  %5794 = call float @dx.op.tertiary.f32(i32 46, float %5141, float %5781, float %5793)  ; FMad(a,b,c)
  %5795 = call float @dx.op.tertiary.f32(i32 46, float %5142, float %5782, float %5794)  ; FMad(a,b,c)
  %5796 = fadd fast float %5795, %5783
  %5797 = fmul fast float %5785, %5140
  %5798 = call float @dx.op.tertiary.f32(i32 46, float %5141, float %5786, float %5797)  ; FMad(a,b,c)
  %5799 = call float @dx.op.tertiary.f32(i32 46, float %5142, float %5787, float %5798)  ; FMad(a,b,c)
  %5800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5801 = extractvalue %dx.types.CBufRet.f32 %5800, 0
  %5802 = extractvalue %dx.types.CBufRet.f32 %5800, 1
  %5803 = extractvalue %dx.types.CBufRet.f32 %5800, 3
  %5804 = fmul fast float %5803, %5792
  %5805 = fmul fast float %5803, %5796
  %5806 = fadd fast float %5804, %5801
  %5807 = fadd fast float %5805, %5802
  %5808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5809 = extractvalue %dx.types.CBufRet.f32 %5808, 0
  %5810 = extractvalue %dx.types.CBufRet.f32 %5808, 1
  %5811 = fsub fast float %5806, %5809
  %5812 = fsub fast float %5807, %5810
  %5813 = fcmp fast olt float %5811, 0.000000e+00
  %5814 = fcmp fast olt float %5812, 0.000000e+00
  %5815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.f32 %5815, 0
  %5817 = extractvalue %dx.types.CBufRet.f32 %5815, 1
  %5818 = extractvalue %dx.types.CBufRet.f32 %5815, 2
  %5819 = extractvalue %dx.types.CBufRet.f32 %5815, 3
  %5820 = select i1 %5813, float %5816, float %5818
  %5821 = select i1 %5814, float %5817, float %5819
  %5822 = fmul fast float %5820, %5811
  %5823 = fmul fast float %5821, %5812
  %5824 = call float @dx.op.unary.f32(i32 6, float %5822)  ; FAbs(value)
  %5825 = call float @dx.op.unary.f32(i32 6, float %5823)  ; FAbs(value)
  %5826 = extractvalue %dx.types.CBufRet.f32 %5135, 0
  %5827 = call float @dx.op.binary.f32(i32 35, float %5824, float %5825)  ; FMax(a,b)
  %5828 = fsub fast float %5826, %5827
  %5829 = call float @dx.op.unary.f32(i32 7, float %5828)  ; Saturate(value)
  %5830 = fcmp fast ogt float %5829, 0.000000e+00
  br i1 %5830, label %5831, label %5872, !dx.controlflow.hints !114

; <label>:5831                                    ; preds = %5773
  %5832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %5806, float %5807, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5833 = extractvalue %dx.types.ResRet.f32 %5832, 1
  %5834 = fcmp fast ogt float %5833, 0.000000e+00
  br i1 %5834, label %5835, label %5867

; <label>:5835                                    ; preds = %5831
  %5836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %5806, float %5807, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5837 = extractvalue %dx.types.ResRet.f32 %5836, 0
  %5838 = extractvalue %dx.types.ResRet.f32 %5836, 1
  %5839 = extractvalue %dx.types.ResRet.f32 %5836, 2
  %5840 = extractvalue %dx.types.ResRet.f32 %5836, 3
  %5841 = fsub fast float 1.000000e+00, %5788
  %5842 = fsub fast float %5841, %5799
  %5843 = fmul fast float %5842, 0x400921FB60000000
  %5844 = fadd fast float %5843, 0x3FF921FB60000000
  %5845 = call float @dx.op.unary.f32(i32 13, float %5844)  ; Sin(value)
  %5846 = fadd fast float %5845, -1.000000e+00
  %5847 = fmul fast float %5846, 0x3FD45F3060000000
  %5848 = fmul fast float %5842, 0x401921FB60000000
  %5849 = fadd fast float %5848, 0x400921FB60000000
  %5850 = call float @dx.op.unary.f32(i32 13, float %5849)  ; Sin(value)
  %5851 = fadd fast float %5850, 0x3E7777A5C0000000
  %5852 = fmul fast float %5851, 0x3FC45F3060000000
  %5853 = fmul fast float %5842, 0x4022D97C80000000
  %5854 = fadd fast float %5853, 0x4012D97C80000000
  %5855 = call float @dx.op.unary.f32(i32 13, float %5854)  ; Sin(value)
  %5856 = fadd fast float %5855, 1.000000e+00
  %5857 = fmul fast float %5856, 0x3FBB2995E0000000
  %5858 = fmul fast float %5842, 0x402921FB60000000
  %5859 = fadd fast float %5858, 0x401921FB60000000
  %5860 = call float @dx.op.unary.f32(i32 13, float %5859)  ; Sin(value)
  %5861 = fadd fast float %5860, 0xBE8777A5C0000000
  %5862 = fmul fast float %5861, 0x3FB45F3060000000
  %5863 = call float @dx.op.dot4.f32(i32 56, float %5837, float %5838, float %5839, float %5840, float %5847, float %5852, float %5857, float %5862)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5864 = fmul fast float %5863, 0xBFF7154760000000
  %5865 = call float @dx.op.unary.f32(i32 21, float %5864)  ; Exp(value)
  %5866 = call float @dx.op.unary.f32(i32 7, float %5865)  ; Saturate(value)
  br label %5867

; <label>:5867                                    ; preds = %5835, %5831
  %5868 = phi float [ %5866, %5835 ], [ 1.000000e+00, %5831 ]
  %5869 = fadd fast float %5868, -1.000000e+00
  %5870 = fmul fast float %5869, %5829
  %5871 = fadd fast float %5870, 1.000000e+00
  br label %5872

; <label>:5872                                    ; preds = %5867, %5773
  %5873 = phi float [ %5871, %5867 ], [ 1.000000e+00, %5773 ]
  %5874 = fmul fast float %5873, %5769
  %5875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5876 = extractvalue %dx.types.CBufRet.f32 %5875, 0
  %5877 = extractvalue %dx.types.CBufRet.f32 %5875, 1
  %5878 = extractvalue %dx.types.CBufRet.f32 %5875, 2
  %5879 = fadd fast float %5876, %158
  %5880 = fadd fast float %5877, %159
  %5881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5882 = extractvalue %dx.types.CBufRet.f32 %5881, 1
  %5883 = fsub fast float -0.000000e+00, %5879
  %5884 = fsub fast float -0.000000e+00, %5880
  %5885 = fsub fast float %4904, %5878
  %5886 = fadd fast float %5885, %5882
  %5887 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5883, float %5884, float %5886)  ; Dot3(ax,ay,az,bx,by,bz)
  %5888 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5121, float %5122, float %5123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5889 = fdiv fast float 1.000000e+00, %5888
  %5890 = fmul fast float %5889, %5887
  %5891 = fmul fast float %5121, %5890
  %5892 = fmul fast float %5122, %5890
  %5893 = fadd fast float %5891, %5879
  %5894 = fadd fast float %5892, %5880
  %5895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5896 = extractvalue %dx.types.CBufRet.f32 %5895, 0
  %5897 = extractvalue %dx.types.CBufRet.f32 %5895, 1
  %5898 = fsub fast float %5893, %5896
  %5899 = fsub fast float %5894, %5897
  %5900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.f32 %5900, 2
  %5902 = extractvalue %dx.types.CBufRet.f32 %5900, 3
  %5903 = fmul fast float %5898, %5901
  %5904 = fmul fast float %5899, %5902
  %5905 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5906 = extractvalue %dx.types.CBufRet.i32 %5905, 3
  %5907 = icmp eq i32 %5906, 0
  br i1 %5907, label %5913, label %5908

; <label>:5908                                    ; preds = %5872
  %5909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %5903, float %5904, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5910 = extractvalue %dx.types.ResRet.f32 %5909, 0
  %5911 = extractvalue %dx.types.ResRet.f32 %5909, 1
  %5912 = extractvalue %dx.types.ResRet.f32 %5909, 2
  br label %5918

; <label>:5913                                    ; preds = %5872
  %5914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %5903, float %5904, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5915 = extractvalue %dx.types.ResRet.f32 %5914, 0
  %5916 = extractvalue %dx.types.ResRet.f32 %5914, 1
  %5917 = extractvalue %dx.types.ResRet.f32 %5914, 2
  br label %5918

; <label>:5918                                    ; preds = %5913, %5908
  %5919 = phi float [ %5910, %5908 ], [ %5915, %5913 ]
  %5920 = phi float [ %5911, %5908 ], [ %5916, %5913 ]
  %5921 = phi float [ %5912, %5908 ], [ %5917, %5913 ]
  %5922 = extractvalue %dx.types.CBufRet.f32 %5881, 2
  %5923 = fmul fast float %5922, %5919
  %5924 = extractvalue %dx.types.CBufRet.f32 %5881, 0
  %5925 = fsub fast float %5890, %5924
  %5926 = fsub fast float %5925, %5923
  %5927 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5926)  ; FMax(a,b)
  %5928 = fmul fast float %5927, %5920
  %5929 = call float @dx.op.binary.f32(i32 36, float %5921, float %5928)  ; FMin(a,b)
  %5930 = fmul fast float %5929, 0xBFF7154760000000
  %5931 = call float @dx.op.unary.f32(i32 21, float %5930)  ; Exp(value)
  %5932 = fmul fast float %5874, %5931
  br label %5933

; <label>:5933                                    ; preds = %5918, %5768
  %5934 = phi float [ %5932, %5918 ], [ %5769, %5768 ]
  %5935 = call float @dx.op.binary.f32(i32 36, float %5934, float %5934)  ; FMin(a,b)
  %5936 = call float @dx.op.binary.f32(i32 36, float %5934, float %5935)  ; FMin(a,b)
  %5937 = fcmp fast ogt float %5936, 0.000000e+00
  br i1 %5937, label %5938, label %6189, !dx.controlflow.hints !115

; <label>:5938                                    ; preds = %5933
  %5939 = fmul fast float %5934, %5132
  %5940 = fmul fast float %5934, %5133
  %5941 = fmul fast float %5934, %5134
  %5942 = fsub fast float %160, %4710
  %5943 = fcmp fast ogt float %5942, 0.000000e+00
  %5944 = fmul fast float %5121, 5.120000e+02
  %5945 = fmul fast float %5122, 5.120000e+02
  %5946 = fmul fast float %5123, 5.120000e+02
  %5947 = fadd fast float %5946, %160
  %5948 = fsub fast float %4710, %5947
  %5949 = fmul fast float %5948, 2.000000e+00
  %5950 = fadd fast float %5949, %5947
  %5951 = select i1 %5943, float %5950, float %5947
  %5952 = fsub fast float %5951, %160
  %5953 = call float @dx.op.dot3.f32(i32 55, float %5944, float %5945, float %5952, float %5944, float %5945, float %5952)  ; Dot3(ax,ay,az,bx,by,bz)
  %5954 = call float @dx.op.unary.f32(i32 25, float %5953)  ; Rsqrt(value)
  %5955 = fmul fast float %5954, %5944
  %5956 = fmul fast float %5954, %5945
  %5957 = fmul fast float %5954, %5952
  %5958 = fsub fast float %4710, %160
  %5959 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5958)  ; Dot3(ax,ay,az,bx,by,bz)
  %5960 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5955, float %5956, float %5957)  ; Dot3(ax,ay,az,bx,by,bz)
  %5961 = fdiv fast float 1.000000e+00, %5960
  %5962 = fmul fast float %5961, %5959
  %5963 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5942, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5964 = fcmp fast ogt float %5963, 0.000000e+00
  %5965 = fcmp fast olt float %5963, 0.000000e+00
  %5966 = zext i1 %5964 to i32
  %5967 = zext i1 %5965 to i32
  %5968 = sub nsw i32 %5966, %5967
  %5969 = sitofp i32 %5968 to float
  %5970 = fsub fast float %5951, %4710
  %5971 = call float @dx.op.dot3.f32(i32 55, float %5944, float %5945, float %5970, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5972 = fcmp fast ogt float %5971, 0.000000e+00
  %5973 = fcmp fast olt float %5971, 0.000000e+00
  %5974 = zext i1 %5972 to i32
  %5975 = zext i1 %5973 to i32
  %5976 = sub nsw i32 %5974, %5975
  %5977 = sitofp i32 %5976 to float
  %5978 = fcmp fast une float %5969, %5977
  br i1 %5978, label %5979, label %5989

; <label>:5979                                    ; preds = %5938
  %5980 = fmul fast float %5962, %5957
  %5981 = fmul fast float %5962, %5956
  %5982 = fmul fast float %5962, %5955
  %5983 = fmul fast float %5982, %5982
  %5984 = fmul fast float %5981, %5981
  %5985 = fadd fast float %5983, %5984
  %5986 = fmul fast float %5980, %5980
  %5987 = fadd fast float %5985, %5986
  %5988 = call float @dx.op.unary.f32(i32 24, float %5987)  ; Sqrt(value)
  br label %5999

; <label>:5989                                    ; preds = %5938
  %5990 = icmp slt i32 %5968, 0
  br i1 %5990, label %5991, label %5999

; <label>:5991                                    ; preds = %5989
  %5992 = fsub fast float %160, %5951
  %5993 = fmul fast float %5944, %5944
  %5994 = fmul fast float %5945, %5945
  %5995 = fadd fast float %5993, %5994
  %5996 = fmul fast float %5992, %5992
  %5997 = fadd fast float %5995, %5996
  %5998 = call float @dx.op.unary.f32(i32 24, float %5997)  ; Sqrt(value)
  br label %5999

; <label>:5999                                    ; preds = %5991, %5989, %5979
  %6000 = phi float [ %5988, %5979 ], [ %5998, %5991 ], [ 0.000000e+00, %5989 ]
  %6001 = fsub fast float -0.000000e+00, %6000
  %6002 = select i1 %5943, float -0.000000e+00, float %6001
  %6003 = fmul fast float %4711, 0x3FF7154760000000
  %6004 = fmul fast float %6003, %6002
  %6005 = fmul fast float %4712, 0x3FF7154760000000
  %6006 = fmul fast float %6005, %6002
  %6007 = fmul fast float %4713, 0x3FF7154760000000
  %6008 = fmul fast float %6007, %6002
  %6009 = call float @dx.op.unary.f32(i32 21, float %6004)  ; Exp(value)
  %6010 = call float @dx.op.unary.f32(i32 21, float %6006)  ; Exp(value)
  %6011 = call float @dx.op.unary.f32(i32 21, float %6008)  ; Exp(value)
  %6012 = call float @dx.op.unary.f32(i32 7, float %6009)  ; Saturate(value)
  %6013 = call float @dx.op.unary.f32(i32 7, float %6010)  ; Saturate(value)
  %6014 = call float @dx.op.unary.f32(i32 7, float %6011)  ; Saturate(value)
  %6015 = fmul fast float %5939, %6012
  %6016 = fmul fast float %5940, %6013
  %6017 = fmul fast float %5941, %6014
  %6018 = fsub fast float %5121, %178
  %6019 = fsub fast float %5122, %179
  %6020 = fsub fast float %5123, %180
  %6021 = call float @dx.op.dot3.f32(i32 55, float %6018, float %6019, float %6020, float %6018, float %6019, float %6020)  ; Dot3(ax,ay,az,bx,by,bz)
  %6022 = call float @dx.op.unary.f32(i32 25, float %6021)  ; Rsqrt(value)
  %6023 = fmul fast float %6022, %6018
  %6024 = fmul fast float %6022, %6019
  %6025 = fmul fast float %6022, %6020
  %6026 = call float @dx.op.dot3.f32(i32 55, float %5121, float %5122, float %5123, float %4896, float %4897, float %4898)  ; Dot3(ax,ay,az,bx,by,bz)
  %6027 = call float @dx.op.dot3.f32(i32 55, float %4727, float %4728, float %4729, float %6023, float %6024, float %6025)  ; Dot3(ax,ay,az,bx,by,bz)
  %6028 = call float @dx.op.unary.f32(i32 7, float %6026)  ; Saturate(value)
  %6029 = fmul fast float %6028, %6028
  %6030 = fmul fast float %6029, %4920
  %6031 = call float @dx.op.unary.f32(i32 7, float %6030)  ; Saturate(value)
  %6032 = fmul fast float %6031, %6028
  %6033 = call float @dx.op.dot3.f32(i32 55, float %4896, float %4897, float %4898, float %6023, float %6024, float %6025)  ; Dot3(ax,ay,az,bx,by,bz)
  %6034 = fmul fast float %6033, %6033
  %6035 = call float @dx.op.unary.f32(i32 6, float %6026)  ; FAbs(value)
  %6036 = fsub fast float 1.000000e+00, %4902
  %6037 = call float @dx.op.binary.f32(i32 35, float %6036, float 0x3F847AE140000000)  ; FMax(a,b)
  %6038 = fmul fast float %6037, %6037
  %6039 = fmul fast float %6038, %6038
  %6040 = fsub fast float 1.000000e+00, %6039
  %6041 = fmul fast float %4907, %4907
  %6042 = fmul fast float %6041, %6040
  %6043 = fadd fast float %6042, %6039
  %6044 = bitcast float %6043 to i32
  %6045 = ashr i32 %6044, 1
  %6046 = add nsw i32 %6045, 532487669
  %6047 = bitcast i32 %6046 to float
  %6048 = fadd fast float %6047, %4907
  %6049 = fmul fast float %6039, %6034
  %6050 = fsub fast float 1.000000e+00, %6034
  %6051 = fadd fast float %6050, %6049
  %6052 = fmul fast float %6035, %6035
  %6053 = fmul fast float %6052, %6040
  %6054 = fadd fast float %6053, %6039
  %6055 = bitcast float %6054 to i32
  %6056 = ashr i32 %6055, 1
  %6057 = add nsw i32 %6056, 532487669
  %6058 = bitcast i32 %6057 to float
  %6059 = fadd fast float %6058, %6035
  %6060 = fmul fast float %6051, %6051
  %6061 = fmul fast float %6060, %6048
  %6062 = fmul fast float %6061, %6059
  %6063 = fdiv fast float 0x3FF0A00000000000, %6062
  %6064 = fmul fast float %6063, %6039
  %6065 = call float @dx.op.unary.f32(i32 6, float %6027)  ; FAbs(value)
  %6066 = fsub fast float 1.000000e+00, %6065
  %6067 = bitcast float %6066 to i32
  %6068 = sitofp i32 %6067 to float
  %6069 = fmul fast float %6068, 5.000000e+00
  %6070 = fadd fast float %6069, 0xC1EFBF8940000000
  %6071 = fptosi float %6070 to i32
  %6072 = bitcast i32 %6071 to float
  %6073 = fsub fast float 1.000000e+00, %4893
  %6074 = fsub fast float 1.000000e+00, %4894
  %6075 = fsub fast float 1.000000e+00, %4905
  %6076 = fmul fast float %6072, %6073
  %6077 = fmul fast float %6072, %6074
  %6078 = fmul fast float %6072, %6075
  %6079 = fadd fast float %6076, %4893
  %6080 = fadd fast float %6077, %4894
  %6081 = fadd fast float %6078, %4905
  br i1 %5032, label %6082, label %6105

; <label>:6082                                    ; preds = %5999
  %6083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4286, float %6065, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6084 = extractvalue %dx.types.ResRet.f32 %6083, 0
  %6085 = extractvalue %dx.types.ResRet.f32 %6083, 1
  %6086 = extractvalue %dx.types.ResRet.f32 %6083, 2
  %6087 = fadd fast float %6084, -5.000000e-01
  %6088 = fadd fast float %6085, -5.000000e-01
  %6089 = fadd fast float %6086, -5.000000e-01
  %6090 = fmul fast float %4893, 4.000000e+00
  %6091 = fmul fast float %6090, %6073
  %6092 = fmul fast float %6091, %6087
  %6093 = fmul fast float %4894, 4.000000e+00
  %6094 = fmul fast float %6093, %6074
  %6095 = fmul fast float %6094, %6088
  %6096 = fmul fast float %4905, 4.000000e+00
  %6097 = fmul fast float %6096, %6075
  %6098 = fmul fast float %6097, %6089
  %6099 = fadd fast float %6092, %6079
  %6100 = fadd fast float %6095, %6080
  %6101 = fadd fast float %6098, %6081
  %6102 = call float @dx.op.unary.f32(i32 7, float %6099)  ; Saturate(value)
  %6103 = call float @dx.op.unary.f32(i32 7, float %6100)  ; Saturate(value)
  %6104 = call float @dx.op.unary.f32(i32 7, float %6101)  ; Saturate(value)
  br label %6105

; <label>:6105                                    ; preds = %6082, %5999
  %6106 = phi float [ %6102, %6082 ], [ %6079, %5999 ]
  %6107 = phi float [ %6103, %6082 ], [ %6080, %5999 ]
  %6108 = phi float [ %6104, %6082 ], [ %6081, %5999 ]
  %6109 = fmul fast float %6026, 9.843750e-01
  %6110 = fadd fast float %6109, 7.812500e-03
  %6111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6110, float %5022, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6112 = extractvalue %dx.types.ResRet.f32 %6111, 2
  %6113 = extractvalue %dx.types.ResRet.f32 %6111, 3
  %6114 = fmul fast float %6112, %4893
  %6115 = fmul fast float %6112, %4894
  %6116 = fmul fast float %6112, %4905
  %6117 = fadd fast float %6114, %6113
  %6118 = fadd fast float %6115, %6113
  %6119 = fadd fast float %6116, %6113
  br i1 %5032, label %6120, label %6143

; <label>:6120                                    ; preds = %6105
  %6121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4286, float %6026, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6122 = extractvalue %dx.types.ResRet.f32 %6121, 0
  %6123 = extractvalue %dx.types.ResRet.f32 %6121, 1
  %6124 = extractvalue %dx.types.ResRet.f32 %6121, 2
  %6125 = fadd fast float %6122, -5.000000e-01
  %6126 = fadd fast float %6123, -5.000000e-01
  %6127 = fadd fast float %6124, -5.000000e-01
  %6128 = fmul fast float %4893, 4.000000e+00
  %6129 = fmul fast float %6128, %6073
  %6130 = fmul fast float %6129, %6125
  %6131 = fmul fast float %4894, 4.000000e+00
  %6132 = fmul fast float %6131, %6074
  %6133 = fmul fast float %6132, %6126
  %6134 = fmul fast float %4905, 4.000000e+00
  %6135 = fmul fast float %6134, %6075
  %6136 = fmul fast float %6135, %6127
  %6137 = fadd fast float %6130, %6117
  %6138 = fadd fast float %6133, %6118
  %6139 = fadd fast float %6136, %6119
  %6140 = call float @dx.op.unary.f32(i32 7, float %6137)  ; Saturate(value)
  %6141 = call float @dx.op.unary.f32(i32 7, float %6138)  ; Saturate(value)
  %6142 = call float @dx.op.unary.f32(i32 7, float %6139)  ; Saturate(value)
  br label %6143

; <label>:6143                                    ; preds = %6120, %6105
  %6144 = phi float [ %6140, %6120 ], [ %6117, %6105 ]
  %6145 = phi float [ %6141, %6120 ], [ %6118, %6105 ]
  %6146 = phi float [ %6142, %6120 ], [ %6119, %6105 ]
  %6147 = call float @dx.op.binary.f32(i32 35, float %6145, float %6146)  ; FMax(a,b)
  %6148 = call float @dx.op.binary.f32(i32 35, float %6144, float %6147)  ; FMax(a,b)
  %6149 = fsub fast float 1.000000e+00, %6148
  %6150 = fmul fast float %6106, %6064
  %6151 = fmul fast float %6107, %6064
  %6152 = fmul fast float %6108, %6064
  %6153 = fsub fast float 1.000000e+00, %6027
  %6154 = bitcast float %6153 to i32
  %6155 = sitofp i32 %6154 to float
  %6156 = fmul fast float %6155, 5.000000e+00
  %6157 = fadd fast float %6156, 0xC1EFBF8940000000
  %6158 = fptosi float %6157 to i32
  %6159 = bitcast i32 %6158 to float
  %6160 = fmul fast float %6159, %4287
  %6161 = fmul fast float %6149, %6160
  %6162 = fmul fast float %6161, %5082
  %6163 = fmul fast float %6161, %5083
  %6164 = fmul fast float %6161, %5084
  %6165 = fadd fast float %6162, %6150
  %6166 = fadd fast float %6163, %6151
  %6167 = fadd fast float %6164, %6152
  %6168 = fmul fast float %6032, %6015
  %6169 = fmul fast float %6168, %6149
  %6170 = fmul fast float %6032, %6016
  %6171 = fmul fast float %6170, %6149
  %6172 = fmul fast float %6032, %6017
  %6173 = fmul fast float %6172, %6149
  %6174 = fmul fast float %6168, %6165
  %6175 = fmul fast float %6170, %6166
  %6176 = fmul fast float %6172, %6167
  %6177 = fadd fast float %6169, %5066
  %6178 = fmul fast float %6177, %4313
  %6179 = fadd fast float %6171, %5067
  %6180 = fmul fast float %6179, %4313
  %6181 = fadd fast float %6173, %5068
  %6182 = fmul fast float %6181, %4313
  %6183 = fadd fast float %6174, %5109
  %6184 = fmul fast float %6183, %4313
  %6185 = fadd fast float %6175, %5112
  %6186 = fmul fast float %6185, %4313
  %6187 = fadd fast float %6176, %5115
  %6188 = fmul fast float %6187, %4313
  br label %6189

; <label>:6189                                    ; preds = %6143, %5933, %5059
  %6190 = phi float [ %5110, %5059 ], [ %5110, %5933 ], [ %6184, %6143 ]
  %6191 = phi float [ %5113, %5059 ], [ %5113, %5933 ], [ %6186, %6143 ]
  %6192 = phi float [ %5116, %5059 ], [ %5116, %5933 ], [ %6188, %6143 ]
  %6193 = phi float [ %5105, %5059 ], [ %5105, %5933 ], [ %6178, %6143 ]
  %6194 = phi float [ %5106, %5059 ], [ %5106, %5933 ], [ %6180, %6143 ]
  %6195 = phi float [ %5107, %5059 ], [ %5107, %5933 ], [ %6182, %6143 ]
  %6196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6197 = extractvalue %dx.types.CBufRet.i32 %6196, 0
  %6198 = icmp eq i32 %6197, 0
  br i1 %6198, label %6819, label %6199

; <label>:6199                                    ; preds = %6189
  %6200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6201 = extractvalue %dx.types.CBufRet.f32 %6200, 2
  %6202 = extractvalue %dx.types.CBufRet.f32 %6200, 3
  %6203 = fmul fast float %6201, %95
  %6204 = fmul fast float %6202, %96
  %6205 = fptoui float %6203 to i32
  %6206 = fptoui float %6204 to i32
  %6207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6208 = extractvalue %dx.types.CBufRet.f32 %6207, 0
  %6209 = extractvalue %dx.types.CBufRet.f32 %6207, 2
  %6210 = extractvalue %dx.types.CBufRet.f32 %6207, 3
  %6211 = fadd fast float %86, -4.000000e+00
  %6212 = call float @dx.op.binary.f32(i32 35, float %6211, float 0.000000e+00)  ; FMax(a,b)
  %6213 = fadd fast float %6212, %6208
  %6214 = fmul fast float %6213, %6209
  %6215 = call float @dx.op.unary.f32(i32 23, float %6214)  ; Log(value)
  %6216 = fmul fast float %6215, %6210
  %6217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6218 = extractvalue %dx.types.CBufRet.f32 %6217, 2
  %6219 = fmul fast float %6216, %6218
  %6220 = call float @dx.op.unary.f32(i32 7, float %6219)  ; Saturate(value)
  %6221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6222 = extractvalue %dx.types.CBufRet.i32 %6221, 1
  %6223 = add i32 %6222, -1
  %6224 = uitofp i32 %6222 to float
  %6225 = fmul fast float %6224, %6220
  %6226 = fptoui float %6225 to i32
  %6227 = call i32 @dx.op.binary.i32(i32 40, i32 %6226, i32 %6223)  ; UMin(a,b)
  %6228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6229 = extractvalue %dx.types.CBufRet.i32 %6228, 2
  %6230 = extractvalue %dx.types.CBufRet.i32 %6228, 3
  %6231 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6206, i32 %6229, i32 %6205)  ; UMad(a,b,c)
  %6232 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6227, i32 %6230, i32 %6231)  ; UMad(a,b,c)
  %6233 = add nsw i32 %6197, -1
  %6234 = call i32 @dx.op.binary.i32(i32 37, i32 %6233, i32 0)  ; IMax(a,b)
  %6235 = call float @dx.op.binary.f32(i32 35, float %86, float 0.000000e+00)  ; FMax(a,b)
  %6236 = fptoui float %6235 to i32
  %6237 = lshr i32 %6236, 5
  %6238 = call i32 @dx.op.binary.i32(i32 40, i32 %6237, i32 8191)  ; UMin(a,b)
  %6239 = shl i32 %6238, 2
  %6240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6239, i32 undef)  ; BufferLoad(srv,index,wot)
  %6241 = extractvalue %dx.types.ResRet.i32 %6240, 0
  %6242 = lshr i32 %6241, 16
  %6243 = and i32 %6241, 65535
  %6244 = lshr i32 %6241, 21
  %6245 = lshr i32 %6243, 5
  %6246 = call i32 @dx.op.binary.i32(i32 40, i32 %6245, i32 %6234)  ; UMin(a,b)
  %6247 = icmp ugt i32 %6244, %6246
  br i1 %6247, label %6819, label %6248

; <label>:6248                                    ; preds = %6199
  br label %6249

; <label>:6249                                    ; preds = %6809, %6248
  %6250 = phi i32 [ %6816, %6809 ], [ %6244, %6248 ]
  %6251 = phi float [ %6810, %6809 ], [ %6190, %6248 ]
  %6252 = phi float [ %6811, %6809 ], [ %6191, %6248 ]
  %6253 = phi float [ %6812, %6809 ], [ %6192, %6248 ]
  %6254 = phi float [ %6813, %6809 ], [ %6193, %6248 ]
  %6255 = phi float [ %6814, %6809 ], [ %6194, %6248 ]
  %6256 = phi float [ %6815, %6809 ], [ %6195, %6248 ]
  %6257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6258 = extractvalue %dx.types.CBufRet.i32 %6257, 0
  %6259 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6232, i32 %6258, i32 %6250)  ; UMad(a,b,c)
  %6260 = shl i32 %6259, 2
  %6261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6260, i32 undef)  ; BufferLoad(srv,index,wot)
  %6262 = extractvalue %dx.types.ResRet.i32 %6261, 0
  %6263 = shl i32 %6250, 5
  %6264 = sub nsw i32 %6242, %6263
  %6265 = call i32 @dx.op.binary.i32(i32 37, i32 %6264, i32 0)  ; IMax(a,b)
  %6266 = call i32 @dx.op.binary.i32(i32 38, i32 %6265, i32 31)  ; IMin(a,b)
  %6267 = sub nsw i32 1, %6242
  %6268 = add nsw i32 %6267, %6243
  %6269 = call i32 @dx.op.binary.i32(i32 37, i32 %6268, i32 0)  ; IMax(a,b)
  %6270 = call i32 @dx.op.binary.i32(i32 38, i32 %6269, i32 32)  ; IMin(a,b)
  %6271 = and i32 %6270, 31
  %6272 = shl i32 -1, %6271
  %6273 = xor i32 %6272, -1
  %6274 = and i32 %6266, 31
  %6275 = shl i32 %6273, %6274
  %6276 = icmp eq i32 %6270, 32
  %6277 = select i1 %6276, i32 -1, i32 %6275
  %6278 = and i32 %6277, %6262
  %6279 = icmp eq i32 %6278, 0
  br i1 %6279, label %6809, label %6280

; <label>:6280                                    ; preds = %6249
  br label %6281

; <label>:6281                                    ; preds = %6415, %6280
  %6282 = phi i32 [ %6293, %6415 ], [ %6278, %6280 ]
  %6283 = phi float [ %6416, %6415 ], [ %6251, %6280 ]
  %6284 = phi float [ %6417, %6415 ], [ %6252, %6280 ]
  %6285 = phi float [ %6418, %6415 ], [ %6253, %6280 ]
  %6286 = phi float [ %6419, %6415 ], [ %6254, %6280 ]
  %6287 = phi float [ %6420, %6415 ], [ %6255, %6280 ]
  %6288 = phi float [ %6421, %6415 ], [ %6256, %6280 ]
  %6289 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6282)  ; FirstbitLo(value)
  %6290 = add i32 %6289, %6263
  %6291 = and i32 %6289, 31
  %6292 = shl i32 1, %6291
  %6293 = xor i32 %6292, %6282
  %6294 = mul i32 %6290, 112
  %6295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6294, i32 undef)  ; BufferLoad(srv,index,wot)
  %6296 = extractvalue %dx.types.ResRet.f32 %6295, 0
  %6297 = extractvalue %dx.types.ResRet.f32 %6295, 1
  %6298 = extractvalue %dx.types.ResRet.f32 %6295, 2
  %6299 = or i32 %6294, 12
  %6300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6299, i32 undef)  ; BufferLoad(srv,index,wot)
  %6301 = extractvalue %dx.types.ResRet.f32 %6300, 0
  %6302 = add i32 %6294, 16
  %6303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6302, i32 undef)  ; BufferLoad(srv,index,wot)
  %6304 = extractvalue %dx.types.ResRet.f32 %6303, 0
  %6305 = extractvalue %dx.types.ResRet.f32 %6303, 1
  %6306 = extractvalue %dx.types.ResRet.f32 %6303, 2
  %6307 = add i32 %6294, 28
  %6308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6307, i32 undef)  ; BufferLoad(srv,index,wot)
  %6309 = extractvalue %dx.types.ResRet.i32 %6308, 0
  %6310 = add i32 %6294, 44
  %6311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6310, i32 undef)  ; BufferLoad(srv,index,wot)
  %6312 = extractvalue %dx.types.ResRet.f32 %6311, 0
  %6313 = add i32 %6294, 48
  %6314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6313, i32 undef)  ; BufferLoad(srv,index,wot)
  %6315 = extractvalue %dx.types.ResRet.f32 %6314, 0
  %6316 = extractvalue %dx.types.ResRet.f32 %6314, 1
  %6317 = extractvalue %dx.types.ResRet.f32 %6314, 2
  %6318 = extractvalue %dx.types.ResRet.f32 %6314, 3
  %6319 = add i32 %6294, 64
  %6320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6319, i32 undef)  ; BufferLoad(srv,index,wot)
  %6321 = extractvalue %dx.types.ResRet.f32 %6320, 0
  %6322 = extractvalue %dx.types.ResRet.f32 %6320, 1
  %6323 = extractvalue %dx.types.ResRet.f32 %6320, 2
  %6324 = extractvalue %dx.types.ResRet.f32 %6320, 3
  %6325 = add i32 %6294, 80
  %6326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6325, i32 undef)  ; BufferLoad(srv,index,wot)
  %6327 = extractvalue %dx.types.ResRet.f32 %6326, 1
  %6328 = extractvalue %dx.types.ResRet.f32 %6326, 2
  %6329 = add i32 %6294, 92
  %6330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6329, i32 undef)  ; BufferLoad(srv,index,wot)
  %6331 = extractvalue %dx.types.ResRet.i32 %6330, 0
  %6332 = call float @dx.op.dot3.f32(i32 55, float %6296, float %6297, float %6298, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6333 = select i1 %252, float %6327, float %6296
  %6334 = select i1 %252, float %6332, float %6297
  %6335 = select i1 %252, float %6328, float %6298
  %6336 = and i32 %6331, 65535
  %6337 = uitofp i32 %6336 to float
  %6338 = lshr i32 %6331, 16
  %6339 = uitofp i32 %6338 to float
  %6340 = and i32 %6309, 65535
  %6341 = and i32 %6309, 50331648
  %6342 = icmp eq i32 %6341, 33554432
  %6343 = fsub fast float %6315, %158
  %6344 = fsub fast float %6316, %159
  %6345 = fsub fast float %6317, %160
  %6346 = call float @dx.op.dot3.f32(i32 55, float %6343, float %6344, float %6345, float %6343, float %6344, float %6345)  ; Dot3(ax,ay,az,bx,by,bz)
  %6347 = call float @dx.op.unary.f32(i32 24, float %6346)  ; Sqrt(value)
  %6348 = fdiv fast float 1.000000e+00, %6347
  %6349 = fmul fast float %6348, %6343
  %6350 = fmul fast float %6348, %6344
  %6351 = fmul fast float %6348, %6345
  %6352 = fadd fast float %6347, %6301
  %6353 = fdiv fast float 1.000000e+00, %6352
  %6354 = fmul float %6312, %6353
  %6355 = fmul float %6354, %6354
  %6356 = call float @dx.op.unary.f32(i32 7, float %6355)  ; Saturate(value)
  br i1 %6342, label %6357, label %6378

; <label>:6357                                    ; preds = %6281
  %6358 = fmul fast float %6323, %6304
  %6359 = fmul fast float %6323, %6305
  %6360 = fmul fast float %6323, %6306
  %6361 = fadd fast float %6343, %6358
  %6362 = fadd fast float %6344, %6359
  %6363 = fadd fast float %6345, %6360
  %6364 = call float @dx.op.dot3.f32(i32 55, float %6361, float %6362, float %6363, float %6361, float %6362, float %6363)  ; Dot3(ax,ay,az,bx,by,bz)
  %6365 = call float @dx.op.unary.f32(i32 25, float %6364)  ; Rsqrt(value)
  %6366 = fmul fast float %6365, %6361
  %6367 = fmul fast float %6365, %6362
  %6368 = fmul fast float %6365, %6363
  %6369 = fsub fast float %158, %6315
  %6370 = fsub fast float %159, %6316
  %6371 = fsub fast float %160, %6317
  %6372 = fsub fast float -0.000000e+00, %6369
  %6373 = fsub fast float -0.000000e+00, %6370
  %6374 = fsub fast float -0.000000e+00, %6371
  %6375 = call float @dx.op.dot3.f32(i32 55, float %6372, float %6373, float %6374, float %6304, float %6305, float %6306)  ; Dot3(ax,ay,az,bx,by,bz)
  %6376 = fcmp fast ogt float %6375, 0.000000e+00
  %6377 = uitofp i1 %6376 to float
  br label %6378

; <label>:6378                                    ; preds = %6357, %6281
  %6379 = phi float [ %6377, %6357 ], [ 1.000000e+00, %6281 ]
  %6380 = phi float [ %6366, %6357 ], [ %6349, %6281 ]
  %6381 = phi float [ %6367, %6357 ], [ %6350, %6281 ]
  %6382 = phi float [ %6368, %6357 ], [ %6351, %6281 ]
  %6383 = call float @dx.op.dot3.f32(i32 55, float %6304, float %6305, float %6306, float %6380, float %6381, float %6382)  ; Dot3(ax,ay,az,bx,by,bz)
  %6384 = fmul fast float %6383, %6383
  %6385 = call float @dx.op.unary.f32(i32 7, float %6384)  ; Saturate(value)
  %6386 = fsub fast float 1.000000e+00, %6385
  %6387 = fmul fast float %6386, 5.000000e-01
  %6388 = fcmp fast ogt float %6383, 0.000000e+00
  %6389 = fsub fast float 1.000000e+00, %6387
  %6390 = select i1 %6388, float %6387, float %6389
  %6391 = fmul fast float %6390, %6339
  %6392 = fadd fast float %6391, %6337
  %6393 = fmul fast float %6392, 0x3EF0001000000000
  %6394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %6393, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6395 = extractvalue %dx.types.ResRet.f32 %6394, 0
  %6396 = fmul fast float %6383, %6321
  %6397 = fadd fast float %6396, %6322
  %6398 = call float @dx.op.unary.f32(i32 7, float %6397)  ; Saturate(value)
  %6399 = select i1 %6342, float 1.000000e+00, float %6398
  %6400 = select i1 %6342, float %6398, float 1.000000e+00
  %6401 = fmul fast float %6347, %6318
  %6402 = fsub fast float 1.000000e+00, %6401
  %6403 = fmul fast float %6402, %6324
  %6404 = call float @dx.op.unary.f32(i32 7, float %6403)  ; Saturate(value)
  %6405 = fmul fast float %6404, %6400
  %6406 = fmul fast float %6405, 2.000000e+00
  %6407 = fsub fast float 3.000000e+00, %6406
  %6408 = fmul fast float %6395, %6379
  %6409 = fmul fast float %6405, %6405
  %6410 = fmul fast float %6409, %6408
  %6411 = fmul fast float %6410, %6407
  %6412 = call float @dx.op.binary.f32(i32 36, float %6411, float %6411)  ; FMin(a,b)
  %6413 = call float @dx.op.binary.f32(i32 36, float %6411, float %6412)  ; FMin(a,b)
  %6414 = fcmp fast ogt float %6413, 0.000000e+00
  br i1 %6414, label %6423, label %6415, !dx.controlflow.hints !116

; <label>:6415                                    ; preds = %6765, %6523, %6378
  %6416 = phi float [ %6283, %6523 ], [ %6283, %6378 ], [ %6805, %6765 ]
  %6417 = phi float [ %6284, %6523 ], [ %6284, %6378 ], [ %6806, %6765 ]
  %6418 = phi float [ %6285, %6523 ], [ %6285, %6378 ], [ %6807, %6765 ]
  %6419 = phi float [ %6286, %6523 ], [ %6286, %6378 ], [ %6799, %6765 ]
  %6420 = phi float [ %6287, %6523 ], [ %6287, %6378 ], [ %6800, %6765 ]
  %6421 = phi float [ %6288, %6523 ], [ %6288, %6378 ], [ %6801, %6765 ]
  %6422 = icmp eq i32 %6282, %6292
  br i1 %6422, label %6808, label %6281

; <label>:6423                                    ; preds = %6378
  %6424 = icmp eq i32 %6340, 255
  br i1 %6424, label %6523, label %6425, !dx.controlflow.hints !117

; <label>:6425                                    ; preds = %6423
  %6426 = mul nuw nsw i32 %6340, 176
  %6427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6426, i32 undef)  ; BufferLoad(srv,index,wot)
  %6428 = extractvalue %dx.types.ResRet.f32 %6427, 0
  %6429 = extractvalue %dx.types.ResRet.f32 %6427, 1
  %6430 = extractvalue %dx.types.ResRet.f32 %6427, 2
  %6431 = extractvalue %dx.types.ResRet.f32 %6427, 3
  %6432 = add nuw nsw i32 %6426, 16
  %6433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6432, i32 undef)  ; BufferLoad(srv,index,wot)
  %6434 = extractvalue %dx.types.ResRet.f32 %6433, 0
  %6435 = extractvalue %dx.types.ResRet.f32 %6433, 1
  %6436 = add nuw nsw i32 %6426, 32
  %6437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6436, i32 undef)  ; BufferLoad(srv,index,wot)
  %6438 = extractvalue %dx.types.ResRet.f32 %6437, 0
  %6439 = extractvalue %dx.types.ResRet.f32 %6437, 1
  %6440 = extractvalue %dx.types.ResRet.f32 %6437, 2
  %6441 = add nuw nsw i32 %6426, 48
  %6442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6441, i32 undef)  ; BufferLoad(srv,index,wot)
  %6443 = extractvalue %dx.types.ResRet.f32 %6442, 0
  %6444 = extractvalue %dx.types.ResRet.f32 %6442, 1
  %6445 = extractvalue %dx.types.ResRet.f32 %6442, 2
  %6446 = extractvalue %dx.types.ResRet.f32 %6442, 3
  %6447 = add nuw nsw i32 %6426, 64
  %6448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6447, i32 undef)  ; BufferLoad(srv,index,wot)
  %6449 = extractvalue %dx.types.ResRet.f32 %6448, 0
  %6450 = extractvalue %dx.types.ResRet.f32 %6448, 1
  %6451 = extractvalue %dx.types.ResRet.f32 %6448, 2
  %6452 = extractvalue %dx.types.ResRet.f32 %6448, 3
  %6453 = add nuw nsw i32 %6426, 80
  %6454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6453, i32 undef)  ; BufferLoad(srv,index,wot)
  %6455 = extractvalue %dx.types.ResRet.f32 %6454, 0
  %6456 = extractvalue %dx.types.ResRet.f32 %6454, 1
  %6457 = extractvalue %dx.types.ResRet.f32 %6454, 2
  %6458 = extractvalue %dx.types.ResRet.f32 %6454, 3
  %6459 = add nuw nsw i32 %6426, 96
  %6460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6459, i32 undef)  ; BufferLoad(srv,index,wot)
  %6461 = extractvalue %dx.types.ResRet.f32 %6460, 0
  %6462 = extractvalue %dx.types.ResRet.f32 %6460, 1
  %6463 = extractvalue %dx.types.ResRet.f32 %6460, 2
  %6464 = extractvalue %dx.types.ResRet.f32 %6460, 3
  %6465 = bitcast float %6435 to i32
  %6466 = fmul fast float %6440, %102
  %6467 = fmul fast float %6440, %103
  %6468 = fmul fast float %6440, %104
  %6469 = fadd fast float %6466, %158
  %6470 = fadd fast float %6467, %159
  %6471 = fadd fast float %6468, %160
  %6472 = fmul fast float %6469, %6443
  %6473 = call float @dx.op.tertiary.f32(i32 46, float %6470, float %6449, float %6472)  ; FMad(a,b,c)
  %6474 = call float @dx.op.tertiary.f32(i32 46, float %6471, float %6455, float %6473)  ; FMad(a,b,c)
  %6475 = fadd fast float %6474, %6461
  %6476 = fmul fast float %6469, %6444
  %6477 = call float @dx.op.tertiary.f32(i32 46, float %6470, float %6450, float %6476)  ; FMad(a,b,c)
  %6478 = call float @dx.op.tertiary.f32(i32 46, float %6471, float %6456, float %6477)  ; FMad(a,b,c)
  %6479 = fadd fast float %6478, %6462
  %6480 = fmul fast float %6469, %6445
  %6481 = call float @dx.op.tertiary.f32(i32 46, float %6470, float %6451, float %6480)  ; FMad(a,b,c)
  %6482 = call float @dx.op.tertiary.f32(i32 46, float %6471, float %6457, float %6481)  ; FMad(a,b,c)
  %6483 = fadd fast float %6482, %6463
  %6484 = fmul fast float %6469, %6446
  %6485 = call float @dx.op.tertiary.f32(i32 46, float %6470, float %6452, float %6484)  ; FMad(a,b,c)
  %6486 = call float @dx.op.tertiary.f32(i32 46, float %6471, float %6458, float %6485)  ; FMad(a,b,c)
  %6487 = fadd fast float %6486, %6464
  %6488 = fdiv fast float %6475, %6487
  %6489 = fdiv fast float %6479, %6487
  %6490 = fdiv fast float %6483, %6487
  %6491 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6490)  ; FMax(a,b)
  %6492 = fmul fast float %263, 0x401921FB60000000
  %6493 = call float @dx.op.unary.f32(i32 13, float %6492)  ; Sin(value)
  %6494 = call float @dx.op.unary.f32(i32 12, float %6492)  ; Cos(value)
  %6495 = fsub fast float -0.000000e+00, %6493
  %6496 = fmul fast float %6430, 5.000000e-01
  %6497 = call float @dx.op.dot2.f32(i32 54, float %263, float %263, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6498 = call float @dx.op.unary.f32(i32 22, float %6497)  ; Frc(value)
  %6499 = fmul fast float %6498, 0x404A7DD040000000
  %6500 = call float @dx.op.unary.f32(i32 22, float %6499)  ; Frc(value)
  %6501 = fmul fast float %6500, %6439
  %6502 = fadd fast float %6501, %6496
  %6503 = call float @dx.op.tertiary.f32(i32 46, float %6502, float %6495, float 0.000000e+00)  ; FMad(a,b,c)
  %6504 = call float @dx.op.tertiary.f32(i32 46, float %6502, float %6494, float 0.000000e+00)  ; FMad(a,b,c)
  %6505 = fadd fast float %6503, %6488
  %6506 = fadd fast float %6504, %6489
  %6507 = fmul fast float %6505, %6434
  %6508 = fmul fast float %6506, %6434
  %6509 = call float @dx.op.binary.f32(i32 35, float %6507, float %6430)  ; FMax(a,b)
  %6510 = call float @dx.op.binary.f32(i32 35, float %6508, float %6430)  ; FMax(a,b)
  %6511 = call float @dx.op.binary.f32(i32 36, float %6509, float %6431)  ; FMin(a,b)
  %6512 = call float @dx.op.binary.f32(i32 36, float %6510, float %6431)  ; FMin(a,b)
  %6513 = fadd fast float %6511, %6428
  %6514 = fadd fast float %6512, %6429
  %6515 = uitofp i32 %6465 to float
  %6516 = fadd fast float %6491, %6438
  %6517 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %6513, float %6514, float %6515, float undef, i32 0, i32 0, i32 undef, float %6516)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6518 = extractvalue %dx.types.ResRet.f32 %6517, 0
  %6519 = fadd fast float %6518, -1.000000e+00
  %6520 = fmul fast float %6519, %6399
  %6521 = fadd fast float %6520, 1.000000e+00
  %6522 = fmul fast float %6521, %6411
  br label %6523

; <label>:6523                                    ; preds = %6425, %6423
  %6524 = phi float [ %6522, %6425 ], [ %6411, %6423 ]
  %6525 = call float @dx.op.binary.f32(i32 36, float %6524, float %6524)  ; FMin(a,b)
  %6526 = call float @dx.op.binary.f32(i32 36, float %6524, float %6525)  ; FMin(a,b)
  %6527 = fcmp fast ogt float %6526, 0.000000e+00
  br i1 %6527, label %6528, label %6415, !dx.controlflow.hints !118

; <label>:6528                                    ; preds = %6523
  %6529 = fmul fast float %6524, %6333
  %6530 = fmul fast float %6524, %6334
  %6531 = fmul fast float %6524, %6335
  %6532 = fsub fast float %6317, %4710
  %6533 = fcmp fast ogt float %6532, 0.000000e+00
  %6534 = fsub fast float %160, %4710
  %6535 = fcmp fast ogt float %6534, 0.000000e+00
  %6536 = xor i1 %6535, %6533
  %6537 = fsub fast float %4710, %6317
  %6538 = fmul fast float %6537, 2.000000e+00
  %6539 = fadd fast float %6538, %6317
  %6540 = select i1 %6536, float %6317, float %6539
  %6541 = fsub fast float %6540, %160
  %6542 = call float @dx.op.dot3.f32(i32 55, float %6343, float %6344, float %6541, float %6343, float %6344, float %6541)  ; Dot3(ax,ay,az,bx,by,bz)
  %6543 = call float @dx.op.unary.f32(i32 25, float %6542)  ; Rsqrt(value)
  %6544 = fmul fast float %6543, %6343
  %6545 = fmul fast float %6543, %6344
  %6546 = fmul fast float %6543, %6541
  %6547 = fsub fast float %4710, %160
  %6548 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6547)  ; Dot3(ax,ay,az,bx,by,bz)
  %6549 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6544, float %6545, float %6546)  ; Dot3(ax,ay,az,bx,by,bz)
  %6550 = fdiv fast float 1.000000e+00, %6549
  %6551 = fmul fast float %6550, %6548
  %6552 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6534, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6553 = fcmp fast ogt float %6552, 0.000000e+00
  %6554 = fcmp fast olt float %6552, 0.000000e+00
  %6555 = zext i1 %6553 to i32
  %6556 = zext i1 %6554 to i32
  %6557 = sub nsw i32 %6555, %6556
  %6558 = sitofp i32 %6557 to float
  %6559 = fsub fast float %6540, %4710
  %6560 = call float @dx.op.dot3.f32(i32 55, float %6343, float %6344, float %6559, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6561 = fcmp fast ogt float %6560, 0.000000e+00
  %6562 = fcmp fast olt float %6560, 0.000000e+00
  %6563 = zext i1 %6561 to i32
  %6564 = zext i1 %6562 to i32
  %6565 = sub nsw i32 %6563, %6564
  %6566 = sitofp i32 %6565 to float
  %6567 = fcmp fast une float %6558, %6566
  br i1 %6567, label %6568, label %6578

; <label>:6568                                    ; preds = %6528
  %6569 = fmul fast float %6551, %6546
  %6570 = fmul fast float %6551, %6545
  %6571 = fmul fast float %6551, %6544
  %6572 = fmul fast float %6571, %6571
  %6573 = fmul fast float %6570, %6570
  %6574 = fadd fast float %6572, %6573
  %6575 = fmul fast float %6569, %6569
  %6576 = fadd fast float %6574, %6575
  %6577 = call float @dx.op.unary.f32(i32 24, float %6576)  ; Sqrt(value)
  br label %6590

; <label>:6578                                    ; preds = %6528
  %6579 = icmp slt i32 %6557, 0
  br i1 %6579, label %6580, label %6590

; <label>:6580                                    ; preds = %6578
  %6581 = fsub fast float %158, %6315
  %6582 = fsub fast float %159, %6316
  %6583 = fsub fast float %160, %6540
  %6584 = fmul fast float %6581, %6581
  %6585 = fmul fast float %6582, %6582
  %6586 = fadd fast float %6584, %6585
  %6587 = fmul fast float %6583, %6583
  %6588 = fadd fast float %6586, %6587
  %6589 = call float @dx.op.unary.f32(i32 24, float %6588)  ; Sqrt(value)
  br label %6590

; <label>:6590                                    ; preds = %6580, %6578, %6568
  %6591 = phi float [ %6577, %6568 ], [ %6589, %6580 ], [ 0.000000e+00, %6578 ]
  %6592 = and i1 %6535, %6533
  %6593 = fsub fast float -0.000000e+00, %6591
  %6594 = select i1 %6592, float -0.000000e+00, float %6593
  %6595 = fmul fast float %4711, 0x3FF7154760000000
  %6596 = fmul fast float %6595, %6594
  %6597 = fmul fast float %4712, 0x3FF7154760000000
  %6598 = fmul fast float %6597, %6594
  %6599 = fmul fast float %4713, 0x3FF7154760000000
  %6600 = fmul fast float %6599, %6594
  %6601 = call float @dx.op.unary.f32(i32 21, float %6596)  ; Exp(value)
  %6602 = call float @dx.op.unary.f32(i32 21, float %6598)  ; Exp(value)
  %6603 = call float @dx.op.unary.f32(i32 21, float %6600)  ; Exp(value)
  %6604 = call float @dx.op.unary.f32(i32 7, float %6601)  ; Saturate(value)
  %6605 = call float @dx.op.unary.f32(i32 7, float %6602)  ; Saturate(value)
  %6606 = call float @dx.op.unary.f32(i32 7, float %6603)  ; Saturate(value)
  %6607 = fmul fast float %6529, %6604
  %6608 = fmul fast float %6530, %6605
  %6609 = fmul fast float %6531, %6606
  %6610 = fsub fast float %6349, %178
  %6611 = fsub fast float %6350, %179
  %6612 = fsub fast float %6351, %180
  %6613 = call float @dx.op.dot3.f32(i32 55, float %6610, float %6611, float %6612, float %6610, float %6611, float %6612)  ; Dot3(ax,ay,az,bx,by,bz)
  %6614 = call float @dx.op.unary.f32(i32 25, float %6613)  ; Rsqrt(value)
  %6615 = fmul fast float %6614, %6610
  %6616 = fmul fast float %6614, %6611
  %6617 = fmul fast float %6614, %6612
  %6618 = call float @dx.op.dot3.f32(i32 55, float %6349, float %6350, float %6351, float %4896, float %4897, float %4898)  ; Dot3(ax,ay,az,bx,by,bz)
  %6619 = call float @dx.op.dot3.f32(i32 55, float %4727, float %4728, float %4729, float %6615, float %6616, float %6617)  ; Dot3(ax,ay,az,bx,by,bz)
  %6620 = call float @dx.op.unary.f32(i32 7, float %6618)  ; Saturate(value)
  %6621 = fmul fast float %6620, %6356
  %6622 = fmul fast float %6620, %6620
  %6623 = fmul fast float %6622, %4920
  %6624 = call float @dx.op.unary.f32(i32 7, float %6623)  ; Saturate(value)
  %6625 = fmul fast float %6621, %6624
  %6626 = bitcast float %6346 to i32
  %6627 = ashr i32 %6626, 1
  %6628 = sub nsw i32 1597463007, %6627
  %6629 = bitcast i32 %6628 to float
  %6630 = fmul fast float %6629, %6343
  %6631 = fmul fast float %6629, %6344
  %6632 = fmul fast float %6629, %6345
  %6633 = fsub fast float %6630, %178
  %6634 = fsub fast float %6631, %179
  %6635 = fsub fast float %6632, %180
  %6636 = call float @dx.op.dot3.f32(i32 55, float %6633, float %6634, float %6635, float %6633, float %6634, float %6635)  ; Dot3(ax,ay,az,bx,by,bz)
  %6637 = call float @dx.op.unary.f32(i32 25, float %6636)  ; Rsqrt(value)
  %6638 = fmul fast float %6633, %6637
  %6639 = fmul fast float %6634, %6637
  %6640 = fmul fast float %6635, %6637
  %6641 = call float @dx.op.dot3.f32(i32 55, float %4896, float %4897, float %4898, float %6638, float %6639, float %6640)  ; Dot3(ax,ay,az,bx,by,bz)
  %6642 = fmul fast float %6641, %6641
  %6643 = call float @dx.op.unary.f32(i32 6, float %6618)  ; FAbs(value)
  %6644 = fsub fast float 1.000000e+00, %4902
  %6645 = call float @dx.op.binary.f32(i32 35, float %6644, float 0x3F847AE140000000)  ; FMax(a,b)
  %6646 = fmul fast float %6645, %6645
  %6647 = fmul fast float %6646, %6646
  %6648 = fsub fast float 1.000000e+00, %6647
  %6649 = fmul fast float %4907, %4907
  %6650 = fmul fast float %6649, %6648
  %6651 = fadd fast float %6650, %6647
  %6652 = bitcast float %6651 to i32
  %6653 = ashr i32 %6652, 1
  %6654 = add nsw i32 %6653, 532487669
  %6655 = bitcast i32 %6654 to float
  %6656 = fadd fast float %6655, %4907
  %6657 = fmul fast float %6647, %6642
  %6658 = fsub fast float 1.000000e+00, %6642
  %6659 = fadd fast float %6658, %6657
  %6660 = fmul fast float %6643, %6643
  %6661 = fmul fast float %6660, %6648
  %6662 = fadd fast float %6661, %6647
  %6663 = bitcast float %6662 to i32
  %6664 = ashr i32 %6663, 1
  %6665 = add nsw i32 %6664, 532487669
  %6666 = bitcast i32 %6665 to float
  %6667 = fadd fast float %6666, %6643
  %6668 = fmul fast float %6659, %6659
  %6669 = fmul fast float %6668, %6656
  %6670 = fmul fast float %6669, %6667
  %6671 = fdiv fast float 1.000000e+00, %6670
  %6672 = bitcast float %6647 to i32
  %6673 = sitofp i32 %6672 to float
  %6674 = fmul fast float %6673, 0x3FE7F73180000000
  %6675 = fadd fast float %6674, 0x41AFE27C40000000
  %6676 = fptosi float %6675 to i32
  %6677 = bitcast i32 %6676 to float
  %6678 = fmul fast float %6312, 0x3FD80E9D60000000
  %6679 = fmul fast float %6678, %6629
  %6680 = fadd fast float %6677, %6679
  %6681 = bitcast float %6680 to i32
  %6682 = sub nsw i32 2129859010, %6681
  %6683 = bitcast i32 %6682 to float
  %6684 = fmul fast float %6647, %6671
  %6685 = fmul fast float %6684, %6677
  %6686 = fmul fast float %6685, %6683
  %6687 = call float @dx.op.unary.f32(i32 6, float %6619)  ; FAbs(value)
  %6688 = fsub fast float 1.000000e+00, %6687
  %6689 = bitcast float %6688 to i32
  %6690 = sitofp i32 %6689 to float
  %6691 = fmul fast float %6690, 5.000000e+00
  %6692 = fadd fast float %6691, 0xC1EFBF8940000000
  %6693 = fptosi float %6692 to i32
  %6694 = bitcast i32 %6693 to float
  %6695 = fsub fast float 1.000000e+00, %4893
  %6696 = fsub fast float 1.000000e+00, %4894
  %6697 = fsub fast float 1.000000e+00, %4905
  %6698 = fmul fast float %6694, %6695
  %6699 = fmul fast float %6694, %6696
  %6700 = fmul fast float %6694, %6697
  %6701 = fadd fast float %6698, %4893
  %6702 = fadd fast float %6699, %4894
  %6703 = fadd fast float %6700, %4905
  br i1 %5032, label %6704, label %6727

; <label>:6704                                    ; preds = %6590
  %6705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4286, float %6687, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6706 = extractvalue %dx.types.ResRet.f32 %6705, 0
  %6707 = extractvalue %dx.types.ResRet.f32 %6705, 1
  %6708 = extractvalue %dx.types.ResRet.f32 %6705, 2
  %6709 = fadd fast float %6706, -5.000000e-01
  %6710 = fadd fast float %6707, -5.000000e-01
  %6711 = fadd fast float %6708, -5.000000e-01
  %6712 = fmul fast float %4893, 4.000000e+00
  %6713 = fmul fast float %6712, %6695
  %6714 = fmul fast float %6713, %6709
  %6715 = fmul fast float %4894, 4.000000e+00
  %6716 = fmul fast float %6715, %6696
  %6717 = fmul fast float %6716, %6710
  %6718 = fmul fast float %4905, 4.000000e+00
  %6719 = fmul fast float %6718, %6697
  %6720 = fmul fast float %6719, %6711
  %6721 = fadd fast float %6714, %6701
  %6722 = fadd fast float %6717, %6702
  %6723 = fadd fast float %6720, %6703
  %6724 = call float @dx.op.unary.f32(i32 7, float %6721)  ; Saturate(value)
  %6725 = call float @dx.op.unary.f32(i32 7, float %6722)  ; Saturate(value)
  %6726 = call float @dx.op.unary.f32(i32 7, float %6723)  ; Saturate(value)
  br label %6727

; <label>:6727                                    ; preds = %6704, %6590
  %6728 = phi float [ %6724, %6704 ], [ %6701, %6590 ]
  %6729 = phi float [ %6725, %6704 ], [ %6702, %6590 ]
  %6730 = phi float [ %6726, %6704 ], [ %6703, %6590 ]
  %6731 = fmul fast float %6618, 9.843750e-01
  %6732 = fadd fast float %6731, 7.812500e-03
  %6733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6732, float %5022, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6734 = extractvalue %dx.types.ResRet.f32 %6733, 2
  %6735 = extractvalue %dx.types.ResRet.f32 %6733, 3
  %6736 = fmul fast float %6734, %4893
  %6737 = fmul fast float %6734, %4894
  %6738 = fmul fast float %6734, %4905
  %6739 = fadd fast float %6736, %6735
  %6740 = fadd fast float %6737, %6735
  %6741 = fadd fast float %6738, %6735
  br i1 %5032, label %6742, label %6765

; <label>:6742                                    ; preds = %6727
  %6743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4286, float %6618, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6744 = extractvalue %dx.types.ResRet.f32 %6743, 0
  %6745 = extractvalue %dx.types.ResRet.f32 %6743, 1
  %6746 = extractvalue %dx.types.ResRet.f32 %6743, 2
  %6747 = fadd fast float %6744, -5.000000e-01
  %6748 = fadd fast float %6745, -5.000000e-01
  %6749 = fadd fast float %6746, -5.000000e-01
  %6750 = fmul fast float %4893, 4.000000e+00
  %6751 = fmul fast float %6750, %6695
  %6752 = fmul fast float %6751, %6747
  %6753 = fmul fast float %4894, 4.000000e+00
  %6754 = fmul fast float %6753, %6696
  %6755 = fmul fast float %6754, %6748
  %6756 = fmul fast float %4905, 4.000000e+00
  %6757 = fmul fast float %6756, %6697
  %6758 = fmul fast float %6757, %6749
  %6759 = fadd fast float %6752, %6739
  %6760 = fadd fast float %6755, %6740
  %6761 = fadd fast float %6758, %6741
  %6762 = call float @dx.op.unary.f32(i32 7, float %6759)  ; Saturate(value)
  %6763 = call float @dx.op.unary.f32(i32 7, float %6760)  ; Saturate(value)
  %6764 = call float @dx.op.unary.f32(i32 7, float %6761)  ; Saturate(value)
  br label %6765

; <label>:6765                                    ; preds = %6742, %6727
  %6766 = phi float [ %6762, %6742 ], [ %6739, %6727 ]
  %6767 = phi float [ %6763, %6742 ], [ %6740, %6727 ]
  %6768 = phi float [ %6764, %6742 ], [ %6741, %6727 ]
  %6769 = call float @dx.op.binary.f32(i32 35, float %6767, float %6768)  ; FMax(a,b)
  %6770 = call float @dx.op.binary.f32(i32 35, float %6766, float %6769)  ; FMax(a,b)
  %6771 = fsub fast float 1.000000e+00, %6770
  %6772 = fmul fast float %6728, %6686
  %6773 = fmul fast float %6729, %6686
  %6774 = fmul fast float %6730, %6686
  %6775 = fsub fast float 1.000000e+00, %6619
  %6776 = bitcast float %6775 to i32
  %6777 = sitofp i32 %6776 to float
  %6778 = fmul fast float %6777, 5.000000e+00
  %6779 = fadd fast float %6778, 0xC1EFBF8940000000
  %6780 = fptosi float %6779 to i32
  %6781 = bitcast i32 %6780 to float
  %6782 = fmul fast float %6781, %4287
  %6783 = fmul fast float %6771, %6782
  %6784 = fmul fast float %6783, %5082
  %6785 = fmul fast float %6783, %5083
  %6786 = fmul fast float %6783, %5084
  %6787 = fadd fast float %6784, %6772
  %6788 = fadd fast float %6785, %6773
  %6789 = fadd fast float %6786, %6774
  %6790 = fmul fast float %6607, %4313
  %6791 = fmul fast float %6790, %6625
  %6792 = fmul fast float %6791, %6771
  %6793 = fmul fast float %6608, %4313
  %6794 = fmul fast float %6793, %6625
  %6795 = fmul fast float %6794, %6771
  %6796 = fmul fast float %6609, %4313
  %6797 = fmul fast float %6796, %6625
  %6798 = fmul fast float %6797, %6771
  %6799 = fadd fast float %6792, %6286
  %6800 = fadd fast float %6795, %6287
  %6801 = fadd fast float %6798, %6288
  %6802 = fmul fast float %6791, %6787
  %6803 = fmul fast float %6794, %6788
  %6804 = fmul fast float %6797, %6789
  %6805 = fadd fast float %6802, %6283
  %6806 = fadd fast float %6803, %6284
  %6807 = fadd fast float %6804, %6285
  br label %6415

; <label>:6808                                    ; preds = %6415
  br label %6809

; <label>:6809                                    ; preds = %6808, %6249
  %6810 = phi float [ %6251, %6249 ], [ %6416, %6808 ]
  %6811 = phi float [ %6252, %6249 ], [ %6417, %6808 ]
  %6812 = phi float [ %6253, %6249 ], [ %6418, %6808 ]
  %6813 = phi float [ %6254, %6249 ], [ %6419, %6808 ]
  %6814 = phi float [ %6255, %6249 ], [ %6420, %6808 ]
  %6815 = phi float [ %6256, %6249 ], [ %6421, %6808 ]
  %6816 = add i32 %6250, 1
  %6817 = icmp ugt i32 %6816, %6246
  br i1 %6817, label %6818, label %6249

; <label>:6818                                    ; preds = %6809
  br label %6819

; <label>:6819                                    ; preds = %6818, %6199, %6189
  %6820 = phi float [ %6190, %6189 ], [ %6190, %6199 ], [ %6810, %6818 ]
  %6821 = phi float [ %6191, %6189 ], [ %6191, %6199 ], [ %6811, %6818 ]
  %6822 = phi float [ %6192, %6189 ], [ %6192, %6199 ], [ %6812, %6818 ]
  %6823 = phi float [ %6193, %6189 ], [ %6193, %6199 ], [ %6813, %6818 ]
  %6824 = phi float [ %6194, %6189 ], [ %6194, %6199 ], [ %6814, %6818 ]
  %6825 = phi float [ %6195, %6189 ], [ %6195, %6199 ], [ %6815, %6818 ]
  %6826 = fmul fast float %4313, %4313
  %6827 = fsub fast float 1.000000e+00, %6826
  %6828 = call float @dx.op.dot3.f32(i32 55, float %6827, float %6827, float %6827, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6829 = fsub fast float 1.000000e+00, %6828
  %6830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6831 = extractvalue %dx.types.CBufRet.f32 %6830, 0
  %6832 = fmul fast float %6831, %5088
  %6833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6834 = extractvalue %dx.types.CBufRet.f32 %6833, 3
  %6835 = fsub fast float 1.000000e+00, %4291
  %6836 = call float @dx.op.unary.f32(i32 7, float %6835)  ; Saturate(value)
  %6837 = fadd fast float %6825, %4289
  %6838 = fmul fast float %6837, %4291
  %6839 = fmul fast float %6836, %6834
  %6840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4292, i32 undef)  ; BufferLoad(srv,index,wot)
  %6841 = extractvalue %dx.types.ResRet.i32 %6840, 3
  %6842 = bitcast i32 %6841 to float
  %6843 = fsub fast float %6829, %6842
  %6844 = fmul fast float %6843, %192
  %6845 = fadd fast float %6844, %6842
  %6846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6847 = extractvalue %dx.types.CBufRet.f32 %6846, 3
  %6848 = fmul fast float %6823, %4899
  %6849 = fmul fast float %6824, %4900
  %6850 = fmul fast float %6825, %4901
  %6851 = fcmp fast ogt float %86, %212
  %6852 = and i1 %6851, %4716
  %6853 = or i1 %4722, %6852
  %6854 = icmp eq i32 %4715, 2
  %6855 = fcmp fast ole float %86, %212
  %6856 = and i1 %6855, %6854
  %6857 = or i1 %6856, %6853
  br i1 %6852, label %6858, label %7115

; <label>:6858                                    ; preds = %6819
  %6859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6860 = extractvalue %dx.types.CBufRet.f32 %6859, 2
  %6861 = extractvalue %dx.types.CBufRet.f32 %6859, 3
  %6862 = fmul fast float %6860, %95
  %6863 = fmul fast float %6861, %96
  %6864 = call float @dx.op.unary.f32(i32 7, float %6862)  ; Saturate(value)
  %6865 = call float @dx.op.unary.f32(i32 7, float %6863)  ; Saturate(value)
  %6866 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6864, float %6865, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6867 = extractvalue %dx.types.ResRet.f32 %6866, 0
  %6868 = extractvalue %dx.types.ResRet.f32 %6866, 1
  %6869 = extractvalue %dx.types.ResRet.f32 %6866, 2
  %6870 = extractvalue %dx.types.ResRet.f32 %6866, 3
  %6871 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6864, float %6865, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6872 = extractvalue %dx.types.ResRet.f32 %6871, 0
  %6873 = extractvalue %dx.types.ResRet.f32 %6871, 1
  %6874 = extractvalue %dx.types.ResRet.f32 %6871, 2
  %6875 = extractvalue %dx.types.ResRet.f32 %6871, 3
  %6876 = call float @dx.op.binary.f32(i32 35, float %6868, float %6869)  ; FMax(a,b)
  %6877 = call float @dx.op.binary.f32(i32 35, float %6867, float %6876)  ; FMax(a,b)
  %6878 = call float @dx.op.binary.f32(i32 35, float %6877, float %6870)  ; FMax(a,b)
  %6879 = call float @dx.op.binary.f32(i32 36, float %6873, float %6874)  ; FMin(a,b)
  %6880 = call float @dx.op.binary.f32(i32 36, float %6872, float %6879)  ; FMin(a,b)
  %6881 = call float @dx.op.binary.f32(i32 36, float %6880, float %6875)  ; FMin(a,b)
  %6882 = fmul fast float %6878, 2.550000e+02
  %6883 = fadd fast float %6882, 0x3F70101020000000
  %6884 = fptoui float %6883 to i32
  %6885 = fmul fast float %6881, 2.550000e+02
  %6886 = fadd fast float %6885, 0x3F70101020000000
  %6887 = fptoui float %6886 to i32
  %6888 = icmp ult i32 %6884, %6887
  br i1 %6888, label %6889, label %7057

; <label>:6889                                    ; preds = %6858
  %6890 = fcmp fast ogt float %85, 9.843750e-01
  %6891 = fadd fast float %86, -4.000000e+00
  %6892 = select i1 %6890, float -4.000000e+00, float %6891
  %6893 = call float @dx.op.binary.f32(i32 35, float %6892, float 0.000000e+00)  ; FMax(a,b)
  %6894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6895 = extractvalue %dx.types.CBufRet.f32 %6894, 0
  %6896 = fadd fast float %6895, %6893
  %6897 = extractvalue %dx.types.CBufRet.f32 %6894, 2
  %6898 = fmul fast float %6896, %6897
  %6899 = call float @dx.op.unary.f32(i32 23, float %6898)  ; Log(value)
  %6900 = extractvalue %dx.types.CBufRet.f32 %6894, 3
  %6901 = fmul fast float %6900, %6899
  %6902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6903 = extractvalue %dx.types.CBufRet.f32 %6902, 2
  %6904 = fmul fast float %6901, %6903
  %6905 = call float @dx.op.unary.f32(i32 7, float %6904)  ; Saturate(value)
  %6906 = uitofp i32 %6884 to float
  %6907 = uitofp i32 %6887 to float
  %6908 = fadd fast float %6906, 5.000000e-01
  %6909 = fadd fast float %6907, 5.000000e-01
  %6910 = fmul fast float %6903, %6908
  %6911 = fmul fast float %6903, %6909
  %6912 = fadd fast float %6910, 0x3F0FFB4800000000
  %6913 = fadd fast float %6911, 0xBF0FFB4800000000
  %6914 = call float @dx.op.binary.f32(i32 35, float %6905, float %6912)  ; FMax(a,b)
  %6915 = call float @dx.op.binary.f32(i32 36, float %6914, float %6913)  ; FMin(a,b)
  %6916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6917 = extractvalue %dx.types.CBufRet.f32 %6916, 1
  %6918 = extractvalue %dx.types.CBufRet.f32 %6916, 2
  %6919 = extractvalue %dx.types.CBufRet.f32 %6916, 0
  %6920 = fmul fast float %6917, %6915
  %6921 = fadd fast float %6919, %6920
  %6922 = fadd fast float %6919, %6918
  %6923 = fsub fast float %6917, %6918
  %6924 = fadd fast float %6923, %6919
  %6925 = call float @dx.op.binary.f32(i32 35, float %6921, float %6922)  ; FMax(a,b)
  %6926 = call float @dx.op.binary.f32(i32 36, float %6925, float %6924)  ; FMin(a,b)
  %6927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %6864, float %6865, float %6926, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6928 = extractvalue %dx.types.ResRet.f32 %6927, 0
  %6929 = extractvalue %dx.types.ResRet.f32 %6927, 1
  %6930 = extractvalue %dx.types.ResRet.f32 %6927, 2
  %6931 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6932 = extractvalue %dx.types.CBufRet.i32 %6931, 0
  %6933 = extractvalue %dx.types.CBufRet.i32 %6931, 1
  %6934 = uitofp i32 %6932 to float
  %6935 = uitofp i32 %6933 to float
  %6936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6937 = extractvalue %dx.types.CBufRet.f32 %6936, 0
  %6938 = extractvalue %dx.types.CBufRet.f32 %6936, 1
  %6939 = fmul fast float %6934, %6864
  %6940 = fmul fast float %6935, %6865
  %6941 = fadd fast float %6939, -5.000000e-01
  %6942 = fadd fast float %6940, -5.000000e-01
  %6943 = call float @dx.op.unary.f32(i32 22, float %6941)  ; Frc(value)
  %6944 = call float @dx.op.unary.f32(i32 22, float %6942)  ; Frc(value)
  %6945 = fmul fast float %6943, %6943
  %6946 = fmul fast float %6945, %6943
  %6947 = fsub fast float 3.000000e+00, %6943
  %6948 = fmul fast float %6945, %6947
  %6949 = fmul fast float %6943, 3.000000e+00
  %6950 = fmul fast float %6946, 3.000000e+00
  %6951 = fmul fast float %6945, 6.000000e+00
  %6952 = fsub fast float %6950, %6951
  %6953 = fadd fast float %6952, 4.000000e+00
  %6954 = fmul fast float %6953, 0x3FC5555560000000
  %6955 = fmul fast float %6946, -3.000000e+00
  %6956 = fadd fast float %6945, %6943
  %6957 = fmul fast float %6956, 3.000000e+00
  %6958 = fadd fast float %6955, 1.000000e+00
  %6959 = fadd fast float %6958, %6957
  %6960 = fmul fast float %6946, 0x3FC5555560000000
  %6961 = fmul fast float %6944, %6944
  %6962 = fmul fast float %6961, %6944
  %6963 = fsub fast float 3.000000e+00, %6944
  %6964 = fmul fast float %6961, %6963
  %6965 = fmul fast float %6944, 3.000000e+00
  %6966 = fmul fast float %6962, 3.000000e+00
  %6967 = fmul fast float %6961, 6.000000e+00
  %6968 = fsub fast float %6966, %6967
  %6969 = fadd fast float %6968, 4.000000e+00
  %6970 = fmul fast float %6969, 0x3FC5555560000000
  %6971 = fmul fast float %6962, -3.000000e+00
  %6972 = fadd fast float %6961, %6944
  %6973 = fmul fast float %6972, 3.000000e+00
  %6974 = fadd fast float %6971, 1.000000e+00
  %6975 = fadd fast float %6974, %6973
  %6976 = fmul fast float %6962, 0x3FC5555560000000
  %6977 = fadd fast float %6943, 1.000000e+00
  %6978 = fsub fast float 1.000000e+00, %6949
  %6979 = fadd fast float %6978, %6948
  %6980 = fadd fast float %6979, %6953
  %6981 = fmul fast float %6980, 0x3FC5555560000000
  %6982 = fdiv fast float %6954, %6981
  %6983 = fsub fast float %6977, %6982
  %6984 = fsub fast float 1.000000e+00, %6943
  %6985 = fadd fast float %6959, %6946
  %6986 = fmul fast float %6985, 0x3FC5555560000000
  %6987 = fdiv fast float %6960, %6986
  %6988 = fadd fast float %6984, %6987
  %6989 = fadd fast float %6944, 1.000000e+00
  %6990 = fsub fast float 1.000000e+00, %6965
  %6991 = fadd fast float %6990, %6964
  %6992 = fadd fast float %6991, %6969
  %6993 = fmul fast float %6992, 0x3FC5555560000000
  %6994 = fdiv fast float %6970, %6993
  %6995 = fsub fast float %6989, %6994
  %6996 = fsub fast float 1.000000e+00, %6944
  %6997 = fadd fast float %6975, %6962
  %6998 = fmul fast float %6997, 0x3FC5555560000000
  %6999 = fdiv fast float %6976, %6998
  %7000 = fadd fast float %6999, %6996
  %7001 = fmul fast float %6983, %6937
  %7002 = fsub fast float %6864, %7001
  %7003 = fmul fast float %6988, %6937
  %7004 = fadd fast float %7003, %6864
  %7005 = fmul fast float %7000, %6938
  %7006 = fadd fast float %7005, %6865
  %7007 = fmul fast float %6995, %6938
  %7008 = fsub fast float %6865, %7007
  %7009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7002, float %7008, float %6926, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7010 = extractvalue %dx.types.ResRet.f32 %7009, 0
  %7011 = extractvalue %dx.types.ResRet.f32 %7009, 1
  %7012 = extractvalue %dx.types.ResRet.f32 %7009, 2
  %7013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7004, float %7008, float %6926, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7014 = extractvalue %dx.types.ResRet.f32 %7013, 0
  %7015 = extractvalue %dx.types.ResRet.f32 %7013, 1
  %7016 = extractvalue %dx.types.ResRet.f32 %7013, 2
  %7017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7002, float %7006, float %6926, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7018 = extractvalue %dx.types.ResRet.f32 %7017, 0
  %7019 = extractvalue %dx.types.ResRet.f32 %7017, 1
  %7020 = extractvalue %dx.types.ResRet.f32 %7017, 2
  %7021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7004, float %7006, float %6926, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7022 = extractvalue %dx.types.ResRet.f32 %7021, 0
  %7023 = extractvalue %dx.types.ResRet.f32 %7021, 1
  %7024 = extractvalue %dx.types.ResRet.f32 %7021, 2
  %7025 = fsub fast float %7018, %7010
  %7026 = fsub fast float %7019, %7011
  %7027 = fsub fast float %7020, %7012
  %7028 = fmul fast float %7025, %6998
  %7029 = fmul fast float %7026, %6998
  %7030 = fmul fast float %7027, %6998
  %7031 = fadd fast float %7028, %7010
  %7032 = fadd fast float %7029, %7011
  %7033 = fadd fast float %7030, %7012
  %7034 = fsub fast float %7022, %7014
  %7035 = fsub fast float %7023, %7015
  %7036 = fsub fast float %7024, %7016
  %7037 = fmul fast float %7034, %6998
  %7038 = fmul fast float %7035, %6998
  %7039 = fmul fast float %7036, %6998
  %7040 = fsub fast float %7014, %7031
  %7041 = fadd fast float %7040, %7037
  %7042 = fsub fast float %7015, %7032
  %7043 = fadd fast float %7042, %7038
  %7044 = fsub fast float %7016, %7033
  %7045 = fadd fast float %7044, %7039
  %7046 = fmul fast float %7041, %6986
  %7047 = fmul fast float %7043, %6986
  %7048 = fmul fast float %7045, %6986
  %7049 = fadd fast float %7046, %7031
  %7050 = fadd fast float %7047, %7032
  %7051 = fadd fast float %7048, %7033
  %7052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7053 = extractvalue %dx.types.CBufRet.f32 %7052, 1
  %7054 = fmul fast float %7049, %7053
  %7055 = fmul fast float %7050, %7053
  %7056 = fmul fast float %7051, %7053
  br label %7057

; <label>:7057                                    ; preds = %6889, %6858
  %7058 = phi float [ %6928, %6889 ], [ 1.000000e+00, %6858 ]
  %7059 = phi float [ %6929, %6889 ], [ 1.000000e+00, %6858 ]
  %7060 = phi float [ %6930, %6889 ], [ 1.000000e+00, %6858 ]
  %7061 = phi float [ %7054, %6889 ], [ 0.000000e+00, %6858 ]
  %7062 = phi float [ %7055, %6889 ], [ 0.000000e+00, %6858 ]
  %7063 = phi float [ %7056, %6889 ], [ 0.000000e+00, %6858 ]
  %7064 = fmul fast float %7061, %6845
  %7065 = fmul fast float %7062, %6845
  %7066 = fmul fast float %7063, %6845
  %7067 = call float @dx.op.dot3.f32(i32 55, float %7058, float %7059, float %7060, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7068 = call float @dx.op.dot3.f32(i32 55, float %7064, float %7065, float %7066, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7069 = select i1 %252, float %7067, float %7058
  %7070 = select i1 %252, float %7067, float %7059
  %7071 = select i1 %252, float 1.000000e+00, float %7060
  %7072 = select i1 %252, float %7068, float %7064
  %7073 = select i1 %252, float 0.000000e+00, float %7065
  %7074 = select i1 %252, float 0.000000e+00, float %7066
  %7075 = fmul fast float %7069, %6848
  %7076 = fmul fast float %7070, %6849
  %7077 = fmul fast float %7071, %6850
  %7078 = fadd fast float %7075, %7072
  %7079 = fadd fast float %7076, %7073
  %7080 = fadd fast float %7074, %7077
  %7081 = fmul fast float %7069, %6820
  %7082 = fmul fast float %7070, %6821
  %7083 = fmul fast float %7071, %6822
  %7084 = fmul fast float %128, %6860
  %7085 = fmul fast float %130, %6861
  %7086 = fsub fast float 1.000000e+00, %7084
  %7087 = fsub fast float 1.000000e+00, %7085
  %7088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7089 = extractvalue %dx.types.CBufRet.f32 %7088, 0
  %7090 = extractvalue %dx.types.CBufRet.f32 %7088, 1
  %7091 = extractvalue %dx.types.CBufRet.f32 %7088, 2
  %7092 = fmul fast float %7086, %7089
  %7093 = fmul fast float %7086, %7090
  %7094 = fmul fast float %7086, %7091
  %7095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7096 = extractvalue %dx.types.CBufRet.f32 %7095, 0
  %7097 = extractvalue %dx.types.CBufRet.f32 %7095, 1
  %7098 = extractvalue %dx.types.CBufRet.f32 %7095, 2
  %7099 = fmul fast float %7087, %7096
  %7100 = fmul fast float %7087, %7097
  %7101 = fmul fast float %7087, %7098
  %7102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7103 = extractvalue %dx.types.CBufRet.f32 %7102, 0
  %7104 = extractvalue %dx.types.CBufRet.f32 %7102, 1
  %7105 = extractvalue %dx.types.CBufRet.f32 %7102, 2
  %7106 = fadd fast float %7099, %7103
  %7107 = fadd fast float %7106, %7092
  %7108 = fadd fast float %7100, %7104
  %7109 = fadd fast float %7108, %7093
  %7110 = fadd fast float %7101, %7105
  %7111 = fadd fast float %7110, %7094
  %7112 = fmul fast float %7107, %212
  %7113 = fmul fast float %7109, %212
  %7114 = fmul fast float %7111, %212
  br label %7115

; <label>:7115                                    ; preds = %7057, %6819
  %7116 = phi float [ %7112, %7057 ], [ %158, %6819 ]
  %7117 = phi float [ %7113, %7057 ], [ %159, %6819 ]
  %7118 = phi float [ %7114, %7057 ], [ %160, %6819 ]
  %7119 = phi float [ %212, %7057 ], [ %86, %6819 ]
  %7120 = phi float [ %7078, %7057 ], [ %6848, %6819 ]
  %7121 = phi float [ %7079, %7057 ], [ %6849, %6819 ]
  %7122 = phi float [ %7080, %7057 ], [ %6850, %6819 ]
  %7123 = phi float [ %7081, %7057 ], [ %6820, %6819 ]
  %7124 = phi float [ %7082, %7057 ], [ %6821, %6819 ]
  %7125 = phi float [ %7083, %7057 ], [ %6822, %6819 ]
  %7126 = phi float [ %7058, %7057 ], [ 1.000000e+00, %6819 ]
  br i1 %6857, label %8277, label %7127

; <label>:7127                                    ; preds = %7115
  %7128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7129 = extractvalue %dx.types.CBufRet.f32 %7128, 0
  %7130 = extractvalue %dx.types.CBufRet.f32 %7128, 1
  %7131 = extractvalue %dx.types.CBufRet.f32 %7128, 2
  %7132 = extractvalue %dx.types.CBufRet.f32 %7128, 3
  %7133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7134 = extractvalue %dx.types.CBufRet.f32 %7133, 0
  %7135 = extractvalue %dx.types.CBufRet.f32 %7133, 1
  %7136 = extractvalue %dx.types.CBufRet.f32 %7133, 2
  %7137 = extractvalue %dx.types.CBufRet.f32 %7133, 3
  %7138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7139 = extractvalue %dx.types.CBufRet.f32 %7138, 0
  %7140 = extractvalue %dx.types.CBufRet.f32 %7138, 1
  %7141 = extractvalue %dx.types.CBufRet.f32 %7138, 2
  %7142 = extractvalue %dx.types.CBufRet.f32 %7138, 3
  %7143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7144 = extractvalue %dx.types.CBufRet.f32 %7143, 0
  %7145 = extractvalue %dx.types.CBufRet.f32 %7143, 1
  %7146 = extractvalue %dx.types.CBufRet.f32 %7143, 2
  %7147 = extractvalue %dx.types.CBufRet.f32 %7143, 3
  %7148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7149 = extractvalue %dx.types.CBufRet.f32 %7148, 3
  %7150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7151 = extractvalue %dx.types.CBufRet.f32 %7150, 3
  %7152 = extractvalue %dx.types.CBufRet.f32 %7150, 0
  %7153 = extractvalue %dx.types.CBufRet.f32 %7150, 1
  %7154 = extractvalue %dx.types.CBufRet.f32 %7150, 2
  %7155 = fcmp fast olt float %7154, -5.000000e-01
  %7156 = call float @dx.op.dot3.f32(i32 55, float %7116, float %7117, float %7118, float %7116, float %7117, float %7118)  ; Dot3(ax,ay,az,bx,by,bz)
  %7157 = call float @dx.op.unary.f32(i32 25, float %7156)  ; Rsqrt(value)
  %7158 = fmul fast float %7157, %7156
  %7159 = fmul fast float %7157, %7116
  %7160 = fmul fast float %7157, %7117
  %7161 = fmul fast float %7157, %7118
  %7162 = fadd fast float %7158, %7132
  %7163 = call float @dx.op.dot3.f32(i32 55, float %7159, float %7160, float %7161, float %7129, float %7130, float %7131)  ; Dot3(ax,ay,az,bx,by,bz)
  %7164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7165 = extractvalue %dx.types.CBufRet.i32 %7164, 1
  %7166 = and i32 %7165, 1
  %7167 = icmp ne i32 %7166, 0
  %7168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7169 = extractvalue %dx.types.CBufRet.f32 %7168, 2
  %7170 = fcmp fast ogt float %7169, 0.000000e+00
  %7171 = and i1 %7167, %7170
  br i1 %7171, label %7172, label %7574, !dx.controlflow.hints !119

; <label>:7172                                    ; preds = %7127
  %7173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7174 = extractvalue %dx.types.CBufRet.f32 %7173, 3
  %7175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7176 = extractvalue %dx.types.CBufRet.f32 %7175, 2
  %7177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7178 = extractvalue %dx.types.CBufRet.f32 %7177, 2
  %7179 = fsub fast float %7176, %7178
  %7180 = and i32 %7165, 2
  %7181 = extractvalue %dx.types.CBufRet.i32 %7164, 0
  %7182 = call i32 @dx.op.binary.i32(i32 40, i32 %7181, i32 3)  ; UMin(a,b)
  %7183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7184 = extractvalue %dx.types.CBufRet.f32 %7183, 0
  %7185 = extractvalue %dx.types.CBufRet.f32 %7183, 1
  %7186 = extractvalue %dx.types.CBufRet.f32 %7177, 0
  %7187 = extractvalue %dx.types.CBufRet.f32 %7177, 1
  %7188 = fsub fast float %7184, %7186
  %7189 = fsub fast float %7185, %7187
  %7190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7191 = extractvalue %dx.types.CBufRet.f32 %7190, 0
  %7192 = fcmp fast ogt float %7191, 0.000000e+00
  %7193 = fsub fast float -0.000000e+00, %7188
  %7194 = fsub fast float -0.000000e+00, %7189
  %7195 = call float @dx.op.dot2.f32(i32 54, float %7159, float %7160, float %7159, float %7160)  ; Dot2(ax,ay,bx,by)
  %7196 = call float @dx.op.dot2.f32(i32 54, float %7159, float %7160, float %7193, float %7194)  ; Dot2(ax,ay,bx,by)
  %7197 = fmul fast float %7196, 2.000000e+00
  %7198 = call float @dx.op.dot2.f32(i32 54, float %7193, float %7194, float %7193, float %7194)  ; Dot2(ax,ay,bx,by)
  %7199 = fmul fast float %7191, %7191
  %7200 = fsub fast float %7198, %7199
  %7201 = fmul fast float %7197, %7197
  %7202 = fmul fast float %7195, 4.000000e+00
  %7203 = fmul fast float %7202, %7200
  %7204 = fsub fast float %7201, %7203
  %7205 = fcmp fast ogt float %7204, 0.000000e+00
  br i1 %7205, label %7206, label %7221

; <label>:7206                                    ; preds = %7172
  %7207 = fcmp fast ogt float %7197, 0.000000e+00
  %7208 = call float @dx.op.unary.f32(i32 24, float %7204)  ; Sqrt(value)
  %7209 = fsub fast float -0.000000e+00, %7208
  %7210 = select i1 %7207, float %7208, float %7209
  %7211 = fadd fast float %7210, %7197
  %7212 = fmul float %7211, -5.000000e-01
  %7213 = fdiv fast float %7212, %7195
  %7214 = call float @dx.op.binary.f32(i32 35, float %7213, float 0.000000e+00)  ; FMax(a,b)
  %7215 = call float @dx.op.binary.f32(i32 36, float %7158, float %7214)  ; FMin(a,b)
  %7216 = fdiv fast float %7200, %7212
  %7217 = call float @dx.op.binary.f32(i32 35, float %7216, float 0.000000e+00)  ; FMax(a,b)
  %7218 = call float @dx.op.binary.f32(i32 36, float %7158, float %7217)  ; FMin(a,b)
  %7219 = call float @dx.op.binary.f32(i32 36, float %7215, float %7218)  ; FMin(a,b)
  %7220 = call float @dx.op.binary.f32(i32 35, float %7215, float %7218)  ; FMax(a,b)
  br label %7221

; <label>:7221                                    ; preds = %7206, %7172
  %7222 = phi float [ %7220, %7206 ], [ -1.000000e+00, %7172 ]
  %7223 = phi float [ %7219, %7206 ], [ -1.000000e+00, %7172 ]
  %7224 = phi i1 [ true, %7206 ], [ false, %7172 ]
  %7225 = and i1 %7192, %7224
  br i1 %7225, label %7226, label %7228

; <label>:7226                                    ; preds = %7221
  %7227 = fcmp fast oeq float %7223, %7222
  br i1 %7227, label %7527, label %7229

; <label>:7228                                    ; preds = %7221
  br i1 %7192, label %7527, label %7229

; <label>:7229                                    ; preds = %7228, %7226
  %7230 = phi float [ %7158, %7228 ], [ %7222, %7226 ]
  %7231 = phi float [ 0.000000e+00, %7228 ], [ %7223, %7226 ]
  %7232 = icmp ne i32 %7180, 0
  %7233 = fmul fast float %7230, %7161
  %7234 = fadd fast float %7233, %7174
  %7235 = fmul fast float %7234, %7230
  %7236 = select i1 %7232, float 0.000000e+00, float %7235
  %7237 = fcmp fast oeq float %7161, 0.000000e+00
  %7238 = fdiv fast float %7179, %7161
  %7239 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7238)  ; FMax(a,b)
  %7240 = select i1 %7237, float %7230, float %7239
  %7241 = call float @dx.op.binary.f32(i32 36, float %7230, float %7240)  ; FMin(a,b)
  %7242 = fcmp fast ogt float %7161, 0.000000e+00
  %7243 = fcmp fast olt float %7179, 0.000000e+00
  br i1 %7242, label %7244, label %7301

; <label>:7244                                    ; preds = %7229
  %7245 = icmp eq i32 %7180, 0
  br i1 %7243, label %7246, label %7290

; <label>:7246                                    ; preds = %7244
  %7247 = select i1 %7245, float %7230, float 0.000000e+00
  %7248 = fsub fast float -0.000000e+00, %7247
  %7249 = call float @dx.op.unary.f32(i32 6, float %7248)  ; FAbs(value)
  %7250 = fmul fast float %7247, %7161
  %7251 = fadd fast float %7250, %7174
  %7252 = fmul fast float %7249, %7251
  %7253 = fsub fast float %7236, %7252
  %7254 = fsub fast float %7230, %7249
  %7255 = select i1 %7245, float %7254, float 0.000000e+00
  %7256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7257 = extractvalue %dx.types.CBufRet.f32 %7256, 0
  %7258 = extractvalue %dx.types.CBufRet.f32 %7256, 1
  %7259 = extractvalue %dx.types.CBufRet.f32 %7256, 2
  %7260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7261 = extractvalue %dx.types.CBufRet.f32 %7260, 0
  %7262 = extractvalue %dx.types.CBufRet.f32 %7260, 1
  %7263 = extractvalue %dx.types.CBufRet.f32 %7260, 2
  %7264 = extractvalue %dx.types.CBufRet.f32 %7260, 3
  %7265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7266 = extractvalue %dx.types.CBufRet.f32 %7265, 3
  %7267 = call float @dx.op.binary.f32(i32 36, float %7253, float %7266)  ; FMin(a,b)
  %7268 = fmul fast float %7264, %7255
  %7269 = call float @dx.op.unary.f32(i32 7, float %7268)  ; Saturate(value)
  %7270 = fsub fast float %7261, %7257
  %7271 = fsub fast float %7262, %7258
  %7272 = fsub fast float %7263, %7259
  %7273 = fmul fast float %7269, %7270
  %7274 = fmul fast float %7269, %7271
  %7275 = fmul fast float %7269, %7272
  %7276 = fadd fast float %7273, %7257
  %7277 = fadd fast float %7274, %7258
  %7278 = fadd fast float %7275, %7259
  %7279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7280 = extractvalue %dx.types.CBufRet.f32 %7279, 0
  %7281 = extractvalue %dx.types.CBufRet.f32 %7279, 1
  %7282 = fadd fast float %7281, %7280
  %7283 = call float @dx.op.unary.f32(i32 7, float %7282)  ; Saturate(value)
  %7284 = extractvalue %dx.types.CBufRet.f32 %7279, 2
  %7285 = extractvalue %dx.types.CBufRet.f32 %7279, 3
  %7286 = fadd fast float %7285, %7284
  %7287 = call float @dx.op.unary.f32(i32 7, float %7286)  ; Saturate(value)
  %7288 = fmul fast float %7283, %7267
  %7289 = fmul fast float %7288, %7287
  br label %7527

; <label>:7290                                    ; preds = %7244
  br i1 %7245, label %7291, label %7312

; <label>:7291                                    ; preds = %7290
  %7292 = call float @dx.op.binary.f32(i32 36, float %7241, float %7231)  ; FMin(a,b)
  %7293 = fsub fast float %7241, %7292
  %7294 = fsub fast float %7293, %7230
  %7295 = call float @dx.op.unary.f32(i32 6, float %7294)  ; FAbs(value)
  %7296 = fadd fast float %7293, %7230
  %7297 = fmul fast float %7296, %7161
  %7298 = fadd fast float %7297, %7174
  %7299 = fmul fast float %7298, %7295
  %7300 = fsub fast float %7236, %7299
  br label %7312

; <label>:7301                                    ; preds = %7229
  br i1 %7243, label %7302, label %7312

; <label>:7302                                    ; preds = %7301
  %7303 = call float @dx.op.binary.f32(i32 35, float %7231, float %7241)  ; FMax(a,b)
  %7304 = icmp eq i32 %7180, 0
  %7305 = select i1 %7304, float %7241, float 0.000000e+00
  %7306 = fsub fast float -0.000000e+00, %7305
  %7307 = call float @dx.op.unary.f32(i32 6, float %7306)  ; FAbs(value)
  %7308 = fmul fast float %7305, %7161
  %7309 = fadd fast float %7308, %7174
  %7310 = fmul fast float %7307, %7309
  %7311 = fsub fast float %7236, %7310
  br label %7312

; <label>:7312                                    ; preds = %7302, %7301, %7291, %7290
  %7313 = phi float [ %7231, %7290 ], [ %7231, %7291 ], [ %7303, %7302 ], [ %7231, %7301 ]
  %7314 = phi float [ 0.000000e+00, %7290 ], [ %7295, %7291 ], [ %7307, %7302 ], [ 0.000000e+00, %7301 ]
  %7315 = phi float [ %7236, %7290 ], [ %7300, %7291 ], [ %7311, %7302 ], [ %7236, %7301 ]
  %7316 = phi float [ %7241, %7290 ], [ %7241, %7291 ], [ %7230, %7302 ], [ %7230, %7301 ]
  %7317 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 0
  store float -1.000000e+00, float* %7317, align 4, !tbaa !120, !noalias !122
  %7318 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 1
  store float -1.000000e+00, float* %7318, align 4, !tbaa !120, !noalias !122
  %7319 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 2
  store float -1.000000e+00, float* %7319, align 4, !tbaa !120, !noalias !122
  %7320 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 0
  store float -1.000000e+00, float* %7320, align 4, !tbaa !120, !noalias !122
  %7321 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 1
  store float -1.000000e+00, float* %7321, align 4, !tbaa !120, !noalias !122
  %7322 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 2
  store float -1.000000e+00, float* %7322, align 4, !tbaa !120, !noalias !122
  %7323 = icmp sgt i32 %7182, 0
  br i1 %7323, label %7324, label %7385

; <label>:7324                                    ; preds = %7312
  br label %7325

; <label>:7325                                    ; preds = %7374, %7324
  %7326 = phi i32 [ %7375, %7374 ], [ 0, %7324 ]
  %7327 = phi i32 [ %7376, %7374 ], [ 0, %7324 ]
  %7328 = add nuw i32 %7327, 171
  %7329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7328)  ; CBufferLoadLegacy(handle,regIndex)
  %7330 = extractvalue %dx.types.CBufRet.f32 %7329, 0
  %7331 = extractvalue %dx.types.CBufRet.f32 %7329, 1
  %7332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7333 = extractvalue %dx.types.CBufRet.f32 %7332, 0
  %7334 = extractvalue %dx.types.CBufRet.f32 %7332, 1
  %7335 = fsub fast float %7330, %7333
  %7336 = fsub fast float %7331, %7334
  %7337 = extractvalue %dx.types.CBufRet.f32 %7329, 2
  %7338 = fsub fast float -0.000000e+00, %7335
  %7339 = fsub fast float -0.000000e+00, %7336
  %7340 = call float @dx.op.dot2.f32(i32 54, float %7159, float %7160, float %7338, float %7339)  ; Dot2(ax,ay,bx,by)
  %7341 = fmul fast float %7340, 2.000000e+00
  %7342 = call float @dx.op.dot2.f32(i32 54, float %7338, float %7339, float %7338, float %7339)  ; Dot2(ax,ay,bx,by)
  %7343 = fmul fast float %7337, %7337
  %7344 = fsub fast float %7342, %7343
  %7345 = fmul fast float %7341, %7341
  %7346 = fmul fast float %7202, %7344
  %7347 = fsub fast float %7345, %7346
  %7348 = fcmp fast ogt float %7347, 0.000000e+00
  br i1 %7348, label %7349, label %7364

; <label>:7349                                    ; preds = %7325
  %7350 = fcmp fast ogt float %7341, 0.000000e+00
  %7351 = call float @dx.op.unary.f32(i32 24, float %7347)  ; Sqrt(value)
  %7352 = fsub fast float -0.000000e+00, %7351
  %7353 = select i1 %7350, float %7351, float %7352
  %7354 = fadd fast float %7353, %7341
  %7355 = fmul float %7354, -5.000000e-01
  %7356 = fdiv fast float %7355, %7195
  %7357 = call float @dx.op.binary.f32(i32 35, float %7356, float 0.000000e+00)  ; FMax(a,b)
  %7358 = call float @dx.op.binary.f32(i32 36, float %7230, float %7357)  ; FMin(a,b)
  %7359 = fdiv fast float %7344, %7355
  %7360 = call float @dx.op.binary.f32(i32 35, float %7359, float 0.000000e+00)  ; FMax(a,b)
  %7361 = call float @dx.op.binary.f32(i32 36, float %7230, float %7360)  ; FMin(a,b)
  %7362 = call float @dx.op.binary.f32(i32 36, float %7358, float %7361)  ; FMin(a,b)
  %7363 = call float @dx.op.binary.f32(i32 35, float %7358, float %7361)  ; FMax(a,b)
  br label %7364

; <label>:7364                                    ; preds = %7349, %7325
  %7365 = phi float [ %7363, %7349 ], [ -1.000000e+00, %7325 ]
  %7366 = phi float [ %7362, %7349 ], [ -1.000000e+00, %7325 ]
  %7367 = phi i1 [ true, %7349 ], [ false, %7325 ]
  br i1 %7367, label %7368, label %7374

; <label>:7368                                    ; preds = %7364
  %7369 = call float @dx.op.binary.f32(i32 35, float %7313, float %7366)  ; FMax(a,b)
  %7370 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7327
  store float %7369, float* %7370, align 4, !tbaa !120, !noalias !122
  %7371 = call float @dx.op.binary.f32(i32 35, float %7313, float %7365)  ; FMax(a,b)
  %7372 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7327
  store float %7371, float* %7372, align 4, !tbaa !120, !noalias !122
  %7373 = add nsw i32 %7326, 1
  br label %7374

; <label>:7374                                    ; preds = %7368, %7364
  %7375 = phi i32 [ %7373, %7368 ], [ %7326, %7364 ]
  %7376 = add nuw nsw i32 %7327, 1
  %7377 = icmp eq i32 %7376, %7182
  br i1 %7377, label %7378, label %7325

; <label>:7378                                    ; preds = %7374
  %7379 = load float, float* %7319, align 4, !tbaa !120, !alias.scope !138, !noalias !141
  %7380 = load float, float* %7318, align 4, !tbaa !120, !alias.scope !144, !noalias !145
  %7381 = load float, float* %7317, align 4, !tbaa !120, !alias.scope !146, !noalias !147
  %7382 = load float, float* %7322, align 4, !tbaa !120, !alias.scope !148, !noalias !151
  %7383 = load float, float* %7321, align 4, !tbaa !120, !alias.scope !154, !noalias !155
  %7384 = load float, float* %7320, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  br label %7385

; <label>:7385                                    ; preds = %7378, %7312
  %7386 = phi float [ -1.000000e+00, %7312 ], [ %7384, %7378 ]
  %7387 = phi float [ -1.000000e+00, %7312 ], [ %7383, %7378 ]
  %7388 = phi float [ -1.000000e+00, %7312 ], [ %7382, %7378 ]
  %7389 = phi float [ -1.000000e+00, %7312 ], [ %7381, %7378 ]
  %7390 = phi float [ -1.000000e+00, %7312 ], [ %7380, %7378 ]
  %7391 = phi float [ -1.000000e+00, %7312 ], [ %7379, %7378 ]
  %7392 = phi i32 [ 0, %7312 ], [ %7375, %7378 ]
  %7393 = call float @dx.op.binary.f32(i32 36, float %7389, float %7390)  ; FMin(a,b)
  %7394 = call float @dx.op.binary.f32(i32 36, float %7393, float %7391)  ; FMin(a,b)
  %7395 = call float @dx.op.binary.f32(i32 35, float %7389, float %7390)  ; FMax(a,b)
  %7396 = call float @dx.op.binary.f32(i32 36, float %7395, float %7391)  ; FMin(a,b)
  %7397 = call float @dx.op.binary.f32(i32 35, float %7393, float %7396)  ; FMax(a,b)
  %7398 = call float @dx.op.binary.f32(i32 35, float %7395, float %7391)  ; FMax(a,b)
  store float %7394, float* %7317, align 4, !tbaa !120, !alias.scope !146, !noalias !147
  store float %7397, float* %7318, align 4, !tbaa !120, !alias.scope !144, !noalias !145
  store float %7398, float* %7319, align 4, !tbaa !120, !alias.scope !138, !noalias !141
  %7399 = call float @dx.op.binary.f32(i32 36, float %7386, float %7387)  ; FMin(a,b)
  %7400 = call float @dx.op.binary.f32(i32 36, float %7399, float %7388)  ; FMin(a,b)
  %7401 = call float @dx.op.binary.f32(i32 35, float %7386, float %7387)  ; FMax(a,b)
  %7402 = call float @dx.op.binary.f32(i32 36, float %7401, float %7388)  ; FMin(a,b)
  %7403 = call float @dx.op.binary.f32(i32 35, float %7399, float %7402)  ; FMax(a,b)
  %7404 = call float @dx.op.binary.f32(i32 35, float %7401, float %7388)  ; FMax(a,b)
  store float %7400, float* %7320, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  store float %7403, float* %7321, align 4, !tbaa !120, !alias.scope !154, !noalias !155
  store float %7404, float* %7322, align 4, !tbaa !120, !alias.scope !148, !noalias !151
  %7405 = sub nsw i32 3, %7392
  %7406 = icmp sgt i32 %7405, 2
  br i1 %7406, label %7407, label %7445

; <label>:7407                                    ; preds = %7385
  %7408 = icmp eq i32 %7180, 0
  %7409 = fsub fast float %7230, %7314
  %7410 = select i1 %7408, float %7409, float %7314
  %7411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7412 = extractvalue %dx.types.CBufRet.f32 %7411, 0
  %7413 = extractvalue %dx.types.CBufRet.f32 %7411, 1
  %7414 = extractvalue %dx.types.CBufRet.f32 %7411, 2
  %7415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7416 = extractvalue %dx.types.CBufRet.f32 %7415, 0
  %7417 = extractvalue %dx.types.CBufRet.f32 %7415, 1
  %7418 = extractvalue %dx.types.CBufRet.f32 %7415, 2
  %7419 = extractvalue %dx.types.CBufRet.f32 %7415, 3
  %7420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7421 = extractvalue %dx.types.CBufRet.f32 %7420, 3
  %7422 = call float @dx.op.binary.f32(i32 36, float %7315, float %7421)  ; FMin(a,b)
  %7423 = fmul fast float %7419, %7410
  %7424 = call float @dx.op.unary.f32(i32 7, float %7423)  ; Saturate(value)
  %7425 = fsub fast float %7416, %7412
  %7426 = fsub fast float %7417, %7413
  %7427 = fsub fast float %7418, %7414
  %7428 = fmul fast float %7424, %7425
  %7429 = fmul fast float %7424, %7426
  %7430 = fmul fast float %7424, %7427
  %7431 = fadd fast float %7428, %7412
  %7432 = fadd fast float %7429, %7413
  %7433 = fadd fast float %7430, %7414
  %7434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7435 = extractvalue %dx.types.CBufRet.f32 %7434, 0
  %7436 = extractvalue %dx.types.CBufRet.f32 %7434, 1
  %7437 = fadd fast float %7436, %7435
  %7438 = call float @dx.op.unary.f32(i32 7, float %7437)  ; Saturate(value)
  %7439 = extractvalue %dx.types.CBufRet.f32 %7434, 2
  %7440 = extractvalue %dx.types.CBufRet.f32 %7434, 3
  %7441 = fadd fast float %7440, %7439
  %7442 = call float @dx.op.unary.f32(i32 7, float %7441)  ; Saturate(value)
  %7443 = fmul fast float %7438, %7422
  %7444 = fmul fast float %7443, %7442
  br label %7527

; <label>:7445                                    ; preds = %7385
  %7446 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7405
  %7447 = load float, float* %7446, align 4, !tbaa !120, !noalias !122
  %7448 = fcmp fast olt float %7447, %7316
  %7449 = icmp sgt i32 %7392, 0
  %7450 = and i1 %7449, %7448
  br i1 %7450, label %7451, label %7488

; <label>:7451                                    ; preds = %7445
  br label %7452

; <label>:7452                                    ; preds = %7481, %7451
  %7453 = phi float [ %7482, %7481 ], [ %7314, %7451 ]
  %7454 = phi float [ %7483, %7481 ], [ %7315, %7451 ]
  %7455 = phi float [ %7463, %7481 ], [ %7447, %7451 ]
  %7456 = phi i32 [ %7460, %7481 ], [ %7405, %7451 ]
  %7457 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7456
  %7458 = load float, float* %7457, align 4, !tbaa !120, !noalias !122
  %7459 = icmp slt i32 %7456, 2
  %7460 = add nsw i32 %7456, 1
  %7461 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7460
  %7462 = load float, float* %7461, align 4, !tbaa !120, !noalias !122
  %7463 = select i1 %7459, float %7462, float %7230
  %7464 = call float @dx.op.binary.f32(i32 36, float %7463, float %7458)  ; FMin(a,b)
  %7465 = call float @dx.op.binary.f32(i32 36, float %7316, float %7464)  ; FMin(a,b)
  %7466 = icmp eq i32 %7180, 0
  %7467 = fadd fast float %7465, %7455
  %7468 = fmul fast float %7467, %7161
  %7469 = fadd fast float %7468, %7174
  br i1 %7466, label %7475, label %7470

; <label>:7470                                    ; preds = %7452
  %7471 = fsub fast float %7465, %7455
  %7472 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7471)  ; FMax(a,b)
  %7473 = fmul fast float %7472, %7469
  %7474 = fadd fast float %7473, %7454
  br label %7481

; <label>:7475                                    ; preds = %7452
  %7476 = fsub fast float %7455, %7465
  %7477 = call float @dx.op.unary.f32(i32 6, float %7476)  ; FAbs(value)
  %7478 = fadd fast float %7477, %7453
  %7479 = fmul fast float %7477, %7469
  %7480 = fsub fast float %7454, %7479
  br label %7481

; <label>:7481                                    ; preds = %7475, %7470
  %7482 = phi float [ %7472, %7470 ], [ %7478, %7475 ]
  %7483 = phi float [ %7474, %7470 ], [ %7480, %7475 ]
  %7484 = fcmp fast olt float %7463, %7316
  %7485 = icmp slt i32 %7460, 3
  %7486 = and i1 %7485, %7484
  br i1 %7486, label %7452, label %7487

; <label>:7487                                    ; preds = %7481
  br label %7488

; <label>:7488                                    ; preds = %7487, %7445
  %7489 = phi float [ %7314, %7445 ], [ %7482, %7487 ]
  %7490 = phi float [ %7315, %7445 ], [ %7483, %7487 ]
  %7491 = fsub fast float %7230, %7489
  %7492 = select i1 %7232, float %7489, float %7491
  %7493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7494 = extractvalue %dx.types.CBufRet.f32 %7493, 0
  %7495 = extractvalue %dx.types.CBufRet.f32 %7493, 1
  %7496 = extractvalue %dx.types.CBufRet.f32 %7493, 2
  %7497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7498 = extractvalue %dx.types.CBufRet.f32 %7497, 0
  %7499 = extractvalue %dx.types.CBufRet.f32 %7497, 1
  %7500 = extractvalue %dx.types.CBufRet.f32 %7497, 2
  %7501 = extractvalue %dx.types.CBufRet.f32 %7497, 3
  %7502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7503 = extractvalue %dx.types.CBufRet.f32 %7502, 3
  %7504 = call float @dx.op.binary.f32(i32 36, float %7490, float %7503)  ; FMin(a,b)
  %7505 = fmul fast float %7501, %7492
  %7506 = call float @dx.op.unary.f32(i32 7, float %7505)  ; Saturate(value)
  %7507 = fsub fast float %7498, %7494
  %7508 = fsub fast float %7499, %7495
  %7509 = fsub fast float %7500, %7496
  %7510 = fmul fast float %7506, %7507
  %7511 = fmul fast float %7506, %7508
  %7512 = fmul fast float %7506, %7509
  %7513 = fadd fast float %7510, %7494
  %7514 = fadd fast float %7511, %7495
  %7515 = fadd fast float %7512, %7496
  %7516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7517 = extractvalue %dx.types.CBufRet.f32 %7516, 0
  %7518 = extractvalue %dx.types.CBufRet.f32 %7516, 1
  %7519 = fadd fast float %7518, %7517
  %7520 = call float @dx.op.unary.f32(i32 7, float %7519)  ; Saturate(value)
  %7521 = extractvalue %dx.types.CBufRet.f32 %7516, 2
  %7522 = extractvalue %dx.types.CBufRet.f32 %7516, 3
  %7523 = fadd fast float %7522, %7521
  %7524 = call float @dx.op.unary.f32(i32 7, float %7523)  ; Saturate(value)
  %7525 = fmul fast float %7520, %7504
  %7526 = fmul fast float %7525, %7524
  br label %7527

; <label>:7527                                    ; preds = %7488, %7407, %7246, %7228, %7226
  %7528 = phi float [ %7255, %7246 ], [ %7410, %7407 ], [ %7492, %7488 ], [ 0.000000e+00, %7226 ], [ 0.000000e+00, %7228 ]
  %7529 = phi float [ %7289, %7246 ], [ %7444, %7407 ], [ %7526, %7488 ], [ 0.000000e+00, %7226 ], [ 0.000000e+00, %7228 ]
  %7530 = phi float [ %7276, %7246 ], [ %7431, %7407 ], [ %7513, %7488 ], [ 0.000000e+00, %7226 ], [ 0.000000e+00, %7228 ]
  %7531 = phi float [ %7277, %7246 ], [ %7432, %7407 ], [ %7514, %7488 ], [ 0.000000e+00, %7226 ], [ 0.000000e+00, %7228 ]
  %7532 = phi float [ %7278, %7246 ], [ %7433, %7407 ], [ %7515, %7488 ], [ 0.000000e+00, %7226 ], [ 0.000000e+00, %7228 ]
  %7533 = fmul fast float %7169, %7529
  %7534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7535 = extractvalue %dx.types.CBufRet.f32 %7534, 2
  %7536 = fsub fast float %7176, %7535
  %7537 = fcmp fast olt float %7533, -2.000000e+01
  %7538 = call float @dx.op.unary.f32(i32 21, float %7533)  ; Exp(value)
  %7539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7540 = extractvalue %dx.types.CBufRet.f32 %7539, 2
  %7541 = extractvalue %dx.types.CBufRet.f32 %7539, 3
  %7542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7543 = extractvalue %dx.types.CBufRet.f32 %7542, 2
  %7544 = fmul fast float %7541, %7536
  %7545 = call float @dx.op.unary.f32(i32 7, float %7544)  ; Saturate(value)
  %7546 = fsub fast float 1.000000e+00, %7545
  %7547 = fmul fast float %7161, 5.000000e-01
  %7548 = fadd fast float %7547, 5.000000e-01
  %7549 = call float @dx.op.unary.f32(i32 7, float %7548)  ; Saturate(value)
  %7550 = fsub fast float 1.000000e+00, %7549
  %7551 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7546)  ; FMax(a,b)
  %7552 = fdiv fast float %7550, %7551
  %7553 = fsub fast float %7536, %7118
  %7554 = call float @dx.op.unary.f32(i32 6, float %7553)  ; FAbs(value)
  %7555 = fmul fast float %7554, %7540
  %7556 = call float @dx.op.unary.f32(i32 7, float %7552)  ; Saturate(value)
  %7557 = fsub fast float 1.000000e+00, %7555
  %7558 = fmul fast float %7557, %7556
  %7559 = fadd fast float %7558, %7555
  %7560 = fmul fast float %7543, %7536
  %7561 = call float @dx.op.unary.f32(i32 7, float %7560)  ; Saturate(value)
  %7562 = fsub fast float 1.000000e+00, %7559
  %7563 = fmul fast float %7562, %7561
  %7564 = fadd fast float %7563, %7559
  %7565 = call float @dx.op.unary.f32(i32 7, float %7564)  ; Saturate(value)
  %7566 = fadd fast float %7538, -1.000000e+00
  %7567 = select i1 %7537, float -1.000000e+00, float %7566
  %7568 = fmul fast float %7565, %7567
  %7569 = fadd fast float %7568, 1.000000e+00
  %7570 = fsub fast float -0.000000e+00, %7568
  %7571 = fmul fast float %7530, %7570
  %7572 = fmul fast float %7531, %7570
  %7573 = fmul fast float %7532, %7570
  br label %7574

; <label>:7574                                    ; preds = %7527, %7127
  %7575 = phi float [ %7528, %7527 ], [ 0.000000e+00, %7127 ]
  %7576 = phi float [ %7569, %7527 ], [ 1.000000e+00, %7127 ]
  %7577 = phi float [ %7571, %7527 ], [ 0.000000e+00, %7127 ]
  %7578 = phi float [ %7572, %7527 ], [ 0.000000e+00, %7127 ]
  %7579 = phi float [ %7573, %7527 ], [ 0.000000e+00, %7127 ]
  %7580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7581 = extractvalue %dx.types.CBufRet.f32 %7580, 1
  %7582 = fsub fast float 1.000000e+00, %7576
  %7583 = fmul fast float %7582, %7162
  %7584 = fmul fast float %7583, %7581
  %7585 = fsub fast float %7162, %7584
  br i1 %7155, label %7586, label %7615, !dx.controlflow.hints !158

; <label>:7586                                    ; preds = %7574
  %7587 = fmul fast float %7163, %7152
  %7588 = fadd fast float %7587, %7153
  %7589 = call float @dx.op.unary.f32(i32 7, float %7588)  ; Saturate(value)
  %7590 = fmul fast float %7134, %7585
  %7591 = fsub fast float -0.000000e+00, %7590
  %7592 = fmul fast float %7135, %7585
  %7593 = fsub fast float -0.000000e+00, %7592
  %7594 = call float @dx.op.unary.f32(i32 21, float %7591)  ; Exp(value)
  %7595 = call float @dx.op.unary.f32(i32 21, float %7593)  ; Exp(value)
  %7596 = call float @dx.op.binary.f32(i32 35, float %7142, float %7594)  ; FMax(a,b)
  %7597 = call float @dx.op.binary.f32(i32 35, float %7142, float %7595)  ; FMax(a,b)
  %7598 = fsub fast float %7597, %7596
  %7599 = fmul fast float %7598, %7589
  %7600 = fadd fast float %7599, %7596
  %7601 = call float @dx.op.unary.f32(i32 7, float %7600)  ; Saturate(value)
  %7602 = fsub fast float %7139, %7144
  %7603 = fsub fast float %7140, %7145
  %7604 = fsub fast float %7141, %7146
  %7605 = fmul fast float %7589, %7602
  %7606 = fmul fast float %7589, %7603
  %7607 = fmul fast float %7589, %7604
  %7608 = fadd fast float %7605, %7144
  %7609 = fadd fast float %7606, %7145
  %7610 = fadd fast float %7607, %7146
  %7611 = fsub fast float 1.000000e+00, %7601
  %7612 = fmul fast float %7611, %7608
  %7613 = fmul fast float %7611, %7609
  %7614 = fmul fast float %7611, %7610
  br label %7674

; <label>:7615                                    ; preds = %7574
  %7616 = fmul fast float %7585, %7151
  %7617 = call float @dx.op.unary.f32(i32 7, float %7616)  ; Saturate(value)
  %7618 = fsub fast float 2.000000e+00, %7617
  %7619 = fmul fast float %7617, 9.921875e-01
  %7620 = fmul fast float %7619, %7618
  %7621 = fadd fast float %7620, 3.906250e-03
  %7622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7621, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7623 = extractvalue %dx.types.ResRet.f32 %7622, 0
  %7624 = fsub fast float %7617, %7623
  %7625 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7624)  ; FMax(a,b)
  %7626 = fmul fast float %7137, %7118
  %7627 = call float @dx.op.unary.f32(i32 6, float %7626)  ; FAbs(value)
  %7628 = fcmp fast ogt float %7627, 0x3EB0C6F7A0000000
  br i1 %7628, label %7629, label %7635, !dx.controlflow.hints !159

; <label>:7629                                    ; preds = %7615
  %7630 = fmul fast float %7626, 0xBFF7154760000000
  %7631 = call float @dx.op.unary.f32(i32 21, float %7630)  ; Exp(value)
  %7632 = fsub fast float 1.000000e+00, %7631
  %7633 = fdiv fast float %7632, %7626
  %7634 = fmul fast float %7633, %7147
  br label %7635

; <label>:7635                                    ; preds = %7629, %7615
  %7636 = phi float [ %7634, %7629 ], [ %7147, %7615 ]
  %7637 = fadd fast float %7636, %7149
  %7638 = fmul fast float %7637, %7625
  %7639 = fmul fast float %7134, %7638
  %7640 = fsub fast float -0.000000e+00, %7639
  %7641 = fmul fast float %7135, %7638
  %7642 = fsub fast float -0.000000e+00, %7641
  %7643 = fmul fast float %7136, %7638
  %7644 = fsub fast float -0.000000e+00, %7643
  %7645 = call float @dx.op.unary.f32(i32 21, float %7640)  ; Exp(value)
  %7646 = call float @dx.op.unary.f32(i32 21, float %7642)  ; Exp(value)
  %7647 = call float @dx.op.unary.f32(i32 21, float %7644)  ; Exp(value)
  %7648 = fmul fast float %7163, %7163
  %7649 = fadd fast float %7648, 1.000000e+00
  %7650 = fmul fast float %7649, 0x3FAE8EC8A0000000
  %7651 = fmul fast float %7650, %7144
  %7652 = fmul fast float %7650, %7145
  %7653 = fmul fast float %7650, %7146
  %7654 = fmul fast float %7163, %7142
  %7655 = fsub fast float 1.000000e+00, %7654
  %7656 = fmul fast float %7142, %7142
  %7657 = fsub fast float 1.000000e+00, %7656
  %7658 = fmul fast float %7657, 0x3FB45F3060000000
  %7659 = fmul fast float %7655, %7655
  %7660 = fdiv fast float 1.000000e+00, %7659
  %7661 = fmul fast float %7658, %7660
  %7662 = fmul fast float %7661, %7139
  %7663 = fmul fast float %7661, %7140
  %7664 = fmul fast float %7661, %7141
  %7665 = fadd fast float %7662, %7651
  %7666 = fadd fast float %7663, %7652
  %7667 = fadd fast float %7664, %7653
  %7668 = fsub fast float 1.000000e+00, %7645
  %7669 = fsub fast float 1.000000e+00, %7646
  %7670 = fsub fast float 1.000000e+00, %7647
  %7671 = fmul fast float %7665, %7668
  %7672 = fmul fast float %7666, %7669
  %7673 = fmul fast float %7667, %7670
  br label %7674

; <label>:7674                                    ; preds = %7635, %7586
  %7675 = phi float [ %7612, %7586 ], [ %7671, %7635 ]
  %7676 = phi float [ %7613, %7586 ], [ %7672, %7635 ]
  %7677 = phi float [ %7614, %7586 ], [ %7673, %7635 ]
  %7678 = phi float [ %7601, %7586 ], [ %7645, %7635 ]
  %7679 = phi float [ %7601, %7586 ], [ %7646, %7635 ]
  %7680 = phi float [ %7601, %7586 ], [ %7647, %7635 ]
  br i1 %7171, label %7681, label %7879, !dx.controlflow.hints !160

; <label>:7681                                    ; preds = %7674
  %7682 = extractvalue %dx.types.CBufRet.f32 %7580, 0
  %7683 = fmul fast float %7682, %7582
  %7684 = fsub fast float %7577, %7675
  %7685 = fsub fast float %7578, %7676
  %7686 = fsub fast float %7579, %7677
  %7687 = fmul fast float %7683, %7684
  %7688 = fmul fast float %7683, %7685
  %7689 = fmul fast float %7683, %7686
  %7690 = fadd fast float %7687, %7675
  %7691 = fadd fast float %7688, %7676
  %7692 = fadd fast float %7689, %7677
  %7693 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7678)  ; FMax(a,b)
  %7694 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7679)  ; FMax(a,b)
  %7695 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7680)  ; FMax(a,b)
  %7696 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7576)  ; FMax(a,b)
  %7697 = call float @dx.op.binary.f32(i32 35, float %7575, float %7585)  ; FMax(a,b)
  %7698 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7697)  ; FMax(a,b)
  %7699 = fdiv fast float %7575, %7698
  %7700 = call float @dx.op.unary.f32(i32 7, float %7699)  ; Saturate(value)
  %7701 = fdiv fast float %7585, %7698
  %7702 = call float @dx.op.unary.f32(i32 7, float %7701)  ; Saturate(value)
  %7703 = fcmp fast une float %7696, 1.000000e+00
  br i1 %7703, label %7704, label %7717, !dx.controlflow.hints !161

; <label>:7704                                    ; preds = %7681
  %7705 = call float @dx.op.unary.f32(i32 23, float %7696)  ; Log(value)
  %7706 = fmul fast float %7705, 0x3FE62E4300000000
  %7707 = fmul fast float %7577, %7706
  %7708 = fsub fast float -0.000000e+00, %7707
  %7709 = fmul fast float %7578, %7706
  %7710 = fsub fast float -0.000000e+00, %7709
  %7711 = fmul fast float %7579, %7706
  %7712 = fsub fast float -0.000000e+00, %7711
  %7713 = fsub fast float 1.000000e+00, %7696
  %7714 = fdiv fast float %7708, %7713
  %7715 = fdiv fast float %7710, %7713
  %7716 = fdiv fast float %7712, %7713
  br label %7717

; <label>:7717                                    ; preds = %7704, %7681
  %7718 = phi float [ %7714, %7704 ], [ %7577, %7681 ]
  %7719 = phi float [ %7715, %7704 ], [ %7578, %7681 ]
  %7720 = phi float [ %7716, %7704 ], [ %7579, %7681 ]
  %7721 = phi float [ %7706, %7704 ], [ 0.000000e+00, %7681 ]
  %7722 = fcmp fast une float %7693, 1.000000e+00
  br i1 %7722, label %7723, label %7730, !dx.controlflow.hints !162

; <label>:7723                                    ; preds = %7717
  %7724 = call float @dx.op.unary.f32(i32 23, float %7693)  ; Log(value)
  %7725 = fmul fast float %7724, 0x3FE62E4300000000
  %7726 = fmul fast float %7690, %7725
  %7727 = fsub fast float -0.000000e+00, %7726
  %7728 = fsub fast float 1.000000e+00, %7693
  %7729 = fdiv fast float %7727, %7728
  br label %7730

; <label>:7730                                    ; preds = %7723, %7717
  %7731 = phi float [ %7729, %7723 ], [ %7690, %7717 ]
  %7732 = phi float [ %7725, %7723 ], [ 0.000000e+00, %7717 ]
  %7733 = fcmp fast une float %7694, 1.000000e+00
  br i1 %7733, label %7734, label %7741, !dx.controlflow.hints !162

; <label>:7734                                    ; preds = %7730
  %7735 = call float @dx.op.unary.f32(i32 23, float %7694)  ; Log(value)
  %7736 = fmul fast float %7735, 0x3FE62E4300000000
  %7737 = fmul fast float %7691, %7736
  %7738 = fsub fast float -0.000000e+00, %7737
  %7739 = fsub fast float 1.000000e+00, %7694
  %7740 = fdiv fast float %7738, %7739
  br label %7741

; <label>:7741                                    ; preds = %7734, %7730
  %7742 = phi float [ %7740, %7734 ], [ %7691, %7730 ]
  %7743 = phi float [ %7736, %7734 ], [ 0.000000e+00, %7730 ]
  %7744 = fcmp fast une float %7695, 1.000000e+00
  br i1 %7744, label %7745, label %7752, !dx.controlflow.hints !162

; <label>:7745                                    ; preds = %7741
  %7746 = call float @dx.op.unary.f32(i32 23, float %7695)  ; Log(value)
  %7747 = fmul fast float %7746, 0x3FE62E4300000000
  %7748 = fmul fast float %7692, %7747
  %7749 = fsub fast float -0.000000e+00, %7748
  %7750 = fsub fast float 1.000000e+00, %7695
  %7751 = fdiv fast float %7749, %7750
  br label %7752

; <label>:7752                                    ; preds = %7745, %7741
  %7753 = phi float [ %7751, %7745 ], [ %7692, %7741 ]
  %7754 = phi float [ %7747, %7745 ], [ 0.000000e+00, %7741 ]
  %7755 = fmul fast float %7718, %7702
  %7756 = fmul fast float %7719, %7702
  %7757 = fmul fast float %7720, %7702
  %7758 = fmul fast float %7721, %7702
  %7759 = fmul fast float %7731, %7700
  %7760 = fmul fast float %7742, %7700
  %7761 = fmul fast float %7753, %7700
  %7762 = fmul fast float %7732, %7700
  %7763 = fmul fast float %7743, %7700
  %7764 = fmul fast float %7754, %7700
  %7765 = fadd fast float %7759, %7755
  %7766 = fadd fast float %7760, %7756
  %7767 = fadd fast float %7761, %7757
  %7768 = fadd fast float %7762, %7758
  %7769 = fadd fast float %7763, %7758
  %7770 = fadd fast float %7764, %7758
  %7771 = fcmp fast une float %7768, 0.000000e+00
  br i1 %7771, label %7772, label %7779, !dx.controlflow.hints !163

; <label>:7772                                    ; preds = %7752
  %7773 = fmul fast float %7768, 0x3FF7154760000000
  %7774 = call float @dx.op.unary.f32(i32 21, float %7773)  ; Exp(value)
  %7775 = fsub fast float 1.000000e+00, %7774
  %7776 = fmul fast float %7765, %7775
  %7777 = fsub fast float -0.000000e+00, %7776
  %7778 = fdiv fast float %7777, %7768
  br label %7779

; <label>:7779                                    ; preds = %7772, %7752
  %7780 = phi float [ %7774, %7772 ], [ 1.000000e+00, %7752 ]
  %7781 = phi float [ %7778, %7772 ], [ %7765, %7752 ]
  %7782 = fcmp fast une float %7769, 0.000000e+00
  br i1 %7782, label %7783, label %7790, !dx.controlflow.hints !163

; <label>:7783                                    ; preds = %7779
  %7784 = fmul fast float %7769, 0x3FF7154760000000
  %7785 = call float @dx.op.unary.f32(i32 21, float %7784)  ; Exp(value)
  %7786 = fsub fast float 1.000000e+00, %7785
  %7787 = fmul fast float %7766, %7786
  %7788 = fsub fast float -0.000000e+00, %7787
  %7789 = fdiv fast float %7788, %7769
  br label %7790

; <label>:7790                                    ; preds = %7783, %7779
  %7791 = phi float [ %7785, %7783 ], [ 1.000000e+00, %7779 ]
  %7792 = phi float [ %7789, %7783 ], [ %7766, %7779 ]
  %7793 = fcmp fast une float %7770, 0.000000e+00
  br i1 %7793, label %7794, label %7801, !dx.controlflow.hints !163

; <label>:7794                                    ; preds = %7790
  %7795 = fmul fast float %7770, 0x3FF7154760000000
  %7796 = call float @dx.op.unary.f32(i32 21, float %7795)  ; Exp(value)
  %7797 = fsub fast float 1.000000e+00, %7796
  %7798 = fmul fast float %7767, %7797
  %7799 = fsub fast float -0.000000e+00, %7798
  %7800 = fdiv fast float %7799, %7770
  br label %7801

; <label>:7801                                    ; preds = %7794, %7790
  %7802 = phi float [ %7796, %7794 ], [ 1.000000e+00, %7790 ]
  %7803 = phi float [ %7800, %7794 ], [ %7767, %7790 ]
  %7804 = fcmp fast ogt float %7700, %7702
  br i1 %7804, label %7805, label %7825

; <label>:7805                                    ; preds = %7801
  %7806 = fsub fast float 1.000000e+00, %7702
  %7807 = fmul fast float %7718, %7806
  %7808 = fmul fast float %7719, %7806
  %7809 = fmul fast float %7720, %7806
  %7810 = fmul fast float %7721, %7806
  %7811 = fcmp fast une float %7810, 0.000000e+00
  br i1 %7811, label %7812, label %7863, !dx.controlflow.hints !164

; <label>:7812                                    ; preds = %7805
  %7813 = fmul fast float %7810, 0x3FF7154760000000
  %7814 = call float @dx.op.unary.f32(i32 21, float %7813)  ; Exp(value)
  %7815 = fsub fast float 1.000000e+00, %7814
  %7816 = fmul fast float %7807, %7815
  %7817 = fsub fast float -0.000000e+00, %7816
  %7818 = fmul fast float %7808, %7815
  %7819 = fsub fast float -0.000000e+00, %7818
  %7820 = fmul fast float %7809, %7815
  %7821 = fsub fast float -0.000000e+00, %7820
  %7822 = fdiv fast float %7817, %7810
  %7823 = fdiv fast float %7819, %7810
  %7824 = fdiv fast float %7821, %7810
  br label %7863

; <label>:7825                                    ; preds = %7801
  %7826 = fsub fast float 1.000000e+00, %7700
  %7827 = fmul fast float %7731, %7826
  %7828 = fmul fast float %7742, %7826
  %7829 = fmul fast float %7753, %7826
  %7830 = fmul fast float %7732, %7826
  %7831 = fmul fast float %7743, %7826
  %7832 = fmul fast float %7754, %7826
  %7833 = fcmp fast une float %7830, 0.000000e+00
  br i1 %7833, label %7834, label %7841, !dx.controlflow.hints !163

; <label>:7834                                    ; preds = %7825
  %7835 = fmul fast float %7830, 0x3FF7154760000000
  %7836 = call float @dx.op.unary.f32(i32 21, float %7835)  ; Exp(value)
  %7837 = fsub fast float 1.000000e+00, %7836
  %7838 = fmul fast float %7827, %7837
  %7839 = fsub fast float -0.000000e+00, %7838
  %7840 = fdiv fast float %7839, %7830
  br label %7841

; <label>:7841                                    ; preds = %7834, %7825
  %7842 = phi float [ %7840, %7834 ], [ %7827, %7825 ]
  %7843 = phi float [ %7836, %7834 ], [ 1.000000e+00, %7825 ]
  %7844 = fcmp fast une float %7831, 0.000000e+00
  br i1 %7844, label %7845, label %7852, !dx.controlflow.hints !163

; <label>:7845                                    ; preds = %7841
  %7846 = fmul fast float %7831, 0x3FF7154760000000
  %7847 = call float @dx.op.unary.f32(i32 21, float %7846)  ; Exp(value)
  %7848 = fsub fast float 1.000000e+00, %7847
  %7849 = fmul fast float %7828, %7848
  %7850 = fsub fast float -0.000000e+00, %7849
  %7851 = fdiv fast float %7850, %7831
  br label %7852

; <label>:7852                                    ; preds = %7845, %7841
  %7853 = phi float [ %7851, %7845 ], [ %7828, %7841 ]
  %7854 = phi float [ %7847, %7845 ], [ 1.000000e+00, %7841 ]
  %7855 = fcmp fast une float %7832, 0.000000e+00
  br i1 %7855, label %7856, label %7863, !dx.controlflow.hints !163

; <label>:7856                                    ; preds = %7852
  %7857 = fmul fast float %7832, 0x3FF7154760000000
  %7858 = call float @dx.op.unary.f32(i32 21, float %7857)  ; Exp(value)
  %7859 = fsub fast float 1.000000e+00, %7858
  %7860 = fmul fast float %7829, %7859
  %7861 = fsub fast float -0.000000e+00, %7860
  %7862 = fdiv fast float %7861, %7832
  br label %7863

; <label>:7863                                    ; preds = %7856, %7852, %7812, %7805
  %7864 = phi float [ %7862, %7856 ], [ %7824, %7812 ], [ %7809, %7805 ], [ %7829, %7852 ]
  %7865 = phi float [ %7853, %7856 ], [ %7823, %7812 ], [ %7808, %7805 ], [ %7853, %7852 ]
  %7866 = phi float [ %7842, %7856 ], [ %7822, %7812 ], [ %7807, %7805 ], [ %7842, %7852 ]
  %7867 = phi float [ %7858, %7856 ], [ %7814, %7812 ], [ 1.000000e+00, %7805 ], [ 1.000000e+00, %7852 ]
  %7868 = phi float [ %7854, %7856 ], [ %7814, %7812 ], [ 1.000000e+00, %7805 ], [ %7854, %7852 ]
  %7869 = phi float [ %7843, %7856 ], [ %7814, %7812 ], [ 1.000000e+00, %7805 ], [ %7843, %7852 ]
  %7870 = fmul fast float %7869, %7781
  %7871 = fmul fast float %7868, %7792
  %7872 = fmul fast float %7867, %7803
  %7873 = fadd fast float %7870, %7866
  %7874 = fadd fast float %7871, %7865
  %7875 = fadd fast float %7872, %7864
  %7876 = fmul fast float %7869, %7780
  %7877 = fmul fast float %7868, %7791
  %7878 = fmul fast float %7867, %7802
  br label %7879

; <label>:7879                                    ; preds = %7863, %7674
  %7880 = phi float [ %7878, %7863 ], [ %7680, %7674 ]
  %7881 = phi float [ %7877, %7863 ], [ %7679, %7674 ]
  %7882 = phi float [ %7876, %7863 ], [ %7678, %7674 ]
  %7883 = phi float [ %7875, %7863 ], [ %7677, %7674 ]
  %7884 = phi float [ %7874, %7863 ], [ %7676, %7674 ]
  %7885 = phi float [ %7873, %7863 ], [ %7675, %7674 ]
  %7886 = fmul fast float %7885, %6845
  %7887 = fmul fast float %7884, %6845
  %7888 = fmul fast float %7883, %6845
  %7889 = fmul fast float %7882, %7126
  %7890 = call float @dx.op.dot3.f32(i32 55, float %7882, float %7881, float %7880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7891 = call float @dx.op.dot3.f32(i32 55, float %7886, float %7887, float %7888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7892 = select i1 %252, float %7890, float %7882
  %7893 = select i1 %252, float %7890, float %7881
  %7894 = select i1 %252, float 1.000000e+00, float %7880
  %7895 = select i1 %252, float %7891, float %7886
  %7896 = select i1 %252, float 0.000000e+00, float %7887
  %7897 = select i1 %252, float 0.000000e+00, float %7888
  %7898 = fmul fast float %7892, %7120
  %7899 = fmul fast float %7893, %7121
  %7900 = fmul fast float %7894, %7122
  %7901 = fadd fast float %7898, %7895
  %7902 = fadd fast float %7899, %7896
  %7903 = fadd fast float %7897, %7900
  %7904 = fmul fast float %7892, %7123
  %7905 = fmul fast float %7893, %7124
  %7906 = fmul fast float %7894, %7125
  %7907 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7908 = extractvalue %dx.types.CBufRet.i32 %7907, 0
  %7909 = icmp eq i32 %7908, 0
  br i1 %7909, label %8277, label %7910, !dx.controlflow.hints !165

; <label>:7910                                    ; preds = %7879
  %7911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %7912 = extractvalue %dx.types.CBufRet.f32 %7911, 2
  %7913 = extractvalue %dx.types.CBufRet.f32 %7911, 3
  %7914 = fmul fast float %7912, %95
  %7915 = fmul fast float %7913, %96
  %7916 = fmul fast float %7914, 2.000000e+00
  %7917 = fmul fast float %7915, 2.000000e+00
  %7918 = fsub fast float 1.000000e+00, %7916
  %7919 = fsub fast float 1.000000e+00, %7917
  %7920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7921 = extractvalue %dx.types.CBufRet.f32 %7920, 0
  %7922 = extractvalue %dx.types.CBufRet.f32 %7920, 1
  %7923 = extractvalue %dx.types.CBufRet.f32 %7920, 2
  %7924 = fmul fast float %7918, %7921
  %7925 = fmul fast float %7918, %7922
  %7926 = fmul fast float %7918, %7923
  %7927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7928 = extractvalue %dx.types.CBufRet.f32 %7927, 0
  %7929 = extractvalue %dx.types.CBufRet.f32 %7927, 1
  %7930 = extractvalue %dx.types.CBufRet.f32 %7927, 2
  %7931 = fmul fast float %7919, %7928
  %7932 = fmul fast float %7919, %7929
  %7933 = fmul fast float %7919, %7930
  %7934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7935 = extractvalue %dx.types.CBufRet.f32 %7934, 0
  %7936 = extractvalue %dx.types.CBufRet.f32 %7934, 1
  %7937 = extractvalue %dx.types.CBufRet.f32 %7934, 2
  %7938 = fadd fast float %7931, %7935
  %7939 = fadd fast float %7938, %7924
  %7940 = fadd fast float %7932, %7936
  %7941 = fadd fast float %7940, %7925
  %7942 = fadd fast float %7933, %7937
  %7943 = fadd fast float %7942, %7926
  %7944 = fmul fast float %7939, %7119
  %7945 = fmul fast float %7941, %7119
  %7946 = fmul fast float %7943, %7119
  %7947 = fmul fast float %7944, %7944
  %7948 = fmul fast float %7945, %7945
  %7949 = fadd fast float %7947, %7948
  %7950 = fmul fast float %7946, %7946
  %7951 = fadd fast float %7949, %7950
  %7952 = call float @dx.op.unary.f32(i32 24, float %7951)  ; Sqrt(value)
  %7953 = extractvalue %dx.types.CBufRet.f32 %6846, 0
  %7954 = fsub fast float %7952, %7953
  %7955 = extractvalue %dx.types.CBufRet.f32 %6846, 2
  %7956 = fmul fast float %7954, %7955
  %7957 = call float @dx.op.unary.f32(i32 7, float %7956)  ; Saturate(value)
  %7958 = fadd fast float %7957, -5.000000e-01
  %7959 = fmul fast float %7958, 2.000000e+00
  %7960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7961 = extractvalue %dx.types.CBufRet.f32 %7960, 2
  %7962 = call float @dx.op.binary.f32(i32 36, float %7961, float %7959)  ; FMin(a,b)
  %7963 = fsub fast float -0.000000e+00, %7961
  %7964 = fcmp fast ogt float %7962, %7963
  br i1 %7964, label %7965, label %8277, !dx.controlflow.hints !166

; <label>:7965                                    ; preds = %7910
  %7966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7967 = extractvalue %dx.types.CBufRet.f32 %7966, 3
  %7968 = fcmp fast ogt float %7967, 0.000000e+00
  br i1 %7968, label %7969, label %8044, !dx.controlflow.hints !167

; <label>:7969                                    ; preds = %7965
  %7970 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %7971 = extractvalue %dx.types.Dimensions %7970, 0
  %7972 = sitofp i32 %7971 to float
  %7973 = extractvalue %dx.types.Dimensions %7970, 1
  %7974 = sitofp i32 %7973 to float
  %7975 = fmul fast float %7914, %7972
  %7976 = fmul fast float %7915, %7974
  %7977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7978 = extractvalue %dx.types.CBufRet.f32 %7977, 1
  %7979 = fsub fast float -0.000000e+00, %7978
  %7980 = fptoui float %7979 to i32
  %7981 = fptoui float %7975 to i32
  %7982 = fptoui float %7976 to i32
  %7983 = and i32 %7980, 31
  %7984 = lshr i32 %7981, %7983
  %7985 = lshr i32 %7982, %7983
  %7986 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %7980, i32 %7984, i32 %7985, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7987 = extractvalue %dx.types.ResRet.f32 %7986, 0
  %7988 = fcmp fast olt float %7987, -1.000000e+00
  %7989 = fcmp fast ogt float %7987, -1.000000e+00
  %7990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7991 = extractvalue %dx.types.CBufRet.f32 %7990, 1
  %7992 = select i1 %7989, float %7991, float 1.000000e+00
  %7993 = fadd fast float %7987, 1.000000e+00
  %7994 = fmul fast float %7992, %7993
  %7995 = call float @dx.op.unary.f32(i32 6, float %7994)  ; FAbs(value)
  %7996 = extractvalue %dx.types.CBufRet.f32 %7990, 3
  %7997 = fcmp fast oge float %7995, %7996
  %7998 = select i1 %7997, float 0x4197782600000000, float %7995
  %7999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8000 = extractvalue %dx.types.CBufRet.f32 %7999, 0
  %8001 = extractvalue %dx.types.CBufRet.f32 %7999, 1
  %8002 = extractvalue %dx.types.CBufRet.f32 %7999, 2
  %8003 = select i1 %7988, float %8000, float %7921
  %8004 = select i1 %7988, float %8001, float %7922
  %8005 = select i1 %7988, float %8002, float %7923
  %8006 = fmul fast float %8003, %7918
  %8007 = fmul fast float %8004, %7918
  %8008 = fmul fast float %8005, %7918
  %8009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8010 = extractvalue %dx.types.CBufRet.f32 %8009, 0
  %8011 = extractvalue %dx.types.CBufRet.f32 %8009, 1
  %8012 = extractvalue %dx.types.CBufRet.f32 %8009, 2
  %8013 = select i1 %7988, float %8010, float %7928
  %8014 = select i1 %7988, float %8011, float %7929
  %8015 = select i1 %7988, float %8012, float %7930
  %8016 = fmul fast float %8013, %7919
  %8017 = fmul fast float %8014, %7919
  %8018 = fmul fast float %8015, %7919
  %8019 = fadd fast float %8016, %8006
  %8020 = fadd fast float %8017, %8007
  %8021 = fadd fast float %8018, %8008
  %8022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8023 = extractvalue %dx.types.CBufRet.f32 %8022, 0
  %8024 = extractvalue %dx.types.CBufRet.f32 %8022, 1
  %8025 = extractvalue %dx.types.CBufRet.f32 %8022, 2
  %8026 = select i1 %7988, float %8023, float %7935
  %8027 = select i1 %7988, float %8024, float %7936
  %8028 = select i1 %7988, float %8025, float %7937
  %8029 = fadd fast float %8019, %8026
  %8030 = fadd fast float %8020, %8027
  %8031 = fadd fast float %8021, %8028
  %8032 = fmul fast float %8029, %7998
  %8033 = fmul fast float %8030, %7998
  %8034 = fmul fast float %8031, %7998
  %8035 = fmul fast float %8032, %8032
  %8036 = fmul fast float %8033, %8033
  %8037 = fadd fast float %8035, %8036
  %8038 = fmul fast float %8034, %8034
  %8039 = fadd fast float %8037, %8038
  %8040 = call float @dx.op.unary.f32(i32 24, float %8039)  ; Sqrt(value)
  %8041 = fsub fast float %8040, %7953
  %8042 = fmul fast float %8041, %7955
  %8043 = call float @dx.op.unary.f32(i32 7, float %8042)  ; Saturate(value)
  br label %8044

; <label>:8044                                    ; preds = %7969, %7965
  %8045 = phi float [ %8043, %7969 ], [ 1.000000e+00, %7965 ]
  %8046 = fmul fast float %7962, 5.000000e-01
  %8047 = fadd fast float %8046, 5.000000e-01
  %8048 = call float @dx.op.unary.f32(i32 22, float %8047)  ; Frc(value)
  %8049 = call float @dx.op.unary.f32(i32 27, float %8048)  ; Round_ni(value)
  %8050 = call float @dx.op.unary.f32(i32 22, float %8048)  ; Frc(value)
  %8051 = fmul fast float %8050, 2.000000e+00
  %8052 = fadd fast float %8051, -1.000000e+00
  %8053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %7914, float %7915, float %8049, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8054 = extractvalue %dx.types.ResRet.f32 %8053, 0
  %8055 = extractvalue %dx.types.ResRet.f32 %8053, 1
  %8056 = extractvalue %dx.types.ResRet.f32 %8053, 2
  %8057 = extractvalue %dx.types.ResRet.f32 %8053, 3
  %8058 = fadd fast float %8054, -5.000000e-01
  %8059 = fadd fast float %8056, -5.000000e-01
  %8060 = fmul fast float %8058, 0xBFD5555560000000
  %8061 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8059, float %8060)  ; FMad(a,b,c)
  %8062 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8055, float 0.000000e+00)  ; FMad(a,b,c)
  %8063 = fadd fast float %8062, %8057
  %8064 = fmul fast float %8058, -7.500000e-01
  %8065 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8059, float %8064)  ; FMad(a,b,c)
  %8066 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8055, float 0.000000e+00)  ; FMad(a,b,c)
  %8067 = fadd fast float %8066, %8057
  %8068 = call float @dx.op.binary.f32(i32 35, float %8061, float -1.000000e+00)  ; FMax(a,b)
  %8069 = call float @dx.op.binary.f32(i32 35, float %8063, float -1.000000e+00)  ; FMax(a,b)
  %8070 = call float @dx.op.binary.f32(i32 35, float %8065, float -1.000000e+00)  ; FMax(a,b)
  %8071 = call float @dx.op.binary.f32(i32 35, float %8067, float -1.000000e+00)  ; FMax(a,b)
  %8072 = call float @dx.op.binary.f32(i32 36, float %8068, float 1.000000e+00)  ; FMin(a,b)
  %8073 = call float @dx.op.binary.f32(i32 36, float %8069, float 1.000000e+00)  ; FMin(a,b)
  %8074 = call float @dx.op.binary.f32(i32 36, float %8070, float 1.000000e+00)  ; FMin(a,b)
  %8075 = call float @dx.op.binary.f32(i32 36, float %8071, float 1.000000e+00)  ; FMin(a,b)
  %8076 = fcmp fast olt float %8072, 0x3FEFFF8020000000
  br i1 %8076, label %8077, label %8192, !dx.controlflow.hints !168

; <label>:8077                                    ; preds = %8044
  %8078 = extractvalue %dx.types.CBufRet.f32 %7960, 3
  %8079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8080 = extractvalue %dx.types.CBufRet.f32 %8079, 0
  %8081 = extractvalue %dx.types.CBufRet.f32 %8079, 1
  %8082 = extractvalue %dx.types.CBufRet.f32 %8079, 2
  %8083 = extractvalue %dx.types.CBufRet.f32 %8079, 3
  %8084 = fsub fast float %8080, %8072
  %8085 = fsub fast float %8081, %8073
  %8086 = fsub fast float %8082, %8074
  %8087 = fsub fast float %8083, %8075
  %8088 = fmul fast float %8084, %8078
  %8089 = fmul fast float %8085, %8078
  %8090 = fmul fast float %8086, %8078
  %8091 = fmul fast float %8087, %8078
  %8092 = fadd fast float %8088, %8072
  %8093 = fadd fast float %8089, %8073
  %8094 = fsub fast float -0.000000e+00, %8093
  %8095 = fadd fast float %8090, %8074
  %8096 = fadd fast float %8091, %8075
  %8097 = fmul fast float %8092, %8092
  %8098 = fsub fast float %8093, %8097
  %8099 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8098)  ; FMax(a,b)
  %8100 = fdiv fast float 1.000000e+00, %8099
  %8101 = fmul fast float %8093, %8092
  %8102 = fsub fast float %8095, %8101
  %8103 = fsub fast float %8052, %8092
  %8104 = fmul fast float %8052, %8052
  %8105 = fsub fast float %8104, %8093
  %8106 = fmul fast float %8103, %8100
  %8107 = fmul fast float %8106, %8102
  %8108 = fsub fast float %8105, %8107
  %8109 = fmul fast float %8093, %8093
  %8110 = fsub fast float %8096, %8109
  %8111 = fmul fast float %8102, %8102
  %8112 = fmul fast float %8111, %8100
  %8113 = fsub fast float %8110, %8112
  %8114 = fdiv fast float %8108, %8113
  %8115 = fmul fast float %8102, %8114
  %8116 = fsub fast float %8103, %8115
  %8117 = fmul fast float %8116, %8100
  %8118 = fmul fast float %8117, %8092
  %8119 = fsub fast float 1.000000e+00, %8118
  %8120 = fmul fast float %8093, %8114
  %8121 = fsub fast float %8119, %8120
  %8122 = fmul fast float %8117, %8117
  %8123 = fmul fast float %8114, 4.000000e+00
  %8124 = fmul fast float %8123, %8121
  %8125 = fsub fast float %8122, %8124
  %8126 = call float @dx.op.unary.f32(i32 24, float %8125)  ; Sqrt(value)
  %8127 = fcmp fast oge float %8117, 0.000000e+00
  %8128 = fsub fast float -0.000000e+00, %8126
  %8129 = select i1 %8127, float %8128, float %8126
  %8130 = fsub fast float %8129, %8117
  %8131 = fdiv fast float %8130, %8114
  %8132 = fdiv fast float %8121, %8130
  %8133 = fmul fast float %8131, 5.000000e-01
  %8134 = fmul fast float %8132, 2.000000e+00
  %8135 = select i1 %8127, float %8133, float %8134
  %8136 = select i1 %8127, float %8134, float %8133
  %8137 = call float @dx.op.binary.f32(i32 35, float %8135, float %8136)  ; FMax(a,b)
  %8138 = call float @dx.op.binary.f32(i32 36, float %8135, float %8136)  ; FMin(a,b)
  %8139 = fcmp fast ogt float %8052, %8138
  br i1 %8139, label %8140, label %8150

; <label>:8140                                    ; preds = %8077
  %8141 = fsub fast float %8052, %8138
  %8142 = fsub fast float %8137, %8138
  %8143 = fmul fast float %8141, %8142
  %8144 = fmul fast float %8137, %8052
  %8145 = fadd fast float %8137, %8052
  %8146 = fmul fast float %8145, %8092
  %8147 = fadd fast float %8144, %8093
  %8148 = fsub fast float %8147, %8146
  %8149 = fdiv fast float %8148, %8143
  br label %8150

; <label>:8150                                    ; preds = %8140, %8077
  %8151 = phi float [ %8149, %8140 ], [ 0.000000e+00, %8077 ]
  %8152 = fcmp fast ogt float %8052, %8137
  %8153 = fsub fast float %8052, %8137
  br i1 %8152, label %8154, label %8164

; <label>:8154                                    ; preds = %8150
  %8155 = fsub fast float %8137, %8138
  %8156 = fmul fast float %8155, %8153
  %8157 = fmul fast float %8138, %8052
  %8158 = fadd fast float %8138, %8052
  %8159 = fmul fast float %8158, %8092
  %8160 = fsub fast float %8094, %8157
  %8161 = fadd fast float %8160, %8159
  %8162 = fdiv fast float %8161, %8156
  %8163 = fadd fast float %8162, %8151
  br label %8164

; <label>:8164                                    ; preds = %8154, %8150
  %8165 = phi float [ %8163, %8154 ], [ %8151, %8150 ]
  %8166 = fsub fast float %8052, %8138
  %8167 = fmul fast float %8166, %8153
  %8168 = fmul fast float %8138, %8137
  %8169 = fadd fast float %8138, %8137
  %8170 = fmul fast float %8169, %8092
  %8171 = fadd fast float %8168, %8093
  %8172 = fsub fast float %8171, %8170
  %8173 = fdiv fast float %8172, %8167
  %8174 = call float @dx.op.unary.f32(i32 7, float %8165)  ; Saturate(value)
  %8175 = fcmp fast oeq float %6847, 0.000000e+00
  %8176 = extractvalue %dx.types.CBufRet.f32 %7960, 0
  %8177 = fcmp fast oeq float %8176, 0.000000e+00
  %8178 = or i1 %8175, %8177
  %8179 = fmul fast float %8176, 2.000000e+00
  %8180 = fadd fast float %7961, %7962
  %8181 = fdiv fast float %8180, %8179
  %8182 = call float @dx.op.unary.f32(i32 7, float %8181)  ; Saturate(value)
  %8183 = fmul fast float %8182, 2.000000e+00
  %8184 = fsub fast float 3.000000e+00, %8183
  %8185 = fmul fast float %8182, %8182
  %8186 = fmul fast float %8185, %8184
  %8187 = select i1 %8178, float 1.000000e+00, float %8186
  %8188 = fmul fast float %8173, %6847
  %8189 = fadd fast float %8174, %8188
  %8190 = call float @dx.op.unary.f32(i32 7, float %8189)  ; Saturate(value)
  %8191 = fmul fast float %8187, %8190
  br label %8192

; <label>:8192                                    ; preds = %8164, %8044
  %8193 = phi float [ %8191, %8164 ], [ 0.000000e+00, %8044 ]
  %8194 = fsub fast float 1.000000e+00, %8193
  %8195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %7914, float %7915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8196 = extractvalue %dx.types.ResRet.f32 %8195, 0
  %8197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8198 = extractvalue %dx.types.CBufRet.i32 %8197, 2
  %8199 = icmp eq i32 %8198, 0
  br i1 %8199, label %8205, label %8200

; <label>:8200                                    ; preds = %8192
  %8201 = call float @dx.op.unary.f32(i32 7, float %8193)  ; Saturate(value)
  %8202 = fadd fast float %8196, -1.000000e+00
  %8203 = fmul fast float %8201, %8202
  %8204 = fadd fast float %8203, 1.000000e+00
  br label %8205

; <label>:8205                                    ; preds = %8200, %8192
  %8206 = phi float [ %8204, %8200 ], [ %8194, %8192 ]
  br i1 %7968, label %8207, label %8225

; <label>:8207                                    ; preds = %8205
  %8208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8209 = extractvalue %dx.types.CBufRet.f32 %8208, 1
  %8210 = fsub fast float %8045, %8209
  %8211 = call float @dx.op.unary.f32(i32 7, float %8210)  ; Saturate(value)
  %8212 = fsub fast float %8045, %7967
  %8213 = call float @dx.op.unary.f32(i32 7, float %8212)  ; Saturate(value)
  %8214 = fsub fast float %8211, %8213
  %8215 = fsub fast float %8047, %8213
  %8216 = fdiv fast float %8215, %8214
  %8217 = call float @dx.op.unary.f32(i32 7, float %8216)  ; Saturate(value)
  %8218 = fmul fast float %8217, 2.000000e+00
  %8219 = fsub fast float 3.000000e+00, %8218
  %8220 = fsub fast float %8196, %8206
  %8221 = fmul fast float %8217, %8217
  %8222 = fmul fast float %8221, %8220
  %8223 = fmul fast float %8222, %8219
  %8224 = fadd fast float %8223, %8206
  br label %8225

; <label>:8225                                    ; preds = %8207, %8205
  %8226 = phi float [ %8224, %8207 ], [ %8206, %8205 ]
  %8227 = call float @dx.op.binary.f32(i32 35, float %8196, float %8226)  ; FMax(a,b)
  %8228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8229 = extractvalue %dx.types.CBufRet.i32 %8228, 2
  %8230 = and i32 %8229, 1
  %8231 = icmp eq i32 %8230, 0
  %8232 = fcmp fast une float %8227, 1.000000e+00
  %8233 = and i1 %8232, %8231
  br i1 %8233, label %8234, label %8253

; <label>:8234                                    ; preds = %8225
  %8235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %7914, float %7915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8236 = extractvalue %dx.types.ResRet.f32 %8235, 0
  %8237 = extractvalue %dx.types.ResRet.f32 %8235, 1
  %8238 = extractvalue %dx.types.ResRet.f32 %8235, 2
  %8239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8240 = extractvalue %dx.types.CBufRet.f32 %8239, 1
  %8241 = fmul fast float %8240, %8236
  %8242 = fmul fast float %8240, %8237
  %8243 = fmul fast float %8240, %8238
  %8244 = fcmp fast ogt float %8196, 0x3FEFFF2E40000000
  %8245 = fsub fast float 1.000000e+00, %8227
  %8246 = fsub fast float 1.000000e+00, %8196
  %8247 = fdiv fast float %8245, %8246
  %8248 = call float @dx.op.unary.f32(i32 7, float %8247)  ; Saturate(value)
  %8249 = select i1 %8244, float 0.000000e+00, float %8248
  %8250 = fmul fast float %8241, %8249
  %8251 = fmul fast float %8242, %8249
  %8252 = fmul fast float %8243, %8249
  br label %8253

; <label>:8253                                    ; preds = %8234, %8225
  %8254 = phi float [ 0.000000e+00, %8225 ], [ %8250, %8234 ]
  %8255 = phi float [ 0.000000e+00, %8225 ], [ %8251, %8234 ]
  %8256 = phi float [ 0.000000e+00, %8225 ], [ %8252, %8234 ]
  %8257 = fmul fast float %8254, %6845
  %8258 = fmul fast float %8255, %6845
  %8259 = fmul fast float %8256, %6845
  %8260 = fmul fast float %8227, %7889
  %8261 = call float @dx.op.dot3.f32(i32 55, float %8227, float %8227, float %8227, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8262 = call float @dx.op.dot3.f32(i32 55, float %8257, float %8258, float %8259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8263 = select i1 %252, float %8261, float %8227
  %8264 = select i1 %252, float 1.000000e+00, float %8227
  %8265 = select i1 %252, float %8262, float %8257
  %8266 = select i1 %252, float 0.000000e+00, float %8258
  %8267 = select i1 %252, float 0.000000e+00, float %8259
  %8268 = fmul fast float %8263, %7901
  %8269 = fmul fast float %8263, %7902
  %8270 = fmul fast float %8264, %7903
  %8271 = fadd fast float %8268, %8265
  %8272 = fadd fast float %8269, %8266
  %8273 = fadd fast float %8267, %8270
  %8274 = fmul fast float %8263, %7904
  %8275 = fmul fast float %8263, %7905
  %8276 = fmul fast float %8264, %7906
  br label %8277

; <label>:8277                                    ; preds = %8253, %7910, %7879, %7115
  %8278 = phi float [ %7120, %7115 ], [ %7901, %7879 ], [ %8271, %8253 ], [ %7901, %7910 ]
  %8279 = phi float [ %7121, %7115 ], [ %7902, %7879 ], [ %8272, %8253 ], [ %7902, %7910 ]
  %8280 = phi float [ %7122, %7115 ], [ %7903, %7879 ], [ %8273, %8253 ], [ %7903, %7910 ]
  %8281 = phi float [ %7123, %7115 ], [ %7904, %7879 ], [ %8274, %8253 ], [ %7904, %7910 ]
  %8282 = phi float [ %7124, %7115 ], [ %7905, %7879 ], [ %8275, %8253 ], [ %7905, %7910 ]
  %8283 = phi float [ %7125, %7115 ], [ %7906, %7879 ], [ %8276, %8253 ], [ %7906, %7910 ]
  %8284 = phi float [ %7126, %7115 ], [ %7889, %7879 ], [ %8260, %8253 ], [ %7889, %7910 ]
  %8285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %8286 = extractvalue %dx.types.CBufRet.f32 %8285, 2
  %8287 = extractvalue %dx.types.CBufRet.f32 %8285, 3
  %8288 = fmul fast float %8286, %95
  %8289 = fmul fast float %8287, %96
  %8290 = call float @dx.op.unary.f32(i32 7, float %8288)  ; Saturate(value)
  %8291 = call float @dx.op.unary.f32(i32 7, float %8289)  ; Saturate(value)
  %8292 = select i1 %6857, i32 2, i32 0
  %8293 = or i32 %8292, 1
  %8294 = uitofp i32 %8293 to float
  %8295 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8290, float %8291, float %8294, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8296 = extractvalue %dx.types.ResRet.f32 %8295, 0
  %8297 = extractvalue %dx.types.ResRet.f32 %8295, 1
  %8298 = extractvalue %dx.types.ResRet.f32 %8295, 2
  %8299 = extractvalue %dx.types.ResRet.f32 %8295, 3
  %8300 = add nuw nsw i32 %8292, 2
  %8301 = uitofp i32 %8300 to float
  %8302 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8290, float %8291, float %8301, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8303 = extractvalue %dx.types.ResRet.f32 %8302, 0
  %8304 = extractvalue %dx.types.ResRet.f32 %8302, 1
  %8305 = extractvalue %dx.types.ResRet.f32 %8302, 2
  %8306 = extractvalue %dx.types.ResRet.f32 %8302, 3
  %8307 = call float @dx.op.binary.f32(i32 35, float %8297, float %8298)  ; FMax(a,b)
  %8308 = call float @dx.op.binary.f32(i32 35, float %8296, float %8307)  ; FMax(a,b)
  %8309 = call float @dx.op.binary.f32(i32 35, float %8308, float %8299)  ; FMax(a,b)
  %8310 = call float @dx.op.binary.f32(i32 36, float %8304, float %8305)  ; FMin(a,b)
  %8311 = call float @dx.op.binary.f32(i32 36, float %8303, float %8310)  ; FMin(a,b)
  %8312 = call float @dx.op.binary.f32(i32 36, float %8311, float %8306)  ; FMin(a,b)
  %8313 = fmul fast float %8309, 2.550000e+02
  %8314 = fadd fast float %8313, 0x3F70101020000000
  %8315 = fptoui float %8314 to i32
  %8316 = fmul fast float %8312, 2.550000e+02
  %8317 = fadd fast float %8316, 0x3F70101020000000
  %8318 = fptoui float %8317 to i32
  %8319 = icmp ult i32 %8315, %8318
  br i1 %8319, label %8320, label %8489

; <label>:8320                                    ; preds = %8277
  %8321 = fcmp fast ogt float %85, 9.843750e-01
  %8322 = fadd fast float %7119, -4.000000e+00
  %8323 = select i1 %8321, float -4.000000e+00, float %8322
  %8324 = call float @dx.op.binary.f32(i32 35, float %8323, float 0.000000e+00)  ; FMax(a,b)
  %8325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8326 = extractvalue %dx.types.CBufRet.f32 %8325, 0
  %8327 = fadd fast float %8326, %8324
  %8328 = extractvalue %dx.types.CBufRet.f32 %8325, 2
  %8329 = fmul fast float %8327, %8328
  %8330 = call float @dx.op.unary.f32(i32 23, float %8329)  ; Log(value)
  %8331 = extractvalue %dx.types.CBufRet.f32 %8325, 3
  %8332 = fmul fast float %8331, %8330
  %8333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8334 = extractvalue %dx.types.CBufRet.f32 %8333, 2
  %8335 = fmul fast float %8332, %8334
  %8336 = call float @dx.op.unary.f32(i32 7, float %8335)  ; Saturate(value)
  %8337 = uitofp i32 %8315 to float
  %8338 = uitofp i32 %8318 to float
  %8339 = fadd fast float %8337, 5.000000e-01
  %8340 = fadd fast float %8338, 5.000000e-01
  %8341 = fmul fast float %8334, %8339
  %8342 = fmul fast float %8334, %8340
  %8343 = fadd fast float %8341, 0x3F0FFB4800000000
  %8344 = fadd fast float %8342, 0xBF0FFB4800000000
  %8345 = call float @dx.op.binary.f32(i32 35, float %8336, float %8343)  ; FMax(a,b)
  %8346 = call float @dx.op.binary.f32(i32 36, float %8345, float %8344)  ; FMin(a,b)
  %8347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8348 = extractvalue %dx.types.CBufRet.f32 %8347, 1
  %8349 = extractvalue %dx.types.CBufRet.f32 %8347, 2
  %8350 = extractvalue %dx.types.CBufRet.f32 %8347, 0
  %8351 = select i1 %6857, float %8350, float 0.000000e+00
  %8352 = fmul fast float %8348, %8346
  %8353 = fadd fast float %8351, %8352
  %8354 = fadd fast float %8351, %8349
  %8355 = fsub fast float %8348, %8349
  %8356 = fadd fast float %8355, %8351
  %8357 = call float @dx.op.binary.f32(i32 35, float %8353, float %8354)  ; FMax(a,b)
  %8358 = call float @dx.op.binary.f32(i32 36, float %8357, float %8356)  ; FMin(a,b)
  %8359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8290, float %8291, float %8358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8360 = extractvalue %dx.types.ResRet.f32 %8359, 0
  %8361 = extractvalue %dx.types.ResRet.f32 %8359, 1
  %8362 = extractvalue %dx.types.ResRet.f32 %8359, 2
  %8363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8364 = extractvalue %dx.types.CBufRet.i32 %8363, 0
  %8365 = extractvalue %dx.types.CBufRet.i32 %8363, 1
  %8366 = uitofp i32 %8364 to float
  %8367 = uitofp i32 %8365 to float
  %8368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8369 = extractvalue %dx.types.CBufRet.f32 %8368, 0
  %8370 = extractvalue %dx.types.CBufRet.f32 %8368, 1
  %8371 = fmul fast float %8366, %8290
  %8372 = fmul fast float %8367, %8291
  %8373 = fadd fast float %8371, -5.000000e-01
  %8374 = fadd fast float %8372, -5.000000e-01
  %8375 = call float @dx.op.unary.f32(i32 22, float %8373)  ; Frc(value)
  %8376 = call float @dx.op.unary.f32(i32 22, float %8374)  ; Frc(value)
  %8377 = fmul fast float %8375, %8375
  %8378 = fmul fast float %8377, %8375
  %8379 = fsub fast float 3.000000e+00, %8375
  %8380 = fmul fast float %8377, %8379
  %8381 = fmul fast float %8375, 3.000000e+00
  %8382 = fmul fast float %8378, 3.000000e+00
  %8383 = fmul fast float %8377, 6.000000e+00
  %8384 = fsub fast float %8382, %8383
  %8385 = fadd fast float %8384, 4.000000e+00
  %8386 = fmul fast float %8385, 0x3FC5555560000000
  %8387 = fmul fast float %8378, -3.000000e+00
  %8388 = fadd fast float %8377, %8375
  %8389 = fmul fast float %8388, 3.000000e+00
  %8390 = fadd fast float %8387, 1.000000e+00
  %8391 = fadd fast float %8390, %8389
  %8392 = fmul fast float %8378, 0x3FC5555560000000
  %8393 = fmul fast float %8376, %8376
  %8394 = fmul fast float %8393, %8376
  %8395 = fsub fast float 3.000000e+00, %8376
  %8396 = fmul fast float %8393, %8395
  %8397 = fmul fast float %8376, 3.000000e+00
  %8398 = fmul fast float %8394, 3.000000e+00
  %8399 = fmul fast float %8393, 6.000000e+00
  %8400 = fsub fast float %8398, %8399
  %8401 = fadd fast float %8400, 4.000000e+00
  %8402 = fmul fast float %8401, 0x3FC5555560000000
  %8403 = fmul fast float %8394, -3.000000e+00
  %8404 = fadd fast float %8393, %8376
  %8405 = fmul fast float %8404, 3.000000e+00
  %8406 = fadd fast float %8403, 1.000000e+00
  %8407 = fadd fast float %8406, %8405
  %8408 = fmul fast float %8394, 0x3FC5555560000000
  %8409 = fadd fast float %8375, 1.000000e+00
  %8410 = fsub fast float 1.000000e+00, %8381
  %8411 = fadd fast float %8410, %8380
  %8412 = fadd fast float %8411, %8385
  %8413 = fmul fast float %8412, 0x3FC5555560000000
  %8414 = fdiv fast float %8386, %8413
  %8415 = fsub fast float %8409, %8414
  %8416 = fsub fast float 1.000000e+00, %8375
  %8417 = fadd fast float %8391, %8378
  %8418 = fmul fast float %8417, 0x3FC5555560000000
  %8419 = fdiv fast float %8392, %8418
  %8420 = fadd fast float %8416, %8419
  %8421 = fadd fast float %8376, 1.000000e+00
  %8422 = fsub fast float 1.000000e+00, %8397
  %8423 = fadd fast float %8422, %8396
  %8424 = fadd fast float %8423, %8401
  %8425 = fmul fast float %8424, 0x3FC5555560000000
  %8426 = fdiv fast float %8402, %8425
  %8427 = fsub fast float %8421, %8426
  %8428 = fsub fast float 1.000000e+00, %8376
  %8429 = fadd fast float %8407, %8394
  %8430 = fmul fast float %8429, 0x3FC5555560000000
  %8431 = fdiv fast float %8408, %8430
  %8432 = fadd fast float %8431, %8428
  %8433 = fmul fast float %8415, %8369
  %8434 = fsub fast float %8290, %8433
  %8435 = fmul fast float %8420, %8369
  %8436 = fadd fast float %8435, %8290
  %8437 = fmul fast float %8432, %8370
  %8438 = fadd fast float %8437, %8291
  %8439 = fmul fast float %8427, %8370
  %8440 = fsub fast float %8291, %8439
  %8441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8434, float %8440, float %8358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8442 = extractvalue %dx.types.ResRet.f32 %8441, 0
  %8443 = extractvalue %dx.types.ResRet.f32 %8441, 1
  %8444 = extractvalue %dx.types.ResRet.f32 %8441, 2
  %8445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8436, float %8440, float %8358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8446 = extractvalue %dx.types.ResRet.f32 %8445, 0
  %8447 = extractvalue %dx.types.ResRet.f32 %8445, 1
  %8448 = extractvalue %dx.types.ResRet.f32 %8445, 2
  %8449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8434, float %8438, float %8358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8450 = extractvalue %dx.types.ResRet.f32 %8449, 0
  %8451 = extractvalue %dx.types.ResRet.f32 %8449, 1
  %8452 = extractvalue %dx.types.ResRet.f32 %8449, 2
  %8453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8436, float %8438, float %8358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8454 = extractvalue %dx.types.ResRet.f32 %8453, 0
  %8455 = extractvalue %dx.types.ResRet.f32 %8453, 1
  %8456 = extractvalue %dx.types.ResRet.f32 %8453, 2
  %8457 = fsub fast float %8450, %8442
  %8458 = fsub fast float %8451, %8443
  %8459 = fsub fast float %8452, %8444
  %8460 = fmul fast float %8457, %8430
  %8461 = fmul fast float %8458, %8430
  %8462 = fmul fast float %8459, %8430
  %8463 = fadd fast float %8460, %8442
  %8464 = fadd fast float %8461, %8443
  %8465 = fadd fast float %8462, %8444
  %8466 = fsub fast float %8454, %8446
  %8467 = fsub fast float %8455, %8447
  %8468 = fsub fast float %8456, %8448
  %8469 = fmul fast float %8466, %8430
  %8470 = fmul fast float %8467, %8430
  %8471 = fmul fast float %8468, %8430
  %8472 = fsub fast float %8446, %8463
  %8473 = fadd fast float %8472, %8469
  %8474 = fsub fast float %8447, %8464
  %8475 = fadd fast float %8474, %8470
  %8476 = fsub fast float %8448, %8465
  %8477 = fadd fast float %8476, %8471
  %8478 = fmul fast float %8473, %8418
  %8479 = fmul fast float %8475, %8418
  %8480 = fmul fast float %8477, %8418
  %8481 = fadd fast float %8478, %8463
  %8482 = fadd fast float %8479, %8464
  %8483 = fadd fast float %8480, %8465
  %8484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8485 = extractvalue %dx.types.CBufRet.f32 %8484, 1
  %8486 = fmul fast float %8481, %8485
  %8487 = fmul fast float %8482, %8485
  %8488 = fmul fast float %8483, %8485
  br label %8489

; <label>:8489                                    ; preds = %8320, %8277
  %8490 = phi float [ %8360, %8320 ], [ 1.000000e+00, %8277 ]
  %8491 = phi float [ %8361, %8320 ], [ 1.000000e+00, %8277 ]
  %8492 = phi float [ %8362, %8320 ], [ 1.000000e+00, %8277 ]
  %8493 = phi float [ %8486, %8320 ], [ 0.000000e+00, %8277 ]
  %8494 = phi float [ %8487, %8320 ], [ 0.000000e+00, %8277 ]
  %8495 = phi float [ %8488, %8320 ], [ 0.000000e+00, %8277 ]
  %8496 = fmul fast float %8493, %6845
  %8497 = fmul fast float %8494, %6845
  %8498 = fmul fast float %8495, %6845
  %8499 = fmul fast float %8490, %8284
  %8500 = call float @dx.op.dot3.f32(i32 55, float %8490, float %8491, float %8492, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8501 = call float @dx.op.dot3.f32(i32 55, float %8496, float %8497, float %8498, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8502 = select i1 %252, float %8500, float %8490
  %8503 = select i1 %252, float %8500, float %8491
  %8504 = select i1 %252, float 1.000000e+00, float %8492
  %8505 = select i1 %252, float %8501, float %8496
  %8506 = select i1 %252, float 0.000000e+00, float %8497
  %8507 = select i1 %252, float 0.000000e+00, float %8498
  %8508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8509 = extractvalue %dx.types.CBufRet.i32 %8508, 3
  %8510 = and i32 %8509, 3
  %8511 = icmp ne i32 %8510, 0
  %8512 = and i32 %8509, 4
  %8513 = icmp ne i32 %8512, 0
  %8514 = and i1 %8511, %8513
  %8515 = and i1 %252, %8514
  br i1 %8515, label %8516, label %8522

; <label>:8516                                    ; preds = %8489
  %8517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8518 = extractvalue %dx.types.CBufRet.f32 %8517, 1
  %8519 = fadd fast float %8499, -1.000000e+00
  %8520 = fmul fast float %8518, %8519
  %8521 = fadd fast float %8520, 1.000000e+00
  br label %8522

; <label>:8522                                    ; preds = %8516, %8489
  %8523 = phi float [ %8521, %8516 ], [ %8499, %8489 ]
  %8524 = fadd fast float %8281, %8278
  %8525 = fmul fast float %8502, %8524
  %8526 = fadd fast float %8525, %8505
  %8527 = fadd fast float %8282, %8279
  %8528 = fmul fast float %8503, %8527
  %8529 = fadd fast float %8528, %8506
  %8530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8531 = extractvalue %dx.types.CBufRet.f32 %8530, 0
  br i1 %252, label %8532, label %8556

; <label>:8532                                    ; preds = %8522
  %8533 = fadd fast float %8526, %8529
  %8534 = fmul fast float %8531, %8533
  %8535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8536 = extractvalue %dx.types.CBufRet.f32 %8535, 3
  %8537 = extractvalue %dx.types.CBufRet.f32 %6833, 1
  %8538 = fsub fast float %6838, %6832
  %8539 = fadd fast float %8538, %6839
  %8540 = fsub fast float %8539, %8537
  %8541 = extractvalue %dx.types.CBufRet.f32 %6833, 2
  %8542 = fmul fast float %8540, %8541
  %8543 = call float @dx.op.unary.f32(i32 7, float %8542)  ; Saturate(value)
  %8544 = fsub fast float %8543, %8536
  %8545 = fmul fast float %8544, %8523
  %8546 = fadd fast float %8545, %8536
  %8547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8548 = extractvalue %dx.types.CBufRet.f32 %8547, 0
  %8549 = fsub fast float %8546, %8548
  %8550 = fmul fast float %8549, 1.000000e+01
  %8551 = call float @dx.op.unary.f32(i32 7, float %8550)  ; Saturate(value)
  %8552 = fsub fast float %4290, %6845
  %8553 = fmul fast float %8551, %8552
  %8554 = fadd fast float %8553, %6845
  %8555 = fmul fast float %8554, %8546
  br label %8580

; <label>:8556                                    ; preds = %8522
  %8557 = fadd fast float %8283, %8280
  %8558 = fmul fast float %8504, %8557
  %8559 = fadd fast float %8558, %8507
  %8560 = fmul fast float %8531, %8526
  %8561 = fmul fast float %8531, %8529
  %8562 = fmul fast float %8531, %8559
  %8563 = call float @dx.op.binary.f32(i32 35, float %8560, float %8561)  ; FMax(a,b)
  %8564 = call float @dx.op.binary.f32(i32 35, float %8563, float %8562)  ; FMax(a,b)
  %8565 = call float @dx.op.binary.f32(i32 35, float %8564, float %6845)  ; FMax(a,b)
  %8566 = fcmp fast ugt float %8565, 0x3F10000000000000
  br i1 %8566, label %8568, label %8567

; <label>:8567                                    ; preds = %8556
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8568

; <label>:8568                                    ; preds = %8567, %8556
  %8569 = add i32 %54, 356
  %8570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8569, i32 undef)  ; BufferLoad(srv,index,wot)
  %8571 = extractvalue %dx.types.ResRet.i32 %8570, 0
  %8572 = and i32 %8571, 32
  %8573 = icmp eq i32 %8572, 0
  br i1 %8573, label %8580, label %8574

; <label>:8574                                    ; preds = %8568
  %8575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8576 = extractvalue %dx.types.CBufRet.f32 %8575, 0
  %8577 = fmul fast float %8576, 0x3FE99999A0000000
  %8578 = fadd fast float %8576, %8560
  %8579 = fadd fast float %8577, %8562
  br label %8580

; <label>:8580                                    ; preds = %8574, %8568, %8532
  %8581 = phi float [ %8534, %8532 ], [ %8578, %8574 ], [ %8560, %8568 ]
  %8582 = phi float [ %8555, %8532 ], [ %8561, %8574 ], [ %8561, %8568 ]
  %8583 = phi float [ %8554, %8532 ], [ %8579, %8574 ], [ %8562, %8568 ]
  %8584 = phi float [ %8554, %8532 ], [ %6845, %8574 ], [ %6845, %8568 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8585 = call float @dx.op.binary.f32(i32 36, float %8581, float 3.225500e+04)  ; FMin(a,b)
  %8586 = call float @dx.op.binary.f32(i32 36, float %8582, float 3.225500e+04)  ; FMin(a,b)
  %8587 = call float @dx.op.binary.f32(i32 36, float %8583, float 3.225500e+04)  ; FMin(a,b)
  %8588 = call float @dx.op.binary.f32(i32 36, float %8584, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8585)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8586)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8587)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8588)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

