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
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyz 
; DECAL_VOLUME_GRID_INDEX     0   x          12     NONE    uint   x   
; PACKED_TRI_DATA          0   xyzw       13     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 4aa177feb9abc8f36298857ee524dade
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
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; DECAL_VOLUME_GRID_INDEX     0        nointerpolation       
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
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          3d      T4     t52,space2     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     f32          2d      T6     t69,space2     1
;                                   texture    byte         r/o      T7     t18,space1     1
;                                   texture    byte         r/o      T8     t19,space1     1
;                                   texture    byte         r/o      T9     t20,space1     1
;                                   texture    byte         r/o     T10     t21,space1     1
;                                   texture     f32          2d     T11     t37,space2     1
;                                   texture     f32          2d     T12             t0     1
;                                   texture     f32          2d     T13     t58,space2     1
;                                   texture     f32          2d     T14     t59,space2     1
;                                   texture     f32          2d     T15     t60,space2     1
;                                   texture    byte         r/o     T16     t45,space1     1
;                                   texture    byte         r/o     T17     t46,space1     1
;                                   texture    byte         r/o     T18     t47,space1     1
;                                   texture    byte         r/o     T19     t48,space1     1
;                                   texture     f32          2d     T20     t57,space2     1
;                                   texture    byte         r/o     T21     t69,space1     1
;                                   texture     u32          2d     T22     t56,space2     1
;                                   texture     f32          2d     T23     t34,space2     1
;                                   texture    byte         r/o     T24     t10,space1     1
;                                   texture    byte         r/o     T25      t1,space1     1
;                                   texture     f32          1d     T26     t32,space2     1
;                                   texture     f32     2darray     T27      t8,space2     1
;                                   texture     f32          2d     T28      t1,space2     1
;                                   texture     f32          2d     T29      t2,space2     1
;                                   texture     f32          2d     T30      t3,space2     1
;                                   texture     f32          2d     T31      t4,space2     1
;                                   textureunorm_f32     2darray     T32     t80,space2     1
;                                   texture    byte         r/o     T33     t67,space1     1
;                                   texture     f32          2d     T34      t7,space2     1
;                                   texture     f32          2d     T35      t6,space2     1
;                                   texture     f32          2d     T36      t5,space2     1
;                                   texture     f32          2d     T37     t38,space2     1
;                                   texture    byte         r/o     T38     t12,space1     1
;                                   texture    byte         r/o     T39     t13,space1     1
;                                   texture     f32          1d     T40     t30,space2     1
;                                   texture     f32          3d     T41     t44,space2     1
;                                   texture     f32          3d     T42     t45,space2     1
;                                   texture     f32     2darray     T43     t47,space2     1
;                                   textureunorm_f32     2darray     T44     t85,space2     1
;                                   texture     f32          2d     T45     t83,space2     1
;                                   texture     f32          2d     T46     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
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
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = alloca [4 x i32], align 4
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = alloca [12 x float], align 4
  %97 = alloca [12 x float], align 4
  %98 = alloca [3 x float], align 4
  %99 = alloca [3 x float], align 4
  %100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = fmul fast float %103, %92
  %105 = fmul fast float %103, %93
  %106 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %107 = bitcast float %106 to i32
  %108 = ashr i32 %107, 1
  %109 = sub nsw i32 1597250115, %108
  %110 = bitcast i32 %109 to float
  %111 = fmul fast float %110, %83
  %112 = fmul fast float %110, %84
  %113 = fmul fast float %110, %85
  %114 = fmul fast float %84, %81
  %115 = fmul fast float %85, %80
  %116 = fsub fast float %114, %115
  %117 = fmul fast float %85, %79
  %118 = fmul fast float %83, %81
  %119 = fsub fast float %117, %118
  %120 = fmul fast float %83, %80
  %121 = fmul fast float %84, %79
  %122 = fsub fast float %120, %121
  %123 = fmul fast float %116, %82
  %124 = fmul fast float %119, %82
  %125 = fmul fast float %122, %82
  %126 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %127 = bitcast float %126 to i32
  %128 = ashr i32 %127, 1
  %129 = sub nsw i32 1597250115, %128
  %130 = bitcast i32 %129 to float
  %131 = fmul fast float %130, %72
  %132 = fmul fast float %130, %73
  %133 = fmul fast float %130, %74
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = fcmp fast une float %135, 0.000000e+00
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %140 = fmul fast float %104, 2.000000e+00
  %141 = fmul fast float %140, %138
  %142 = fmul fast float %105, 2.000000e+00
  %143 = fmul fast float %142, %139
  %144 = fsub fast float 1.000000e+00, %141
  %145 = fsub fast float 1.000000e+00, %143
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = select i1 %136, float %147, float %151
  %155 = select i1 %136, float %148, float %152
  %156 = select i1 %136, float %149, float %153
  %157 = fmul fast float %154, %144
  %158 = fmul fast float %155, %144
  %159 = fmul fast float %156, %144
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = select i1 %136, float %161, float %165
  %169 = select i1 %136, float %162, float %166
  %170 = select i1 %136, float %163, float %167
  %171 = fmul fast float %168, %145
  %172 = fmul fast float %169, %145
  %173 = fmul fast float %170, %145
  %174 = fadd fast float %171, %157
  %175 = fadd fast float %172, %158
  %176 = fadd fast float %173, %159
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %180 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %185 = select i1 %136, float %178, float %182
  %186 = select i1 %136, float %179, float %183
  %187 = select i1 %136, float %180, float %184
  %188 = fadd fast float %174, %185
  %189 = fadd fast float %175, %186
  %190 = fadd fast float %176, %187
  %191 = fmul fast float %188, %95
  %192 = fmul fast float %189, %95
  %193 = fmul fast float %190, %95
  %194 = fmul fast float %104, 5.000000e-01
  %195 = fmul fast float %105, 5.000000e-01
  %196 = fptosi float %194 to i32
  %197 = fptosi float %195 to i32
  %198 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %196, i32 %197, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = lshr i32 %199, 18
  %201 = uitofp i32 %200 to float
  %202 = fmul fast float %201, 0x3F4C00EBA0000000
  %203 = call float @dx.op.unary.f32(i32 21, float %202)  ; Exp(value)
  %204 = fadd fast float %203, -1.000000e+00
  %205 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %206 = extractvalue %dx.types.Dimensions %205, 0
  %207 = sitofp i32 %206 to float
  %208 = extractvalue %dx.types.Dimensions %205, 1
  %209 = sitofp i32 %208 to float
  %210 = fcmp fast oge float %194, %207
  %211 = fcmp fast oge float %195, %209
  %212 = or i1 %210, %211
  %213 = select i1 %212, float 0x4197782600000000, float %204
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %216 = extractvalue %dx.types.CBufRet.f32 %214, 3
  %217 = fmul fast float %215, %104
  %218 = fmul fast float %216, %105
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = and i32 %220, 114688
  %222 = icmp ne i32 %221, 0
  %223 = select i1 %222, float %217, float 0.000000e+00
  %224 = select i1 %222, float %218, float 0.000000e+00
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %49, float %223, float %224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fmul fast float %226, 2.550000e+02
  %228 = fptoui float %227 to i32
  %229 = select i1 %222, i32 %228, i32 0
  %230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.i32 %230, 3
  %232 = and i32 %231, 3
  %233 = icmp ne i32 %232, 0
  %234 = and i32 %231, 4
  %235 = icmp ne i32 %234, 0
  %236 = and i1 %233, %235
  br i1 %236, label %237, label %246

; <label>:237                                     ; preds = %0
  %238 = fmul fast float %139, %105
  %239 = fmul fast float %138, %104
  %240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %48, float %239, float %238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = fsub fast float 1.000000e+00, %241
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %245 = fcmp fast olt float %242, %244
  br label %249

; <label>:246                                     ; preds = %0
  %247 = icmp eq i32 %234, 0
  %248 = and i1 %233, %247
  br label %249

; <label>:249                                     ; preds = %246, %237
  %250 = phi i1 [ %245, %237 ], [ %248, %246 ]
  %251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.f32 %251, 2
  %253 = fmul fast float %252, 0x3FE3C6EF40000000
  %254 = frem fast float %104, 2.560000e+02
  %255 = frem fast float %105, 2.560000e+02
  %256 = fptoui float %254 to i32
  %257 = fptoui float %255 to i32
  %258 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %256, i32 %257, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = fadd fast float %259, %253
  %261 = call float @dx.op.unary.f32(i32 22, float %260)  ; Frc(value)
  %262 = add i32 %54, 156
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = shl i32 %264, 4
  %266 = and i32 %265, 32752
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %264, 7
  %269 = and i32 %268, 32752
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %264, 22
  %272 = shl nuw nsw i32 %271, 5
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = add i32 %54, 216
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 255
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %278, 0x3F70101020000000
  %280 = lshr i32 %276, 8
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %282, 0x3F70101020000000
  %284 = lshr i32 %276, 16
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %286, 0x3F70101020000000
  %288 = add i32 %54, 36
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 65535
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %290, 16
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = add i32 %54, 288
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %297, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = fmul fast float %299, 0x3F50624DE0000000
  %303 = fmul fast float %301, 0x3F50624DE0000000
  %304 = add i32 %54, 172
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = shl i32 %306, 4
  %308 = and i32 %307, 32752
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %306, 7
  %311 = and i32 %310, 32752
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %306, 22
  %314 = shl nuw nsw i32 %313, 5
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %54, 232
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 255
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, 0x3F70101020000000
  %322 = lshr i32 %318, 8
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = lshr i32 %318, 16
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = add i32 %54, 52
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 65535
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %332, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = add i32 %54, 304
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = fmul fast float %341, 0x3F50624DE0000000
  %345 = fmul fast float %343, 0x3F50624DE0000000
  %346 = add i32 %54, 188
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = shl i32 %348, 4
  %350 = and i32 %349, 32752
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %348, 7
  %353 = and i32 %352, 32752
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %348, 22
  %356 = shl nuw nsw i32 %355, 5
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = add i32 %54, 248
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = and i32 %360, 255
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %362, 0x3F70101020000000
  %364 = lshr i32 %360, 8
  %365 = and i32 %364, 255
  %366 = uitofp i32 %365 to float
  %367 = fmul fast float %366, 0x3F70101020000000
  %368 = lshr i32 %360, 16
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F70101020000000
  %372 = add i32 %54, 68
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 65535
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %374, 16
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = add i32 %54, 320
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 65535
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %381, 16
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = fmul fast float %383, 0x3F50624DE0000000
  %387 = fmul fast float %385, 0x3F50624DE0000000
  %388 = add i32 %54, 204
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = shl i32 %390, 4
  %392 = and i32 %391, 32752
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %390, 7
  %395 = and i32 %394, 32752
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %390, 22
  %398 = shl nuw nsw i32 %397, 5
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = add i32 %54, 264
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 255
  %404 = uitofp i32 %403 to float
  %405 = fmul fast float %404, 0x3F70101020000000
  %406 = lshr i32 %402, 8
  %407 = and i32 %406, 255
  %408 = uitofp i32 %407 to float
  %409 = fmul fast float %408, 0x3F70101020000000
  %410 = lshr i32 %402, 16
  %411 = and i32 %410, 255
  %412 = uitofp i32 %411 to float
  %413 = fmul fast float %412, 0x3F70101020000000
  %414 = add i32 %54, 84
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 65535
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = lshr i32 %416, 16
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = add i32 %54, 336
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 65535
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %423, 16
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = fmul fast float %425, 0x3F50624DE0000000
  %429 = fmul fast float %427, 0x3F50624DE0000000
  %430 = add i32 %54, 364
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 32
  %434 = icmp eq i32 %433, 0
  %435 = and i32 %432, 64
  %436 = icmp eq i32 %435, 0
  %437 = and i32 %432, 128
  %438 = icmp eq i32 %437, 0
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 2
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %458, label %443

; <label>:443                                     ; preds = %249
  %444 = add i32 %54, 488
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = add i32 %446, 0
  %448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %447, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %449 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %448, %dx.types.Handle %101, float %86, float %87, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = extractvalue %dx.types.ResRet.f32 %449, 3
  %454 = fmul fast float %453, %88
  %455 = fmul fast float %450, %89
  %456 = fmul fast float %451, %90
  %457 = fmul fast float %452, %91
  br label %458

; <label>:458                                     ; preds = %443, %249
  %459 = phi float [ %91, %249 ], [ %457, %443 ]
  %460 = phi float [ %90, %249 ], [ %456, %443 ]
  %461 = phi float [ %89, %249 ], [ %455, %443 ]
  %462 = phi float [ %88, %249 ], [ %454, %443 ]
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = and i32 %464, 2
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %486, label %467

; <label>:467                                     ; preds = %458
  %468 = add i32 %54, 44
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, 1
  %472 = icmp ne i32 %471, 0
  %473 = select i1 %472, float %461, float 1.000000e+00
  %474 = add i32 %54, 60
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 1
  %478 = icmp ne i32 %477, 0
  %479 = select i1 %478, float %460, float 1.000000e+00
  %480 = add i32 %54, 76
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 1
  %484 = icmp ne i32 %483, 0
  %485 = select i1 %484, float %459, float 1.000000e+00
  br label %486

; <label>:486                                     ; preds = %467, %458
  %487 = phi float [ %459, %458 ], [ %485, %467 ]
  %488 = phi float [ %460, %458 ], [ %479, %467 ]
  %489 = phi float [ %461, %458 ], [ %473, %467 ]
  %490 = lshr i32 %464, 20
  %491 = and i32 %490, 3
  %492 = add nuw nsw i32 %491, 1
  %493 = add i32 %54, 24
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = add i32 %54, 28
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = or i32 %498, %495
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %1035, label %501

; <label>:501                                     ; preds = %486
  %502 = and i32 %495, 262144
  %503 = icmp ne i32 %502, 0
  %504 = select i1 %503, float %59, float 1.000000e+00
  %505 = select i1 %503, float %60, float 0.000000e+00
  %506 = select i1 %503, float %61, float 0.000000e+00
  %507 = select i1 %503, float %62, float 1.000000e+00
  %508 = select i1 %503, float %63, float %86
  %509 = select i1 %503, float %64, float %87
  %510 = add i32 %54, 284
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = lshr i32 %512, 16
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = fmul fast float %514, 0x3F50624DE0000000
  %516 = add i32 %54, 88
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = lshr i32 %518, 16
  %520 = and i32 %519, 255
  %521 = lshr i32 %518, 24
  %522 = add i32 %54, 292
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = and i32 %524, 65535
  %526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %525)  ; LegacyF16ToF32(value)
  %527 = lshr i32 %524, 16
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = add i32 %54, 32
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = lshr i32 %531, 22
  %533 = shl nuw nsw i32 %532, 5
  %534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %533)  ; LegacyF16ToF32(value)
  %535 = shl i32 %531, 4
  %536 = and i32 %535, 32752
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = lshr i32 %531, 7
  %539 = and i32 %538, 32752
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 3
  %543 = fmul fast float %542, 1.000000e+03
  %544 = fmul fast float %302, %543
  %545 = call float @dx.op.unary.f32(i32 22, float %544)  ; Frc(value)
  %546 = fadd fast float %545, %292
  %547 = fmul fast float %303, %543
  %548 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %549 = fadd fast float %548, %294
  %550 = fmul fast float %515, %543
  %551 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %552 = fmul fast float %551, 0x401921FB60000000
  %553 = fadd fast float %552, %534
  %554 = call float @dx.op.unary.f32(i32 13, float %553)  ; Sin(value)
  %555 = call float @dx.op.unary.f32(i32 12, float %553)  ; Cos(value)
  %556 = fsub fast float -0.000000e+00, %554
  %557 = fadd fast float %508, -5.000000e-01
  %558 = fadd fast float %509, -5.000000e-01
  %559 = fmul fast float %526, %557
  %560 = fmul fast float %528, %558
  %561 = fadd fast float %559, 5.000000e-01
  %562 = fadd fast float %560, 5.000000e-01
  %563 = fmul fast float %537, %561
  %564 = fmul fast float %540, %562
  %565 = fmul fast float %555, %563
  %566 = call float @dx.op.tertiary.f32(i32 46, float %556, float %564, float %565)  ; FMad(a,b,c)
  %567 = fmul fast float %554, %563
  %568 = call float @dx.op.tertiary.f32(i32 46, float %555, float %564, float %567)  ; FMad(a,b,c)
  %569 = fadd fast float %546, %566
  %570 = fadd fast float %549, %568
  %571 = icmp ugt i32 %520, 1
  %572 = icmp ugt i32 %518, 33554431
  %573 = or i1 %572, %571
  br i1 %573, label %574, label %599

; <label>:574                                     ; preds = %501
  %575 = add i32 %54, 228
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = lshr i32 %577, 16
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = fmul fast float %542, %579
  %581 = call float @dx.op.unary.f32(i32 22, float %580)  ; Frc(value)
  %582 = mul nuw nsw i32 %520, %521
  %583 = uitofp i32 %582 to float
  %584 = fmul fast float %581, %583
  %585 = call float @dx.op.unary.f32(i32 27, float %584)  ; Round_ni(value)
  %586 = fptoui float %585 to i32
  %587 = urem i32 %586, %520
  %588 = udiv i32 %586, %521
  %589 = call float @dx.op.unary.f32(i32 22, float %569)  ; Frc(value)
  %590 = call float @dx.op.unary.f32(i32 22, float %570)  ; Frc(value)
  %591 = uitofp i32 %587 to float
  %592 = uitofp i32 %588 to float
  %593 = fadd fast float %589, %591
  %594 = fadd fast float %590, %592
  %595 = uitofp i32 %520 to float
  %596 = uitofp i32 %521 to float
  %597 = fdiv fast float %593, %595
  %598 = fdiv fast float %594, %596
  br label %599

; <label>:599                                     ; preds = %574, %501
  %600 = phi float [ %597, %574 ], [ %569, %501 ]
  %601 = phi float [ %598, %574 ], [ %570, %501 ]
  %602 = and i32 %495, 256
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %650, label %604

; <label>:604                                     ; preds = %599
  %605 = add i32 %54, 440
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = add i32 %607, 0
  %609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %610 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %609, %dx.types.Handle %101, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = add i32 %54, 100
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = shl i32 %614, 4
  %616 = and i32 %615, 32752
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = lshr i32 %614, 7
  %619 = and i32 %618, 32752
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = fsub fast float 1.000000e+00, %462
  %622 = call float @dx.op.binary.f32(i32 35, float %621, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %623 = bitcast float %462 to i32
  %624 = sitofp i32 %623 to float
  %625 = fadd fast float %624, 0xC1CFBF8940000000
  %626 = fmul fast float %620, %625
  %627 = fadd fast float %626, 0x41CFBF8940000000
  %628 = fptosi float %627 to i32
  %629 = bitcast i32 %628 to float
  %630 = bitcast float %622 to i32
  %631 = sitofp i32 %630 to float
  %632 = fadd fast float %631, 0xC1CFBF8940000000
  %633 = fmul fast float %632, %620
  %634 = fadd fast float %633, 0x41CFBF8940000000
  %635 = fptosi float %634 to i32
  %636 = bitcast i32 %635 to float
  %637 = fmul fast float %629, %617
  %638 = fmul fast float %636, %617
  %639 = fsub fast float %622, %637
  %640 = fadd fast float %638, %622
  %641 = call float @dx.op.unary.f32(i32 7, float %639)  ; Saturate(value)
  %642 = call float @dx.op.unary.f32(i32 7, float %640)  ; Saturate(value)
  %643 = fsub fast float %611, %641
  %644 = fsub fast float %642, %641
  %645 = bitcast float %644 to i32
  %646 = sub nsw i32 2129859010, %645
  %647 = bitcast i32 %646 to float
  %648 = fmul fast float %647, %643
  %649 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  br label %650

; <label>:650                                     ; preds = %604, %599
  %651 = phi float [ %649, %604 ], [ %462, %599 ]
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = and i32 %653, 128
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %672, label %656

; <label>:656                                     ; preds = %650
  %657 = add i32 %54, 424
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = add i32 %659, 0
  %661 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %660, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %662 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %661, %dx.types.Handle %101, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %663 = extractvalue %dx.types.ResRet.f32 %662, 0
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = and i32 %665, 524288
  %667 = icmp ne i32 %666, 0
  %668 = fcmp fast ogt float %663, 0x3FE0101020000000
  %669 = select i1 %668, float 1.000000e+00, float 0.000000e+00
  %670 = select i1 %667, float %669, float %663
  %671 = fmul fast float %670, %651
  br label %672

; <label>:672                                     ; preds = %656, %650
  %673 = phi float [ %671, %656 ], [ %651, %650 ]
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = and i32 %675, 16
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %876, label %678

; <label>:678                                     ; preds = %672
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = add i32 %54, 376
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %681, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = add i32 %683, 0
  %685 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %684, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %686 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %685, %dx.types.Handle %100, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %687 = extractvalue %dx.types.ResRet.f32 %686, 0
  %688 = extractvalue %dx.types.ResRet.f32 %686, 1
  %689 = extractvalue %dx.types.ResRet.f32 %686, 2
  %690 = extractvalue %dx.types.ResRet.f32 %686, 3
  %691 = and i32 %680, 255
  %692 = uitofp i32 %691 to float
  %693 = lshr i32 %680, 8
  %694 = and i32 %693, 255
  %695 = uitofp i32 %694 to float
  %696 = fmul fast float %690, %692
  %697 = fadd fast float %696, %695
  %698 = fmul fast float %697, 0x3F70101000000000
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = and i32 %700, 512
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %711, label %703

; <label>:703                                     ; preds = %678
  %704 = add i32 %54, 456
  %705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.i32 %705, 0
  %707 = add i32 %706, 0
  %708 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %707, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %709 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %708, %dx.types.Handle %101, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 0
  br label %711

; <label>:711                                     ; preds = %703, %678
  %712 = phi float [ %710, %703 ], [ 1.000000e+00, %678 ]
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = and i32 %714, 33554432
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %823, label %717

; <label>:717                                     ; preds = %711
  %718 = add i32 %54, 224
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = and i32 %720, 65535
  %722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %721)  ; LegacyF16ToF32(value)
  %723 = lshr i32 %720, 16
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = add i32 %54, 228
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = and i32 %727, 65535
  %729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %728)  ; LegacyF16ToF32(value)
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = lshr i32 %731, 24
  %733 = uitofp i32 %732 to float
  %734 = fmul fast float %733, 0x3F70101020000000
  %735 = and i32 %731, 255
  %736 = uitofp i32 %735 to float
  %737 = fmul fast float %736, 0x3F70101020000000
  %738 = lshr i32 %731, 8
  %739 = and i32 %738, 255
  %740 = uitofp i32 %739 to float
  %741 = fmul fast float %740, 0x3F70101020000000
  %742 = lshr i32 %731, 16
  %743 = and i32 %742, 255
  %744 = uitofp i32 %743 to float
  %745 = fmul fast float %744, 0x3F70101020000000
  %746 = add i32 %54, 220
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = lshr i32 %748, 24
  %750 = uitofp i32 %749 to float
  %751 = fmul fast float %750, 0x3F70101020000000
  %752 = and i32 %748, 255
  %753 = uitofp i32 %752 to float
  %754 = fmul fast float %753, 0x3F70101020000000
  %755 = lshr i32 %748, 8
  %756 = and i32 %755, 255
  %757 = uitofp i32 %756 to float
  %758 = fmul fast float %757, 0x3F70101020000000
  %759 = lshr i32 %748, 16
  %760 = and i32 %759, 255
  %761 = uitofp i32 %760 to float
  %762 = fmul fast float %761, 0x3F70101020000000
  %763 = bitcast float %687 to i32
  %764 = ashr i32 %763, 1
  %765 = sub nsw i32 1597463174, %764
  %766 = bitcast i32 %765 to float
  %767 = fmul fast float %687, 5.000000e-01
  %768 = fmul fast float %766, %766
  %769 = fmul fast float %768, %767
  %770 = fsub fast float 1.500000e+00, %769
  %771 = fmul fast float %766, %687
  %772 = fmul fast float %771, %770
  %773 = bitcast float %688 to i32
  %774 = ashr i32 %773, 1
  %775 = sub nsw i32 1597463174, %774
  %776 = bitcast i32 %775 to float
  %777 = fmul fast float %688, 5.000000e-01
  %778 = fmul fast float %776, %776
  %779 = fmul fast float %778, %777
  %780 = fsub fast float 1.500000e+00, %779
  %781 = fmul fast float %776, %688
  %782 = fmul fast float %781, %780
  %783 = bitcast float %689 to i32
  %784 = ashr i32 %783, 1
  %785 = sub nsw i32 1597463174, %784
  %786 = bitcast i32 %785 to float
  %787 = fmul fast float %689, 5.000000e-01
  %788 = fmul fast float %786, %786
  %789 = fmul fast float %788, %787
  %790 = fsub fast float 1.500000e+00, %789
  %791 = fmul fast float %786, %689
  %792 = fmul fast float %791, %790
  %793 = fsub fast float %772, %754
  %794 = fsub fast float %782, %758
  %795 = fsub fast float %792, %762
  %796 = fmul fast float %793, %722
  %797 = fmul fast float %794, %724
  %798 = fmul fast float %795, %729
  %799 = fadd fast float %796, %737
  %800 = fadd fast float %797, %741
  %801 = fadd fast float %798, %745
  %802 = call float @dx.op.unary.f32(i32 7, float %799)  ; Saturate(value)
  %803 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  %804 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %805 = fmul fast float %802, %802
  %806 = fmul fast float %803, %803
  %807 = fmul fast float %804, %804
  %808 = fsub fast float %805, %687
  %809 = fsub fast float %806, %688
  %810 = fsub fast float %807, %689
  %811 = fmul fast float %808, %712
  %812 = fmul fast float %809, %712
  %813 = fmul fast float %810, %712
  %814 = fadd fast float %811, %687
  %815 = fadd fast float %812, %688
  %816 = fadd fast float %813, %689
  %817 = fadd fast float %734, %698
  %818 = fsub fast float %817, %751
  %819 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %820 = fsub fast float %819, %698
  %821 = fmul fast float %820, %712
  %822 = fadd fast float %821, %698
  br label %876

; <label>:823                                     ; preds = %711
  %824 = and i32 %714, 134217728
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %860, label %826

; <label>:826                                     ; preds = %823
  %827 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %828 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %829 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %830 = fadd fast float %827, -5.000000e-01
  %831 = fadd fast float %828, -5.000000e-01
  %832 = fadd fast float %829, -5.000000e-01
  %833 = fmul fast float %830, %712
  %834 = fmul fast float %831, %712
  %835 = fmul fast float %832, %712
  %836 = fadd fast float %833, 5.000000e-01
  %837 = fadd fast float %834, 5.000000e-01
  %838 = fadd fast float %835, 5.000000e-01
  %839 = call float @dx.op.unary.f32(i32 24, float %687)  ; Sqrt(value)
  %840 = call float @dx.op.unary.f32(i32 24, float %688)  ; Sqrt(value)
  %841 = call float @dx.op.unary.f32(i32 24, float %689)  ; Sqrt(value)
  %842 = fmul fast float %836, 2.000000e+00
  %843 = fsub fast float 1.000000e+00, %842
  %844 = fmul fast float %843, %839
  %845 = fadd fast float %844, %842
  %846 = fmul fast float %845, %839
  %847 = fmul fast float %837, 2.000000e+00
  %848 = fsub fast float 1.000000e+00, %847
  %849 = fmul fast float %848, %840
  %850 = fadd fast float %849, %847
  %851 = fmul fast float %850, %840
  %852 = fmul fast float %838, 2.000000e+00
  %853 = fsub fast float 1.000000e+00, %852
  %854 = fmul fast float %853, %841
  %855 = fadd fast float %854, %852
  %856 = fmul fast float %855, %841
  %857 = fmul fast float %846, %846
  %858 = fmul fast float %851, %851
  %859 = fmul fast float %856, %856
  br label %876

; <label>:860                                     ; preds = %823
  %861 = fmul fast float %279, %279
  %862 = fmul fast float %283, %283
  %863 = fmul fast float %287, %287
  %864 = fadd fast float %861, -1.000000e+00
  %865 = fadd fast float %862, -1.000000e+00
  %866 = fadd fast float %863, -1.000000e+00
  %867 = fmul fast float %712, %864
  %868 = fmul fast float %712, %865
  %869 = fmul fast float %712, %866
  %870 = fadd fast float %867, 1.000000e+00
  %871 = fadd fast float %868, 1.000000e+00
  %872 = fadd fast float %869, 1.000000e+00
  %873 = fmul fast float %870, %687
  %874 = fmul fast float %871, %688
  %875 = fmul fast float %872, %689
  br label %876

; <label>:876                                     ; preds = %860, %826, %717, %672
  %877 = phi float [ %822, %717 ], [ %698, %826 ], [ %698, %860 ], [ 0x3FA23C0BE0000000, %672 ]
  %878 = phi float [ %814, %717 ], [ %857, %826 ], [ %873, %860 ], [ 1.000000e+00, %672 ]
  %879 = phi float [ %815, %717 ], [ %858, %826 ], [ %874, %860 ], [ 1.000000e+00, %672 ]
  %880 = phi float [ %816, %717 ], [ %859, %826 ], [ %875, %860 ], [ 1.000000e+00, %672 ]
  %881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.i32 %881, 1
  %883 = and i32 %882, 1
  %884 = icmp ne i32 %883, 0
  %885 = add i32 %54, 372
  %886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %887 = extractvalue %dx.types.ResRet.i32 %886, 0
  %888 = and i32 %887, 32
  %889 = icmp ne i32 %888, 0
  %890 = and i1 %884, %889
  %891 = select i1 %890, float 1.000000e+00, float %878
  %892 = select i1 %890, float 0x3FD3333340000000, float %879
  %893 = select i1 %890, float 0x3FD3333340000000, float %880
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = and i32 %895, 32
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %970, label %898

; <label>:898                                     ; preds = %876
  %899 = add i32 %54, 92
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = add i32 %54, 392
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = add i32 %904, 0
  %906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %905, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %907 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %906, %dx.types.Handle %100, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %908 = extractvalue %dx.types.ResRet.f32 %907, 0
  %909 = extractvalue %dx.types.ResRet.f32 %907, 1
  %910 = extractvalue %dx.types.ResRet.f32 %907, 2
  %911 = extractvalue %dx.types.ResRet.f32 %907, 3
  %912 = and i32 %901, 255
  %913 = uitofp i32 %912 to float
  %914 = lshr i32 %901, 8
  %915 = and i32 %914, 255
  %916 = uitofp i32 %915 to float
  %917 = lshr i32 %901, 16
  %918 = and i32 %917, 255
  %919 = uitofp i32 %918 to float
  %920 = fmul fast float %919, 0x3F70101000000000
  %921 = fmul fast float %908, %913
  %922 = fadd fast float %921, %916
  %923 = fmul fast float %922, 0x3F70101000000000
  %924 = fadd fast float %909, -5.000000e-01
  %925 = fadd fast float %911, -5.000000e-01
  %926 = fmul fast float %924, %920
  %927 = fmul fast float %925, %920
  %928 = fadd fast float %926, 5.000000e-01
  %929 = fadd fast float %927, 5.000000e-01
  %930 = fmul fast float %928, 2.000000e+00
  %931 = fadd fast float %930, -1.000000e+00
  %932 = fmul fast float %929, 2.000000e+00
  %933 = fadd fast float %932, -1.000000e+00
  %934 = fadd fast float %931, %933
  %935 = fmul fast float %934, 5.000000e-01
  %936 = fsub fast float %931, %933
  %937 = fmul fast float %936, 5.000000e-01
  %938 = call float @dx.op.unary.f32(i32 6, float %935)  ; FAbs(value)
  %939 = fsub fast float 1.000000e+00, %938
  %940 = call float @dx.op.unary.f32(i32 6, float %937)  ; FAbs(value)
  %941 = fsub fast float %939, %940
  %942 = call float @dx.op.dot3.f32(i32 55, float %935, float %937, float %941, float %935, float %937, float %941)  ; Dot3(ax,ay,az,bx,by,bz)
  %943 = call float @dx.op.unary.f32(i32 25, float %942)  ; Rsqrt(value)
  %944 = fmul fast float %935, %943
  %945 = fmul fast float %937, %943
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = and i32 %947, 67108864
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %966, label %950

; <label>:950                                     ; preds = %898
  %951 = add i32 %54, 280
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = and i32 %953, 65535
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = and i32 %957, 65535
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = lshr i32 %953, 16
  %961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %960)  ; LegacyF16ToF32(value)
  %962 = fsub fast float %923, %961
  %963 = fmul fast float %962, %955
  %964 = fadd fast float %963, %959
  %965 = call float @dx.op.unary.f32(i32 7, float %964)  ; Saturate(value)
  br label %966

; <label>:966                                     ; preds = %950, %898
  %967 = phi float [ %965, %950 ], [ %923, %898 ]
  %968 = call float @dx.op.dot2.f32(i32 54, float %944, float %945, float %504, float %505)  ; Dot2(ax,ay,bx,by)
  %969 = call float @dx.op.dot2.f32(i32 54, float %944, float %945, float %506, float %507)  ; Dot2(ax,ay,bx,by)
  br label %970

; <label>:970                                     ; preds = %966, %876
  %971 = phi float [ %967, %966 ], [ 0x3FD6666660000000, %876 ]
  %972 = phi float [ %968, %966 ], [ 0.000000e+00, %876 ]
  %973 = phi float [ %969, %966 ], [ 0.000000e+00, %876 ]
  %974 = phi float [ %910, %966 ], [ 1.000000e+00, %876 ]
  %975 = add i32 %54, 160
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = lshr i32 %977, 22
  %979 = shl nuw nsw i32 %978, 5
  %980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %979)  ; LegacyF16ToF32(value)
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = and i32 %982, 64
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %1018, label %985

; <label>:985                                     ; preds = %970
  %986 = add i32 %54, 408
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = add i32 %988, 0
  %990 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %989, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = and i32 %992, 131072
  %994 = icmp eq i32 %993, 0
  %995 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %990, %dx.types.Handle %100, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %996 = extractvalue %dx.types.ResRet.f32 %995, 0
  %997 = extractvalue %dx.types.ResRet.f32 %995, 1
  %998 = extractvalue %dx.types.ResRet.f32 %995, 2
  %999 = fmul fast float %996, %267
  %1000 = fmul fast float %997, %270
  %1001 = fmul fast float %998, %273
  br i1 %994, label %1008, label %1002

; <label>:1002                                    ; preds = %985
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 0
  %1005 = fmul fast float %1004, %999
  %1006 = fmul fast float %1004, %1000
  %1007 = fmul fast float %1004, %1001
  br label %1008

; <label>:1008                                    ; preds = %1002, %985
  %1009 = phi float [ %1005, %1002 ], [ %999, %985 ]
  %1010 = phi float [ %1006, %1002 ], [ %1000, %985 ]
  %1011 = phi float [ %1007, %1002 ], [ %1001, %985 ]
  %1012 = fmul fast float %1009, %980
  %1013 = select i1 %250, float %1012, float %1009
  %1014 = call float @dx.op.dot3.f32(i32 55, float %1013, float %1010, float %1011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1015 = select i1 %250, float 0.000000e+00, float %1009
  %1016 = select i1 %250, float %1014, float %1010
  %1017 = select i1 %250, float 0.000000e+00, float %1011
  br label %1018

; <label>:1018                                    ; preds = %1008, %970
  %1019 = phi float [ %1015, %1008 ], [ 0.000000e+00, %970 ]
  %1020 = phi float [ %1016, %1008 ], [ 0.000000e+00, %970 ]
  %1021 = phi float [ %1017, %1008 ], [ 0.000000e+00, %970 ]
  %1022 = add i32 %54, 96
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = and i32 %1024, 255
  %1026 = uitofp i32 %1025 to float
  %1027 = lshr i32 %1024, 8
  %1028 = and i32 %1027, 255
  %1029 = uitofp i32 %1028 to float
  %1030 = call float @dx.op.dot3.f32(i32 55, float %891, float %892, float %893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1031 = fmul fast float %1029, %1030
  %1032 = fadd fast float %1031, %1026
  %1033 = fmul fast float %1032, 0x3F70101020000000
  %1034 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  br label %1035

; <label>:1035                                    ; preds = %1018, %486
  %1036 = phi float [ 0.000000e+00, %486 ], [ %972, %1018 ]
  %1037 = phi float [ 0.000000e+00, %486 ], [ %973, %1018 ]
  %1038 = phi float [ 0.000000e+00, %486 ], [ %891, %1018 ]
  %1039 = phi float [ 0.000000e+00, %486 ], [ %892, %1018 ]
  %1040 = phi float [ 0.000000e+00, %486 ], [ %893, %1018 ]
  %1041 = phi float [ 0.000000e+00, %486 ], [ %1019, %1018 ]
  %1042 = phi float [ 0.000000e+00, %486 ], [ %1020, %1018 ]
  %1043 = phi float [ 0.000000e+00, %486 ], [ %1021, %1018 ]
  %1044 = phi float [ 0.000000e+00, %486 ], [ %877, %1018 ]
  %1045 = phi float [ 0.000000e+00, %486 ], [ %673, %1018 ]
  %1046 = phi float [ 0.000000e+00, %486 ], [ %971, %1018 ]
  %1047 = phi float [ 0.000000e+00, %486 ], [ %974, %1018 ]
  %1048 = phi float [ 0.000000e+00, %486 ], [ %1034, %1018 ]
  br i1 %434, label %1775, label %1049

; <label>:1049                                    ; preds = %1035
  %1050 = icmp ult i32 %492, 2
  %1051 = add i32 %54, 40
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = add i32 %54, 44
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = or i32 %1056, %1053
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1775, label %1059

; <label>:1059                                    ; preds = %1049
  %1060 = and i32 %1053, 262144
  %1061 = icmp ne i32 %1060, 0
  %1062 = select i1 %1061, float %59, float 1.000000e+00
  %1063 = select i1 %1061, float %60, float 0.000000e+00
  %1064 = select i1 %1061, float %61, float 0.000000e+00
  %1065 = select i1 %1061, float %62, float 1.000000e+00
  %1066 = select i1 %1061, float %63, float %86
  %1067 = select i1 %1061, float %64, float %87
  %1068 = add i32 %54, 300
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = lshr i32 %1070, 16
  %1072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1071)  ; LegacyF16ToF32(value)
  %1073 = fmul fast float %1072, 0x3F50624DE0000000
  %1074 = add i32 %54, 104
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = lshr i32 %1076, 16
  %1078 = and i32 %1077, 255
  %1079 = lshr i32 %1076, 24
  %1080 = add i32 %54, 308
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = and i32 %1082, 65535
  %1084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1083)  ; LegacyF16ToF32(value)
  %1085 = lshr i32 %1082, 16
  %1086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1085)  ; LegacyF16ToF32(value)
  %1087 = add i32 %54, 48
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = lshr i32 %1089, 22
  %1091 = shl nuw nsw i32 %1090, 5
  %1092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1091)  ; LegacyF16ToF32(value)
  %1093 = shl i32 %1089, 4
  %1094 = and i32 %1093, 32752
  %1095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1094)  ; LegacyF16ToF32(value)
  %1096 = lshr i32 %1089, 7
  %1097 = and i32 %1096, 32752
  %1098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1097)  ; LegacyF16ToF32(value)
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 3
  %1101 = fmul fast float %1100, 1.000000e+03
  %1102 = fmul fast float %344, %1101
  %1103 = call float @dx.op.unary.f32(i32 22, float %1102)  ; Frc(value)
  %1104 = fadd fast float %1103, %334
  %1105 = fmul fast float %345, %1101
  %1106 = call float @dx.op.unary.f32(i32 22, float %1105)  ; Frc(value)
  %1107 = fadd fast float %1106, %336
  %1108 = fmul fast float %1073, %1101
  %1109 = call float @dx.op.unary.f32(i32 22, float %1108)  ; Frc(value)
  %1110 = fmul fast float %1109, 0x401921FB60000000
  %1111 = fadd fast float %1110, %1092
  %1112 = call float @dx.op.unary.f32(i32 13, float %1111)  ; Sin(value)
  %1113 = call float @dx.op.unary.f32(i32 12, float %1111)  ; Cos(value)
  %1114 = fsub fast float -0.000000e+00, %1112
  %1115 = fadd fast float %1066, -5.000000e-01
  %1116 = fadd fast float %1067, -5.000000e-01
  %1117 = fmul fast float %1084, %1115
  %1118 = fmul fast float %1086, %1116
  %1119 = fadd fast float %1117, 5.000000e-01
  %1120 = fadd fast float %1118, 5.000000e-01
  %1121 = fmul fast float %1095, %1119
  %1122 = fmul fast float %1098, %1120
  %1123 = fmul fast float %1113, %1121
  %1124 = call float @dx.op.tertiary.f32(i32 46, float %1114, float %1122, float %1123)  ; FMad(a,b,c)
  %1125 = fmul fast float %1112, %1121
  %1126 = call float @dx.op.tertiary.f32(i32 46, float %1113, float %1122, float %1125)  ; FMad(a,b,c)
  %1127 = fadd fast float %1104, %1124
  %1128 = fadd fast float %1107, %1126
  %1129 = icmp ugt i32 %1078, 1
  %1130 = icmp ugt i32 %1076, 33554431
  %1131 = or i1 %1130, %1129
  br i1 %1131, label %1132, label %1157

; <label>:1132                                    ; preds = %1059
  %1133 = add i32 %54, 244
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = lshr i32 %1135, 16
  %1137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1136)  ; LegacyF16ToF32(value)
  %1138 = fmul fast float %1100, %1137
  %1139 = call float @dx.op.unary.f32(i32 22, float %1138)  ; Frc(value)
  %1140 = mul nuw nsw i32 %1078, %1079
  %1141 = uitofp i32 %1140 to float
  %1142 = fmul fast float %1139, %1141
  %1143 = call float @dx.op.unary.f32(i32 27, float %1142)  ; Round_ni(value)
  %1144 = fptoui float %1143 to i32
  %1145 = urem i32 %1144, %1078
  %1146 = udiv i32 %1144, %1079
  %1147 = call float @dx.op.unary.f32(i32 22, float %1127)  ; Frc(value)
  %1148 = call float @dx.op.unary.f32(i32 22, float %1128)  ; Frc(value)
  %1149 = uitofp i32 %1145 to float
  %1150 = uitofp i32 %1146 to float
  %1151 = fadd fast float %1147, %1149
  %1152 = fadd fast float %1148, %1150
  %1153 = uitofp i32 %1078 to float
  %1154 = uitofp i32 %1079 to float
  %1155 = fdiv fast float %1151, %1153
  %1156 = fdiv fast float %1152, %1154
  br label %1157

; <label>:1157                                    ; preds = %1132, %1059
  %1158 = phi float [ %1155, %1132 ], [ %1127, %1059 ]
  %1159 = phi float [ %1156, %1132 ], [ %1128, %1059 ]
  %1160 = and i32 %1053, 256
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %1208, label %1162

; <label>:1162                                    ; preds = %1157
  %1163 = add i32 %54, 444
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = add i32 %1165, 0
  %1167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1167, %dx.types.Handle %101, float %1158, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = add i32 %54, 116
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = shl i32 %1172, 4
  %1174 = and i32 %1173, 32752
  %1175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1174)  ; LegacyF16ToF32(value)
  %1176 = lshr i32 %1172, 7
  %1177 = and i32 %1176, 32752
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = fsub fast float 1.000000e+00, %489
  %1180 = call float @dx.op.binary.f32(i32 35, float %1179, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1181 = bitcast float %489 to i32
  %1182 = sitofp i32 %1181 to float
  %1183 = fadd fast float %1182, 0xC1CFBF8940000000
  %1184 = fmul fast float %1178, %1183
  %1185 = fadd fast float %1184, 0x41CFBF8940000000
  %1186 = fptosi float %1185 to i32
  %1187 = bitcast i32 %1186 to float
  %1188 = bitcast float %1180 to i32
  %1189 = sitofp i32 %1188 to float
  %1190 = fadd fast float %1189, 0xC1CFBF8940000000
  %1191 = fmul fast float %1190, %1178
  %1192 = fadd fast float %1191, 0x41CFBF8940000000
  %1193 = fptosi float %1192 to i32
  %1194 = bitcast i32 %1193 to float
  %1195 = fmul fast float %1187, %1175
  %1196 = fmul fast float %1194, %1175
  %1197 = fsub fast float %1180, %1195
  %1198 = fadd fast float %1196, %1180
  %1199 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1200 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1201 = fsub fast float %1169, %1199
  %1202 = fsub fast float %1200, %1199
  %1203 = bitcast float %1202 to i32
  %1204 = sub nsw i32 2129859010, %1203
  %1205 = bitcast i32 %1204 to float
  %1206 = fmul fast float %1205, %1201
  %1207 = call float @dx.op.unary.f32(i32 7, float %1206)  ; Saturate(value)
  br label %1208

; <label>:1208                                    ; preds = %1162, %1157
  %1209 = phi float [ %1207, %1162 ], [ %489, %1157 ]
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = and i32 %1211, 128
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %1230, label %1214

; <label>:1214                                    ; preds = %1208
  %1215 = add i32 %54, 428
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = add i32 %1217, 0
  %1219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1218, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1220 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1219, %dx.types.Handle %101, float %1158, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1221 = extractvalue %dx.types.ResRet.f32 %1220, 0
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = and i32 %1223, 524288
  %1225 = icmp ne i32 %1224, 0
  %1226 = fcmp fast ogt float %1221, 0x3FE0101020000000
  %1227 = select i1 %1226, float 1.000000e+00, float 0.000000e+00
  %1228 = select i1 %1225, float %1227, float %1221
  %1229 = fmul fast float %1228, %1209
  br label %1230

; <label>:1230                                    ; preds = %1214, %1208
  %1231 = phi float [ %1229, %1214 ], [ %1209, %1208 ]
  %1232 = fcmp fast ult float %1231, 0x3F70101020000000
  br i1 %1232, label %1775, label %1233

; <label>:1233                                    ; preds = %1230
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = and i32 %1235, 16
  %1237 = icmp eq i32 %1236, 0
  br i1 %1237, label %1436, label %1238

; <label>:1238                                    ; preds = %1233
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = add i32 %54, 380
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = add i32 %1243, 0
  %1245 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1244, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1246 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1245, %dx.types.Handle %100, float %1158, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1247 = extractvalue %dx.types.ResRet.f32 %1246, 0
  %1248 = extractvalue %dx.types.ResRet.f32 %1246, 1
  %1249 = extractvalue %dx.types.ResRet.f32 %1246, 2
  %1250 = extractvalue %dx.types.ResRet.f32 %1246, 3
  %1251 = and i32 %1240, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = lshr i32 %1240, 8
  %1254 = and i32 %1253, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = fmul fast float %1250, %1252
  %1257 = fadd fast float %1256, %1255
  %1258 = fmul fast float %1257, 0x3F70101000000000
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = and i32 %1260, 512
  %1262 = icmp eq i32 %1261, 0
  br i1 %1262, label %1271, label %1263

; <label>:1263                                    ; preds = %1238
  %1264 = add i32 %54, 460
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = add i32 %1266, 0
  %1268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1268, %dx.types.Handle %101, float %1158, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  br label %1271

; <label>:1271                                    ; preds = %1263, %1238
  %1272 = phi float [ %1270, %1263 ], [ 1.000000e+00, %1238 ]
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = and i32 %1274, 33554432
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1383, label %1277

; <label>:1277                                    ; preds = %1271
  %1278 = add i32 %54, 240
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = and i32 %1280, 65535
  %1282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1281)  ; LegacyF16ToF32(value)
  %1283 = lshr i32 %1280, 16
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = add i32 %54, 244
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = and i32 %1287, 65535
  %1289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1288)  ; LegacyF16ToF32(value)
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = lshr i32 %1291, 24
  %1293 = uitofp i32 %1292 to float
  %1294 = fmul fast float %1293, 0x3F70101020000000
  %1295 = and i32 %1291, 255
  %1296 = uitofp i32 %1295 to float
  %1297 = fmul fast float %1296, 0x3F70101020000000
  %1298 = lshr i32 %1291, 8
  %1299 = and i32 %1298, 255
  %1300 = uitofp i32 %1299 to float
  %1301 = fmul fast float %1300, 0x3F70101020000000
  %1302 = lshr i32 %1291, 16
  %1303 = and i32 %1302, 255
  %1304 = uitofp i32 %1303 to float
  %1305 = fmul fast float %1304, 0x3F70101020000000
  %1306 = add i32 %54, 236
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = lshr i32 %1308, 24
  %1310 = uitofp i32 %1309 to float
  %1311 = fmul fast float %1310, 0x3F70101020000000
  %1312 = and i32 %1308, 255
  %1313 = uitofp i32 %1312 to float
  %1314 = fmul fast float %1313, 0x3F70101020000000
  %1315 = lshr i32 %1308, 8
  %1316 = and i32 %1315, 255
  %1317 = uitofp i32 %1316 to float
  %1318 = fmul fast float %1317, 0x3F70101020000000
  %1319 = lshr i32 %1308, 16
  %1320 = and i32 %1319, 255
  %1321 = uitofp i32 %1320 to float
  %1322 = fmul fast float %1321, 0x3F70101020000000
  %1323 = bitcast float %1247 to i32
  %1324 = ashr i32 %1323, 1
  %1325 = sub nsw i32 1597463174, %1324
  %1326 = bitcast i32 %1325 to float
  %1327 = fmul fast float %1247, 5.000000e-01
  %1328 = fmul fast float %1326, %1326
  %1329 = fmul fast float %1328, %1327
  %1330 = fsub fast float 1.500000e+00, %1329
  %1331 = fmul fast float %1326, %1247
  %1332 = fmul fast float %1331, %1330
  %1333 = bitcast float %1248 to i32
  %1334 = ashr i32 %1333, 1
  %1335 = sub nsw i32 1597463174, %1334
  %1336 = bitcast i32 %1335 to float
  %1337 = fmul fast float %1248, 5.000000e-01
  %1338 = fmul fast float %1336, %1336
  %1339 = fmul fast float %1338, %1337
  %1340 = fsub fast float 1.500000e+00, %1339
  %1341 = fmul fast float %1336, %1248
  %1342 = fmul fast float %1341, %1340
  %1343 = bitcast float %1249 to i32
  %1344 = ashr i32 %1343, 1
  %1345 = sub nsw i32 1597463174, %1344
  %1346 = bitcast i32 %1345 to float
  %1347 = fmul fast float %1249, 5.000000e-01
  %1348 = fmul fast float %1346, %1346
  %1349 = fmul fast float %1348, %1347
  %1350 = fsub fast float 1.500000e+00, %1349
  %1351 = fmul fast float %1346, %1249
  %1352 = fmul fast float %1351, %1350
  %1353 = fsub fast float %1332, %1314
  %1354 = fsub fast float %1342, %1318
  %1355 = fsub fast float %1352, %1322
  %1356 = fmul fast float %1353, %1282
  %1357 = fmul fast float %1354, %1284
  %1358 = fmul fast float %1355, %1289
  %1359 = fadd fast float %1356, %1297
  %1360 = fadd fast float %1357, %1301
  %1361 = fadd fast float %1358, %1305
  %1362 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  %1363 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1364 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1365 = fmul fast float %1362, %1362
  %1366 = fmul fast float %1363, %1363
  %1367 = fmul fast float %1364, %1364
  %1368 = fsub fast float %1365, %1247
  %1369 = fsub fast float %1366, %1248
  %1370 = fsub fast float %1367, %1249
  %1371 = fmul fast float %1368, %1272
  %1372 = fmul fast float %1369, %1272
  %1373 = fmul fast float %1370, %1272
  %1374 = fadd fast float %1371, %1247
  %1375 = fadd fast float %1372, %1248
  %1376 = fadd fast float %1373, %1249
  %1377 = fadd fast float %1294, %1258
  %1378 = fsub fast float %1377, %1311
  %1379 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1380 = fsub fast float %1379, %1258
  %1381 = fmul fast float %1380, %1272
  %1382 = fadd fast float %1381, %1258
  br label %1436

; <label>:1383                                    ; preds = %1271
  %1384 = and i32 %1274, 134217728
  %1385 = icmp eq i32 %1384, 0
  br i1 %1385, label %1420, label %1386

; <label>:1386                                    ; preds = %1383
  %1387 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %1388 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %1389 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %1390 = fadd fast float %1387, -5.000000e-01
  %1391 = fadd fast float %1388, -5.000000e-01
  %1392 = fadd fast float %1389, -5.000000e-01
  %1393 = fmul fast float %1390, %1272
  %1394 = fmul fast float %1391, %1272
  %1395 = fmul fast float %1392, %1272
  %1396 = fadd fast float %1393, 5.000000e-01
  %1397 = fadd fast float %1394, 5.000000e-01
  %1398 = fadd fast float %1395, 5.000000e-01
  %1399 = call float @dx.op.unary.f32(i32 24, float %1247)  ; Sqrt(value)
  %1400 = call float @dx.op.unary.f32(i32 24, float %1248)  ; Sqrt(value)
  %1401 = call float @dx.op.unary.f32(i32 24, float %1249)  ; Sqrt(value)
  %1402 = fmul fast float %1396, 2.000000e+00
  %1403 = fsub fast float 1.000000e+00, %1402
  %1404 = fmul fast float %1403, %1399
  %1405 = fadd fast float %1404, %1402
  %1406 = fmul fast float %1405, %1399
  %1407 = fmul fast float %1397, 2.000000e+00
  %1408 = fsub fast float 1.000000e+00, %1407
  %1409 = fmul fast float %1408, %1400
  %1410 = fadd fast float %1409, %1407
  %1411 = fmul fast float %1410, %1400
  %1412 = fmul fast float %1398, 2.000000e+00
  %1413 = fsub fast float 1.000000e+00, %1412
  %1414 = fmul fast float %1413, %1401
  %1415 = fadd fast float %1414, %1412
  %1416 = fmul fast float %1415, %1401
  %1417 = fmul fast float %1406, %1406
  %1418 = fmul fast float %1411, %1411
  %1419 = fmul fast float %1416, %1416
  br label %1436

; <label>:1420                                    ; preds = %1383
  %1421 = fmul fast float %321, %321
  %1422 = fmul fast float %325, %325
  %1423 = fmul fast float %329, %329
  %1424 = fadd fast float %1421, -1.000000e+00
  %1425 = fadd fast float %1422, -1.000000e+00
  %1426 = fadd fast float %1423, -1.000000e+00
  %1427 = fmul fast float %1272, %1424
  %1428 = fmul fast float %1272, %1425
  %1429 = fmul fast float %1272, %1426
  %1430 = fadd fast float %1427, 1.000000e+00
  %1431 = fadd fast float %1428, 1.000000e+00
  %1432 = fadd fast float %1429, 1.000000e+00
  %1433 = fmul fast float %1430, %1247
  %1434 = fmul fast float %1431, %1248
  %1435 = fmul fast float %1432, %1249
  br label %1436

; <label>:1436                                    ; preds = %1420, %1386, %1277, %1233
  %1437 = phi float [ %1382, %1277 ], [ %1258, %1386 ], [ %1258, %1420 ], [ 0x3FA23C0BE0000000, %1233 ]
  %1438 = phi float [ %1374, %1277 ], [ %1417, %1386 ], [ %1433, %1420 ], [ 1.000000e+00, %1233 ]
  %1439 = phi float [ %1375, %1277 ], [ %1418, %1386 ], [ %1434, %1420 ], [ 1.000000e+00, %1233 ]
  %1440 = phi float [ %1376, %1277 ], [ %1419, %1386 ], [ %1435, %1420 ], [ 1.000000e+00, %1233 ]
  %1441 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1442 = extractvalue %dx.types.CBufRet.i32 %1441, 1
  %1443 = and i32 %1442, 1
  %1444 = icmp ne i32 %1443, 0
  %1445 = add i32 %54, 372
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1445, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = and i32 %1447, 32
  %1449 = icmp ne i32 %1448, 0
  %1450 = and i1 %1444, %1449
  %1451 = select i1 %1450, float 1.000000e+00, float %1438
  %1452 = select i1 %1450, float 0x3FD3333340000000, float %1439
  %1453 = select i1 %1450, float 0x3FD3333340000000, float %1440
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 32
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1530, label %1458

; <label>:1458                                    ; preds = %1436
  %1459 = add i32 %54, 108
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = add i32 %54, 396
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = add i32 %1464, 0
  %1466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1466, %dx.types.Handle %100, float %1158, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1468 = extractvalue %dx.types.ResRet.f32 %1467, 0
  %1469 = extractvalue %dx.types.ResRet.f32 %1467, 1
  %1470 = extractvalue %dx.types.ResRet.f32 %1467, 2
  %1471 = extractvalue %dx.types.ResRet.f32 %1467, 3
  %1472 = and i32 %1461, 255
  %1473 = uitofp i32 %1472 to float
  %1474 = lshr i32 %1461, 8
  %1475 = and i32 %1474, 255
  %1476 = uitofp i32 %1475 to float
  %1477 = lshr i32 %1461, 16
  %1478 = and i32 %1477, 255
  %1479 = uitofp i32 %1478 to float
  %1480 = fmul fast float %1479, 0x3F70101000000000
  %1481 = fmul fast float %1468, %1473
  %1482 = fadd fast float %1481, %1476
  %1483 = fmul fast float %1482, 0x3F70101000000000
  %1484 = fadd fast float %1469, -5.000000e-01
  %1485 = fadd fast float %1471, -5.000000e-01
  %1486 = fmul fast float %1484, %1480
  %1487 = fmul fast float %1485, %1480
  %1488 = fadd fast float %1486, 5.000000e-01
  %1489 = fadd fast float %1487, 5.000000e-01
  %1490 = fmul fast float %1488, 2.000000e+00
  %1491 = fadd fast float %1490, -1.000000e+00
  %1492 = fmul fast float %1489, 2.000000e+00
  %1493 = fadd fast float %1492, -1.000000e+00
  %1494 = fadd fast float %1491, %1493
  %1495 = fmul fast float %1494, 5.000000e-01
  %1496 = fsub fast float %1491, %1493
  %1497 = fmul fast float %1496, 5.000000e-01
  %1498 = call float @dx.op.unary.f32(i32 6, float %1495)  ; FAbs(value)
  %1499 = fsub fast float 1.000000e+00, %1498
  %1500 = call float @dx.op.unary.f32(i32 6, float %1497)  ; FAbs(value)
  %1501 = fsub fast float %1499, %1500
  %1502 = call float @dx.op.dot3.f32(i32 55, float %1495, float %1497, float %1501, float %1495, float %1497, float %1501)  ; Dot3(ax,ay,az,bx,by,bz)
  %1503 = call float @dx.op.unary.f32(i32 25, float %1502)  ; Rsqrt(value)
  %1504 = fmul fast float %1495, %1503
  %1505 = fmul fast float %1497, %1503
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = and i32 %1507, 67108864
  %1509 = icmp eq i32 %1508, 0
  br i1 %1509, label %1526, label %1510

; <label>:1510                                    ; preds = %1458
  %1511 = add i32 %54, 296
  %1512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.i32 %1512, 0
  %1514 = and i32 %1513, 65535
  %1515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1514)  ; LegacyF16ToF32(value)
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = and i32 %1517, 65535
  %1519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1518)  ; LegacyF16ToF32(value)
  %1520 = lshr i32 %1513, 16
  %1521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1520)  ; LegacyF16ToF32(value)
  %1522 = fsub fast float %1483, %1521
  %1523 = fmul fast float %1522, %1515
  %1524 = fadd fast float %1523, %1519
  %1525 = call float @dx.op.unary.f32(i32 7, float %1524)  ; Saturate(value)
  br label %1526

; <label>:1526                                    ; preds = %1510, %1458
  %1527 = phi float [ %1525, %1510 ], [ %1483, %1458 ]
  %1528 = call float @dx.op.dot2.f32(i32 54, float %1504, float %1505, float %1062, float %1063)  ; Dot2(ax,ay,bx,by)
  %1529 = call float @dx.op.dot2.f32(i32 54, float %1504, float %1505, float %1064, float %1065)  ; Dot2(ax,ay,bx,by)
  br label %1530

; <label>:1530                                    ; preds = %1526, %1436
  %1531 = phi float [ %1527, %1526 ], [ 0x3FD6666660000000, %1436 ]
  %1532 = phi float [ %1528, %1526 ], [ 0.000000e+00, %1436 ]
  %1533 = phi float [ %1529, %1526 ], [ 0.000000e+00, %1436 ]
  %1534 = phi float [ %1470, %1526 ], [ 1.000000e+00, %1436 ]
  %1535 = add i32 %54, 176
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = lshr i32 %1537, 22
  %1539 = shl nuw nsw i32 %1538, 5
  %1540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1539)  ; LegacyF16ToF32(value)
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = and i32 %1542, 64
  %1544 = icmp eq i32 %1543, 0
  br i1 %1544, label %1578, label %1545

; <label>:1545                                    ; preds = %1530
  %1546 = add i32 %54, 412
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1546, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = add i32 %1548, 0
  %1550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1549, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = and i32 %1552, 131072
  %1554 = icmp eq i32 %1553, 0
  %1555 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1550, %dx.types.Handle %100, float %1158, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1556 = extractvalue %dx.types.ResRet.f32 %1555, 0
  %1557 = extractvalue %dx.types.ResRet.f32 %1555, 1
  %1558 = extractvalue %dx.types.ResRet.f32 %1555, 2
  %1559 = fmul fast float %1556, %309
  %1560 = fmul fast float %1557, %312
  %1561 = fmul fast float %1558, %315
  br i1 %1554, label %1568, label %1562

; <label>:1562                                    ; preds = %1545
  %1563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1564 = extractvalue %dx.types.CBufRet.f32 %1563, 0
  %1565 = fmul fast float %1564, %1559
  %1566 = fmul fast float %1564, %1560
  %1567 = fmul fast float %1564, %1561
  br label %1568

; <label>:1568                                    ; preds = %1562, %1545
  %1569 = phi float [ %1565, %1562 ], [ %1559, %1545 ]
  %1570 = phi float [ %1566, %1562 ], [ %1560, %1545 ]
  %1571 = phi float [ %1567, %1562 ], [ %1561, %1545 ]
  %1572 = fmul fast float %1569, %1540
  %1573 = select i1 %250, float %1572, float %1569
  %1574 = call float @dx.op.dot3.f32(i32 55, float %1573, float %1570, float %1571, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1575 = select i1 %250, float 0.000000e+00, float %1569
  %1576 = select i1 %250, float %1574, float %1570
  %1577 = select i1 %250, float 0.000000e+00, float %1571
  br label %1578

; <label>:1578                                    ; preds = %1568, %1530
  %1579 = phi float [ %1575, %1568 ], [ 0.000000e+00, %1530 ]
  %1580 = phi float [ %1576, %1568 ], [ 0.000000e+00, %1530 ]
  %1581 = phi float [ %1577, %1568 ], [ 0.000000e+00, %1530 ]
  %1582 = add i32 %54, 112
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = and i32 %1584, 255
  %1586 = uitofp i32 %1585 to float
  %1587 = lshr i32 %1584, 8
  %1588 = and i32 %1587, 255
  %1589 = uitofp i32 %1588 to float
  %1590 = call float @dx.op.dot3.f32(i32 55, float %1451, float %1452, float %1453, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1591 = fmul fast float %1589, %1590
  %1592 = fadd fast float %1591, %1586
  %1593 = fmul fast float %1592, 0x3F70101020000000
  %1594 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  br i1 %1050, label %1595, label %1603

; <label>:1595                                    ; preds = %1578
  %1596 = fsub fast float 1.000000e+00, %1231
  %1597 = fmul fast float %1596, %1038
  %1598 = fmul fast float %1596, %1039
  %1599 = fmul fast float %1596, %1040
  %1600 = fmul fast float %1596, %1041
  %1601 = fmul fast float %1596, %1042
  %1602 = fmul fast float %1596, %1043
  br label %1603

; <label>:1603                                    ; preds = %1595, %1578
  %1604 = phi float [ %1597, %1595 ], [ %1038, %1578 ]
  %1605 = phi float [ %1598, %1595 ], [ %1039, %1578 ]
  %1606 = phi float [ %1599, %1595 ], [ %1040, %1578 ]
  %1607 = phi float [ %1600, %1595 ], [ %1041, %1578 ]
  %1608 = phi float [ %1601, %1595 ], [ %1042, %1578 ]
  %1609 = phi float [ %1602, %1595 ], [ %1043, %1578 ]
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = and i32 %1611, 3
  %1613 = icmp eq i32 %1612, 3
  br i1 %1613, label %1692, label %1614

; <label>:1614                                    ; preds = %1603
  %1615 = and i32 %1611, 16
  %1616 = icmp ne i32 %1615, 0
  %1617 = select i1 %1616, float %1231, float 0.000000e+00
  %1618 = icmp eq i32 %1612, 0
  br i1 %1618, label %1619, label %1647

; <label>:1619                                    ; preds = %1614
  %1620 = and i32 %1611, 64
  %1621 = icmp ne i32 %1620, 0
  %1622 = select i1 %1621, float %1231, float 0.000000e+00
  %1623 = fsub fast float %1451, %1604
  %1624 = fsub fast float %1452, %1605
  %1625 = fsub fast float %1453, %1606
  %1626 = fmul fast float %1617, %1623
  %1627 = fmul fast float %1617, %1624
  %1628 = fmul fast float %1617, %1625
  %1629 = fadd fast float %1626, %1604
  %1630 = fadd fast float %1627, %1605
  %1631 = fadd fast float %1628, %1606
  %1632 = fsub fast float %1437, %1044
  %1633 = fmul fast float %1617, %1632
  %1634 = fadd fast float %1633, %1044
  %1635 = fsub fast float %1579, %1607
  %1636 = fsub fast float %1580, %1608
  %1637 = fsub fast float %1581, %1609
  %1638 = fmul fast float %1622, %1635
  %1639 = fmul fast float %1622, %1636
  %1640 = fmul fast float %1622, %1637
  %1641 = fadd fast float %1638, %1607
  %1642 = fadd fast float %1639, %1608
  %1643 = fadd fast float %1640, %1609
  %1644 = fsub fast float %1594, %1048
  %1645 = fmul fast float %1617, %1644
  %1646 = fadd fast float %1645, %1048
  br label %1692

; <label>:1647                                    ; preds = %1614
  %1648 = icmp eq i32 %1612, 1
  br i1 %1648, label %1649, label %1662

; <label>:1649                                    ; preds = %1647
  %1650 = fadd fast float %1451, -1.000000e+00
  %1651 = fadd fast float %1452, -1.000000e+00
  %1652 = fadd fast float %1453, -1.000000e+00
  %1653 = fmul fast float %1617, %1650
  %1654 = fmul fast float %1617, %1651
  %1655 = fmul fast float %1617, %1652
  %1656 = fadd fast float %1653, 1.000000e+00
  %1657 = fadd fast float %1654, 1.000000e+00
  %1658 = fadd fast float %1655, 1.000000e+00
  %1659 = fmul fast float %1656, %1604
  %1660 = fmul fast float %1657, %1605
  %1661 = fmul fast float %1658, %1606
  br label %1692

; <label>:1662                                    ; preds = %1647
  %1663 = icmp eq i32 %1612, 2
  br i1 %1663, label %1664, label %1692

; <label>:1664                                    ; preds = %1662
  %1665 = call float @dx.op.unary.f32(i32 24, float %1451)  ; Sqrt(value)
  %1666 = call float @dx.op.unary.f32(i32 24, float %1452)  ; Sqrt(value)
  %1667 = call float @dx.op.unary.f32(i32 24, float %1453)  ; Sqrt(value)
  %1668 = fadd fast float %1665, -5.000000e-01
  %1669 = fadd fast float %1666, -5.000000e-01
  %1670 = fadd fast float %1667, -5.000000e-01
  %1671 = fmul fast float %1668, %1617
  %1672 = fmul fast float %1669, %1617
  %1673 = fmul fast float %1670, %1617
  %1674 = fadd fast float %1671, 5.000000e-01
  %1675 = fadd fast float %1672, 5.000000e-01
  %1676 = fadd fast float %1673, 5.000000e-01
  %1677 = fmul fast float %1674, 2.000000e+00
  %1678 = fsub fast float 1.000000e+00, %1677
  %1679 = fmul fast float %1678, %1604
  %1680 = fadd fast float %1679, %1677
  %1681 = fmul fast float %1680, %1604
  %1682 = fmul fast float %1675, 2.000000e+00
  %1683 = fsub fast float 1.000000e+00, %1682
  %1684 = fmul fast float %1683, %1605
  %1685 = fadd fast float %1684, %1682
  %1686 = fmul fast float %1685, %1605
  %1687 = fmul fast float %1676, 2.000000e+00
  %1688 = fsub fast float 1.000000e+00, %1687
  %1689 = fmul fast float %1688, %1606
  %1690 = fadd fast float %1689, %1687
  %1691 = fmul fast float %1690, %1606
  br label %1692

; <label>:1692                                    ; preds = %1664, %1662, %1649, %1619, %1603
  %1693 = phi float [ %1604, %1603 ], [ %1681, %1664 ], [ %1604, %1662 ], [ %1659, %1649 ], [ %1629, %1619 ]
  %1694 = phi float [ %1605, %1603 ], [ %1686, %1664 ], [ %1605, %1662 ], [ %1660, %1649 ], [ %1630, %1619 ]
  %1695 = phi float [ %1606, %1603 ], [ %1691, %1664 ], [ %1606, %1662 ], [ %1661, %1649 ], [ %1631, %1619 ]
  %1696 = phi float [ %1607, %1603 ], [ %1607, %1664 ], [ %1607, %1662 ], [ %1607, %1649 ], [ %1641, %1619 ]
  %1697 = phi float [ %1608, %1603 ], [ %1608, %1664 ], [ %1608, %1662 ], [ %1608, %1649 ], [ %1642, %1619 ]
  %1698 = phi float [ %1609, %1603 ], [ %1609, %1664 ], [ %1609, %1662 ], [ %1609, %1649 ], [ %1643, %1619 ]
  %1699 = phi float [ %1044, %1603 ], [ %1044, %1664 ], [ %1044, %1662 ], [ %1044, %1649 ], [ %1634, %1619 ]
  %1700 = phi float [ %1048, %1603 ], [ %1048, %1664 ], [ %1048, %1662 ], [ %1048, %1649 ], [ %1646, %1619 ]
  %1701 = and i32 %1611, 12
  %1702 = icmp eq i32 %1701, 12
  br i1 %1702, label %1775, label %1703

; <label>:1703                                    ; preds = %1692
  %1704 = and i32 %1611, 2097184
  %1705 = icmp eq i32 %1704, 2097184
  %1706 = select i1 %1705, float %1231, float 0.000000e+00
  %1707 = and i32 %1611, 4194336
  %1708 = icmp eq i32 %1707, 4194336
  %1709 = select i1 %1708, float %1231, float 0.000000e+00
  %1710 = and i32 %1611, 8388640
  %1711 = icmp eq i32 %1710, 8388640
  %1712 = select i1 %1711, float %1231, float 0.000000e+00
  %1713 = icmp eq i32 %1701, 0
  br i1 %1713, label %1714, label %1727

; <label>:1714                                    ; preds = %1703
  %1715 = fsub fast float %1532, %1036
  %1716 = fsub fast float %1533, %1037
  %1717 = fmul fast float %1706, %1715
  %1718 = fmul fast float %1706, %1716
  %1719 = fadd fast float %1717, %1036
  %1720 = fadd fast float %1718, %1037
  %1721 = fsub fast float %1534, %1047
  %1722 = fmul fast float %1709, %1721
  %1723 = fadd fast float %1722, %1047
  %1724 = fsub fast float %1531, %1046
  %1725 = fmul fast float %1712, %1724
  %1726 = fadd fast float %1725, %1046
  br label %1775

; <label>:1727                                    ; preds = %1703
  %1728 = icmp eq i32 %1701, 4
  br i1 %1728, label %1729, label %1761

; <label>:1729                                    ; preds = %1727
  %1730 = fmul fast float %1706, %1532
  %1731 = fmul fast float %1706, %1533
  %1732 = fadd fast float %1730, %1036
  %1733 = fadd fast float %1731, %1037
  %1734 = call float @dx.op.binary.f32(i32 36, float %1047, float %1534)  ; FMin(a,b)
  %1735 = fsub fast float %1734, %1047
  %1736 = fmul fast float %1735, %1709
  %1737 = fadd fast float %1736, %1047
  %1738 = fadd fast float %1531, %1046
  %1739 = fmul fast float %1738, 0x3FF337FAE0000000
  %1740 = fmul fast float %1046, %1046
  %1741 = fmul fast float %1531, %1531
  %1742 = fadd fast float %1741, %1740
  %1743 = fmul fast float %1742, 0x3FE5152B00000000
  %1744 = fmul fast float %1046, 0xBFCC1F85E0000000
  %1745 = fmul fast float %1744, %1531
  %1746 = fadd fast float %1745, 0xBFE1363700000000
  %1747 = fadd fast float %1746, %1739
  %1748 = fsub fast float %1747, %1743
  %1749 = fmul fast float %1738, 0x3FBA6F0D00000000
  %1750 = fmul fast float %1742, 0x3FD0432880000000
  %1751 = fmul fast float %1046, 0xBFEF110800000000
  %1752 = fmul fast float %1751, %1531
  %1753 = fadd fast float %1752, 1.000000e+00
  %1754 = fsub fast float %1753, %1749
  %1755 = fadd fast float %1754, %1750
  %1756 = fdiv fast float %1748, %1755
  %1757 = call float @dx.op.unary.f32(i32 7, float %1756)  ; Saturate(value)
  %1758 = fsub fast float %1757, %1046
  %1759 = fmul fast float %1758, %1712
  %1760 = fadd fast float %1759, %1046
  br label %1775

; <label>:1761                                    ; preds = %1727
  %1762 = icmp eq i32 %1701, 8
  br i1 %1762, label %1763, label %1775

; <label>:1763                                    ; preds = %1761
  %1764 = fmul fast float %1706, %1532
  %1765 = fmul fast float %1706, %1533
  %1766 = fadd fast float %1764, %1036
  %1767 = fadd fast float %1765, %1037
  %1768 = call float @dx.op.binary.f32(i32 36, float %1047, float %1534)  ; FMin(a,b)
  %1769 = fsub fast float %1768, %1047
  %1770 = fmul fast float %1769, %1709
  %1771 = fadd fast float %1770, %1047
  %1772 = fsub fast float %1531, %1046
  %1773 = fmul fast float %1712, %1772
  %1774 = fadd fast float %1773, %1046
  br label %1775

; <label>:1775                                    ; preds = %1763, %1761, %1729, %1714, %1692, %1230, %1049, %1035
  %1776 = phi float [ %1036, %1692 ], [ %1036, %1230 ], [ %1036, %1035 ], [ %1766, %1763 ], [ %1036, %1761 ], [ %1732, %1729 ], [ %1719, %1714 ], [ %1036, %1049 ]
  %1777 = phi float [ %1037, %1692 ], [ %1037, %1230 ], [ %1037, %1035 ], [ %1767, %1763 ], [ %1037, %1761 ], [ %1733, %1729 ], [ %1720, %1714 ], [ %1037, %1049 ]
  %1778 = phi float [ %1693, %1692 ], [ %1038, %1230 ], [ %1038, %1035 ], [ %1693, %1763 ], [ %1693, %1761 ], [ %1693, %1729 ], [ %1693, %1714 ], [ %1038, %1049 ]
  %1779 = phi float [ %1694, %1692 ], [ %1039, %1230 ], [ %1039, %1035 ], [ %1694, %1763 ], [ %1694, %1761 ], [ %1694, %1729 ], [ %1694, %1714 ], [ %1039, %1049 ]
  %1780 = phi float [ %1695, %1692 ], [ %1040, %1230 ], [ %1040, %1035 ], [ %1695, %1763 ], [ %1695, %1761 ], [ %1695, %1729 ], [ %1695, %1714 ], [ %1040, %1049 ]
  %1781 = phi float [ %1696, %1692 ], [ %1041, %1230 ], [ %1041, %1035 ], [ %1696, %1763 ], [ %1696, %1761 ], [ %1696, %1729 ], [ %1696, %1714 ], [ %1041, %1049 ]
  %1782 = phi float [ %1697, %1692 ], [ %1042, %1230 ], [ %1042, %1035 ], [ %1697, %1763 ], [ %1697, %1761 ], [ %1697, %1729 ], [ %1697, %1714 ], [ %1042, %1049 ]
  %1783 = phi float [ %1698, %1692 ], [ %1043, %1230 ], [ %1043, %1035 ], [ %1698, %1763 ], [ %1698, %1761 ], [ %1698, %1729 ], [ %1698, %1714 ], [ %1043, %1049 ]
  %1784 = phi float [ %1699, %1692 ], [ %1044, %1230 ], [ %1044, %1035 ], [ %1699, %1763 ], [ %1699, %1761 ], [ %1699, %1729 ], [ %1699, %1714 ], [ %1044, %1049 ]
  %1785 = phi float [ %1046, %1692 ], [ %1046, %1230 ], [ %1046, %1035 ], [ %1774, %1763 ], [ %1046, %1761 ], [ %1760, %1729 ], [ %1726, %1714 ], [ %1046, %1049 ]
  %1786 = phi float [ %1047, %1692 ], [ %1047, %1230 ], [ %1047, %1035 ], [ %1771, %1763 ], [ %1047, %1761 ], [ %1737, %1729 ], [ %1723, %1714 ], [ %1047, %1049 ]
  %1787 = phi float [ %1700, %1692 ], [ %1048, %1230 ], [ %1048, %1035 ], [ %1700, %1763 ], [ %1700, %1761 ], [ %1700, %1729 ], [ %1700, %1714 ], [ %1048, %1049 ]
  br i1 %436, label %2514, label %1788

; <label>:1788                                    ; preds = %1775
  %1789 = icmp ult i32 %492, 3
  %1790 = add i32 %54, 56
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = add i32 %54, 60
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = or i32 %1795, %1792
  %1797 = icmp eq i32 %1796, 0
  br i1 %1797, label %2514, label %1798

; <label>:1798                                    ; preds = %1788
  %1799 = and i32 %1792, 262144
  %1800 = icmp ne i32 %1799, 0
  %1801 = select i1 %1800, float %59, float 1.000000e+00
  %1802 = select i1 %1800, float %60, float 0.000000e+00
  %1803 = select i1 %1800, float %61, float 0.000000e+00
  %1804 = select i1 %1800, float %62, float 1.000000e+00
  %1805 = select i1 %1800, float %63, float %86
  %1806 = select i1 %1800, float %64, float %87
  %1807 = add i32 %54, 316
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = lshr i32 %1809, 16
  %1811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1810)  ; LegacyF16ToF32(value)
  %1812 = fmul fast float %1811, 0x3F50624DE0000000
  %1813 = add i32 %54, 120
  %1814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1815 = extractvalue %dx.types.ResRet.i32 %1814, 0
  %1816 = lshr i32 %1815, 16
  %1817 = and i32 %1816, 255
  %1818 = lshr i32 %1815, 24
  %1819 = add i32 %54, 324
  %1820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1819, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.i32 %1820, 0
  %1822 = and i32 %1821, 65535
  %1823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1822)  ; LegacyF16ToF32(value)
  %1824 = lshr i32 %1821, 16
  %1825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1824)  ; LegacyF16ToF32(value)
  %1826 = add i32 %54, 64
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = lshr i32 %1828, 22
  %1830 = shl nuw nsw i32 %1829, 5
  %1831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1830)  ; LegacyF16ToF32(value)
  %1832 = shl i32 %1828, 4
  %1833 = and i32 %1832, 32752
  %1834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1833)  ; LegacyF16ToF32(value)
  %1835 = lshr i32 %1828, 7
  %1836 = and i32 %1835, 32752
  %1837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1836)  ; LegacyF16ToF32(value)
  %1838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1838, 3
  %1840 = fmul fast float %1839, 1.000000e+03
  %1841 = fmul fast float %386, %1840
  %1842 = call float @dx.op.unary.f32(i32 22, float %1841)  ; Frc(value)
  %1843 = fadd fast float %1842, %376
  %1844 = fmul fast float %387, %1840
  %1845 = call float @dx.op.unary.f32(i32 22, float %1844)  ; Frc(value)
  %1846 = fadd fast float %1845, %378
  %1847 = fmul fast float %1812, %1840
  %1848 = call float @dx.op.unary.f32(i32 22, float %1847)  ; Frc(value)
  %1849 = fmul fast float %1848, 0x401921FB60000000
  %1850 = fadd fast float %1849, %1831
  %1851 = call float @dx.op.unary.f32(i32 13, float %1850)  ; Sin(value)
  %1852 = call float @dx.op.unary.f32(i32 12, float %1850)  ; Cos(value)
  %1853 = fsub fast float -0.000000e+00, %1851
  %1854 = fadd fast float %1805, -5.000000e-01
  %1855 = fadd fast float %1806, -5.000000e-01
  %1856 = fmul fast float %1823, %1854
  %1857 = fmul fast float %1825, %1855
  %1858 = fadd fast float %1856, 5.000000e-01
  %1859 = fadd fast float %1857, 5.000000e-01
  %1860 = fmul fast float %1834, %1858
  %1861 = fmul fast float %1837, %1859
  %1862 = fmul fast float %1852, %1860
  %1863 = call float @dx.op.tertiary.f32(i32 46, float %1853, float %1861, float %1862)  ; FMad(a,b,c)
  %1864 = fmul fast float %1851, %1860
  %1865 = call float @dx.op.tertiary.f32(i32 46, float %1852, float %1861, float %1864)  ; FMad(a,b,c)
  %1866 = fadd fast float %1843, %1863
  %1867 = fadd fast float %1846, %1865
  %1868 = icmp ugt i32 %1817, 1
  %1869 = icmp ugt i32 %1815, 33554431
  %1870 = or i1 %1869, %1868
  br i1 %1870, label %1871, label %1896

; <label>:1871                                    ; preds = %1798
  %1872 = add i32 %54, 260
  %1873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.i32 %1873, 0
  %1875 = lshr i32 %1874, 16
  %1876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1875)  ; LegacyF16ToF32(value)
  %1877 = fmul fast float %1839, %1876
  %1878 = call float @dx.op.unary.f32(i32 22, float %1877)  ; Frc(value)
  %1879 = mul nuw nsw i32 %1817, %1818
  %1880 = uitofp i32 %1879 to float
  %1881 = fmul fast float %1878, %1880
  %1882 = call float @dx.op.unary.f32(i32 27, float %1881)  ; Round_ni(value)
  %1883 = fptoui float %1882 to i32
  %1884 = urem i32 %1883, %1817
  %1885 = udiv i32 %1883, %1818
  %1886 = call float @dx.op.unary.f32(i32 22, float %1866)  ; Frc(value)
  %1887 = call float @dx.op.unary.f32(i32 22, float %1867)  ; Frc(value)
  %1888 = uitofp i32 %1884 to float
  %1889 = uitofp i32 %1885 to float
  %1890 = fadd fast float %1886, %1888
  %1891 = fadd fast float %1887, %1889
  %1892 = uitofp i32 %1817 to float
  %1893 = uitofp i32 %1818 to float
  %1894 = fdiv fast float %1890, %1892
  %1895 = fdiv fast float %1891, %1893
  br label %1896

; <label>:1896                                    ; preds = %1871, %1798
  %1897 = phi float [ %1894, %1871 ], [ %1866, %1798 ]
  %1898 = phi float [ %1895, %1871 ], [ %1867, %1798 ]
  %1899 = and i32 %1792, 256
  %1900 = icmp eq i32 %1899, 0
  br i1 %1900, label %1947, label %1901

; <label>:1901                                    ; preds = %1896
  %1902 = add i32 %54, 448
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = add i32 %1904, 0
  %1906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1905, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1907 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1906, %dx.types.Handle %101, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1908 = extractvalue %dx.types.ResRet.f32 %1907, 0
  %1909 = add i32 %54, 132
  %1910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.i32 %1910, 0
  %1912 = shl i32 %1911, 4
  %1913 = and i32 %1912, 32752
  %1914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1913)  ; LegacyF16ToF32(value)
  %1915 = lshr i32 %1911, 7
  %1916 = and i32 %1915, 32752
  %1917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1916)  ; LegacyF16ToF32(value)
  %1918 = fsub fast float 1.000000e+00, %488
  %1919 = call float @dx.op.binary.f32(i32 35, float %1918, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1920 = bitcast float %488 to i32
  %1921 = sitofp i32 %1920 to float
  %1922 = fadd fast float %1921, 0xC1CFBF8940000000
  %1923 = fmul fast float %1917, %1922
  %1924 = fadd fast float %1923, 0x41CFBF8940000000
  %1925 = fptosi float %1924 to i32
  %1926 = bitcast i32 %1925 to float
  %1927 = bitcast float %1919 to i32
  %1928 = sitofp i32 %1927 to float
  %1929 = fadd fast float %1928, 0xC1CFBF8940000000
  %1930 = fmul fast float %1929, %1917
  %1931 = fadd fast float %1930, 0x41CFBF8940000000
  %1932 = fptosi float %1931 to i32
  %1933 = bitcast i32 %1932 to float
  %1934 = fmul fast float %1926, %1914
  %1935 = fmul fast float %1933, %1914
  %1936 = fsub fast float %1919, %1934
  %1937 = fadd fast float %1935, %1919
  %1938 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1939 = call float @dx.op.unary.f32(i32 7, float %1937)  ; Saturate(value)
  %1940 = fsub fast float %1908, %1938
  %1941 = fsub fast float %1939, %1938
  %1942 = bitcast float %1941 to i32
  %1943 = sub nsw i32 2129859010, %1942
  %1944 = bitcast i32 %1943 to float
  %1945 = fmul fast float %1944, %1940
  %1946 = call float @dx.op.unary.f32(i32 7, float %1945)  ; Saturate(value)
  br label %1947

; <label>:1947                                    ; preds = %1901, %1896
  %1948 = phi float [ %1946, %1901 ], [ %488, %1896 ]
  %1949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.i32 %1949, 0
  %1951 = and i32 %1950, 128
  %1952 = icmp eq i32 %1951, 0
  br i1 %1952, label %1969, label %1953

; <label>:1953                                    ; preds = %1947
  %1954 = add i32 %54, 432
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = add i32 %1956, 0
  %1958 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1957, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1959 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1958, %dx.types.Handle %101, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1960 = extractvalue %dx.types.ResRet.f32 %1959, 0
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = and i32 %1962, 524288
  %1964 = icmp ne i32 %1963, 0
  %1965 = fcmp fast ogt float %1960, 0x3FE0101020000000
  %1966 = select i1 %1965, float 1.000000e+00, float 0.000000e+00
  %1967 = select i1 %1964, float %1966, float %1960
  %1968 = fmul fast float %1967, %1948
  br label %1969

; <label>:1969                                    ; preds = %1953, %1947
  %1970 = phi float [ %1968, %1953 ], [ %1948, %1947 ]
  %1971 = fcmp fast ult float %1970, 0x3F70101020000000
  br i1 %1971, label %2514, label %1972

; <label>:1972                                    ; preds = %1969
  %1973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.i32 %1973, 0
  %1975 = and i32 %1974, 16
  %1976 = icmp eq i32 %1975, 0
  br i1 %1976, label %2175, label %1977

; <label>:1977                                    ; preds = %1972
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = add i32 %54, 384
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = add i32 %1982, 0
  %1984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1983, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1985 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1984, %dx.types.Handle %100, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 0
  %1987 = extractvalue %dx.types.ResRet.f32 %1985, 1
  %1988 = extractvalue %dx.types.ResRet.f32 %1985, 2
  %1989 = extractvalue %dx.types.ResRet.f32 %1985, 3
  %1990 = and i32 %1979, 255
  %1991 = uitofp i32 %1990 to float
  %1992 = lshr i32 %1979, 8
  %1993 = and i32 %1992, 255
  %1994 = uitofp i32 %1993 to float
  %1995 = fmul fast float %1989, %1991
  %1996 = fadd fast float %1995, %1994
  %1997 = fmul fast float %1996, 0x3F70101000000000
  %1998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.i32 %1998, 0
  %2000 = and i32 %1999, 512
  %2001 = icmp eq i32 %2000, 0
  br i1 %2001, label %2010, label %2002

; <label>:2002                                    ; preds = %1977
  %2003 = add i32 %54, 464
  %2004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.i32 %2004, 0
  %2006 = add i32 %2005, 0
  %2007 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2006, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2008 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2007, %dx.types.Handle %101, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2009 = extractvalue %dx.types.ResRet.f32 %2008, 0
  br label %2010

; <label>:2010                                    ; preds = %2002, %1977
  %2011 = phi float [ %2009, %2002 ], [ 1.000000e+00, %1977 ]
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = and i32 %2013, 33554432
  %2015 = icmp eq i32 %2014, 0
  br i1 %2015, label %2122, label %2016

; <label>:2016                                    ; preds = %2010
  %2017 = add i32 %54, 256
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = and i32 %2019, 65535
  %2021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2020)  ; LegacyF16ToF32(value)
  %2022 = lshr i32 %2019, 16
  %2023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2022)  ; LegacyF16ToF32(value)
  %2024 = add i32 %54, 260
  %2025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.i32 %2025, 0
  %2027 = and i32 %2026, 65535
  %2028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2027)  ; LegacyF16ToF32(value)
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = lshr i32 %2030, 24
  %2032 = uitofp i32 %2031 to float
  %2033 = fmul fast float %2032, 0x3F70101020000000
  %2034 = and i32 %2030, 255
  %2035 = uitofp i32 %2034 to float
  %2036 = fmul fast float %2035, 0x3F70101020000000
  %2037 = lshr i32 %2030, 8
  %2038 = and i32 %2037, 255
  %2039 = uitofp i32 %2038 to float
  %2040 = fmul fast float %2039, 0x3F70101020000000
  %2041 = lshr i32 %2030, 16
  %2042 = and i32 %2041, 255
  %2043 = uitofp i32 %2042 to float
  %2044 = fmul fast float %2043, 0x3F70101020000000
  %2045 = add i32 %54, 252
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = lshr i32 %2047, 24
  %2049 = uitofp i32 %2048 to float
  %2050 = fmul fast float %2049, 0x3F70101020000000
  %2051 = and i32 %2047, 255
  %2052 = uitofp i32 %2051 to float
  %2053 = fmul fast float %2052, 0x3F70101020000000
  %2054 = lshr i32 %2047, 8
  %2055 = and i32 %2054, 255
  %2056 = uitofp i32 %2055 to float
  %2057 = fmul fast float %2056, 0x3F70101020000000
  %2058 = lshr i32 %2047, 16
  %2059 = and i32 %2058, 255
  %2060 = uitofp i32 %2059 to float
  %2061 = fmul fast float %2060, 0x3F70101020000000
  %2062 = bitcast float %1986 to i32
  %2063 = ashr i32 %2062, 1
  %2064 = sub nsw i32 1597463174, %2063
  %2065 = bitcast i32 %2064 to float
  %2066 = fmul fast float %1986, 5.000000e-01
  %2067 = fmul fast float %2065, %2065
  %2068 = fmul fast float %2067, %2066
  %2069 = fsub fast float 1.500000e+00, %2068
  %2070 = fmul fast float %2065, %1986
  %2071 = fmul fast float %2070, %2069
  %2072 = bitcast float %1987 to i32
  %2073 = ashr i32 %2072, 1
  %2074 = sub nsw i32 1597463174, %2073
  %2075 = bitcast i32 %2074 to float
  %2076 = fmul fast float %1987, 5.000000e-01
  %2077 = fmul fast float %2075, %2075
  %2078 = fmul fast float %2077, %2076
  %2079 = fsub fast float 1.500000e+00, %2078
  %2080 = fmul fast float %2075, %1987
  %2081 = fmul fast float %2080, %2079
  %2082 = bitcast float %1988 to i32
  %2083 = ashr i32 %2082, 1
  %2084 = sub nsw i32 1597463174, %2083
  %2085 = bitcast i32 %2084 to float
  %2086 = fmul fast float %1988, 5.000000e-01
  %2087 = fmul fast float %2085, %2085
  %2088 = fmul fast float %2087, %2086
  %2089 = fsub fast float 1.500000e+00, %2088
  %2090 = fmul fast float %2085, %1988
  %2091 = fmul fast float %2090, %2089
  %2092 = fsub fast float %2071, %2053
  %2093 = fsub fast float %2081, %2057
  %2094 = fsub fast float %2091, %2061
  %2095 = fmul fast float %2092, %2021
  %2096 = fmul fast float %2093, %2023
  %2097 = fmul fast float %2094, %2028
  %2098 = fadd fast float %2095, %2036
  %2099 = fadd fast float %2096, %2040
  %2100 = fadd fast float %2097, %2044
  %2101 = call float @dx.op.unary.f32(i32 7, float %2098)  ; Saturate(value)
  %2102 = call float @dx.op.unary.f32(i32 7, float %2099)  ; Saturate(value)
  %2103 = call float @dx.op.unary.f32(i32 7, float %2100)  ; Saturate(value)
  %2104 = fmul fast float %2101, %2101
  %2105 = fmul fast float %2102, %2102
  %2106 = fmul fast float %2103, %2103
  %2107 = fsub fast float %2104, %1986
  %2108 = fsub fast float %2105, %1987
  %2109 = fsub fast float %2106, %1988
  %2110 = fmul fast float %2107, %2011
  %2111 = fmul fast float %2108, %2011
  %2112 = fmul fast float %2109, %2011
  %2113 = fadd fast float %2110, %1986
  %2114 = fadd fast float %2111, %1987
  %2115 = fadd fast float %2112, %1988
  %2116 = fadd fast float %2033, %1997
  %2117 = fsub fast float %2116, %2050
  %2118 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2119 = fsub fast float %2118, %1997
  %2120 = fmul fast float %2119, %2011
  %2121 = fadd fast float %2120, %1997
  br label %2175

; <label>:2122                                    ; preds = %2010
  %2123 = and i32 %2013, 134217728
  %2124 = icmp eq i32 %2123, 0
  br i1 %2124, label %2159, label %2125

; <label>:2125                                    ; preds = %2122
  %2126 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %2127 = call float @dx.op.unary.f32(i32 24, float %367)  ; Sqrt(value)
  %2128 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %2129 = fadd fast float %2126, -5.000000e-01
  %2130 = fadd fast float %2127, -5.000000e-01
  %2131 = fadd fast float %2128, -5.000000e-01
  %2132 = fmul fast float %2129, %2011
  %2133 = fmul fast float %2130, %2011
  %2134 = fmul fast float %2131, %2011
  %2135 = fadd fast float %2132, 5.000000e-01
  %2136 = fadd fast float %2133, 5.000000e-01
  %2137 = fadd fast float %2134, 5.000000e-01
  %2138 = call float @dx.op.unary.f32(i32 24, float %1986)  ; Sqrt(value)
  %2139 = call float @dx.op.unary.f32(i32 24, float %1987)  ; Sqrt(value)
  %2140 = call float @dx.op.unary.f32(i32 24, float %1988)  ; Sqrt(value)
  %2141 = fmul fast float %2135, 2.000000e+00
  %2142 = fsub fast float 1.000000e+00, %2141
  %2143 = fmul fast float %2142, %2138
  %2144 = fadd fast float %2143, %2141
  %2145 = fmul fast float %2144, %2138
  %2146 = fmul fast float %2136, 2.000000e+00
  %2147 = fsub fast float 1.000000e+00, %2146
  %2148 = fmul fast float %2147, %2139
  %2149 = fadd fast float %2148, %2146
  %2150 = fmul fast float %2149, %2139
  %2151 = fmul fast float %2137, 2.000000e+00
  %2152 = fsub fast float 1.000000e+00, %2151
  %2153 = fmul fast float %2152, %2140
  %2154 = fadd fast float %2153, %2151
  %2155 = fmul fast float %2154, %2140
  %2156 = fmul fast float %2145, %2145
  %2157 = fmul fast float %2150, %2150
  %2158 = fmul fast float %2155, %2155
  br label %2175

; <label>:2159                                    ; preds = %2122
  %2160 = fmul fast float %363, %363
  %2161 = fmul fast float %367, %367
  %2162 = fmul fast float %371, %371
  %2163 = fadd fast float %2160, -1.000000e+00
  %2164 = fadd fast float %2161, -1.000000e+00
  %2165 = fadd fast float %2162, -1.000000e+00
  %2166 = fmul fast float %2011, %2163
  %2167 = fmul fast float %2011, %2164
  %2168 = fmul fast float %2011, %2165
  %2169 = fadd fast float %2166, 1.000000e+00
  %2170 = fadd fast float %2167, 1.000000e+00
  %2171 = fadd fast float %2168, 1.000000e+00
  %2172 = fmul fast float %2169, %1986
  %2173 = fmul fast float %2170, %1987
  %2174 = fmul fast float %2171, %1988
  br label %2175

; <label>:2175                                    ; preds = %2159, %2125, %2016, %1972
  %2176 = phi float [ %2121, %2016 ], [ %1997, %2125 ], [ %1997, %2159 ], [ 0x3FA23C0BE0000000, %1972 ]
  %2177 = phi float [ %2113, %2016 ], [ %2156, %2125 ], [ %2172, %2159 ], [ 1.000000e+00, %1972 ]
  %2178 = phi float [ %2114, %2016 ], [ %2157, %2125 ], [ %2173, %2159 ], [ 1.000000e+00, %1972 ]
  %2179 = phi float [ %2115, %2016 ], [ %2158, %2125 ], [ %2174, %2159 ], [ 1.000000e+00, %1972 ]
  %2180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2181 = extractvalue %dx.types.CBufRet.i32 %2180, 1
  %2182 = and i32 %2181, 1
  %2183 = icmp ne i32 %2182, 0
  %2184 = add i32 %54, 372
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2184, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = and i32 %2186, 32
  %2188 = icmp ne i32 %2187, 0
  %2189 = and i1 %2183, %2188
  %2190 = select i1 %2189, float 1.000000e+00, float %2177
  %2191 = select i1 %2189, float 0x3FD3333340000000, float %2178
  %2192 = select i1 %2189, float 0x3FD3333340000000, float %2179
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = and i32 %2194, 32
  %2196 = icmp eq i32 %2195, 0
  br i1 %2196, label %2269, label %2197

; <label>:2197                                    ; preds = %2175
  %2198 = add i32 %54, 124
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2198, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = add i32 %54, 400
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = add i32 %2203, 0
  %2205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2206 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2205, %dx.types.Handle %100, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  %2208 = extractvalue %dx.types.ResRet.f32 %2206, 1
  %2209 = extractvalue %dx.types.ResRet.f32 %2206, 2
  %2210 = extractvalue %dx.types.ResRet.f32 %2206, 3
  %2211 = and i32 %2200, 255
  %2212 = uitofp i32 %2211 to float
  %2213 = lshr i32 %2200, 8
  %2214 = and i32 %2213, 255
  %2215 = uitofp i32 %2214 to float
  %2216 = lshr i32 %2200, 16
  %2217 = and i32 %2216, 255
  %2218 = uitofp i32 %2217 to float
  %2219 = fmul fast float %2218, 0x3F70101000000000
  %2220 = fmul fast float %2207, %2212
  %2221 = fadd fast float %2220, %2215
  %2222 = fmul fast float %2221, 0x3F70101000000000
  %2223 = fadd fast float %2208, -5.000000e-01
  %2224 = fadd fast float %2210, -5.000000e-01
  %2225 = fmul fast float %2223, %2219
  %2226 = fmul fast float %2224, %2219
  %2227 = fadd fast float %2225, 5.000000e-01
  %2228 = fadd fast float %2226, 5.000000e-01
  %2229 = fmul fast float %2227, 2.000000e+00
  %2230 = fadd fast float %2229, -1.000000e+00
  %2231 = fmul fast float %2228, 2.000000e+00
  %2232 = fadd fast float %2231, -1.000000e+00
  %2233 = fadd fast float %2230, %2232
  %2234 = fmul fast float %2233, 5.000000e-01
  %2235 = fsub fast float %2230, %2232
  %2236 = fmul fast float %2235, 5.000000e-01
  %2237 = call float @dx.op.unary.f32(i32 6, float %2234)  ; FAbs(value)
  %2238 = fsub fast float 1.000000e+00, %2237
  %2239 = call float @dx.op.unary.f32(i32 6, float %2236)  ; FAbs(value)
  %2240 = fsub fast float %2238, %2239
  %2241 = call float @dx.op.dot3.f32(i32 55, float %2234, float %2236, float %2240, float %2234, float %2236, float %2240)  ; Dot3(ax,ay,az,bx,by,bz)
  %2242 = call float @dx.op.unary.f32(i32 25, float %2241)  ; Rsqrt(value)
  %2243 = fmul fast float %2234, %2242
  %2244 = fmul fast float %2236, %2242
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = and i32 %2246, 67108864
  %2248 = icmp eq i32 %2247, 0
  br i1 %2248, label %2265, label %2249

; <label>:2249                                    ; preds = %2197
  %2250 = add i32 %54, 312
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = and i32 %2252, 65535
  %2254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2253)  ; LegacyF16ToF32(value)
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = and i32 %2256, 65535
  %2258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2257)  ; LegacyF16ToF32(value)
  %2259 = lshr i32 %2252, 16
  %2260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2259)  ; LegacyF16ToF32(value)
  %2261 = fsub fast float %2222, %2260
  %2262 = fmul fast float %2261, %2254
  %2263 = fadd fast float %2262, %2258
  %2264 = call float @dx.op.unary.f32(i32 7, float %2263)  ; Saturate(value)
  br label %2265

; <label>:2265                                    ; preds = %2249, %2197
  %2266 = phi float [ %2264, %2249 ], [ %2222, %2197 ]
  %2267 = call float @dx.op.dot2.f32(i32 54, float %2243, float %2244, float %1801, float %1802)  ; Dot2(ax,ay,bx,by)
  %2268 = call float @dx.op.dot2.f32(i32 54, float %2243, float %2244, float %1803, float %1804)  ; Dot2(ax,ay,bx,by)
  br label %2269

; <label>:2269                                    ; preds = %2265, %2175
  %2270 = phi float [ %2266, %2265 ], [ 0x3FD6666660000000, %2175 ]
  %2271 = phi float [ %2267, %2265 ], [ 0.000000e+00, %2175 ]
  %2272 = phi float [ %2268, %2265 ], [ 0.000000e+00, %2175 ]
  %2273 = phi float [ %2209, %2265 ], [ 1.000000e+00, %2175 ]
  %2274 = add i32 %54, 192
  %2275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2274, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.i32 %2275, 0
  %2277 = lshr i32 %2276, 22
  %2278 = shl nuw nsw i32 %2277, 5
  %2279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2278)  ; LegacyF16ToF32(value)
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = and i32 %2281, 64
  %2283 = icmp eq i32 %2282, 0
  br i1 %2283, label %2317, label %2284

; <label>:2284                                    ; preds = %2269
  %2285 = add i32 %54, 416
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = add i32 %2287, 0
  %2289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2288, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = and i32 %2291, 131072
  %2293 = icmp eq i32 %2292, 0
  %2294 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2289, %dx.types.Handle %100, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2295 = extractvalue %dx.types.ResRet.f32 %2294, 0
  %2296 = extractvalue %dx.types.ResRet.f32 %2294, 1
  %2297 = extractvalue %dx.types.ResRet.f32 %2294, 2
  %2298 = fmul fast float %2295, %351
  %2299 = fmul fast float %2296, %354
  %2300 = fmul fast float %2297, %357
  br i1 %2293, label %2307, label %2301

; <label>:2301                                    ; preds = %2284
  %2302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2302, 0
  %2304 = fmul fast float %2303, %2298
  %2305 = fmul fast float %2303, %2299
  %2306 = fmul fast float %2303, %2300
  br label %2307

; <label>:2307                                    ; preds = %2301, %2284
  %2308 = phi float [ %2304, %2301 ], [ %2298, %2284 ]
  %2309 = phi float [ %2305, %2301 ], [ %2299, %2284 ]
  %2310 = phi float [ %2306, %2301 ], [ %2300, %2284 ]
  %2311 = fmul fast float %2308, %2279
  %2312 = select i1 %250, float %2311, float %2308
  %2313 = call float @dx.op.dot3.f32(i32 55, float %2312, float %2309, float %2310, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2314 = select i1 %250, float 0.000000e+00, float %2308
  %2315 = select i1 %250, float %2313, float %2309
  %2316 = select i1 %250, float 0.000000e+00, float %2310
  br label %2317

; <label>:2317                                    ; preds = %2307, %2269
  %2318 = phi float [ %2314, %2307 ], [ 0.000000e+00, %2269 ]
  %2319 = phi float [ %2315, %2307 ], [ 0.000000e+00, %2269 ]
  %2320 = phi float [ %2316, %2307 ], [ 0.000000e+00, %2269 ]
  %2321 = add i32 %54, 128
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = and i32 %2323, 255
  %2325 = uitofp i32 %2324 to float
  %2326 = lshr i32 %2323, 8
  %2327 = and i32 %2326, 255
  %2328 = uitofp i32 %2327 to float
  %2329 = call float @dx.op.dot3.f32(i32 55, float %2190, float %2191, float %2192, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2330 = fmul fast float %2328, %2329
  %2331 = fadd fast float %2330, %2325
  %2332 = fmul fast float %2331, 0x3F70101020000000
  %2333 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  br i1 %1789, label %2334, label %2342

; <label>:2334                                    ; preds = %2317
  %2335 = fsub fast float 1.000000e+00, %1970
  %2336 = fmul fast float %2335, %1778
  %2337 = fmul fast float %2335, %1779
  %2338 = fmul fast float %2335, %1780
  %2339 = fmul fast float %2335, %1781
  %2340 = fmul fast float %2335, %1782
  %2341 = fmul fast float %2335, %1783
  br label %2342

; <label>:2342                                    ; preds = %2334, %2317
  %2343 = phi float [ %2336, %2334 ], [ %1778, %2317 ]
  %2344 = phi float [ %2337, %2334 ], [ %1779, %2317 ]
  %2345 = phi float [ %2338, %2334 ], [ %1780, %2317 ]
  %2346 = phi float [ %2339, %2334 ], [ %1781, %2317 ]
  %2347 = phi float [ %2340, %2334 ], [ %1782, %2317 ]
  %2348 = phi float [ %2341, %2334 ], [ %1783, %2317 ]
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = and i32 %2350, 3
  %2352 = icmp eq i32 %2351, 3
  br i1 %2352, label %2431, label %2353

; <label>:2353                                    ; preds = %2342
  %2354 = and i32 %2350, 16
  %2355 = icmp ne i32 %2354, 0
  %2356 = select i1 %2355, float %1970, float 0.000000e+00
  %2357 = icmp eq i32 %2351, 0
  br i1 %2357, label %2358, label %2386

; <label>:2358                                    ; preds = %2353
  %2359 = and i32 %2350, 64
  %2360 = icmp ne i32 %2359, 0
  %2361 = select i1 %2360, float %1970, float 0.000000e+00
  %2362 = fsub fast float %2190, %2343
  %2363 = fsub fast float %2191, %2344
  %2364 = fsub fast float %2192, %2345
  %2365 = fmul fast float %2356, %2362
  %2366 = fmul fast float %2356, %2363
  %2367 = fmul fast float %2356, %2364
  %2368 = fadd fast float %2365, %2343
  %2369 = fadd fast float %2366, %2344
  %2370 = fadd fast float %2367, %2345
  %2371 = fsub fast float %2176, %1784
  %2372 = fmul fast float %2356, %2371
  %2373 = fadd fast float %2372, %1784
  %2374 = fsub fast float %2318, %2346
  %2375 = fsub fast float %2319, %2347
  %2376 = fsub fast float %2320, %2348
  %2377 = fmul fast float %2361, %2374
  %2378 = fmul fast float %2361, %2375
  %2379 = fmul fast float %2361, %2376
  %2380 = fadd fast float %2377, %2346
  %2381 = fadd fast float %2378, %2347
  %2382 = fadd fast float %2379, %2348
  %2383 = fsub fast float %2333, %1787
  %2384 = fmul fast float %2356, %2383
  %2385 = fadd fast float %2384, %1787
  br label %2431

; <label>:2386                                    ; preds = %2353
  %2387 = icmp eq i32 %2351, 1
  br i1 %2387, label %2388, label %2401

; <label>:2388                                    ; preds = %2386
  %2389 = fadd fast float %2190, -1.000000e+00
  %2390 = fadd fast float %2191, -1.000000e+00
  %2391 = fadd fast float %2192, -1.000000e+00
  %2392 = fmul fast float %2356, %2389
  %2393 = fmul fast float %2356, %2390
  %2394 = fmul fast float %2356, %2391
  %2395 = fadd fast float %2392, 1.000000e+00
  %2396 = fadd fast float %2393, 1.000000e+00
  %2397 = fadd fast float %2394, 1.000000e+00
  %2398 = fmul fast float %2395, %2343
  %2399 = fmul fast float %2396, %2344
  %2400 = fmul fast float %2397, %2345
  br label %2431

; <label>:2401                                    ; preds = %2386
  %2402 = icmp eq i32 %2351, 2
  br i1 %2402, label %2403, label %2431

; <label>:2403                                    ; preds = %2401
  %2404 = call float @dx.op.unary.f32(i32 24, float %2190)  ; Sqrt(value)
  %2405 = call float @dx.op.unary.f32(i32 24, float %2191)  ; Sqrt(value)
  %2406 = call float @dx.op.unary.f32(i32 24, float %2192)  ; Sqrt(value)
  %2407 = fadd fast float %2404, -5.000000e-01
  %2408 = fadd fast float %2405, -5.000000e-01
  %2409 = fadd fast float %2406, -5.000000e-01
  %2410 = fmul fast float %2407, %2356
  %2411 = fmul fast float %2408, %2356
  %2412 = fmul fast float %2409, %2356
  %2413 = fadd fast float %2410, 5.000000e-01
  %2414 = fadd fast float %2411, 5.000000e-01
  %2415 = fadd fast float %2412, 5.000000e-01
  %2416 = fmul fast float %2413, 2.000000e+00
  %2417 = fsub fast float 1.000000e+00, %2416
  %2418 = fmul fast float %2417, %2343
  %2419 = fadd fast float %2418, %2416
  %2420 = fmul fast float %2419, %2343
  %2421 = fmul fast float %2414, 2.000000e+00
  %2422 = fsub fast float 1.000000e+00, %2421
  %2423 = fmul fast float %2422, %2344
  %2424 = fadd fast float %2423, %2421
  %2425 = fmul fast float %2424, %2344
  %2426 = fmul fast float %2415, 2.000000e+00
  %2427 = fsub fast float 1.000000e+00, %2426
  %2428 = fmul fast float %2427, %2345
  %2429 = fadd fast float %2428, %2426
  %2430 = fmul fast float %2429, %2345
  br label %2431

; <label>:2431                                    ; preds = %2403, %2401, %2388, %2358, %2342
  %2432 = phi float [ %2343, %2342 ], [ %2420, %2403 ], [ %2343, %2401 ], [ %2398, %2388 ], [ %2368, %2358 ]
  %2433 = phi float [ %2344, %2342 ], [ %2425, %2403 ], [ %2344, %2401 ], [ %2399, %2388 ], [ %2369, %2358 ]
  %2434 = phi float [ %2345, %2342 ], [ %2430, %2403 ], [ %2345, %2401 ], [ %2400, %2388 ], [ %2370, %2358 ]
  %2435 = phi float [ %2346, %2342 ], [ %2346, %2403 ], [ %2346, %2401 ], [ %2346, %2388 ], [ %2380, %2358 ]
  %2436 = phi float [ %2347, %2342 ], [ %2347, %2403 ], [ %2347, %2401 ], [ %2347, %2388 ], [ %2381, %2358 ]
  %2437 = phi float [ %2348, %2342 ], [ %2348, %2403 ], [ %2348, %2401 ], [ %2348, %2388 ], [ %2382, %2358 ]
  %2438 = phi float [ %1784, %2342 ], [ %1784, %2403 ], [ %1784, %2401 ], [ %1784, %2388 ], [ %2373, %2358 ]
  %2439 = phi float [ %1787, %2342 ], [ %1787, %2403 ], [ %1787, %2401 ], [ %1787, %2388 ], [ %2385, %2358 ]
  %2440 = and i32 %2350, 12
  %2441 = icmp eq i32 %2440, 12
  br i1 %2441, label %2514, label %2442

; <label>:2442                                    ; preds = %2431
  %2443 = and i32 %2350, 2097184
  %2444 = icmp eq i32 %2443, 2097184
  %2445 = select i1 %2444, float %1970, float 0.000000e+00
  %2446 = and i32 %2350, 4194336
  %2447 = icmp eq i32 %2446, 4194336
  %2448 = select i1 %2447, float %1970, float 0.000000e+00
  %2449 = and i32 %2350, 8388640
  %2450 = icmp eq i32 %2449, 8388640
  %2451 = select i1 %2450, float %1970, float 0.000000e+00
  %2452 = icmp eq i32 %2440, 0
  br i1 %2452, label %2453, label %2466

; <label>:2453                                    ; preds = %2442
  %2454 = fsub fast float %2271, %1776
  %2455 = fsub fast float %2272, %1777
  %2456 = fmul fast float %2445, %2454
  %2457 = fmul fast float %2445, %2455
  %2458 = fadd fast float %2456, %1776
  %2459 = fadd fast float %2457, %1777
  %2460 = fsub fast float %2273, %1786
  %2461 = fmul fast float %2448, %2460
  %2462 = fadd fast float %2461, %1786
  %2463 = fsub fast float %2270, %1785
  %2464 = fmul fast float %2451, %2463
  %2465 = fadd fast float %2464, %1785
  br label %2514

; <label>:2466                                    ; preds = %2442
  %2467 = icmp eq i32 %2440, 4
  br i1 %2467, label %2468, label %2500

; <label>:2468                                    ; preds = %2466
  %2469 = fmul fast float %2445, %2271
  %2470 = fmul fast float %2445, %2272
  %2471 = fadd fast float %2469, %1776
  %2472 = fadd fast float %2470, %1777
  %2473 = call float @dx.op.binary.f32(i32 36, float %1786, float %2273)  ; FMin(a,b)
  %2474 = fsub fast float %2473, %1786
  %2475 = fmul fast float %2474, %2448
  %2476 = fadd fast float %2475, %1786
  %2477 = fadd fast float %2270, %1785
  %2478 = fmul fast float %2477, 0x3FF337FAE0000000
  %2479 = fmul fast float %1785, %1785
  %2480 = fmul fast float %2270, %2270
  %2481 = fadd fast float %2480, %2479
  %2482 = fmul fast float %2481, 0x3FE5152B00000000
  %2483 = fmul fast float %1785, 0xBFCC1F85E0000000
  %2484 = fmul fast float %2483, %2270
  %2485 = fadd fast float %2484, 0xBFE1363700000000
  %2486 = fadd fast float %2485, %2478
  %2487 = fsub fast float %2486, %2482
  %2488 = fmul fast float %2477, 0x3FBA6F0D00000000
  %2489 = fmul fast float %2481, 0x3FD0432880000000
  %2490 = fmul fast float %1785, 0xBFEF110800000000
  %2491 = fmul fast float %2490, %2270
  %2492 = fadd fast float %2491, 1.000000e+00
  %2493 = fsub fast float %2492, %2488
  %2494 = fadd fast float %2493, %2489
  %2495 = fdiv fast float %2487, %2494
  %2496 = call float @dx.op.unary.f32(i32 7, float %2495)  ; Saturate(value)
  %2497 = fsub fast float %2496, %1785
  %2498 = fmul fast float %2497, %2451
  %2499 = fadd fast float %2498, %1785
  br label %2514

; <label>:2500                                    ; preds = %2466
  %2501 = icmp eq i32 %2440, 8
  br i1 %2501, label %2502, label %2514

; <label>:2502                                    ; preds = %2500
  %2503 = fmul fast float %2445, %2271
  %2504 = fmul fast float %2445, %2272
  %2505 = fadd fast float %2503, %1776
  %2506 = fadd fast float %2504, %1777
  %2507 = call float @dx.op.binary.f32(i32 36, float %1786, float %2273)  ; FMin(a,b)
  %2508 = fsub fast float %2507, %1786
  %2509 = fmul fast float %2508, %2448
  %2510 = fadd fast float %2509, %1786
  %2511 = fsub fast float %2270, %1785
  %2512 = fmul fast float %2451, %2511
  %2513 = fadd fast float %2512, %1785
  br label %2514

; <label>:2514                                    ; preds = %2502, %2500, %2468, %2453, %2431, %1969, %1788, %1775
  %2515 = phi float [ %1776, %2431 ], [ %1776, %1969 ], [ %1776, %1775 ], [ %2505, %2502 ], [ %1776, %2500 ], [ %2471, %2468 ], [ %2458, %2453 ], [ %1776, %1788 ]
  %2516 = phi float [ %1777, %2431 ], [ %1777, %1969 ], [ %1777, %1775 ], [ %2506, %2502 ], [ %1777, %2500 ], [ %2472, %2468 ], [ %2459, %2453 ], [ %1777, %1788 ]
  %2517 = phi float [ %2432, %2431 ], [ %1778, %1969 ], [ %1778, %1775 ], [ %2432, %2502 ], [ %2432, %2500 ], [ %2432, %2468 ], [ %2432, %2453 ], [ %1778, %1788 ]
  %2518 = phi float [ %2433, %2431 ], [ %1779, %1969 ], [ %1779, %1775 ], [ %2433, %2502 ], [ %2433, %2500 ], [ %2433, %2468 ], [ %2433, %2453 ], [ %1779, %1788 ]
  %2519 = phi float [ %2434, %2431 ], [ %1780, %1969 ], [ %1780, %1775 ], [ %2434, %2502 ], [ %2434, %2500 ], [ %2434, %2468 ], [ %2434, %2453 ], [ %1780, %1788 ]
  %2520 = phi float [ %2435, %2431 ], [ %1781, %1969 ], [ %1781, %1775 ], [ %2435, %2502 ], [ %2435, %2500 ], [ %2435, %2468 ], [ %2435, %2453 ], [ %1781, %1788 ]
  %2521 = phi float [ %2436, %2431 ], [ %1782, %1969 ], [ %1782, %1775 ], [ %2436, %2502 ], [ %2436, %2500 ], [ %2436, %2468 ], [ %2436, %2453 ], [ %1782, %1788 ]
  %2522 = phi float [ %2437, %2431 ], [ %1783, %1969 ], [ %1783, %1775 ], [ %2437, %2502 ], [ %2437, %2500 ], [ %2437, %2468 ], [ %2437, %2453 ], [ %1783, %1788 ]
  %2523 = phi float [ %2438, %2431 ], [ %1784, %1969 ], [ %1784, %1775 ], [ %2438, %2502 ], [ %2438, %2500 ], [ %2438, %2468 ], [ %2438, %2453 ], [ %1784, %1788 ]
  %2524 = phi float [ %1785, %2431 ], [ %1785, %1969 ], [ %1785, %1775 ], [ %2513, %2502 ], [ %1785, %2500 ], [ %2499, %2468 ], [ %2465, %2453 ], [ %1785, %1788 ]
  %2525 = phi float [ %1786, %2431 ], [ %1786, %1969 ], [ %1786, %1775 ], [ %2510, %2502 ], [ %1786, %2500 ], [ %2476, %2468 ], [ %2462, %2453 ], [ %1786, %1788 ]
  %2526 = phi float [ %2439, %2431 ], [ %1787, %1969 ], [ %1787, %1775 ], [ %2439, %2502 ], [ %2439, %2500 ], [ %2439, %2468 ], [ %2439, %2453 ], [ %1787, %1788 ]
  br i1 %438, label %3253, label %2527

; <label>:2527                                    ; preds = %2514
  %2528 = icmp ult i32 %492, 4
  %2529 = add i32 %54, 72
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = add i32 %54, 76
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = or i32 %2534, %2531
  %2536 = icmp eq i32 %2535, 0
  br i1 %2536, label %3253, label %2537

; <label>:2537                                    ; preds = %2527
  %2538 = and i32 %2531, 262144
  %2539 = icmp ne i32 %2538, 0
  %2540 = select i1 %2539, float %59, float 1.000000e+00
  %2541 = select i1 %2539, float %60, float 0.000000e+00
  %2542 = select i1 %2539, float %61, float 0.000000e+00
  %2543 = select i1 %2539, float %62, float 1.000000e+00
  %2544 = select i1 %2539, float %63, float %86
  %2545 = select i1 %2539, float %64, float %87
  %2546 = add i32 %54, 332
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = lshr i32 %2548, 16
  %2550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2549)  ; LegacyF16ToF32(value)
  %2551 = fmul fast float %2550, 0x3F50624DE0000000
  %2552 = add i32 %54, 136
  %2553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2554 = extractvalue %dx.types.ResRet.i32 %2553, 0
  %2555 = lshr i32 %2554, 16
  %2556 = and i32 %2555, 255
  %2557 = lshr i32 %2554, 24
  %2558 = add i32 %54, 340
  %2559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2558, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.i32 %2559, 0
  %2561 = and i32 %2560, 65535
  %2562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2561)  ; LegacyF16ToF32(value)
  %2563 = lshr i32 %2560, 16
  %2564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2563)  ; LegacyF16ToF32(value)
  %2565 = add i32 %54, 80
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = lshr i32 %2567, 22
  %2569 = shl nuw nsw i32 %2568, 5
  %2570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2569)  ; LegacyF16ToF32(value)
  %2571 = shl i32 %2567, 4
  %2572 = and i32 %2571, 32752
  %2573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2572)  ; LegacyF16ToF32(value)
  %2574 = lshr i32 %2567, 7
  %2575 = and i32 %2574, 32752
  %2576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2575)  ; LegacyF16ToF32(value)
  %2577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2578 = extractvalue %dx.types.CBufRet.f32 %2577, 3
  %2579 = fmul fast float %2578, 1.000000e+03
  %2580 = fmul fast float %428, %2579
  %2581 = call float @dx.op.unary.f32(i32 22, float %2580)  ; Frc(value)
  %2582 = fadd fast float %2581, %418
  %2583 = fmul fast float %429, %2579
  %2584 = call float @dx.op.unary.f32(i32 22, float %2583)  ; Frc(value)
  %2585 = fadd fast float %2584, %420
  %2586 = fmul fast float %2551, %2579
  %2587 = call float @dx.op.unary.f32(i32 22, float %2586)  ; Frc(value)
  %2588 = fmul fast float %2587, 0x401921FB60000000
  %2589 = fadd fast float %2588, %2570
  %2590 = call float @dx.op.unary.f32(i32 13, float %2589)  ; Sin(value)
  %2591 = call float @dx.op.unary.f32(i32 12, float %2589)  ; Cos(value)
  %2592 = fsub fast float -0.000000e+00, %2590
  %2593 = fadd fast float %2544, -5.000000e-01
  %2594 = fadd fast float %2545, -5.000000e-01
  %2595 = fmul fast float %2562, %2593
  %2596 = fmul fast float %2564, %2594
  %2597 = fadd fast float %2595, 5.000000e-01
  %2598 = fadd fast float %2596, 5.000000e-01
  %2599 = fmul fast float %2573, %2597
  %2600 = fmul fast float %2576, %2598
  %2601 = fmul fast float %2591, %2599
  %2602 = call float @dx.op.tertiary.f32(i32 46, float %2592, float %2600, float %2601)  ; FMad(a,b,c)
  %2603 = fmul fast float %2590, %2599
  %2604 = call float @dx.op.tertiary.f32(i32 46, float %2591, float %2600, float %2603)  ; FMad(a,b,c)
  %2605 = fadd fast float %2582, %2602
  %2606 = fadd fast float %2585, %2604
  %2607 = icmp ugt i32 %2556, 1
  %2608 = icmp ugt i32 %2554, 33554431
  %2609 = or i1 %2608, %2607
  br i1 %2609, label %2610, label %2635

; <label>:2610                                    ; preds = %2537
  %2611 = add i32 %54, 276
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2611, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = lshr i32 %2613, 16
  %2615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2614)  ; LegacyF16ToF32(value)
  %2616 = fmul fast float %2578, %2615
  %2617 = call float @dx.op.unary.f32(i32 22, float %2616)  ; Frc(value)
  %2618 = mul nuw nsw i32 %2556, %2557
  %2619 = uitofp i32 %2618 to float
  %2620 = fmul fast float %2617, %2619
  %2621 = call float @dx.op.unary.f32(i32 27, float %2620)  ; Round_ni(value)
  %2622 = fptoui float %2621 to i32
  %2623 = urem i32 %2622, %2556
  %2624 = udiv i32 %2622, %2557
  %2625 = call float @dx.op.unary.f32(i32 22, float %2605)  ; Frc(value)
  %2626 = call float @dx.op.unary.f32(i32 22, float %2606)  ; Frc(value)
  %2627 = uitofp i32 %2623 to float
  %2628 = uitofp i32 %2624 to float
  %2629 = fadd fast float %2625, %2627
  %2630 = fadd fast float %2626, %2628
  %2631 = uitofp i32 %2556 to float
  %2632 = uitofp i32 %2557 to float
  %2633 = fdiv fast float %2629, %2631
  %2634 = fdiv fast float %2630, %2632
  br label %2635

; <label>:2635                                    ; preds = %2610, %2537
  %2636 = phi float [ %2633, %2610 ], [ %2605, %2537 ]
  %2637 = phi float [ %2634, %2610 ], [ %2606, %2537 ]
  %2638 = and i32 %2531, 256
  %2639 = icmp eq i32 %2638, 0
  br i1 %2639, label %2686, label %2640

; <label>:2640                                    ; preds = %2635
  %2641 = add i32 %54, 452
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = add i32 %2643, 0
  %2645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2646 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2645, %dx.types.Handle %101, float %2636, float %2637, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2647 = extractvalue %dx.types.ResRet.f32 %2646, 0
  %2648 = add i32 %54, 148
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = shl i32 %2650, 4
  %2652 = and i32 %2651, 32752
  %2653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2652)  ; LegacyF16ToF32(value)
  %2654 = lshr i32 %2650, 7
  %2655 = and i32 %2654, 32752
  %2656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2655)  ; LegacyF16ToF32(value)
  %2657 = fsub fast float 1.000000e+00, %487
  %2658 = call float @dx.op.binary.f32(i32 35, float %2657, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2659 = bitcast float %487 to i32
  %2660 = sitofp i32 %2659 to float
  %2661 = fadd fast float %2660, 0xC1CFBF8940000000
  %2662 = fmul fast float %2656, %2661
  %2663 = fadd fast float %2662, 0x41CFBF8940000000
  %2664 = fptosi float %2663 to i32
  %2665 = bitcast i32 %2664 to float
  %2666 = bitcast float %2658 to i32
  %2667 = sitofp i32 %2666 to float
  %2668 = fadd fast float %2667, 0xC1CFBF8940000000
  %2669 = fmul fast float %2668, %2656
  %2670 = fadd fast float %2669, 0x41CFBF8940000000
  %2671 = fptosi float %2670 to i32
  %2672 = bitcast i32 %2671 to float
  %2673 = fmul fast float %2665, %2653
  %2674 = fmul fast float %2672, %2653
  %2675 = fsub fast float %2658, %2673
  %2676 = fadd fast float %2674, %2658
  %2677 = call float @dx.op.unary.f32(i32 7, float %2675)  ; Saturate(value)
  %2678 = call float @dx.op.unary.f32(i32 7, float %2676)  ; Saturate(value)
  %2679 = fsub fast float %2647, %2677
  %2680 = fsub fast float %2678, %2677
  %2681 = bitcast float %2680 to i32
  %2682 = sub nsw i32 2129859010, %2681
  %2683 = bitcast i32 %2682 to float
  %2684 = fmul fast float %2683, %2679
  %2685 = call float @dx.op.unary.f32(i32 7, float %2684)  ; Saturate(value)
  br label %2686

; <label>:2686                                    ; preds = %2640, %2635
  %2687 = phi float [ %2685, %2640 ], [ %487, %2635 ]
  %2688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2689 = extractvalue %dx.types.ResRet.i32 %2688, 0
  %2690 = and i32 %2689, 128
  %2691 = icmp eq i32 %2690, 0
  br i1 %2691, label %2708, label %2692

; <label>:2692                                    ; preds = %2686
  %2693 = add i32 %54, 436
  %2694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2693, i32 undef)  ; BufferLoad(srv,index,wot)
  %2695 = extractvalue %dx.types.ResRet.i32 %2694, 0
  %2696 = add i32 %2695, 0
  %2697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2697, %dx.types.Handle %101, float %2636, float %2637, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2699 = extractvalue %dx.types.ResRet.f32 %2698, 0
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = and i32 %2701, 524288
  %2703 = icmp ne i32 %2702, 0
  %2704 = fcmp fast ogt float %2699, 0x3FE0101020000000
  %2705 = select i1 %2704, float 1.000000e+00, float 0.000000e+00
  %2706 = select i1 %2703, float %2705, float %2699
  %2707 = fmul fast float %2706, %2687
  br label %2708

; <label>:2708                                    ; preds = %2692, %2686
  %2709 = phi float [ %2707, %2692 ], [ %2687, %2686 ]
  %2710 = fcmp fast ult float %2709, 0x3F70101020000000
  br i1 %2710, label %3253, label %2711

; <label>:2711                                    ; preds = %2708
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = and i32 %2713, 16
  %2715 = icmp eq i32 %2714, 0
  br i1 %2715, label %2914, label %2716

; <label>:2716                                    ; preds = %2711
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = add i32 %54, 388
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = add i32 %2721, 0
  %2723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2722, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2724 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2723, %dx.types.Handle %100, float %2636, float %2637, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2725 = extractvalue %dx.types.ResRet.f32 %2724, 0
  %2726 = extractvalue %dx.types.ResRet.f32 %2724, 1
  %2727 = extractvalue %dx.types.ResRet.f32 %2724, 2
  %2728 = extractvalue %dx.types.ResRet.f32 %2724, 3
  %2729 = and i32 %2718, 255
  %2730 = uitofp i32 %2729 to float
  %2731 = lshr i32 %2718, 8
  %2732 = and i32 %2731, 255
  %2733 = uitofp i32 %2732 to float
  %2734 = fmul fast float %2728, %2730
  %2735 = fadd fast float %2734, %2733
  %2736 = fmul fast float %2735, 0x3F70101000000000
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = and i32 %2738, 512
  %2740 = icmp eq i32 %2739, 0
  br i1 %2740, label %2749, label %2741

; <label>:2741                                    ; preds = %2716
  %2742 = add i32 %54, 468
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = add i32 %2744, 0
  %2746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2745, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2747 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2746, %dx.types.Handle %101, float %2636, float %2637, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2748 = extractvalue %dx.types.ResRet.f32 %2747, 0
  br label %2749

; <label>:2749                                    ; preds = %2741, %2716
  %2750 = phi float [ %2748, %2741 ], [ 1.000000e+00, %2716 ]
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.i32 %2751, 0
  %2753 = and i32 %2752, 33554432
  %2754 = icmp eq i32 %2753, 0
  br i1 %2754, label %2861, label %2755

; <label>:2755                                    ; preds = %2749
  %2756 = add i32 %54, 272
  %2757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2756, i32 undef)  ; BufferLoad(srv,index,wot)
  %2758 = extractvalue %dx.types.ResRet.i32 %2757, 0
  %2759 = and i32 %2758, 65535
  %2760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2759)  ; LegacyF16ToF32(value)
  %2761 = lshr i32 %2758, 16
  %2762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2761)  ; LegacyF16ToF32(value)
  %2763 = add i32 %54, 276
  %2764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.i32 %2764, 0
  %2766 = and i32 %2765, 65535
  %2767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2766)  ; LegacyF16ToF32(value)
  %2768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %2769 = extractvalue %dx.types.ResRet.i32 %2768, 0
  %2770 = lshr i32 %2769, 24
  %2771 = uitofp i32 %2770 to float
  %2772 = fmul fast float %2771, 0x3F70101020000000
  %2773 = and i32 %2769, 255
  %2774 = uitofp i32 %2773 to float
  %2775 = fmul fast float %2774, 0x3F70101020000000
  %2776 = lshr i32 %2769, 8
  %2777 = and i32 %2776, 255
  %2778 = uitofp i32 %2777 to float
  %2779 = fmul fast float %2778, 0x3F70101020000000
  %2780 = lshr i32 %2769, 16
  %2781 = and i32 %2780, 255
  %2782 = uitofp i32 %2781 to float
  %2783 = fmul fast float %2782, 0x3F70101020000000
  %2784 = add i32 %54, 268
  %2785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2784, i32 undef)  ; BufferLoad(srv,index,wot)
  %2786 = extractvalue %dx.types.ResRet.i32 %2785, 0
  %2787 = lshr i32 %2786, 24
  %2788 = uitofp i32 %2787 to float
  %2789 = fmul fast float %2788, 0x3F70101020000000
  %2790 = and i32 %2786, 255
  %2791 = uitofp i32 %2790 to float
  %2792 = fmul fast float %2791, 0x3F70101020000000
  %2793 = lshr i32 %2786, 8
  %2794 = and i32 %2793, 255
  %2795 = uitofp i32 %2794 to float
  %2796 = fmul fast float %2795, 0x3F70101020000000
  %2797 = lshr i32 %2786, 16
  %2798 = and i32 %2797, 255
  %2799 = uitofp i32 %2798 to float
  %2800 = fmul fast float %2799, 0x3F70101020000000
  %2801 = bitcast float %2725 to i32
  %2802 = ashr i32 %2801, 1
  %2803 = sub nsw i32 1597463174, %2802
  %2804 = bitcast i32 %2803 to float
  %2805 = fmul fast float %2725, 5.000000e-01
  %2806 = fmul fast float %2804, %2804
  %2807 = fmul fast float %2806, %2805
  %2808 = fsub fast float 1.500000e+00, %2807
  %2809 = fmul fast float %2804, %2725
  %2810 = fmul fast float %2809, %2808
  %2811 = bitcast float %2726 to i32
  %2812 = ashr i32 %2811, 1
  %2813 = sub nsw i32 1597463174, %2812
  %2814 = bitcast i32 %2813 to float
  %2815 = fmul fast float %2726, 5.000000e-01
  %2816 = fmul fast float %2814, %2814
  %2817 = fmul fast float %2816, %2815
  %2818 = fsub fast float 1.500000e+00, %2817
  %2819 = fmul fast float %2814, %2726
  %2820 = fmul fast float %2819, %2818
  %2821 = bitcast float %2727 to i32
  %2822 = ashr i32 %2821, 1
  %2823 = sub nsw i32 1597463174, %2822
  %2824 = bitcast i32 %2823 to float
  %2825 = fmul fast float %2727, 5.000000e-01
  %2826 = fmul fast float %2824, %2824
  %2827 = fmul fast float %2826, %2825
  %2828 = fsub fast float 1.500000e+00, %2827
  %2829 = fmul fast float %2824, %2727
  %2830 = fmul fast float %2829, %2828
  %2831 = fsub fast float %2810, %2792
  %2832 = fsub fast float %2820, %2796
  %2833 = fsub fast float %2830, %2800
  %2834 = fmul fast float %2831, %2760
  %2835 = fmul fast float %2832, %2762
  %2836 = fmul fast float %2833, %2767
  %2837 = fadd fast float %2834, %2775
  %2838 = fadd fast float %2835, %2779
  %2839 = fadd fast float %2836, %2783
  %2840 = call float @dx.op.unary.f32(i32 7, float %2837)  ; Saturate(value)
  %2841 = call float @dx.op.unary.f32(i32 7, float %2838)  ; Saturate(value)
  %2842 = call float @dx.op.unary.f32(i32 7, float %2839)  ; Saturate(value)
  %2843 = fmul fast float %2840, %2840
  %2844 = fmul fast float %2841, %2841
  %2845 = fmul fast float %2842, %2842
  %2846 = fsub fast float %2843, %2725
  %2847 = fsub fast float %2844, %2726
  %2848 = fsub fast float %2845, %2727
  %2849 = fmul fast float %2846, %2750
  %2850 = fmul fast float %2847, %2750
  %2851 = fmul fast float %2848, %2750
  %2852 = fadd fast float %2849, %2725
  %2853 = fadd fast float %2850, %2726
  %2854 = fadd fast float %2851, %2727
  %2855 = fadd fast float %2772, %2736
  %2856 = fsub fast float %2855, %2789
  %2857 = call float @dx.op.unary.f32(i32 7, float %2856)  ; Saturate(value)
  %2858 = fsub fast float %2857, %2736
  %2859 = fmul fast float %2858, %2750
  %2860 = fadd fast float %2859, %2736
  br label %2914

; <label>:2861                                    ; preds = %2749
  %2862 = and i32 %2752, 134217728
  %2863 = icmp eq i32 %2862, 0
  br i1 %2863, label %2898, label %2864

; <label>:2864                                    ; preds = %2861
  %2865 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %2866 = call float @dx.op.unary.f32(i32 24, float %409)  ; Sqrt(value)
  %2867 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %2868 = fadd fast float %2865, -5.000000e-01
  %2869 = fadd fast float %2866, -5.000000e-01
  %2870 = fadd fast float %2867, -5.000000e-01
  %2871 = fmul fast float %2868, %2750
  %2872 = fmul fast float %2869, %2750
  %2873 = fmul fast float %2870, %2750
  %2874 = fadd fast float %2871, 5.000000e-01
  %2875 = fadd fast float %2872, 5.000000e-01
  %2876 = fadd fast float %2873, 5.000000e-01
  %2877 = call float @dx.op.unary.f32(i32 24, float %2725)  ; Sqrt(value)
  %2878 = call float @dx.op.unary.f32(i32 24, float %2726)  ; Sqrt(value)
  %2879 = call float @dx.op.unary.f32(i32 24, float %2727)  ; Sqrt(value)
  %2880 = fmul fast float %2874, 2.000000e+00
  %2881 = fsub fast float 1.000000e+00, %2880
  %2882 = fmul fast float %2881, %2877
  %2883 = fadd fast float %2882, %2880
  %2884 = fmul fast float %2883, %2877
  %2885 = fmul fast float %2875, 2.000000e+00
  %2886 = fsub fast float 1.000000e+00, %2885
  %2887 = fmul fast float %2886, %2878
  %2888 = fadd fast float %2887, %2885
  %2889 = fmul fast float %2888, %2878
  %2890 = fmul fast float %2876, 2.000000e+00
  %2891 = fsub fast float 1.000000e+00, %2890
  %2892 = fmul fast float %2891, %2879
  %2893 = fadd fast float %2892, %2890
  %2894 = fmul fast float %2893, %2879
  %2895 = fmul fast float %2884, %2884
  %2896 = fmul fast float %2889, %2889
  %2897 = fmul fast float %2894, %2894
  br label %2914

; <label>:2898                                    ; preds = %2861
  %2899 = fmul fast float %405, %405
  %2900 = fmul fast float %409, %409
  %2901 = fmul fast float %413, %413
  %2902 = fadd fast float %2899, -1.000000e+00
  %2903 = fadd fast float %2900, -1.000000e+00
  %2904 = fadd fast float %2901, -1.000000e+00
  %2905 = fmul fast float %2750, %2902
  %2906 = fmul fast float %2750, %2903
  %2907 = fmul fast float %2750, %2904
  %2908 = fadd fast float %2905, 1.000000e+00
  %2909 = fadd fast float %2906, 1.000000e+00
  %2910 = fadd fast float %2907, 1.000000e+00
  %2911 = fmul fast float %2908, %2725
  %2912 = fmul fast float %2909, %2726
  %2913 = fmul fast float %2910, %2727
  br label %2914

; <label>:2914                                    ; preds = %2898, %2864, %2755, %2711
  %2915 = phi float [ %2860, %2755 ], [ %2736, %2864 ], [ %2736, %2898 ], [ 0x3FA23C0BE0000000, %2711 ]
  %2916 = phi float [ %2852, %2755 ], [ %2895, %2864 ], [ %2911, %2898 ], [ 1.000000e+00, %2711 ]
  %2917 = phi float [ %2853, %2755 ], [ %2896, %2864 ], [ %2912, %2898 ], [ 1.000000e+00, %2711 ]
  %2918 = phi float [ %2854, %2755 ], [ %2897, %2864 ], [ %2913, %2898 ], [ 1.000000e+00, %2711 ]
  %2919 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2920 = extractvalue %dx.types.CBufRet.i32 %2919, 1
  %2921 = and i32 %2920, 1
  %2922 = icmp ne i32 %2921, 0
  %2923 = add i32 %54, 372
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = and i32 %2925, 32
  %2927 = icmp ne i32 %2926, 0
  %2928 = and i1 %2922, %2927
  %2929 = select i1 %2928, float 1.000000e+00, float %2916
  %2930 = select i1 %2928, float 0x3FD3333340000000, float %2917
  %2931 = select i1 %2928, float 0x3FD3333340000000, float %2918
  %2932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2933 = extractvalue %dx.types.ResRet.i32 %2932, 0
  %2934 = and i32 %2933, 32
  %2935 = icmp eq i32 %2934, 0
  br i1 %2935, label %3008, label %2936

; <label>:2936                                    ; preds = %2914
  %2937 = add i32 %54, 140
  %2938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.i32 %2938, 0
  %2940 = add i32 %54, 404
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = add i32 %2942, 0
  %2944 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2943, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2945 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2944, %dx.types.Handle %100, float %2636, float %2637, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2946 = extractvalue %dx.types.ResRet.f32 %2945, 0
  %2947 = extractvalue %dx.types.ResRet.f32 %2945, 1
  %2948 = extractvalue %dx.types.ResRet.f32 %2945, 2
  %2949 = extractvalue %dx.types.ResRet.f32 %2945, 3
  %2950 = and i32 %2939, 255
  %2951 = uitofp i32 %2950 to float
  %2952 = lshr i32 %2939, 8
  %2953 = and i32 %2952, 255
  %2954 = uitofp i32 %2953 to float
  %2955 = lshr i32 %2939, 16
  %2956 = and i32 %2955, 255
  %2957 = uitofp i32 %2956 to float
  %2958 = fmul fast float %2957, 0x3F70101000000000
  %2959 = fmul fast float %2946, %2951
  %2960 = fadd fast float %2959, %2954
  %2961 = fmul fast float %2960, 0x3F70101000000000
  %2962 = fadd fast float %2947, -5.000000e-01
  %2963 = fadd fast float %2949, -5.000000e-01
  %2964 = fmul fast float %2962, %2958
  %2965 = fmul fast float %2963, %2958
  %2966 = fadd fast float %2964, 5.000000e-01
  %2967 = fadd fast float %2965, 5.000000e-01
  %2968 = fmul fast float %2966, 2.000000e+00
  %2969 = fadd fast float %2968, -1.000000e+00
  %2970 = fmul fast float %2967, 2.000000e+00
  %2971 = fadd fast float %2970, -1.000000e+00
  %2972 = fadd fast float %2969, %2971
  %2973 = fmul fast float %2972, 5.000000e-01
  %2974 = fsub fast float %2969, %2971
  %2975 = fmul fast float %2974, 5.000000e-01
  %2976 = call float @dx.op.unary.f32(i32 6, float %2973)  ; FAbs(value)
  %2977 = fsub fast float 1.000000e+00, %2976
  %2978 = call float @dx.op.unary.f32(i32 6, float %2975)  ; FAbs(value)
  %2979 = fsub fast float %2977, %2978
  %2980 = call float @dx.op.dot3.f32(i32 55, float %2973, float %2975, float %2979, float %2973, float %2975, float %2979)  ; Dot3(ax,ay,az,bx,by,bz)
  %2981 = call float @dx.op.unary.f32(i32 25, float %2980)  ; Rsqrt(value)
  %2982 = fmul fast float %2973, %2981
  %2983 = fmul fast float %2975, %2981
  %2984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.i32 %2984, 0
  %2986 = and i32 %2985, 67108864
  %2987 = icmp eq i32 %2986, 0
  br i1 %2987, label %3004, label %2988

; <label>:2988                                    ; preds = %2936
  %2989 = add i32 %54, 328
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = and i32 %2991, 65535
  %2993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2992)  ; LegacyF16ToF32(value)
  %2994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.i32 %2994, 0
  %2996 = and i32 %2995, 65535
  %2997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2996)  ; LegacyF16ToF32(value)
  %2998 = lshr i32 %2991, 16
  %2999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2998)  ; LegacyF16ToF32(value)
  %3000 = fsub fast float %2961, %2999
  %3001 = fmul fast float %3000, %2993
  %3002 = fadd fast float %3001, %2997
  %3003 = call float @dx.op.unary.f32(i32 7, float %3002)  ; Saturate(value)
  br label %3004

; <label>:3004                                    ; preds = %2988, %2936
  %3005 = phi float [ %3003, %2988 ], [ %2961, %2936 ]
  %3006 = call float @dx.op.dot2.f32(i32 54, float %2982, float %2983, float %2540, float %2541)  ; Dot2(ax,ay,bx,by)
  %3007 = call float @dx.op.dot2.f32(i32 54, float %2982, float %2983, float %2542, float %2543)  ; Dot2(ax,ay,bx,by)
  br label %3008

; <label>:3008                                    ; preds = %3004, %2914
  %3009 = phi float [ %3005, %3004 ], [ 0x3FD6666660000000, %2914 ]
  %3010 = phi float [ %3006, %3004 ], [ 0.000000e+00, %2914 ]
  %3011 = phi float [ %3007, %3004 ], [ 0.000000e+00, %2914 ]
  %3012 = phi float [ %2948, %3004 ], [ 1.000000e+00, %2914 ]
  %3013 = add i32 %54, 208
  %3014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3013, i32 undef)  ; BufferLoad(srv,index,wot)
  %3015 = extractvalue %dx.types.ResRet.i32 %3014, 0
  %3016 = lshr i32 %3015, 22
  %3017 = shl nuw nsw i32 %3016, 5
  %3018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3017)  ; LegacyF16ToF32(value)
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = and i32 %3020, 64
  %3022 = icmp eq i32 %3021, 0
  br i1 %3022, label %3056, label %3023

; <label>:3023                                    ; preds = %3008
  %3024 = add i32 %54, 420
  %3025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3024, i32 undef)  ; BufferLoad(srv,index,wot)
  %3026 = extractvalue %dx.types.ResRet.i32 %3025, 0
  %3027 = add i32 %3026, 0
  %3028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3027, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.i32 %3029, 0
  %3031 = and i32 %3030, 131072
  %3032 = icmp eq i32 %3031, 0
  %3033 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3028, %dx.types.Handle %100, float %2636, float %2637, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3034 = extractvalue %dx.types.ResRet.f32 %3033, 0
  %3035 = extractvalue %dx.types.ResRet.f32 %3033, 1
  %3036 = extractvalue %dx.types.ResRet.f32 %3033, 2
  %3037 = fmul fast float %3034, %393
  %3038 = fmul fast float %3035, %396
  %3039 = fmul fast float %3036, %399
  br i1 %3032, label %3046, label %3040

; <label>:3040                                    ; preds = %3023
  %3041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3042 = extractvalue %dx.types.CBufRet.f32 %3041, 0
  %3043 = fmul fast float %3042, %3037
  %3044 = fmul fast float %3042, %3038
  %3045 = fmul fast float %3042, %3039
  br label %3046

; <label>:3046                                    ; preds = %3040, %3023
  %3047 = phi float [ %3043, %3040 ], [ %3037, %3023 ]
  %3048 = phi float [ %3044, %3040 ], [ %3038, %3023 ]
  %3049 = phi float [ %3045, %3040 ], [ %3039, %3023 ]
  %3050 = fmul fast float %3047, %3018
  %3051 = select i1 %250, float %3050, float %3047
  %3052 = call float @dx.op.dot3.f32(i32 55, float %3051, float %3048, float %3049, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3053 = select i1 %250, float 0.000000e+00, float %3047
  %3054 = select i1 %250, float %3052, float %3048
  %3055 = select i1 %250, float 0.000000e+00, float %3049
  br label %3056

; <label>:3056                                    ; preds = %3046, %3008
  %3057 = phi float [ %3053, %3046 ], [ 0.000000e+00, %3008 ]
  %3058 = phi float [ %3054, %3046 ], [ 0.000000e+00, %3008 ]
  %3059 = phi float [ %3055, %3046 ], [ 0.000000e+00, %3008 ]
  %3060 = add i32 %54, 144
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = and i32 %3062, 255
  %3064 = uitofp i32 %3063 to float
  %3065 = lshr i32 %3062, 8
  %3066 = and i32 %3065, 255
  %3067 = uitofp i32 %3066 to float
  %3068 = call float @dx.op.dot3.f32(i32 55, float %2929, float %2930, float %2931, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3069 = fmul fast float %3067, %3068
  %3070 = fadd fast float %3069, %3064
  %3071 = fmul fast float %3070, 0x3F70101020000000
  %3072 = call float @dx.op.unary.f32(i32 7, float %3071)  ; Saturate(value)
  br i1 %2528, label %3073, label %3081

; <label>:3073                                    ; preds = %3056
  %3074 = fsub fast float 1.000000e+00, %2709
  %3075 = fmul fast float %3074, %2517
  %3076 = fmul fast float %3074, %2518
  %3077 = fmul fast float %3074, %2519
  %3078 = fmul fast float %3074, %2520
  %3079 = fmul fast float %3074, %2521
  %3080 = fmul fast float %3074, %2522
  br label %3081

; <label>:3081                                    ; preds = %3073, %3056
  %3082 = phi float [ %3075, %3073 ], [ %2517, %3056 ]
  %3083 = phi float [ %3076, %3073 ], [ %2518, %3056 ]
  %3084 = phi float [ %3077, %3073 ], [ %2519, %3056 ]
  %3085 = phi float [ %3078, %3073 ], [ %2520, %3056 ]
  %3086 = phi float [ %3079, %3073 ], [ %2521, %3056 ]
  %3087 = phi float [ %3080, %3073 ], [ %2522, %3056 ]
  %3088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %3089 = extractvalue %dx.types.ResRet.i32 %3088, 0
  %3090 = and i32 %3089, 3
  %3091 = icmp eq i32 %3090, 3
  br i1 %3091, label %3170, label %3092

; <label>:3092                                    ; preds = %3081
  %3093 = and i32 %3089, 16
  %3094 = icmp ne i32 %3093, 0
  %3095 = select i1 %3094, float %2709, float 0.000000e+00
  %3096 = icmp eq i32 %3090, 0
  br i1 %3096, label %3097, label %3125

; <label>:3097                                    ; preds = %3092
  %3098 = and i32 %3089, 64
  %3099 = icmp ne i32 %3098, 0
  %3100 = select i1 %3099, float %2709, float 0.000000e+00
  %3101 = fsub fast float %2929, %3082
  %3102 = fsub fast float %2930, %3083
  %3103 = fsub fast float %2931, %3084
  %3104 = fmul fast float %3095, %3101
  %3105 = fmul fast float %3095, %3102
  %3106 = fmul fast float %3095, %3103
  %3107 = fadd fast float %3104, %3082
  %3108 = fadd fast float %3105, %3083
  %3109 = fadd fast float %3106, %3084
  %3110 = fsub fast float %2915, %2523
  %3111 = fmul fast float %3095, %3110
  %3112 = fadd fast float %3111, %2523
  %3113 = fsub fast float %3057, %3085
  %3114 = fsub fast float %3058, %3086
  %3115 = fsub fast float %3059, %3087
  %3116 = fmul fast float %3100, %3113
  %3117 = fmul fast float %3100, %3114
  %3118 = fmul fast float %3100, %3115
  %3119 = fadd fast float %3116, %3085
  %3120 = fadd fast float %3117, %3086
  %3121 = fadd fast float %3118, %3087
  %3122 = fsub fast float %3072, %2526
  %3123 = fmul fast float %3095, %3122
  %3124 = fadd fast float %3123, %2526
  br label %3170

; <label>:3125                                    ; preds = %3092
  %3126 = icmp eq i32 %3090, 1
  br i1 %3126, label %3127, label %3140

; <label>:3127                                    ; preds = %3125
  %3128 = fadd fast float %2929, -1.000000e+00
  %3129 = fadd fast float %2930, -1.000000e+00
  %3130 = fadd fast float %2931, -1.000000e+00
  %3131 = fmul fast float %3095, %3128
  %3132 = fmul fast float %3095, %3129
  %3133 = fmul fast float %3095, %3130
  %3134 = fadd fast float %3131, 1.000000e+00
  %3135 = fadd fast float %3132, 1.000000e+00
  %3136 = fadd fast float %3133, 1.000000e+00
  %3137 = fmul fast float %3134, %3082
  %3138 = fmul fast float %3135, %3083
  %3139 = fmul fast float %3136, %3084
  br label %3170

; <label>:3140                                    ; preds = %3125
  %3141 = icmp eq i32 %3090, 2
  br i1 %3141, label %3142, label %3170

; <label>:3142                                    ; preds = %3140
  %3143 = call float @dx.op.unary.f32(i32 24, float %2929)  ; Sqrt(value)
  %3144 = call float @dx.op.unary.f32(i32 24, float %2930)  ; Sqrt(value)
  %3145 = call float @dx.op.unary.f32(i32 24, float %2931)  ; Sqrt(value)
  %3146 = fadd fast float %3143, -5.000000e-01
  %3147 = fadd fast float %3144, -5.000000e-01
  %3148 = fadd fast float %3145, -5.000000e-01
  %3149 = fmul fast float %3146, %3095
  %3150 = fmul fast float %3147, %3095
  %3151 = fmul fast float %3148, %3095
  %3152 = fadd fast float %3149, 5.000000e-01
  %3153 = fadd fast float %3150, 5.000000e-01
  %3154 = fadd fast float %3151, 5.000000e-01
  %3155 = fmul fast float %3152, 2.000000e+00
  %3156 = fsub fast float 1.000000e+00, %3155
  %3157 = fmul fast float %3156, %3082
  %3158 = fadd fast float %3157, %3155
  %3159 = fmul fast float %3158, %3082
  %3160 = fmul fast float %3153, 2.000000e+00
  %3161 = fsub fast float 1.000000e+00, %3160
  %3162 = fmul fast float %3161, %3083
  %3163 = fadd fast float %3162, %3160
  %3164 = fmul fast float %3163, %3083
  %3165 = fmul fast float %3154, 2.000000e+00
  %3166 = fsub fast float 1.000000e+00, %3165
  %3167 = fmul fast float %3166, %3084
  %3168 = fadd fast float %3167, %3165
  %3169 = fmul fast float %3168, %3084
  br label %3170

; <label>:3170                                    ; preds = %3142, %3140, %3127, %3097, %3081
  %3171 = phi float [ %3082, %3081 ], [ %3159, %3142 ], [ %3082, %3140 ], [ %3137, %3127 ], [ %3107, %3097 ]
  %3172 = phi float [ %3083, %3081 ], [ %3164, %3142 ], [ %3083, %3140 ], [ %3138, %3127 ], [ %3108, %3097 ]
  %3173 = phi float [ %3084, %3081 ], [ %3169, %3142 ], [ %3084, %3140 ], [ %3139, %3127 ], [ %3109, %3097 ]
  %3174 = phi float [ %3085, %3081 ], [ %3085, %3142 ], [ %3085, %3140 ], [ %3085, %3127 ], [ %3119, %3097 ]
  %3175 = phi float [ %3086, %3081 ], [ %3086, %3142 ], [ %3086, %3140 ], [ %3086, %3127 ], [ %3120, %3097 ]
  %3176 = phi float [ %3087, %3081 ], [ %3087, %3142 ], [ %3087, %3140 ], [ %3087, %3127 ], [ %3121, %3097 ]
  %3177 = phi float [ %2523, %3081 ], [ %2523, %3142 ], [ %2523, %3140 ], [ %2523, %3127 ], [ %3112, %3097 ]
  %3178 = phi float [ %2526, %3081 ], [ %2526, %3142 ], [ %2526, %3140 ], [ %2526, %3127 ], [ %3124, %3097 ]
  %3179 = and i32 %3089, 12
  %3180 = icmp eq i32 %3179, 12
  br i1 %3180, label %3253, label %3181

; <label>:3181                                    ; preds = %3170
  %3182 = and i32 %3089, 2097184
  %3183 = icmp eq i32 %3182, 2097184
  %3184 = select i1 %3183, float %2709, float 0.000000e+00
  %3185 = and i32 %3089, 4194336
  %3186 = icmp eq i32 %3185, 4194336
  %3187 = select i1 %3186, float %2709, float 0.000000e+00
  %3188 = and i32 %3089, 8388640
  %3189 = icmp eq i32 %3188, 8388640
  %3190 = select i1 %3189, float %2709, float 0.000000e+00
  %3191 = icmp eq i32 %3179, 0
  br i1 %3191, label %3192, label %3205

; <label>:3192                                    ; preds = %3181
  %3193 = fsub fast float %3010, %2515
  %3194 = fsub fast float %3011, %2516
  %3195 = fmul fast float %3184, %3193
  %3196 = fmul fast float %3184, %3194
  %3197 = fadd fast float %3195, %2515
  %3198 = fadd fast float %3196, %2516
  %3199 = fsub fast float %3012, %2525
  %3200 = fmul fast float %3187, %3199
  %3201 = fadd fast float %3200, %2525
  %3202 = fsub fast float %3009, %2524
  %3203 = fmul fast float %3190, %3202
  %3204 = fadd fast float %3203, %2524
  br label %3253

; <label>:3205                                    ; preds = %3181
  %3206 = icmp eq i32 %3179, 4
  br i1 %3206, label %3207, label %3239

; <label>:3207                                    ; preds = %3205
  %3208 = fmul fast float %3184, %3010
  %3209 = fmul fast float %3184, %3011
  %3210 = fadd fast float %3208, %2515
  %3211 = fadd fast float %3209, %2516
  %3212 = call float @dx.op.binary.f32(i32 36, float %2525, float %3012)  ; FMin(a,b)
  %3213 = fsub fast float %3212, %2525
  %3214 = fmul fast float %3213, %3187
  %3215 = fadd fast float %3214, %2525
  %3216 = fadd fast float %3009, %2524
  %3217 = fmul fast float %3216, 0x3FF337FAE0000000
  %3218 = fmul fast float %2524, %2524
  %3219 = fmul fast float %3009, %3009
  %3220 = fadd fast float %3219, %3218
  %3221 = fmul fast float %3220, 0x3FE5152B00000000
  %3222 = fmul fast float %2524, 0xBFCC1F85E0000000
  %3223 = fmul fast float %3222, %3009
  %3224 = fadd fast float %3223, 0xBFE1363700000000
  %3225 = fadd fast float %3224, %3217
  %3226 = fsub fast float %3225, %3221
  %3227 = fmul fast float %3216, 0x3FBA6F0D00000000
  %3228 = fmul fast float %3220, 0x3FD0432880000000
  %3229 = fmul fast float %2524, 0xBFEF110800000000
  %3230 = fmul fast float %3229, %3009
  %3231 = fadd fast float %3230, 1.000000e+00
  %3232 = fsub fast float %3231, %3227
  %3233 = fadd fast float %3232, %3228
  %3234 = fdiv fast float %3226, %3233
  %3235 = call float @dx.op.unary.f32(i32 7, float %3234)  ; Saturate(value)
  %3236 = fsub fast float %3235, %2524
  %3237 = fmul fast float %3236, %3190
  %3238 = fadd fast float %3237, %2524
  br label %3253

; <label>:3239                                    ; preds = %3205
  %3240 = icmp eq i32 %3179, 8
  br i1 %3240, label %3241, label %3253

; <label>:3241                                    ; preds = %3239
  %3242 = fmul fast float %3184, %3010
  %3243 = fmul fast float %3184, %3011
  %3244 = fadd fast float %3242, %2515
  %3245 = fadd fast float %3243, %2516
  %3246 = call float @dx.op.binary.f32(i32 36, float %2525, float %3012)  ; FMin(a,b)
  %3247 = fsub fast float %3246, %2525
  %3248 = fmul fast float %3247, %3187
  %3249 = fadd fast float %3248, %2525
  %3250 = fsub fast float %3009, %2524
  %3251 = fmul fast float %3190, %3250
  %3252 = fadd fast float %3251, %2524
  br label %3253

; <label>:3253                                    ; preds = %3241, %3239, %3207, %3192, %3170, %2708, %2527, %2514
  %3254 = phi float [ %2515, %3170 ], [ %2515, %2708 ], [ %2515, %2514 ], [ %2515, %2527 ], [ %3197, %3192 ], [ %3210, %3207 ], [ %2515, %3239 ], [ %3244, %3241 ]
  %3255 = phi float [ %2516, %3170 ], [ %2516, %2708 ], [ %2516, %2514 ], [ %2516, %2527 ], [ %3198, %3192 ], [ %3211, %3207 ], [ %2516, %3239 ], [ %3245, %3241 ]
  %3256 = phi float [ %3171, %3170 ], [ %2517, %2708 ], [ %2517, %2514 ], [ %2517, %2527 ], [ %3171, %3192 ], [ %3171, %3207 ], [ %3171, %3239 ], [ %3171, %3241 ]
  %3257 = phi float [ %3172, %3170 ], [ %2518, %2708 ], [ %2518, %2514 ], [ %2518, %2527 ], [ %3172, %3192 ], [ %3172, %3207 ], [ %3172, %3239 ], [ %3172, %3241 ]
  %3258 = phi float [ %3173, %3170 ], [ %2519, %2708 ], [ %2519, %2514 ], [ %2519, %2527 ], [ %3173, %3192 ], [ %3173, %3207 ], [ %3173, %3239 ], [ %3173, %3241 ]
  %3259 = phi float [ %3174, %3170 ], [ %2520, %2708 ], [ %2520, %2514 ], [ %2520, %2527 ], [ %3174, %3192 ], [ %3174, %3207 ], [ %3174, %3239 ], [ %3174, %3241 ]
  %3260 = phi float [ %3175, %3170 ], [ %2521, %2708 ], [ %2521, %2514 ], [ %2521, %2527 ], [ %3175, %3192 ], [ %3175, %3207 ], [ %3175, %3239 ], [ %3175, %3241 ]
  %3261 = phi float [ %3176, %3170 ], [ %2522, %2708 ], [ %2522, %2514 ], [ %2522, %2527 ], [ %3176, %3192 ], [ %3176, %3207 ], [ %3176, %3239 ], [ %3176, %3241 ]
  %3262 = phi float [ %3177, %3170 ], [ %2523, %2708 ], [ %2523, %2514 ], [ %2523, %2527 ], [ %3177, %3192 ], [ %3177, %3207 ], [ %3177, %3239 ], [ %3177, %3241 ]
  %3263 = phi float [ %2524, %3170 ], [ %2524, %2708 ], [ %2524, %2514 ], [ %2524, %2527 ], [ %3204, %3192 ], [ %3238, %3207 ], [ %2524, %3239 ], [ %3252, %3241 ]
  %3264 = phi float [ %2525, %3170 ], [ %2525, %2708 ], [ %2525, %2514 ], [ %2525, %2527 ], [ %3201, %3192 ], [ %3215, %3207 ], [ %2525, %3239 ], [ %3249, %3241 ]
  %3265 = phi float [ %3178, %3170 ], [ %2526, %2708 ], [ %2526, %2514 ], [ %2526, %2527 ], [ %3178, %3192 ], [ %3178, %3207 ], [ %3178, %3239 ], [ %3178, %3241 ]
  %3266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3267 = extractvalue %dx.types.CBufRet.f32 %3266, 0
  %3268 = call float @dx.op.dot2.f32(i32 54, float %3254, float %3255, float %3254, float %3255)  ; Dot2(ax,ay,bx,by)
  %3269 = fmul fast float %3268, 0x3FE3333340000000
  %3270 = fsub fast float 1.000000e+00, %3269
  %3271 = call float @dx.op.dot3.f32(i32 55, float %3254, float %3255, float %3270, float %3254, float %3255, float %3270)  ; Dot3(ax,ay,az,bx,by,bz)
  %3272 = call float @dx.op.unary.f32(i32 25, float %3271)  ; Rsqrt(value)
  %3273 = fmul fast float %3272, %3254
  %3274 = fmul fast float %3272, %3255
  %3275 = fmul fast float %3270, %3272
  %3276 = fmul fast float %3275, %111
  %3277 = fmul fast float %3275, %112
  %3278 = fmul fast float %3275, %113
  %3279 = fmul fast float %3273, %79
  %3280 = fmul fast float %3273, %80
  %3281 = fmul fast float %3273, %81
  %3282 = fadd fast float %3276, %3279
  %3283 = fadd fast float %3277, %3280
  %3284 = fadd fast float %3278, %3281
  %3285 = fmul fast float %123, %3274
  %3286 = fmul fast float %124, %3274
  %3287 = fmul fast float %125, %3274
  %3288 = fadd fast float %3282, %3285
  %3289 = fadd fast float %3283, %3286
  %3290 = fadd fast float %3284, %3287
  %3291 = call float @dx.op.dot3.f32(i32 55, float %3288, float %3289, float %3290, float %3288, float %3289, float %3290)  ; Dot3(ax,ay,az,bx,by,bz)
  %3292 = call float @dx.op.unary.f32(i32 25, float %3291)  ; Rsqrt(value)
  %3293 = fmul fast float %3288, %3292
  %3294 = fmul fast float %3289, %3292
  %3295 = fmul fast float %3290, %3292
  %3296 = icmp eq i32 %55, 65535
  br i1 %3296, label %3815, label %3297

; <label>:3297                                    ; preds = %3253
  %3298 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %3299 = call float @dx.op.unary.f32(i32 83, float %57)  ; DerivCoarseX(value)
  %3300 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3301 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %3302 = call float @dx.op.unary.f32(i32 84, float %57)  ; DerivCoarseY(value)
  %3303 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3304 = fadd fast float %3298, %56
  %3305 = fadd fast float %3299, %57
  %3306 = fadd fast float %3300, %58
  %3307 = fadd fast float %3301, %56
  %3308 = fadd fast float %3302, %57
  %3309 = fadd fast float %3303, %58
  %3310 = mul i32 %55, 48
  %3311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.f32 %3311, 0
  %3313 = extractvalue %dx.types.ResRet.f32 %3311, 1
  %3314 = extractvalue %dx.types.ResRet.f32 %3311, 2
  %3315 = add i32 %3310, 16
  %3316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.f32 %3316, 0
  %3318 = extractvalue %dx.types.ResRet.f32 %3316, 1
  %3319 = extractvalue %dx.types.ResRet.f32 %3316, 2
  %3320 = add i32 %3310, 32
  %3321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3320, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.f32 %3321, 0
  %3323 = extractvalue %dx.types.ResRet.f32 %3321, 1
  %3324 = extractvalue %dx.types.ResRet.f32 %3321, 2
  %3325 = extractvalue %dx.types.ResRet.f32 %3321, 3
  %3326 = bitcast float %3325 to i32
  %3327 = fmul fast float %3312, %56
  %3328 = fmul fast float %3313, %57
  %3329 = fmul fast float %3314, %58
  %3330 = fsub fast float %3327, %3317
  %3331 = fsub fast float %3328, %3318
  %3332 = fsub fast float %3329, %3319
  %3333 = call float @dx.op.unary.f32(i32 7, float %3330)  ; Saturate(value)
  %3334 = call float @dx.op.unary.f32(i32 7, float %3331)  ; Saturate(value)
  %3335 = call float @dx.op.unary.f32(i32 7, float %3332)  ; Saturate(value)
  %3336 = fmul fast float %3333, %3322
  %3337 = fmul fast float %3334, %3323
  %3338 = fmul fast float %3335, %3324
  %3339 = fadd fast float %3322, -1.000000e+00
  %3340 = fadd fast float %3323, -1.000000e+00
  %3341 = fadd fast float %3324, -1.000000e+00
  %3342 = call float @dx.op.unary.f32(i32 27, float %3336)  ; Round_ni(value)
  %3343 = call float @dx.op.unary.f32(i32 27, float %3337)  ; Round_ni(value)
  %3344 = call float @dx.op.unary.f32(i32 27, float %3338)  ; Round_ni(value)
  %3345 = call float @dx.op.binary.f32(i32 36, float %3342, float %3339)  ; FMin(a,b)
  %3346 = call float @dx.op.binary.f32(i32 36, float %3343, float %3340)  ; FMin(a,b)
  %3347 = call float @dx.op.binary.f32(i32 36, float %3344, float %3341)  ; FMin(a,b)
  %3348 = fmul fast float %3347, %3323
  %3349 = fadd fast float %3348, %3346
  %3350 = fmul fast float %3349, %3322
  %3351 = fadd fast float %3350, %3345
  %3352 = fptosi float %3351 to i32
  %3353 = add nsw i32 %3352, %3326
  %3354 = shl nsw i32 %3353, 2
  %3355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3356 = extractvalue %dx.types.ResRet.i32 %3355, 0
  %3357 = lshr i32 %3356, 16
  %3358 = icmp eq i32 %3357, 0
  br i1 %3358, label %3783, label %3359

; <label>:3359                                    ; preds = %3297
  br label %3360

; <label>:3360                                    ; preds = %3482, %3359
  %3361 = phi i32 [ %3384, %3482 ], [ %3357, %3359 ]
  %3362 = phi float [ %3483, %3482 ], [ 0.000000e+00, %3359 ]
  %3363 = phi float [ %3484, %3482 ], [ %1045, %3359 ]
  %3364 = phi float [ %3485, %3482 ], [ %3267, %3359 ]
  %3365 = phi float [ %3486, %3482 ], [ %3265, %3359 ]
  %3366 = phi float [ %3487, %3482 ], [ 0.000000e+00, %3359 ]
  %3367 = phi float [ %3488, %3482 ], [ 0.000000e+00, %3359 ]
  %3368 = phi float [ %3489, %3482 ], [ %3259, %3359 ]
  %3369 = phi float [ %3490, %3482 ], [ %3260, %3359 ]
  %3370 = phi float [ %3491, %3482 ], [ %3261, %3359 ]
  %3371 = phi float [ %3492, %3482 ], [ %3293, %3359 ]
  %3372 = phi float [ %3493, %3482 ], [ %3294, %3359 ]
  %3373 = phi float [ %3494, %3482 ], [ %3295, %3359 ]
  %3374 = phi float [ %3495, %3482 ], [ %3264, %3359 ]
  %3375 = phi float [ %3496, %3482 ], [ %3263, %3359 ]
  %3376 = phi float [ %3497, %3482 ], [ 0.000000e+00, %3359 ]
  %3377 = phi float [ %3498, %3482 ], [ %3262, %3359 ]
  %3378 = phi float [ %3499, %3482 ], [ %3256, %3359 ]
  %3379 = phi float [ %3500, %3482 ], [ %3257, %3359 ]
  %3380 = phi float [ %3501, %3482 ], [ %3258, %3359 ]
  %3381 = shl nuw nsw i32 %3361, 2
  %3382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3381, i32 undef)  ; BufferLoad(srv,index,wot)
  %3383 = extractvalue %dx.types.ResRet.i32 %3382, 0
  %3384 = lshr i32 %3383, 16
  %3385 = shl i32 %3383, 8
  %3386 = and i32 %3385, 16776960
  %3387 = or i32 %3386, 48
  %3388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.f32 %3388, 0
  %3390 = extractvalue %dx.types.ResRet.f32 %3388, 1
  %3391 = extractvalue %dx.types.ResRet.f32 %3388, 2
  %3392 = or i32 %3386, 64
  %3393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3392, i32 undef)  ; BufferLoad(srv,index,wot)
  %3394 = extractvalue %dx.types.ResRet.i32 %3393, 0
  %3395 = extractvalue %dx.types.ResRet.i32 %3393, 1
  %3396 = or i32 %3386, 80
  %3397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.f32 %3397, 2
  %3399 = extractvalue %dx.types.ResRet.f32 %3397, 3
  %3400 = or i32 %3386, 96
  %3401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.f32 %3401, 0
  %3403 = extractvalue %dx.types.ResRet.f32 %3401, 1
  %3404 = extractvalue %dx.types.ResRet.f32 %3401, 2
  %3405 = extractvalue %dx.types.ResRet.f32 %3401, 3
  %3406 = or i32 %3386, 112
  %3407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.f32 %3407, 2
  %3409 = or i32 %3386, 128
  %3410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.f32 %3410, 0
  %3412 = extractvalue %dx.types.ResRet.f32 %3410, 1
  %3413 = extractvalue %dx.types.ResRet.f32 %3410, 2
  %3414 = extractvalue %dx.types.ResRet.f32 %3410, 3
  %3415 = or i32 %3386, 144
  %3416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.f32 %3416, 0
  %3418 = extractvalue %dx.types.ResRet.f32 %3416, 1
  %3419 = extractvalue %dx.types.ResRet.f32 %3416, 2
  %3420 = extractvalue %dx.types.ResRet.f32 %3416, 3
  %3421 = or i32 %3386, 160
  %3422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3421, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.f32 %3422, 0
  %3424 = extractvalue %dx.types.ResRet.f32 %3422, 1
  %3425 = extractvalue %dx.types.ResRet.f32 %3422, 2
  %3426 = extractvalue %dx.types.ResRet.f32 %3422, 3
  %3427 = or i32 %3386, 192
  %3428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3427, i32 undef)  ; BufferLoad(srv,index,wot)
  %3429 = extractvalue %dx.types.ResRet.i32 %3428, 0
  %3430 = or i32 %3386, 208
  %3431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3430, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.f32 %3431, 0
  %3433 = or i32 %3386, 248
  %3434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3433, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.f32 %3434, 0
  %3436 = extractvalue %dx.types.ResRet.f32 %3434, 1
  %3437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3386, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.f32 %3437, 0
  %3439 = extractvalue %dx.types.ResRet.f32 %3437, 1
  %3440 = extractvalue %dx.types.ResRet.f32 %3437, 2
  %3441 = extractvalue %dx.types.ResRet.f32 %3437, 3
  %3442 = call float @dx.op.dot4.f32(i32 56, float %3438, float %3439, float %3440, float %3441, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3443 = or i32 %3386, 16
  %3444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3443, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.f32 %3444, 0
  %3446 = extractvalue %dx.types.ResRet.f32 %3444, 1
  %3447 = extractvalue %dx.types.ResRet.f32 %3444, 2
  %3448 = extractvalue %dx.types.ResRet.f32 %3444, 3
  %3449 = call float @dx.op.dot4.f32(i32 56, float %3445, float %3446, float %3447, float %3448, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3450 = or i32 %3386, 32
  %3451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.f32 %3451, 0
  %3453 = extractvalue %dx.types.ResRet.f32 %3451, 1
  %3454 = extractvalue %dx.types.ResRet.f32 %3451, 2
  %3455 = extractvalue %dx.types.ResRet.f32 %3451, 3
  %3456 = call float @dx.op.dot4.f32(i32 56, float %3452, float %3453, float %3454, float %3455, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3457 = call float @dx.op.unary.f32(i32 27, float %3442)  ; Round_ni(value)
  %3458 = call float @dx.op.unary.f32(i32 6, float %3457)  ; FAbs(value)
  %3459 = call float @dx.op.unary.f32(i32 27, float %3449)  ; Round_ni(value)
  %3460 = call float @dx.op.unary.f32(i32 6, float %3459)  ; FAbs(value)
  %3461 = call float @dx.op.unary.f32(i32 6, float %3456)  ; FAbs(value)
  %3462 = call float @dx.op.unary.f32(i32 27, float %3461)  ; Round_ni(value)
  %3463 = fadd fast float %3460, %3458
  %3464 = fadd fast float %3463, %3462
  %3465 = fcmp fast oeq float %3464, 0.000000e+00
  %3466 = call float @dx.op.dot4.f32(i32 56, float %3438, float %3439, float %3440, float %3441, float %3304, float %3305, float %3306, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3467 = call float @dx.op.dot4.f32(i32 56, float %3445, float %3446, float %3447, float %3448, float %3304, float %3305, float %3306, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3468 = call float @dx.op.dot4.f32(i32 56, float %3438, float %3439, float %3440, float %3441, float %3307, float %3308, float %3309, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3469 = call float @dx.op.dot4.f32(i32 56, float %3445, float %3446, float %3447, float %3448, float %3307, float %3308, float %3309, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3470 = fsub fast float %3466, %3442
  %3471 = fsub fast float %3468, %3442
  %3472 = fsub fast float %3467, %3449
  %3473 = fsub fast float %3469, %3449
  %3474 = call float @dx.op.dot3.f32(i32 55, float %3389, float %3390, float %3391, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3476 = extractvalue %dx.types.CBufRet.f32 %3475, 2
  %3477 = fadd fast float %3476, %3474
  %3478 = call float @dx.op.unary.f32(i32 7, float %3477)  ; Saturate(value)
  %3479 = extractvalue %dx.types.CBufRet.f32 %3475, 0
  %3480 = fcmp fast ogt float %3478, %3479
  %3481 = and i1 %3465, %3480
  br i1 %3481, label %3503, label %3482

; <label>:3482                                    ; preds = %3769, %3586, %3503, %3360
  %3483 = phi float [ %3362, %3503 ], [ %3589, %3586 ], [ %3589, %3769 ], [ %3362, %3360 ]
  %3484 = phi float [ %3363, %3503 ], [ %3363, %3586 ], [ %3744, %3769 ], [ %3363, %3360 ]
  %3485 = phi float [ %3364, %3503 ], [ %3364, %3586 ], [ %3743, %3769 ], [ %3364, %3360 ]
  %3486 = phi float [ %3365, %3503 ], [ %3365, %3586 ], [ %3741, %3769 ], [ %3365, %3360 ]
  %3487 = phi float [ %3366, %3503 ], [ %3366, %3586 ], [ %3713, %3769 ], [ %3366, %3360 ]
  %3488 = phi float [ %3367, %3503 ], [ %3367, %3586 ], [ %3711, %3769 ], [ %3367, %3360 ]
  %3489 = phi float [ %3368, %3503 ], [ %3368, %3586 ], [ %3779, %3769 ], [ %3368, %3360 ]
  %3490 = phi float [ %3369, %3503 ], [ %3369, %3586 ], [ %3780, %3769 ], [ %3369, %3360 ]
  %3491 = phi float [ %3370, %3503 ], [ %3370, %3586 ], [ %3781, %3769 ], [ %3370, %3360 ]
  %3492 = phi float [ %3371, %3503 ], [ %3371, %3586 ], [ %3692, %3769 ], [ %3371, %3360 ]
  %3493 = phi float [ %3372, %3503 ], [ %3372, %3586 ], [ %3693, %3769 ], [ %3372, %3360 ]
  %3494 = phi float [ %3373, %3503 ], [ %3373, %3586 ], [ %3694, %3769 ], [ %3373, %3360 ]
  %3495 = phi float [ %3374, %3503 ], [ %3374, %3586 ], [ %3721, %3769 ], [ %3374, %3360 ]
  %3496 = phi float [ %3375, %3503 ], [ %3375, %3586 ], [ %3718, %3769 ], [ %3375, %3360 ]
  %3497 = phi float [ %3376, %3503 ], [ %3376, %3586 ], [ %3715, %3769 ], [ %3376, %3360 ]
  %3498 = phi float [ %3377, %3503 ], [ %3377, %3586 ], [ %3709, %3769 ], [ %3377, %3360 ]
  %3499 = phi float [ %3378, %3503 ], [ %3378, %3586 ], [ %3704, %3769 ], [ %3378, %3360 ]
  %3500 = phi float [ %3379, %3503 ], [ %3379, %3586 ], [ %3705, %3769 ], [ %3379, %3360 ]
  %3501 = phi float [ %3380, %3503 ], [ %3380, %3586 ], [ %3706, %3769 ], [ %3380, %3360 ]
  %3502 = icmp eq i32 %3384, 0
  br i1 %3502, label %3782, label %3360

; <label>:3503                                    ; preds = %3360
  %3504 = extractvalue %dx.types.ResRet.f32 %3388, 3
  %3505 = extractvalue %dx.types.ResRet.f32 %3407, 3
  %3506 = extractvalue %dx.types.ResRet.f32 %3407, 1
  %3507 = extractvalue %dx.types.ResRet.f32 %3407, 0
  %3508 = extractvalue %dx.types.ResRet.f32 %3397, 1
  %3509 = extractvalue %dx.types.ResRet.f32 %3397, 0
  %3510 = extractvalue %dx.types.ResRet.i32 %3393, 3
  %3511 = extractvalue %dx.types.ResRet.i32 %3393, 2
  %3512 = bitcast float %3504 to i32
  %3513 = add i32 %3510, 0
  %3514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3513, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3515 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3516 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3514, %dx.types.Handle %3515, float %3442, float %3449, float undef, float undef, i32 0, i32 0, i32 undef, float %3470, float %3472, float undef, float %3471, float %3473, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3517 = extractvalue %dx.types.ResRet.f32 %3516, 0
  %3518 = fmul fast float %3517, %3509
  %3519 = fadd fast float %3518, %3508
  %3520 = call float @dx.op.unary.f32(i32 7, float %3519)  ; Saturate(value)
  %3521 = fmul fast float %3442, %3402
  %3522 = call float @dx.op.tertiary.f32(i32 46, float %3403, float %3449, float %3521)  ; FMad(a,b,c)
  %3523 = fadd fast float %3522, %3507
  %3524 = fmul fast float %3442, %3404
  %3525 = call float @dx.op.tertiary.f32(i32 46, float %3405, float %3449, float %3524)  ; FMad(a,b,c)
  %3526 = fadd fast float %3525, %3506
  %3527 = fmul fast float %3470, %3402
  %3528 = call float @dx.op.tertiary.f32(i32 46, float %3403, float %3472, float %3527)  ; FMad(a,b,c)
  %3529 = fmul fast float %3470, %3404
  %3530 = call float @dx.op.tertiary.f32(i32 46, float %3405, float %3472, float %3529)  ; FMad(a,b,c)
  %3531 = fmul fast float %3471, %3402
  %3532 = call float @dx.op.tertiary.f32(i32 46, float %3403, float %3473, float %3531)  ; FMad(a,b,c)
  %3533 = fmul fast float %3471, %3404
  %3534 = call float @dx.op.tertiary.f32(i32 46, float %3405, float %3473, float %3533)  ; FMad(a,b,c)
  %3535 = add i32 %3511, 0
  %3536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3535, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3537 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3536, %dx.types.Handle %3515, float %3523, float %3526, float undef, float undef, i32 0, i32 0, i32 undef, float %3528, float %3530, float undef, float %3532, float %3534, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3538 = extractvalue %dx.types.ResRet.f32 %3537, 0
  %3539 = and i32 %3512, 1024
  %3540 = icmp ne i32 %3539, 0
  %3541 = fcmp fast ogt float %3538, 0x3FE0101020000000
  %3542 = uitofp i1 %3541 to float
  %3543 = select i1 %3540, float %3542, float %3538
  %3544 = and i32 %3512, 8192
  %3545 = icmp ne i32 %3544, 0
  %3546 = select i1 %3545, float %3505, float 1.000000e+00
  %3547 = fmul fast float %3442, 2.000000e+00
  %3548 = fadd fast float %3547, -1.000000e+00
  %3549 = call float @dx.op.unary.f32(i32 6, float %3548)  ; FAbs(value)
  %3550 = fmul fast float %3549, %3435
  %3551 = fsub fast float %3550, %3435
  %3552 = call float @dx.op.unary.f32(i32 7, float %3551)  ; Saturate(value)
  %3553 = fmul fast float %3449, 2.000000e+00
  %3554 = fadd fast float %3553, -1.000000e+00
  %3555 = call float @dx.op.unary.f32(i32 6, float %3554)  ; FAbs(value)
  %3556 = fmul fast float %3555, %3436
  %3557 = fsub fast float %3556, %3436
  %3558 = call float @dx.op.unary.f32(i32 7, float %3557)  ; Saturate(value)
  %3559 = fmul fast float %3461, %3398
  %3560 = fsub fast float %3559, %3398
  %3561 = call float @dx.op.unary.f32(i32 7, float %3560)  ; Saturate(value)
  %3562 = fmul fast float %3520, %3546
  %3563 = fmul fast float %3562, %3517
  %3564 = fmul fast float %3563, %3552
  %3565 = fmul fast float %3564, %3543
  %3566 = fmul fast float %3565, %3558
  %3567 = fmul fast float %3566, %3561
  %3568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3569 = extractvalue %dx.types.CBufRet.f32 %3568, 1
  %3570 = extractvalue %dx.types.CBufRet.f32 %3568, 0
  %3571 = fsub fast float %3478, %3570
  %3572 = fmul fast float %3571, %3569
  %3573 = call float @dx.op.unary.f32(i32 7, float %3572)  ; Saturate(value)
  %3574 = fmul fast float %3567, %3399
  %3575 = fadd fast float %3567, %3399
  %3576 = fmul fast float %3575, %3408
  %3577 = fsub fast float %3576, %3408
  %3578 = call float @dx.op.unary.f32(i32 7, float %3577)  ; Saturate(value)
  %3579 = and i32 %3512, 128
  %3580 = icmp ne i32 %3579, 0
  %3581 = select i1 %3580, float %3578, float %3574
  %3582 = fmul fast float %3581, %3573
  %3583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3584 = extractvalue %dx.types.CBufRet.f32 %3583, 0
  %3585 = fcmp fast ugt float %3582, %3584
  br i1 %3585, label %3586, label %3482

; <label>:3586                                    ; preds = %3503
  %3587 = select i1 %3545, float %3582, float 0.000000e+00
  %3588 = fadd fast float %3587, %3362
  %3589 = call float @dx.op.unary.f32(i32 7, float %3588)  ; Saturate(value)
  br i1 %3545, label %3482, label %3590

; <label>:3590                                    ; preds = %3586
  %3591 = and i32 %3512, 4
  %3592 = and i32 %3512, 8
  %3593 = add i32 %3394, 0
  %3594 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3593, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3595 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3596 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3594, %dx.types.Handle %3595, float %3523, float %3526, float undef, float undef, i32 0, i32 0, i32 undef, float %3528, float %3530, float undef, float %3532, float %3534, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3597 = extractvalue %dx.types.ResRet.f32 %3596, 0
  %3598 = extractvalue %dx.types.ResRet.f32 %3596, 1
  %3599 = extractvalue %dx.types.ResRet.f32 %3596, 2
  %3600 = extractvalue %dx.types.ResRet.f32 %3596, 3
  %3601 = bitcast float %3420 to i32
  %3602 = and i32 %3601, 255
  %3603 = uitofp i32 %3602 to float
  %3604 = lshr i32 %3601, 8
  %3605 = and i32 %3604, 255
  %3606 = uitofp i32 %3605 to float
  %3607 = fmul fast float %3600, %3603
  %3608 = fadd fast float %3607, %3606
  %3609 = fmul fast float %3608, 0x3F70101000000000
  %3610 = add i32 %3395, 0
  %3611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3610, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3612 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3611, %dx.types.Handle %3595, float %3523, float %3526, float undef, float undef, i32 0, i32 0, i32 undef, float %3528, float %3530, float undef, float %3532, float %3534, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.ResRet.f32 %3612, 1
  %3615 = extractvalue %dx.types.ResRet.f32 %3612, 2
  %3616 = extractvalue %dx.types.ResRet.f32 %3612, 3
  %3617 = bitcast float %3414 to i32
  %3618 = and i32 %3617, 255
  %3619 = uitofp i32 %3618 to float
  %3620 = lshr i32 %3617, 8
  %3621 = and i32 %3620, 255
  %3622 = uitofp i32 %3621 to float
  %3623 = lshr i32 %3617, 16
  %3624 = and i32 %3623, 255
  %3625 = uitofp i32 %3624 to float
  %3626 = fmul fast float %3625, 0x3F70101000000000
  %3627 = fmul fast float %3613, %3619
  %3628 = fadd fast float %3627, %3622
  %3629 = fmul fast float %3628, 0x3F70101000000000
  %3630 = fadd fast float %3614, -5.000000e-01
  %3631 = fadd fast float %3616, -5.000000e-01
  %3632 = fmul fast float %3630, %3626
  %3633 = fmul fast float %3631, %3626
  %3634 = fadd fast float %3632, 5.000000e-01
  %3635 = fadd fast float %3633, 5.000000e-01
  %3636 = fmul fast float %3597, %3423
  %3637 = fmul fast float %3598, %3424
  %3638 = fmul fast float %3599, %3425
  %3639 = fmul fast float %3634, 2.000000e+00
  %3640 = fadd fast float %3639, -1.000000e+00
  %3641 = fmul fast float %3635, 2.000000e+00
  %3642 = fadd fast float %3641, -1.000000e+00
  %3643 = fadd fast float %3640, %3642
  %3644 = fmul fast float %3643, 5.000000e-01
  %3645 = fsub fast float %3640, %3642
  %3646 = fmul fast float %3645, 5.000000e-01
  %3647 = call float @dx.op.unary.f32(i32 6, float %3644)  ; FAbs(value)
  %3648 = fsub fast float 1.000000e+00, %3647
  %3649 = call float @dx.op.unary.f32(i32 6, float %3646)  ; FAbs(value)
  %3650 = fsub fast float %3648, %3649
  %3651 = call float @dx.op.dot3.f32(i32 55, float %3644, float %3646, float %3650, float %3644, float %3646, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %3652 = call float @dx.op.unary.f32(i32 25, float %3651)  ; Rsqrt(value)
  %3653 = fmul fast float %3644, %3652
  %3654 = fmul fast float %3646, %3652
  %3655 = fmul fast float %3652, %3650
  %3656 = fmul fast float %3655, %3389
  %3657 = fmul fast float %3655, %3390
  %3658 = fmul fast float %3655, %3391
  %3659 = fmul fast float %3653, %3411
  %3660 = fmul fast float %3653, %3412
  %3661 = fmul fast float %3653, %3413
  %3662 = fadd fast float %3659, %3656
  %3663 = fadd fast float %3660, %3657
  %3664 = fadd fast float %3661, %3658
  %3665 = fmul fast float %3654, %3417
  %3666 = fmul fast float %3654, %3418
  %3667 = fmul fast float %3654, %3419
  %3668 = fadd fast float %3662, %3665
  %3669 = fadd fast float %3663, %3666
  %3670 = fadd fast float %3664, %3667
  %3671 = call float @dx.op.dot3.f32(i32 55, float %3668, float %3669, float %3670, float %3668, float %3669, float %3670)  ; Dot3(ax,ay,az,bx,by,bz)
  %3672 = call float @dx.op.unary.f32(i32 25, float %3671)  ; Rsqrt(value)
  %3673 = fmul fast float %3668, %3672
  %3674 = fmul fast float %3669, %3672
  %3675 = fmul fast float %3670, %3672
  %3676 = icmp ne i32 %3592, 0
  %3677 = select i1 %3676, float 1.000000e+00, float 0.000000e+00
  %3678 = fmul fast float %3582, %3677
  %3679 = and i32 %3512, 1
  %3680 = icmp eq i32 %3679, 0
  br i1 %3680, label %3681, label %3685

; <label>:3681                                    ; preds = %3590
  %3682 = fsub fast float %3673, %3371
  %3683 = fsub fast float %3674, %3372
  %3684 = fsub fast float %3675, %3373
  br label %3685

; <label>:3685                                    ; preds = %3681, %3590
  %3686 = phi float [ %3682, %3681 ], [ %3673, %3590 ]
  %3687 = phi float [ %3683, %3681 ], [ %3674, %3590 ]
  %3688 = phi float [ %3684, %3681 ], [ %3675, %3590 ]
  %3689 = fmul float %3688, %3678
  %3690 = fmul float %3687, %3678
  %3691 = fmul float %3686, %3678
  %3692 = fadd fast float %3691, %3371
  %3693 = fadd fast float %3690, %3372
  %3694 = fadd fast float %3689, %3373
  %3695 = icmp ne i32 %3591, 0
  %3696 = select i1 %3695, float 1.000000e+00, float 0.000000e+00
  %3697 = fmul fast float %3582, %3696
  %3698 = fsub fast float %3636, %3378
  %3699 = fsub fast float %3637, %3379
  %3700 = fsub fast float %3638, %3380
  %3701 = fmul fast float %3698, %3697
  %3702 = fmul fast float %3699, %3697
  %3703 = fmul fast float %3700, %3697
  %3704 = fadd fast float %3701, %3378
  %3705 = fadd fast float %3702, %3379
  %3706 = fadd fast float %3703, %3380
  %3707 = fsub fast float %3609, %3377
  %3708 = fmul fast float %3707, %3697
  %3709 = fadd fast float %3708, %3377
  %3710 = fmul fast float %3697, %3367
  %3711 = fsub fast float %3367, %3710
  %3712 = fmul fast float %3697, %3366
  %3713 = fsub fast float %3366, %3712
  %3714 = fadd fast float %3582, %3376
  %3715 = call float @dx.op.unary.f32(i32 7, float %3714)  ; Saturate(value)
  %3716 = fsub fast float %3629, %3375
  %3717 = fmul fast float %3716, %3678
  %3718 = fadd fast float %3717, %3375
  %3719 = fsub fast float %3615, %3374
  %3720 = fmul fast float %3719, %3678
  %3721 = fadd fast float %3720, %3374
  %3722 = call float @dx.op.dot3.f32(i32 55, float %3636, float %3637, float %3638, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3724 = extractvalue %dx.types.CBufRet.f32 %3723, 0
  %3725 = extractvalue %dx.types.CBufRet.f32 %3723, 1
  %3726 = fmul fast float %3725, %3722
  %3727 = fadd fast float %3726, %3724
  %3728 = call float @dx.op.unary.f32(i32 7, float %3727)  ; Saturate(value)
  %3729 = bitcast float %3426 to i32
  %3730 = and i32 %3729, 65535
  %3731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3730)  ; LegacyF16ToF32(value)
  %3732 = lshr i32 %3729, 16
  %3733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3732)  ; LegacyF16ToF32(value)
  %3734 = fcmp fast oge float %3731, 0.000000e+00
  %3735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3736 = extractvalue %dx.types.CBufRet.f32 %3735, 0
  %3737 = select i1 %3734, float %3731, float %3736
  %3738 = fadd fast float %3737, %3733
  %3739 = fsub fast float %3728, %3365
  %3740 = fmul fast float %3739, %3582
  %3741 = fadd fast float %3740, %3365
  %3742 = fmul fast float %3738, %3582
  %3743 = call float @dx.op.binary.f32(i32 35, float %3364, float %3742)  ; FMax(a,b)
  %3744 = call float @dx.op.binary.f32(i32 35, float %3363, float %3582)  ; FMax(a,b)
  %3745 = and i32 %3512, 16
  %3746 = icmp eq i32 %3745, 0
  br i1 %3746, label %3769, label %3747

; <label>:3747                                    ; preds = %3685
  %3748 = bitcast float %3432 to i32
  %3749 = add i32 %3429, 0
  %3750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3749, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3751 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3750, %dx.types.Handle %3595, float %3523, float %3526, float undef, float undef, i32 0, i32 0, i32 undef, float %3528, float %3530, float undef, float %3532, float %3534, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3752 = extractvalue %dx.types.ResRet.f32 %3751, 0
  %3753 = extractvalue %dx.types.ResRet.f32 %3751, 1
  %3754 = extractvalue %dx.types.ResRet.f32 %3751, 2
  %3755 = and i32 %3748, 65535
  %3756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3755)  ; LegacyF16ToF32(value)
  %3757 = fmul fast float %3752, %3423
  %3758 = fmul fast float %3753, %3424
  %3759 = fmul fast float %3754, %3425
  %3760 = and i32 %3512, 16384
  %3761 = icmp ne i32 %3760, 0
  %3762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3763 = extractvalue %dx.types.CBufRet.f32 %3762, 0
  %3764 = select i1 %3761, float %3763, float 1.000000e+00
  %3765 = fmul fast float %3764, %3756
  %3766 = fmul fast float %3757, %3765
  %3767 = fmul fast float %3758, %3765
  %3768 = fmul fast float %3759, %3765
  br label %3769

; <label>:3769                                    ; preds = %3747, %3685
  %3770 = phi float [ %3766, %3747 ], [ 0.000000e+00, %3685 ]
  %3771 = phi float [ %3767, %3747 ], [ 0.000000e+00, %3685 ]
  %3772 = phi float [ %3768, %3747 ], [ 0.000000e+00, %3685 ]
  %3773 = fsub fast float %3770, %3368
  %3774 = fsub fast float %3771, %3369
  %3775 = fsub fast float %3772, %3370
  %3776 = fmul fast float %3773, %3582
  %3777 = fmul fast float %3774, %3582
  %3778 = fmul fast float %3775, %3582
  %3779 = fadd fast float %3776, %3368
  %3780 = fadd fast float %3777, %3369
  %3781 = fadd fast float %3778, %3370
  br label %3482

; <label>:3782                                    ; preds = %3482
  br label %3783

; <label>:3783                                    ; preds = %3782, %3297
  %3784 = phi float [ 0.000000e+00, %3297 ], [ %3483, %3782 ]
  %3785 = phi float [ %1045, %3297 ], [ %3484, %3782 ]
  %3786 = phi float [ %3267, %3297 ], [ %3485, %3782 ]
  %3787 = phi float [ %3265, %3297 ], [ %3486, %3782 ]
  %3788 = phi float [ 0.000000e+00, %3297 ], [ %3487, %3782 ]
  %3789 = phi float [ 0.000000e+00, %3297 ], [ %3488, %3782 ]
  %3790 = phi float [ %3259, %3297 ], [ %3489, %3782 ]
  %3791 = phi float [ %3260, %3297 ], [ %3490, %3782 ]
  %3792 = phi float [ %3261, %3297 ], [ %3491, %3782 ]
  %3793 = phi float [ %3293, %3297 ], [ %3492, %3782 ]
  %3794 = phi float [ %3294, %3297 ], [ %3493, %3782 ]
  %3795 = phi float [ %3295, %3297 ], [ %3494, %3782 ]
  %3796 = phi float [ %3264, %3297 ], [ %3495, %3782 ]
  %3797 = phi float [ %3263, %3297 ], [ %3496, %3782 ]
  %3798 = phi float [ 0.000000e+00, %3297 ], [ %3497, %3782 ]
  %3799 = phi float [ %3262, %3297 ], [ %3498, %3782 ]
  %3800 = phi float [ %3256, %3297 ], [ %3499, %3782 ]
  %3801 = phi float [ %3257, %3297 ], [ %3500, %3782 ]
  %3802 = phi float [ %3258, %3297 ], [ %3501, %3782 ]
  %3803 = call float @dx.op.dot3.f32(i32 55, float %3793, float %3794, float %3795, float %3793, float %3794, float %3795)  ; Dot3(ax,ay,az,bx,by,bz)
  %3804 = call float @dx.op.unary.f32(i32 25, float %3803)  ; Rsqrt(value)
  %3805 = fmul fast float %3804, %3793
  %3806 = fmul fast float %3804, %3794
  %3807 = fmul fast float %3804, %3795
  %3808 = fadd fast float %3798, %1045
  %3809 = call float @dx.op.unary.f32(i32 7, float %3808)  ; Saturate(value)
  %3810 = call float @dx.op.dot3.f32(i32 55, float %3805, float %3806, float %3807, float %3805, float %3806, float %3807)  ; Dot3(ax,ay,az,bx,by,bz)
  %3811 = call float @dx.op.unary.f32(i32 25, float %3810)  ; Rsqrt(value)
  %3812 = fmul fast float %3811, %3805
  %3813 = fmul fast float %3811, %3806
  %3814 = fmul fast float %3811, %3807
  br label %3815

; <label>:3815                                    ; preds = %3783, %3253
  %3816 = phi float [ %3812, %3783 ], [ %3293, %3253 ]
  %3817 = phi float [ %3813, %3783 ], [ %3294, %3253 ]
  %3818 = phi float [ %3814, %3783 ], [ %3295, %3253 ]
  %3819 = phi float [ %3800, %3783 ], [ %3256, %3253 ]
  %3820 = phi float [ %3801, %3783 ], [ %3257, %3253 ]
  %3821 = phi float [ %3802, %3783 ], [ %3258, %3253 ]
  %3822 = phi float [ %3790, %3783 ], [ %3259, %3253 ]
  %3823 = phi float [ %3791, %3783 ], [ %3260, %3253 ]
  %3824 = phi float [ %3792, %3783 ], [ %3261, %3253 ]
  %3825 = phi float [ %3799, %3783 ], [ %3262, %3253 ]
  %3826 = phi float [ %3809, %3783 ], [ %1045, %3253 ]
  %3827 = phi float [ %3797, %3783 ], [ %3263, %3253 ]
  %3828 = phi float [ %3796, %3783 ], [ %3264, %3253 ]
  %3829 = phi float [ %3789, %3783 ], [ 0.000000e+00, %3253 ]
  %3830 = phi float [ %3788, %3783 ], [ 0.000000e+00, %3253 ]
  %3831 = phi float [ %3784, %3783 ], [ 0.000000e+00, %3253 ]
  %3832 = phi float [ %3786, %3783 ], [ %3267, %3253 ]
  %3833 = phi float [ %3785, %3783 ], [ %1045, %3253 ]
  %3834 = phi float [ %3787, %3783 ], [ %3265, %3253 ]
  %3835 = fadd fast float %3825, 0xBFB99999A0000000
  %3836 = call float @dx.op.unary.f32(i32 7, float %3835)  ; Saturate(value)
  %3837 = fmul fast float %3836, 0x3FF1C71C80000000
  %3838 = call float @dx.op.binary.f32(i32 36, float %3825, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3839 = fsub fast float 1.000000e+00, %3837
  %3840 = call float @dx.op.unary.f32(i32 7, float %3839)  ; Saturate(value)
  %3841 = fmul fast float %3840, %3819
  %3842 = fmul fast float %3840, %3820
  %3843 = fmul fast float %3840, %3821
  %3844 = call float @dx.op.unary.f32(i32 7, float %3841)  ; Saturate(value)
  %3845 = call float @dx.op.unary.f32(i32 7, float %3842)  ; Saturate(value)
  %3846 = call float @dx.op.unary.f32(i32 7, float %3843)  ; Saturate(value)
  %3847 = fmul fast float %3837, %3819
  %3848 = fmul fast float %3837, %3820
  %3849 = fmul fast float %3837, %3821
  %3850 = fadd fast float %3847, %3838
  %3851 = fadd fast float %3848, %3838
  %3852 = fadd fast float %3849, %3838
  %3853 = call float @dx.op.unary.f32(i32 7, float %3850)  ; Saturate(value)
  %3854 = call float @dx.op.unary.f32(i32 7, float %3851)  ; Saturate(value)
  %3855 = call float @dx.op.unary.f32(i32 7, float %3852)  ; Saturate(value)
  %3856 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  %3857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3858 = extractvalue %dx.types.CBufRet.i32 %3857, 3
  %3859 = and i32 %3858, 8
  %3860 = icmp ne i32 %3859, 0
  %3861 = call float @dx.op.binary.f32(i32 35, float %3844, float %3819)  ; FMax(a,b)
  %3862 = call float @dx.op.binary.f32(i32 35, float %3845, float %3819)  ; FMax(a,b)
  %3863 = call float @dx.op.binary.f32(i32 35, float %3846, float %3819)  ; FMax(a,b)
  %3864 = call float @dx.op.dot3.f32(i32 55, float %3844, float %3845, float %3846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3865 = select i1 %250, float %3819, float %3844
  %3866 = select i1 %250, float %3864, float %3845
  %3867 = select i1 %250, float 1.000000e+00, float %3846
  %3868 = select i1 %3860, float %3861, float %3865
  %3869 = select i1 %3860, float %3862, float %3866
  %3870 = select i1 %3860, float %3863, float %3867
  %3871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3872 = extractvalue %dx.types.CBufRet.f32 %3871, 0
  %3873 = extractvalue %dx.types.CBufRet.f32 %3871, 1
  %3874 = extractvalue %dx.types.CBufRet.f32 %3871, 2
  %3875 = fadd fast float %3872, %191
  %3876 = fadd fast float %3873, %192
  %3877 = fadd fast float %3874, %193
  %3878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3879 = extractvalue %dx.types.CBufRet.f32 %3878, 0
  %3880 = extractvalue %dx.types.CBufRet.f32 %3878, 1
  %3881 = fsub fast float %3875, %3879
  %3882 = fsub fast float %3876, %3880
  %3883 = fmul fast float %3881, %3881
  %3884 = fmul fast float %3882, %3882
  %3885 = fadd fast float %3883, %3884
  %3886 = call float @dx.op.unary.f32(i32 24, float %3885)  ; Sqrt(value)
  %3887 = extractvalue %dx.types.CBufRet.f32 %3878, 2
  %3888 = fcmp fast olt float %3886, %3887
  br i1 %3888, label %3889, label %3956

; <label>:3889                                    ; preds = %3815
  %3890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3891 = extractvalue %dx.types.CBufRet.f32 %3890, 0
  %3892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3893 = extractvalue %dx.types.CBufRet.f32 %3892, 0
  %3894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3895 = extractvalue %dx.types.CBufRet.f32 %3894, 0
  %3896 = extractvalue %dx.types.CBufRet.f32 %3890, 1
  %3897 = extractvalue %dx.types.CBufRet.f32 %3892, 1
  %3898 = extractvalue %dx.types.CBufRet.f32 %3894, 1
  %3899 = extractvalue %dx.types.CBufRet.f32 %3890, 3
  %3900 = extractvalue %dx.types.CBufRet.f32 %3892, 3
  %3901 = extractvalue %dx.types.CBufRet.f32 %3894, 3
  %3902 = fadd fast float %3899, %3875
  %3903 = fadd fast float %3900, %3876
  %3904 = fadd fast float %3901, %3877
  %3905 = fmul fast float %3902, %3891
  %3906 = call float @dx.op.tertiary.f32(i32 46, float %3903, float %3893, float %3905)  ; FMad(a,b,c)
  %3907 = call float @dx.op.tertiary.f32(i32 46, float %3904, float %3895, float %3906)  ; FMad(a,b,c)
  %3908 = fmul fast float %3902, %3896
  %3909 = call float @dx.op.tertiary.f32(i32 46, float %3903, float %3897, float %3908)  ; FMad(a,b,c)
  %3910 = call float @dx.op.tertiary.f32(i32 46, float %3904, float %3898, float %3909)  ; FMad(a,b,c)
  %3911 = fsub fast float %3907, %3899
  %3912 = fsub fast float %3910, %3900
  %3913 = fsub fast float %3911, %3879
  %3914 = fadd fast float %3913, %3887
  %3915 = fsub fast float %3912, %3880
  %3916 = fadd fast float %3915, %3887
  %3917 = extractvalue %dx.types.CBufRet.f32 %3878, 3
  %3918 = fmul fast float %3914, %3917
  %3919 = fmul fast float %3916, %3917
  %3920 = call float @dx.op.unary.f32(i32 7, float %3918)  ; Saturate(value)
  %3921 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  %3922 = fsub fast float 1.000000e+00, %3920
  %3923 = fsub fast float 1.000000e+00, %3921
  %3924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %3922, float %3923, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3925 = extractvalue %dx.types.ResRet.f32 %3924, 0
  %3926 = fcmp fast ugt float %3925, 0.000000e+00
  br i1 %3926, label %3927, label %4230

; <label>:3927                                    ; preds = %3889
  %3928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3929 = extractvalue %dx.types.CBufRet.f32 %3928, 2
  %3930 = fmul fast float %3929, %3925
  %3931 = extractvalue %dx.types.CBufRet.f32 %3928, 3
  %3932 = fadd fast float %3931, %3930
  %3933 = extractvalue %dx.types.CBufRet.f32 %3894, 2
  %3934 = fadd fast float %3932, %3901
  %3935 = fmul fast float %3907, %3895
  %3936 = call float @dx.op.tertiary.f32(i32 46, float %3910, float %3898, float %3935)  ; FMad(a,b,c)
  %3937 = call float @dx.op.tertiary.f32(i32 46, float %3934, float %3933, float %3936)  ; FMad(a,b,c)
  %3938 = fsub fast float %3937, %3901
  %3939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3940 = extractvalue %dx.types.CBufRet.f32 %3939, 2
  %3941 = fsub fast float %3938, %3940
  %3942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %3922, float %3923, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3943 = extractvalue %dx.types.ResRet.f32 %3942, 0
  %3944 = extractvalue %dx.types.ResRet.f32 %3942, 1
  %3945 = extractvalue %dx.types.ResRet.f32 %3942, 2
  %3946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %3922, float %3923, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3947 = extractvalue %dx.types.ResRet.f32 %3946, 0
  %3948 = extractvalue %dx.types.ResRet.f32 %3946, 1
  %3949 = extractvalue %dx.types.ResRet.f32 %3946, 2
  %3950 = fadd fast float %3947, %3943
  %3951 = fmul fast float %3950, 0x3F847AE140000000
  %3952 = fadd fast float %3948, %3944
  %3953 = fmul fast float %3952, 0x3F847AE140000000
  %3954 = fadd fast float %3949, %3945
  %3955 = fmul fast float %3954, 0x3F847AE140000000
  br label %4230

; <label>:3956                                    ; preds = %3815
  %3957 = and i32 %229, 1
  %3958 = icmp eq i32 %3957, 0
  br i1 %3958, label %4230, label %3959

; <label>:3959                                    ; preds = %3956
  %3960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.f32 %3960, 0
  %3962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3963 = extractvalue %dx.types.CBufRet.f32 %3962, 0
  %3964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3965 = extractvalue %dx.types.CBufRet.f32 %3964, 0
  %3966 = extractvalue %dx.types.CBufRet.f32 %3960, 1
  %3967 = extractvalue %dx.types.CBufRet.f32 %3962, 1
  %3968 = extractvalue %dx.types.CBufRet.f32 %3964, 1
  %3969 = extractvalue %dx.types.CBufRet.f32 %3960, 3
  %3970 = extractvalue %dx.types.CBufRet.f32 %3962, 3
  %3971 = extractvalue %dx.types.CBufRet.f32 %3964, 3
  %3972 = fadd fast float %3969, %3875
  %3973 = fadd fast float %3970, %3876
  %3974 = fadd fast float %3971, %3877
  %3975 = fmul fast float %3972, %3961
  %3976 = call float @dx.op.tertiary.f32(i32 46, float %3973, float %3963, float %3975)  ; FMad(a,b,c)
  %3977 = call float @dx.op.tertiary.f32(i32 46, float %3974, float %3965, float %3976)  ; FMad(a,b,c)
  %3978 = fmul fast float %3972, %3966
  %3979 = call float @dx.op.tertiary.f32(i32 46, float %3973, float %3967, float %3978)  ; FMad(a,b,c)
  %3980 = call float @dx.op.tertiary.f32(i32 46, float %3974, float %3968, float %3979)  ; FMad(a,b,c)
  %3981 = fsub fast float %3977, %3969
  %3982 = fsub fast float %3980, %3970
  %3983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3984 = extractvalue %dx.types.CBufRet.f32 %3983, 0
  %3985 = extractvalue %dx.types.CBufRet.f32 %3983, 1
  %3986 = extractvalue %dx.types.CBufRet.f32 %3983, 2
  %3987 = extractvalue %dx.types.CBufRet.f32 %3983, 3
  %3988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3989 = extractvalue %dx.types.CBufRet.f32 %3988, 3
  %3990 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3991 = extractvalue %dx.types.CBufRet.i32 %3990, 0
  %3992 = extractvalue %dx.types.CBufRet.i32 %3990, 1
  %3993 = udiv i32 %3992, %3991
  %3994 = fsub fast float %3981, %3984
  %3995 = fsub fast float %3982, %3985
  %3996 = call float @dx.op.binary.f32(i32 35, float %3994, float 0.000000e+00)  ; FMax(a,b)
  %3997 = call float @dx.op.binary.f32(i32 35, float %3995, float 0.000000e+00)  ; FMax(a,b)
  %3998 = call float @dx.op.binary.f32(i32 36, float %3996, float %3986)  ; FMin(a,b)
  %3999 = call float @dx.op.binary.f32(i32 36, float %3997, float %3987)  ; FMin(a,b)
  %4000 = add i32 %3991, -1
  %4001 = add i32 %3993, -1
  %4002 = fmul fast float %3998, %3989
  %4003 = fmul fast float %3999, %3989
  %4004 = fptoui float %4002 to i32
  %4005 = fptoui float %4003 to i32
  %4006 = call i32 @dx.op.binary.i32(i32 40, i32 %4004, i32 %4000)  ; UMin(a,b)
  %4007 = call i32 @dx.op.binary.i32(i32 40, i32 %4005, i32 %4001)  ; UMin(a,b)
  %4008 = mul i32 %4007, %3991
  %4009 = add i32 %4008, %4006
  %4010 = shl i32 %4009, 2
  %4011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4010, i32 undef)  ; BufferLoad(srv,index,wot)
  %4012 = extractvalue %dx.types.ResRet.i32 %4011, 0
  %4013 = icmp eq i32 %4012, -1
  br i1 %4013, label %4230, label %4014

; <label>:4014                                    ; preds = %3959
  %4015 = mul i32 %4012, 148
  %4016 = add i32 %4015, 4
  %4017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4016, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.f32 %4017, 0
  %4019 = add i32 %4015, 8
  %4020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4019, i32 undef)  ; BufferLoad(srv,index,wot)
  %4021 = extractvalue %dx.types.ResRet.f32 %4020, 0
  %4022 = add i32 %4015, 36
  %4023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4022, i32 undef)  ; BufferLoad(srv,index,wot)
  %4024 = extractvalue %dx.types.ResRet.f32 %4023, 0
  %4025 = add i32 %4015, 60
  %4026 = add i32 %4015, 92
  %4027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4026, i32 undef)  ; BufferLoad(srv,index,wot)
  %4028 = extractvalue %dx.types.ResRet.i32 %4027, 0
  %4029 = add i32 %4015, 116
  %4030 = fsub fast float %3981, %4018
  %4031 = fsub fast float %3982, %4021
  %4032 = fmul fast float %3989, %4030
  %4033 = fmul fast float %3989, %4031
  %4034 = call float @dx.op.unary.f32(i32 7, float %4032)  ; Saturate(value)
  %4035 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  %4036 = fsub fast float 1.000000e+00, %4035
  %4037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4038 = extractvalue %dx.types.CBufRet.f32 %4037, 2
  %4039 = call float @dx.op.unary.f32(i32 83, float %4034)  ; DerivCoarseX(value)
  %4040 = call float @dx.op.unary.f32(i32 83, float %4036)  ; DerivCoarseX(value)
  %4041 = call float @dx.op.unary.f32(i32 84, float %4034)  ; DerivCoarseY(value)
  %4042 = call float @dx.op.unary.f32(i32 84, float %4036)  ; DerivCoarseY(value)
  %4043 = fmul fast float %4039, %4038
  %4044 = fmul fast float %4040, %4038
  %4045 = fmul fast float %4041, %4038
  %4046 = fmul fast float %4042, %4038
  %4047 = call float @dx.op.dot2.f32(i32 54, float %4045, float %4046, float %4045, float %4046)  ; Dot2(ax,ay,bx,by)
  %4048 = call float @dx.op.dot2.f32(i32 54, float %4043, float %4044, float %4043, float %4044)  ; Dot2(ax,ay,bx,by)
  %4049 = call float @dx.op.binary.f32(i32 35, float %4048, float %4047)  ; FMax(a,b)
  %4050 = call float @dx.op.unary.f32(i32 23, float %4049)  ; Log(value)
  %4051 = fmul fast float %4050, 5.000000e-01
  %4052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4053 = extractvalue %dx.types.CBufRet.f32 %4052, 1
  %4054 = fadd fast float %4053, %4051
  %4055 = call float @dx.op.binary.f32(i32 35, float %4054, float 0.000000e+00)  ; FMax(a,b)
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 3
  %4058 = fadd fast float %4057, %4055
  %4059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4060 = extractvalue %dx.types.CBufRet.f32 %4059, 3
  %4061 = fadd fast float %4058, %4060
  %4062 = add i32 %4028, 0
  %4063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4062, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4064 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4063, i32 0)  ; GetDimensions(handle,mipLevel)
  %4065 = extractvalue %dx.types.Dimensions %4064, 0
  %4066 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4065)  ; FirstbitLo(value)
  %4067 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4068 = extractvalue %dx.types.CBufRet.i32 %4067, 1
  %4069 = sub nsw i32 %4068, %4066
  %4070 = sitofp i32 %4069 to float
  %4071 = fsub fast float %4061, %4070
  %4072 = call float @dx.op.binary.f32(i32 35, float %4071, float 0.000000e+00)  ; FMax(a,b)
  %4073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4063, %dx.types.Handle %46, float %4034, float %4036, float %4024, float undef, i32 0, i32 0, i32 undef, float %4072)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4074 = extractvalue %dx.types.ResRet.f32 %4073, 0
  %4075 = fcmp ule float %4074, 0x3FE0101020000000
  %4076 = extractvalue %dx.types.CBufRet.i32 %4067, 0
  %4077 = and i32 %4076, 128
  %4078 = icmp ne i32 %4077, 0
  %4079 = and i1 %4075, %4078
  br i1 %4079, label %4230, label %4080

; <label>:4080                                    ; preds = %4014
  %4081 = add i32 %4015, 20
  %4082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4081, i32 undef)  ; BufferLoad(srv,index,wot)
  %4083 = extractvalue %dx.types.ResRet.f32 %4082, 0
  %4084 = add i32 %4015, 24
  %4085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4084, i32 undef)  ; BufferLoad(srv,index,wot)
  %4086 = extractvalue %dx.types.ResRet.f32 %4085, 0
  %4087 = add i32 %4015, 40
  %4088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4087, i32 undef)  ; BufferLoad(srv,index,wot)
  %4089 = extractvalue %dx.types.ResRet.f32 %4088, 0
  %4090 = add i32 %4015, 96
  %4091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4090, i32 undef)  ; BufferLoad(srv,index,wot)
  %4092 = extractvalue %dx.types.ResRet.i32 %4091, 0
  %4093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4094 = extractvalue %dx.types.CBufRet.f32 %4093, 2
  %4095 = fmul fast float %4094, %4034
  %4096 = fmul fast float %4094, %4036
  %4097 = extractvalue %dx.types.CBufRet.f32 %4093, 3
  %4098 = fadd fast float %4095, %4097
  %4099 = fadd fast float %4096, %4097
  %4100 = add i32 %4092, 0
  %4101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4100, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4102 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4101, i32 0)  ; GetDimensions(handle,mipLevel)
  %4103 = extractvalue %dx.types.Dimensions %4102, 0
  %4104 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4103)  ; FirstbitLo(value)
  %4105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4106 = extractvalue %dx.types.CBufRet.i32 %4105, 1
  %4107 = sub nsw i32 %4106, %4104
  %4108 = sitofp i32 %4107 to float
  %4109 = fsub fast float %4058, %4108
  %4110 = call float @dx.op.binary.f32(i32 35, float %4109, float 0.000000e+00)  ; FMax(a,b)
  %4111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4101, %dx.types.Handle %46, float %4098, float %4099, float %4089, float undef, i32 0, i32 0, i32 undef, float %4110)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4112 = extractvalue %dx.types.ResRet.f32 %4111, 0
  %4113 = fmul fast float %4112, %4083
  %4114 = fadd fast float %4113, %4086
  %4115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.f32 %4115, 0
  %4117 = extractvalue %dx.types.CBufRet.f32 %4115, 1
  %4118 = extractvalue %dx.types.CBufRet.f32 %4115, 2
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 3
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 3
  %4123 = extractvalue %dx.types.CBufRet.f32 %4115, 3
  %4124 = fadd fast float %4120, %3981
  %4125 = fadd fast float %4122, %3982
  %4126 = fadd fast float %4114, %4123
  %4127 = fmul fast float %4124, %4116
  %4128 = call float @dx.op.tertiary.f32(i32 46, float %4125, float %4117, float %4127)  ; FMad(a,b,c)
  %4129 = call float @dx.op.tertiary.f32(i32 46, float %4126, float %4118, float %4128)  ; FMad(a,b,c)
  %4130 = fsub fast float %4129, %4123
  %4131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4132 = extractvalue %dx.types.CBufRet.f32 %4131, 2
  %4133 = fsub fast float %4130, %4132
  %4134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.i32 %4134, 0
  %4136 = call i32 @dx.op.binary.i32(i32 40, i32 %4012, i32 %4135)  ; UMin(a,b)
  %4137 = mul i32 %4136, 36
  %4138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4137, i32 undef)  ; BufferLoad(srv,index,wot)
  %4139 = extractvalue %dx.types.ResRet.i32 %4138, 0
  %4140 = add i32 %4137, 4
  %4141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4142 = extractvalue %dx.types.CBufRet.f32 %4141, 0
  %4143 = fmul fast float %4142, %4034
  %4144 = fmul fast float %4142, %4036
  %4145 = extractvalue %dx.types.CBufRet.f32 %4141, 1
  %4146 = fadd fast float %4143, %4145
  %4147 = fadd fast float %4144, %4145
  %4148 = icmp eq i32 %4139, 0
  br i1 %4148, label %4217, label %4149

; <label>:4149                                    ; preds = %4080
  br label %4150

; <label>:4150                                    ; preds = %4207, %4149
  %4151 = phi float [ %4208, %4207 ], [ 0.000000e+00, %4149 ]
  %4152 = phi float [ %4209, %4207 ], [ 0.000000e+00, %4149 ]
  %4153 = phi float [ %4210, %4207 ], [ 0.000000e+00, %4149 ]
  %4154 = phi float [ %4211, %4207 ], [ 0.000000e+00, %4149 ]
  %4155 = phi float [ %4212, %4207 ], [ 0.000000e+00, %4149 ]
  %4156 = phi float [ %4213, %4207 ], [ 0.000000e+00, %4149 ]
  %4157 = phi i32 [ %4214, %4207 ], [ 0, %4149 ]
  %4158 = shl i32 %4157, 2
  %4159 = add i32 %4025, %4158
  %4160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4159, i32 undef)  ; BufferLoad(srv,index,wot)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = add i32 %4029, %4158
  %4163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4162, i32 undef)  ; BufferLoad(srv,index,wot)
  %4164 = extractvalue %dx.types.ResRet.i32 %4163, 0
  %4165 = add i32 %4164, 0
  %4166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4165, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4167 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4166, i32 0)  ; GetDimensions(handle,mipLevel)
  %4168 = extractvalue %dx.types.Dimensions %4167, 0
  %4169 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4168)  ; FirstbitLo(value)
  %4170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.i32 %4170, 1
  %4172 = sub nsw i32 %4171, %4169
  %4173 = sitofp i32 %4172 to float
  %4174 = fsub fast float %4058, %4173
  %4175 = call float @dx.op.binary.f32(i32 35, float %4174, float 0.000000e+00)  ; FMax(a,b)
  %4176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4166, %dx.types.Handle %46, float %4146, float %4147, float %4161, float undef, i32 0, i32 0, i32 undef, float %4175)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4177 = extractvalue %dx.types.ResRet.f32 %4176, 0
  %4178 = fcmp fast ogt float %4177, 0.000000e+00
  br i1 %4178, label %4179, label %4207

; <label>:4179                                    ; preds = %4150
  %4180 = add i32 %4140, %4158
  %4181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4180, i32 undef)  ; BufferLoad(srv,index,wot)
  %4182 = extractvalue %dx.types.ResRet.i32 %4181, 0
  %4183 = and i32 %4182, 32767
  %4184 = mul nuw nsw i32 %4183, 928
  %4185 = add nuw nsw i32 %4184, 48
  %4186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4185, i32 undef)  ; BufferLoad(srv,index,wot)
  %4187 = extractvalue %dx.types.ResRet.f32 %4186, 0
  %4188 = extractvalue %dx.types.ResRet.f32 %4186, 1
  %4189 = extractvalue %dx.types.ResRet.f32 %4186, 2
  %4190 = add nuw nsw i32 %4184, 60
  %4191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4190, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.f32 %4191, 0
  %4193 = extractvalue %dx.types.ResRet.f32 %4191, 1
  %4194 = extractvalue %dx.types.ResRet.f32 %4191, 2
  %4195 = fmul fast float %4187, %4177
  %4196 = fmul fast float %4188, %4177
  %4197 = fmul fast float %4189, %4177
  %4198 = fadd fast float %4195, %4151
  %4199 = fadd fast float %4196, %4152
  %4200 = fadd fast float %4197, %4153
  %4201 = fmul fast float %4192, %4177
  %4202 = fmul fast float %4193, %4177
  %4203 = fmul fast float %4194, %4177
  %4204 = fadd fast float %4201, %4154
  %4205 = fadd fast float %4202, %4155
  %4206 = fadd fast float %4203, %4156
  br label %4207

; <label>:4207                                    ; preds = %4179, %4150
  %4208 = phi float [ %4198, %4179 ], [ %4151, %4150 ]
  %4209 = phi float [ %4199, %4179 ], [ %4152, %4150 ]
  %4210 = phi float [ %4200, %4179 ], [ %4153, %4150 ]
  %4211 = phi float [ %4204, %4179 ], [ %4154, %4150 ]
  %4212 = phi float [ %4205, %4179 ], [ %4155, %4150 ]
  %4213 = phi float [ %4206, %4179 ], [ %4156, %4150 ]
  %4214 = add nuw i32 %4157, 1
  %4215 = icmp eq i32 %4214, %4139
  br i1 %4215, label %4216, label %4150

; <label>:4216                                    ; preds = %4207
  br label %4217

; <label>:4217                                    ; preds = %4216, %4080
  %4218 = phi float [ 0.000000e+00, %4080 ], [ %4208, %4216 ]
  %4219 = phi float [ 0.000000e+00, %4080 ], [ %4209, %4216 ]
  %4220 = phi float [ 0.000000e+00, %4080 ], [ %4210, %4216 ]
  %4221 = phi float [ 0.000000e+00, %4080 ], [ %4211, %4216 ]
  %4222 = phi float [ 0.000000e+00, %4080 ], [ %4212, %4216 ]
  %4223 = phi float [ 0.000000e+00, %4080 ], [ %4213, %4216 ]
  %4224 = fadd fast float %4221, %4218
  %4225 = fmul fast float %4224, 0x3F847AE140000000
  %4226 = fadd fast float %4222, %4219
  %4227 = fmul fast float %4226, 0x3F847AE140000000
  %4228 = fadd fast float %4223, %4220
  %4229 = fmul fast float %4228, 0x3F847AE140000000
  br label %4230

; <label>:4230                                    ; preds = %4217, %4014, %3959, %3956, %3927, %3889
  %4231 = phi float [ %3941, %3927 ], [ -1.310720e+05, %3889 ], [ %4133, %4217 ], [ -1.310720e+05, %3959 ], [ -1.310720e+05, %4014 ], [ -1.310720e+05, %3956 ]
  %4232 = phi float [ %3951, %3927 ], [ 0.000000e+00, %3889 ], [ %4225, %4217 ], [ 0.000000e+00, %3959 ], [ 0.000000e+00, %4014 ], [ 0.000000e+00, %3956 ]
  %4233 = phi float [ %3953, %3927 ], [ 0.000000e+00, %3889 ], [ %4227, %4217 ], [ 0.000000e+00, %3959 ], [ 0.000000e+00, %4014 ], [ 0.000000e+00, %3956 ]
  %4234 = phi float [ %3955, %3927 ], [ 0.000000e+00, %3889 ], [ %4229, %4217 ], [ 0.000000e+00, %3959 ], [ 0.000000e+00, %4014 ], [ 0.000000e+00, %3956 ]
  %4235 = phi i1 [ true, %3927 ], [ false, %3889 ], [ true, %4217 ], [ false, %3959 ], [ false, %4014 ], [ false, %3956 ]
  %4236 = and i32 %229, 3
  %4237 = icmp eq i32 %4236, 1
  %4238 = select i1 %4237, float 1.000000e+00, float 0.000000e+00
  %4239 = fsub fast float %4231, %193
  %4240 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4241 = select i1 %4235, float %4240, float 1.000000e+00
  %4242 = fmul fast float %4241, %4238
  %4243 = icmp eq i32 %4236, 3
  %4244 = select i1 %4243, float 1.000000e+00, float %4242
  %4245 = call float @dx.op.binary.f32(i32 35, float %3831, float %4244)  ; FMax(a,b)
  %4246 = fcmp fast olt float %4244, 1.000000e+00
  %4247 = fcmp uge float %69, 0.000000e+00
  %4248 = and i1 %4247, %4246
  br i1 %4248, label %4249, label %4259

; <label>:4249                                    ; preds = %4230
  %4250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %46, float %69, float %70, float %71, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4251 = extractvalue %dx.types.ResRet.f32 %4250, 0
  %4252 = extractvalue %dx.types.ResRet.f32 %4250, 1
  %4253 = extractvalue %dx.types.ResRet.f32 %4250, 2
  %4254 = fadd fast float %4251, %4245
  %4255 = fcmp ule float %68, 0.000000e+00
  %4256 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4257 = select i1 %4255, float %4256, float 1.000000e+00
  %4258 = fmul fast float %4257, %4253
  br label %4259

; <label>:4259                                    ; preds = %4249, %4230
  %4260 = phi float [ %4254, %4249 ], [ %4245, %4230 ]
  %4261 = phi float [ %4252, %4249 ], [ 0.000000e+00, %4230 ]
  %4262 = phi float [ %4258, %4249 ], [ 0.000000e+00, %4230 ]
  %4263 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4264 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4265 = call float @dx.op.unary.f32(i32 7, float %4262)  ; Saturate(value)
  %4266 = fcmp fast une float %4264, 0.000000e+00
  %4267 = fcmp fast une float %4265, 0.000000e+00
  %4268 = or i1 %4266, %4267
  br i1 %4268, label %4269, label %4828

; <label>:4269                                    ; preds = %4259
  br i1 %4266, label %4270, label %4543

; <label>:4270                                    ; preds = %4269
  %4271 = call float @dx.op.unary.f32(i32 23, float %3828)  ; Log(value)
  %4272 = fmul fast float %4271, 4.000000e+00
  %4273 = call float @dx.op.unary.f32(i32 21, float %4272)  ; Exp(value)
  %4274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4275 = extractvalue %dx.types.CBufRet.f32 %4274, 0
  %4276 = fmul fast float %4275, %56
  %4277 = fmul fast float %4275, %57
  %4278 = fmul fast float %4275, %58
  %4279 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4280 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4281 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4282 = call float @dx.op.unary.f32(i32 23, float %4279)  ; Log(value)
  %4283 = call float @dx.op.unary.f32(i32 23, float %4280)  ; Log(value)
  %4284 = call float @dx.op.unary.f32(i32 23, float %4281)  ; Log(value)
  %4285 = fmul fast float %4282, 4.000000e+00
  %4286 = fmul fast float %4283, 4.000000e+00
  %4287 = fmul fast float %4284, 4.000000e+00
  %4288 = call float @dx.op.unary.f32(i32 21, float %4285)  ; Exp(value)
  %4289 = call float @dx.op.unary.f32(i32 21, float %4286)  ; Exp(value)
  %4290 = call float @dx.op.unary.f32(i32 21, float %4287)  ; Exp(value)
  %4291 = fadd fast float %4289, %4288
  %4292 = fadd fast float %4291, %4290
  %4293 = fdiv fast float 1.000000e+00, %4292
  %4294 = fmul fast float %4293, %4288
  %4295 = fcmp fast ogt float %65, 0.000000e+00
  %4296 = fcmp fast ogt float %66, 0.000000e+00
  %4297 = fcmp fast ogt float %67, 0.000000e+00
  %4298 = fcmp fast olt float %65, 0.000000e+00
  %4299 = fcmp fast olt float %66, 0.000000e+00
  %4300 = fcmp fast olt float %67, 0.000000e+00
  %4301 = zext i1 %4295 to i32
  %4302 = zext i1 %4296 to i32
  %4303 = zext i1 %4297 to i32
  %4304 = zext i1 %4298 to i32
  %4305 = zext i1 %4299 to i32
  %4306 = zext i1 %4300 to i32
  %4307 = sub nsw i32 %4301, %4304
  %4308 = sub nsw i32 %4302, %4305
  %4309 = sub nsw i32 %4303, %4306
  %4310 = call float @dx.op.unary.f32(i32 83, float %4276)  ; DerivCoarseX(value)
  %4311 = call float @dx.op.unary.f32(i32 83, float %4277)  ; DerivCoarseX(value)
  %4312 = call float @dx.op.unary.f32(i32 83, float %4278)  ; DerivCoarseX(value)
  %4313 = call float @dx.op.unary.f32(i32 84, float %4276)  ; DerivCoarseY(value)
  %4314 = call float @dx.op.unary.f32(i32 84, float %4277)  ; DerivCoarseY(value)
  %4315 = call float @dx.op.unary.f32(i32 84, float %4278)  ; DerivCoarseY(value)
  %4316 = fcmp fast ole float %261, %4294
  %4317 = fmul fast float %4293, %4291
  %4318 = fcmp fast ole float %261, %4317
  %4319 = select i1 %4318, float %4278, float %4276
  %4320 = select i1 %4318, float %4276, float %4277
  %4321 = select i1 %4316, float %4277, float %4319
  %4322 = select i1 %4316, float %4278, float %4320
  %4323 = select i1 %4318, float %4312, float %4310
  %4324 = select i1 %4318, float %4310, float %4311
  %4325 = select i1 %4316, float %4311, float %4323
  %4326 = select i1 %4316, float %4312, float %4324
  %4327 = select i1 %4318, float %4315, float %4313
  %4328 = select i1 %4318, float %4313, float %4314
  %4329 = select i1 %4316, float %4314, float %4327
  %4330 = select i1 %4316, float %4315, float %4328
  %4331 = call float @dx.op.unary.f32(i32 27, float %4321)  ; Round_ni(value)
  %4332 = call float @dx.op.unary.f32(i32 27, float %4322)  ; Round_ni(value)
  %4333 = fptosi float %4331 to i32
  %4334 = fptosi float %4332 to i32
  %4335 = xor i32 %4334, %4333
  %4336 = sitofp i32 %4335 to float
  %4337 = fptosi float %4336 to i32
  %4338 = sitofp i32 %4337 to float
  %4339 = fmul fast float %4338, 0x3FE3C6EF40000000
  %4340 = frem fast float %4331, 2.560000e+02
  %4341 = frem fast float %4332, 2.560000e+02
  %4342 = fptoui float %4340 to i32
  %4343 = fptoui float %4341 to i32
  %4344 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4342, i32 %4343, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = extractvalue %dx.types.ResRet.f32 %4344, 1
  %4347 = extractvalue %dx.types.ResRet.f32 %4344, 2
  %4348 = fadd fast float %4345, %4339
  %4349 = fadd fast float %4346, %4339
  %4350 = fadd fast float %4347, %4339
  %4351 = call float @dx.op.unary.f32(i32 22, float %4348)  ; Frc(value)
  %4352 = call float @dx.op.unary.f32(i32 22, float %4349)  ; Frc(value)
  %4353 = call float @dx.op.unary.f32(i32 22, float %4350)  ; Frc(value)
  %4354 = fmul fast float %4353, 0x401921FB60000000
  %4355 = call float @dx.op.unary.f32(i32 13, float %4354)  ; Sin(value)
  %4356 = call float @dx.op.unary.f32(i32 12, float %4354)  ; Cos(value)
  %4357 = fsub fast float -0.000000e+00, %4356
  %4358 = fmul fast float %4356, %4321
  %4359 = call float @dx.op.tertiary.f32(i32 46, float %4355, float %4322, float %4358)  ; FMad(a,b,c)
  %4360 = fmul fast float %4355, %4321
  %4361 = call float @dx.op.tertiary.f32(i32 46, float %4357, float %4322, float %4360)  ; FMad(a,b,c)
  %4362 = fadd fast float %4359, %4351
  %4363 = fadd fast float %4361, %4352
  %4364 = extractvalue %dx.types.CBufRet.f32 %4274, 3
  %4365 = bitcast float %4364 to i32
  %4366 = icmp eq i32 %4365, 0
  br i1 %4366, label %4405, label %4367

; <label>:4367                                    ; preds = %4270
  %4368 = add i32 %4365, 0
  %4369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4368, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4370 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4369, %dx.types.Handle %101, float %4362, float %4363, float undef, float undef, i32 0, i32 0, i32 undef, float %4325, float %4326, float undef, float %4329, float %4330, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4371 = extractvalue %dx.types.ResRet.f32 %4370, 0
  %4372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4373 = extractvalue %dx.types.CBufRet.f32 %4372, 1
  %4374 = extractvalue %dx.types.CBufRet.f32 %4372, 2
  %4375 = fsub fast float 1.000000e+00, %4264
  %4376 = call float @dx.op.binary.f32(i32 35, float %4375, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4377 = bitcast float %4264 to i32
  %4378 = sitofp i32 %4377 to float
  %4379 = fadd fast float %4378, 0xC1CFBF8940000000
  %4380 = fmul fast float %4374, %4379
  %4381 = fadd fast float %4380, 0x41CFBF8940000000
  %4382 = fptosi float %4381 to i32
  %4383 = bitcast i32 %4382 to float
  %4384 = bitcast float %4376 to i32
  %4385 = sitofp i32 %4384 to float
  %4386 = fadd fast float %4385, 0xC1CFBF8940000000
  %4387 = fmul fast float %4386, %4374
  %4388 = fadd fast float %4387, 0x41CFBF8940000000
  %4389 = fptosi float %4388 to i32
  %4390 = bitcast i32 %4389 to float
  %4391 = fmul fast float %4383, %4373
  %4392 = fmul fast float %4390, %4373
  %4393 = fsub fast float %4376, %4391
  %4394 = fadd fast float %4392, %4376
  %4395 = call float @dx.op.unary.f32(i32 7, float %4393)  ; Saturate(value)
  %4396 = call float @dx.op.unary.f32(i32 7, float %4394)  ; Saturate(value)
  %4397 = fsub fast float %4371, %4395
  %4398 = fsub fast float %4396, %4395
  %4399 = bitcast float %4398 to i32
  %4400 = sub nsw i32 2129859010, %4399
  %4401 = bitcast i32 %4400 to float
  %4402 = fmul fast float %4401, %4397
  %4403 = call float @dx.op.unary.f32(i32 7, float %4402)  ; Saturate(value)
  %4404 = fcmp fast olt float %4403, 0x3F70101020000000
  br i1 %4404, label %4543, label %4405

; <label>:4405                                    ; preds = %4367, %4270
  %4406 = phi float [ %4403, %4367 ], [ %4264, %4270 ]
  %4407 = fmul fast float %4406, %4273
  %4408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4409 = extractvalue %dx.types.CBufRet.i32 %4408, 1
  %4410 = extractvalue %dx.types.CBufRet.i32 %4408, 0
  %4411 = add i32 %4410, 0
  %4412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4411, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4413 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4412, %dx.types.Handle %100, float %4362, float %4363, float undef, float undef, i32 0, i32 0, i32 undef, float %4325, float %4326, float undef, float %4329, float %4330, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4414 = extractvalue %dx.types.ResRet.f32 %4413, 0
  %4415 = extractvalue %dx.types.ResRet.f32 %4413, 1
  %4416 = extractvalue %dx.types.ResRet.f32 %4413, 2
  %4417 = extractvalue %dx.types.ResRet.f32 %4413, 3
  %4418 = and i32 %4409, 255
  %4419 = uitofp i32 %4418 to float
  %4420 = lshr i32 %4409, 8
  %4421 = and i32 %4420, 255
  %4422 = uitofp i32 %4421 to float
  %4423 = fmul fast float %4417, %4419
  %4424 = fadd fast float %4423, %4422
  %4425 = fmul fast float %4424, 0x3F70101000000000
  %4426 = fadd fast float %4425, 0xBFB99999A0000000
  %4427 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4428 = fmul fast float %4427, 0x3FF1C71C80000000
  %4429 = call float @dx.op.binary.f32(i32 36, float %4425, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4430 = fsub fast float 1.000000e+00, %4428
  %4431 = call float @dx.op.unary.f32(i32 7, float %4430)  ; Saturate(value)
  %4432 = fmul fast float %4431, %4414
  %4433 = fmul fast float %4431, %4415
  %4434 = fmul fast float %4431, %4416
  %4435 = call float @dx.op.unary.f32(i32 7, float %4432)  ; Saturate(value)
  %4436 = call float @dx.op.unary.f32(i32 7, float %4433)  ; Saturate(value)
  %4437 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4438 = fmul fast float %4428, %4414
  %4439 = fmul fast float %4428, %4415
  %4440 = fmul fast float %4428, %4416
  %4441 = fadd fast float %4438, %4429
  %4442 = fadd fast float %4439, %4429
  %4443 = fadd fast float %4440, %4429
  %4444 = call float @dx.op.unary.f32(i32 7, float %4441)  ; Saturate(value)
  %4445 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4446 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4447 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4448 = extractvalue %dx.types.CBufRet.i32 %4447, 3
  %4449 = extractvalue %dx.types.CBufRet.i32 %4447, 2
  %4450 = add i32 %4449, 0
  %4451 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4450, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4452 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4451, %dx.types.Handle %100, float %4362, float %4363, float undef, float undef, i32 0, i32 0, i32 undef, float %4325, float %4326, float undef, float %4329, float %4330, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4453 = extractvalue %dx.types.ResRet.f32 %4452, 0
  %4454 = extractvalue %dx.types.ResRet.f32 %4452, 1
  %4455 = extractvalue %dx.types.ResRet.f32 %4452, 2
  %4456 = extractvalue %dx.types.ResRet.f32 %4452, 3
  %4457 = and i32 %4448, 255
  %4458 = uitofp i32 %4457 to float
  %4459 = lshr i32 %4448, 8
  %4460 = and i32 %4459, 255
  %4461 = uitofp i32 %4460 to float
  %4462 = lshr i32 %4448, 16
  %4463 = and i32 %4462, 255
  %4464 = uitofp i32 %4463 to float
  %4465 = fmul fast float %4464, 0x3F70101000000000
  %4466 = fmul fast float %4453, %4458
  %4467 = fadd fast float %4466, %4461
  %4468 = fmul fast float %4467, 0x3F70101000000000
  %4469 = fadd fast float %4454, -5.000000e-01
  %4470 = fadd fast float %4456, -5.000000e-01
  %4471 = fmul fast float %4469, %4465
  %4472 = fmul fast float %4470, %4465
  %4473 = fadd fast float %4471, 5.000000e-01
  %4474 = fadd fast float %4472, 5.000000e-01
  %4475 = fmul fast float %4473, 2.000000e+00
  %4476 = fadd fast float %4475, -1.000000e+00
  %4477 = fmul fast float %4474, 2.000000e+00
  %4478 = fadd fast float %4477, -1.000000e+00
  %4479 = fadd fast float %4476, %4478
  %4480 = fmul fast float %4479, 5.000000e-01
  %4481 = fsub fast float %4476, %4478
  %4482 = fmul fast float %4481, 5.000000e-01
  %4483 = call float @dx.op.unary.f32(i32 6, float %4480)  ; FAbs(value)
  %4484 = fsub fast float 1.000000e+00, %4483
  %4485 = call float @dx.op.unary.f32(i32 6, float %4482)  ; FAbs(value)
  %4486 = fsub fast float %4484, %4485
  %4487 = call float @dx.op.dot3.f32(i32 55, float %4480, float %4482, float %4486, float %4480, float %4482, float %4486)  ; Dot3(ax,ay,az,bx,by,bz)
  %4488 = call float @dx.op.unary.f32(i32 25, float %4487)  ; Rsqrt(value)
  %4489 = fmul fast float %4480, %4488
  %4490 = fmul fast float %4482, %4488
  %4491 = select i1 %4318, i32 %4308, i32 %4309
  %4492 = select i1 %4316, i32 %4307, i32 %4491
  %4493 = sitofp i32 %4492 to float
  %4494 = fmul fast float %4486, %4493
  %4495 = fmul fast float %4494, %4488
  %4496 = select i1 %4318, float %4495, float %4490
  %4497 = select i1 %4318, float %4490, float %4495
  %4498 = select i1 %4316, float %4495, float %4489
  %4499 = select i1 %4316, float %4490, float %4496
  %4500 = select i1 %4316, float %4489, float %4497
  %4501 = fsub fast float %4435, %3868
  %4502 = fsub fast float %4436, %3869
  %4503 = fsub fast float %4437, %3870
  %4504 = fmul fast float %4501, %4407
  %4505 = fmul fast float %4502, %4407
  %4506 = fmul fast float %4503, %4407
  %4507 = fadd fast float %4504, %3868
  %4508 = fadd fast float %4505, %3869
  %4509 = fadd fast float %4506, %3870
  %4510 = fsub fast float %4444, %3853
  %4511 = fsub fast float %4445, %3854
  %4512 = fsub fast float %4446, %3855
  %4513 = fmul fast float %4510, %4407
  %4514 = fmul fast float %4511, %4407
  %4515 = fmul fast float %4512, %4407
  %4516 = fadd fast float %4513, %3853
  %4517 = fadd fast float %4514, %3854
  %4518 = fadd fast float %4515, %3855
  %4519 = fadd fast float %4498, %3816
  %4520 = fadd fast float %4499, %3817
  %4521 = fadd fast float %4500, %3818
  %4522 = call float @dx.op.dot3.f32(i32 55, float %4519, float %4520, float %4521, float %4519, float %4520, float %4521)  ; Dot3(ax,ay,az,bx,by,bz)
  %4523 = call float @dx.op.unary.f32(i32 25, float %4522)  ; Rsqrt(value)
  %4524 = fmul fast float %4519, %4523
  %4525 = fmul fast float %4520, %4523
  %4526 = fmul fast float %4521, %4523
  %4527 = fsub fast float %4524, %3816
  %4528 = fsub fast float %4525, %3817
  %4529 = fsub fast float %4526, %3818
  %4530 = fmul fast float %4527, %4407
  %4531 = fmul fast float %4528, %4407
  %4532 = fmul fast float %4529, %4407
  %4533 = fadd fast float %4530, %3816
  %4534 = fadd fast float %4531, %3817
  %4535 = fadd fast float %4532, %3818
  %4536 = call float @dx.op.binary.f32(i32 36, float %3828, float %4455)  ; FMin(a,b)
  %4537 = fsub fast float %4536, %3828
  %4538 = fmul fast float %4537, %4407
  %4539 = fadd fast float %4538, %3828
  %4540 = fsub fast float %4468, %3856
  %4541 = fmul fast float %4540, %4407
  %4542 = fadd fast float %4541, %3856
  br label %4543

; <label>:4543                                    ; preds = %4405, %4367, %4269
  %4544 = phi float [ %4507, %4405 ], [ %3868, %4367 ], [ %3868, %4269 ]
  %4545 = phi float [ %4508, %4405 ], [ %3869, %4367 ], [ %3869, %4269 ]
  %4546 = phi float [ %4509, %4405 ], [ %3870, %4367 ], [ %3870, %4269 ]
  %4547 = phi float [ %4516, %4405 ], [ %3853, %4367 ], [ %3853, %4269 ]
  %4548 = phi float [ %4517, %4405 ], [ %3854, %4367 ], [ %3854, %4269 ]
  %4549 = phi float [ %4518, %4405 ], [ %3855, %4367 ], [ %3855, %4269 ]
  %4550 = phi float [ %4533, %4405 ], [ %3816, %4367 ], [ %3816, %4269 ]
  %4551 = phi float [ %4534, %4405 ], [ %3817, %4367 ], [ %3817, %4269 ]
  %4552 = phi float [ %4535, %4405 ], [ %3818, %4367 ], [ %3818, %4269 ]
  %4553 = phi float [ %4542, %4405 ], [ %3856, %4367 ], [ %3856, %4269 ]
  %4554 = phi float [ %4539, %4405 ], [ %3828, %4367 ], [ %3828, %4269 ]
  br i1 %4267, label %4555, label %4828

; <label>:4555                                    ; preds = %4543
  %4556 = call float @dx.op.unary.f32(i32 23, float %4554)  ; Log(value)
  %4557 = fmul fast float %4556, 4.000000e+00
  %4558 = call float @dx.op.unary.f32(i32 21, float %4557)  ; Exp(value)
  %4559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4560 = extractvalue %dx.types.CBufRet.f32 %4559, 0
  %4561 = fmul fast float %4560, %56
  %4562 = fmul fast float %4560, %57
  %4563 = fmul fast float %4560, %58
  %4564 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4565 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4566 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4567 = call float @dx.op.unary.f32(i32 23, float %4564)  ; Log(value)
  %4568 = call float @dx.op.unary.f32(i32 23, float %4565)  ; Log(value)
  %4569 = call float @dx.op.unary.f32(i32 23, float %4566)  ; Log(value)
  %4570 = fmul fast float %4567, 4.000000e+00
  %4571 = fmul fast float %4568, 4.000000e+00
  %4572 = fmul fast float %4569, 4.000000e+00
  %4573 = call float @dx.op.unary.f32(i32 21, float %4570)  ; Exp(value)
  %4574 = call float @dx.op.unary.f32(i32 21, float %4571)  ; Exp(value)
  %4575 = call float @dx.op.unary.f32(i32 21, float %4572)  ; Exp(value)
  %4576 = fadd fast float %4574, %4573
  %4577 = fadd fast float %4576, %4575
  %4578 = fdiv fast float 1.000000e+00, %4577
  %4579 = fmul fast float %4578, %4573
  %4580 = fcmp fast ogt float %65, 0.000000e+00
  %4581 = fcmp fast ogt float %66, 0.000000e+00
  %4582 = fcmp fast ogt float %67, 0.000000e+00
  %4583 = fcmp fast olt float %65, 0.000000e+00
  %4584 = fcmp fast olt float %66, 0.000000e+00
  %4585 = fcmp fast olt float %67, 0.000000e+00
  %4586 = zext i1 %4580 to i32
  %4587 = zext i1 %4581 to i32
  %4588 = zext i1 %4582 to i32
  %4589 = zext i1 %4583 to i32
  %4590 = zext i1 %4584 to i32
  %4591 = zext i1 %4585 to i32
  %4592 = sub nsw i32 %4586, %4589
  %4593 = sub nsw i32 %4587, %4590
  %4594 = sub nsw i32 %4588, %4591
  %4595 = call float @dx.op.unary.f32(i32 83, float %4561)  ; DerivCoarseX(value)
  %4596 = call float @dx.op.unary.f32(i32 83, float %4562)  ; DerivCoarseX(value)
  %4597 = call float @dx.op.unary.f32(i32 83, float %4563)  ; DerivCoarseX(value)
  %4598 = call float @dx.op.unary.f32(i32 84, float %4561)  ; DerivCoarseY(value)
  %4599 = call float @dx.op.unary.f32(i32 84, float %4562)  ; DerivCoarseY(value)
  %4600 = call float @dx.op.unary.f32(i32 84, float %4563)  ; DerivCoarseY(value)
  %4601 = fcmp fast ole float %261, %4579
  %4602 = fmul fast float %4578, %4576
  %4603 = fcmp fast ole float %261, %4602
  %4604 = select i1 %4603, float %4563, float %4561
  %4605 = select i1 %4603, float %4561, float %4562
  %4606 = select i1 %4601, float %4562, float %4604
  %4607 = select i1 %4601, float %4563, float %4605
  %4608 = select i1 %4603, float %4597, float %4595
  %4609 = select i1 %4603, float %4595, float %4596
  %4610 = select i1 %4601, float %4596, float %4608
  %4611 = select i1 %4601, float %4597, float %4609
  %4612 = select i1 %4603, float %4600, float %4598
  %4613 = select i1 %4603, float %4598, float %4599
  %4614 = select i1 %4601, float %4599, float %4612
  %4615 = select i1 %4601, float %4600, float %4613
  %4616 = call float @dx.op.unary.f32(i32 27, float %4606)  ; Round_ni(value)
  %4617 = call float @dx.op.unary.f32(i32 27, float %4607)  ; Round_ni(value)
  %4618 = fptosi float %4616 to i32
  %4619 = fptosi float %4617 to i32
  %4620 = xor i32 %4619, %4618
  %4621 = sitofp i32 %4620 to float
  %4622 = fptosi float %4621 to i32
  %4623 = sitofp i32 %4622 to float
  %4624 = fmul fast float %4623, 0x3FE3C6EF40000000
  %4625 = frem fast float %4616, 2.560000e+02
  %4626 = frem fast float %4617, 2.560000e+02
  %4627 = fptoui float %4625 to i32
  %4628 = fptoui float %4626 to i32
  %4629 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4627, i32 %4628, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4630 = extractvalue %dx.types.ResRet.f32 %4629, 0
  %4631 = extractvalue %dx.types.ResRet.f32 %4629, 1
  %4632 = extractvalue %dx.types.ResRet.f32 %4629, 2
  %4633 = fadd fast float %4630, %4624
  %4634 = fadd fast float %4631, %4624
  %4635 = fadd fast float %4632, %4624
  %4636 = call float @dx.op.unary.f32(i32 22, float %4633)  ; Frc(value)
  %4637 = call float @dx.op.unary.f32(i32 22, float %4634)  ; Frc(value)
  %4638 = call float @dx.op.unary.f32(i32 22, float %4635)  ; Frc(value)
  %4639 = fmul fast float %4638, 0x401921FB60000000
  %4640 = call float @dx.op.unary.f32(i32 13, float %4639)  ; Sin(value)
  %4641 = call float @dx.op.unary.f32(i32 12, float %4639)  ; Cos(value)
  %4642 = fsub fast float -0.000000e+00, %4641
  %4643 = fmul fast float %4641, %4606
  %4644 = call float @dx.op.tertiary.f32(i32 46, float %4640, float %4607, float %4643)  ; FMad(a,b,c)
  %4645 = fmul fast float %4640, %4606
  %4646 = call float @dx.op.tertiary.f32(i32 46, float %4642, float %4607, float %4645)  ; FMad(a,b,c)
  %4647 = fadd fast float %4644, %4636
  %4648 = fadd fast float %4646, %4637
  %4649 = extractvalue %dx.types.CBufRet.f32 %4559, 3
  %4650 = bitcast float %4649 to i32
  %4651 = icmp eq i32 %4650, 0
  br i1 %4651, label %4690, label %4652

; <label>:4652                                    ; preds = %4555
  %4653 = add i32 %4650, 0
  %4654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4653, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4655 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4654, %dx.types.Handle %101, float %4647, float %4648, float undef, float undef, i32 0, i32 0, i32 undef, float %4610, float %4611, float undef, float %4614, float %4615, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4656 = extractvalue %dx.types.ResRet.f32 %4655, 0
  %4657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4658 = extractvalue %dx.types.CBufRet.f32 %4657, 1
  %4659 = extractvalue %dx.types.CBufRet.f32 %4657, 2
  %4660 = fsub fast float 1.000000e+00, %4265
  %4661 = call float @dx.op.binary.f32(i32 35, float %4660, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4662 = bitcast float %4265 to i32
  %4663 = sitofp i32 %4662 to float
  %4664 = fadd fast float %4663, 0xC1CFBF8940000000
  %4665 = fmul fast float %4659, %4664
  %4666 = fadd fast float %4665, 0x41CFBF8940000000
  %4667 = fptosi float %4666 to i32
  %4668 = bitcast i32 %4667 to float
  %4669 = bitcast float %4661 to i32
  %4670 = sitofp i32 %4669 to float
  %4671 = fadd fast float %4670, 0xC1CFBF8940000000
  %4672 = fmul fast float %4671, %4659
  %4673 = fadd fast float %4672, 0x41CFBF8940000000
  %4674 = fptosi float %4673 to i32
  %4675 = bitcast i32 %4674 to float
  %4676 = fmul fast float %4668, %4658
  %4677 = fmul fast float %4675, %4658
  %4678 = fsub fast float %4661, %4676
  %4679 = fadd fast float %4677, %4661
  %4680 = call float @dx.op.unary.f32(i32 7, float %4678)  ; Saturate(value)
  %4681 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4682 = fsub fast float %4656, %4680
  %4683 = fsub fast float %4681, %4680
  %4684 = bitcast float %4683 to i32
  %4685 = sub nsw i32 2129859010, %4684
  %4686 = bitcast i32 %4685 to float
  %4687 = fmul fast float %4686, %4682
  %4688 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  %4689 = fcmp fast olt float %4688, 0x3F70101020000000
  br i1 %4689, label %4828, label %4690

; <label>:4690                                    ; preds = %4652, %4555
  %4691 = phi float [ %4688, %4652 ], [ %4265, %4555 ]
  %4692 = fmul fast float %4691, %4558
  %4693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4694 = extractvalue %dx.types.CBufRet.i32 %4693, 1
  %4695 = extractvalue %dx.types.CBufRet.i32 %4693, 0
  %4696 = add i32 %4695, 0
  %4697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4698 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4697, %dx.types.Handle %100, float %4647, float %4648, float undef, float undef, i32 0, i32 0, i32 undef, float %4610, float %4611, float undef, float %4614, float %4615, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4699 = extractvalue %dx.types.ResRet.f32 %4698, 0
  %4700 = extractvalue %dx.types.ResRet.f32 %4698, 1
  %4701 = extractvalue %dx.types.ResRet.f32 %4698, 2
  %4702 = extractvalue %dx.types.ResRet.f32 %4698, 3
  %4703 = and i32 %4694, 255
  %4704 = uitofp i32 %4703 to float
  %4705 = lshr i32 %4694, 8
  %4706 = and i32 %4705, 255
  %4707 = uitofp i32 %4706 to float
  %4708 = fmul fast float %4702, %4704
  %4709 = fadd fast float %4708, %4707
  %4710 = fmul fast float %4709, 0x3F70101000000000
  %4711 = fadd fast float %4710, 0xBFB99999A0000000
  %4712 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4713 = fmul fast float %4712, 0x3FF1C71C80000000
  %4714 = call float @dx.op.binary.f32(i32 36, float %4710, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4715 = fsub fast float 1.000000e+00, %4713
  %4716 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4717 = fmul fast float %4716, %4699
  %4718 = fmul fast float %4716, %4700
  %4719 = fmul fast float %4716, %4701
  %4720 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4721 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4722 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4723 = fmul fast float %4713, %4699
  %4724 = fmul fast float %4713, %4700
  %4725 = fmul fast float %4713, %4701
  %4726 = fadd fast float %4723, %4714
  %4727 = fadd fast float %4724, %4714
  %4728 = fadd fast float %4725, %4714
  %4729 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4730 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4731 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4733 = extractvalue %dx.types.CBufRet.i32 %4732, 3
  %4734 = extractvalue %dx.types.CBufRet.i32 %4732, 2
  %4735 = add i32 %4734, 0
  %4736 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4735, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4737 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4736, %dx.types.Handle %100, float %4647, float %4648, float undef, float undef, i32 0, i32 0, i32 undef, float %4610, float %4611, float undef, float %4614, float %4615, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4738 = extractvalue %dx.types.ResRet.f32 %4737, 0
  %4739 = extractvalue %dx.types.ResRet.f32 %4737, 1
  %4740 = extractvalue %dx.types.ResRet.f32 %4737, 2
  %4741 = extractvalue %dx.types.ResRet.f32 %4737, 3
  %4742 = and i32 %4733, 255
  %4743 = uitofp i32 %4742 to float
  %4744 = lshr i32 %4733, 8
  %4745 = and i32 %4744, 255
  %4746 = uitofp i32 %4745 to float
  %4747 = lshr i32 %4733, 16
  %4748 = and i32 %4747, 255
  %4749 = uitofp i32 %4748 to float
  %4750 = fmul fast float %4749, 0x3F70101000000000
  %4751 = fmul fast float %4738, %4743
  %4752 = fadd fast float %4751, %4746
  %4753 = fmul fast float %4752, 0x3F70101000000000
  %4754 = fadd fast float %4739, -5.000000e-01
  %4755 = fadd fast float %4741, -5.000000e-01
  %4756 = fmul fast float %4754, %4750
  %4757 = fmul fast float %4755, %4750
  %4758 = fadd fast float %4756, 5.000000e-01
  %4759 = fadd fast float %4757, 5.000000e-01
  %4760 = fmul fast float %4758, 2.000000e+00
  %4761 = fadd fast float %4760, -1.000000e+00
  %4762 = fmul fast float %4759, 2.000000e+00
  %4763 = fadd fast float %4762, -1.000000e+00
  %4764 = fadd fast float %4761, %4763
  %4765 = fmul fast float %4764, 5.000000e-01
  %4766 = fsub fast float %4761, %4763
  %4767 = fmul fast float %4766, 5.000000e-01
  %4768 = call float @dx.op.unary.f32(i32 6, float %4765)  ; FAbs(value)
  %4769 = fsub fast float 1.000000e+00, %4768
  %4770 = call float @dx.op.unary.f32(i32 6, float %4767)  ; FAbs(value)
  %4771 = fsub fast float %4769, %4770
  %4772 = call float @dx.op.dot3.f32(i32 55, float %4765, float %4767, float %4771, float %4765, float %4767, float %4771)  ; Dot3(ax,ay,az,bx,by,bz)
  %4773 = call float @dx.op.unary.f32(i32 25, float %4772)  ; Rsqrt(value)
  %4774 = fmul fast float %4765, %4773
  %4775 = fmul fast float %4767, %4773
  %4776 = select i1 %4603, i32 %4593, i32 %4594
  %4777 = select i1 %4601, i32 %4592, i32 %4776
  %4778 = sitofp i32 %4777 to float
  %4779 = fmul fast float %4771, %4778
  %4780 = fmul fast float %4779, %4773
  %4781 = select i1 %4603, float %4780, float %4775
  %4782 = select i1 %4603, float %4775, float %4780
  %4783 = select i1 %4601, float %4780, float %4774
  %4784 = select i1 %4601, float %4775, float %4781
  %4785 = select i1 %4601, float %4774, float %4782
  %4786 = fsub fast float %4720, %4544
  %4787 = fsub fast float %4721, %4545
  %4788 = fsub fast float %4722, %4546
  %4789 = fmul fast float %4786, %4692
  %4790 = fmul fast float %4787, %4692
  %4791 = fmul fast float %4788, %4692
  %4792 = fadd fast float %4789, %4544
  %4793 = fadd fast float %4790, %4545
  %4794 = fadd fast float %4791, %4546
  %4795 = fsub fast float %4729, %4547
  %4796 = fsub fast float %4730, %4548
  %4797 = fsub fast float %4731, %4549
  %4798 = fmul fast float %4795, %4692
  %4799 = fmul fast float %4796, %4692
  %4800 = fmul fast float %4797, %4692
  %4801 = fadd fast float %4798, %4547
  %4802 = fadd fast float %4799, %4548
  %4803 = fadd fast float %4800, %4549
  %4804 = fadd fast float %4783, %4550
  %4805 = fadd fast float %4784, %4551
  %4806 = fadd fast float %4785, %4552
  %4807 = call float @dx.op.dot3.f32(i32 55, float %4804, float %4805, float %4806, float %4804, float %4805, float %4806)  ; Dot3(ax,ay,az,bx,by,bz)
  %4808 = call float @dx.op.unary.f32(i32 25, float %4807)  ; Rsqrt(value)
  %4809 = fmul fast float %4804, %4808
  %4810 = fmul fast float %4805, %4808
  %4811 = fmul fast float %4806, %4808
  %4812 = fsub fast float %4809, %4550
  %4813 = fsub fast float %4810, %4551
  %4814 = fsub fast float %4811, %4552
  %4815 = fmul fast float %4812, %4692
  %4816 = fmul fast float %4813, %4692
  %4817 = fmul fast float %4814, %4692
  %4818 = fadd fast float %4815, %4550
  %4819 = fadd fast float %4816, %4551
  %4820 = fadd fast float %4817, %4552
  %4821 = call float @dx.op.binary.f32(i32 36, float %4554, float %4740)  ; FMin(a,b)
  %4822 = fsub fast float %4821, %4554
  %4823 = fmul fast float %4822, %4692
  %4824 = fadd fast float %4823, %4554
  %4825 = fsub fast float %4753, %4553
  %4826 = fmul fast float %4825, %4692
  %4827 = fadd fast float %4826, %4553
  br label %4828

; <label>:4828                                    ; preds = %4690, %4652, %4543, %4259
  %4829 = phi float [ %4792, %4690 ], [ %4544, %4652 ], [ %4544, %4543 ], [ %3868, %4259 ]
  %4830 = phi float [ %4793, %4690 ], [ %4545, %4652 ], [ %4545, %4543 ], [ %3869, %4259 ]
  %4831 = phi float [ %4794, %4690 ], [ %4546, %4652 ], [ %4546, %4543 ], [ %3870, %4259 ]
  %4832 = phi float [ %4801, %4690 ], [ %4547, %4652 ], [ %4547, %4543 ], [ %3853, %4259 ]
  %4833 = phi float [ %4802, %4690 ], [ %4548, %4652 ], [ %4548, %4543 ], [ %3854, %4259 ]
  %4834 = phi float [ %4803, %4690 ], [ %4549, %4652 ], [ %4549, %4543 ], [ %3855, %4259 ]
  %4835 = phi float [ %4818, %4690 ], [ %4550, %4652 ], [ %4550, %4543 ], [ %3816, %4259 ]
  %4836 = phi float [ %4819, %4690 ], [ %4551, %4652 ], [ %4551, %4543 ], [ %3817, %4259 ]
  %4837 = phi float [ %4820, %4690 ], [ %4552, %4652 ], [ %4552, %4543 ], [ %3818, %4259 ]
  %4838 = phi float [ %4827, %4690 ], [ %4553, %4652 ], [ %4553, %4543 ], [ %3856, %4259 ]
  %4839 = phi float [ %4824, %4690 ], [ %4554, %4652 ], [ %4554, %4543 ], [ %3828, %4259 ]
  %4840 = fcmp fast une float %4263, 0.000000e+00
  %4841 = call float @dx.op.dot3.f32(i32 55, float %191, float %192, float %193, float %191, float %192, float %193)  ; Dot3(ax,ay,az,bx,by,bz)
  %4842 = call float @dx.op.unary.f32(i32 25, float %4841)  ; Rsqrt(value)
  br i1 %4840, label %4850, label %4843

; <label>:4843                                    ; preds = %4828
  %4844 = fmul fast float %4842, %191
  %4845 = fmul fast float %4842, %192
  %4846 = fmul fast float %4842, %193
  %4847 = fsub fast float -0.000000e+00, %4844
  %4848 = fsub fast float -0.000000e+00, %4845
  %4849 = fsub fast float -0.000000e+00, %4846
  br label %5017

; <label>:4850                                    ; preds = %4828
  %4851 = fmul fast float %191, %4842
  %4852 = fsub fast float -0.000000e+00, %4851
  %4853 = fmul fast float %192, %4842
  %4854 = fsub fast float -0.000000e+00, %4853
  %4855 = fmul fast float %193, %4842
  %4856 = fsub fast float -0.000000e+00, %4855
  %4857 = call float @dx.op.dot3.f32(i32 55, float %4852, float %4854, float %4856, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4858 = fmul fast float %4263, 2.500000e+00
  %4859 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4860 = fmul fast float %4263, 0x4013FFFFE0000000
  %4861 = fadd fast float %4860, 0xBFFFFFFFE0000000
  %4862 = call float @dx.op.unary.f32(i32 7, float %4861)  ; Saturate(value)
  %4863 = fmul fast float %4263, 0x4004000020000000
  %4864 = fadd fast float %4863, 0xBFF8000040000000
  %4865 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4866 = fmul fast float %3835, 1.000000e+01
  %4867 = call float @dx.op.unary.f32(i32 7, float %4866)  ; Saturate(value)
  %4868 = fmul fast float %4867, 2.000000e+00
  %4869 = fsub fast float 3.000000e+00, %4868
  %4870 = fmul fast float %4867, %4867
  %4871 = fmul fast float %4870, %4869
  %4872 = fsub fast float 1.000000e+00, %4871
  %4873 = fsub fast float 0x3FE3333340000000, %4838
  %4874 = fmul fast float %4873, 0x400AAAAAA0000000
  %4875 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4876 = fmul fast float %4872, %4875
  %4877 = fmul fast float %4829, 0x3FEA2B8620000000
  %4878 = fmul fast float %4830, 0x3FEA2B8620000000
  %4879 = fmul fast float %4831, 0x3FEA2B8620000000
  %4880 = fadd fast float %4877, 0x3FC81DFBA0000000
  %4881 = fmul fast float %4880, %4829
  %4882 = fadd fast float %4881, 0x3F910E6020000000
  %4883 = fadd fast float %4878, 0x3FC81DFBA0000000
  %4884 = fmul fast float %4883, %4830
  %4885 = fadd fast float %4884, 0x3F910E6020000000
  %4886 = fadd fast float %4879, 0x3FC81DFBA0000000
  %4887 = fmul fast float %4886, %4831
  %4888 = fadd fast float %4887, 0x3F910E6020000000
  %4889 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4890 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4891 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4892 = fsub fast float %4889, %4829
  %4893 = fsub fast float %4890, %4830
  %4894 = fsub fast float %4891, %4831
  %4895 = fmul fast float %4892, %4859
  %4896 = fmul fast float %4895, %4876
  %4897 = fmul fast float %4893, %4859
  %4898 = fmul fast float %4897, %4876
  %4899 = fmul fast float %4894, %4859
  %4900 = fmul fast float %4899, %4876
  %4901 = fadd fast float %4896, %4829
  %4902 = fadd fast float %4898, %4830
  %4903 = fadd fast float %4900, %4831
  %4904 = fmul fast float %4839, %4839
  %4905 = fmul fast float %4904, %4904
  %4906 = fadd fast float %4862, 1.000000e+00
  %4907 = fsub fast float %4906, %4876
  %4908 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4909 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4910 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4911 = fsub fast float 1.000000e+00, %4905
  %4912 = call float @dx.op.binary.f32(i32 36, float %4908, float %4911)  ; FMin(a,b)
  %4913 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4914 = call float @dx.op.binary.f32(i32 35, float %4912, float %4913)  ; FMax(a,b)
  %4915 = fadd fast float %4910, 0xBFE4CCCCC0000000
  %4916 = fmul fast float %4915, 0x4006DB6DA0000000
  %4917 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4918 = fmul fast float %4917, 2.000000e+00
  %4919 = fsub fast float 3.000000e+00, %4918
  %4920 = bitcast float %4832 to i32
  %4921 = ashr i32 %4920, 1
  %4922 = add nsw i32 %4921, 532487669
  %4923 = bitcast i32 %4922 to float
  %4924 = fsub fast float 1.000000e+00, %4923
  %4925 = bitcast float %4924 to i32
  %4926 = sub nsw i32 2129859010, %4925
  %4927 = bitcast i32 %4926 to float
  %4928 = fmul fast float %4927, 2.000000e+00
  %4929 = bitcast float %4833 to i32
  %4930 = ashr i32 %4929, 1
  %4931 = add nsw i32 %4930, 532487669
  %4932 = bitcast i32 %4931 to float
  %4933 = fsub fast float 1.000000e+00, %4932
  %4934 = bitcast float %4933 to i32
  %4935 = sub nsw i32 2129859010, %4934
  %4936 = bitcast i32 %4935 to float
  %4937 = fmul fast float %4936, 2.000000e+00
  %4938 = bitcast float %4834 to i32
  %4939 = ashr i32 %4938, 1
  %4940 = add nsw i32 %4939, 532487669
  %4941 = bitcast i32 %4940 to float
  %4942 = fsub fast float 1.000000e+00, %4941
  %4943 = bitcast float %4942 to i32
  %4944 = sub nsw i32 2129859010, %4943
  %4945 = bitcast i32 %4944 to float
  %4946 = fmul fast float %4945, 2.000000e+00
  %4947 = fsub fast float 0x4002A9FBE0000000, %4928
  %4948 = fadd fast float %4928, 0x3FD54FDF00000000
  %4949 = bitcast float %4948 to i32
  %4950 = sub nsw i32 2129859010, %4949
  %4951 = bitcast i32 %4950 to float
  %4952 = fmul fast float %4951, %4947
  %4953 = fmul fast float %4952, %4952
  %4954 = fsub fast float 0x4002A9FBE0000000, %4937
  %4955 = fadd fast float %4937, 0x3FD54FDF00000000
  %4956 = bitcast float %4955 to i32
  %4957 = sub nsw i32 2129859010, %4956
  %4958 = bitcast i32 %4957 to float
  %4959 = fmul fast float %4958, %4954
  %4960 = fmul fast float %4959, %4959
  %4961 = fsub fast float 0x4002A9FBE0000000, %4946
  %4962 = fadd fast float %4946, 0x3FD54FDF00000000
  %4963 = bitcast float %4962 to i32
  %4964 = sub nsw i32 2129859010, %4963
  %4965 = bitcast i32 %4964 to float
  %4966 = fmul fast float %4965, %4961
  %4967 = fmul fast float %4966, %4966
  %4968 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4953)  ; FMax(a,b)
  %4969 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4960)  ; FMax(a,b)
  %4970 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4967)  ; FMax(a,b)
  %4971 = fsub fast float 1.000000e+00, %4857
  %4972 = fadd fast float %4971, %4872
  %4973 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4974 = fsub fast float 1.000000e+00, %4244
  %4975 = fmul fast float %4914, %4974
  %4976 = fmul fast float %4917, %4917
  %4977 = fmul fast float %4976, %4975
  %4978 = fmul fast float %4977, %4919
  %4979 = fmul fast float %4974, 0xBFE99999A0000000
  %4980 = fmul fast float %4979, %4859
  %4981 = fmul fast float %4980, %4876
  %4982 = fadd fast float %4981, 1.000000e+00
  %4983 = fadd fast float %4838, -1.000000e+00
  %4984 = fmul fast float %4982, %4983
  %4985 = fadd fast float %4984, 1.000000e+00
  %4986 = fsub fast float %4968, %4832
  %4987 = fsub fast float %4969, %4833
  %4988 = fsub fast float %4970, %4834
  %4989 = fmul fast float %4978, %4986
  %4990 = fmul fast float %4978, %4987
  %4991 = fmul fast float %4978, %4988
  %4992 = fadd fast float %4989, %4832
  %4993 = fadd fast float %4990, %4833
  %4994 = fadd fast float %4991, %4834
  %4995 = fsub fast float %111, %4835
  %4996 = fsub fast float %112, %4836
  %4997 = fsub fast float %113, %4837
  %4998 = fmul fast float %4978, %4995
  %4999 = fmul fast float %4978, %4996
  %5000 = fmul fast float %4978, %4997
  %5001 = fadd fast float %4998, %4835
  %5002 = fadd fast float %4999, %4836
  %5003 = fadd fast float %5000, %4837
  %5004 = fmul fast float %4978, %4973
  %5005 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %5006 = fsub fast float 1.000000e+00, %5005
  %5007 = fmul fast float %5004, %5006
  %5008 = fadd fast float %5007, %5005
  %5009 = fsub fast float 1.000000e+00, %4839
  %5010 = fmul fast float %4978, %5009
  %5011 = fadd fast float %5010, %4839
  %5012 = call float @dx.op.dot3.f32(i32 55, float %5001, float %5002, float %5003, float %5001, float %5002, float %5003)  ; Dot3(ax,ay,az,bx,by,bz)
  %5013 = call float @dx.op.unary.f32(i32 25, float %5012)  ; Rsqrt(value)
  %5014 = fmul fast float %5001, %5013
  %5015 = fmul fast float %5002, %5013
  %5016 = fmul fast float %5003, %5013
  br label %5017

; <label>:5017                                    ; preds = %4850, %4843
  %5018 = phi float [ %4849, %4843 ], [ %4856, %4850 ]
  %5019 = phi float [ %4848, %4843 ], [ %4854, %4850 ]
  %5020 = phi float [ %4847, %4843 ], [ %4852, %4850 ]
  %5021 = phi float [ %4846, %4843 ], [ %4855, %4850 ]
  %5022 = phi float [ %4845, %4843 ], [ %4853, %4850 ]
  %5023 = phi float [ %4844, %4843 ], [ %4851, %4850 ]
  %5024 = phi float [ %4829, %4843 ], [ %4901, %4850 ]
  %5025 = phi float [ %4830, %4843 ], [ %4902, %4850 ]
  %5026 = phi float [ %4831, %4843 ], [ %4903, %4850 ]
  %5027 = phi float [ %4832, %4843 ], [ %4992, %4850 ]
  %5028 = phi float [ %4833, %4843 ], [ %4993, %4850 ]
  %5029 = phi float [ %4834, %4843 ], [ %4994, %4850 ]
  %5030 = phi float [ %4835, %4843 ], [ %5014, %4850 ]
  %5031 = phi float [ %4836, %4843 ], [ %5015, %4850 ]
  %5032 = phi float [ %4837, %4843 ], [ %5016, %4850 ]
  %5033 = phi float [ %4838, %4843 ], [ %5008, %4850 ]
  %5034 = phi float [ %4839, %4843 ], [ %5011, %4850 ]
  %5035 = fsub fast float -0.000000e+00, %193
  %5036 = select i1 %250, float 0.000000e+00, float %5029
  %5037 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5032, float %5020, float %5019, float %5018)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  %5039 = call float @dx.op.dot3.f32(i32 55, float %5023, float %5022, float %5021, float %5030, float %5031, float %5032)  ; Dot3(ax,ay,az,bx,by,bz)
  %5040 = fmul fast float %5039, 2.000000e+00
  %5041 = fmul fast float %5040, %5030
  %5042 = fmul fast float %5040, %5031
  %5043 = fmul fast float %5040, %5032
  %5044 = fsub fast float %5023, %5041
  %5045 = fsub fast float %5022, %5042
  %5046 = fsub fast float %5021, %5043
  %5047 = call float @dx.op.binary.f32(i32 36, float %5034, float 1.000000e+00)  ; FMin(a,b)
  %5048 = fsub fast float 1.000000e+00, %5034
  %5049 = bitcast float %5048 to i32
  %5050 = sub nsw i32 2129859010, %5049
  %5051 = bitcast i32 %5050 to float
  %5052 = fsub fast float 1.000000e+00, %75
  %5053 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5054 = call float @dx.op.binary.f32(i32 35, float %5053, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5055 = fdiv fast float %5052, %5054
  %5056 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5032, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5057 = call float @dx.op.unary.f32(i32 7, float %5056)  ; Saturate(value)
  %5058 = fmul fast float %5057, 5.000000e-01
  %5059 = fadd fast float %5058, 5.000000e-01
  %5060 = fmul fast float %5059, %75
  %5061 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5032, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5062 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5063 = fmul fast float %5062, %5055
  %5064 = fadd fast float %5060, %5063
  %5065 = fsub fast float 5.000000e-01, %5058
  %5066 = fmul fast float %5065, %5024
  %5067 = fmul fast float %5065, %5025
  %5068 = fmul fast float %5065, %5026
  %5069 = fadd fast float %5064, %5066
  %5070 = fadd fast float %5064, %5067
  %5071 = fadd fast float %5064, %5068
  %5072 = call float @dx.op.dot3.f32(i32 55, float %5044, float %5045, float %5046, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5073 = call float @dx.op.unary.f32(i32 7, float %5072)  ; Saturate(value)
  %5074 = fmul fast float %5073, 5.000000e-01
  %5075 = fadd fast float %5074, 5.000000e-01
  %5076 = fmul fast float %5075, %75
  %5077 = call float @dx.op.dot3.f32(i32 55, float %5044, float %5045, float %5046, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5078 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5079 = fmul fast float %5078, %5055
  %5080 = fadd fast float %5076, %5079
  %5081 = fsub fast float 5.000000e-01, %5074
  %5082 = fmul fast float %5081, %5024
  %5083 = fmul fast float %5081, %5025
  %5084 = fmul fast float %5081, %5026
  %5085 = fadd fast float %5080, %5082
  %5086 = fadd fast float %5080, %5083
  %5087 = fadd fast float %5080, %5084
  %5088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5089 = extractvalue %dx.types.CBufRet.f32 %5088, 0
  %5090 = call float @dx.op.binary.f32(i32 36, float %5024, float %5089)  ; FMin(a,b)
  %5091 = fsub fast float 1.000000e+00, %5047
  %5092 = fmul fast float %5090, %5091
  %5093 = fsub fast float 1.000000e+00, %5092
  %5094 = bitcast float %5093 to i32
  %5095 = sub nsw i32 2129859010, %5094
  %5096 = bitcast i32 %5095 to float
  %5097 = call float @dx.op.binary.f32(i32 36, float %5025, float %5089)  ; FMin(a,b)
  %5098 = fmul fast float %5097, %5091
  %5099 = fsub fast float 1.000000e+00, %5098
  %5100 = bitcast float %5099 to i32
  %5101 = sub nsw i32 2129859010, %5100
  %5102 = bitcast i32 %5101 to float
  %5103 = call float @dx.op.binary.f32(i32 36, float %5026, float %5089)  ; FMin(a,b)
  %5104 = fmul fast float %5103, %5091
  %5105 = fsub fast float 1.000000e+00, %5104
  %5106 = bitcast float %5105 to i32
  %5107 = sub nsw i32 2129859010, %5106
  %5108 = bitcast i32 %5107 to float
  %5109 = fmul fast float %5047, %76
  %5110 = fmul fast float %5109, %5069
  %5111 = fmul fast float %5110, %5096
  %5112 = fmul fast float %5047, %77
  %5113 = fmul fast float %5112, %5070
  %5114 = fmul fast float %5113, %5102
  %5115 = fmul fast float %5047, %78
  %5116 = fmul fast float %5115, %5071
  %5117 = fmul fast float %5116, %5108
  %5118 = call float @dx.op.binary.f32(i32 36, float %5027, float %5089)  ; FMin(a,b)
  %5119 = fmul fast float %5118, %5091
  %5120 = fsub fast float 1.000000e+00, %5119
  %5121 = bitcast float %5120 to i32
  %5122 = sub nsw i32 2129859010, %5121
  %5123 = bitcast i32 %5122 to float
  %5124 = call float @dx.op.binary.f32(i32 36, float %5028, float %5089)  ; FMin(a,b)
  %5125 = fmul fast float %5124, %5091
  %5126 = fsub fast float 1.000000e+00, %5125
  %5127 = bitcast float %5126 to i32
  %5128 = sub nsw i32 2129859010, %5127
  %5129 = bitcast i32 %5128 to float
  %5130 = call float @dx.op.binary.f32(i32 36, float %5036, float %5089)  ; FMin(a,b)
  %5131 = fmul fast float %5130, %5091
  %5132 = fsub fast float 1.000000e+00, %5131
  %5133 = bitcast float %5132 to i32
  %5134 = sub nsw i32 2129859010, %5133
  %5135 = bitcast i32 %5134 to float
  %5136 = fmul fast float %5109, %5085
  %5137 = fmul fast float %5136, %5123
  %5138 = fmul fast float %5112, %5086
  %5139 = fmul fast float %5138, %5129
  %5140 = fmul fast float %5115, %5087
  %5141 = fmul fast float %5140, %5135
  %5142 = call float @dx.op.dot3.f32(i32 55, float %5111, float %5114, float %5117, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5143 = select i1 %250, float 0.000000e+00, float %5111
  %5144 = select i1 %250, float %5142, float %5114
  %5145 = select i1 %250, float 0.000000e+00, float %5117
  %5146 = call float @dx.op.dot3.f32(i32 55, float %5137, float %5139, float %5141, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5147 = select i1 %250, float 0.000000e+00, float %5137
  %5148 = select i1 %250, float %5146, float %5139
  %5149 = select i1 %250, float 0.000000e+00, float %5141
  %5150 = fmul fast float %5038, 9.843750e-01
  %5151 = fmul fast float %5033, 9.843750e-01
  %5152 = fadd fast float %5150, 7.812500e-03
  %5153 = fadd fast float %5151, 7.812500e-03
  %5154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %5152, float %5153, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5155 = extractvalue %dx.types.ResRet.f32 %5154, 2
  %5156 = extractvalue %dx.types.ResRet.f32 %5154, 3
  %5157 = fmul fast float %5155, %5027
  %5158 = fmul fast float %5155, %5028
  %5159 = fmul fast float %5155, %5036
  %5160 = fadd fast float %5157, %5156
  %5161 = fadd fast float %5158, %5156
  %5162 = fadd fast float %5159, %5156
  %5163 = fcmp fast ogt float %3829, 0.000000e+00
  br i1 %5163, label %5164, label %5190

; <label>:5164                                    ; preds = %5017
  %5165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3829, float %5038, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5166 = extractvalue %dx.types.ResRet.f32 %5165, 0
  %5167 = extractvalue %dx.types.ResRet.f32 %5165, 1
  %5168 = extractvalue %dx.types.ResRet.f32 %5165, 2
  %5169 = fadd fast float %5166, -5.000000e-01
  %5170 = fadd fast float %5167, -5.000000e-01
  %5171 = fadd fast float %5168, -5.000000e-01
  %5172 = fsub fast float 1.000000e+00, %5027
  %5173 = fsub fast float 1.000000e+00, %5028
  %5174 = fsub fast float 1.000000e+00, %5036
  %5175 = fmul fast float %5027, 4.000000e+00
  %5176 = fmul fast float %5175, %5172
  %5177 = fmul fast float %5176, %5169
  %5178 = fmul fast float %5028, 4.000000e+00
  %5179 = fmul fast float %5178, %5173
  %5180 = fmul fast float %5179, %5170
  %5181 = fmul fast float %5036, 4.000000e+00
  %5182 = fmul fast float %5181, %5174
  %5183 = fmul fast float %5182, %5171
  %5184 = fadd fast float %5177, %5160
  %5185 = fadd fast float %5180, %5161
  %5186 = fadd fast float %5183, %5162
  %5187 = call float @dx.op.unary.f32(i32 7, float %5184)  ; Saturate(value)
  %5188 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5189 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  br label %5190

; <label>:5190                                    ; preds = %5164, %5017
  %5191 = phi float [ %5187, %5164 ], [ %5160, %5017 ]
  %5192 = phi float [ %5188, %5164 ], [ %5161, %5017 ]
  %5193 = phi float [ %5189, %5164 ], [ %5162, %5017 ]
  %5194 = call float @dx.op.binary.f32(i32 35, float %5192, float %5193)  ; FMax(a,b)
  %5195 = call float @dx.op.binary.f32(i32 35, float %5191, float %5194)  ; FMax(a,b)
  %5196 = fsub fast float 1.000000e+00, %5195
  %5197 = fmul fast float %5196, %5143
  %5198 = fmul fast float %5196, %5144
  %5199 = fmul fast float %5196, %5145
  %5200 = call float @dx.op.dot3.f32(i32 55, float %5024, float %5025, float %5026, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5201 = fcmp fast ogt float %5200, 0x3E7FF19E20000000
  %5202 = fdiv fast float 1.000000e+00, %5200
  %5203 = select i1 %5201, float %5202, float 0.000000e+00
  %5204 = fmul fast float %5203, %5024
  %5205 = fmul fast float %5203, %5025
  %5206 = fmul fast float %5203, %5026
  %5207 = fadd fast float %5204, -1.000000e+00
  %5208 = fadd fast float %5205, -1.000000e+00
  %5209 = fadd fast float %5206, -1.000000e+00
  %5210 = fmul fast float %5207, 5.000000e-01
  %5211 = fmul fast float %5208, 5.000000e-01
  %5212 = fmul fast float %5209, 5.000000e-01
  %5213 = fadd fast float %5210, 1.000000e+00
  %5214 = fadd fast float %5211, 1.000000e+00
  %5215 = fadd fast float %5212, 1.000000e+00
  %5216 = fmul fast float %5191, %5147
  %5217 = fmul fast float %5192, %5148
  %5218 = fmul fast float %5193, %5149
  %5219 = fsub fast float 1.000000e+00, %5038
  %5220 = bitcast float %5219 to i32
  %5221 = sitofp i32 %5220 to float
  %5222 = fmul fast float %5221, 5.000000e+00
  %5223 = fadd fast float %5222, 0xC1EFBF8940000000
  %5224 = fptosi float %5223 to i32
  %5225 = bitcast i32 %5224 to float
  %5226 = fmul fast float %5225, %3830
  %5227 = fmul fast float %5143, %5226
  %5228 = fmul fast float %5227, %5196
  %5229 = fmul fast float %5228, %5213
  %5230 = fmul fast float %5144, %5226
  %5231 = fmul fast float %5230, %5196
  %5232 = fmul fast float %5231, %5214
  %5233 = fmul fast float %5145, %5226
  %5234 = fmul fast float %5233, %5196
  %5235 = fmul fast float %5234, %5215
  %5236 = fmul fast float %5197, %3826
  %5237 = fmul fast float %5198, %3826
  %5238 = fmul fast float %5199, %3826
  %5239 = fadd fast float %5216, %3822
  %5240 = fadd fast float %5239, %5229
  %5241 = fmul fast float %5240, %3826
  %5242 = fadd fast float %5217, %3823
  %5243 = fadd fast float %5242, %5232
  %5244 = fmul fast float %5243, %3826
  %5245 = fadd fast float %5218, %3824
  %5246 = fadd fast float %5245, %5235
  %5247 = fmul fast float %5246, %3826
  %5248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5249 = extractvalue %dx.types.CBufRet.f32 %5248, 3
  %5250 = fcmp fast oeq float %5249, 0.000000e+00
  br i1 %5250, label %6335, label %5251

; <label>:5251                                    ; preds = %5190
  %5252 = extractvalue %dx.types.CBufRet.f32 %5248, 0
  %5253 = extractvalue %dx.types.CBufRet.f32 %5248, 1
  %5254 = extractvalue %dx.types.CBufRet.f32 %5248, 2
  %5255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5256 = extractvalue %dx.types.CBufRet.f32 %5255, 0
  %5257 = extractvalue %dx.types.CBufRet.f32 %5255, 1
  %5258 = extractvalue %dx.types.CBufRet.f32 %5255, 2
  %5259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5260 = extractvalue %dx.types.CBufRet.f32 %5259, 0
  %5261 = extractvalue %dx.types.CBufRet.f32 %5259, 1
  %5262 = call float @dx.op.dot3.f32(i32 55, float %5256, float %5257, float %5258, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5263 = select i1 %250, float %5260, float %5256
  %5264 = select i1 %250, float %5262, float %5257
  %5265 = select i1 %250, float %5261, float %5258
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 2
  %5268 = fmul fast float %5267, %111
  %5269 = fmul fast float %5267, %112
  %5270 = fmul fast float %5267, %113
  %5271 = fadd fast float %5268, %191
  %5272 = fadd fast float %5269, %192
  %5273 = fadd fast float %5270, %193
  %5274 = fcmp fast olt float %5249, 0.000000e+00
  br i1 %5274, label %5914, label %5275

; <label>:5275                                    ; preds = %5251
  %5276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5277 = extractvalue %dx.types.CBufRet.f32 %5276, 0
  %5278 = extractvalue %dx.types.CBufRet.f32 %5276, 1
  %5279 = extractvalue %dx.types.CBufRet.f32 %5276, 2
  %5280 = extractvalue %dx.types.CBufRet.f32 %5276, 3
  %5281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5282 = extractvalue %dx.types.CBufRet.f32 %5281, 0
  %5283 = extractvalue %dx.types.CBufRet.f32 %5281, 1
  %5284 = extractvalue %dx.types.CBufRet.f32 %5281, 2
  %5285 = extractvalue %dx.types.CBufRet.f32 %5281, 3
  %5286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5287 = extractvalue %dx.types.CBufRet.f32 %5286, 0
  %5288 = extractvalue %dx.types.CBufRet.f32 %5286, 1
  %5289 = extractvalue %dx.types.CBufRet.f32 %5286, 2
  %5290 = extractvalue %dx.types.CBufRet.f32 %5286, 3
  %5291 = fmul fast float %5277, %5271
  %5292 = call float @dx.op.tertiary.f32(i32 46, float %5272, float %5278, float %5291)  ; FMad(a,b,c)
  %5293 = call float @dx.op.tertiary.f32(i32 46, float %5273, float %5279, float %5292)  ; FMad(a,b,c)
  %5294 = fadd fast float %5293, %5280
  %5295 = fmul fast float %5282, %5271
  %5296 = call float @dx.op.tertiary.f32(i32 46, float %5272, float %5283, float %5295)  ; FMad(a,b,c)
  %5297 = call float @dx.op.tertiary.f32(i32 46, float %5273, float %5284, float %5296)  ; FMad(a,b,c)
  %5298 = fadd fast float %5297, %5285
  %5299 = fmul fast float %5287, %5271
  %5300 = call float @dx.op.tertiary.f32(i32 46, float %5272, float %5288, float %5299)  ; FMad(a,b,c)
  %5301 = call float @dx.op.tertiary.f32(i32 46, float %5273, float %5289, float %5300)  ; FMad(a,b,c)
  %5302 = fadd fast float %5301, %5290
  %5303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5304 = extractvalue %dx.types.CBufRet.f32 %5303, 0
  %5305 = fcmp fast une float %5304, 0.000000e+00
  %5306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5307 = extractvalue %dx.types.CBufRet.f32 %5306, 0
  %5308 = extractvalue %dx.types.CBufRet.f32 %5306, 1
  %5309 = extractvalue %dx.types.CBufRet.f32 %5306, 3
  %5310 = fmul fast float %5309, %5294
  %5311 = fmul fast float %5309, %5298
  %5312 = fadd fast float %5310, %5307
  %5313 = fadd fast float %5311, %5308
  %5314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5315 = extractvalue %dx.types.CBufRet.f32 %5314, 0
  %5316 = extractvalue %dx.types.CBufRet.f32 %5314, 1
  %5317 = extractvalue %dx.types.CBufRet.f32 %5314, 3
  %5318 = fmul fast float %5317, %5294
  %5319 = fmul fast float %5317, %5298
  %5320 = fadd fast float %5318, %5315
  %5321 = fadd fast float %5319, %5316
  %5322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5323 = extractvalue %dx.types.CBufRet.f32 %5322, 1
  %5324 = fsub fast float %5323, %5302
  %5325 = extractvalue %dx.types.CBufRet.f32 %5322, 2
  %5326 = fmul fast float %5324, %5325
  %5327 = fsub fast float 1.000000e+00, %5326
  %5328 = call float @dx.op.unary.f32(i32 7, float %5327)  ; Saturate(value)
  br i1 %5305, label %5389, label %5329

; <label>:5329                                    ; preds = %5275
  %5330 = extractvalue %dx.types.CBufRet.f32 %5314, 2
  %5331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5332 = extractvalue %dx.types.CBufRet.f32 %5331, 2
  %5333 = fadd fast float %5332, %5330
  %5334 = fcmp fast ogt float %5333, 0.000000e+00
  br i1 %5334, label %5335, label %5359

; <label>:5335                                    ; preds = %5329
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 0
  %5338 = extractvalue %dx.types.CBufRet.f32 %5336, 1
  %5339 = fsub fast float %5320, %5337
  %5340 = fsub fast float %5321, %5338
  %5341 = fcmp fast olt float %5339, 0.000000e+00
  %5342 = fcmp fast olt float %5340, 0.000000e+00
  %5343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5344 = extractvalue %dx.types.CBufRet.f32 %5343, 0
  %5345 = extractvalue %dx.types.CBufRet.f32 %5343, 1
  %5346 = extractvalue %dx.types.CBufRet.f32 %5343, 2
  %5347 = extractvalue %dx.types.CBufRet.f32 %5343, 3
  %5348 = select i1 %5341, float %5344, float %5346
  %5349 = select i1 %5342, float %5345, float %5347
  %5350 = fmul fast float %5348, %5339
  %5351 = fmul fast float %5349, %5340
  %5352 = call float @dx.op.unary.f32(i32 6, float %5350)  ; FAbs(value)
  %5353 = call float @dx.op.unary.f32(i32 6, float %5351)  ; FAbs(value)
  %5354 = extractvalue %dx.types.CBufRet.f32 %5266, 0
  %5355 = call float @dx.op.binary.f32(i32 35, float %5352, float %5353)  ; FMax(a,b)
  %5356 = fsub fast float %5354, %5355
  %5357 = call float @dx.op.unary.f32(i32 7, float %5356)  ; Saturate(value)
  %5358 = fmul fast float %5357, %5328
  br label %5359

; <label>:5359                                    ; preds = %5335, %5329
  %5360 = phi float [ %5358, %5335 ], [ 0.000000e+00, %5329 ]
  %5361 = extractvalue %dx.types.CBufRet.f32 %5306, 2
  %5362 = extractvalue %dx.types.CBufRet.f32 %5331, 1
  %5363 = fadd fast float %5362, %5361
  %5364 = fcmp fast ogt float %5363, 0.000000e+00
  br i1 %5364, label %5365, label %5389

; <label>:5365                                    ; preds = %5359
  %5366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5367 = extractvalue %dx.types.CBufRet.f32 %5366, 0
  %5368 = extractvalue %dx.types.CBufRet.f32 %5366, 1
  %5369 = fsub fast float %5312, %5367
  %5370 = fsub fast float %5313, %5368
  %5371 = fcmp fast olt float %5369, 0.000000e+00
  %5372 = fcmp fast olt float %5370, 0.000000e+00
  %5373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5374 = extractvalue %dx.types.CBufRet.f32 %5373, 0
  %5375 = extractvalue %dx.types.CBufRet.f32 %5373, 1
  %5376 = extractvalue %dx.types.CBufRet.f32 %5373, 2
  %5377 = extractvalue %dx.types.CBufRet.f32 %5373, 3
  %5378 = select i1 %5371, float %5374, float %5376
  %5379 = select i1 %5372, float %5375, float %5377
  %5380 = fmul fast float %5378, %5369
  %5381 = fmul fast float %5379, %5370
  %5382 = call float @dx.op.unary.f32(i32 6, float %5380)  ; FAbs(value)
  %5383 = call float @dx.op.unary.f32(i32 6, float %5381)  ; FAbs(value)
  %5384 = extractvalue %dx.types.CBufRet.f32 %5266, 0
  %5385 = call float @dx.op.binary.f32(i32 35, float %5382, float %5383)  ; FMax(a,b)
  %5386 = fsub fast float %5384, %5385
  %5387 = call float @dx.op.unary.f32(i32 7, float %5386)  ; Saturate(value)
  %5388 = fmul fast float %5387, %5328
  br label %5389

; <label>:5389                                    ; preds = %5365, %5359, %5275
  %5390 = phi float [ 0.000000e+00, %5275 ], [ %5388, %5365 ], [ 0.000000e+00, %5359 ]
  %5391 = phi float [ 0.000000e+00, %5275 ], [ %5360, %5365 ], [ %5360, %5359 ]
  %5392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5393 = extractvalue %dx.types.CBufRet.f32 %5392, 1
  %5394 = call float @dx.op.unary.f32(i32 7, float %5393)  ; Saturate(value)
  %5395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5396 = extractvalue %dx.types.CBufRet.f32 %5395, 0
  %5397 = extractvalue %dx.types.CBufRet.f32 %5395, 1
  %5398 = fsub fast float %5294, %5396
  %5399 = fsub fast float %5298, %5397
  %5400 = fcmp fast olt float %5398, 0.000000e+00
  %5401 = fcmp fast olt float %5399, 0.000000e+00
  %5402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5403 = extractvalue %dx.types.CBufRet.f32 %5402, 0
  %5404 = extractvalue %dx.types.CBufRet.f32 %5402, 1
  %5405 = extractvalue %dx.types.CBufRet.f32 %5402, 2
  %5406 = extractvalue %dx.types.CBufRet.f32 %5402, 3
  %5407 = select i1 %5400, float %5403, float %5405
  %5408 = select i1 %5401, float %5404, float %5406
  %5409 = fmul fast float %5407, %5398
  %5410 = fmul fast float %5408, %5399
  %5411 = call float @dx.op.unary.f32(i32 6, float %5409)  ; FAbs(value)
  %5412 = call float @dx.op.unary.f32(i32 6, float %5410)  ; FAbs(value)
  %5413 = extractvalue %dx.types.CBufRet.f32 %5266, 0
  %5414 = call float @dx.op.binary.f32(i32 35, float %5411, float %5412)  ; FMax(a,b)
  %5415 = fsub fast float %5413, %5414
  %5416 = call float @dx.op.unary.f32(i32 7, float %5415)  ; Saturate(value)
  %5417 = call float @dx.op.binary.f32(i32 36, float %5416, float %5394)  ; FMin(a,b)
  %5418 = fmul fast float %5417, %5328
  %5419 = fsub fast float %5390, %5418
  %5420 = fsub fast float %5391, %5390
  %5421 = fsub fast float %5420, %5418
  %5422 = call float @dx.op.binary.f32(i32 35, float %5390, float %5391)  ; FMax(a,b)
  %5423 = call float @dx.op.binary.f32(i32 35, float %5418, float %5422)  ; FMax(a,b)
  %5424 = fcmp fast olt float %5423, 1.000000e+00
  br i1 %5424, label %5425, label %5823, !dx.controlflow.hints !94

; <label>:5425                                    ; preds = %5389
  %5426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.f32 %5426, 0
  %5428 = fcmp fast une float %5427, 0.000000e+00
  br i1 %5428, label %5429, label %5823, !dx.controlflow.hints !95

; <label>:5429                                    ; preds = %5425
  %5430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5431 = extractvalue %dx.types.CBufRet.f32 %5430, 0
  %5432 = extractvalue %dx.types.CBufRet.f32 %5430, 1
  %5433 = extractvalue %dx.types.CBufRet.f32 %5430, 2
  %5434 = extractvalue %dx.types.CBufRet.f32 %5430, 3
  %5435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5436 = extractvalue %dx.types.CBufRet.f32 %5435, 0
  %5437 = extractvalue %dx.types.CBufRet.f32 %5435, 1
  %5438 = extractvalue %dx.types.CBufRet.f32 %5435, 2
  %5439 = extractvalue %dx.types.CBufRet.f32 %5435, 3
  %5440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5441 = extractvalue %dx.types.CBufRet.f32 %5440, 0
  %5442 = extractvalue %dx.types.CBufRet.f32 %5440, 1
  %5443 = extractvalue %dx.types.CBufRet.f32 %5440, 2
  %5444 = extractvalue %dx.types.CBufRet.f32 %5440, 3
  %5445 = fmul fast float %5431, %5271
  %5446 = call float @dx.op.tertiary.f32(i32 46, float %5272, float %5432, float %5445)  ; FMad(a,b,c)
  %5447 = call float @dx.op.tertiary.f32(i32 46, float %5273, float %5433, float %5446)  ; FMad(a,b,c)
  %5448 = fadd fast float %5447, %5434
  %5449 = fmul fast float %5436, %5271
  %5450 = call float @dx.op.tertiary.f32(i32 46, float %5272, float %5437, float %5449)  ; FMad(a,b,c)
  %5451 = call float @dx.op.tertiary.f32(i32 46, float %5273, float %5438, float %5450)  ; FMad(a,b,c)
  %5452 = fadd fast float %5451, %5439
  %5453 = fmul fast float %5441, %5271
  %5454 = call float @dx.op.tertiary.f32(i32 46, float %5272, float %5442, float %5453)  ; FMad(a,b,c)
  %5455 = call float @dx.op.tertiary.f32(i32 46, float %5273, float %5443, float %5454)  ; FMad(a,b,c)
  %5456 = fadd fast float %5455, %5444
  %5457 = fcmp fast oge float %5448, 1.000000e+00
  %5458 = fcmp fast oge float %5452, 1.000000e+00
  %5459 = or i1 %5457, %5458
  %5460 = fcmp fast olt float %5448, 0.000000e+00
  %5461 = fcmp fast olt float %5452, 0.000000e+00
  %5462 = or i1 %5460, %5461
  %5463 = or i1 %5459, %5462
  br i1 %5463, label %5823, label %5464, !dx.controlflow.hints !96

; <label>:5464                                    ; preds = %5429
  %5465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5466 = extractvalue %dx.types.CBufRet.f32 %5465, 0
  %5467 = extractvalue %dx.types.CBufRet.f32 %5465, 1
  %5468 = extractvalue %dx.types.CBufRet.f32 %5465, 2
  %5469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5470 = extractvalue %dx.types.CBufRet.i32 %5469, 2
  %5471 = uitofp i32 %5470 to float
  %5472 = extractvalue %dx.types.CBufRet.i32 %5469, 3
  %5473 = uitofp i32 %5472 to float
  %5474 = extractvalue %dx.types.CBufRet.f32 %5465, 3
  %5475 = fmul fast float %5474, 2.000000e+00
  %5476 = fsub fast float %5448, %5466
  %5477 = fsub fast float %5452, %5467
  %5478 = fmul fast float %5475, %5476
  %5479 = fmul fast float %5475, %5477
  %5480 = fdiv fast float 1.000000e+00, %5254
  %5481 = fmul fast float %5479, %5480
  %5482 = call float @dx.op.unary.f32(i32 6, float %5481)  ; FAbs(value)
  %5483 = fmul fast float %5468, %5273
  %5484 = fmul fast float %5483, %5475
  %5485 = call float @dx.op.unary.f32(i32 6, float %5484)  ; FAbs(value)
  %5486 = call float @dx.op.unary.f32(i32 6, float %5478)  ; FAbs(value)
  %5487 = call float @dx.op.binary.f32(i32 35, float %5485, float %5482)  ; FMax(a,b)
  %5488 = call float @dx.op.binary.f32(i32 35, float %5486, float %5487)  ; FMax(a,b)
  %5489 = fmul fast float %5488, 2.000000e+00
  %5490 = call float @dx.op.unary.f32(i32 23, float %5489)  ; Log(value)
  %5491 = call float @dx.op.binary.f32(i32 35, float %5490, float %5471)  ; FMax(a,b)
  %5492 = call float @dx.op.unary.f32(i32 22, float %5491)  ; Frc(value)
  %5493 = fadd fast float %5492, 0xBFEA666660000000
  %5494 = fmul fast float %5493, 8.000000e+00
  %5495 = call float @dx.op.unary.f32(i32 7, float %5494)  ; Saturate(value)
  %5496 = call float @dx.op.unary.f32(i32 27, float %5491)  ; Round_ni(value)
  %5497 = fadd fast float %5496, %5495
  %5498 = call float @dx.op.binary.f32(i32 36, float %5497, float %5473)  ; FMin(a,b)
  %5499 = call float @dx.op.unary.f32(i32 27, float %5498)  ; Round_ni(value)
  %5500 = fsub fast float -0.000000e+00, %5499
  %5501 = call float @dx.op.unary.f32(i32 21, float %5500)  ; Exp(value)
  %5502 = fmul fast float %5501, %5475
  %5503 = fmul fast float %5502, %5448
  %5504 = fmul fast float %5502, %5452
  %5505 = fmul fast float %5503, 2.500000e-01
  %5506 = fmul fast float %5504, 2.500000e-01
  %5507 = fadd fast float %5505, 5.000000e-01
  %5508 = fadd fast float %5506, 5.000000e-01
  %5509 = fsub fast float %5473, %5471
  %5510 = fptoui float %5509 to i32
  %5511 = add i32 %5510, 320
  %5512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5511)  ; CBufferLoadLegacy(handle,regIndex)
  %5513 = extractvalue %dx.types.CBufRet.f32 %5512, 0
  %5514 = extractvalue %dx.types.CBufRet.f32 %5512, 1
  %5515 = fcmp fast une float %5498, %5473
  %5516 = fsub fast float %5448, %5513
  %5517 = fsub fast float %5452, %5514
  %5518 = call float @dx.op.unary.f32(i32 6, float %5516)  ; FAbs(value)
  %5519 = call float @dx.op.unary.f32(i32 6, float %5517)  ; FAbs(value)
  %5520 = fmul fast float %5518, %5502
  %5521 = fmul fast float %5519, %5502
  %5522 = fcmp fast olt float %5520, 1.000000e+00
  %5523 = fcmp fast olt float %5521, 1.000000e+00
  %5524 = and i1 %5522, %5523
  %5525 = or i1 %5515, %5524
  br i1 %5525, label %5526, label %5823, !dx.controlflow.hints !97

; <label>:5526                                    ; preds = %5464
  %5527 = fmul fast float %5504, 5.000000e-01
  %5528 = fmul fast float %5503, 5.000000e-01
  %5529 = fadd fast float %5527, 5.000000e-01
  %5530 = fadd fast float %5528, 5.000000e-01
  %5531 = sitofp i32 %5470 to float
  %5532 = fsub fast float %5498, %5531
  %5533 = call float @dx.op.unary.f32(i32 27, float %5532)  ; Round_ni(value)
  %5534 = call float @dx.op.unary.f32(i32 22, float %5498)  ; Frc(value)
  %5535 = call float @dx.op.unary.f32(i32 22, float %5530)  ; Frc(value)
  %5536 = call float @dx.op.unary.f32(i32 22, float %5529)  ; Frc(value)
  %5537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5535, float %5536, float %5533, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5538 = extractvalue %dx.types.ResRet.f32 %5537, 0
  %5539 = extractvalue %dx.types.ResRet.f32 %5537, 1
  %5540 = extractvalue %dx.types.ResRet.f32 %5537, 2
  %5541 = extractvalue %dx.types.ResRet.f32 %5537, 3
  %5542 = fcmp fast ogt float %5534, 0.000000e+00
  br i1 %5542, label %5543, label %5564, !dx.controlflow.hints !98

; <label>:5543                                    ; preds = %5526
  %5544 = fadd fast float %5533, 1.000000e+00
  %5545 = call float @dx.op.unary.f32(i32 22, float %5507)  ; Frc(value)
  %5546 = call float @dx.op.unary.f32(i32 22, float %5508)  ; Frc(value)
  %5547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5545, float %5546, float %5544, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5548 = extractvalue %dx.types.ResRet.f32 %5547, 0
  %5549 = extractvalue %dx.types.ResRet.f32 %5547, 1
  %5550 = extractvalue %dx.types.ResRet.f32 %5547, 2
  %5551 = extractvalue %dx.types.ResRet.f32 %5547, 3
  %5552 = fsub fast float %5548, %5538
  %5553 = fsub fast float %5549, %5539
  %5554 = fsub fast float %5550, %5540
  %5555 = fsub fast float %5551, %5541
  %5556 = fmul fast float %5552, %5534
  %5557 = fmul fast float %5553, %5534
  %5558 = fmul fast float %5554, %5534
  %5559 = fmul fast float %5555, %5534
  %5560 = fadd fast float %5556, %5538
  %5561 = fadd fast float %5557, %5539
  %5562 = fadd fast float %5558, %5540
  %5563 = fadd fast float %5559, %5541
  br label %5564

; <label>:5564                                    ; preds = %5543, %5526
  %5565 = phi float [ %5560, %5543 ], [ %5538, %5526 ]
  %5566 = phi float [ %5561, %5543 ], [ %5539, %5526 ]
  %5567 = phi float [ %5562, %5543 ], [ %5540, %5526 ]
  %5568 = phi float [ %5563, %5543 ], [ %5541, %5526 ]
  %5569 = fadd fast float %5565, -5.000000e-01
  %5570 = fadd fast float %5567, -5.000000e-01
  %5571 = fmul fast float %5569, 0xBFD5555560000000
  %5572 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5570, float %5571)  ; FMad(a,b,c)
  %5573 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5566, float 0.000000e+00)  ; FMad(a,b,c)
  %5574 = fadd fast float %5573, %5568
  %5575 = fmul fast float %5569, -7.500000e-01
  %5576 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5570, float %5575)  ; FMad(a,b,c)
  %5577 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5566, float 0.000000e+00)  ; FMad(a,b,c)
  %5578 = fadd fast float %5577, %5568
  %5579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5580 = extractvalue %dx.types.CBufRet.f32 %5579, 0
  %5581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5582 = extractvalue %dx.types.CBufRet.f32 %5581, 0
  %5583 = extractvalue %dx.types.CBufRet.f32 %5581, 1
  %5584 = extractvalue %dx.types.CBufRet.f32 %5581, 2
  %5585 = extractvalue %dx.types.CBufRet.f32 %5581, 3
  %5586 = fsub fast float %5582, %5572
  %5587 = fsub fast float %5583, %5574
  %5588 = fsub fast float %5584, %5576
  %5589 = fsub fast float %5585, %5578
  %5590 = fmul fast float %5586, %5580
  %5591 = fmul fast float %5587, %5580
  %5592 = fmul fast float %5588, %5580
  %5593 = fmul fast float %5589, %5580
  %5594 = fadd fast float %5590, %5572
  %5595 = fadd fast float %5591, %5574
  %5596 = fadd fast float %5592, %5576
  %5597 = fadd fast float %5593, %5578
  %5598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5599 = extractvalue %dx.types.ResRet.i32 %5598, 0
  %5600 = and i32 %5599, 536870911
  %5601 = uitofp i32 %5600 to float
  %5602 = fmul fast float %5601, %5448
  %5603 = fmul fast float %5601, %5452
  %5604 = fptoui float %5602 to i32
  %5605 = fptoui float %5603 to i32
  %5606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5607 = extractvalue %dx.types.ResRet.i32 %5606, 0
  %5608 = and i32 %5607, 31
  %5609 = lshr i32 %5604, %5608
  %5610 = lshr i32 %5605, %5608
  %5611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5612 = extractvalue %dx.types.ResRet.i32 %5611, 0
  %5613 = and i32 %5612, 31
  %5614 = shl i32 1, %5613
  %5615 = call i32 @dx.op.binary.i32(i32 40, i32 %5614, i32 4)  ; UMin(a,b)
  %5616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5617 = extractvalue %dx.types.ResRet.i32 %5616, 0
  %5618 = extractvalue %dx.types.ResRet.i32 %5616, 1
  %5619 = icmp eq i32 %5615, 0
  br i1 %5619, label %5661, label %5620

; <label>:5620                                    ; preds = %5564
  br label %5621

; <label>:5621                                    ; preds = %5649, %5620
  %5622 = phi i32 [ %5652, %5649 ], [ 0, %5620 ]
  %5623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5624 = extractvalue %dx.types.ResRet.i32 %5623, 0
  %5625 = lshr i32 %5624, 16
  %5626 = and i32 %5625, 31
  %5627 = shl i32 %5610, %5626
  %5628 = add i32 %5627, %5609
  %5629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5630 = extractvalue %dx.types.ResRet.i32 %5629, 0
  %5631 = and i32 %5630, 31
  %5632 = shl i32 %5628, %5631
  %5633 = add i32 %5632, %5622
  %5634 = shl i32 %5633, 2
  %5635 = add i32 %5634, 32
  %5636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5635, i32 undef)  ; BufferLoad(srv,index,wot)
  %5637 = extractvalue %dx.types.ResRet.i32 %5636, 0
  %5638 = icmp slt i32 %5637, 0
  %5639 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5622
  %5640 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5622
  %5641 = bitcast float* %5639 to i32*
  %5642 = bitcast float* %5640 to i32*
  br i1 %5638, label %5643, label %5649

; <label>:5643                                    ; preds = %5621
  %5644 = and i32 %5637, 1073741823
  %5645 = add nuw nsw i32 %5644, 20
  %5646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5645, i32 undef)  ; BufferLoad(srv,index,wot)
  %5647 = extractvalue %dx.types.ResRet.i32 %5646, 0
  %5648 = extractvalue %dx.types.ResRet.i32 %5646, 1
  br label %5649

; <label>:5649                                    ; preds = %5643, %5621
  %5650 = phi i32 [ %5647, %5643 ], [ %5617, %5621 ]
  %5651 = phi i32 [ %5648, %5643 ], [ %5618, %5621 ]
  store i32 %5650, i32* %5641, align 4
  store i32 %5651, i32* %5642, align 4
  %5652 = add nuw i32 %5622, 1
  %5653 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5654 = extractvalue %dx.types.CBufRet.i32 %5653, 2
  %5655 = icmp eq i32 %5654, 0
  %5656 = icmp ugt i32 %5637, -1073741825
  %5657 = and i1 %5656, %5655
  %5658 = icmp ult i32 %5652, %5615
  %5659 = and i1 %5657, %5658
  br i1 %5659, label %5621, label %5660

; <label>:5660                                    ; preds = %5649
  br label %5661

; <label>:5661                                    ; preds = %5660, %5564
  %5662 = phi i32 [ 0, %5564 ], [ %5652, %5660 ]
  %5663 = extractvalue %dx.types.CBufRet.f32 %5426, 2
  %5664 = fptoui float %5663 to i32
  %5665 = icmp eq i32 %5664, 0
  br i1 %5665, label %5717, label %5666

; <label>:5666                                    ; preds = %5661
  br label %5667

; <label>:5667                                    ; preds = %5712, %5666
  %5668 = phi i32 [ %5713, %5712 ], [ %5662, %5666 ]
  %5669 = phi i32 [ %5714, %5712 ], [ 0, %5666 ]
  %5670 = lshr i32 %5669, 2
  %5671 = and i32 %5669, 3
  %5672 = add nuw nsw i32 %5670, 83
  %5673 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5672)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.i32 %5673, 0
  %5675 = extractvalue %dx.types.CBufRet.i32 %5673, 1
  %5676 = extractvalue %dx.types.CBufRet.i32 %5673, 2
  %5677 = extractvalue %dx.types.CBufRet.i32 %5673, 3
  %5678 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5674, i32* %5678, align 4
  %5679 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5675, i32* %5679, align 4
  %5680 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5676, i32* %5680, align 4
  %5681 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5677, i32* %5681, align 4
  %5682 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5671
  %5683 = load i32, i32* %5682, align 4, !tbaa !99, !noalias !103
  %5684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5685 = extractvalue %dx.types.ResRet.i32 %5684, 0
  %5686 = lshr i32 %5685, 16
  %5687 = and i32 %5686, 31
  %5688 = shl i32 %5610, %5687
  %5689 = add i32 %5688, %5609
  %5690 = shl i32 %5689, 2
  %5691 = add i32 %5690, %5683
  %5692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5691, i32 undef)  ; BufferLoad(srv,index,wot)
  %5693 = extractvalue %dx.types.ResRet.i32 %5692, 0
  %5694 = icmp eq i32 %5693, 0
  br i1 %5694, label %5712, label %5695

; <label>:5695                                    ; preds = %5667
  %5696 = icmp slt i32 %5693, 0
  %5697 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5668
  %5698 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5668
  %5699 = bitcast float* %5697 to i32*
  %5700 = bitcast float* %5698 to i32*
  br i1 %5696, label %5701, label %5708

; <label>:5701                                    ; preds = %5695
  %5702 = and i32 %5693, 1073741823
  %5703 = add i32 %5683, 20
  %5704 = add i32 %5703, %5702
  %5705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5704, i32 undef)  ; BufferLoad(srv,index,wot)
  %5706 = extractvalue %dx.types.ResRet.i32 %5705, 0
  %5707 = extractvalue %dx.types.ResRet.i32 %5705, 1
  br label %5708

; <label>:5708                                    ; preds = %5701, %5695
  %5709 = phi i32 [ %5706, %5701 ], [ %5617, %5695 ]
  %5710 = phi i32 [ %5707, %5701 ], [ %5618, %5695 ]
  store i32 %5709, i32* %5699, align 4
  store i32 %5710, i32* %5700, align 4
  %5711 = add i32 %5668, 1
  br label %5712

; <label>:5712                                    ; preds = %5708, %5667
  %5713 = phi i32 [ %5668, %5667 ], [ %5711, %5708 ]
  %5714 = add nuw i32 %5669, 1
  %5715 = icmp eq i32 %5714, %5664
  br i1 %5715, label %5716, label %5667

; <label>:5716                                    ; preds = %5712
  br label %5717

; <label>:5717                                    ; preds = %5716, %5661
  %5718 = phi i32 [ %5662, %5661 ], [ %5713, %5716 ]
  %5719 = icmp eq i32 %5718, 1
  %5720 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 0
  %5721 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  br i1 %5719, label %5722, label %5725

; <label>:5722                                    ; preds = %5717
  %5723 = load float, float* %5720, align 4
  %5724 = load float, float* %5721, align 4
  br label %5752

; <label>:5725                                    ; preds = %5717
  %5726 = load float, float* %5720, align 4
  %5727 = load float, float* %5721, align 4
  %5728 = fdiv fast float 1.000000e+00, %5727
  %5729 = fsub fast float %5726, %5728
  %5730 = icmp ugt i32 %5718, 1
  br i1 %5730, label %5731, label %5747

; <label>:5731                                    ; preds = %5725
  br label %5732

; <label>:5732                                    ; preds = %5732, %5731
  %5733 = phi float [ %5742, %5732 ], [ %5729, %5731 ]
  %5734 = phi float [ %5743, %5732 ], [ %5726, %5731 ]
  %5735 = phi i32 [ %5744, %5732 ], [ 1, %5731 ]
  %5736 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5735
  %5737 = load float, float* %5736, align 4
  %5738 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5735
  %5739 = load float, float* %5738, align 4
  %5740 = fdiv fast float 1.000000e+00, %5739
  %5741 = fsub fast float %5737, %5740
  %5742 = call float @dx.op.binary.f32(i32 36, float %5733, float %5741)  ; FMin(a,b)
  %5743 = call float @dx.op.binary.f32(i32 35, float %5734, float %5737)  ; FMax(a,b)
  %5744 = add nuw i32 %5735, 1
  %5745 = icmp eq i32 %5744, %5718
  br i1 %5745, label %5746, label %5732

; <label>:5746                                    ; preds = %5732
  br label %5747

; <label>:5747                                    ; preds = %5746, %5725
  %5748 = phi float [ %5729, %5725 ], [ %5742, %5746 ]
  %5749 = phi float [ %5726, %5725 ], [ %5743, %5746 ]
  %5750 = fsub fast float %5749, %5748
  %5751 = fdiv fast float 1.000000e+00, %5750
  br label %5752

; <label>:5752                                    ; preds = %5747, %5722
  %5753 = phi float [ %5723, %5722 ], [ %5749, %5747 ]
  %5754 = phi float [ %5724, %5722 ], [ %5751, %5747 ]
  %5755 = fadd fast float %5456, %5753
  %5756 = fmul fast float %5755, %5754
  %5757 = call float @dx.op.unary.f32(i32 7, float %5756)  ; Saturate(value)
  %5758 = fmul fast float %5757, 2.000000e+00
  %5759 = fsub fast float 1.000000e+00, %5758
  %5760 = fmul fast float %5594, %5594
  %5761 = fsub fast float %5595, %5760
  %5762 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5761)  ; FMax(a,b)
  %5763 = fdiv fast float 1.000000e+00, %5762
  %5764 = fmul fast float %5595, %5594
  %5765 = fsub fast float %5596, %5764
  %5766 = fsub fast float %5759, %5594
  %5767 = fmul fast float %5759, %5759
  %5768 = fsub fast float %5767, %5595
  %5769 = fmul fast float %5763, %5765
  %5770 = fmul fast float %5769, %5766
  %5771 = fsub fast float %5768, %5770
  %5772 = fmul fast float %5595, %5595
  %5773 = fsub fast float %5597, %5772
  %5774 = fmul fast float %5765, %5765
  %5775 = fmul fast float %5774, %5763
  %5776 = fsub fast float %5773, %5775
  %5777 = fdiv fast float %5771, %5776
  %5778 = fmul fast float %5777, %5765
  %5779 = fsub fast float %5766, %5778
  %5780 = fmul fast float %5779, %5763
  %5781 = fmul fast float %5780, %5594
  %5782 = fsub fast float 1.000000e+00, %5781
  %5783 = fmul fast float %5777, %5595
  %5784 = fsub fast float %5782, %5783
  %5785 = fmul fast float %5780, %5780
  %5786 = fmul fast float %5777, 4.000000e+00
  %5787 = fmul fast float %5786, %5784
  %5788 = fsub fast float %5785, %5787
  %5789 = call float @dx.op.unary.f32(i32 24, float %5788)  ; Sqrt(value)
  %5790 = fcmp fast oge float %5780, 0.000000e+00
  %5791 = fsub fast float -0.000000e+00, %5789
  %5792 = select i1 %5790, float %5791, float %5789
  %5793 = fsub fast float %5792, %5780
  %5794 = fdiv fast float %5793, %5777
  %5795 = fdiv fast float %5784, %5793
  %5796 = fmul fast float %5794, 5.000000e-01
  %5797 = fmul fast float %5795, 2.000000e+00
  %5798 = select i1 %5790, float %5796, float %5797
  %5799 = select i1 %5790, float %5797, float %5796
  %5800 = call float @dx.op.binary.f32(i32 35, float %5798, float %5799)  ; FMax(a,b)
  %5801 = call float @dx.op.binary.f32(i32 36, float %5798, float %5799)  ; FMin(a,b)
  %5802 = fcmp fast ogt float %5759, %5800
  %5803 = fsub fast float %5759, %5801
  %5804 = fsub fast float %5759, %5800
  %5805 = fsub fast float %5800, %5801
  %5806 = select i1 %5802, float %5804, float %5805
  %5807 = fmul float %5803, %5806
  %5808 = select i1 %5802, float %5801, float %5759
  %5809 = fcmp fast ogt float %5759, %5801
  %5810 = fmul fast float %5808, %5800
  %5811 = fadd fast float %5808, %5800
  %5812 = fmul fast float %5811, %5594
  %5813 = fadd fast float %5810, %5595
  %5814 = fsub fast float %5813, %5812
  %5815 = fdiv fast float %5814, %5807
  %5816 = select i1 %5809, float %5815, float 0.000000e+00
  %5817 = fsub fast float 1.000000e+00, %5816
  %5818 = select i1 %5802, float %5817, float %5816
  %5819 = call float @dx.op.unary.f32(i32 7, float %5818)  ; Saturate(value)
  %5820 = extractvalue %dx.types.CBufRet.f32 %5579, 3
  %5821 = fmul fast float %5820, %5819
  %5822 = fsub fast float 1.000000e+00, %5821
  br label %5823

; <label>:5823                                    ; preds = %5752, %5464, %5429, %5425, %5389
  %5824 = phi float [ 1.000000e+00, %5389 ], [ %5822, %5752 ], [ 1.000000e+00, %5429 ], [ 1.000000e+00, %5464 ], [ 1.000000e+00, %5425 ]
  %5825 = fcmp fast ogt float %5421, 0.000000e+00
  br i1 %5825, label %5826, label %5834, !dx.controlflow.hints !112

; <label>:5826                                    ; preds = %5823
  %5827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.f32 %5827, 2
  %5829 = fadd fast float %5828, %5302
  %5830 = call float @dx.op.binary.f32(i32 35, float %5829, float 0.000000e+00)  ; FMax(a,b)
  %5831 = fadd fast float %5830, 0x3F10000000000000
  %5832 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5320, float %5321, float undef, float undef, i32 0, i32 0, i32 undef, float %5831)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5833 = extractvalue %dx.types.ResRet.f32 %5832, 0
  br label %5834

; <label>:5834                                    ; preds = %5826, %5823
  %5835 = phi float [ %5833, %5826 ], [ 1.000000e+00, %5823 ]
  %5836 = fcmp fast ogt float %5419, 0.000000e+00
  br i1 %5836, label %5837, label %5845, !dx.controlflow.hints !113

; <label>:5837                                    ; preds = %5834
  %5838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5839 = extractvalue %dx.types.CBufRet.f32 %5838, 1
  %5840 = fadd fast float %5839, %5302
  %5841 = call float @dx.op.binary.f32(i32 35, float %5840, float 0.000000e+00)  ; FMax(a,b)
  %5842 = fadd fast float %5841, 0x3F10000000000000
  %5843 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5312, float %5313, float undef, float undef, i32 0, i32 0, i32 undef, float %5842)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5844 = extractvalue %dx.types.ResRet.f32 %5843, 0
  br label %5845

; <label>:5845                                    ; preds = %5837, %5834
  %5846 = phi float [ %5844, %5837 ], [ 1.000000e+00, %5834 ]
  %5847 = fcmp fast ogt float %5418, 0.000000e+00
  br i1 %5847, label %5848, label %5860, !dx.controlflow.hints !114

; <label>:5848                                    ; preds = %5845
  %5849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5850 = extractvalue %dx.types.CBufRet.f32 %5849, 0
  %5851 = fadd fast float %5850, %5302
  %5852 = call float @dx.op.binary.f32(i32 35, float %5851, float 0.000000e+00)  ; FMax(a,b)
  %5853 = fadd fast float %5852, 0x3F10000000000000
  br i1 %5305, label %5854, label %5857, !dx.controlflow.hints !115

; <label>:5854                                    ; preds = %5848
  %5855 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %5294, float %5298, float undef, float undef, i32 0, i32 0, i32 undef, float %5853)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5856 = extractvalue %dx.types.ResRet.f32 %5855, 0
  br label %5860

; <label>:5857                                    ; preds = %5848
  %5858 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5294, float %5298, float undef, float undef, i32 0, i32 0, i32 undef, float %5853)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5859 = extractvalue %dx.types.ResRet.f32 %5858, 0
  br label %5860

; <label>:5860                                    ; preds = %5857, %5854, %5845
  %5861 = phi float [ %5856, %5854 ], [ %5859, %5857 ], [ 1.000000e+00, %5845 ]
  %5862 = fsub fast float %5835, %5824
  %5863 = fmul fast float %5862, %5391
  %5864 = fadd fast float %5863, %5824
  %5865 = fsub fast float %5846, %5864
  %5866 = fmul fast float %5865, %5390
  %5867 = fadd fast float %5866, %5864
  %5868 = fsub fast float %5861, %5867
  %5869 = fmul fast float %5868, %5418
  %5870 = fadd fast float %5869, %5867
  %5871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.f32 %5871, 2
  %5873 = fcmp fast ogt float %5872, 0.000000e+00
  br i1 %5873, label %5874, label %5914, !dx.controlflow.hints !116

; <label>:5874                                    ; preds = %5860
  %5875 = fcmp fast ugt float %5872, 0.000000e+00
  br i1 %5875, label %5876, label %5911

; <label>:5876                                    ; preds = %5874
  %5877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5878 = extractvalue %dx.types.CBufRet.f32 %5877, 0
  %5879 = extractvalue %dx.types.CBufRet.f32 %5877, 1
  %5880 = extractvalue %dx.types.CBufRet.f32 %5877, 2
  %5881 = extractvalue %dx.types.CBufRet.f32 %5877, 3
  %5882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5883 = extractvalue %dx.types.CBufRet.f32 %5882, 0
  %5884 = extractvalue %dx.types.CBufRet.f32 %5882, 1
  %5885 = extractvalue %dx.types.CBufRet.f32 %5882, 2
  %5886 = extractvalue %dx.types.CBufRet.f32 %5882, 3
  %5887 = extractvalue %dx.types.CBufRet.f32 %5871, 0
  %5888 = extractvalue %dx.types.CBufRet.f32 %5871, 1
  %5889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5890 = extractvalue %dx.types.CBufRet.f32 %5889, 0
  %5891 = extractvalue %dx.types.CBufRet.f32 %5889, 1
  %5892 = extractvalue %dx.types.CBufRet.f32 %5889, 2
  %5893 = fadd fast float %5890, %5271
  %5894 = fadd fast float %5891, %5272
  %5895 = fadd fast float %5892, %5273
  %5896 = fmul fast float %5893, %5878
  %5897 = call float @dx.op.tertiary.f32(i32 46, float %5879, float %5894, float %5896)  ; FMad(a,b,c)
  %5898 = call float @dx.op.tertiary.f32(i32 46, float %5880, float %5895, float %5897)  ; FMad(a,b,c)
  %5899 = fadd fast float %5898, %5881
  %5900 = fmul fast float %5893, %5883
  %5901 = call float @dx.op.tertiary.f32(i32 46, float %5884, float %5894, float %5900)  ; FMad(a,b,c)
  %5902 = call float @dx.op.tertiary.f32(i32 46, float %5885, float %5895, float %5901)  ; FMad(a,b,c)
  %5903 = fadd fast float %5902, %5886
  %5904 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5899, float %5903, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5905 = extractvalue %dx.types.ResRet.f32 %5904, 0
  %5906 = fmul fast float %5905, %5888
  %5907 = fadd fast float %5906, %5887
  %5908 = call float @dx.op.unary.f32(i32 7, float %5907)  ; Saturate(value)
  %5909 = fmul fast float %5908, %5872
  %5910 = fsub fast float 1.000000e+00, %5909
  br label %5911

; <label>:5911                                    ; preds = %5876, %5874
  %5912 = phi float [ %5910, %5876 ], [ 1.000000e+00, %5874 ]
  %5913 = fmul fast float %5912, %5870
  br label %5914

; <label>:5914                                    ; preds = %5911, %5860, %5251
  %5915 = phi float [ 1.000000e+00, %5251 ], [ %5913, %5911 ], [ %5870, %5860 ]
  %5916 = call float @dx.op.binary.f32(i32 36, float %5915, float %5915)  ; FMin(a,b)
  %5917 = call float @dx.op.binary.f32(i32 36, float %5915, float %5916)  ; FMin(a,b)
  %5918 = fcmp fast ogt float %5917, 0.000000e+00
  br i1 %5918, label %5919, label %6079, !dx.controlflow.hints !117

; <label>:5919                                    ; preds = %5914
  %5920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5921 = extractvalue %dx.types.CBufRet.f32 %5920, 0
  %5922 = extractvalue %dx.types.CBufRet.f32 %5920, 1
  %5923 = extractvalue %dx.types.CBufRet.f32 %5920, 2
  %5924 = extractvalue %dx.types.CBufRet.f32 %5920, 3
  %5925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5926 = extractvalue %dx.types.CBufRet.f32 %5925, 0
  %5927 = extractvalue %dx.types.CBufRet.f32 %5925, 1
  %5928 = extractvalue %dx.types.CBufRet.f32 %5925, 2
  %5929 = extractvalue %dx.types.CBufRet.f32 %5925, 3
  %5930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5931 = extractvalue %dx.types.CBufRet.f32 %5930, 0
  %5932 = extractvalue %dx.types.CBufRet.f32 %5930, 1
  %5933 = extractvalue %dx.types.CBufRet.f32 %5930, 2
  %5934 = extractvalue %dx.types.CBufRet.f32 %5930, 3
  %5935 = fmul fast float %5921, %5271
  %5936 = call float @dx.op.tertiary.f32(i32 46, float %5272, float %5922, float %5935)  ; FMad(a,b,c)
  %5937 = call float @dx.op.tertiary.f32(i32 46, float %5273, float %5923, float %5936)  ; FMad(a,b,c)
  %5938 = fadd fast float %5937, %5924
  %5939 = fmul fast float %5926, %5271
  %5940 = call float @dx.op.tertiary.f32(i32 46, float %5272, float %5927, float %5939)  ; FMad(a,b,c)
  %5941 = call float @dx.op.tertiary.f32(i32 46, float %5273, float %5928, float %5940)  ; FMad(a,b,c)
  %5942 = fadd fast float %5941, %5929
  %5943 = fmul fast float %5931, %5271
  %5944 = call float @dx.op.tertiary.f32(i32 46, float %5272, float %5932, float %5943)  ; FMad(a,b,c)
  %5945 = call float @dx.op.tertiary.f32(i32 46, float %5273, float %5933, float %5944)  ; FMad(a,b,c)
  %5946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5947 = extractvalue %dx.types.CBufRet.f32 %5946, 0
  %5948 = extractvalue %dx.types.CBufRet.f32 %5946, 1
  %5949 = extractvalue %dx.types.CBufRet.f32 %5946, 3
  %5950 = fmul fast float %5949, %5938
  %5951 = fmul fast float %5949, %5942
  %5952 = fadd fast float %5950, %5947
  %5953 = fadd fast float %5951, %5948
  %5954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5955 = extractvalue %dx.types.CBufRet.f32 %5954, 0
  %5956 = extractvalue %dx.types.CBufRet.f32 %5954, 1
  %5957 = fsub fast float %5952, %5955
  %5958 = fsub fast float %5953, %5956
  %5959 = fcmp fast olt float %5957, 0.000000e+00
  %5960 = fcmp fast olt float %5958, 0.000000e+00
  %5961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5962 = extractvalue %dx.types.CBufRet.f32 %5961, 0
  %5963 = extractvalue %dx.types.CBufRet.f32 %5961, 1
  %5964 = extractvalue %dx.types.CBufRet.f32 %5961, 2
  %5965 = extractvalue %dx.types.CBufRet.f32 %5961, 3
  %5966 = select i1 %5959, float %5962, float %5964
  %5967 = select i1 %5960, float %5963, float %5965
  %5968 = fmul fast float %5966, %5957
  %5969 = fmul fast float %5967, %5958
  %5970 = call float @dx.op.unary.f32(i32 6, float %5968)  ; FAbs(value)
  %5971 = call float @dx.op.unary.f32(i32 6, float %5969)  ; FAbs(value)
  %5972 = extractvalue %dx.types.CBufRet.f32 %5266, 0
  %5973 = call float @dx.op.binary.f32(i32 35, float %5970, float %5971)  ; FMax(a,b)
  %5974 = fsub fast float %5972, %5973
  %5975 = call float @dx.op.unary.f32(i32 7, float %5974)  ; Saturate(value)
  %5976 = fcmp fast ogt float %5975, 0.000000e+00
  br i1 %5976, label %5977, label %6018, !dx.controlflow.hints !118

; <label>:5977                                    ; preds = %5919
  %5978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %5952, float %5953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5979 = extractvalue %dx.types.ResRet.f32 %5978, 1
  %5980 = fcmp fast ogt float %5979, 0.000000e+00
  br i1 %5980, label %5981, label %6013

; <label>:5981                                    ; preds = %5977
  %5982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %5952, float %5953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5983 = extractvalue %dx.types.ResRet.f32 %5982, 0
  %5984 = extractvalue %dx.types.ResRet.f32 %5982, 1
  %5985 = extractvalue %dx.types.ResRet.f32 %5982, 2
  %5986 = extractvalue %dx.types.ResRet.f32 %5982, 3
  %5987 = fsub fast float 1.000000e+00, %5934
  %5988 = fsub fast float %5987, %5945
  %5989 = fmul fast float %5988, 0x400921FB60000000
  %5990 = fadd fast float %5989, 0x3FF921FB60000000
  %5991 = call float @dx.op.unary.f32(i32 13, float %5990)  ; Sin(value)
  %5992 = fadd fast float %5991, -1.000000e+00
  %5993 = fmul fast float %5992, 0x3FD45F3060000000
  %5994 = fmul fast float %5988, 0x401921FB60000000
  %5995 = fadd fast float %5994, 0x400921FB60000000
  %5996 = call float @dx.op.unary.f32(i32 13, float %5995)  ; Sin(value)
  %5997 = fadd fast float %5996, 0x3E7777A5C0000000
  %5998 = fmul fast float %5997, 0x3FC45F3060000000
  %5999 = fmul fast float %5988, 0x4022D97C80000000
  %6000 = fadd fast float %5999, 0x4012D97C80000000
  %6001 = call float @dx.op.unary.f32(i32 13, float %6000)  ; Sin(value)
  %6002 = fadd fast float %6001, 1.000000e+00
  %6003 = fmul fast float %6002, 0x3FBB2995E0000000
  %6004 = fmul fast float %5988, 0x402921FB60000000
  %6005 = fadd fast float %6004, 0x401921FB60000000
  %6006 = call float @dx.op.unary.f32(i32 13, float %6005)  ; Sin(value)
  %6007 = fadd fast float %6006, 0xBE8777A5C0000000
  %6008 = fmul fast float %6007, 0x3FB45F3060000000
  %6009 = call float @dx.op.dot4.f32(i32 56, float %5983, float %5984, float %5985, float %5986, float %5993, float %5998, float %6003, float %6008)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6010 = fmul fast float %6009, 0xBFF7154760000000
  %6011 = call float @dx.op.unary.f32(i32 21, float %6010)  ; Exp(value)
  %6012 = call float @dx.op.unary.f32(i32 7, float %6011)  ; Saturate(value)
  br label %6013

; <label>:6013                                    ; preds = %5981, %5977
  %6014 = phi float [ %6012, %5981 ], [ 1.000000e+00, %5977 ]
  %6015 = fadd fast float %6014, -1.000000e+00
  %6016 = fmul fast float %6015, %5975
  %6017 = fadd fast float %6016, 1.000000e+00
  br label %6018

; <label>:6018                                    ; preds = %6013, %5919
  %6019 = phi float [ %6017, %6013 ], [ 1.000000e+00, %5919 ]
  %6020 = fmul fast float %6019, %5915
  %6021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6022 = extractvalue %dx.types.CBufRet.f32 %6021, 0
  %6023 = extractvalue %dx.types.CBufRet.f32 %6021, 1
  %6024 = extractvalue %dx.types.CBufRet.f32 %6021, 2
  %6025 = fadd fast float %6022, %191
  %6026 = fadd fast float %6023, %192
  %6027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6028 = extractvalue %dx.types.CBufRet.f32 %6027, 1
  %6029 = fsub fast float -0.000000e+00, %6025
  %6030 = fsub fast float -0.000000e+00, %6026
  %6031 = fsub fast float %5035, %6024
  %6032 = fadd fast float %6031, %6028
  %6033 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6029, float %6030, float %6032)  ; Dot3(ax,ay,az,bx,by,bz)
  %6034 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5252, float %5253, float %5254)  ; Dot3(ax,ay,az,bx,by,bz)
  %6035 = fdiv fast float 1.000000e+00, %6034
  %6036 = fmul fast float %6035, %6033
  %6037 = fmul fast float %5252, %6036
  %6038 = fmul fast float %5253, %6036
  %6039 = fadd fast float %6037, %6025
  %6040 = fadd fast float %6038, %6026
  %6041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6042 = extractvalue %dx.types.CBufRet.f32 %6041, 0
  %6043 = extractvalue %dx.types.CBufRet.f32 %6041, 1
  %6044 = fsub fast float %6039, %6042
  %6045 = fsub fast float %6040, %6043
  %6046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6047 = extractvalue %dx.types.CBufRet.f32 %6046, 2
  %6048 = extractvalue %dx.types.CBufRet.f32 %6046, 3
  %6049 = fmul fast float %6044, %6047
  %6050 = fmul fast float %6045, %6048
  %6051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6052 = extractvalue %dx.types.CBufRet.i32 %6051, 3
  %6053 = icmp eq i32 %6052, 0
  br i1 %6053, label %6059, label %6054

; <label>:6054                                    ; preds = %6018
  %6055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6049, float %6050, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6056 = extractvalue %dx.types.ResRet.f32 %6055, 0
  %6057 = extractvalue %dx.types.ResRet.f32 %6055, 1
  %6058 = extractvalue %dx.types.ResRet.f32 %6055, 2
  br label %6064

; <label>:6059                                    ; preds = %6018
  %6060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6049, float %6050, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6061 = extractvalue %dx.types.ResRet.f32 %6060, 0
  %6062 = extractvalue %dx.types.ResRet.f32 %6060, 1
  %6063 = extractvalue %dx.types.ResRet.f32 %6060, 2
  br label %6064

; <label>:6064                                    ; preds = %6059, %6054
  %6065 = phi float [ %6056, %6054 ], [ %6061, %6059 ]
  %6066 = phi float [ %6057, %6054 ], [ %6062, %6059 ]
  %6067 = phi float [ %6058, %6054 ], [ %6063, %6059 ]
  %6068 = extractvalue %dx.types.CBufRet.f32 %6027, 2
  %6069 = fmul fast float %6068, %6065
  %6070 = extractvalue %dx.types.CBufRet.f32 %6027, 0
  %6071 = fsub fast float %6036, %6070
  %6072 = fsub fast float %6071, %6069
  %6073 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6072)  ; FMax(a,b)
  %6074 = fmul fast float %6073, %6066
  %6075 = call float @dx.op.binary.f32(i32 36, float %6067, float %6074)  ; FMin(a,b)
  %6076 = fmul fast float %6075, 0xBFF7154760000000
  %6077 = call float @dx.op.unary.f32(i32 21, float %6076)  ; Exp(value)
  %6078 = fmul fast float %6020, %6077
  br label %6079

; <label>:6079                                    ; preds = %6064, %5914
  %6080 = phi float [ %6078, %6064 ], [ %5915, %5914 ]
  %6081 = call float @dx.op.binary.f32(i32 36, float %6080, float %6080)  ; FMin(a,b)
  %6082 = call float @dx.op.binary.f32(i32 36, float %6080, float %6081)  ; FMin(a,b)
  %6083 = fcmp fast ogt float %6082, 0.000000e+00
  br i1 %6083, label %6084, label %6335, !dx.controlflow.hints !119

; <label>:6084                                    ; preds = %6079
  %6085 = fmul fast float %6080, %5263
  %6086 = fmul fast float %6080, %5264
  %6087 = fmul fast float %6080, %5265
  %6088 = fsub fast float %193, %4231
  %6089 = fcmp fast ogt float %6088, 0.000000e+00
  %6090 = fmul fast float %5252, 5.120000e+02
  %6091 = fmul fast float %5253, 5.120000e+02
  %6092 = fmul fast float %5254, 5.120000e+02
  %6093 = fadd fast float %6092, %193
  %6094 = fsub fast float %4231, %6093
  %6095 = fmul fast float %6094, 2.000000e+00
  %6096 = fadd fast float %6095, %6093
  %6097 = select i1 %6089, float %6096, float %6093
  %6098 = fsub fast float %6097, %193
  %6099 = call float @dx.op.dot3.f32(i32 55, float %6090, float %6091, float %6098, float %6090, float %6091, float %6098)  ; Dot3(ax,ay,az,bx,by,bz)
  %6100 = call float @dx.op.unary.f32(i32 25, float %6099)  ; Rsqrt(value)
  %6101 = fmul fast float %6100, %6090
  %6102 = fmul fast float %6100, %6091
  %6103 = fmul fast float %6100, %6098
  %6104 = fsub fast float %4231, %193
  %6105 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6104)  ; Dot3(ax,ay,az,bx,by,bz)
  %6106 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6101, float %6102, float %6103)  ; Dot3(ax,ay,az,bx,by,bz)
  %6107 = fdiv fast float 1.000000e+00, %6106
  %6108 = fmul fast float %6107, %6105
  %6109 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6088, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6110 = fcmp fast ogt float %6109, 0.000000e+00
  %6111 = fcmp fast olt float %6109, 0.000000e+00
  %6112 = zext i1 %6110 to i32
  %6113 = zext i1 %6111 to i32
  %6114 = sub nsw i32 %6112, %6113
  %6115 = sitofp i32 %6114 to float
  %6116 = fsub fast float %6097, %4231
  %6117 = call float @dx.op.dot3.f32(i32 55, float %6090, float %6091, float %6116, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6118 = fcmp fast ogt float %6117, 0.000000e+00
  %6119 = fcmp fast olt float %6117, 0.000000e+00
  %6120 = zext i1 %6118 to i32
  %6121 = zext i1 %6119 to i32
  %6122 = sub nsw i32 %6120, %6121
  %6123 = sitofp i32 %6122 to float
  %6124 = fcmp fast une float %6115, %6123
  br i1 %6124, label %6125, label %6135

; <label>:6125                                    ; preds = %6084
  %6126 = fmul fast float %6108, %6103
  %6127 = fmul fast float %6108, %6102
  %6128 = fmul fast float %6108, %6101
  %6129 = fmul fast float %6128, %6128
  %6130 = fmul fast float %6127, %6127
  %6131 = fadd fast float %6129, %6130
  %6132 = fmul fast float %6126, %6126
  %6133 = fadd fast float %6131, %6132
  %6134 = call float @dx.op.unary.f32(i32 24, float %6133)  ; Sqrt(value)
  br label %6145

; <label>:6135                                    ; preds = %6084
  %6136 = icmp slt i32 %6114, 0
  br i1 %6136, label %6137, label %6145

; <label>:6137                                    ; preds = %6135
  %6138 = fsub fast float %193, %6097
  %6139 = fmul fast float %6090, %6090
  %6140 = fmul fast float %6091, %6091
  %6141 = fadd fast float %6139, %6140
  %6142 = fmul fast float %6138, %6138
  %6143 = fadd fast float %6141, %6142
  %6144 = call float @dx.op.unary.f32(i32 24, float %6143)  ; Sqrt(value)
  br label %6145

; <label>:6145                                    ; preds = %6137, %6135, %6125
  %6146 = phi float [ %6134, %6125 ], [ %6144, %6137 ], [ 0.000000e+00, %6135 ]
  %6147 = fsub fast float -0.000000e+00, %6146
  %6148 = select i1 %6089, float -0.000000e+00, float %6147
  %6149 = fmul fast float %4232, 0x3FF7154760000000
  %6150 = fmul fast float %6149, %6148
  %6151 = fmul fast float %4233, 0x3FF7154760000000
  %6152 = fmul fast float %6151, %6148
  %6153 = fmul fast float %4234, 0x3FF7154760000000
  %6154 = fmul fast float %6153, %6148
  %6155 = call float @dx.op.unary.f32(i32 21, float %6150)  ; Exp(value)
  %6156 = call float @dx.op.unary.f32(i32 21, float %6152)  ; Exp(value)
  %6157 = call float @dx.op.unary.f32(i32 21, float %6154)  ; Exp(value)
  %6158 = call float @dx.op.unary.f32(i32 7, float %6155)  ; Saturate(value)
  %6159 = call float @dx.op.unary.f32(i32 7, float %6156)  ; Saturate(value)
  %6160 = call float @dx.op.unary.f32(i32 7, float %6157)  ; Saturate(value)
  %6161 = fmul fast float %6085, %6158
  %6162 = fmul fast float %6086, %6159
  %6163 = fmul fast float %6087, %6160
  %6164 = fsub fast float %5252, %5023
  %6165 = fsub fast float %5253, %5022
  %6166 = fsub fast float %5254, %5021
  %6167 = call float @dx.op.dot3.f32(i32 55, float %6164, float %6165, float %6166, float %6164, float %6165, float %6166)  ; Dot3(ax,ay,az,bx,by,bz)
  %6168 = call float @dx.op.unary.f32(i32 25, float %6167)  ; Rsqrt(value)
  %6169 = fmul fast float %6168, %6164
  %6170 = fmul fast float %6168, %6165
  %6171 = fmul fast float %6168, %6166
  %6172 = call float @dx.op.dot3.f32(i32 55, float %5252, float %5253, float %5254, float %5030, float %5031, float %5032)  ; Dot3(ax,ay,az,bx,by,bz)
  %6173 = call float @dx.op.dot3.f32(i32 55, float %5020, float %5019, float %5018, float %6169, float %6170, float %6171)  ; Dot3(ax,ay,az,bx,by,bz)
  %6174 = call float @dx.op.unary.f32(i32 7, float %6172)  ; Saturate(value)
  %6175 = fmul fast float %6174, %6174
  %6176 = fmul fast float %6175, %5051
  %6177 = call float @dx.op.unary.f32(i32 7, float %6176)  ; Saturate(value)
  %6178 = fmul fast float %6177, %6174
  %6179 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5032, float %6169, float %6170, float %6171)  ; Dot3(ax,ay,az,bx,by,bz)
  %6180 = fmul fast float %6179, %6179
  %6181 = call float @dx.op.unary.f32(i32 6, float %6172)  ; FAbs(value)
  %6182 = fsub fast float 1.000000e+00, %5033
  %6183 = call float @dx.op.binary.f32(i32 35, float %6182, float 0x3F847AE140000000)  ; FMax(a,b)
  %6184 = fmul fast float %6183, %6183
  %6185 = fmul fast float %6184, %6184
  %6186 = fsub fast float 1.000000e+00, %6185
  %6187 = fmul fast float %5038, %5038
  %6188 = fmul fast float %6187, %6186
  %6189 = fadd fast float %6188, %6185
  %6190 = bitcast float %6189 to i32
  %6191 = ashr i32 %6190, 1
  %6192 = add nsw i32 %6191, 532487669
  %6193 = bitcast i32 %6192 to float
  %6194 = fadd fast float %6193, %5038
  %6195 = fmul fast float %6185, %6180
  %6196 = fsub fast float 1.000000e+00, %6180
  %6197 = fadd fast float %6196, %6195
  %6198 = fmul fast float %6181, %6181
  %6199 = fmul fast float %6198, %6186
  %6200 = fadd fast float %6199, %6185
  %6201 = bitcast float %6200 to i32
  %6202 = ashr i32 %6201, 1
  %6203 = add nsw i32 %6202, 532487669
  %6204 = bitcast i32 %6203 to float
  %6205 = fadd fast float %6204, %6181
  %6206 = fmul fast float %6197, %6197
  %6207 = fmul fast float %6206, %6194
  %6208 = fmul fast float %6207, %6205
  %6209 = fdiv fast float 0x3FF0A00000000000, %6208
  %6210 = fmul fast float %6209, %6185
  %6211 = call float @dx.op.unary.f32(i32 6, float %6173)  ; FAbs(value)
  %6212 = fsub fast float 1.000000e+00, %6211
  %6213 = bitcast float %6212 to i32
  %6214 = sitofp i32 %6213 to float
  %6215 = fmul fast float %6214, 5.000000e+00
  %6216 = fadd fast float %6215, 0xC1EFBF8940000000
  %6217 = fptosi float %6216 to i32
  %6218 = bitcast i32 %6217 to float
  %6219 = fsub fast float 1.000000e+00, %5027
  %6220 = fsub fast float 1.000000e+00, %5028
  %6221 = fsub fast float 1.000000e+00, %5036
  %6222 = fmul fast float %6218, %6219
  %6223 = fmul fast float %6218, %6220
  %6224 = fmul fast float %6218, %6221
  %6225 = fadd fast float %6222, %5027
  %6226 = fadd fast float %6223, %5028
  %6227 = fadd fast float %6224, %5036
  br i1 %5163, label %6228, label %6251

; <label>:6228                                    ; preds = %6145
  %6229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3829, float %6211, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6230 = extractvalue %dx.types.ResRet.f32 %6229, 0
  %6231 = extractvalue %dx.types.ResRet.f32 %6229, 1
  %6232 = extractvalue %dx.types.ResRet.f32 %6229, 2
  %6233 = fadd fast float %6230, -5.000000e-01
  %6234 = fadd fast float %6231, -5.000000e-01
  %6235 = fadd fast float %6232, -5.000000e-01
  %6236 = fmul fast float %5027, 4.000000e+00
  %6237 = fmul fast float %6236, %6219
  %6238 = fmul fast float %6237, %6233
  %6239 = fmul fast float %5028, 4.000000e+00
  %6240 = fmul fast float %6239, %6220
  %6241 = fmul fast float %6240, %6234
  %6242 = fmul fast float %5036, 4.000000e+00
  %6243 = fmul fast float %6242, %6221
  %6244 = fmul fast float %6243, %6235
  %6245 = fadd fast float %6238, %6225
  %6246 = fadd fast float %6241, %6226
  %6247 = fadd fast float %6244, %6227
  %6248 = call float @dx.op.unary.f32(i32 7, float %6245)  ; Saturate(value)
  %6249 = call float @dx.op.unary.f32(i32 7, float %6246)  ; Saturate(value)
  %6250 = call float @dx.op.unary.f32(i32 7, float %6247)  ; Saturate(value)
  br label %6251

; <label>:6251                                    ; preds = %6228, %6145
  %6252 = phi float [ %6248, %6228 ], [ %6225, %6145 ]
  %6253 = phi float [ %6249, %6228 ], [ %6226, %6145 ]
  %6254 = phi float [ %6250, %6228 ], [ %6227, %6145 ]
  %6255 = fmul fast float %6172, 9.843750e-01
  %6256 = fadd fast float %6255, 7.812500e-03
  %6257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6256, float %5153, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6258 = extractvalue %dx.types.ResRet.f32 %6257, 2
  %6259 = extractvalue %dx.types.ResRet.f32 %6257, 3
  %6260 = fmul fast float %6258, %5027
  %6261 = fmul fast float %6258, %5028
  %6262 = fmul fast float %6258, %5036
  %6263 = fadd fast float %6260, %6259
  %6264 = fadd fast float %6261, %6259
  %6265 = fadd fast float %6262, %6259
  br i1 %5163, label %6266, label %6289

; <label>:6266                                    ; preds = %6251
  %6267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3829, float %6172, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6268 = extractvalue %dx.types.ResRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.ResRet.f32 %6267, 1
  %6270 = extractvalue %dx.types.ResRet.f32 %6267, 2
  %6271 = fadd fast float %6268, -5.000000e-01
  %6272 = fadd fast float %6269, -5.000000e-01
  %6273 = fadd fast float %6270, -5.000000e-01
  %6274 = fmul fast float %5027, 4.000000e+00
  %6275 = fmul fast float %6274, %6219
  %6276 = fmul fast float %6275, %6271
  %6277 = fmul fast float %5028, 4.000000e+00
  %6278 = fmul fast float %6277, %6220
  %6279 = fmul fast float %6278, %6272
  %6280 = fmul fast float %5036, 4.000000e+00
  %6281 = fmul fast float %6280, %6221
  %6282 = fmul fast float %6281, %6273
  %6283 = fadd fast float %6276, %6263
  %6284 = fadd fast float %6279, %6264
  %6285 = fadd fast float %6282, %6265
  %6286 = call float @dx.op.unary.f32(i32 7, float %6283)  ; Saturate(value)
  %6287 = call float @dx.op.unary.f32(i32 7, float %6284)  ; Saturate(value)
  %6288 = call float @dx.op.unary.f32(i32 7, float %6285)  ; Saturate(value)
  br label %6289

; <label>:6289                                    ; preds = %6266, %6251
  %6290 = phi float [ %6286, %6266 ], [ %6263, %6251 ]
  %6291 = phi float [ %6287, %6266 ], [ %6264, %6251 ]
  %6292 = phi float [ %6288, %6266 ], [ %6265, %6251 ]
  %6293 = call float @dx.op.binary.f32(i32 35, float %6291, float %6292)  ; FMax(a,b)
  %6294 = call float @dx.op.binary.f32(i32 35, float %6290, float %6293)  ; FMax(a,b)
  %6295 = fsub fast float 1.000000e+00, %6294
  %6296 = fmul fast float %6252, %6210
  %6297 = fmul fast float %6253, %6210
  %6298 = fmul fast float %6254, %6210
  %6299 = fsub fast float 1.000000e+00, %6173
  %6300 = bitcast float %6299 to i32
  %6301 = sitofp i32 %6300 to float
  %6302 = fmul fast float %6301, 5.000000e+00
  %6303 = fadd fast float %6302, 0xC1EFBF8940000000
  %6304 = fptosi float %6303 to i32
  %6305 = bitcast i32 %6304 to float
  %6306 = fmul fast float %6305, %3830
  %6307 = fmul fast float %6295, %6306
  %6308 = fmul fast float %6307, %5213
  %6309 = fmul fast float %6307, %5214
  %6310 = fmul fast float %6307, %5215
  %6311 = fadd fast float %6308, %6296
  %6312 = fadd fast float %6309, %6297
  %6313 = fadd fast float %6310, %6298
  %6314 = fmul fast float %6178, %6161
  %6315 = fmul fast float %6314, %6295
  %6316 = fmul fast float %6178, %6162
  %6317 = fmul fast float %6316, %6295
  %6318 = fmul fast float %6178, %6163
  %6319 = fmul fast float %6318, %6295
  %6320 = fmul fast float %6314, %6311
  %6321 = fmul fast float %6316, %6312
  %6322 = fmul fast float %6318, %6313
  %6323 = fadd fast float %6315, %5197
  %6324 = fmul fast float %6323, %3826
  %6325 = fadd fast float %6317, %5198
  %6326 = fmul fast float %6325, %3826
  %6327 = fadd fast float %6319, %5199
  %6328 = fmul fast float %6327, %3826
  %6329 = fadd fast float %6320, %5240
  %6330 = fmul fast float %6329, %3826
  %6331 = fadd fast float %6321, %5243
  %6332 = fmul fast float %6331, %3826
  %6333 = fadd fast float %6322, %5246
  %6334 = fmul fast float %6333, %3826
  br label %6335

; <label>:6335                                    ; preds = %6289, %6079, %5190
  %6336 = phi float [ %5241, %5190 ], [ %5241, %6079 ], [ %6330, %6289 ]
  %6337 = phi float [ %5244, %5190 ], [ %5244, %6079 ], [ %6332, %6289 ]
  %6338 = phi float [ %5247, %5190 ], [ %5247, %6079 ], [ %6334, %6289 ]
  %6339 = phi float [ %5236, %5190 ], [ %5236, %6079 ], [ %6324, %6289 ]
  %6340 = phi float [ %5237, %5190 ], [ %5237, %6079 ], [ %6326, %6289 ]
  %6341 = phi float [ %5238, %5190 ], [ %5238, %6079 ], [ %6328, %6289 ]
  %6342 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6343 = extractvalue %dx.types.CBufRet.i32 %6342, 0
  %6344 = icmp eq i32 %6343, 0
  br i1 %6344, label %6965, label %6345

; <label>:6345                                    ; preds = %6335
  %6346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6347 = extractvalue %dx.types.CBufRet.f32 %6346, 2
  %6348 = extractvalue %dx.types.CBufRet.f32 %6346, 3
  %6349 = fmul fast float %6347, %104
  %6350 = fmul fast float %6348, %105
  %6351 = fptoui float %6349 to i32
  %6352 = fptoui float %6350 to i32
  %6353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6354 = extractvalue %dx.types.CBufRet.f32 %6353, 0
  %6355 = extractvalue %dx.types.CBufRet.f32 %6353, 2
  %6356 = extractvalue %dx.types.CBufRet.f32 %6353, 3
  %6357 = fadd fast float %95, -4.000000e+00
  %6358 = call float @dx.op.binary.f32(i32 35, float %6357, float 0.000000e+00)  ; FMax(a,b)
  %6359 = fadd fast float %6358, %6354
  %6360 = fmul fast float %6359, %6355
  %6361 = call float @dx.op.unary.f32(i32 23, float %6360)  ; Log(value)
  %6362 = fmul fast float %6361, %6356
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 2
  %6365 = fmul fast float %6362, %6364
  %6366 = call float @dx.op.unary.f32(i32 7, float %6365)  ; Saturate(value)
  %6367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6368 = extractvalue %dx.types.CBufRet.i32 %6367, 1
  %6369 = add i32 %6368, -1
  %6370 = uitofp i32 %6368 to float
  %6371 = fmul fast float %6370, %6366
  %6372 = fptoui float %6371 to i32
  %6373 = call i32 @dx.op.binary.i32(i32 40, i32 %6372, i32 %6369)  ; UMin(a,b)
  %6374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6375 = extractvalue %dx.types.CBufRet.i32 %6374, 2
  %6376 = extractvalue %dx.types.CBufRet.i32 %6374, 3
  %6377 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6352, i32 %6375, i32 %6351)  ; UMad(a,b,c)
  %6378 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6373, i32 %6376, i32 %6377)  ; UMad(a,b,c)
  %6379 = add nsw i32 %6343, -1
  %6380 = call i32 @dx.op.binary.i32(i32 37, i32 %6379, i32 0)  ; IMax(a,b)
  %6381 = call float @dx.op.binary.f32(i32 35, float %95, float 0.000000e+00)  ; FMax(a,b)
  %6382 = fptoui float %6381 to i32
  %6383 = lshr i32 %6382, 5
  %6384 = call i32 @dx.op.binary.i32(i32 40, i32 %6383, i32 8191)  ; UMin(a,b)
  %6385 = shl i32 %6384, 2
  %6386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6385, i32 undef)  ; BufferLoad(srv,index,wot)
  %6387 = extractvalue %dx.types.ResRet.i32 %6386, 0
  %6388 = lshr i32 %6387, 16
  %6389 = and i32 %6387, 65535
  %6390 = lshr i32 %6387, 21
  %6391 = lshr i32 %6389, 5
  %6392 = call i32 @dx.op.binary.i32(i32 40, i32 %6391, i32 %6380)  ; UMin(a,b)
  %6393 = icmp ugt i32 %6390, %6392
  br i1 %6393, label %6965, label %6394

; <label>:6394                                    ; preds = %6345
  br label %6395

; <label>:6395                                    ; preds = %6955, %6394
  %6396 = phi i32 [ %6962, %6955 ], [ %6390, %6394 ]
  %6397 = phi float [ %6956, %6955 ], [ %6336, %6394 ]
  %6398 = phi float [ %6957, %6955 ], [ %6337, %6394 ]
  %6399 = phi float [ %6958, %6955 ], [ %6338, %6394 ]
  %6400 = phi float [ %6959, %6955 ], [ %6339, %6394 ]
  %6401 = phi float [ %6960, %6955 ], [ %6340, %6394 ]
  %6402 = phi float [ %6961, %6955 ], [ %6341, %6394 ]
  %6403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.i32 %6403, 0
  %6405 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6378, i32 %6404, i32 %6396)  ; UMad(a,b,c)
  %6406 = shl i32 %6405, 2
  %6407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6406, i32 undef)  ; BufferLoad(srv,index,wot)
  %6408 = extractvalue %dx.types.ResRet.i32 %6407, 0
  %6409 = shl i32 %6396, 5
  %6410 = sub nsw i32 %6388, %6409
  %6411 = call i32 @dx.op.binary.i32(i32 37, i32 %6410, i32 0)  ; IMax(a,b)
  %6412 = call i32 @dx.op.binary.i32(i32 38, i32 %6411, i32 31)  ; IMin(a,b)
  %6413 = sub nsw i32 1, %6388
  %6414 = add nsw i32 %6413, %6389
  %6415 = call i32 @dx.op.binary.i32(i32 37, i32 %6414, i32 0)  ; IMax(a,b)
  %6416 = call i32 @dx.op.binary.i32(i32 38, i32 %6415, i32 32)  ; IMin(a,b)
  %6417 = and i32 %6416, 31
  %6418 = shl i32 -1, %6417
  %6419 = xor i32 %6418, -1
  %6420 = and i32 %6412, 31
  %6421 = shl i32 %6419, %6420
  %6422 = icmp eq i32 %6416, 32
  %6423 = select i1 %6422, i32 -1, i32 %6421
  %6424 = and i32 %6423, %6408
  %6425 = icmp eq i32 %6424, 0
  br i1 %6425, label %6955, label %6426

; <label>:6426                                    ; preds = %6395
  br label %6427

; <label>:6427                                    ; preds = %6561, %6426
  %6428 = phi i32 [ %6439, %6561 ], [ %6424, %6426 ]
  %6429 = phi float [ %6562, %6561 ], [ %6397, %6426 ]
  %6430 = phi float [ %6563, %6561 ], [ %6398, %6426 ]
  %6431 = phi float [ %6564, %6561 ], [ %6399, %6426 ]
  %6432 = phi float [ %6565, %6561 ], [ %6400, %6426 ]
  %6433 = phi float [ %6566, %6561 ], [ %6401, %6426 ]
  %6434 = phi float [ %6567, %6561 ], [ %6402, %6426 ]
  %6435 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6428)  ; FirstbitLo(value)
  %6436 = add i32 %6435, %6409
  %6437 = and i32 %6435, 31
  %6438 = shl i32 1, %6437
  %6439 = xor i32 %6438, %6428
  %6440 = mul i32 %6436, 112
  %6441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6440, i32 undef)  ; BufferLoad(srv,index,wot)
  %6442 = extractvalue %dx.types.ResRet.f32 %6441, 0
  %6443 = extractvalue %dx.types.ResRet.f32 %6441, 1
  %6444 = extractvalue %dx.types.ResRet.f32 %6441, 2
  %6445 = or i32 %6440, 12
  %6446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6445, i32 undef)  ; BufferLoad(srv,index,wot)
  %6447 = extractvalue %dx.types.ResRet.f32 %6446, 0
  %6448 = add i32 %6440, 16
  %6449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6448, i32 undef)  ; BufferLoad(srv,index,wot)
  %6450 = extractvalue %dx.types.ResRet.f32 %6449, 0
  %6451 = extractvalue %dx.types.ResRet.f32 %6449, 1
  %6452 = extractvalue %dx.types.ResRet.f32 %6449, 2
  %6453 = add i32 %6440, 28
  %6454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6453, i32 undef)  ; BufferLoad(srv,index,wot)
  %6455 = extractvalue %dx.types.ResRet.i32 %6454, 0
  %6456 = add i32 %6440, 44
  %6457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6456, i32 undef)  ; BufferLoad(srv,index,wot)
  %6458 = extractvalue %dx.types.ResRet.f32 %6457, 0
  %6459 = add i32 %6440, 48
  %6460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6459, i32 undef)  ; BufferLoad(srv,index,wot)
  %6461 = extractvalue %dx.types.ResRet.f32 %6460, 0
  %6462 = extractvalue %dx.types.ResRet.f32 %6460, 1
  %6463 = extractvalue %dx.types.ResRet.f32 %6460, 2
  %6464 = extractvalue %dx.types.ResRet.f32 %6460, 3
  %6465 = add i32 %6440, 64
  %6466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6465, i32 undef)  ; BufferLoad(srv,index,wot)
  %6467 = extractvalue %dx.types.ResRet.f32 %6466, 0
  %6468 = extractvalue %dx.types.ResRet.f32 %6466, 1
  %6469 = extractvalue %dx.types.ResRet.f32 %6466, 2
  %6470 = extractvalue %dx.types.ResRet.f32 %6466, 3
  %6471 = add i32 %6440, 80
  %6472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6471, i32 undef)  ; BufferLoad(srv,index,wot)
  %6473 = extractvalue %dx.types.ResRet.f32 %6472, 1
  %6474 = extractvalue %dx.types.ResRet.f32 %6472, 2
  %6475 = add i32 %6440, 92
  %6476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6475, i32 undef)  ; BufferLoad(srv,index,wot)
  %6477 = extractvalue %dx.types.ResRet.i32 %6476, 0
  %6478 = call float @dx.op.dot3.f32(i32 55, float %6442, float %6443, float %6444, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6479 = select i1 %250, float %6473, float %6442
  %6480 = select i1 %250, float %6478, float %6443
  %6481 = select i1 %250, float %6474, float %6444
  %6482 = and i32 %6477, 65535
  %6483 = uitofp i32 %6482 to float
  %6484 = lshr i32 %6477, 16
  %6485 = uitofp i32 %6484 to float
  %6486 = and i32 %6455, 65535
  %6487 = and i32 %6455, 50331648
  %6488 = icmp eq i32 %6487, 33554432
  %6489 = fsub fast float %6461, %191
  %6490 = fsub fast float %6462, %192
  %6491 = fsub fast float %6463, %193
  %6492 = call float @dx.op.dot3.f32(i32 55, float %6489, float %6490, float %6491, float %6489, float %6490, float %6491)  ; Dot3(ax,ay,az,bx,by,bz)
  %6493 = call float @dx.op.unary.f32(i32 24, float %6492)  ; Sqrt(value)
  %6494 = fdiv fast float 1.000000e+00, %6493
  %6495 = fmul fast float %6494, %6489
  %6496 = fmul fast float %6494, %6490
  %6497 = fmul fast float %6494, %6491
  %6498 = fadd fast float %6493, %6447
  %6499 = fdiv fast float 1.000000e+00, %6498
  %6500 = fmul float %6458, %6499
  %6501 = fmul float %6500, %6500
  %6502 = call float @dx.op.unary.f32(i32 7, float %6501)  ; Saturate(value)
  br i1 %6488, label %6503, label %6524

; <label>:6503                                    ; preds = %6427
  %6504 = fmul fast float %6469, %6450
  %6505 = fmul fast float %6469, %6451
  %6506 = fmul fast float %6469, %6452
  %6507 = fadd fast float %6489, %6504
  %6508 = fadd fast float %6490, %6505
  %6509 = fadd fast float %6491, %6506
  %6510 = call float @dx.op.dot3.f32(i32 55, float %6507, float %6508, float %6509, float %6507, float %6508, float %6509)  ; Dot3(ax,ay,az,bx,by,bz)
  %6511 = call float @dx.op.unary.f32(i32 25, float %6510)  ; Rsqrt(value)
  %6512 = fmul fast float %6511, %6507
  %6513 = fmul fast float %6511, %6508
  %6514 = fmul fast float %6511, %6509
  %6515 = fsub fast float %191, %6461
  %6516 = fsub fast float %192, %6462
  %6517 = fsub fast float %193, %6463
  %6518 = fsub fast float -0.000000e+00, %6515
  %6519 = fsub fast float -0.000000e+00, %6516
  %6520 = fsub fast float -0.000000e+00, %6517
  %6521 = call float @dx.op.dot3.f32(i32 55, float %6518, float %6519, float %6520, float %6450, float %6451, float %6452)  ; Dot3(ax,ay,az,bx,by,bz)
  %6522 = fcmp fast ogt float %6521, 0.000000e+00
  %6523 = uitofp i1 %6522 to float
  br label %6524

; <label>:6524                                    ; preds = %6503, %6427
  %6525 = phi float [ %6523, %6503 ], [ 1.000000e+00, %6427 ]
  %6526 = phi float [ %6512, %6503 ], [ %6495, %6427 ]
  %6527 = phi float [ %6513, %6503 ], [ %6496, %6427 ]
  %6528 = phi float [ %6514, %6503 ], [ %6497, %6427 ]
  %6529 = call float @dx.op.dot3.f32(i32 55, float %6450, float %6451, float %6452, float %6526, float %6527, float %6528)  ; Dot3(ax,ay,az,bx,by,bz)
  %6530 = fmul fast float %6529, %6529
  %6531 = call float @dx.op.unary.f32(i32 7, float %6530)  ; Saturate(value)
  %6532 = fsub fast float 1.000000e+00, %6531
  %6533 = fmul fast float %6532, 5.000000e-01
  %6534 = fcmp fast ogt float %6529, 0.000000e+00
  %6535 = fsub fast float 1.000000e+00, %6533
  %6536 = select i1 %6534, float %6533, float %6535
  %6537 = fmul fast float %6536, %6485
  %6538 = fadd fast float %6537, %6483
  %6539 = fmul fast float %6538, 0x3EF0001000000000
  %6540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %48, float %6539, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6541 = extractvalue %dx.types.ResRet.f32 %6540, 0
  %6542 = fmul fast float %6529, %6467
  %6543 = fadd fast float %6542, %6468
  %6544 = call float @dx.op.unary.f32(i32 7, float %6543)  ; Saturate(value)
  %6545 = select i1 %6488, float 1.000000e+00, float %6544
  %6546 = select i1 %6488, float %6544, float 1.000000e+00
  %6547 = fmul fast float %6493, %6464
  %6548 = fsub fast float 1.000000e+00, %6547
  %6549 = fmul fast float %6548, %6470
  %6550 = call float @dx.op.unary.f32(i32 7, float %6549)  ; Saturate(value)
  %6551 = fmul fast float %6550, %6546
  %6552 = fmul fast float %6551, 2.000000e+00
  %6553 = fsub fast float 3.000000e+00, %6552
  %6554 = fmul fast float %6541, %6525
  %6555 = fmul fast float %6551, %6551
  %6556 = fmul fast float %6555, %6554
  %6557 = fmul fast float %6556, %6553
  %6558 = call float @dx.op.binary.f32(i32 36, float %6557, float %6557)  ; FMin(a,b)
  %6559 = call float @dx.op.binary.f32(i32 36, float %6557, float %6558)  ; FMin(a,b)
  %6560 = fcmp fast ogt float %6559, 0.000000e+00
  br i1 %6560, label %6569, label %6561, !dx.controlflow.hints !120

; <label>:6561                                    ; preds = %6911, %6669, %6524
  %6562 = phi float [ %6429, %6669 ], [ %6429, %6524 ], [ %6951, %6911 ]
  %6563 = phi float [ %6430, %6669 ], [ %6430, %6524 ], [ %6952, %6911 ]
  %6564 = phi float [ %6431, %6669 ], [ %6431, %6524 ], [ %6953, %6911 ]
  %6565 = phi float [ %6432, %6669 ], [ %6432, %6524 ], [ %6945, %6911 ]
  %6566 = phi float [ %6433, %6669 ], [ %6433, %6524 ], [ %6946, %6911 ]
  %6567 = phi float [ %6434, %6669 ], [ %6434, %6524 ], [ %6947, %6911 ]
  %6568 = icmp eq i32 %6428, %6438
  br i1 %6568, label %6954, label %6427

; <label>:6569                                    ; preds = %6524
  %6570 = icmp eq i32 %6486, 255
  br i1 %6570, label %6669, label %6571, !dx.controlflow.hints !121

; <label>:6571                                    ; preds = %6569
  %6572 = mul nuw nsw i32 %6486, 176
  %6573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6572, i32 undef)  ; BufferLoad(srv,index,wot)
  %6574 = extractvalue %dx.types.ResRet.f32 %6573, 0
  %6575 = extractvalue %dx.types.ResRet.f32 %6573, 1
  %6576 = extractvalue %dx.types.ResRet.f32 %6573, 2
  %6577 = extractvalue %dx.types.ResRet.f32 %6573, 3
  %6578 = add nuw nsw i32 %6572, 16
  %6579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6578, i32 undef)  ; BufferLoad(srv,index,wot)
  %6580 = extractvalue %dx.types.ResRet.f32 %6579, 0
  %6581 = extractvalue %dx.types.ResRet.f32 %6579, 1
  %6582 = add nuw nsw i32 %6572, 32
  %6583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6582, i32 undef)  ; BufferLoad(srv,index,wot)
  %6584 = extractvalue %dx.types.ResRet.f32 %6583, 0
  %6585 = extractvalue %dx.types.ResRet.f32 %6583, 1
  %6586 = extractvalue %dx.types.ResRet.f32 %6583, 2
  %6587 = add nuw nsw i32 %6572, 48
  %6588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6587, i32 undef)  ; BufferLoad(srv,index,wot)
  %6589 = extractvalue %dx.types.ResRet.f32 %6588, 0
  %6590 = extractvalue %dx.types.ResRet.f32 %6588, 1
  %6591 = extractvalue %dx.types.ResRet.f32 %6588, 2
  %6592 = extractvalue %dx.types.ResRet.f32 %6588, 3
  %6593 = add nuw nsw i32 %6572, 64
  %6594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6593, i32 undef)  ; BufferLoad(srv,index,wot)
  %6595 = extractvalue %dx.types.ResRet.f32 %6594, 0
  %6596 = extractvalue %dx.types.ResRet.f32 %6594, 1
  %6597 = extractvalue %dx.types.ResRet.f32 %6594, 2
  %6598 = extractvalue %dx.types.ResRet.f32 %6594, 3
  %6599 = add nuw nsw i32 %6572, 80
  %6600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6599, i32 undef)  ; BufferLoad(srv,index,wot)
  %6601 = extractvalue %dx.types.ResRet.f32 %6600, 0
  %6602 = extractvalue %dx.types.ResRet.f32 %6600, 1
  %6603 = extractvalue %dx.types.ResRet.f32 %6600, 2
  %6604 = extractvalue %dx.types.ResRet.f32 %6600, 3
  %6605 = add nuw nsw i32 %6572, 96
  %6606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6605, i32 undef)  ; BufferLoad(srv,index,wot)
  %6607 = extractvalue %dx.types.ResRet.f32 %6606, 0
  %6608 = extractvalue %dx.types.ResRet.f32 %6606, 1
  %6609 = extractvalue %dx.types.ResRet.f32 %6606, 2
  %6610 = extractvalue %dx.types.ResRet.f32 %6606, 3
  %6611 = bitcast float %6581 to i32
  %6612 = fmul fast float %6586, %111
  %6613 = fmul fast float %6586, %112
  %6614 = fmul fast float %6586, %113
  %6615 = fadd fast float %6612, %191
  %6616 = fadd fast float %6613, %192
  %6617 = fadd fast float %6614, %193
  %6618 = fmul fast float %6615, %6589
  %6619 = call float @dx.op.tertiary.f32(i32 46, float %6616, float %6595, float %6618)  ; FMad(a,b,c)
  %6620 = call float @dx.op.tertiary.f32(i32 46, float %6617, float %6601, float %6619)  ; FMad(a,b,c)
  %6621 = fadd fast float %6620, %6607
  %6622 = fmul fast float %6615, %6590
  %6623 = call float @dx.op.tertiary.f32(i32 46, float %6616, float %6596, float %6622)  ; FMad(a,b,c)
  %6624 = call float @dx.op.tertiary.f32(i32 46, float %6617, float %6602, float %6623)  ; FMad(a,b,c)
  %6625 = fadd fast float %6624, %6608
  %6626 = fmul fast float %6615, %6591
  %6627 = call float @dx.op.tertiary.f32(i32 46, float %6616, float %6597, float %6626)  ; FMad(a,b,c)
  %6628 = call float @dx.op.tertiary.f32(i32 46, float %6617, float %6603, float %6627)  ; FMad(a,b,c)
  %6629 = fadd fast float %6628, %6609
  %6630 = fmul fast float %6615, %6592
  %6631 = call float @dx.op.tertiary.f32(i32 46, float %6616, float %6598, float %6630)  ; FMad(a,b,c)
  %6632 = call float @dx.op.tertiary.f32(i32 46, float %6617, float %6604, float %6631)  ; FMad(a,b,c)
  %6633 = fadd fast float %6632, %6610
  %6634 = fdiv fast float %6621, %6633
  %6635 = fdiv fast float %6625, %6633
  %6636 = fdiv fast float %6629, %6633
  %6637 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6636)  ; FMax(a,b)
  %6638 = fmul fast float %261, 0x401921FB60000000
  %6639 = call float @dx.op.unary.f32(i32 13, float %6638)  ; Sin(value)
  %6640 = call float @dx.op.unary.f32(i32 12, float %6638)  ; Cos(value)
  %6641 = fsub fast float -0.000000e+00, %6639
  %6642 = fmul fast float %6576, 5.000000e-01
  %6643 = call float @dx.op.dot2.f32(i32 54, float %261, float %261, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6644 = call float @dx.op.unary.f32(i32 22, float %6643)  ; Frc(value)
  %6645 = fmul fast float %6644, 0x404A7DD040000000
  %6646 = call float @dx.op.unary.f32(i32 22, float %6645)  ; Frc(value)
  %6647 = fmul fast float %6646, %6585
  %6648 = fadd fast float %6647, %6642
  %6649 = call float @dx.op.tertiary.f32(i32 46, float %6648, float %6641, float 0.000000e+00)  ; FMad(a,b,c)
  %6650 = call float @dx.op.tertiary.f32(i32 46, float %6648, float %6640, float 0.000000e+00)  ; FMad(a,b,c)
  %6651 = fadd fast float %6649, %6634
  %6652 = fadd fast float %6650, %6635
  %6653 = fmul fast float %6651, %6580
  %6654 = fmul fast float %6652, %6580
  %6655 = call float @dx.op.binary.f32(i32 35, float %6653, float %6576)  ; FMax(a,b)
  %6656 = call float @dx.op.binary.f32(i32 35, float %6654, float %6576)  ; FMax(a,b)
  %6657 = call float @dx.op.binary.f32(i32 36, float %6655, float %6577)  ; FMin(a,b)
  %6658 = call float @dx.op.binary.f32(i32 36, float %6656, float %6577)  ; FMin(a,b)
  %6659 = fadd fast float %6657, %6574
  %6660 = fadd fast float %6658, %6575
  %6661 = uitofp i32 %6611 to float
  %6662 = fadd fast float %6637, %6584
  %6663 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %50, float %6659, float %6660, float %6661, float undef, i32 0, i32 0, i32 undef, float %6662)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6664 = extractvalue %dx.types.ResRet.f32 %6663, 0
  %6665 = fadd fast float %6664, -1.000000e+00
  %6666 = fmul fast float %6665, %6545
  %6667 = fadd fast float %6666, 1.000000e+00
  %6668 = fmul fast float %6667, %6557
  br label %6669

; <label>:6669                                    ; preds = %6571, %6569
  %6670 = phi float [ %6668, %6571 ], [ %6557, %6569 ]
  %6671 = call float @dx.op.binary.f32(i32 36, float %6670, float %6670)  ; FMin(a,b)
  %6672 = call float @dx.op.binary.f32(i32 36, float %6670, float %6671)  ; FMin(a,b)
  %6673 = fcmp fast ogt float %6672, 0.000000e+00
  br i1 %6673, label %6674, label %6561, !dx.controlflow.hints !122

; <label>:6674                                    ; preds = %6669
  %6675 = fmul fast float %6670, %6479
  %6676 = fmul fast float %6670, %6480
  %6677 = fmul fast float %6670, %6481
  %6678 = fsub fast float %6463, %4231
  %6679 = fcmp fast ogt float %6678, 0.000000e+00
  %6680 = fsub fast float %193, %4231
  %6681 = fcmp fast ogt float %6680, 0.000000e+00
  %6682 = xor i1 %6681, %6679
  %6683 = fsub fast float %4231, %6463
  %6684 = fmul fast float %6683, 2.000000e+00
  %6685 = fadd fast float %6684, %6463
  %6686 = select i1 %6682, float %6463, float %6685
  %6687 = fsub fast float %6686, %193
  %6688 = call float @dx.op.dot3.f32(i32 55, float %6489, float %6490, float %6687, float %6489, float %6490, float %6687)  ; Dot3(ax,ay,az,bx,by,bz)
  %6689 = call float @dx.op.unary.f32(i32 25, float %6688)  ; Rsqrt(value)
  %6690 = fmul fast float %6689, %6489
  %6691 = fmul fast float %6689, %6490
  %6692 = fmul fast float %6689, %6687
  %6693 = fsub fast float %4231, %193
  %6694 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6693)  ; Dot3(ax,ay,az,bx,by,bz)
  %6695 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6690, float %6691, float %6692)  ; Dot3(ax,ay,az,bx,by,bz)
  %6696 = fdiv fast float 1.000000e+00, %6695
  %6697 = fmul fast float %6696, %6694
  %6698 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6680, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6699 = fcmp fast ogt float %6698, 0.000000e+00
  %6700 = fcmp fast olt float %6698, 0.000000e+00
  %6701 = zext i1 %6699 to i32
  %6702 = zext i1 %6700 to i32
  %6703 = sub nsw i32 %6701, %6702
  %6704 = sitofp i32 %6703 to float
  %6705 = fsub fast float %6686, %4231
  %6706 = call float @dx.op.dot3.f32(i32 55, float %6489, float %6490, float %6705, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6707 = fcmp fast ogt float %6706, 0.000000e+00
  %6708 = fcmp fast olt float %6706, 0.000000e+00
  %6709 = zext i1 %6707 to i32
  %6710 = zext i1 %6708 to i32
  %6711 = sub nsw i32 %6709, %6710
  %6712 = sitofp i32 %6711 to float
  %6713 = fcmp fast une float %6704, %6712
  br i1 %6713, label %6714, label %6724

; <label>:6714                                    ; preds = %6674
  %6715 = fmul fast float %6697, %6692
  %6716 = fmul fast float %6697, %6691
  %6717 = fmul fast float %6697, %6690
  %6718 = fmul fast float %6717, %6717
  %6719 = fmul fast float %6716, %6716
  %6720 = fadd fast float %6718, %6719
  %6721 = fmul fast float %6715, %6715
  %6722 = fadd fast float %6720, %6721
  %6723 = call float @dx.op.unary.f32(i32 24, float %6722)  ; Sqrt(value)
  br label %6736

; <label>:6724                                    ; preds = %6674
  %6725 = icmp slt i32 %6703, 0
  br i1 %6725, label %6726, label %6736

; <label>:6726                                    ; preds = %6724
  %6727 = fsub fast float %191, %6461
  %6728 = fsub fast float %192, %6462
  %6729 = fsub fast float %193, %6686
  %6730 = fmul fast float %6727, %6727
  %6731 = fmul fast float %6728, %6728
  %6732 = fadd fast float %6730, %6731
  %6733 = fmul fast float %6729, %6729
  %6734 = fadd fast float %6732, %6733
  %6735 = call float @dx.op.unary.f32(i32 24, float %6734)  ; Sqrt(value)
  br label %6736

; <label>:6736                                    ; preds = %6726, %6724, %6714
  %6737 = phi float [ %6723, %6714 ], [ %6735, %6726 ], [ 0.000000e+00, %6724 ]
  %6738 = and i1 %6681, %6679
  %6739 = fsub fast float -0.000000e+00, %6737
  %6740 = select i1 %6738, float -0.000000e+00, float %6739
  %6741 = fmul fast float %4232, 0x3FF7154760000000
  %6742 = fmul fast float %6741, %6740
  %6743 = fmul fast float %4233, 0x3FF7154760000000
  %6744 = fmul fast float %6743, %6740
  %6745 = fmul fast float %4234, 0x3FF7154760000000
  %6746 = fmul fast float %6745, %6740
  %6747 = call float @dx.op.unary.f32(i32 21, float %6742)  ; Exp(value)
  %6748 = call float @dx.op.unary.f32(i32 21, float %6744)  ; Exp(value)
  %6749 = call float @dx.op.unary.f32(i32 21, float %6746)  ; Exp(value)
  %6750 = call float @dx.op.unary.f32(i32 7, float %6747)  ; Saturate(value)
  %6751 = call float @dx.op.unary.f32(i32 7, float %6748)  ; Saturate(value)
  %6752 = call float @dx.op.unary.f32(i32 7, float %6749)  ; Saturate(value)
  %6753 = fmul fast float %6675, %6750
  %6754 = fmul fast float %6676, %6751
  %6755 = fmul fast float %6677, %6752
  %6756 = fsub fast float %6495, %5023
  %6757 = fsub fast float %6496, %5022
  %6758 = fsub fast float %6497, %5021
  %6759 = call float @dx.op.dot3.f32(i32 55, float %6756, float %6757, float %6758, float %6756, float %6757, float %6758)  ; Dot3(ax,ay,az,bx,by,bz)
  %6760 = call float @dx.op.unary.f32(i32 25, float %6759)  ; Rsqrt(value)
  %6761 = fmul fast float %6760, %6756
  %6762 = fmul fast float %6760, %6757
  %6763 = fmul fast float %6760, %6758
  %6764 = call float @dx.op.dot3.f32(i32 55, float %6495, float %6496, float %6497, float %5030, float %5031, float %5032)  ; Dot3(ax,ay,az,bx,by,bz)
  %6765 = call float @dx.op.dot3.f32(i32 55, float %5020, float %5019, float %5018, float %6761, float %6762, float %6763)  ; Dot3(ax,ay,az,bx,by,bz)
  %6766 = call float @dx.op.unary.f32(i32 7, float %6764)  ; Saturate(value)
  %6767 = fmul fast float %6766, %6502
  %6768 = fmul fast float %6766, %6766
  %6769 = fmul fast float %6768, %5051
  %6770 = call float @dx.op.unary.f32(i32 7, float %6769)  ; Saturate(value)
  %6771 = fmul fast float %6767, %6770
  %6772 = bitcast float %6492 to i32
  %6773 = ashr i32 %6772, 1
  %6774 = sub nsw i32 1597463007, %6773
  %6775 = bitcast i32 %6774 to float
  %6776 = fmul fast float %6775, %6489
  %6777 = fmul fast float %6775, %6490
  %6778 = fmul fast float %6775, %6491
  %6779 = fsub fast float %6776, %5023
  %6780 = fsub fast float %6777, %5022
  %6781 = fsub fast float %6778, %5021
  %6782 = call float @dx.op.dot3.f32(i32 55, float %6779, float %6780, float %6781, float %6779, float %6780, float %6781)  ; Dot3(ax,ay,az,bx,by,bz)
  %6783 = call float @dx.op.unary.f32(i32 25, float %6782)  ; Rsqrt(value)
  %6784 = fmul fast float %6779, %6783
  %6785 = fmul fast float %6780, %6783
  %6786 = fmul fast float %6781, %6783
  %6787 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5032, float %6784, float %6785, float %6786)  ; Dot3(ax,ay,az,bx,by,bz)
  %6788 = fmul fast float %6787, %6787
  %6789 = call float @dx.op.unary.f32(i32 6, float %6764)  ; FAbs(value)
  %6790 = fsub fast float 1.000000e+00, %5033
  %6791 = call float @dx.op.binary.f32(i32 35, float %6790, float 0x3F847AE140000000)  ; FMax(a,b)
  %6792 = fmul fast float %6791, %6791
  %6793 = fmul fast float %6792, %6792
  %6794 = fsub fast float 1.000000e+00, %6793
  %6795 = fmul fast float %5038, %5038
  %6796 = fmul fast float %6795, %6794
  %6797 = fadd fast float %6796, %6793
  %6798 = bitcast float %6797 to i32
  %6799 = ashr i32 %6798, 1
  %6800 = add nsw i32 %6799, 532487669
  %6801 = bitcast i32 %6800 to float
  %6802 = fadd fast float %6801, %5038
  %6803 = fmul fast float %6793, %6788
  %6804 = fsub fast float 1.000000e+00, %6788
  %6805 = fadd fast float %6804, %6803
  %6806 = fmul fast float %6789, %6789
  %6807 = fmul fast float %6806, %6794
  %6808 = fadd fast float %6807, %6793
  %6809 = bitcast float %6808 to i32
  %6810 = ashr i32 %6809, 1
  %6811 = add nsw i32 %6810, 532487669
  %6812 = bitcast i32 %6811 to float
  %6813 = fadd fast float %6812, %6789
  %6814 = fmul fast float %6805, %6805
  %6815 = fmul fast float %6814, %6802
  %6816 = fmul fast float %6815, %6813
  %6817 = fdiv fast float 1.000000e+00, %6816
  %6818 = bitcast float %6793 to i32
  %6819 = sitofp i32 %6818 to float
  %6820 = fmul fast float %6819, 0x3FE7F73180000000
  %6821 = fadd fast float %6820, 0x41AFE27C40000000
  %6822 = fptosi float %6821 to i32
  %6823 = bitcast i32 %6822 to float
  %6824 = fmul fast float %6458, 0x3FD80E9D60000000
  %6825 = fmul fast float %6824, %6775
  %6826 = fadd fast float %6823, %6825
  %6827 = bitcast float %6826 to i32
  %6828 = sub nsw i32 2129859010, %6827
  %6829 = bitcast i32 %6828 to float
  %6830 = fmul fast float %6793, %6817
  %6831 = fmul fast float %6830, %6823
  %6832 = fmul fast float %6831, %6829
  %6833 = call float @dx.op.unary.f32(i32 6, float %6765)  ; FAbs(value)
  %6834 = fsub fast float 1.000000e+00, %6833
  %6835 = bitcast float %6834 to i32
  %6836 = sitofp i32 %6835 to float
  %6837 = fmul fast float %6836, 5.000000e+00
  %6838 = fadd fast float %6837, 0xC1EFBF8940000000
  %6839 = fptosi float %6838 to i32
  %6840 = bitcast i32 %6839 to float
  %6841 = fsub fast float 1.000000e+00, %5027
  %6842 = fsub fast float 1.000000e+00, %5028
  %6843 = fsub fast float 1.000000e+00, %5036
  %6844 = fmul fast float %6840, %6841
  %6845 = fmul fast float %6840, %6842
  %6846 = fmul fast float %6840, %6843
  %6847 = fadd fast float %6844, %5027
  %6848 = fadd fast float %6845, %5028
  %6849 = fadd fast float %6846, %5036
  br i1 %5163, label %6850, label %6873

; <label>:6850                                    ; preds = %6736
  %6851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3829, float %6833, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6852 = extractvalue %dx.types.ResRet.f32 %6851, 0
  %6853 = extractvalue %dx.types.ResRet.f32 %6851, 1
  %6854 = extractvalue %dx.types.ResRet.f32 %6851, 2
  %6855 = fadd fast float %6852, -5.000000e-01
  %6856 = fadd fast float %6853, -5.000000e-01
  %6857 = fadd fast float %6854, -5.000000e-01
  %6858 = fmul fast float %5027, 4.000000e+00
  %6859 = fmul fast float %6858, %6841
  %6860 = fmul fast float %6859, %6855
  %6861 = fmul fast float %5028, 4.000000e+00
  %6862 = fmul fast float %6861, %6842
  %6863 = fmul fast float %6862, %6856
  %6864 = fmul fast float %5036, 4.000000e+00
  %6865 = fmul fast float %6864, %6843
  %6866 = fmul fast float %6865, %6857
  %6867 = fadd fast float %6860, %6847
  %6868 = fadd fast float %6863, %6848
  %6869 = fadd fast float %6866, %6849
  %6870 = call float @dx.op.unary.f32(i32 7, float %6867)  ; Saturate(value)
  %6871 = call float @dx.op.unary.f32(i32 7, float %6868)  ; Saturate(value)
  %6872 = call float @dx.op.unary.f32(i32 7, float %6869)  ; Saturate(value)
  br label %6873

; <label>:6873                                    ; preds = %6850, %6736
  %6874 = phi float [ %6870, %6850 ], [ %6847, %6736 ]
  %6875 = phi float [ %6871, %6850 ], [ %6848, %6736 ]
  %6876 = phi float [ %6872, %6850 ], [ %6849, %6736 ]
  %6877 = fmul fast float %6764, 9.843750e-01
  %6878 = fadd fast float %6877, 7.812500e-03
  %6879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6878, float %5153, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6880 = extractvalue %dx.types.ResRet.f32 %6879, 2
  %6881 = extractvalue %dx.types.ResRet.f32 %6879, 3
  %6882 = fmul fast float %6880, %5027
  %6883 = fmul fast float %6880, %5028
  %6884 = fmul fast float %6880, %5036
  %6885 = fadd fast float %6882, %6881
  %6886 = fadd fast float %6883, %6881
  %6887 = fadd fast float %6884, %6881
  br i1 %5163, label %6888, label %6911

; <label>:6888                                    ; preds = %6873
  %6889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3829, float %6764, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6890 = extractvalue %dx.types.ResRet.f32 %6889, 0
  %6891 = extractvalue %dx.types.ResRet.f32 %6889, 1
  %6892 = extractvalue %dx.types.ResRet.f32 %6889, 2
  %6893 = fadd fast float %6890, -5.000000e-01
  %6894 = fadd fast float %6891, -5.000000e-01
  %6895 = fadd fast float %6892, -5.000000e-01
  %6896 = fmul fast float %5027, 4.000000e+00
  %6897 = fmul fast float %6896, %6841
  %6898 = fmul fast float %6897, %6893
  %6899 = fmul fast float %5028, 4.000000e+00
  %6900 = fmul fast float %6899, %6842
  %6901 = fmul fast float %6900, %6894
  %6902 = fmul fast float %5036, 4.000000e+00
  %6903 = fmul fast float %6902, %6843
  %6904 = fmul fast float %6903, %6895
  %6905 = fadd fast float %6898, %6885
  %6906 = fadd fast float %6901, %6886
  %6907 = fadd fast float %6904, %6887
  %6908 = call float @dx.op.unary.f32(i32 7, float %6905)  ; Saturate(value)
  %6909 = call float @dx.op.unary.f32(i32 7, float %6906)  ; Saturate(value)
  %6910 = call float @dx.op.unary.f32(i32 7, float %6907)  ; Saturate(value)
  br label %6911

; <label>:6911                                    ; preds = %6888, %6873
  %6912 = phi float [ %6908, %6888 ], [ %6885, %6873 ]
  %6913 = phi float [ %6909, %6888 ], [ %6886, %6873 ]
  %6914 = phi float [ %6910, %6888 ], [ %6887, %6873 ]
  %6915 = call float @dx.op.binary.f32(i32 35, float %6913, float %6914)  ; FMax(a,b)
  %6916 = call float @dx.op.binary.f32(i32 35, float %6912, float %6915)  ; FMax(a,b)
  %6917 = fsub fast float 1.000000e+00, %6916
  %6918 = fmul fast float %6874, %6832
  %6919 = fmul fast float %6875, %6832
  %6920 = fmul fast float %6876, %6832
  %6921 = fsub fast float 1.000000e+00, %6765
  %6922 = bitcast float %6921 to i32
  %6923 = sitofp i32 %6922 to float
  %6924 = fmul fast float %6923, 5.000000e+00
  %6925 = fadd fast float %6924, 0xC1EFBF8940000000
  %6926 = fptosi float %6925 to i32
  %6927 = bitcast i32 %6926 to float
  %6928 = fmul fast float %6927, %3830
  %6929 = fmul fast float %6917, %6928
  %6930 = fmul fast float %6929, %5213
  %6931 = fmul fast float %6929, %5214
  %6932 = fmul fast float %6929, %5215
  %6933 = fadd fast float %6930, %6918
  %6934 = fadd fast float %6931, %6919
  %6935 = fadd fast float %6932, %6920
  %6936 = fmul fast float %6753, %3826
  %6937 = fmul fast float %6936, %6771
  %6938 = fmul fast float %6937, %6917
  %6939 = fmul fast float %6754, %3826
  %6940 = fmul fast float %6939, %6771
  %6941 = fmul fast float %6940, %6917
  %6942 = fmul fast float %6755, %3826
  %6943 = fmul fast float %6942, %6771
  %6944 = fmul fast float %6943, %6917
  %6945 = fadd fast float %6938, %6432
  %6946 = fadd fast float %6941, %6433
  %6947 = fadd fast float %6944, %6434
  %6948 = fmul fast float %6937, %6933
  %6949 = fmul fast float %6940, %6934
  %6950 = fmul fast float %6943, %6935
  %6951 = fadd fast float %6948, %6429
  %6952 = fadd fast float %6949, %6430
  %6953 = fadd fast float %6950, %6431
  br label %6561

; <label>:6954                                    ; preds = %6561
  br label %6955

; <label>:6955                                    ; preds = %6954, %6395
  %6956 = phi float [ %6397, %6395 ], [ %6562, %6954 ]
  %6957 = phi float [ %6398, %6395 ], [ %6563, %6954 ]
  %6958 = phi float [ %6399, %6395 ], [ %6564, %6954 ]
  %6959 = phi float [ %6400, %6395 ], [ %6565, %6954 ]
  %6960 = phi float [ %6401, %6395 ], [ %6566, %6954 ]
  %6961 = phi float [ %6402, %6395 ], [ %6567, %6954 ]
  %6962 = add i32 %6396, 1
  %6963 = icmp ugt i32 %6962, %6392
  br i1 %6963, label %6964, label %6395

; <label>:6964                                    ; preds = %6955
  br label %6965

; <label>:6965                                    ; preds = %6964, %6345, %6335
  %6966 = phi float [ %6336, %6335 ], [ %6336, %6345 ], [ %6956, %6964 ]
  %6967 = phi float [ %6337, %6335 ], [ %6337, %6345 ], [ %6957, %6964 ]
  %6968 = phi float [ %6338, %6335 ], [ %6338, %6345 ], [ %6958, %6964 ]
  %6969 = phi float [ %6339, %6335 ], [ %6339, %6345 ], [ %6959, %6964 ]
  %6970 = phi float [ %6340, %6335 ], [ %6340, %6345 ], [ %6960, %6964 ]
  %6971 = phi float [ %6341, %6335 ], [ %6341, %6345 ], [ %6961, %6964 ]
  %6972 = fmul fast float %3826, %3826
  %6973 = fsub fast float 1.000000e+00, %6972
  %6974 = call float @dx.op.dot3.f32(i32 55, float %6973, float %6973, float %6973, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6975 = fsub fast float 1.000000e+00, %6974
  %6976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6977 = extractvalue %dx.types.CBufRet.f32 %6976, 0
  %6978 = fmul fast float %6977, %5219
  %6979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6980 = extractvalue %dx.types.CBufRet.f32 %6979, 3
  %6981 = fsub fast float 1.000000e+00, %3834
  %6982 = call float @dx.op.unary.f32(i32 7, float %6981)  ; Saturate(value)
  %6983 = fadd fast float %6971, %3832
  %6984 = fmul fast float %6983, %3834
  %6985 = fmul fast float %6982, %6980
  %6986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6987 = extractvalue %dx.types.CBufRet.f32 %6986, 3
  %6988 = fmul fast float %6969, %5024
  %6989 = fmul fast float %6970, %5025
  %6990 = fmul fast float %6971, %5026
  %6991 = fcmp fast ogt float %95, %213
  %6992 = and i1 %6991, %4237
  %6993 = or i1 %4243, %6992
  %6994 = icmp eq i32 %4236, 2
  %6995 = fcmp fast ole float %95, %213
  %6996 = and i1 %6995, %6994
  %6997 = or i1 %6996, %6993
  br i1 %6992, label %6998, label %7255

; <label>:6998                                    ; preds = %6965
  %6999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7000 = extractvalue %dx.types.CBufRet.f32 %6999, 2
  %7001 = extractvalue %dx.types.CBufRet.f32 %6999, 3
  %7002 = fmul fast float %7000, %104
  %7003 = fmul fast float %7001, %105
  %7004 = call float @dx.op.unary.f32(i32 7, float %7002)  ; Saturate(value)
  %7005 = call float @dx.op.unary.f32(i32 7, float %7003)  ; Saturate(value)
  %7006 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7004, float %7005, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7007 = extractvalue %dx.types.ResRet.f32 %7006, 0
  %7008 = extractvalue %dx.types.ResRet.f32 %7006, 1
  %7009 = extractvalue %dx.types.ResRet.f32 %7006, 2
  %7010 = extractvalue %dx.types.ResRet.f32 %7006, 3
  %7011 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7004, float %7005, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7012 = extractvalue %dx.types.ResRet.f32 %7011, 0
  %7013 = extractvalue %dx.types.ResRet.f32 %7011, 1
  %7014 = extractvalue %dx.types.ResRet.f32 %7011, 2
  %7015 = extractvalue %dx.types.ResRet.f32 %7011, 3
  %7016 = call float @dx.op.binary.f32(i32 35, float %7008, float %7009)  ; FMax(a,b)
  %7017 = call float @dx.op.binary.f32(i32 35, float %7007, float %7016)  ; FMax(a,b)
  %7018 = call float @dx.op.binary.f32(i32 35, float %7017, float %7010)  ; FMax(a,b)
  %7019 = call float @dx.op.binary.f32(i32 36, float %7013, float %7014)  ; FMin(a,b)
  %7020 = call float @dx.op.binary.f32(i32 36, float %7012, float %7019)  ; FMin(a,b)
  %7021 = call float @dx.op.binary.f32(i32 36, float %7020, float %7015)  ; FMin(a,b)
  %7022 = fmul fast float %7018, 2.550000e+02
  %7023 = fadd fast float %7022, 0x3F70101020000000
  %7024 = fptoui float %7023 to i32
  %7025 = fmul fast float %7021, 2.550000e+02
  %7026 = fadd fast float %7025, 0x3F70101020000000
  %7027 = fptoui float %7026 to i32
  %7028 = icmp ult i32 %7024, %7027
  br i1 %7028, label %7029, label %7197

; <label>:7029                                    ; preds = %6998
  %7030 = fcmp fast ogt float %94, 9.843750e-01
  %7031 = fadd fast float %95, -4.000000e+00
  %7032 = select i1 %7030, float -4.000000e+00, float %7031
  %7033 = call float @dx.op.binary.f32(i32 35, float %7032, float 0.000000e+00)  ; FMax(a,b)
  %7034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7035 = extractvalue %dx.types.CBufRet.f32 %7034, 0
  %7036 = fadd fast float %7035, %7033
  %7037 = extractvalue %dx.types.CBufRet.f32 %7034, 2
  %7038 = fmul fast float %7036, %7037
  %7039 = call float @dx.op.unary.f32(i32 23, float %7038)  ; Log(value)
  %7040 = extractvalue %dx.types.CBufRet.f32 %7034, 3
  %7041 = fmul fast float %7040, %7039
  %7042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7043 = extractvalue %dx.types.CBufRet.f32 %7042, 2
  %7044 = fmul fast float %7041, %7043
  %7045 = call float @dx.op.unary.f32(i32 7, float %7044)  ; Saturate(value)
  %7046 = uitofp i32 %7024 to float
  %7047 = uitofp i32 %7027 to float
  %7048 = fadd fast float %7046, 5.000000e-01
  %7049 = fadd fast float %7047, 5.000000e-01
  %7050 = fmul fast float %7043, %7048
  %7051 = fmul fast float %7043, %7049
  %7052 = fadd fast float %7050, 0x3F0FFB4800000000
  %7053 = fadd fast float %7051, 0xBF0FFB4800000000
  %7054 = call float @dx.op.binary.f32(i32 35, float %7045, float %7052)  ; FMax(a,b)
  %7055 = call float @dx.op.binary.f32(i32 36, float %7054, float %7053)  ; FMin(a,b)
  %7056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7057 = extractvalue %dx.types.CBufRet.f32 %7056, 1
  %7058 = extractvalue %dx.types.CBufRet.f32 %7056, 2
  %7059 = extractvalue %dx.types.CBufRet.f32 %7056, 0
  %7060 = fmul fast float %7057, %7055
  %7061 = fadd fast float %7059, %7060
  %7062 = fadd fast float %7059, %7058
  %7063 = fsub fast float %7057, %7058
  %7064 = fadd fast float %7063, %7059
  %7065 = call float @dx.op.binary.f32(i32 35, float %7061, float %7062)  ; FMax(a,b)
  %7066 = call float @dx.op.binary.f32(i32 36, float %7065, float %7064)  ; FMin(a,b)
  %7067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7004, float %7005, float %7066, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7068 = extractvalue %dx.types.ResRet.f32 %7067, 0
  %7069 = extractvalue %dx.types.ResRet.f32 %7067, 1
  %7070 = extractvalue %dx.types.ResRet.f32 %7067, 2
  %7071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7072 = extractvalue %dx.types.CBufRet.i32 %7071, 0
  %7073 = extractvalue %dx.types.CBufRet.i32 %7071, 1
  %7074 = uitofp i32 %7072 to float
  %7075 = uitofp i32 %7073 to float
  %7076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7077 = extractvalue %dx.types.CBufRet.f32 %7076, 0
  %7078 = extractvalue %dx.types.CBufRet.f32 %7076, 1
  %7079 = fmul fast float %7074, %7004
  %7080 = fmul fast float %7075, %7005
  %7081 = fadd fast float %7079, -5.000000e-01
  %7082 = fadd fast float %7080, -5.000000e-01
  %7083 = call float @dx.op.unary.f32(i32 22, float %7081)  ; Frc(value)
  %7084 = call float @dx.op.unary.f32(i32 22, float %7082)  ; Frc(value)
  %7085 = fmul fast float %7083, %7083
  %7086 = fmul fast float %7085, %7083
  %7087 = fsub fast float 3.000000e+00, %7083
  %7088 = fmul fast float %7085, %7087
  %7089 = fmul fast float %7083, 3.000000e+00
  %7090 = fmul fast float %7086, 3.000000e+00
  %7091 = fmul fast float %7085, 6.000000e+00
  %7092 = fsub fast float %7090, %7091
  %7093 = fadd fast float %7092, 4.000000e+00
  %7094 = fmul fast float %7093, 0x3FC5555560000000
  %7095 = fmul fast float %7086, -3.000000e+00
  %7096 = fadd fast float %7085, %7083
  %7097 = fmul fast float %7096, 3.000000e+00
  %7098 = fadd fast float %7095, 1.000000e+00
  %7099 = fadd fast float %7098, %7097
  %7100 = fmul fast float %7086, 0x3FC5555560000000
  %7101 = fmul fast float %7084, %7084
  %7102 = fmul fast float %7101, %7084
  %7103 = fsub fast float 3.000000e+00, %7084
  %7104 = fmul fast float %7101, %7103
  %7105 = fmul fast float %7084, 3.000000e+00
  %7106 = fmul fast float %7102, 3.000000e+00
  %7107 = fmul fast float %7101, 6.000000e+00
  %7108 = fsub fast float %7106, %7107
  %7109 = fadd fast float %7108, 4.000000e+00
  %7110 = fmul fast float %7109, 0x3FC5555560000000
  %7111 = fmul fast float %7102, -3.000000e+00
  %7112 = fadd fast float %7101, %7084
  %7113 = fmul fast float %7112, 3.000000e+00
  %7114 = fadd fast float %7111, 1.000000e+00
  %7115 = fadd fast float %7114, %7113
  %7116 = fmul fast float %7102, 0x3FC5555560000000
  %7117 = fadd fast float %7083, 1.000000e+00
  %7118 = fsub fast float 1.000000e+00, %7089
  %7119 = fadd fast float %7118, %7088
  %7120 = fadd fast float %7119, %7093
  %7121 = fmul fast float %7120, 0x3FC5555560000000
  %7122 = fdiv fast float %7094, %7121
  %7123 = fsub fast float %7117, %7122
  %7124 = fsub fast float 1.000000e+00, %7083
  %7125 = fadd fast float %7099, %7086
  %7126 = fmul fast float %7125, 0x3FC5555560000000
  %7127 = fdiv fast float %7100, %7126
  %7128 = fadd fast float %7124, %7127
  %7129 = fadd fast float %7084, 1.000000e+00
  %7130 = fsub fast float 1.000000e+00, %7105
  %7131 = fadd fast float %7130, %7104
  %7132 = fadd fast float %7131, %7109
  %7133 = fmul fast float %7132, 0x3FC5555560000000
  %7134 = fdiv fast float %7110, %7133
  %7135 = fsub fast float %7129, %7134
  %7136 = fsub fast float 1.000000e+00, %7084
  %7137 = fadd fast float %7115, %7102
  %7138 = fmul fast float %7137, 0x3FC5555560000000
  %7139 = fdiv fast float %7116, %7138
  %7140 = fadd fast float %7139, %7136
  %7141 = fmul fast float %7123, %7077
  %7142 = fsub fast float %7004, %7141
  %7143 = fmul fast float %7128, %7077
  %7144 = fadd fast float %7143, %7004
  %7145 = fmul fast float %7140, %7078
  %7146 = fadd fast float %7145, %7005
  %7147 = fmul fast float %7135, %7078
  %7148 = fsub fast float %7005, %7147
  %7149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7142, float %7148, float %7066, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7150 = extractvalue %dx.types.ResRet.f32 %7149, 0
  %7151 = extractvalue %dx.types.ResRet.f32 %7149, 1
  %7152 = extractvalue %dx.types.ResRet.f32 %7149, 2
  %7153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7144, float %7148, float %7066, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7154 = extractvalue %dx.types.ResRet.f32 %7153, 0
  %7155 = extractvalue %dx.types.ResRet.f32 %7153, 1
  %7156 = extractvalue %dx.types.ResRet.f32 %7153, 2
  %7157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7142, float %7146, float %7066, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7158 = extractvalue %dx.types.ResRet.f32 %7157, 0
  %7159 = extractvalue %dx.types.ResRet.f32 %7157, 1
  %7160 = extractvalue %dx.types.ResRet.f32 %7157, 2
  %7161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7144, float %7146, float %7066, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7162 = extractvalue %dx.types.ResRet.f32 %7161, 0
  %7163 = extractvalue %dx.types.ResRet.f32 %7161, 1
  %7164 = extractvalue %dx.types.ResRet.f32 %7161, 2
  %7165 = fsub fast float %7158, %7150
  %7166 = fsub fast float %7159, %7151
  %7167 = fsub fast float %7160, %7152
  %7168 = fmul fast float %7165, %7138
  %7169 = fmul fast float %7166, %7138
  %7170 = fmul fast float %7167, %7138
  %7171 = fadd fast float %7168, %7150
  %7172 = fadd fast float %7169, %7151
  %7173 = fadd fast float %7170, %7152
  %7174 = fsub fast float %7162, %7154
  %7175 = fsub fast float %7163, %7155
  %7176 = fsub fast float %7164, %7156
  %7177 = fmul fast float %7174, %7138
  %7178 = fmul fast float %7175, %7138
  %7179 = fmul fast float %7176, %7138
  %7180 = fsub fast float %7154, %7171
  %7181 = fadd fast float %7180, %7177
  %7182 = fsub fast float %7155, %7172
  %7183 = fadd fast float %7182, %7178
  %7184 = fsub fast float %7156, %7173
  %7185 = fadd fast float %7184, %7179
  %7186 = fmul fast float %7181, %7126
  %7187 = fmul fast float %7183, %7126
  %7188 = fmul fast float %7185, %7126
  %7189 = fadd fast float %7186, %7171
  %7190 = fadd fast float %7187, %7172
  %7191 = fadd fast float %7188, %7173
  %7192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7193 = extractvalue %dx.types.CBufRet.f32 %7192, 1
  %7194 = fmul fast float %7189, %7193
  %7195 = fmul fast float %7190, %7193
  %7196 = fmul fast float %7191, %7193
  br label %7197

; <label>:7197                                    ; preds = %7029, %6998
  %7198 = phi float [ %7068, %7029 ], [ 1.000000e+00, %6998 ]
  %7199 = phi float [ %7069, %7029 ], [ 1.000000e+00, %6998 ]
  %7200 = phi float [ %7070, %7029 ], [ 1.000000e+00, %6998 ]
  %7201 = phi float [ %7194, %7029 ], [ 0.000000e+00, %6998 ]
  %7202 = phi float [ %7195, %7029 ], [ 0.000000e+00, %6998 ]
  %7203 = phi float [ %7196, %7029 ], [ 0.000000e+00, %6998 ]
  %7204 = fmul fast float %7201, %6975
  %7205 = fmul fast float %7202, %6975
  %7206 = fmul fast float %7203, %6975
  %7207 = call float @dx.op.dot3.f32(i32 55, float %7198, float %7199, float %7200, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7208 = call float @dx.op.dot3.f32(i32 55, float %7204, float %7205, float %7206, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7209 = select i1 %250, float %7207, float %7198
  %7210 = select i1 %250, float %7207, float %7199
  %7211 = select i1 %250, float 1.000000e+00, float %7200
  %7212 = select i1 %250, float %7208, float %7204
  %7213 = select i1 %250, float 0.000000e+00, float %7205
  %7214 = select i1 %250, float 0.000000e+00, float %7206
  %7215 = fmul fast float %7209, %6988
  %7216 = fmul fast float %7210, %6989
  %7217 = fmul fast float %7211, %6990
  %7218 = fadd fast float %7215, %7212
  %7219 = fadd fast float %7216, %7213
  %7220 = fadd fast float %7214, %7217
  %7221 = fmul fast float %7209, %6966
  %7222 = fmul fast float %7210, %6967
  %7223 = fmul fast float %7211, %6968
  %7224 = fmul fast float %140, %7000
  %7225 = fmul fast float %142, %7001
  %7226 = fsub fast float 1.000000e+00, %7224
  %7227 = fsub fast float 1.000000e+00, %7225
  %7228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7229 = extractvalue %dx.types.CBufRet.f32 %7228, 0
  %7230 = extractvalue %dx.types.CBufRet.f32 %7228, 1
  %7231 = extractvalue %dx.types.CBufRet.f32 %7228, 2
  %7232 = fmul fast float %7226, %7229
  %7233 = fmul fast float %7226, %7230
  %7234 = fmul fast float %7226, %7231
  %7235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7236 = extractvalue %dx.types.CBufRet.f32 %7235, 0
  %7237 = extractvalue %dx.types.CBufRet.f32 %7235, 1
  %7238 = extractvalue %dx.types.CBufRet.f32 %7235, 2
  %7239 = fmul fast float %7227, %7236
  %7240 = fmul fast float %7227, %7237
  %7241 = fmul fast float %7227, %7238
  %7242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7243 = extractvalue %dx.types.CBufRet.f32 %7242, 0
  %7244 = extractvalue %dx.types.CBufRet.f32 %7242, 1
  %7245 = extractvalue %dx.types.CBufRet.f32 %7242, 2
  %7246 = fadd fast float %7239, %7243
  %7247 = fadd fast float %7246, %7232
  %7248 = fadd fast float %7240, %7244
  %7249 = fadd fast float %7248, %7233
  %7250 = fadd fast float %7241, %7245
  %7251 = fadd fast float %7250, %7234
  %7252 = fmul fast float %7247, %213
  %7253 = fmul fast float %7249, %213
  %7254 = fmul fast float %7251, %213
  br label %7255

; <label>:7255                                    ; preds = %7197, %6965
  %7256 = phi float [ %7252, %7197 ], [ %191, %6965 ]
  %7257 = phi float [ %7253, %7197 ], [ %192, %6965 ]
  %7258 = phi float [ %7254, %7197 ], [ %193, %6965 ]
  %7259 = phi float [ %213, %7197 ], [ %95, %6965 ]
  %7260 = phi float [ %7218, %7197 ], [ %6988, %6965 ]
  %7261 = phi float [ %7219, %7197 ], [ %6989, %6965 ]
  %7262 = phi float [ %7220, %7197 ], [ %6990, %6965 ]
  %7263 = phi float [ %7221, %7197 ], [ %6966, %6965 ]
  %7264 = phi float [ %7222, %7197 ], [ %6967, %6965 ]
  %7265 = phi float [ %7223, %7197 ], [ %6968, %6965 ]
  %7266 = phi float [ %7198, %7197 ], [ 1.000000e+00, %6965 ]
  br i1 %6997, label %8421, label %7267

; <label>:7267                                    ; preds = %7255
  %7268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7269 = extractvalue %dx.types.CBufRet.f32 %7268, 0
  %7270 = extractvalue %dx.types.CBufRet.f32 %7268, 1
  %7271 = extractvalue %dx.types.CBufRet.f32 %7268, 2
  %7272 = extractvalue %dx.types.CBufRet.f32 %7268, 3
  %7273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7274 = extractvalue %dx.types.CBufRet.f32 %7273, 0
  %7275 = extractvalue %dx.types.CBufRet.f32 %7273, 1
  %7276 = extractvalue %dx.types.CBufRet.f32 %7273, 2
  %7277 = extractvalue %dx.types.CBufRet.f32 %7273, 3
  %7278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7279 = extractvalue %dx.types.CBufRet.f32 %7278, 0
  %7280 = extractvalue %dx.types.CBufRet.f32 %7278, 1
  %7281 = extractvalue %dx.types.CBufRet.f32 %7278, 2
  %7282 = extractvalue %dx.types.CBufRet.f32 %7278, 3
  %7283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7284 = extractvalue %dx.types.CBufRet.f32 %7283, 0
  %7285 = extractvalue %dx.types.CBufRet.f32 %7283, 1
  %7286 = extractvalue %dx.types.CBufRet.f32 %7283, 2
  %7287 = extractvalue %dx.types.CBufRet.f32 %7283, 3
  %7288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7289 = extractvalue %dx.types.CBufRet.f32 %7288, 3
  %7290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7291 = extractvalue %dx.types.CBufRet.f32 %7290, 3
  %7292 = extractvalue %dx.types.CBufRet.f32 %7290, 0
  %7293 = extractvalue %dx.types.CBufRet.f32 %7290, 1
  %7294 = extractvalue %dx.types.CBufRet.f32 %7290, 2
  %7295 = fcmp fast olt float %7294, -5.000000e-01
  %7296 = call float @dx.op.dot3.f32(i32 55, float %7256, float %7257, float %7258, float %7256, float %7257, float %7258)  ; Dot3(ax,ay,az,bx,by,bz)
  %7297 = call float @dx.op.unary.f32(i32 25, float %7296)  ; Rsqrt(value)
  %7298 = fmul fast float %7297, %7296
  %7299 = fmul fast float %7297, %7256
  %7300 = fmul fast float %7297, %7257
  %7301 = fmul fast float %7297, %7258
  %7302 = fadd fast float %7298, %7272
  %7303 = call float @dx.op.dot3.f32(i32 55, float %7299, float %7300, float %7301, float %7269, float %7270, float %7271)  ; Dot3(ax,ay,az,bx,by,bz)
  %7304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7305 = extractvalue %dx.types.CBufRet.i32 %7304, 1
  %7306 = and i32 %7305, 1
  %7307 = icmp ne i32 %7306, 0
  %7308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7309 = extractvalue %dx.types.CBufRet.f32 %7308, 2
  %7310 = fcmp fast ogt float %7309, 0.000000e+00
  %7311 = and i1 %7307, %7310
  br i1 %7311, label %7312, label %7718, !dx.controlflow.hints !123

; <label>:7312                                    ; preds = %7267
  %7313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7314 = extractvalue %dx.types.CBufRet.f32 %7313, 3
  %7315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7316 = extractvalue %dx.types.CBufRet.f32 %7315, 2
  %7317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7318 = extractvalue %dx.types.CBufRet.f32 %7317, 2
  %7319 = fsub fast float %7316, %7318
  %7320 = and i32 %7305, 2
  %7321 = extractvalue %dx.types.CBufRet.i32 %7304, 0
  %7322 = call i32 @dx.op.binary.i32(i32 40, i32 %7321, i32 3)  ; UMin(a,b)
  %7323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7324 = extractvalue %dx.types.CBufRet.f32 %7323, 0
  %7325 = extractvalue %dx.types.CBufRet.f32 %7323, 1
  %7326 = extractvalue %dx.types.CBufRet.f32 %7317, 0
  %7327 = extractvalue %dx.types.CBufRet.f32 %7317, 1
  %7328 = fsub fast float %7324, %7326
  %7329 = fsub fast float %7325, %7327
  %7330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7331 = extractvalue %dx.types.CBufRet.f32 %7330, 0
  %7332 = fcmp fast ogt float %7331, 0.000000e+00
  %7333 = fsub fast float -0.000000e+00, %7328
  %7334 = fsub fast float -0.000000e+00, %7329
  %7335 = call float @dx.op.dot2.f32(i32 54, float %7299, float %7300, float %7299, float %7300)  ; Dot2(ax,ay,bx,by)
  %7336 = call float @dx.op.dot2.f32(i32 54, float %7299, float %7300, float %7333, float %7334)  ; Dot2(ax,ay,bx,by)
  %7337 = fmul fast float %7336, 2.000000e+00
  %7338 = call float @dx.op.dot2.f32(i32 54, float %7333, float %7334, float %7333, float %7334)  ; Dot2(ax,ay,bx,by)
  %7339 = fmul fast float %7331, %7331
  %7340 = fsub fast float %7338, %7339
  %7341 = fmul fast float %7337, %7337
  %7342 = fmul fast float %7335, 4.000000e+00
  %7343 = fmul fast float %7342, %7340
  %7344 = fsub fast float %7341, %7343
  %7345 = fcmp fast ogt float %7344, 0.000000e+00
  br i1 %7345, label %7346, label %7361

; <label>:7346                                    ; preds = %7312
  %7347 = fcmp fast ogt float %7337, 0.000000e+00
  %7348 = call float @dx.op.unary.f32(i32 24, float %7344)  ; Sqrt(value)
  %7349 = fsub fast float -0.000000e+00, %7348
  %7350 = select i1 %7347, float %7348, float %7349
  %7351 = fadd fast float %7350, %7337
  %7352 = fmul float %7351, -5.000000e-01
  %7353 = fdiv fast float %7352, %7335
  %7354 = call float @dx.op.binary.f32(i32 35, float %7353, float 0.000000e+00)  ; FMax(a,b)
  %7355 = call float @dx.op.binary.f32(i32 36, float %7298, float %7354)  ; FMin(a,b)
  %7356 = fdiv fast float %7340, %7352
  %7357 = call float @dx.op.binary.f32(i32 35, float %7356, float 0.000000e+00)  ; FMax(a,b)
  %7358 = call float @dx.op.binary.f32(i32 36, float %7298, float %7357)  ; FMin(a,b)
  %7359 = call float @dx.op.binary.f32(i32 36, float %7355, float %7358)  ; FMin(a,b)
  %7360 = call float @dx.op.binary.f32(i32 35, float %7355, float %7358)  ; FMax(a,b)
  br label %7361

; <label>:7361                                    ; preds = %7346, %7312
  %7362 = phi float [ %7360, %7346 ], [ -1.000000e+00, %7312 ]
  %7363 = phi float [ %7359, %7346 ], [ -1.000000e+00, %7312 ]
  %7364 = phi i1 [ true, %7346 ], [ false, %7312 ]
  %7365 = and i1 %7332, %7364
  br i1 %7365, label %7366, label %7368

; <label>:7366                                    ; preds = %7361
  %7367 = fcmp fast oeq float %7363, %7362
  br i1 %7367, label %7671, label %7369

; <label>:7368                                    ; preds = %7361
  br i1 %7332, label %7671, label %7369

; <label>:7369                                    ; preds = %7368, %7366
  %7370 = phi float [ %7298, %7368 ], [ %7362, %7366 ]
  %7371 = phi float [ 0.000000e+00, %7368 ], [ %7363, %7366 ]
  %7372 = icmp ne i32 %7320, 0
  %7373 = fmul fast float %7370, %7301
  %7374 = fadd fast float %7373, %7314
  %7375 = fmul fast float %7374, %7370
  %7376 = select i1 %7372, float 0.000000e+00, float %7375
  %7377 = fcmp fast oeq float %7301, 0.000000e+00
  %7378 = fdiv fast float %7319, %7301
  %7379 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7378)  ; FMax(a,b)
  %7380 = select i1 %7377, float %7370, float %7379
  %7381 = call float @dx.op.binary.f32(i32 36, float %7370, float %7380)  ; FMin(a,b)
  %7382 = fcmp fast ogt float %7301, 0.000000e+00
  %7383 = fcmp fast olt float %7319, 0.000000e+00
  br i1 %7382, label %7384, label %7441

; <label>:7384                                    ; preds = %7369
  %7385 = icmp eq i32 %7320, 0
  br i1 %7383, label %7386, label %7430

; <label>:7386                                    ; preds = %7384
  %7387 = select i1 %7385, float %7370, float 0.000000e+00
  %7388 = fsub fast float -0.000000e+00, %7387
  %7389 = call float @dx.op.unary.f32(i32 6, float %7388)  ; FAbs(value)
  %7390 = fmul fast float %7387, %7301
  %7391 = fadd fast float %7390, %7314
  %7392 = fmul fast float %7389, %7391
  %7393 = fsub fast float %7376, %7392
  %7394 = fsub fast float %7370, %7389
  %7395 = select i1 %7385, float %7394, float 0.000000e+00
  %7396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7397 = extractvalue %dx.types.CBufRet.f32 %7396, 0
  %7398 = extractvalue %dx.types.CBufRet.f32 %7396, 1
  %7399 = extractvalue %dx.types.CBufRet.f32 %7396, 2
  %7400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7401 = extractvalue %dx.types.CBufRet.f32 %7400, 0
  %7402 = extractvalue %dx.types.CBufRet.f32 %7400, 1
  %7403 = extractvalue %dx.types.CBufRet.f32 %7400, 2
  %7404 = extractvalue %dx.types.CBufRet.f32 %7400, 3
  %7405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7406 = extractvalue %dx.types.CBufRet.f32 %7405, 3
  %7407 = call float @dx.op.binary.f32(i32 36, float %7393, float %7406)  ; FMin(a,b)
  %7408 = fmul fast float %7404, %7395
  %7409 = call float @dx.op.unary.f32(i32 7, float %7408)  ; Saturate(value)
  %7410 = fsub fast float %7401, %7397
  %7411 = fsub fast float %7402, %7398
  %7412 = fsub fast float %7403, %7399
  %7413 = fmul fast float %7409, %7410
  %7414 = fmul fast float %7409, %7411
  %7415 = fmul fast float %7409, %7412
  %7416 = fadd fast float %7413, %7397
  %7417 = fadd fast float %7414, %7398
  %7418 = fadd fast float %7415, %7399
  %7419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7420 = extractvalue %dx.types.CBufRet.f32 %7419, 0
  %7421 = extractvalue %dx.types.CBufRet.f32 %7419, 1
  %7422 = fadd fast float %7421, %7420
  %7423 = call float @dx.op.unary.f32(i32 7, float %7422)  ; Saturate(value)
  %7424 = extractvalue %dx.types.CBufRet.f32 %7419, 2
  %7425 = extractvalue %dx.types.CBufRet.f32 %7419, 3
  %7426 = fadd fast float %7425, %7424
  %7427 = call float @dx.op.unary.f32(i32 7, float %7426)  ; Saturate(value)
  %7428 = fmul fast float %7423, %7407
  %7429 = fmul fast float %7428, %7427
  br label %7671

; <label>:7430                                    ; preds = %7384
  br i1 %7385, label %7431, label %7452

; <label>:7431                                    ; preds = %7430
  %7432 = call float @dx.op.binary.f32(i32 36, float %7381, float %7371)  ; FMin(a,b)
  %7433 = fsub fast float %7381, %7432
  %7434 = fsub fast float %7433, %7370
  %7435 = call float @dx.op.unary.f32(i32 6, float %7434)  ; FAbs(value)
  %7436 = fadd fast float %7433, %7370
  %7437 = fmul fast float %7436, %7301
  %7438 = fadd fast float %7437, %7314
  %7439 = fmul fast float %7438, %7435
  %7440 = fsub fast float %7376, %7439
  br label %7452

; <label>:7441                                    ; preds = %7369
  br i1 %7383, label %7442, label %7452

; <label>:7442                                    ; preds = %7441
  %7443 = call float @dx.op.binary.f32(i32 35, float %7371, float %7381)  ; FMax(a,b)
  %7444 = icmp eq i32 %7320, 0
  %7445 = select i1 %7444, float %7381, float 0.000000e+00
  %7446 = fsub fast float -0.000000e+00, %7445
  %7447 = call float @dx.op.unary.f32(i32 6, float %7446)  ; FAbs(value)
  %7448 = fmul fast float %7445, %7301
  %7449 = fadd fast float %7448, %7314
  %7450 = fmul fast float %7447, %7449
  %7451 = fsub fast float %7376, %7450
  br label %7452

; <label>:7452                                    ; preds = %7442, %7441, %7431, %7430
  %7453 = phi float [ %7371, %7430 ], [ %7371, %7431 ], [ %7443, %7442 ], [ %7371, %7441 ]
  %7454 = phi float [ 0.000000e+00, %7430 ], [ %7435, %7431 ], [ %7447, %7442 ], [ 0.000000e+00, %7441 ]
  %7455 = phi float [ %7376, %7430 ], [ %7440, %7431 ], [ %7451, %7442 ], [ %7376, %7441 ]
  %7456 = phi float [ %7381, %7430 ], [ %7381, %7431 ], [ %7370, %7442 ], [ %7370, %7441 ]
  %7457 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %7457, align 4, !tbaa !124, !noalias !126
  %7458 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %7458, align 4, !tbaa !124, !noalias !126
  %7459 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %7459, align 4, !tbaa !124, !noalias !126
  %7460 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %7460, align 4, !tbaa !124, !noalias !126
  %7461 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %7461, align 4, !tbaa !124, !noalias !126
  %7462 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %7462, align 4, !tbaa !124, !noalias !126
  %7463 = icmp sgt i32 %7322, 0
  br i1 %7463, label %7464, label %7525

; <label>:7464                                    ; preds = %7452
  br label %7465

; <label>:7465                                    ; preds = %7514, %7464
  %7466 = phi i32 [ %7515, %7514 ], [ 0, %7464 ]
  %7467 = phi i32 [ %7516, %7514 ], [ 0, %7464 ]
  %7468 = add nuw i32 %7467, 171
  %7469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7468)  ; CBufferLoadLegacy(handle,regIndex)
  %7470 = extractvalue %dx.types.CBufRet.f32 %7469, 0
  %7471 = extractvalue %dx.types.CBufRet.f32 %7469, 1
  %7472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7473 = extractvalue %dx.types.CBufRet.f32 %7472, 0
  %7474 = extractvalue %dx.types.CBufRet.f32 %7472, 1
  %7475 = fsub fast float %7470, %7473
  %7476 = fsub fast float %7471, %7474
  %7477 = extractvalue %dx.types.CBufRet.f32 %7469, 2
  %7478 = fsub fast float -0.000000e+00, %7475
  %7479 = fsub fast float -0.000000e+00, %7476
  %7480 = call float @dx.op.dot2.f32(i32 54, float %7299, float %7300, float %7478, float %7479)  ; Dot2(ax,ay,bx,by)
  %7481 = fmul fast float %7480, 2.000000e+00
  %7482 = call float @dx.op.dot2.f32(i32 54, float %7478, float %7479, float %7478, float %7479)  ; Dot2(ax,ay,bx,by)
  %7483 = fmul fast float %7477, %7477
  %7484 = fsub fast float %7482, %7483
  %7485 = fmul fast float %7481, %7481
  %7486 = fmul fast float %7342, %7484
  %7487 = fsub fast float %7485, %7486
  %7488 = fcmp fast ogt float %7487, 0.000000e+00
  br i1 %7488, label %7489, label %7504

; <label>:7489                                    ; preds = %7465
  %7490 = fcmp fast ogt float %7481, 0.000000e+00
  %7491 = call float @dx.op.unary.f32(i32 24, float %7487)  ; Sqrt(value)
  %7492 = fsub fast float -0.000000e+00, %7491
  %7493 = select i1 %7490, float %7491, float %7492
  %7494 = fadd fast float %7493, %7481
  %7495 = fmul float %7494, -5.000000e-01
  %7496 = fdiv fast float %7495, %7335
  %7497 = call float @dx.op.binary.f32(i32 35, float %7496, float 0.000000e+00)  ; FMax(a,b)
  %7498 = call float @dx.op.binary.f32(i32 36, float %7370, float %7497)  ; FMin(a,b)
  %7499 = fdiv fast float %7484, %7495
  %7500 = call float @dx.op.binary.f32(i32 35, float %7499, float 0.000000e+00)  ; FMax(a,b)
  %7501 = call float @dx.op.binary.f32(i32 36, float %7370, float %7500)  ; FMin(a,b)
  %7502 = call float @dx.op.binary.f32(i32 36, float %7498, float %7501)  ; FMin(a,b)
  %7503 = call float @dx.op.binary.f32(i32 35, float %7498, float %7501)  ; FMax(a,b)
  br label %7504

; <label>:7504                                    ; preds = %7489, %7465
  %7505 = phi float [ %7503, %7489 ], [ -1.000000e+00, %7465 ]
  %7506 = phi float [ %7502, %7489 ], [ -1.000000e+00, %7465 ]
  %7507 = phi i1 [ true, %7489 ], [ false, %7465 ]
  br i1 %7507, label %7508, label %7514

; <label>:7508                                    ; preds = %7504
  %7509 = call float @dx.op.binary.f32(i32 35, float %7453, float %7506)  ; FMax(a,b)
  %7510 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7467
  store float %7509, float* %7510, align 4, !tbaa !124, !noalias !126
  %7511 = call float @dx.op.binary.f32(i32 35, float %7453, float %7505)  ; FMax(a,b)
  %7512 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7467
  store float %7511, float* %7512, align 4, !tbaa !124, !noalias !126
  %7513 = add nsw i32 %7466, 1
  br label %7514

; <label>:7514                                    ; preds = %7508, %7504
  %7515 = phi i32 [ %7513, %7508 ], [ %7466, %7504 ]
  %7516 = add nuw nsw i32 %7467, 1
  %7517 = icmp eq i32 %7516, %7322
  br i1 %7517, label %7518, label %7465

; <label>:7518                                    ; preds = %7514
  %7519 = load float, float* %7459, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %7520 = load float, float* %7458, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  %7521 = load float, float* %7457, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  %7522 = load float, float* %7462, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %7523 = load float, float* %7461, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  %7524 = load float, float* %7460, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  br label %7525

; <label>:7525                                    ; preds = %7518, %7452
  %7526 = phi float [ -1.000000e+00, %7452 ], [ %7524, %7518 ]
  %7527 = phi float [ -1.000000e+00, %7452 ], [ %7523, %7518 ]
  %7528 = phi float [ -1.000000e+00, %7452 ], [ %7522, %7518 ]
  %7529 = phi float [ -1.000000e+00, %7452 ], [ %7521, %7518 ]
  %7530 = phi float [ -1.000000e+00, %7452 ], [ %7520, %7518 ]
  %7531 = phi float [ -1.000000e+00, %7452 ], [ %7519, %7518 ]
  %7532 = phi i32 [ 0, %7452 ], [ %7515, %7518 ]
  %7533 = call float @dx.op.binary.f32(i32 36, float %7530, float %7531)  ; FMin(a,b)
  %7534 = call float @dx.op.binary.f32(i32 36, float %7529, float %7533)  ; FMin(a,b)
  %7535 = call float @dx.op.binary.f32(i32 35, float %7529, float %7530)  ; FMax(a,b)
  %7536 = call float @dx.op.binary.f32(i32 36, float %7535, float %7531)  ; FMin(a,b)
  %7537 = call float @dx.op.binary.f32(i32 36, float %7529, float %7530)  ; FMin(a,b)
  %7538 = call float @dx.op.binary.f32(i32 35, float %7537, float %7536)  ; FMax(a,b)
  %7539 = call float @dx.op.binary.f32(i32 35, float %7530, float %7531)  ; FMax(a,b)
  %7540 = call float @dx.op.binary.f32(i32 35, float %7529, float %7539)  ; FMax(a,b)
  store float %7534, float* %7457, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  store float %7538, float* %7458, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  store float %7540, float* %7459, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %7541 = call float @dx.op.binary.f32(i32 36, float %7527, float %7528)  ; FMin(a,b)
  %7542 = call float @dx.op.binary.f32(i32 36, float %7526, float %7541)  ; FMin(a,b)
  %7543 = call float @dx.op.binary.f32(i32 35, float %7526, float %7527)  ; FMax(a,b)
  %7544 = call float @dx.op.binary.f32(i32 36, float %7543, float %7528)  ; FMin(a,b)
  %7545 = call float @dx.op.binary.f32(i32 36, float %7526, float %7527)  ; FMin(a,b)
  %7546 = call float @dx.op.binary.f32(i32 35, float %7545, float %7544)  ; FMax(a,b)
  %7547 = call float @dx.op.binary.f32(i32 35, float %7527, float %7528)  ; FMax(a,b)
  %7548 = call float @dx.op.binary.f32(i32 35, float %7526, float %7547)  ; FMax(a,b)
  store float %7542, float* %7460, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  store float %7546, float* %7461, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  store float %7548, float* %7462, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %7549 = sub nsw i32 3, %7532
  %7550 = icmp sgt i32 %7549, 2
  br i1 %7550, label %7551, label %7589

; <label>:7551                                    ; preds = %7525
  %7552 = icmp eq i32 %7320, 0
  %7553 = fsub fast float %7370, %7454
  %7554 = select i1 %7552, float %7553, float %7454
  %7555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7556 = extractvalue %dx.types.CBufRet.f32 %7555, 0
  %7557 = extractvalue %dx.types.CBufRet.f32 %7555, 1
  %7558 = extractvalue %dx.types.CBufRet.f32 %7555, 2
  %7559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7560 = extractvalue %dx.types.CBufRet.f32 %7559, 0
  %7561 = extractvalue %dx.types.CBufRet.f32 %7559, 1
  %7562 = extractvalue %dx.types.CBufRet.f32 %7559, 2
  %7563 = extractvalue %dx.types.CBufRet.f32 %7559, 3
  %7564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7565 = extractvalue %dx.types.CBufRet.f32 %7564, 3
  %7566 = call float @dx.op.binary.f32(i32 36, float %7455, float %7565)  ; FMin(a,b)
  %7567 = fmul fast float %7563, %7554
  %7568 = call float @dx.op.unary.f32(i32 7, float %7567)  ; Saturate(value)
  %7569 = fsub fast float %7560, %7556
  %7570 = fsub fast float %7561, %7557
  %7571 = fsub fast float %7562, %7558
  %7572 = fmul fast float %7568, %7569
  %7573 = fmul fast float %7568, %7570
  %7574 = fmul fast float %7568, %7571
  %7575 = fadd fast float %7572, %7556
  %7576 = fadd fast float %7573, %7557
  %7577 = fadd fast float %7574, %7558
  %7578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7579 = extractvalue %dx.types.CBufRet.f32 %7578, 0
  %7580 = extractvalue %dx.types.CBufRet.f32 %7578, 1
  %7581 = fadd fast float %7580, %7579
  %7582 = call float @dx.op.unary.f32(i32 7, float %7581)  ; Saturate(value)
  %7583 = extractvalue %dx.types.CBufRet.f32 %7578, 2
  %7584 = extractvalue %dx.types.CBufRet.f32 %7578, 3
  %7585 = fadd fast float %7584, %7583
  %7586 = call float @dx.op.unary.f32(i32 7, float %7585)  ; Saturate(value)
  %7587 = fmul fast float %7582, %7566
  %7588 = fmul fast float %7587, %7586
  br label %7671

; <label>:7589                                    ; preds = %7525
  %7590 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7549
  %7591 = load float, float* %7590, align 4, !tbaa !124, !noalias !126
  %7592 = fcmp fast olt float %7591, %7456
  %7593 = icmp sgt i32 %7532, 0
  %7594 = and i1 %7593, %7592
  br i1 %7594, label %7595, label %7632

; <label>:7595                                    ; preds = %7589
  br label %7596

; <label>:7596                                    ; preds = %7625, %7595
  %7597 = phi float [ %7626, %7625 ], [ %7454, %7595 ]
  %7598 = phi float [ %7627, %7625 ], [ %7455, %7595 ]
  %7599 = phi float [ %7607, %7625 ], [ %7591, %7595 ]
  %7600 = phi i32 [ %7604, %7625 ], [ %7549, %7595 ]
  %7601 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7600
  %7602 = load float, float* %7601, align 4, !tbaa !124, !noalias !126
  %7603 = icmp slt i32 %7600, 2
  %7604 = add nsw i32 %7600, 1
  %7605 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7604
  %7606 = load float, float* %7605, align 4, !tbaa !124, !noalias !126
  %7607 = select i1 %7603, float %7606, float %7370
  %7608 = call float @dx.op.binary.f32(i32 36, float %7607, float %7602)  ; FMin(a,b)
  %7609 = call float @dx.op.binary.f32(i32 36, float %7456, float %7608)  ; FMin(a,b)
  %7610 = icmp eq i32 %7320, 0
  %7611 = fadd fast float %7609, %7599
  %7612 = fmul fast float %7611, %7301
  %7613 = fadd fast float %7612, %7314
  br i1 %7610, label %7619, label %7614

; <label>:7614                                    ; preds = %7596
  %7615 = fsub fast float %7609, %7599
  %7616 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7615)  ; FMax(a,b)
  %7617 = fmul fast float %7616, %7613
  %7618 = fadd fast float %7617, %7598
  br label %7625

; <label>:7619                                    ; preds = %7596
  %7620 = fsub fast float %7599, %7609
  %7621 = call float @dx.op.unary.f32(i32 6, float %7620)  ; FAbs(value)
  %7622 = fadd fast float %7621, %7597
  %7623 = fmul fast float %7621, %7613
  %7624 = fsub fast float %7598, %7623
  br label %7625

; <label>:7625                                    ; preds = %7619, %7614
  %7626 = phi float [ %7616, %7614 ], [ %7622, %7619 ]
  %7627 = phi float [ %7618, %7614 ], [ %7624, %7619 ]
  %7628 = fcmp fast olt float %7607, %7456
  %7629 = icmp slt i32 %7604, 3
  %7630 = and i1 %7629, %7628
  br i1 %7630, label %7596, label %7631

; <label>:7631                                    ; preds = %7625
  br label %7632

; <label>:7632                                    ; preds = %7631, %7589
  %7633 = phi float [ %7454, %7589 ], [ %7626, %7631 ]
  %7634 = phi float [ %7455, %7589 ], [ %7627, %7631 ]
  %7635 = fsub fast float %7370, %7633
  %7636 = select i1 %7372, float %7633, float %7635
  %7637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7638 = extractvalue %dx.types.CBufRet.f32 %7637, 0
  %7639 = extractvalue %dx.types.CBufRet.f32 %7637, 1
  %7640 = extractvalue %dx.types.CBufRet.f32 %7637, 2
  %7641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7642 = extractvalue %dx.types.CBufRet.f32 %7641, 0
  %7643 = extractvalue %dx.types.CBufRet.f32 %7641, 1
  %7644 = extractvalue %dx.types.CBufRet.f32 %7641, 2
  %7645 = extractvalue %dx.types.CBufRet.f32 %7641, 3
  %7646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7647 = extractvalue %dx.types.CBufRet.f32 %7646, 3
  %7648 = call float @dx.op.binary.f32(i32 36, float %7634, float %7647)  ; FMin(a,b)
  %7649 = fmul fast float %7645, %7636
  %7650 = call float @dx.op.unary.f32(i32 7, float %7649)  ; Saturate(value)
  %7651 = fsub fast float %7642, %7638
  %7652 = fsub fast float %7643, %7639
  %7653 = fsub fast float %7644, %7640
  %7654 = fmul fast float %7650, %7651
  %7655 = fmul fast float %7650, %7652
  %7656 = fmul fast float %7650, %7653
  %7657 = fadd fast float %7654, %7638
  %7658 = fadd fast float %7655, %7639
  %7659 = fadd fast float %7656, %7640
  %7660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7661 = extractvalue %dx.types.CBufRet.f32 %7660, 0
  %7662 = extractvalue %dx.types.CBufRet.f32 %7660, 1
  %7663 = fadd fast float %7662, %7661
  %7664 = call float @dx.op.unary.f32(i32 7, float %7663)  ; Saturate(value)
  %7665 = extractvalue %dx.types.CBufRet.f32 %7660, 2
  %7666 = extractvalue %dx.types.CBufRet.f32 %7660, 3
  %7667 = fadd fast float %7666, %7665
  %7668 = call float @dx.op.unary.f32(i32 7, float %7667)  ; Saturate(value)
  %7669 = fmul fast float %7664, %7648
  %7670 = fmul fast float %7669, %7668
  br label %7671

; <label>:7671                                    ; preds = %7632, %7551, %7386, %7368, %7366
  %7672 = phi float [ %7395, %7386 ], [ %7554, %7551 ], [ %7636, %7632 ], [ 0.000000e+00, %7366 ], [ 0.000000e+00, %7368 ]
  %7673 = phi float [ %7429, %7386 ], [ %7588, %7551 ], [ %7670, %7632 ], [ 0.000000e+00, %7366 ], [ 0.000000e+00, %7368 ]
  %7674 = phi float [ %7416, %7386 ], [ %7575, %7551 ], [ %7657, %7632 ], [ 0.000000e+00, %7366 ], [ 0.000000e+00, %7368 ]
  %7675 = phi float [ %7417, %7386 ], [ %7576, %7551 ], [ %7658, %7632 ], [ 0.000000e+00, %7366 ], [ 0.000000e+00, %7368 ]
  %7676 = phi float [ %7418, %7386 ], [ %7577, %7551 ], [ %7659, %7632 ], [ 0.000000e+00, %7366 ], [ 0.000000e+00, %7368 ]
  %7677 = fmul fast float %7309, %7673
  %7678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7679 = extractvalue %dx.types.CBufRet.f32 %7678, 2
  %7680 = fsub fast float %7316, %7679
  %7681 = fcmp fast olt float %7677, -2.000000e+01
  %7682 = call float @dx.op.unary.f32(i32 21, float %7677)  ; Exp(value)
  %7683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7684 = extractvalue %dx.types.CBufRet.f32 %7683, 2
  %7685 = extractvalue %dx.types.CBufRet.f32 %7683, 3
  %7686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7687 = extractvalue %dx.types.CBufRet.f32 %7686, 2
  %7688 = fmul fast float %7685, %7680
  %7689 = call float @dx.op.unary.f32(i32 7, float %7688)  ; Saturate(value)
  %7690 = fsub fast float 1.000000e+00, %7689
  %7691 = fmul fast float %7301, 5.000000e-01
  %7692 = fadd fast float %7691, 5.000000e-01
  %7693 = call float @dx.op.unary.f32(i32 7, float %7692)  ; Saturate(value)
  %7694 = fsub fast float 1.000000e+00, %7693
  %7695 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7690)  ; FMax(a,b)
  %7696 = fdiv fast float %7694, %7695
  %7697 = fsub fast float %7680, %7258
  %7698 = call float @dx.op.unary.f32(i32 6, float %7697)  ; FAbs(value)
  %7699 = fmul fast float %7698, %7684
  %7700 = call float @dx.op.unary.f32(i32 7, float %7696)  ; Saturate(value)
  %7701 = fsub fast float 1.000000e+00, %7699
  %7702 = fmul fast float %7701, %7700
  %7703 = fadd fast float %7702, %7699
  %7704 = fmul fast float %7687, %7680
  %7705 = call float @dx.op.unary.f32(i32 7, float %7704)  ; Saturate(value)
  %7706 = fsub fast float 1.000000e+00, %7703
  %7707 = fmul fast float %7706, %7705
  %7708 = fadd fast float %7707, %7703
  %7709 = call float @dx.op.unary.f32(i32 7, float %7708)  ; Saturate(value)
  %7710 = fadd fast float %7682, -1.000000e+00
  %7711 = select i1 %7681, float -1.000000e+00, float %7710
  %7712 = fmul fast float %7709, %7711
  %7713 = fadd fast float %7712, 1.000000e+00
  %7714 = fsub fast float -0.000000e+00, %7712
  %7715 = fmul fast float %7674, %7714
  %7716 = fmul fast float %7675, %7714
  %7717 = fmul fast float %7676, %7714
  br label %7718

; <label>:7718                                    ; preds = %7671, %7267
  %7719 = phi float [ %7672, %7671 ], [ 0.000000e+00, %7267 ]
  %7720 = phi float [ %7713, %7671 ], [ 1.000000e+00, %7267 ]
  %7721 = phi float [ %7715, %7671 ], [ 0.000000e+00, %7267 ]
  %7722 = phi float [ %7716, %7671 ], [ 0.000000e+00, %7267 ]
  %7723 = phi float [ %7717, %7671 ], [ 0.000000e+00, %7267 ]
  %7724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7725 = extractvalue %dx.types.CBufRet.f32 %7724, 1
  %7726 = fsub fast float 1.000000e+00, %7720
  %7727 = fmul fast float %7726, %7302
  %7728 = fmul fast float %7727, %7725
  %7729 = fsub fast float %7302, %7728
  br i1 %7295, label %7730, label %7759, !dx.controlflow.hints !162

; <label>:7730                                    ; preds = %7718
  %7731 = fmul fast float %7303, %7292
  %7732 = fadd fast float %7731, %7293
  %7733 = call float @dx.op.unary.f32(i32 7, float %7732)  ; Saturate(value)
  %7734 = fmul fast float %7274, %7729
  %7735 = fsub fast float -0.000000e+00, %7734
  %7736 = fmul fast float %7275, %7729
  %7737 = fsub fast float -0.000000e+00, %7736
  %7738 = call float @dx.op.unary.f32(i32 21, float %7735)  ; Exp(value)
  %7739 = call float @dx.op.unary.f32(i32 21, float %7737)  ; Exp(value)
  %7740 = call float @dx.op.binary.f32(i32 35, float %7282, float %7738)  ; FMax(a,b)
  %7741 = call float @dx.op.binary.f32(i32 35, float %7282, float %7739)  ; FMax(a,b)
  %7742 = fsub fast float %7741, %7740
  %7743 = fmul fast float %7742, %7733
  %7744 = fadd fast float %7743, %7740
  %7745 = call float @dx.op.unary.f32(i32 7, float %7744)  ; Saturate(value)
  %7746 = fsub fast float %7279, %7284
  %7747 = fsub fast float %7280, %7285
  %7748 = fsub fast float %7281, %7286
  %7749 = fmul fast float %7733, %7746
  %7750 = fmul fast float %7733, %7747
  %7751 = fmul fast float %7733, %7748
  %7752 = fadd fast float %7749, %7284
  %7753 = fadd fast float %7750, %7285
  %7754 = fadd fast float %7751, %7286
  %7755 = fsub fast float 1.000000e+00, %7745
  %7756 = fmul fast float %7755, %7752
  %7757 = fmul fast float %7755, %7753
  %7758 = fmul fast float %7755, %7754
  br label %7818

; <label>:7759                                    ; preds = %7718
  %7760 = fmul fast float %7729, %7291
  %7761 = call float @dx.op.unary.f32(i32 7, float %7760)  ; Saturate(value)
  %7762 = fsub fast float 2.000000e+00, %7761
  %7763 = fmul fast float %7761, 9.921875e-01
  %7764 = fmul fast float %7763, %7762
  %7765 = fadd fast float %7764, 3.906250e-03
  %7766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7765, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7767 = extractvalue %dx.types.ResRet.f32 %7766, 0
  %7768 = fsub fast float %7761, %7767
  %7769 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7768)  ; FMax(a,b)
  %7770 = fmul fast float %7277, %7258
  %7771 = call float @dx.op.unary.f32(i32 6, float %7770)  ; FAbs(value)
  %7772 = fcmp fast ogt float %7771, 0x3EB0C6F7A0000000
  br i1 %7772, label %7773, label %7779, !dx.controlflow.hints !163

; <label>:7773                                    ; preds = %7759
  %7774 = fmul fast float %7770, 0xBFF7154760000000
  %7775 = call float @dx.op.unary.f32(i32 21, float %7774)  ; Exp(value)
  %7776 = fsub fast float 1.000000e+00, %7775
  %7777 = fdiv fast float %7776, %7770
  %7778 = fmul fast float %7777, %7287
  br label %7779

; <label>:7779                                    ; preds = %7773, %7759
  %7780 = phi float [ %7778, %7773 ], [ %7287, %7759 ]
  %7781 = fadd fast float %7780, %7289
  %7782 = fmul fast float %7781, %7769
  %7783 = fmul fast float %7274, %7782
  %7784 = fsub fast float -0.000000e+00, %7783
  %7785 = fmul fast float %7275, %7782
  %7786 = fsub fast float -0.000000e+00, %7785
  %7787 = fmul fast float %7276, %7782
  %7788 = fsub fast float -0.000000e+00, %7787
  %7789 = call float @dx.op.unary.f32(i32 21, float %7784)  ; Exp(value)
  %7790 = call float @dx.op.unary.f32(i32 21, float %7786)  ; Exp(value)
  %7791 = call float @dx.op.unary.f32(i32 21, float %7788)  ; Exp(value)
  %7792 = fmul fast float %7303, %7303
  %7793 = fadd fast float %7792, 1.000000e+00
  %7794 = fmul fast float %7793, 0x3FAE8EC8A0000000
  %7795 = fmul fast float %7794, %7284
  %7796 = fmul fast float %7794, %7285
  %7797 = fmul fast float %7794, %7286
  %7798 = fmul fast float %7303, %7282
  %7799 = fsub fast float 1.000000e+00, %7798
  %7800 = fmul fast float %7282, %7282
  %7801 = fsub fast float 1.000000e+00, %7800
  %7802 = fmul fast float %7801, 0x3FB45F3060000000
  %7803 = fmul fast float %7799, %7799
  %7804 = fdiv fast float 1.000000e+00, %7803
  %7805 = fmul fast float %7802, %7804
  %7806 = fmul fast float %7805, %7279
  %7807 = fmul fast float %7805, %7280
  %7808 = fmul fast float %7805, %7281
  %7809 = fadd fast float %7806, %7795
  %7810 = fadd fast float %7807, %7796
  %7811 = fadd fast float %7808, %7797
  %7812 = fsub fast float 1.000000e+00, %7789
  %7813 = fsub fast float 1.000000e+00, %7790
  %7814 = fsub fast float 1.000000e+00, %7791
  %7815 = fmul fast float %7809, %7812
  %7816 = fmul fast float %7810, %7813
  %7817 = fmul fast float %7811, %7814
  br label %7818

; <label>:7818                                    ; preds = %7779, %7730
  %7819 = phi float [ %7756, %7730 ], [ %7815, %7779 ]
  %7820 = phi float [ %7757, %7730 ], [ %7816, %7779 ]
  %7821 = phi float [ %7758, %7730 ], [ %7817, %7779 ]
  %7822 = phi float [ %7745, %7730 ], [ %7789, %7779 ]
  %7823 = phi float [ %7745, %7730 ], [ %7790, %7779 ]
  %7824 = phi float [ %7745, %7730 ], [ %7791, %7779 ]
  br i1 %7311, label %7825, label %8023, !dx.controlflow.hints !164

; <label>:7825                                    ; preds = %7818
  %7826 = extractvalue %dx.types.CBufRet.f32 %7724, 0
  %7827 = fmul fast float %7826, %7726
  %7828 = fsub fast float %7721, %7819
  %7829 = fsub fast float %7722, %7820
  %7830 = fsub fast float %7723, %7821
  %7831 = fmul fast float %7827, %7828
  %7832 = fmul fast float %7827, %7829
  %7833 = fmul fast float %7827, %7830
  %7834 = fadd fast float %7831, %7819
  %7835 = fadd fast float %7832, %7820
  %7836 = fadd fast float %7833, %7821
  %7837 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7822)  ; FMax(a,b)
  %7838 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7823)  ; FMax(a,b)
  %7839 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7824)  ; FMax(a,b)
  %7840 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7720)  ; FMax(a,b)
  %7841 = call float @dx.op.binary.f32(i32 35, float %7719, float %7729)  ; FMax(a,b)
  %7842 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7841)  ; FMax(a,b)
  %7843 = fdiv fast float %7719, %7842
  %7844 = call float @dx.op.unary.f32(i32 7, float %7843)  ; Saturate(value)
  %7845 = fdiv fast float %7729, %7842
  %7846 = call float @dx.op.unary.f32(i32 7, float %7845)  ; Saturate(value)
  %7847 = fcmp fast une float %7840, 1.000000e+00
  br i1 %7847, label %7848, label %7861, !dx.controlflow.hints !165

; <label>:7848                                    ; preds = %7825
  %7849 = call float @dx.op.unary.f32(i32 23, float %7840)  ; Log(value)
  %7850 = fmul fast float %7849, 0x3FE62E4300000000
  %7851 = fmul fast float %7721, %7850
  %7852 = fsub fast float -0.000000e+00, %7851
  %7853 = fmul fast float %7722, %7850
  %7854 = fsub fast float -0.000000e+00, %7853
  %7855 = fmul fast float %7723, %7850
  %7856 = fsub fast float -0.000000e+00, %7855
  %7857 = fsub fast float 1.000000e+00, %7840
  %7858 = fdiv fast float %7852, %7857
  %7859 = fdiv fast float %7854, %7857
  %7860 = fdiv fast float %7856, %7857
  br label %7861

; <label>:7861                                    ; preds = %7848, %7825
  %7862 = phi float [ %7858, %7848 ], [ %7721, %7825 ]
  %7863 = phi float [ %7859, %7848 ], [ %7722, %7825 ]
  %7864 = phi float [ %7860, %7848 ], [ %7723, %7825 ]
  %7865 = phi float [ %7850, %7848 ], [ 0.000000e+00, %7825 ]
  %7866 = fcmp fast une float %7837, 1.000000e+00
  br i1 %7866, label %7867, label %7874, !dx.controlflow.hints !166

; <label>:7867                                    ; preds = %7861
  %7868 = call float @dx.op.unary.f32(i32 23, float %7837)  ; Log(value)
  %7869 = fmul fast float %7868, 0x3FE62E4300000000
  %7870 = fmul fast float %7834, %7869
  %7871 = fsub fast float -0.000000e+00, %7870
  %7872 = fsub fast float 1.000000e+00, %7837
  %7873 = fdiv fast float %7871, %7872
  br label %7874

; <label>:7874                                    ; preds = %7867, %7861
  %7875 = phi float [ %7873, %7867 ], [ %7834, %7861 ]
  %7876 = phi float [ %7869, %7867 ], [ 0.000000e+00, %7861 ]
  %7877 = fcmp fast une float %7838, 1.000000e+00
  br i1 %7877, label %7878, label %7885, !dx.controlflow.hints !166

; <label>:7878                                    ; preds = %7874
  %7879 = call float @dx.op.unary.f32(i32 23, float %7838)  ; Log(value)
  %7880 = fmul fast float %7879, 0x3FE62E4300000000
  %7881 = fmul fast float %7835, %7880
  %7882 = fsub fast float -0.000000e+00, %7881
  %7883 = fsub fast float 1.000000e+00, %7838
  %7884 = fdiv fast float %7882, %7883
  br label %7885

; <label>:7885                                    ; preds = %7878, %7874
  %7886 = phi float [ %7884, %7878 ], [ %7835, %7874 ]
  %7887 = phi float [ %7880, %7878 ], [ 0.000000e+00, %7874 ]
  %7888 = fcmp fast une float %7839, 1.000000e+00
  br i1 %7888, label %7889, label %7896, !dx.controlflow.hints !166

; <label>:7889                                    ; preds = %7885
  %7890 = call float @dx.op.unary.f32(i32 23, float %7839)  ; Log(value)
  %7891 = fmul fast float %7890, 0x3FE62E4300000000
  %7892 = fmul fast float %7836, %7891
  %7893 = fsub fast float -0.000000e+00, %7892
  %7894 = fsub fast float 1.000000e+00, %7839
  %7895 = fdiv fast float %7893, %7894
  br label %7896

; <label>:7896                                    ; preds = %7889, %7885
  %7897 = phi float [ %7895, %7889 ], [ %7836, %7885 ]
  %7898 = phi float [ %7891, %7889 ], [ 0.000000e+00, %7885 ]
  %7899 = fmul fast float %7862, %7846
  %7900 = fmul fast float %7863, %7846
  %7901 = fmul fast float %7864, %7846
  %7902 = fmul fast float %7865, %7846
  %7903 = fmul fast float %7875, %7844
  %7904 = fmul fast float %7886, %7844
  %7905 = fmul fast float %7897, %7844
  %7906 = fmul fast float %7876, %7844
  %7907 = fmul fast float %7887, %7844
  %7908 = fmul fast float %7898, %7844
  %7909 = fadd fast float %7903, %7899
  %7910 = fadd fast float %7904, %7900
  %7911 = fadd fast float %7905, %7901
  %7912 = fadd fast float %7906, %7902
  %7913 = fadd fast float %7907, %7902
  %7914 = fadd fast float %7908, %7902
  %7915 = fcmp fast une float %7912, 0.000000e+00
  br i1 %7915, label %7916, label %7923, !dx.controlflow.hints !167

; <label>:7916                                    ; preds = %7896
  %7917 = fmul fast float %7912, 0x3FF7154760000000
  %7918 = call float @dx.op.unary.f32(i32 21, float %7917)  ; Exp(value)
  %7919 = fsub fast float 1.000000e+00, %7918
  %7920 = fmul fast float %7909, %7919
  %7921 = fsub fast float -0.000000e+00, %7920
  %7922 = fdiv fast float %7921, %7912
  br label %7923

; <label>:7923                                    ; preds = %7916, %7896
  %7924 = phi float [ %7918, %7916 ], [ 1.000000e+00, %7896 ]
  %7925 = phi float [ %7922, %7916 ], [ %7909, %7896 ]
  %7926 = fcmp fast une float %7913, 0.000000e+00
  br i1 %7926, label %7927, label %7934, !dx.controlflow.hints !167

; <label>:7927                                    ; preds = %7923
  %7928 = fmul fast float %7913, 0x3FF7154760000000
  %7929 = call float @dx.op.unary.f32(i32 21, float %7928)  ; Exp(value)
  %7930 = fsub fast float 1.000000e+00, %7929
  %7931 = fmul fast float %7910, %7930
  %7932 = fsub fast float -0.000000e+00, %7931
  %7933 = fdiv fast float %7932, %7913
  br label %7934

; <label>:7934                                    ; preds = %7927, %7923
  %7935 = phi float [ %7929, %7927 ], [ 1.000000e+00, %7923 ]
  %7936 = phi float [ %7933, %7927 ], [ %7910, %7923 ]
  %7937 = fcmp fast une float %7914, 0.000000e+00
  br i1 %7937, label %7938, label %7945, !dx.controlflow.hints !167

; <label>:7938                                    ; preds = %7934
  %7939 = fmul fast float %7914, 0x3FF7154760000000
  %7940 = call float @dx.op.unary.f32(i32 21, float %7939)  ; Exp(value)
  %7941 = fsub fast float 1.000000e+00, %7940
  %7942 = fmul fast float %7911, %7941
  %7943 = fsub fast float -0.000000e+00, %7942
  %7944 = fdiv fast float %7943, %7914
  br label %7945

; <label>:7945                                    ; preds = %7938, %7934
  %7946 = phi float [ %7940, %7938 ], [ 1.000000e+00, %7934 ]
  %7947 = phi float [ %7944, %7938 ], [ %7911, %7934 ]
  %7948 = fcmp fast ogt float %7844, %7846
  br i1 %7948, label %7949, label %7969

; <label>:7949                                    ; preds = %7945
  %7950 = fsub fast float 1.000000e+00, %7846
  %7951 = fmul fast float %7862, %7950
  %7952 = fmul fast float %7863, %7950
  %7953 = fmul fast float %7864, %7950
  %7954 = fmul fast float %7865, %7950
  %7955 = fcmp fast une float %7954, 0.000000e+00
  br i1 %7955, label %7956, label %8007, !dx.controlflow.hints !168

; <label>:7956                                    ; preds = %7949
  %7957 = fmul fast float %7954, 0x3FF7154760000000
  %7958 = call float @dx.op.unary.f32(i32 21, float %7957)  ; Exp(value)
  %7959 = fsub fast float 1.000000e+00, %7958
  %7960 = fmul fast float %7951, %7959
  %7961 = fsub fast float -0.000000e+00, %7960
  %7962 = fmul fast float %7952, %7959
  %7963 = fsub fast float -0.000000e+00, %7962
  %7964 = fmul fast float %7953, %7959
  %7965 = fsub fast float -0.000000e+00, %7964
  %7966 = fdiv fast float %7961, %7954
  %7967 = fdiv fast float %7963, %7954
  %7968 = fdiv fast float %7965, %7954
  br label %8007

; <label>:7969                                    ; preds = %7945
  %7970 = fsub fast float 1.000000e+00, %7844
  %7971 = fmul fast float %7875, %7970
  %7972 = fmul fast float %7886, %7970
  %7973 = fmul fast float %7897, %7970
  %7974 = fmul fast float %7876, %7970
  %7975 = fmul fast float %7887, %7970
  %7976 = fmul fast float %7898, %7970
  %7977 = fcmp fast une float %7974, 0.000000e+00
  br i1 %7977, label %7978, label %7985, !dx.controlflow.hints !167

; <label>:7978                                    ; preds = %7969
  %7979 = fmul fast float %7974, 0x3FF7154760000000
  %7980 = call float @dx.op.unary.f32(i32 21, float %7979)  ; Exp(value)
  %7981 = fsub fast float 1.000000e+00, %7980
  %7982 = fmul fast float %7971, %7981
  %7983 = fsub fast float -0.000000e+00, %7982
  %7984 = fdiv fast float %7983, %7974
  br label %7985

; <label>:7985                                    ; preds = %7978, %7969
  %7986 = phi float [ %7984, %7978 ], [ %7971, %7969 ]
  %7987 = phi float [ %7980, %7978 ], [ 1.000000e+00, %7969 ]
  %7988 = fcmp fast une float %7975, 0.000000e+00
  br i1 %7988, label %7989, label %7996, !dx.controlflow.hints !167

; <label>:7989                                    ; preds = %7985
  %7990 = fmul fast float %7975, 0x3FF7154760000000
  %7991 = call float @dx.op.unary.f32(i32 21, float %7990)  ; Exp(value)
  %7992 = fsub fast float 1.000000e+00, %7991
  %7993 = fmul fast float %7972, %7992
  %7994 = fsub fast float -0.000000e+00, %7993
  %7995 = fdiv fast float %7994, %7975
  br label %7996

; <label>:7996                                    ; preds = %7989, %7985
  %7997 = phi float [ %7995, %7989 ], [ %7972, %7985 ]
  %7998 = phi float [ %7991, %7989 ], [ 1.000000e+00, %7985 ]
  %7999 = fcmp fast une float %7976, 0.000000e+00
  br i1 %7999, label %8000, label %8007, !dx.controlflow.hints !167

; <label>:8000                                    ; preds = %7996
  %8001 = fmul fast float %7976, 0x3FF7154760000000
  %8002 = call float @dx.op.unary.f32(i32 21, float %8001)  ; Exp(value)
  %8003 = fsub fast float 1.000000e+00, %8002
  %8004 = fmul fast float %7973, %8003
  %8005 = fsub fast float -0.000000e+00, %8004
  %8006 = fdiv fast float %8005, %7976
  br label %8007

; <label>:8007                                    ; preds = %8000, %7996, %7956, %7949
  %8008 = phi float [ %8006, %8000 ], [ %7968, %7956 ], [ %7953, %7949 ], [ %7973, %7996 ]
  %8009 = phi float [ %7997, %8000 ], [ %7967, %7956 ], [ %7952, %7949 ], [ %7997, %7996 ]
  %8010 = phi float [ %7986, %8000 ], [ %7966, %7956 ], [ %7951, %7949 ], [ %7986, %7996 ]
  %8011 = phi float [ %8002, %8000 ], [ %7958, %7956 ], [ 1.000000e+00, %7949 ], [ 1.000000e+00, %7996 ]
  %8012 = phi float [ %7998, %8000 ], [ %7958, %7956 ], [ 1.000000e+00, %7949 ], [ %7998, %7996 ]
  %8013 = phi float [ %7987, %8000 ], [ %7958, %7956 ], [ 1.000000e+00, %7949 ], [ %7987, %7996 ]
  %8014 = fmul fast float %8013, %7925
  %8015 = fmul fast float %8012, %7936
  %8016 = fmul fast float %8011, %7947
  %8017 = fadd fast float %8014, %8010
  %8018 = fadd fast float %8015, %8009
  %8019 = fadd fast float %8016, %8008
  %8020 = fmul fast float %8013, %7924
  %8021 = fmul fast float %8012, %7935
  %8022 = fmul fast float %8011, %7946
  br label %8023

; <label>:8023                                    ; preds = %8007, %7818
  %8024 = phi float [ %8022, %8007 ], [ %7824, %7818 ]
  %8025 = phi float [ %8021, %8007 ], [ %7823, %7818 ]
  %8026 = phi float [ %8020, %8007 ], [ %7822, %7818 ]
  %8027 = phi float [ %8019, %8007 ], [ %7821, %7818 ]
  %8028 = phi float [ %8018, %8007 ], [ %7820, %7818 ]
  %8029 = phi float [ %8017, %8007 ], [ %7819, %7818 ]
  %8030 = fmul fast float %8029, %6975
  %8031 = fmul fast float %8028, %6975
  %8032 = fmul fast float %8027, %6975
  %8033 = fmul fast float %8026, %7266
  %8034 = call float @dx.op.dot3.f32(i32 55, float %8026, float %8025, float %8024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8035 = call float @dx.op.dot3.f32(i32 55, float %8030, float %8031, float %8032, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8036 = select i1 %250, float %8034, float %8026
  %8037 = select i1 %250, float %8034, float %8025
  %8038 = select i1 %250, float 1.000000e+00, float %8024
  %8039 = select i1 %250, float %8035, float %8030
  %8040 = select i1 %250, float 0.000000e+00, float %8031
  %8041 = select i1 %250, float 0.000000e+00, float %8032
  %8042 = fmul fast float %8036, %7260
  %8043 = fmul fast float %8037, %7261
  %8044 = fmul fast float %8038, %7262
  %8045 = fadd fast float %8042, %8039
  %8046 = fadd fast float %8043, %8040
  %8047 = fadd fast float %8041, %8044
  %8048 = fmul fast float %8036, %7263
  %8049 = fmul fast float %8037, %7264
  %8050 = fmul fast float %8038, %7265
  %8051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8052 = extractvalue %dx.types.CBufRet.i32 %8051, 0
  %8053 = icmp eq i32 %8052, 0
  br i1 %8053, label %8421, label %8054, !dx.controlflow.hints !169

; <label>:8054                                    ; preds = %8023
  %8055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8056 = extractvalue %dx.types.CBufRet.f32 %8055, 2
  %8057 = extractvalue %dx.types.CBufRet.f32 %8055, 3
  %8058 = fmul fast float %8056, %104
  %8059 = fmul fast float %8057, %105
  %8060 = fmul fast float %8058, 2.000000e+00
  %8061 = fmul fast float %8059, 2.000000e+00
  %8062 = fsub fast float 1.000000e+00, %8060
  %8063 = fsub fast float 1.000000e+00, %8061
  %8064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8065 = extractvalue %dx.types.CBufRet.f32 %8064, 0
  %8066 = extractvalue %dx.types.CBufRet.f32 %8064, 1
  %8067 = extractvalue %dx.types.CBufRet.f32 %8064, 2
  %8068 = fmul fast float %8062, %8065
  %8069 = fmul fast float %8062, %8066
  %8070 = fmul fast float %8062, %8067
  %8071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8072 = extractvalue %dx.types.CBufRet.f32 %8071, 0
  %8073 = extractvalue %dx.types.CBufRet.f32 %8071, 1
  %8074 = extractvalue %dx.types.CBufRet.f32 %8071, 2
  %8075 = fmul fast float %8063, %8072
  %8076 = fmul fast float %8063, %8073
  %8077 = fmul fast float %8063, %8074
  %8078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8079 = extractvalue %dx.types.CBufRet.f32 %8078, 0
  %8080 = extractvalue %dx.types.CBufRet.f32 %8078, 1
  %8081 = extractvalue %dx.types.CBufRet.f32 %8078, 2
  %8082 = fadd fast float %8075, %8079
  %8083 = fadd fast float %8082, %8068
  %8084 = fadd fast float %8076, %8080
  %8085 = fadd fast float %8084, %8069
  %8086 = fadd fast float %8077, %8081
  %8087 = fadd fast float %8086, %8070
  %8088 = fmul fast float %8083, %7259
  %8089 = fmul fast float %8085, %7259
  %8090 = fmul fast float %8087, %7259
  %8091 = fmul fast float %8088, %8088
  %8092 = fmul fast float %8089, %8089
  %8093 = fadd fast float %8091, %8092
  %8094 = fmul fast float %8090, %8090
  %8095 = fadd fast float %8093, %8094
  %8096 = call float @dx.op.unary.f32(i32 24, float %8095)  ; Sqrt(value)
  %8097 = extractvalue %dx.types.CBufRet.f32 %6986, 0
  %8098 = fsub fast float %8096, %8097
  %8099 = extractvalue %dx.types.CBufRet.f32 %6986, 2
  %8100 = fmul fast float %8098, %8099
  %8101 = call float @dx.op.unary.f32(i32 7, float %8100)  ; Saturate(value)
  %8102 = fadd fast float %8101, -5.000000e-01
  %8103 = fmul fast float %8102, 2.000000e+00
  %8104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8105 = extractvalue %dx.types.CBufRet.f32 %8104, 2
  %8106 = call float @dx.op.binary.f32(i32 36, float %8105, float %8103)  ; FMin(a,b)
  %8107 = fsub fast float -0.000000e+00, %8105
  %8108 = fcmp fast ogt float %8106, %8107
  br i1 %8108, label %8109, label %8421, !dx.controlflow.hints !170

; <label>:8109                                    ; preds = %8054
  %8110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8111 = extractvalue %dx.types.CBufRet.f32 %8110, 3
  %8112 = fcmp fast ogt float %8111, 0.000000e+00
  br i1 %8112, label %8113, label %8188, !dx.controlflow.hints !171

; <label>:8113                                    ; preds = %8109
  %8114 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8115 = extractvalue %dx.types.Dimensions %8114, 0
  %8116 = sitofp i32 %8115 to float
  %8117 = extractvalue %dx.types.Dimensions %8114, 1
  %8118 = sitofp i32 %8117 to float
  %8119 = fmul fast float %8058, %8116
  %8120 = fmul fast float %8059, %8118
  %8121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8122 = extractvalue %dx.types.CBufRet.f32 %8121, 1
  %8123 = fsub fast float -0.000000e+00, %8122
  %8124 = fptoui float %8123 to i32
  %8125 = fptoui float %8119 to i32
  %8126 = fptoui float %8120 to i32
  %8127 = and i32 %8124, 31
  %8128 = lshr i32 %8125, %8127
  %8129 = lshr i32 %8126, %8127
  %8130 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8124, i32 %8128, i32 %8129, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8131 = extractvalue %dx.types.ResRet.f32 %8130, 0
  %8132 = fcmp fast olt float %8131, -1.000000e+00
  %8133 = fcmp fast ogt float %8131, -1.000000e+00
  %8134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8135 = extractvalue %dx.types.CBufRet.f32 %8134, 1
  %8136 = select i1 %8133, float %8135, float 1.000000e+00
  %8137 = fadd fast float %8131, 1.000000e+00
  %8138 = fmul fast float %8136, %8137
  %8139 = call float @dx.op.unary.f32(i32 6, float %8138)  ; FAbs(value)
  %8140 = extractvalue %dx.types.CBufRet.f32 %8134, 3
  %8141 = fcmp fast oge float %8139, %8140
  %8142 = select i1 %8141, float 0x4197782600000000, float %8139
  %8143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8144 = extractvalue %dx.types.CBufRet.f32 %8143, 0
  %8145 = extractvalue %dx.types.CBufRet.f32 %8143, 1
  %8146 = extractvalue %dx.types.CBufRet.f32 %8143, 2
  %8147 = select i1 %8132, float %8144, float %8065
  %8148 = select i1 %8132, float %8145, float %8066
  %8149 = select i1 %8132, float %8146, float %8067
  %8150 = fmul fast float %8147, %8062
  %8151 = fmul fast float %8148, %8062
  %8152 = fmul fast float %8149, %8062
  %8153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8154 = extractvalue %dx.types.CBufRet.f32 %8153, 0
  %8155 = extractvalue %dx.types.CBufRet.f32 %8153, 1
  %8156 = extractvalue %dx.types.CBufRet.f32 %8153, 2
  %8157 = select i1 %8132, float %8154, float %8072
  %8158 = select i1 %8132, float %8155, float %8073
  %8159 = select i1 %8132, float %8156, float %8074
  %8160 = fmul fast float %8157, %8063
  %8161 = fmul fast float %8158, %8063
  %8162 = fmul fast float %8159, %8063
  %8163 = fadd fast float %8160, %8150
  %8164 = fadd fast float %8161, %8151
  %8165 = fadd fast float %8162, %8152
  %8166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8167 = extractvalue %dx.types.CBufRet.f32 %8166, 0
  %8168 = extractvalue %dx.types.CBufRet.f32 %8166, 1
  %8169 = extractvalue %dx.types.CBufRet.f32 %8166, 2
  %8170 = select i1 %8132, float %8167, float %8079
  %8171 = select i1 %8132, float %8168, float %8080
  %8172 = select i1 %8132, float %8169, float %8081
  %8173 = fadd fast float %8163, %8170
  %8174 = fadd fast float %8164, %8171
  %8175 = fadd fast float %8165, %8172
  %8176 = fmul fast float %8173, %8142
  %8177 = fmul fast float %8174, %8142
  %8178 = fmul fast float %8175, %8142
  %8179 = fmul fast float %8176, %8176
  %8180 = fmul fast float %8177, %8177
  %8181 = fadd fast float %8179, %8180
  %8182 = fmul fast float %8178, %8178
  %8183 = fadd fast float %8181, %8182
  %8184 = call float @dx.op.unary.f32(i32 24, float %8183)  ; Sqrt(value)
  %8185 = fsub fast float %8184, %8097
  %8186 = fmul fast float %8185, %8099
  %8187 = call float @dx.op.unary.f32(i32 7, float %8186)  ; Saturate(value)
  br label %8188

; <label>:8188                                    ; preds = %8113, %8109
  %8189 = phi float [ %8187, %8113 ], [ 1.000000e+00, %8109 ]
  %8190 = fmul fast float %8106, 5.000000e-01
  %8191 = fadd fast float %8190, 5.000000e-01
  %8192 = call float @dx.op.unary.f32(i32 22, float %8191)  ; Frc(value)
  %8193 = call float @dx.op.unary.f32(i32 27, float %8192)  ; Round_ni(value)
  %8194 = call float @dx.op.unary.f32(i32 22, float %8192)  ; Frc(value)
  %8195 = fmul fast float %8194, 2.000000e+00
  %8196 = fadd fast float %8195, -1.000000e+00
  %8197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8058, float %8059, float %8193, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8198 = extractvalue %dx.types.ResRet.f32 %8197, 0
  %8199 = extractvalue %dx.types.ResRet.f32 %8197, 1
  %8200 = extractvalue %dx.types.ResRet.f32 %8197, 2
  %8201 = extractvalue %dx.types.ResRet.f32 %8197, 3
  %8202 = fadd fast float %8198, -5.000000e-01
  %8203 = fadd fast float %8200, -5.000000e-01
  %8204 = fmul fast float %8202, 0xBFD5555560000000
  %8205 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8203, float %8204)  ; FMad(a,b,c)
  %8206 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8199, float 0.000000e+00)  ; FMad(a,b,c)
  %8207 = fadd fast float %8206, %8201
  %8208 = fmul fast float %8202, -7.500000e-01
  %8209 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8203, float %8208)  ; FMad(a,b,c)
  %8210 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8199, float 0.000000e+00)  ; FMad(a,b,c)
  %8211 = fadd fast float %8210, %8201
  %8212 = call float @dx.op.binary.f32(i32 35, float %8205, float -1.000000e+00)  ; FMax(a,b)
  %8213 = call float @dx.op.binary.f32(i32 35, float %8207, float -1.000000e+00)  ; FMax(a,b)
  %8214 = call float @dx.op.binary.f32(i32 35, float %8209, float -1.000000e+00)  ; FMax(a,b)
  %8215 = call float @dx.op.binary.f32(i32 35, float %8211, float -1.000000e+00)  ; FMax(a,b)
  %8216 = call float @dx.op.binary.f32(i32 36, float %8212, float 1.000000e+00)  ; FMin(a,b)
  %8217 = call float @dx.op.binary.f32(i32 36, float %8213, float 1.000000e+00)  ; FMin(a,b)
  %8218 = call float @dx.op.binary.f32(i32 36, float %8214, float 1.000000e+00)  ; FMin(a,b)
  %8219 = call float @dx.op.binary.f32(i32 36, float %8215, float 1.000000e+00)  ; FMin(a,b)
  %8220 = fcmp fast olt float %8216, 0x3FEFFF8020000000
  br i1 %8220, label %8221, label %8336, !dx.controlflow.hints !172

; <label>:8221                                    ; preds = %8188
  %8222 = extractvalue %dx.types.CBufRet.f32 %8104, 3
  %8223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8224 = extractvalue %dx.types.CBufRet.f32 %8223, 0
  %8225 = extractvalue %dx.types.CBufRet.f32 %8223, 1
  %8226 = extractvalue %dx.types.CBufRet.f32 %8223, 2
  %8227 = extractvalue %dx.types.CBufRet.f32 %8223, 3
  %8228 = fsub fast float %8224, %8216
  %8229 = fsub fast float %8225, %8217
  %8230 = fsub fast float %8226, %8218
  %8231 = fsub fast float %8227, %8219
  %8232 = fmul fast float %8228, %8222
  %8233 = fmul fast float %8229, %8222
  %8234 = fmul fast float %8230, %8222
  %8235 = fmul fast float %8231, %8222
  %8236 = fadd fast float %8232, %8216
  %8237 = fadd fast float %8233, %8217
  %8238 = fsub fast float -0.000000e+00, %8237
  %8239 = fadd fast float %8234, %8218
  %8240 = fadd fast float %8235, %8219
  %8241 = fmul fast float %8236, %8236
  %8242 = fsub fast float %8237, %8241
  %8243 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8242)  ; FMax(a,b)
  %8244 = fdiv fast float 1.000000e+00, %8243
  %8245 = fmul fast float %8237, %8236
  %8246 = fsub fast float %8239, %8245
  %8247 = fsub fast float %8196, %8236
  %8248 = fmul fast float %8196, %8196
  %8249 = fsub fast float %8248, %8237
  %8250 = fmul fast float %8247, %8244
  %8251 = fmul fast float %8250, %8246
  %8252 = fsub fast float %8249, %8251
  %8253 = fmul fast float %8237, %8237
  %8254 = fsub fast float %8240, %8253
  %8255 = fmul fast float %8246, %8246
  %8256 = fmul fast float %8255, %8244
  %8257 = fsub fast float %8254, %8256
  %8258 = fdiv fast float %8252, %8257
  %8259 = fmul fast float %8246, %8258
  %8260 = fsub fast float %8247, %8259
  %8261 = fmul fast float %8260, %8244
  %8262 = fmul fast float %8261, %8236
  %8263 = fsub fast float 1.000000e+00, %8262
  %8264 = fmul fast float %8237, %8258
  %8265 = fsub fast float %8263, %8264
  %8266 = fmul fast float %8261, %8261
  %8267 = fmul fast float %8258, 4.000000e+00
  %8268 = fmul fast float %8267, %8265
  %8269 = fsub fast float %8266, %8268
  %8270 = call float @dx.op.unary.f32(i32 24, float %8269)  ; Sqrt(value)
  %8271 = fcmp fast oge float %8261, 0.000000e+00
  %8272 = fsub fast float -0.000000e+00, %8270
  %8273 = select i1 %8271, float %8272, float %8270
  %8274 = fsub fast float %8273, %8261
  %8275 = fdiv fast float %8274, %8258
  %8276 = fdiv fast float %8265, %8274
  %8277 = fmul fast float %8275, 5.000000e-01
  %8278 = fmul fast float %8276, 2.000000e+00
  %8279 = select i1 %8271, float %8277, float %8278
  %8280 = select i1 %8271, float %8278, float %8277
  %8281 = call float @dx.op.binary.f32(i32 35, float %8279, float %8280)  ; FMax(a,b)
  %8282 = call float @dx.op.binary.f32(i32 36, float %8279, float %8280)  ; FMin(a,b)
  %8283 = fcmp fast ogt float %8196, %8282
  br i1 %8283, label %8284, label %8294

; <label>:8284                                    ; preds = %8221
  %8285 = fsub fast float %8196, %8282
  %8286 = fsub fast float %8281, %8282
  %8287 = fmul fast float %8285, %8286
  %8288 = fmul fast float %8281, %8196
  %8289 = fadd fast float %8281, %8196
  %8290 = fmul fast float %8289, %8236
  %8291 = fadd fast float %8288, %8237
  %8292 = fsub fast float %8291, %8290
  %8293 = fdiv fast float %8292, %8287
  br label %8294

; <label>:8294                                    ; preds = %8284, %8221
  %8295 = phi float [ %8293, %8284 ], [ 0.000000e+00, %8221 ]
  %8296 = fcmp fast ogt float %8196, %8281
  %8297 = fsub fast float %8196, %8281
  br i1 %8296, label %8298, label %8308

; <label>:8298                                    ; preds = %8294
  %8299 = fsub fast float %8281, %8282
  %8300 = fmul fast float %8299, %8297
  %8301 = fmul fast float %8282, %8196
  %8302 = fadd fast float %8282, %8196
  %8303 = fmul fast float %8302, %8236
  %8304 = fsub fast float %8238, %8301
  %8305 = fadd fast float %8304, %8303
  %8306 = fdiv fast float %8305, %8300
  %8307 = fadd fast float %8306, %8295
  br label %8308

; <label>:8308                                    ; preds = %8298, %8294
  %8309 = phi float [ %8307, %8298 ], [ %8295, %8294 ]
  %8310 = fsub fast float %8196, %8282
  %8311 = fmul fast float %8310, %8297
  %8312 = fmul fast float %8282, %8281
  %8313 = fadd fast float %8282, %8281
  %8314 = fmul fast float %8313, %8236
  %8315 = fadd fast float %8312, %8237
  %8316 = fsub fast float %8315, %8314
  %8317 = fdiv fast float %8316, %8311
  %8318 = call float @dx.op.unary.f32(i32 7, float %8309)  ; Saturate(value)
  %8319 = fcmp fast oeq float %6987, 0.000000e+00
  %8320 = extractvalue %dx.types.CBufRet.f32 %8104, 0
  %8321 = fcmp fast oeq float %8320, 0.000000e+00
  %8322 = or i1 %8319, %8321
  %8323 = fmul fast float %8320, 2.000000e+00
  %8324 = fadd fast float %8105, %8106
  %8325 = fdiv fast float %8324, %8323
  %8326 = call float @dx.op.unary.f32(i32 7, float %8325)  ; Saturate(value)
  %8327 = fmul fast float %8326, 2.000000e+00
  %8328 = fsub fast float 3.000000e+00, %8327
  %8329 = fmul fast float %8326, %8326
  %8330 = fmul fast float %8329, %8328
  %8331 = select i1 %8322, float 1.000000e+00, float %8330
  %8332 = fmul fast float %8317, %6987
  %8333 = fadd fast float %8318, %8332
  %8334 = call float @dx.op.unary.f32(i32 7, float %8333)  ; Saturate(value)
  %8335 = fmul fast float %8331, %8334
  br label %8336

; <label>:8336                                    ; preds = %8308, %8188
  %8337 = phi float [ %8335, %8308 ], [ 0.000000e+00, %8188 ]
  %8338 = fsub fast float 1.000000e+00, %8337
  %8339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8058, float %8059, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8340 = extractvalue %dx.types.ResRet.f32 %8339, 0
  %8341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8342 = extractvalue %dx.types.CBufRet.i32 %8341, 2
  %8343 = icmp eq i32 %8342, 0
  br i1 %8343, label %8349, label %8344

; <label>:8344                                    ; preds = %8336
  %8345 = call float @dx.op.unary.f32(i32 7, float %8337)  ; Saturate(value)
  %8346 = fadd fast float %8340, -1.000000e+00
  %8347 = fmul fast float %8345, %8346
  %8348 = fadd fast float %8347, 1.000000e+00
  br label %8349

; <label>:8349                                    ; preds = %8344, %8336
  %8350 = phi float [ %8348, %8344 ], [ %8338, %8336 ]
  br i1 %8112, label %8351, label %8369

; <label>:8351                                    ; preds = %8349
  %8352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8353 = extractvalue %dx.types.CBufRet.f32 %8352, 1
  %8354 = fsub fast float %8189, %8353
  %8355 = call float @dx.op.unary.f32(i32 7, float %8354)  ; Saturate(value)
  %8356 = fsub fast float %8189, %8111
  %8357 = call float @dx.op.unary.f32(i32 7, float %8356)  ; Saturate(value)
  %8358 = fsub fast float %8355, %8357
  %8359 = fsub fast float %8191, %8357
  %8360 = fdiv fast float %8359, %8358
  %8361 = call float @dx.op.unary.f32(i32 7, float %8360)  ; Saturate(value)
  %8362 = fmul fast float %8361, 2.000000e+00
  %8363 = fsub fast float 3.000000e+00, %8362
  %8364 = fsub fast float %8340, %8350
  %8365 = fmul fast float %8361, %8361
  %8366 = fmul fast float %8365, %8364
  %8367 = fmul fast float %8366, %8363
  %8368 = fadd fast float %8367, %8350
  br label %8369

; <label>:8369                                    ; preds = %8351, %8349
  %8370 = phi float [ %8368, %8351 ], [ %8350, %8349 ]
  %8371 = call float @dx.op.binary.f32(i32 35, float %8340, float %8370)  ; FMax(a,b)
  %8372 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8373 = extractvalue %dx.types.CBufRet.i32 %8372, 2
  %8374 = and i32 %8373, 1
  %8375 = icmp eq i32 %8374, 0
  %8376 = fcmp fast une float %8371, 1.000000e+00
  %8377 = and i1 %8376, %8375
  br i1 %8377, label %8378, label %8397

; <label>:8378                                    ; preds = %8369
  %8379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8058, float %8059, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8380 = extractvalue %dx.types.ResRet.f32 %8379, 0
  %8381 = extractvalue %dx.types.ResRet.f32 %8379, 1
  %8382 = extractvalue %dx.types.ResRet.f32 %8379, 2
  %8383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8384 = extractvalue %dx.types.CBufRet.f32 %8383, 1
  %8385 = fmul fast float %8384, %8380
  %8386 = fmul fast float %8384, %8381
  %8387 = fmul fast float %8384, %8382
  %8388 = fcmp fast ogt float %8340, 0x3FEFFF2E40000000
  %8389 = fsub fast float 1.000000e+00, %8371
  %8390 = fsub fast float 1.000000e+00, %8340
  %8391 = fdiv fast float %8389, %8390
  %8392 = call float @dx.op.unary.f32(i32 7, float %8391)  ; Saturate(value)
  %8393 = select i1 %8388, float 0.000000e+00, float %8392
  %8394 = fmul fast float %8385, %8393
  %8395 = fmul fast float %8386, %8393
  %8396 = fmul fast float %8387, %8393
  br label %8397

; <label>:8397                                    ; preds = %8378, %8369
  %8398 = phi float [ 0.000000e+00, %8369 ], [ %8394, %8378 ]
  %8399 = phi float [ 0.000000e+00, %8369 ], [ %8395, %8378 ]
  %8400 = phi float [ 0.000000e+00, %8369 ], [ %8396, %8378 ]
  %8401 = fmul fast float %8398, %6975
  %8402 = fmul fast float %8399, %6975
  %8403 = fmul fast float %8400, %6975
  %8404 = fmul fast float %8371, %8033
  %8405 = call float @dx.op.dot3.f32(i32 55, float %8371, float %8371, float %8371, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8406 = call float @dx.op.dot3.f32(i32 55, float %8401, float %8402, float %8403, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8407 = select i1 %250, float %8405, float %8371
  %8408 = select i1 %250, float 1.000000e+00, float %8371
  %8409 = select i1 %250, float %8406, float %8401
  %8410 = select i1 %250, float 0.000000e+00, float %8402
  %8411 = select i1 %250, float 0.000000e+00, float %8403
  %8412 = fmul fast float %8407, %8045
  %8413 = fmul fast float %8407, %8046
  %8414 = fmul fast float %8408, %8047
  %8415 = fadd fast float %8412, %8409
  %8416 = fadd fast float %8413, %8410
  %8417 = fadd fast float %8411, %8414
  %8418 = fmul fast float %8407, %8048
  %8419 = fmul fast float %8407, %8049
  %8420 = fmul fast float %8408, %8050
  br label %8421

; <label>:8421                                    ; preds = %8397, %8054, %8023, %7255
  %8422 = phi float [ %7260, %7255 ], [ %8045, %8023 ], [ %8415, %8397 ], [ %8045, %8054 ]
  %8423 = phi float [ %7261, %7255 ], [ %8046, %8023 ], [ %8416, %8397 ], [ %8046, %8054 ]
  %8424 = phi float [ %7262, %7255 ], [ %8047, %8023 ], [ %8417, %8397 ], [ %8047, %8054 ]
  %8425 = phi float [ %7263, %7255 ], [ %8048, %8023 ], [ %8418, %8397 ], [ %8048, %8054 ]
  %8426 = phi float [ %7264, %7255 ], [ %8049, %8023 ], [ %8419, %8397 ], [ %8049, %8054 ]
  %8427 = phi float [ %7265, %7255 ], [ %8050, %8023 ], [ %8420, %8397 ], [ %8050, %8054 ]
  %8428 = phi float [ %7266, %7255 ], [ %8033, %8023 ], [ %8404, %8397 ], [ %8033, %8054 ]
  %8429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8430 = extractvalue %dx.types.CBufRet.f32 %8429, 2
  %8431 = extractvalue %dx.types.CBufRet.f32 %8429, 3
  %8432 = fmul fast float %8430, %104
  %8433 = fmul fast float %8431, %105
  %8434 = call float @dx.op.unary.f32(i32 7, float %8432)  ; Saturate(value)
  %8435 = call float @dx.op.unary.f32(i32 7, float %8433)  ; Saturate(value)
  %8436 = select i1 %6997, i32 2, i32 0
  %8437 = or i32 %8436, 1
  %8438 = uitofp i32 %8437 to float
  %8439 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8434, float %8435, float %8438, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8440 = extractvalue %dx.types.ResRet.f32 %8439, 0
  %8441 = extractvalue %dx.types.ResRet.f32 %8439, 1
  %8442 = extractvalue %dx.types.ResRet.f32 %8439, 2
  %8443 = extractvalue %dx.types.ResRet.f32 %8439, 3
  %8444 = add nuw nsw i32 %8436, 2
  %8445 = uitofp i32 %8444 to float
  %8446 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8434, float %8435, float %8445, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8447 = extractvalue %dx.types.ResRet.f32 %8446, 0
  %8448 = extractvalue %dx.types.ResRet.f32 %8446, 1
  %8449 = extractvalue %dx.types.ResRet.f32 %8446, 2
  %8450 = extractvalue %dx.types.ResRet.f32 %8446, 3
  %8451 = call float @dx.op.binary.f32(i32 35, float %8441, float %8442)  ; FMax(a,b)
  %8452 = call float @dx.op.binary.f32(i32 35, float %8440, float %8451)  ; FMax(a,b)
  %8453 = call float @dx.op.binary.f32(i32 35, float %8452, float %8443)  ; FMax(a,b)
  %8454 = call float @dx.op.binary.f32(i32 36, float %8448, float %8449)  ; FMin(a,b)
  %8455 = call float @dx.op.binary.f32(i32 36, float %8447, float %8454)  ; FMin(a,b)
  %8456 = call float @dx.op.binary.f32(i32 36, float %8455, float %8450)  ; FMin(a,b)
  %8457 = fmul fast float %8453, 2.550000e+02
  %8458 = fadd fast float %8457, 0x3F70101020000000
  %8459 = fptoui float %8458 to i32
  %8460 = fmul fast float %8456, 2.550000e+02
  %8461 = fadd fast float %8460, 0x3F70101020000000
  %8462 = fptoui float %8461 to i32
  %8463 = icmp ult i32 %8459, %8462
  br i1 %8463, label %8464, label %8633

; <label>:8464                                    ; preds = %8421
  %8465 = fcmp fast ogt float %94, 9.843750e-01
  %8466 = fadd fast float %7259, -4.000000e+00
  %8467 = select i1 %8465, float -4.000000e+00, float %8466
  %8468 = call float @dx.op.binary.f32(i32 35, float %8467, float 0.000000e+00)  ; FMax(a,b)
  %8469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8470 = extractvalue %dx.types.CBufRet.f32 %8469, 0
  %8471 = fadd fast float %8470, %8468
  %8472 = extractvalue %dx.types.CBufRet.f32 %8469, 2
  %8473 = fmul fast float %8471, %8472
  %8474 = call float @dx.op.unary.f32(i32 23, float %8473)  ; Log(value)
  %8475 = extractvalue %dx.types.CBufRet.f32 %8469, 3
  %8476 = fmul fast float %8475, %8474
  %8477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8478 = extractvalue %dx.types.CBufRet.f32 %8477, 2
  %8479 = fmul fast float %8476, %8478
  %8480 = call float @dx.op.unary.f32(i32 7, float %8479)  ; Saturate(value)
  %8481 = uitofp i32 %8459 to float
  %8482 = uitofp i32 %8462 to float
  %8483 = fadd fast float %8481, 5.000000e-01
  %8484 = fadd fast float %8482, 5.000000e-01
  %8485 = fmul fast float %8478, %8483
  %8486 = fmul fast float %8478, %8484
  %8487 = fadd fast float %8485, 0x3F0FFB4800000000
  %8488 = fadd fast float %8486, 0xBF0FFB4800000000
  %8489 = call float @dx.op.binary.f32(i32 35, float %8480, float %8487)  ; FMax(a,b)
  %8490 = call float @dx.op.binary.f32(i32 36, float %8489, float %8488)  ; FMin(a,b)
  %8491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8492 = extractvalue %dx.types.CBufRet.f32 %8491, 1
  %8493 = extractvalue %dx.types.CBufRet.f32 %8491, 2
  %8494 = extractvalue %dx.types.CBufRet.f32 %8491, 0
  %8495 = select i1 %6997, float %8494, float 0.000000e+00
  %8496 = fmul fast float %8492, %8490
  %8497 = fadd fast float %8495, %8496
  %8498 = fadd fast float %8495, %8493
  %8499 = fsub fast float %8492, %8493
  %8500 = fadd fast float %8499, %8495
  %8501 = call float @dx.op.binary.f32(i32 35, float %8497, float %8498)  ; FMax(a,b)
  %8502 = call float @dx.op.binary.f32(i32 36, float %8501, float %8500)  ; FMin(a,b)
  %8503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8434, float %8435, float %8502, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8504 = extractvalue %dx.types.ResRet.f32 %8503, 0
  %8505 = extractvalue %dx.types.ResRet.f32 %8503, 1
  %8506 = extractvalue %dx.types.ResRet.f32 %8503, 2
  %8507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8508 = extractvalue %dx.types.CBufRet.i32 %8507, 0
  %8509 = extractvalue %dx.types.CBufRet.i32 %8507, 1
  %8510 = uitofp i32 %8508 to float
  %8511 = uitofp i32 %8509 to float
  %8512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8513 = extractvalue %dx.types.CBufRet.f32 %8512, 0
  %8514 = extractvalue %dx.types.CBufRet.f32 %8512, 1
  %8515 = fmul fast float %8510, %8434
  %8516 = fmul fast float %8511, %8435
  %8517 = fadd fast float %8515, -5.000000e-01
  %8518 = fadd fast float %8516, -5.000000e-01
  %8519 = call float @dx.op.unary.f32(i32 22, float %8517)  ; Frc(value)
  %8520 = call float @dx.op.unary.f32(i32 22, float %8518)  ; Frc(value)
  %8521 = fmul fast float %8519, %8519
  %8522 = fmul fast float %8521, %8519
  %8523 = fsub fast float 3.000000e+00, %8519
  %8524 = fmul fast float %8521, %8523
  %8525 = fmul fast float %8519, 3.000000e+00
  %8526 = fmul fast float %8522, 3.000000e+00
  %8527 = fmul fast float %8521, 6.000000e+00
  %8528 = fsub fast float %8526, %8527
  %8529 = fadd fast float %8528, 4.000000e+00
  %8530 = fmul fast float %8529, 0x3FC5555560000000
  %8531 = fmul fast float %8522, -3.000000e+00
  %8532 = fadd fast float %8521, %8519
  %8533 = fmul fast float %8532, 3.000000e+00
  %8534 = fadd fast float %8531, 1.000000e+00
  %8535 = fadd fast float %8534, %8533
  %8536 = fmul fast float %8522, 0x3FC5555560000000
  %8537 = fmul fast float %8520, %8520
  %8538 = fmul fast float %8537, %8520
  %8539 = fsub fast float 3.000000e+00, %8520
  %8540 = fmul fast float %8537, %8539
  %8541 = fmul fast float %8520, 3.000000e+00
  %8542 = fmul fast float %8538, 3.000000e+00
  %8543 = fmul fast float %8537, 6.000000e+00
  %8544 = fsub fast float %8542, %8543
  %8545 = fadd fast float %8544, 4.000000e+00
  %8546 = fmul fast float %8545, 0x3FC5555560000000
  %8547 = fmul fast float %8538, -3.000000e+00
  %8548 = fadd fast float %8537, %8520
  %8549 = fmul fast float %8548, 3.000000e+00
  %8550 = fadd fast float %8547, 1.000000e+00
  %8551 = fadd fast float %8550, %8549
  %8552 = fmul fast float %8538, 0x3FC5555560000000
  %8553 = fadd fast float %8519, 1.000000e+00
  %8554 = fsub fast float 1.000000e+00, %8525
  %8555 = fadd fast float %8554, %8524
  %8556 = fadd fast float %8555, %8529
  %8557 = fmul fast float %8556, 0x3FC5555560000000
  %8558 = fdiv fast float %8530, %8557
  %8559 = fsub fast float %8553, %8558
  %8560 = fsub fast float 1.000000e+00, %8519
  %8561 = fadd fast float %8535, %8522
  %8562 = fmul fast float %8561, 0x3FC5555560000000
  %8563 = fdiv fast float %8536, %8562
  %8564 = fadd fast float %8560, %8563
  %8565 = fadd fast float %8520, 1.000000e+00
  %8566 = fsub fast float 1.000000e+00, %8541
  %8567 = fadd fast float %8566, %8540
  %8568 = fadd fast float %8567, %8545
  %8569 = fmul fast float %8568, 0x3FC5555560000000
  %8570 = fdiv fast float %8546, %8569
  %8571 = fsub fast float %8565, %8570
  %8572 = fsub fast float 1.000000e+00, %8520
  %8573 = fadd fast float %8551, %8538
  %8574 = fmul fast float %8573, 0x3FC5555560000000
  %8575 = fdiv fast float %8552, %8574
  %8576 = fadd fast float %8575, %8572
  %8577 = fmul fast float %8559, %8513
  %8578 = fsub fast float %8434, %8577
  %8579 = fmul fast float %8564, %8513
  %8580 = fadd fast float %8579, %8434
  %8581 = fmul fast float %8576, %8514
  %8582 = fadd fast float %8581, %8435
  %8583 = fmul fast float %8571, %8514
  %8584 = fsub fast float %8435, %8583
  %8585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8578, float %8584, float %8502, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8586 = extractvalue %dx.types.ResRet.f32 %8585, 0
  %8587 = extractvalue %dx.types.ResRet.f32 %8585, 1
  %8588 = extractvalue %dx.types.ResRet.f32 %8585, 2
  %8589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8580, float %8584, float %8502, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8590 = extractvalue %dx.types.ResRet.f32 %8589, 0
  %8591 = extractvalue %dx.types.ResRet.f32 %8589, 1
  %8592 = extractvalue %dx.types.ResRet.f32 %8589, 2
  %8593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8578, float %8582, float %8502, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8594 = extractvalue %dx.types.ResRet.f32 %8593, 0
  %8595 = extractvalue %dx.types.ResRet.f32 %8593, 1
  %8596 = extractvalue %dx.types.ResRet.f32 %8593, 2
  %8597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8580, float %8582, float %8502, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8598 = extractvalue %dx.types.ResRet.f32 %8597, 0
  %8599 = extractvalue %dx.types.ResRet.f32 %8597, 1
  %8600 = extractvalue %dx.types.ResRet.f32 %8597, 2
  %8601 = fsub fast float %8594, %8586
  %8602 = fsub fast float %8595, %8587
  %8603 = fsub fast float %8596, %8588
  %8604 = fmul fast float %8601, %8574
  %8605 = fmul fast float %8602, %8574
  %8606 = fmul fast float %8603, %8574
  %8607 = fadd fast float %8604, %8586
  %8608 = fadd fast float %8605, %8587
  %8609 = fadd fast float %8606, %8588
  %8610 = fsub fast float %8598, %8590
  %8611 = fsub fast float %8599, %8591
  %8612 = fsub fast float %8600, %8592
  %8613 = fmul fast float %8610, %8574
  %8614 = fmul fast float %8611, %8574
  %8615 = fmul fast float %8612, %8574
  %8616 = fsub fast float %8590, %8607
  %8617 = fadd fast float %8616, %8613
  %8618 = fsub fast float %8591, %8608
  %8619 = fadd fast float %8618, %8614
  %8620 = fsub fast float %8592, %8609
  %8621 = fadd fast float %8620, %8615
  %8622 = fmul fast float %8617, %8562
  %8623 = fmul fast float %8619, %8562
  %8624 = fmul fast float %8621, %8562
  %8625 = fadd fast float %8622, %8607
  %8626 = fadd fast float %8623, %8608
  %8627 = fadd fast float %8624, %8609
  %8628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8629 = extractvalue %dx.types.CBufRet.f32 %8628, 1
  %8630 = fmul fast float %8625, %8629
  %8631 = fmul fast float %8626, %8629
  %8632 = fmul fast float %8627, %8629
  br label %8633

; <label>:8633                                    ; preds = %8464, %8421
  %8634 = phi float [ %8504, %8464 ], [ 1.000000e+00, %8421 ]
  %8635 = phi float [ %8505, %8464 ], [ 1.000000e+00, %8421 ]
  %8636 = phi float [ %8506, %8464 ], [ 1.000000e+00, %8421 ]
  %8637 = phi float [ %8630, %8464 ], [ 0.000000e+00, %8421 ]
  %8638 = phi float [ %8631, %8464 ], [ 0.000000e+00, %8421 ]
  %8639 = phi float [ %8632, %8464 ], [ 0.000000e+00, %8421 ]
  %8640 = fmul fast float %8637, %6975
  %8641 = fmul fast float %8638, %6975
  %8642 = fmul fast float %8639, %6975
  %8643 = fmul fast float %8634, %8428
  %8644 = call float @dx.op.dot3.f32(i32 55, float %8634, float %8635, float %8636, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8645 = call float @dx.op.dot3.f32(i32 55, float %8640, float %8641, float %8642, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8646 = select i1 %250, float %8644, float %8634
  %8647 = select i1 %250, float %8644, float %8635
  %8648 = select i1 %250, float 1.000000e+00, float %8636
  %8649 = select i1 %250, float %8645, float %8640
  %8650 = select i1 %250, float 0.000000e+00, float %8641
  %8651 = select i1 %250, float 0.000000e+00, float %8642
  %8652 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8653 = extractvalue %dx.types.CBufRet.i32 %8652, 3
  %8654 = and i32 %8653, 3
  %8655 = icmp ne i32 %8654, 0
  %8656 = and i32 %8653, 4
  %8657 = icmp ne i32 %8656, 0
  %8658 = and i1 %8655, %8657
  %8659 = and i1 %250, %8658
  br i1 %8659, label %8660, label %8666

; <label>:8660                                    ; preds = %8633
  %8661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8662 = extractvalue %dx.types.CBufRet.f32 %8661, 1
  %8663 = fadd fast float %8643, -1.000000e+00
  %8664 = fmul fast float %8662, %8663
  %8665 = fadd fast float %8664, 1.000000e+00
  br label %8666

; <label>:8666                                    ; preds = %8660, %8633
  %8667 = phi float [ %8665, %8660 ], [ %8643, %8633 ]
  %8668 = fadd fast float %8425, %8422
  %8669 = fmul fast float %8646, %8668
  %8670 = fadd fast float %8669, %8649
  %8671 = fadd fast float %8426, %8423
  %8672 = fmul fast float %8647, %8671
  %8673 = fadd fast float %8672, %8650
  %8674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8675 = extractvalue %dx.types.CBufRet.f32 %8674, 0
  br i1 %250, label %8676, label %8700

; <label>:8676                                    ; preds = %8666
  %8677 = fadd fast float %8670, %8673
  %8678 = fmul fast float %8675, %8677
  %8679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8680 = extractvalue %dx.types.CBufRet.f32 %8679, 3
  %8681 = extractvalue %dx.types.CBufRet.f32 %6979, 1
  %8682 = fsub fast float %6984, %6978
  %8683 = fadd fast float %8682, %6985
  %8684 = fsub fast float %8683, %8681
  %8685 = extractvalue %dx.types.CBufRet.f32 %6979, 2
  %8686 = fmul fast float %8684, %8685
  %8687 = call float @dx.op.unary.f32(i32 7, float %8686)  ; Saturate(value)
  %8688 = fsub fast float %8687, %8680
  %8689 = fmul fast float %8688, %8667
  %8690 = fadd fast float %8689, %8680
  %8691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8692 = extractvalue %dx.types.CBufRet.f32 %8691, 0
  %8693 = fsub fast float %8690, %8692
  %8694 = fmul fast float %8693, 1.000000e+01
  %8695 = call float @dx.op.unary.f32(i32 7, float %8694)  ; Saturate(value)
  %8696 = fsub fast float %3833, %6975
  %8697 = fmul fast float %8695, %8696
  %8698 = fadd fast float %8697, %6975
  %8699 = fmul fast float %8698, %8690
  br label %8724

; <label>:8700                                    ; preds = %8666
  %8701 = fadd fast float %8427, %8424
  %8702 = fmul fast float %8648, %8701
  %8703 = fadd fast float %8702, %8651
  %8704 = fmul fast float %8675, %8670
  %8705 = fmul fast float %8675, %8673
  %8706 = fmul fast float %8675, %8703
  %8707 = call float @dx.op.binary.f32(i32 35, float %8705, float %8706)  ; FMax(a,b)
  %8708 = call float @dx.op.binary.f32(i32 35, float %8704, float %8707)  ; FMax(a,b)
  %8709 = call float @dx.op.binary.f32(i32 35, float %8708, float %6975)  ; FMax(a,b)
  %8710 = fcmp fast ugt float %8709, 0x3F10000000000000
  br i1 %8710, label %8712, label %8711

; <label>:8711                                    ; preds = %8700
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8712

; <label>:8712                                    ; preds = %8711, %8700
  %8713 = add i32 %54, 372
  %8714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8713, i32 undef)  ; BufferLoad(srv,index,wot)
  %8715 = extractvalue %dx.types.ResRet.i32 %8714, 0
  %8716 = and i32 %8715, 32
  %8717 = icmp eq i32 %8716, 0
  br i1 %8717, label %8724, label %8718

; <label>:8718                                    ; preds = %8712
  %8719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8720 = extractvalue %dx.types.CBufRet.f32 %8719, 0
  %8721 = fmul fast float %8720, 0x3FE99999A0000000
  %8722 = fadd fast float %8720, %8704
  %8723 = fadd fast float %8721, %8706
  br label %8724

; <label>:8724                                    ; preds = %8718, %8712, %8676
  %8725 = phi float [ %8678, %8676 ], [ %8722, %8718 ], [ %8704, %8712 ]
  %8726 = phi float [ %8699, %8676 ], [ %8705, %8718 ], [ %8705, %8712 ]
  %8727 = phi float [ %8698, %8676 ], [ %8723, %8718 ], [ %8706, %8712 ]
  %8728 = phi float [ %8698, %8676 ], [ %6975, %8718 ], [ %6975, %8712 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8729 = call float @dx.op.binary.f32(i32 36, float %8725, float 3.225500e+04)  ; FMin(a,b)
  %8730 = call float @dx.op.binary.f32(i32 36, float %8726, float 3.225500e+04)  ; FMin(a,b)
  %8731 = call float @dx.op.binary.f32(i32 36, float %8727, float 3.225500e+04)  ; FMin(a,b)
  %8732 = call float @dx.op.binary.f32(i32 36, float %8728, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8729)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8730)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8731)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8732)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!67}
!dx.entryPoints = !{!68}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !56, !59}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !30}
!30 = !{i32 0, i32 5}
!31 = !{i32 23, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!35 = !{i32 27, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !41}
!41 = !{i32 0, i32 14}
!42 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!43 = !{i32 34, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!50 = !{i32 41, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!51 = !{i32 42, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!52 = !{i32 43, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!53 = !{i32 44, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !41}
!54 = !{i32 45, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!55 = !{i32 46, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!56 = !{!57, !58}
!57 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!58 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!59 = !{!60, !61, !62, !63, !64, !65, !66}
!60 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!61 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!62 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!63 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!64 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!65 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!66 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!67 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!68 = !{void ()* @ps_main, !"ps_main", !69, !4, !93}
!69 = !{!70, !91, null}
!70 = !{!71, !74, !75, !77, !79, !80, !81, !82, !83, !84, !85, !86, !87, !89, !90}
!71 = !{i32 0, !"SV_Position", i8 9, i8 3, !72, i8 4, i32 1, i8 4, i32 0, i8 0, !73}
!72 = !{i32 0}
!73 = !{i32 3, i32 15}
!74 = !{i32 1, !"COLOR", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 1, i8 0, !73}
!75 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 2, i8 0, !76}
!76 = !{i32 3, i32 3}
!77 = !{i32 3, !"NORMAL", i8 9, i8 0, !72, i8 2, i32 1, i8 3, i32 3, i8 0, !78}
!78 = !{i32 3, i32 7}
!79 = !{i32 4, !"TANGENT", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 4, i8 0, !73}
!80 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !72, i8 2, i32 1, i8 3, i32 5, i8 0, !78}
!81 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 6, i8 0, !73}
!82 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !72, i8 2, i32 1, i8 3, i32 7, i8 0, !78}
!83 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 8, i8 0, !73}
!84 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !72, i8 2, i32 1, i8 2, i32 9, i8 0, !76}
!85 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 10, i8 0, !73}
!86 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 11, i8 0, !78}
!87 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !72, i8 1, i32 1, i8 1, i32 12, i8 0, !88}
!88 = !{i32 3, i32 1}
!89 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !72, i8 1, i32 1, i8 4, i32 13, i8 0, !88}
!90 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !72, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!91 = !{!92}
!92 = !{i32 0, !"SV_Target", i8 9, i8 16, !72, i8 0, i32 1, i8 4, i32 0, i8 0, !73}
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
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = !{!125, !125, i64 0}
!125 = !{!"float", !101, i64 0}
!126 = !{!127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!127 = distinct !{!127, !128, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!128 = distinct !{!128, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!129 = distinct !{!129, !130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!130 = distinct !{!130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!131 = distinct !{!131, !130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!132 = distinct !{!132, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!133 = distinct !{!133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!134 = distinct !{!134, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!135 = distinct !{!135, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!136 = distinct !{!136, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!137 = distinct !{!137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!138 = distinct !{!138, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!139 = distinct !{!139, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!140 = distinct !{!140, !141, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!141 = distinct !{!141, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"\01?sort@@YAXAIAM00@Z: %c"}
!144 = distinct !{!144, !"\01?sort@@YAXAIAM00@Z"}
!145 = !{!146, !147, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!146 = distinct !{!146, !144, !"\01?sort@@YAXAIAM00@Z: %a"}
!147 = distinct !{!147, !144, !"\01?sort@@YAXAIAM00@Z: %b"}
!148 = !{!147}
!149 = !{!146, !143, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!150 = !{!146}
!151 = !{!147, !143, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!152 = !{!153}
!153 = distinct !{!153, !154, !"\01?sort@@YAXAIAM00@Z: %c"}
!154 = distinct !{!154, !"\01?sort@@YAXAIAM00@Z"}
!155 = !{!156, !157, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!156 = distinct !{!156, !154, !"\01?sort@@YAXAIAM00@Z: %a"}
!157 = distinct !{!157, !154, !"\01?sort@@YAXAIAM00@Z: %b"}
!158 = !{!157}
!159 = !{!156, !153, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!160 = !{!156}
!161 = !{!157, !153, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 2}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}

