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
; shader hash: 49c8cb6042b41dc31ed42365fd3725c8
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
  %194 = add i32 %54, 440
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = extractvalue %dx.types.ResRet.i32 %195, 1
  %198 = extractvalue %dx.types.ResRet.i32 %195, 2
  %199 = extractvalue %dx.types.ResRet.i32 %195, 3
  %200 = bitcast i32 %196 to float
  %201 = bitcast i32 %197 to float
  %202 = bitcast i32 %198 to float
  %203 = bitcast i32 %199 to float
  %204 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %205 = call float @dx.op.unary.f32(i32 25, float %204)  ; Rsqrt(value)
  %206 = fmul fast float %205, %111
  %207 = fmul fast float %205, %112
  %208 = fmul fast float %205, %113
  %209 = call float @dx.op.dot3.f32(i32 55, float %191, float %192, float %193, float %191, float %192, float %193)  ; Dot3(ax,ay,az,bx,by,bz)
  %210 = call float @dx.op.unary.f32(i32 25, float %209)  ; Rsqrt(value)
  %211 = fmul fast float %210, %191
  %212 = fmul fast float %210, %192
  %213 = fmul fast float %210, %193
  %214 = call float @dx.op.dot3.f32(i32 55, float %211, float %212, float %213, float %206, float %207, float %208)  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = fmul fast float %214, %214
  %216 = fmul fast float %215, %202
  %217 = fadd fast float %216, %203
  %218 = call float @dx.op.unary.f32(i32 7, float %217)  ; Saturate(value)
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 3
  %221 = fmul fast float %220, %209
  %222 = fsub fast float %200, %221
  %223 = fmul fast float %222, %201
  %224 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %225 = fmul fast float %224, %218
  %226 = fmul fast float %104, 5.000000e-01
  %227 = fmul fast float %105, 5.000000e-01
  %228 = fptosi float %226 to i32
  %229 = fptosi float %227 to i32
  %230 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %228, i32 %229, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = lshr i32 %231, 18
  %233 = uitofp i32 %232 to float
  %234 = fmul fast float %233, 0x3F4C00EBA0000000
  %235 = call float @dx.op.unary.f32(i32 21, float %234)  ; Exp(value)
  %236 = fadd fast float %235, -1.000000e+00
  %237 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %238 = extractvalue %dx.types.Dimensions %237, 0
  %239 = sitofp i32 %238 to float
  %240 = extractvalue %dx.types.Dimensions %237, 1
  %241 = sitofp i32 %240 to float
  %242 = fcmp fast oge float %226, %239
  %243 = fcmp fast oge float %227, %241
  %244 = or i1 %242, %243
  %245 = select i1 %244, float 0x4197782600000000, float %236
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %248 = extractvalue %dx.types.CBufRet.f32 %246, 3
  %249 = fmul fast float %247, %104
  %250 = fmul fast float %248, %105
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 114688
  %254 = icmp ne i32 %253, 0
  %255 = select i1 %254, float %249, float 0.000000e+00
  %256 = select i1 %254, float %250, float 0.000000e+00
  %257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %49, float %255, float %256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = fmul fast float %258, 2.550000e+02
  %260 = fptoui float %259 to i32
  %261 = select i1 %254, i32 %260, i32 0
  %262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.i32 %262, 3
  %264 = and i32 %263, 3
  %265 = icmp ne i32 %264, 0
  %266 = and i32 %263, 4
  %267 = icmp ne i32 %266, 0
  %268 = and i1 %265, %267
  br i1 %268, label %269, label %278

; <label>:269                                     ; preds = %0
  %270 = fmul fast float %139, %105
  %271 = fmul fast float %138, %104
  %272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %48, float %271, float %270, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = fsub fast float 1.000000e+00, %273
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 0
  %277 = fcmp fast olt float %274, %276
  br label %281

; <label>:278                                     ; preds = %0
  %279 = icmp eq i32 %266, 0
  %280 = and i1 %265, %279
  br label %281

; <label>:281                                     ; preds = %278, %269
  %282 = phi i1 [ %277, %269 ], [ %280, %278 ]
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 2
  %285 = fmul fast float %284, 0x3FE3C6EF40000000
  %286 = frem fast float %104, 2.560000e+02
  %287 = frem fast float %105, 2.560000e+02
  %288 = fptoui float %286 to i32
  %289 = fptoui float %287 to i32
  %290 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %288, i32 %289, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = fadd fast float %291, %285
  %293 = call float @dx.op.unary.f32(i32 22, float %292)  ; Frc(value)
  %294 = add i32 %54, 156
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = shl i32 %296, 4
  %298 = and i32 %297, 32752
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %296, 7
  %301 = and i32 %300, 32752
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %296, 22
  %304 = shl nuw nsw i32 %303, 5
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = add i32 %54, 216
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 255
  %310 = uitofp i32 %309 to float
  %311 = fmul fast float %310, 0x3F70101020000000
  %312 = lshr i32 %308, 8
  %313 = and i32 %312, 255
  %314 = uitofp i32 %313 to float
  %315 = fmul fast float %314, 0x3F70101020000000
  %316 = lshr i32 %308, 16
  %317 = and i32 %316, 255
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, 0x3F70101020000000
  %320 = add i32 %54, 36
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %322, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = add i32 %54, 288
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 65535
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %329, 16
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = fmul fast float %331, 0x3F50624DE0000000
  %335 = fmul fast float %333, 0x3F50624DE0000000
  %336 = add i32 %54, 172
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = shl i32 %338, 4
  %340 = and i32 %339, 32752
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %338, 7
  %343 = and i32 %342, 32752
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %338, 22
  %346 = shl nuw nsw i32 %345, 5
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = add i32 %54, 232
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 255
  %352 = uitofp i32 %351 to float
  %353 = fmul fast float %352, 0x3F70101020000000
  %354 = lshr i32 %350, 8
  %355 = and i32 %354, 255
  %356 = uitofp i32 %355 to float
  %357 = fmul fast float %356, 0x3F70101020000000
  %358 = lshr i32 %350, 16
  %359 = and i32 %358, 255
  %360 = uitofp i32 %359 to float
  %361 = fmul fast float %360, 0x3F70101020000000
  %362 = add i32 %54, 52
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 65535
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %364, 16
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = add i32 %54, 304
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 65535
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %371, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = fmul fast float %373, 0x3F50624DE0000000
  %377 = fmul fast float %375, 0x3F50624DE0000000
  %378 = add i32 %54, 188
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = shl i32 %380, 4
  %382 = and i32 %381, 32752
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %380, 7
  %385 = and i32 %384, 32752
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = lshr i32 %380, 22
  %388 = shl nuw nsw i32 %387, 5
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = add i32 %54, 248
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = and i32 %392, 255
  %394 = uitofp i32 %393 to float
  %395 = fmul fast float %394, 0x3F70101020000000
  %396 = lshr i32 %392, 8
  %397 = and i32 %396, 255
  %398 = uitofp i32 %397 to float
  %399 = fmul fast float %398, 0x3F70101020000000
  %400 = lshr i32 %392, 16
  %401 = and i32 %400, 255
  %402 = uitofp i32 %401 to float
  %403 = fmul fast float %402, 0x3F70101020000000
  %404 = add i32 %54, 68
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 65535
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = lshr i32 %406, 16
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = add i32 %54, 320
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 65535
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = lshr i32 %413, 16
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = fmul fast float %415, 0x3F50624DE0000000
  %419 = fmul fast float %417, 0x3F50624DE0000000
  %420 = add i32 %54, 204
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = shl i32 %422, 4
  %424 = and i32 %423, 32752
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %422, 7
  %427 = and i32 %426, 32752
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = lshr i32 %422, 22
  %430 = shl nuw nsw i32 %429, 5
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = add i32 %54, 264
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 255
  %436 = uitofp i32 %435 to float
  %437 = fmul fast float %436, 0x3F70101020000000
  %438 = lshr i32 %434, 8
  %439 = and i32 %438, 255
  %440 = uitofp i32 %439 to float
  %441 = fmul fast float %440, 0x3F70101020000000
  %442 = lshr i32 %434, 16
  %443 = and i32 %442, 255
  %444 = uitofp i32 %443 to float
  %445 = fmul fast float %444, 0x3F70101020000000
  %446 = add i32 %54, 84
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 65535
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = lshr i32 %448, 16
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = add i32 %54, 336
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 65535
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = lshr i32 %455, 16
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = fmul fast float %457, 0x3F50624DE0000000
  %461 = fmul fast float %459, 0x3F50624DE0000000
  %462 = add i32 %54, 348
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = and i32 %464, 32
  %466 = icmp eq i32 %465, 0
  %467 = and i32 %464, 64
  %468 = icmp eq i32 %467, 0
  %469 = and i32 %464, 128
  %470 = icmp eq i32 %469, 0
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 2
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %490, label %475

; <label>:475                                     ; preds = %281
  %476 = add i32 %54, 620
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = add i32 %478, 0
  %480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %481 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %480, %dx.types.Handle %101, float %86, float %87, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = extractvalue %dx.types.ResRet.f32 %481, 3
  %486 = fmul fast float %485, %88
  %487 = fmul fast float %482, %89
  %488 = fmul fast float %483, %90
  %489 = fmul fast float %484, %91
  br label %490

; <label>:490                                     ; preds = %475, %281
  %491 = phi float [ %91, %281 ], [ %489, %475 ]
  %492 = phi float [ %90, %281 ], [ %488, %475 ]
  %493 = phi float [ %89, %281 ], [ %487, %475 ]
  %494 = phi float [ %88, %281 ], [ %486, %475 ]
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = and i32 %496, 2
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %518, label %499

; <label>:499                                     ; preds = %490
  %500 = add i32 %54, 44
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = and i32 %502, 1
  %504 = icmp ne i32 %503, 0
  %505 = select i1 %504, float %493, float 1.000000e+00
  %506 = add i32 %54, 60
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = and i32 %508, 1
  %510 = icmp ne i32 %509, 0
  %511 = select i1 %510, float %492, float 1.000000e+00
  %512 = add i32 %54, 76
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = and i32 %514, 1
  %516 = icmp ne i32 %515, 0
  %517 = select i1 %516, float %491, float 1.000000e+00
  br label %518

; <label>:518                                     ; preds = %499, %490
  %519 = phi float [ %491, %490 ], [ %517, %499 ]
  %520 = phi float [ %492, %490 ], [ %511, %499 ]
  %521 = phi float [ %493, %490 ], [ %505, %499 ]
  %522 = lshr i32 %496, 20
  %523 = and i32 %522, 3
  %524 = add nuw nsw i32 %523, 1
  %525 = add i32 %54, 24
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = add i32 %54, 28
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = or i32 %530, %527
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %1067, label %533

; <label>:533                                     ; preds = %518
  %534 = and i32 %527, 262144
  %535 = icmp ne i32 %534, 0
  %536 = select i1 %535, float %59, float 1.000000e+00
  %537 = select i1 %535, float %60, float 0.000000e+00
  %538 = select i1 %535, float %61, float 0.000000e+00
  %539 = select i1 %535, float %62, float 1.000000e+00
  %540 = select i1 %535, float %63, float %86
  %541 = select i1 %535, float %64, float %87
  %542 = add i32 %54, 284
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = lshr i32 %544, 16
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = fmul fast float %546, 0x3F50624DE0000000
  %548 = add i32 %54, 88
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = lshr i32 %550, 16
  %552 = and i32 %551, 255
  %553 = lshr i32 %550, 24
  %554 = add i32 %54, 292
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = and i32 %556, 65535
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = lshr i32 %556, 16
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = add i32 %54, 32
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = lshr i32 %563, 22
  %565 = shl nuw nsw i32 %564, 5
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %565)  ; LegacyF16ToF32(value)
  %567 = shl i32 %563, 4
  %568 = and i32 %567, 32752
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = lshr i32 %563, 7
  %571 = and i32 %570, 32752
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.f32 %573, 3
  %575 = fmul fast float %574, 1.000000e+03
  %576 = fmul fast float %334, %575
  %577 = call float @dx.op.unary.f32(i32 22, float %576)  ; Frc(value)
  %578 = fadd fast float %577, %324
  %579 = fmul fast float %335, %575
  %580 = call float @dx.op.unary.f32(i32 22, float %579)  ; Frc(value)
  %581 = fadd fast float %580, %326
  %582 = fmul fast float %547, %575
  %583 = call float @dx.op.unary.f32(i32 22, float %582)  ; Frc(value)
  %584 = fmul fast float %583, 0x401921FB60000000
  %585 = fadd fast float %584, %566
  %586 = call float @dx.op.unary.f32(i32 13, float %585)  ; Sin(value)
  %587 = call float @dx.op.unary.f32(i32 12, float %585)  ; Cos(value)
  %588 = fsub fast float -0.000000e+00, %586
  %589 = fadd fast float %540, -5.000000e-01
  %590 = fadd fast float %541, -5.000000e-01
  %591 = fmul fast float %558, %589
  %592 = fmul fast float %560, %590
  %593 = fadd fast float %591, 5.000000e-01
  %594 = fadd fast float %592, 5.000000e-01
  %595 = fmul fast float %569, %593
  %596 = fmul fast float %572, %594
  %597 = fmul fast float %587, %595
  %598 = call float @dx.op.tertiary.f32(i32 46, float %588, float %596, float %597)  ; FMad(a,b,c)
  %599 = fmul fast float %586, %595
  %600 = call float @dx.op.tertiary.f32(i32 46, float %587, float %596, float %599)  ; FMad(a,b,c)
  %601 = fadd fast float %578, %598
  %602 = fadd fast float %581, %600
  %603 = icmp ugt i32 %552, 1
  %604 = icmp ugt i32 %550, 33554431
  %605 = or i1 %604, %603
  br i1 %605, label %606, label %631

; <label>:606                                     ; preds = %533
  %607 = add i32 %54, 228
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = lshr i32 %609, 16
  %611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %610)  ; LegacyF16ToF32(value)
  %612 = fmul fast float %574, %611
  %613 = call float @dx.op.unary.f32(i32 22, float %612)  ; Frc(value)
  %614 = mul nuw nsw i32 %552, %553
  %615 = uitofp i32 %614 to float
  %616 = fmul fast float %613, %615
  %617 = call float @dx.op.unary.f32(i32 27, float %616)  ; Round_ni(value)
  %618 = fptoui float %617 to i32
  %619 = urem i32 %618, %552
  %620 = udiv i32 %618, %553
  %621 = call float @dx.op.unary.f32(i32 22, float %601)  ; Frc(value)
  %622 = call float @dx.op.unary.f32(i32 22, float %602)  ; Frc(value)
  %623 = uitofp i32 %619 to float
  %624 = uitofp i32 %620 to float
  %625 = fadd fast float %621, %623
  %626 = fadd fast float %622, %624
  %627 = uitofp i32 %552 to float
  %628 = uitofp i32 %553 to float
  %629 = fdiv fast float %625, %627
  %630 = fdiv fast float %626, %628
  br label %631

; <label>:631                                     ; preds = %606, %533
  %632 = phi float [ %629, %606 ], [ %601, %533 ]
  %633 = phi float [ %630, %606 ], [ %602, %533 ]
  %634 = and i32 %527, 256
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %682, label %636

; <label>:636                                     ; preds = %631
  %637 = add i32 %54, 568
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = add i32 %639, 0
  %641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %640, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %642 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %641, %dx.types.Handle %101, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = add i32 %54, 100
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = shl i32 %646, 4
  %648 = and i32 %647, 32752
  %649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %648)  ; LegacyF16ToF32(value)
  %650 = lshr i32 %646, 7
  %651 = and i32 %650, 32752
  %652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %651)  ; LegacyF16ToF32(value)
  %653 = fsub fast float 1.000000e+00, %494
  %654 = call float @dx.op.binary.f32(i32 35, float %653, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %655 = bitcast float %494 to i32
  %656 = sitofp i32 %655 to float
  %657 = fadd fast float %656, 0xC1CFBF8940000000
  %658 = fmul fast float %652, %657
  %659 = fadd fast float %658, 0x41CFBF8940000000
  %660 = fptosi float %659 to i32
  %661 = bitcast i32 %660 to float
  %662 = bitcast float %654 to i32
  %663 = sitofp i32 %662 to float
  %664 = fadd fast float %663, 0xC1CFBF8940000000
  %665 = fmul fast float %664, %652
  %666 = fadd fast float %665, 0x41CFBF8940000000
  %667 = fptosi float %666 to i32
  %668 = bitcast i32 %667 to float
  %669 = fmul fast float %661, %649
  %670 = fmul fast float %668, %649
  %671 = fsub fast float %654, %669
  %672 = fadd fast float %670, %654
  %673 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  %674 = call float @dx.op.unary.f32(i32 7, float %672)  ; Saturate(value)
  %675 = fsub fast float %643, %673
  %676 = fsub fast float %674, %673
  %677 = bitcast float %676 to i32
  %678 = sub nsw i32 2129859010, %677
  %679 = bitcast i32 %678 to float
  %680 = fmul fast float %679, %675
  %681 = call float @dx.op.unary.f32(i32 7, float %680)  ; Saturate(value)
  br label %682

; <label>:682                                     ; preds = %636, %631
  %683 = phi float [ %681, %636 ], [ %494, %631 ]
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 128
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %704, label %688

; <label>:688                                     ; preds = %682
  %689 = add i32 %54, 552
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = add i32 %691, 0
  %693 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %692, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %694 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %693, %dx.types.Handle %101, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %695 = extractvalue %dx.types.ResRet.f32 %694, 0
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 524288
  %699 = icmp ne i32 %698, 0
  %700 = fcmp fast ogt float %695, 0x3FE0101020000000
  %701 = select i1 %700, float 1.000000e+00, float 0.000000e+00
  %702 = select i1 %699, float %701, float %695
  %703 = fmul fast float %702, %683
  br label %704

; <label>:704                                     ; preds = %688, %682
  %705 = phi float [ %703, %688 ], [ %683, %682 ]
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = and i32 %707, 16
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %908, label %710

; <label>:710                                     ; preds = %704
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = add i32 %54, 504
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = add i32 %715, 0
  %717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %716, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %718 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %717, %dx.types.Handle %100, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %719 = extractvalue %dx.types.ResRet.f32 %718, 0
  %720 = extractvalue %dx.types.ResRet.f32 %718, 1
  %721 = extractvalue %dx.types.ResRet.f32 %718, 2
  %722 = extractvalue %dx.types.ResRet.f32 %718, 3
  %723 = and i32 %712, 255
  %724 = uitofp i32 %723 to float
  %725 = lshr i32 %712, 8
  %726 = and i32 %725, 255
  %727 = uitofp i32 %726 to float
  %728 = fmul fast float %722, %724
  %729 = fadd fast float %728, %727
  %730 = fmul fast float %729, 0x3F70101000000000
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 512
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %743, label %735

; <label>:735                                     ; preds = %710
  %736 = add i32 %54, 588
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = add i32 %738, 0
  %740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %739, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %741 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %740, %dx.types.Handle %101, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  br label %743

; <label>:743                                     ; preds = %735, %710
  %744 = phi float [ %742, %735 ], [ 1.000000e+00, %710 ]
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 33554432
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %855, label %749

; <label>:749                                     ; preds = %743
  %750 = add i32 %54, 224
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = and i32 %752, 65535
  %754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %753)  ; LegacyF16ToF32(value)
  %755 = lshr i32 %752, 16
  %756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %755)  ; LegacyF16ToF32(value)
  %757 = add i32 %54, 228
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = and i32 %759, 65535
  %761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %760)  ; LegacyF16ToF32(value)
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = lshr i32 %763, 24
  %765 = uitofp i32 %764 to float
  %766 = fmul fast float %765, 0x3F70101020000000
  %767 = and i32 %763, 255
  %768 = uitofp i32 %767 to float
  %769 = fmul fast float %768, 0x3F70101020000000
  %770 = lshr i32 %763, 8
  %771 = and i32 %770, 255
  %772 = uitofp i32 %771 to float
  %773 = fmul fast float %772, 0x3F70101020000000
  %774 = lshr i32 %763, 16
  %775 = and i32 %774, 255
  %776 = uitofp i32 %775 to float
  %777 = fmul fast float %776, 0x3F70101020000000
  %778 = add i32 %54, 220
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %778, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = lshr i32 %780, 24
  %782 = uitofp i32 %781 to float
  %783 = fmul fast float %782, 0x3F70101020000000
  %784 = and i32 %780, 255
  %785 = uitofp i32 %784 to float
  %786 = fmul fast float %785, 0x3F70101020000000
  %787 = lshr i32 %780, 8
  %788 = and i32 %787, 255
  %789 = uitofp i32 %788 to float
  %790 = fmul fast float %789, 0x3F70101020000000
  %791 = lshr i32 %780, 16
  %792 = and i32 %791, 255
  %793 = uitofp i32 %792 to float
  %794 = fmul fast float %793, 0x3F70101020000000
  %795 = bitcast float %719 to i32
  %796 = ashr i32 %795, 1
  %797 = sub nsw i32 1597463174, %796
  %798 = bitcast i32 %797 to float
  %799 = fmul fast float %719, 5.000000e-01
  %800 = fmul fast float %798, %798
  %801 = fmul fast float %800, %799
  %802 = fsub fast float 1.500000e+00, %801
  %803 = fmul fast float %798, %719
  %804 = fmul fast float %803, %802
  %805 = bitcast float %720 to i32
  %806 = ashr i32 %805, 1
  %807 = sub nsw i32 1597463174, %806
  %808 = bitcast i32 %807 to float
  %809 = fmul fast float %720, 5.000000e-01
  %810 = fmul fast float %808, %808
  %811 = fmul fast float %810, %809
  %812 = fsub fast float 1.500000e+00, %811
  %813 = fmul fast float %808, %720
  %814 = fmul fast float %813, %812
  %815 = bitcast float %721 to i32
  %816 = ashr i32 %815, 1
  %817 = sub nsw i32 1597463174, %816
  %818 = bitcast i32 %817 to float
  %819 = fmul fast float %721, 5.000000e-01
  %820 = fmul fast float %818, %818
  %821 = fmul fast float %820, %819
  %822 = fsub fast float 1.500000e+00, %821
  %823 = fmul fast float %818, %721
  %824 = fmul fast float %823, %822
  %825 = fsub fast float %804, %786
  %826 = fsub fast float %814, %790
  %827 = fsub fast float %824, %794
  %828 = fmul fast float %825, %754
  %829 = fmul fast float %826, %756
  %830 = fmul fast float %827, %761
  %831 = fadd fast float %828, %769
  %832 = fadd fast float %829, %773
  %833 = fadd fast float %830, %777
  %834 = call float @dx.op.unary.f32(i32 7, float %831)  ; Saturate(value)
  %835 = call float @dx.op.unary.f32(i32 7, float %832)  ; Saturate(value)
  %836 = call float @dx.op.unary.f32(i32 7, float %833)  ; Saturate(value)
  %837 = fmul fast float %834, %834
  %838 = fmul fast float %835, %835
  %839 = fmul fast float %836, %836
  %840 = fsub fast float %837, %719
  %841 = fsub fast float %838, %720
  %842 = fsub fast float %839, %721
  %843 = fmul fast float %840, %744
  %844 = fmul fast float %841, %744
  %845 = fmul fast float %842, %744
  %846 = fadd fast float %843, %719
  %847 = fadd fast float %844, %720
  %848 = fadd fast float %845, %721
  %849 = fadd fast float %766, %730
  %850 = fsub fast float %849, %783
  %851 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  %852 = fsub fast float %851, %730
  %853 = fmul fast float %852, %744
  %854 = fadd fast float %853, %730
  br label %908

; <label>:855                                     ; preds = %743
  %856 = and i32 %746, 134217728
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %892, label %858

; <label>:858                                     ; preds = %855
  %859 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %860 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %861 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %862 = fadd fast float %859, -5.000000e-01
  %863 = fadd fast float %860, -5.000000e-01
  %864 = fadd fast float %861, -5.000000e-01
  %865 = fmul fast float %862, %744
  %866 = fmul fast float %863, %744
  %867 = fmul fast float %864, %744
  %868 = fadd fast float %865, 5.000000e-01
  %869 = fadd fast float %866, 5.000000e-01
  %870 = fadd fast float %867, 5.000000e-01
  %871 = call float @dx.op.unary.f32(i32 24, float %719)  ; Sqrt(value)
  %872 = call float @dx.op.unary.f32(i32 24, float %720)  ; Sqrt(value)
  %873 = call float @dx.op.unary.f32(i32 24, float %721)  ; Sqrt(value)
  %874 = fmul fast float %868, 2.000000e+00
  %875 = fsub fast float 1.000000e+00, %874
  %876 = fmul fast float %875, %871
  %877 = fadd fast float %876, %874
  %878 = fmul fast float %877, %871
  %879 = fmul fast float %869, 2.000000e+00
  %880 = fsub fast float 1.000000e+00, %879
  %881 = fmul fast float %880, %872
  %882 = fadd fast float %881, %879
  %883 = fmul fast float %882, %872
  %884 = fmul fast float %870, 2.000000e+00
  %885 = fsub fast float 1.000000e+00, %884
  %886 = fmul fast float %885, %873
  %887 = fadd fast float %886, %884
  %888 = fmul fast float %887, %873
  %889 = fmul fast float %878, %878
  %890 = fmul fast float %883, %883
  %891 = fmul fast float %888, %888
  br label %908

; <label>:892                                     ; preds = %855
  %893 = fmul fast float %311, %311
  %894 = fmul fast float %315, %315
  %895 = fmul fast float %319, %319
  %896 = fadd fast float %893, -1.000000e+00
  %897 = fadd fast float %894, -1.000000e+00
  %898 = fadd fast float %895, -1.000000e+00
  %899 = fmul fast float %744, %896
  %900 = fmul fast float %744, %897
  %901 = fmul fast float %744, %898
  %902 = fadd fast float %899, 1.000000e+00
  %903 = fadd fast float %900, 1.000000e+00
  %904 = fadd fast float %901, 1.000000e+00
  %905 = fmul fast float %902, %719
  %906 = fmul fast float %903, %720
  %907 = fmul fast float %904, %721
  br label %908

; <label>:908                                     ; preds = %892, %858, %749, %704
  %909 = phi float [ %854, %749 ], [ %730, %858 ], [ %730, %892 ], [ 0x3FA23C0BE0000000, %704 ]
  %910 = phi float [ %846, %749 ], [ %889, %858 ], [ %905, %892 ], [ 1.000000e+00, %704 ]
  %911 = phi float [ %847, %749 ], [ %890, %858 ], [ %906, %892 ], [ 1.000000e+00, %704 ]
  %912 = phi float [ %848, %749 ], [ %891, %858 ], [ %907, %892 ], [ 1.000000e+00, %704 ]
  %913 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.i32 %913, 1
  %915 = and i32 %914, 1
  %916 = icmp ne i32 %915, 0
  %917 = add i32 %54, 356
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = and i32 %919, 32
  %921 = icmp ne i32 %920, 0
  %922 = and i1 %916, %921
  %923 = select i1 %922, float 1.000000e+00, float %910
  %924 = select i1 %922, float 0x3FD3333340000000, float %911
  %925 = select i1 %922, float 0x3FD3333340000000, float %912
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = and i32 %927, 32
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %1002, label %930

; <label>:930                                     ; preds = %908
  %931 = add i32 %54, 92
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = add i32 %54, 520
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = add i32 %936, 0
  %938 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %937, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %939 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %938, %dx.types.Handle %100, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %940 = extractvalue %dx.types.ResRet.f32 %939, 0
  %941 = extractvalue %dx.types.ResRet.f32 %939, 1
  %942 = extractvalue %dx.types.ResRet.f32 %939, 2
  %943 = extractvalue %dx.types.ResRet.f32 %939, 3
  %944 = and i32 %933, 255
  %945 = uitofp i32 %944 to float
  %946 = lshr i32 %933, 8
  %947 = and i32 %946, 255
  %948 = uitofp i32 %947 to float
  %949 = lshr i32 %933, 16
  %950 = and i32 %949, 255
  %951 = uitofp i32 %950 to float
  %952 = fmul fast float %951, 0x3F70101000000000
  %953 = fmul fast float %940, %945
  %954 = fadd fast float %953, %948
  %955 = fmul fast float %954, 0x3F70101000000000
  %956 = fadd fast float %941, -5.000000e-01
  %957 = fadd fast float %943, -5.000000e-01
  %958 = fmul fast float %956, %952
  %959 = fmul fast float %957, %952
  %960 = fadd fast float %958, 5.000000e-01
  %961 = fadd fast float %959, 5.000000e-01
  %962 = fmul fast float %960, 2.000000e+00
  %963 = fadd fast float %962, -1.000000e+00
  %964 = fmul fast float %961, 2.000000e+00
  %965 = fadd fast float %964, -1.000000e+00
  %966 = fadd fast float %963, %965
  %967 = fmul fast float %966, 5.000000e-01
  %968 = fsub fast float %963, %965
  %969 = fmul fast float %968, 5.000000e-01
  %970 = call float @dx.op.unary.f32(i32 6, float %967)  ; FAbs(value)
  %971 = fsub fast float 1.000000e+00, %970
  %972 = call float @dx.op.unary.f32(i32 6, float %969)  ; FAbs(value)
  %973 = fsub fast float %971, %972
  %974 = call float @dx.op.dot3.f32(i32 55, float %967, float %969, float %973, float %967, float %969, float %973)  ; Dot3(ax,ay,az,bx,by,bz)
  %975 = call float @dx.op.unary.f32(i32 25, float %974)  ; Rsqrt(value)
  %976 = fmul fast float %967, %975
  %977 = fmul fast float %969, %975
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = and i32 %979, 67108864
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %998, label %982

; <label>:982                                     ; preds = %930
  %983 = add i32 %54, 280
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = and i32 %985, 65535
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = and i32 %989, 65535
  %991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %990)  ; LegacyF16ToF32(value)
  %992 = lshr i32 %985, 16
  %993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %992)  ; LegacyF16ToF32(value)
  %994 = fsub fast float %955, %993
  %995 = fmul fast float %994, %987
  %996 = fadd fast float %995, %991
  %997 = call float @dx.op.unary.f32(i32 7, float %996)  ; Saturate(value)
  br label %998

; <label>:998                                     ; preds = %982, %930
  %999 = phi float [ %997, %982 ], [ %955, %930 ]
  %1000 = call float @dx.op.dot2.f32(i32 54, float %976, float %977, float %536, float %537)  ; Dot2(ax,ay,bx,by)
  %1001 = call float @dx.op.dot2.f32(i32 54, float %976, float %977, float %538, float %539)  ; Dot2(ax,ay,bx,by)
  br label %1002

; <label>:1002                                    ; preds = %998, %908
  %1003 = phi float [ %999, %998 ], [ 0x3FD6666660000000, %908 ]
  %1004 = phi float [ %1000, %998 ], [ 0.000000e+00, %908 ]
  %1005 = phi float [ %1001, %998 ], [ 0.000000e+00, %908 ]
  %1006 = phi float [ %942, %998 ], [ 1.000000e+00, %908 ]
  %1007 = add i32 %54, 160
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = lshr i32 %1009, 22
  %1011 = shl nuw nsw i32 %1010, 5
  %1012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1011)  ; LegacyF16ToF32(value)
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %1014, 64
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1050, label %1017

; <label>:1017                                    ; preds = %1002
  %1018 = add i32 %54, 536
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = add i32 %1020, 0
  %1022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1021, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = and i32 %1024, 131072
  %1026 = icmp eq i32 %1025, 0
  %1027 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1022, %dx.types.Handle %100, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.ResRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.ResRet.f32 %1027, 2
  %1031 = fmul fast float %1028, %299
  %1032 = fmul fast float %1029, %302
  %1033 = fmul fast float %1030, %305
  br i1 %1026, label %1040, label %1034

; <label>:1034                                    ; preds = %1017
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 0
  %1037 = fmul fast float %1036, %1031
  %1038 = fmul fast float %1036, %1032
  %1039 = fmul fast float %1036, %1033
  br label %1040

; <label>:1040                                    ; preds = %1034, %1017
  %1041 = phi float [ %1037, %1034 ], [ %1031, %1017 ]
  %1042 = phi float [ %1038, %1034 ], [ %1032, %1017 ]
  %1043 = phi float [ %1039, %1034 ], [ %1033, %1017 ]
  %1044 = fmul fast float %1041, %1012
  %1045 = select i1 %282, float %1044, float %1041
  %1046 = call float @dx.op.dot3.f32(i32 55, float %1045, float %1042, float %1043, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1047 = select i1 %282, float 0.000000e+00, float %1041
  %1048 = select i1 %282, float %1046, float %1042
  %1049 = select i1 %282, float 0.000000e+00, float %1043
  br label %1050

; <label>:1050                                    ; preds = %1040, %1002
  %1051 = phi float [ %1047, %1040 ], [ 0.000000e+00, %1002 ]
  %1052 = phi float [ %1048, %1040 ], [ 0.000000e+00, %1002 ]
  %1053 = phi float [ %1049, %1040 ], [ 0.000000e+00, %1002 ]
  %1054 = add i32 %54, 96
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = and i32 %1056, 255
  %1058 = uitofp i32 %1057 to float
  %1059 = lshr i32 %1056, 8
  %1060 = and i32 %1059, 255
  %1061 = uitofp i32 %1060 to float
  %1062 = call float @dx.op.dot3.f32(i32 55, float %923, float %924, float %925, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1063 = fmul fast float %1061, %1062
  %1064 = fadd fast float %1063, %1058
  %1065 = fmul fast float %1064, 0x3F70101020000000
  %1066 = call float @dx.op.unary.f32(i32 7, float %1065)  ; Saturate(value)
  br label %1067

; <label>:1067                                    ; preds = %1050, %518
  %1068 = phi float [ 0.000000e+00, %518 ], [ %1004, %1050 ]
  %1069 = phi float [ 0.000000e+00, %518 ], [ %1005, %1050 ]
  %1070 = phi float [ 0.000000e+00, %518 ], [ %923, %1050 ]
  %1071 = phi float [ 0.000000e+00, %518 ], [ %924, %1050 ]
  %1072 = phi float [ 0.000000e+00, %518 ], [ %925, %1050 ]
  %1073 = phi float [ 0.000000e+00, %518 ], [ %1051, %1050 ]
  %1074 = phi float [ 0.000000e+00, %518 ], [ %1052, %1050 ]
  %1075 = phi float [ 0.000000e+00, %518 ], [ %1053, %1050 ]
  %1076 = phi float [ 0.000000e+00, %518 ], [ %909, %1050 ]
  %1077 = phi float [ 0.000000e+00, %518 ], [ %705, %1050 ]
  %1078 = phi float [ 0.000000e+00, %518 ], [ %1003, %1050 ]
  %1079 = phi float [ 0.000000e+00, %518 ], [ %1006, %1050 ]
  %1080 = phi float [ 0.000000e+00, %518 ], [ %1066, %1050 ]
  br i1 %466, label %1807, label %1081

; <label>:1081                                    ; preds = %1067
  %1082 = icmp ult i32 %524, 2
  %1083 = add i32 %54, 40
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = add i32 %54, 44
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = or i32 %1088, %1085
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1807, label %1091

; <label>:1091                                    ; preds = %1081
  %1092 = and i32 %1085, 262144
  %1093 = icmp ne i32 %1092, 0
  %1094 = select i1 %1093, float %59, float 1.000000e+00
  %1095 = select i1 %1093, float %60, float 0.000000e+00
  %1096 = select i1 %1093, float %61, float 0.000000e+00
  %1097 = select i1 %1093, float %62, float 1.000000e+00
  %1098 = select i1 %1093, float %63, float %86
  %1099 = select i1 %1093, float %64, float %87
  %1100 = add i32 %54, 300
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = lshr i32 %1102, 16
  %1104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1103)  ; LegacyF16ToF32(value)
  %1105 = fmul fast float %1104, 0x3F50624DE0000000
  %1106 = add i32 %54, 104
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = lshr i32 %1108, 16
  %1110 = and i32 %1109, 255
  %1111 = lshr i32 %1108, 24
  %1112 = add i32 %54, 308
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = and i32 %1114, 65535
  %1116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1115)  ; LegacyF16ToF32(value)
  %1117 = lshr i32 %1114, 16
  %1118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1117)  ; LegacyF16ToF32(value)
  %1119 = add i32 %54, 48
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = lshr i32 %1121, 22
  %1123 = shl nuw nsw i32 %1122, 5
  %1124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1123)  ; LegacyF16ToF32(value)
  %1125 = shl i32 %1121, 4
  %1126 = and i32 %1125, 32752
  %1127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1126)  ; LegacyF16ToF32(value)
  %1128 = lshr i32 %1121, 7
  %1129 = and i32 %1128, 32752
  %1130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1129)  ; LegacyF16ToF32(value)
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 3
  %1133 = fmul fast float %1132, 1.000000e+03
  %1134 = fmul fast float %376, %1133
  %1135 = call float @dx.op.unary.f32(i32 22, float %1134)  ; Frc(value)
  %1136 = fadd fast float %1135, %366
  %1137 = fmul fast float %377, %1133
  %1138 = call float @dx.op.unary.f32(i32 22, float %1137)  ; Frc(value)
  %1139 = fadd fast float %1138, %368
  %1140 = fmul fast float %1105, %1133
  %1141 = call float @dx.op.unary.f32(i32 22, float %1140)  ; Frc(value)
  %1142 = fmul fast float %1141, 0x401921FB60000000
  %1143 = fadd fast float %1142, %1124
  %1144 = call float @dx.op.unary.f32(i32 13, float %1143)  ; Sin(value)
  %1145 = call float @dx.op.unary.f32(i32 12, float %1143)  ; Cos(value)
  %1146 = fsub fast float -0.000000e+00, %1144
  %1147 = fadd fast float %1098, -5.000000e-01
  %1148 = fadd fast float %1099, -5.000000e-01
  %1149 = fmul fast float %1116, %1147
  %1150 = fmul fast float %1118, %1148
  %1151 = fadd fast float %1149, 5.000000e-01
  %1152 = fadd fast float %1150, 5.000000e-01
  %1153 = fmul fast float %1127, %1151
  %1154 = fmul fast float %1130, %1152
  %1155 = fmul fast float %1145, %1153
  %1156 = call float @dx.op.tertiary.f32(i32 46, float %1146, float %1154, float %1155)  ; FMad(a,b,c)
  %1157 = fmul fast float %1144, %1153
  %1158 = call float @dx.op.tertiary.f32(i32 46, float %1145, float %1154, float %1157)  ; FMad(a,b,c)
  %1159 = fadd fast float %1136, %1156
  %1160 = fadd fast float %1139, %1158
  %1161 = icmp ugt i32 %1110, 1
  %1162 = icmp ugt i32 %1108, 33554431
  %1163 = or i1 %1162, %1161
  br i1 %1163, label %1164, label %1189

; <label>:1164                                    ; preds = %1091
  %1165 = add i32 %54, 244
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = lshr i32 %1167, 16
  %1169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1168)  ; LegacyF16ToF32(value)
  %1170 = fmul fast float %1132, %1169
  %1171 = call float @dx.op.unary.f32(i32 22, float %1170)  ; Frc(value)
  %1172 = mul nuw nsw i32 %1110, %1111
  %1173 = uitofp i32 %1172 to float
  %1174 = fmul fast float %1171, %1173
  %1175 = call float @dx.op.unary.f32(i32 27, float %1174)  ; Round_ni(value)
  %1176 = fptoui float %1175 to i32
  %1177 = urem i32 %1176, %1110
  %1178 = udiv i32 %1176, %1111
  %1179 = call float @dx.op.unary.f32(i32 22, float %1159)  ; Frc(value)
  %1180 = call float @dx.op.unary.f32(i32 22, float %1160)  ; Frc(value)
  %1181 = uitofp i32 %1177 to float
  %1182 = uitofp i32 %1178 to float
  %1183 = fadd fast float %1179, %1181
  %1184 = fadd fast float %1180, %1182
  %1185 = uitofp i32 %1110 to float
  %1186 = uitofp i32 %1111 to float
  %1187 = fdiv fast float %1183, %1185
  %1188 = fdiv fast float %1184, %1186
  br label %1189

; <label>:1189                                    ; preds = %1164, %1091
  %1190 = phi float [ %1187, %1164 ], [ %1159, %1091 ]
  %1191 = phi float [ %1188, %1164 ], [ %1160, %1091 ]
  %1192 = and i32 %1085, 256
  %1193 = icmp eq i32 %1192, 0
  br i1 %1193, label %1240, label %1194

; <label>:1194                                    ; preds = %1189
  %1195 = add i32 %54, 572
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1195, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = add i32 %1197, 0
  %1199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1198, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1199, %dx.types.Handle %101, float %1190, float %1191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = add i32 %54, 116
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = shl i32 %1204, 4
  %1206 = and i32 %1205, 32752
  %1207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1206)  ; LegacyF16ToF32(value)
  %1208 = lshr i32 %1204, 7
  %1209 = and i32 %1208, 32752
  %1210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1209)  ; LegacyF16ToF32(value)
  %1211 = fsub fast float 1.000000e+00, %521
  %1212 = call float @dx.op.binary.f32(i32 35, float %1211, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1213 = bitcast float %521 to i32
  %1214 = sitofp i32 %1213 to float
  %1215 = fadd fast float %1214, 0xC1CFBF8940000000
  %1216 = fmul fast float %1210, %1215
  %1217 = fadd fast float %1216, 0x41CFBF8940000000
  %1218 = fptosi float %1217 to i32
  %1219 = bitcast i32 %1218 to float
  %1220 = bitcast float %1212 to i32
  %1221 = sitofp i32 %1220 to float
  %1222 = fadd fast float %1221, 0xC1CFBF8940000000
  %1223 = fmul fast float %1222, %1210
  %1224 = fadd fast float %1223, 0x41CFBF8940000000
  %1225 = fptosi float %1224 to i32
  %1226 = bitcast i32 %1225 to float
  %1227 = fmul fast float %1219, %1207
  %1228 = fmul fast float %1226, %1207
  %1229 = fsub fast float %1212, %1227
  %1230 = fadd fast float %1228, %1212
  %1231 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  %1232 = call float @dx.op.unary.f32(i32 7, float %1230)  ; Saturate(value)
  %1233 = fsub fast float %1201, %1231
  %1234 = fsub fast float %1232, %1231
  %1235 = bitcast float %1234 to i32
  %1236 = sub nsw i32 2129859010, %1235
  %1237 = bitcast i32 %1236 to float
  %1238 = fmul fast float %1237, %1233
  %1239 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  br label %1240

; <label>:1240                                    ; preds = %1194, %1189
  %1241 = phi float [ %1239, %1194 ], [ %521, %1189 ]
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = and i32 %1243, 128
  %1245 = icmp eq i32 %1244, 0
  br i1 %1245, label %1262, label %1246

; <label>:1246                                    ; preds = %1240
  %1247 = add i32 %54, 556
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = add i32 %1249, 0
  %1251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1250, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1252 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1251, %dx.types.Handle %101, float %1190, float %1191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = and i32 %1255, 524288
  %1257 = icmp ne i32 %1256, 0
  %1258 = fcmp fast ogt float %1253, 0x3FE0101020000000
  %1259 = select i1 %1258, float 1.000000e+00, float 0.000000e+00
  %1260 = select i1 %1257, float %1259, float %1253
  %1261 = fmul fast float %1260, %1241
  br label %1262

; <label>:1262                                    ; preds = %1246, %1240
  %1263 = phi float [ %1261, %1246 ], [ %1241, %1240 ]
  %1264 = fcmp fast ult float %1263, 0x3F70101020000000
  br i1 %1264, label %1807, label %1265

; <label>:1265                                    ; preds = %1262
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = and i32 %1267, 16
  %1269 = icmp eq i32 %1268, 0
  br i1 %1269, label %1468, label %1270

; <label>:1270                                    ; preds = %1265
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = add i32 %54, 508
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = add i32 %1275, 0
  %1277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1276, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1278 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1277, %dx.types.Handle %100, float %1190, float %1191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1279 = extractvalue %dx.types.ResRet.f32 %1278, 0
  %1280 = extractvalue %dx.types.ResRet.f32 %1278, 1
  %1281 = extractvalue %dx.types.ResRet.f32 %1278, 2
  %1282 = extractvalue %dx.types.ResRet.f32 %1278, 3
  %1283 = and i32 %1272, 255
  %1284 = uitofp i32 %1283 to float
  %1285 = lshr i32 %1272, 8
  %1286 = and i32 %1285, 255
  %1287 = uitofp i32 %1286 to float
  %1288 = fmul fast float %1282, %1284
  %1289 = fadd fast float %1288, %1287
  %1290 = fmul fast float %1289, 0x3F70101000000000
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = and i32 %1292, 512
  %1294 = icmp eq i32 %1293, 0
  br i1 %1294, label %1303, label %1295

; <label>:1295                                    ; preds = %1270
  %1296 = add i32 %54, 592
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = add i32 %1298, 0
  %1300 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1299, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1301 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1300, %dx.types.Handle %101, float %1190, float %1191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1302 = extractvalue %dx.types.ResRet.f32 %1301, 0
  br label %1303

; <label>:1303                                    ; preds = %1295, %1270
  %1304 = phi float [ %1302, %1295 ], [ 1.000000e+00, %1270 ]
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = and i32 %1306, 33554432
  %1308 = icmp eq i32 %1307, 0
  br i1 %1308, label %1415, label %1309

; <label>:1309                                    ; preds = %1303
  %1310 = add i32 %54, 240
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = and i32 %1312, 65535
  %1314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1313)  ; LegacyF16ToF32(value)
  %1315 = lshr i32 %1312, 16
  %1316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1315)  ; LegacyF16ToF32(value)
  %1317 = add i32 %54, 244
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = and i32 %1319, 65535
  %1321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1320)  ; LegacyF16ToF32(value)
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = lshr i32 %1323, 24
  %1325 = uitofp i32 %1324 to float
  %1326 = fmul fast float %1325, 0x3F70101020000000
  %1327 = and i32 %1323, 255
  %1328 = uitofp i32 %1327 to float
  %1329 = fmul fast float %1328, 0x3F70101020000000
  %1330 = lshr i32 %1323, 8
  %1331 = and i32 %1330, 255
  %1332 = uitofp i32 %1331 to float
  %1333 = fmul fast float %1332, 0x3F70101020000000
  %1334 = lshr i32 %1323, 16
  %1335 = and i32 %1334, 255
  %1336 = uitofp i32 %1335 to float
  %1337 = fmul fast float %1336, 0x3F70101020000000
  %1338 = add i32 %54, 236
  %1339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.i32 %1339, 0
  %1341 = lshr i32 %1340, 24
  %1342 = uitofp i32 %1341 to float
  %1343 = fmul fast float %1342, 0x3F70101020000000
  %1344 = and i32 %1340, 255
  %1345 = uitofp i32 %1344 to float
  %1346 = fmul fast float %1345, 0x3F70101020000000
  %1347 = lshr i32 %1340, 8
  %1348 = and i32 %1347, 255
  %1349 = uitofp i32 %1348 to float
  %1350 = fmul fast float %1349, 0x3F70101020000000
  %1351 = lshr i32 %1340, 16
  %1352 = and i32 %1351, 255
  %1353 = uitofp i32 %1352 to float
  %1354 = fmul fast float %1353, 0x3F70101020000000
  %1355 = bitcast float %1279 to i32
  %1356 = ashr i32 %1355, 1
  %1357 = sub nsw i32 1597463174, %1356
  %1358 = bitcast i32 %1357 to float
  %1359 = fmul fast float %1279, 5.000000e-01
  %1360 = fmul fast float %1358, %1358
  %1361 = fmul fast float %1360, %1359
  %1362 = fsub fast float 1.500000e+00, %1361
  %1363 = fmul fast float %1358, %1279
  %1364 = fmul fast float %1363, %1362
  %1365 = bitcast float %1280 to i32
  %1366 = ashr i32 %1365, 1
  %1367 = sub nsw i32 1597463174, %1366
  %1368 = bitcast i32 %1367 to float
  %1369 = fmul fast float %1280, 5.000000e-01
  %1370 = fmul fast float %1368, %1368
  %1371 = fmul fast float %1370, %1369
  %1372 = fsub fast float 1.500000e+00, %1371
  %1373 = fmul fast float %1368, %1280
  %1374 = fmul fast float %1373, %1372
  %1375 = bitcast float %1281 to i32
  %1376 = ashr i32 %1375, 1
  %1377 = sub nsw i32 1597463174, %1376
  %1378 = bitcast i32 %1377 to float
  %1379 = fmul fast float %1281, 5.000000e-01
  %1380 = fmul fast float %1378, %1378
  %1381 = fmul fast float %1380, %1379
  %1382 = fsub fast float 1.500000e+00, %1381
  %1383 = fmul fast float %1378, %1281
  %1384 = fmul fast float %1383, %1382
  %1385 = fsub fast float %1364, %1346
  %1386 = fsub fast float %1374, %1350
  %1387 = fsub fast float %1384, %1354
  %1388 = fmul fast float %1385, %1314
  %1389 = fmul fast float %1386, %1316
  %1390 = fmul fast float %1387, %1321
  %1391 = fadd fast float %1388, %1329
  %1392 = fadd fast float %1389, %1333
  %1393 = fadd fast float %1390, %1337
  %1394 = call float @dx.op.unary.f32(i32 7, float %1391)  ; Saturate(value)
  %1395 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  %1396 = call float @dx.op.unary.f32(i32 7, float %1393)  ; Saturate(value)
  %1397 = fmul fast float %1394, %1394
  %1398 = fmul fast float %1395, %1395
  %1399 = fmul fast float %1396, %1396
  %1400 = fsub fast float %1397, %1279
  %1401 = fsub fast float %1398, %1280
  %1402 = fsub fast float %1399, %1281
  %1403 = fmul fast float %1400, %1304
  %1404 = fmul fast float %1401, %1304
  %1405 = fmul fast float %1402, %1304
  %1406 = fadd fast float %1403, %1279
  %1407 = fadd fast float %1404, %1280
  %1408 = fadd fast float %1405, %1281
  %1409 = fadd fast float %1326, %1290
  %1410 = fsub fast float %1409, %1343
  %1411 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  %1412 = fsub fast float %1411, %1290
  %1413 = fmul fast float %1412, %1304
  %1414 = fadd fast float %1413, %1290
  br label %1468

; <label>:1415                                    ; preds = %1303
  %1416 = and i32 %1306, 134217728
  %1417 = icmp eq i32 %1416, 0
  br i1 %1417, label %1452, label %1418

; <label>:1418                                    ; preds = %1415
  %1419 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %1420 = call float @dx.op.unary.f32(i32 24, float %357)  ; Sqrt(value)
  %1421 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %1422 = fadd fast float %1419, -5.000000e-01
  %1423 = fadd fast float %1420, -5.000000e-01
  %1424 = fadd fast float %1421, -5.000000e-01
  %1425 = fmul fast float %1422, %1304
  %1426 = fmul fast float %1423, %1304
  %1427 = fmul fast float %1424, %1304
  %1428 = fadd fast float %1425, 5.000000e-01
  %1429 = fadd fast float %1426, 5.000000e-01
  %1430 = fadd fast float %1427, 5.000000e-01
  %1431 = call float @dx.op.unary.f32(i32 24, float %1279)  ; Sqrt(value)
  %1432 = call float @dx.op.unary.f32(i32 24, float %1280)  ; Sqrt(value)
  %1433 = call float @dx.op.unary.f32(i32 24, float %1281)  ; Sqrt(value)
  %1434 = fmul fast float %1428, 2.000000e+00
  %1435 = fsub fast float 1.000000e+00, %1434
  %1436 = fmul fast float %1435, %1431
  %1437 = fadd fast float %1436, %1434
  %1438 = fmul fast float %1437, %1431
  %1439 = fmul fast float %1429, 2.000000e+00
  %1440 = fsub fast float 1.000000e+00, %1439
  %1441 = fmul fast float %1440, %1432
  %1442 = fadd fast float %1441, %1439
  %1443 = fmul fast float %1442, %1432
  %1444 = fmul fast float %1430, 2.000000e+00
  %1445 = fsub fast float 1.000000e+00, %1444
  %1446 = fmul fast float %1445, %1433
  %1447 = fadd fast float %1446, %1444
  %1448 = fmul fast float %1447, %1433
  %1449 = fmul fast float %1438, %1438
  %1450 = fmul fast float %1443, %1443
  %1451 = fmul fast float %1448, %1448
  br label %1468

; <label>:1452                                    ; preds = %1415
  %1453 = fmul fast float %353, %353
  %1454 = fmul fast float %357, %357
  %1455 = fmul fast float %361, %361
  %1456 = fadd fast float %1453, -1.000000e+00
  %1457 = fadd fast float %1454, -1.000000e+00
  %1458 = fadd fast float %1455, -1.000000e+00
  %1459 = fmul fast float %1304, %1456
  %1460 = fmul fast float %1304, %1457
  %1461 = fmul fast float %1304, %1458
  %1462 = fadd fast float %1459, 1.000000e+00
  %1463 = fadd fast float %1460, 1.000000e+00
  %1464 = fadd fast float %1461, 1.000000e+00
  %1465 = fmul fast float %1462, %1279
  %1466 = fmul fast float %1463, %1280
  %1467 = fmul fast float %1464, %1281
  br label %1468

; <label>:1468                                    ; preds = %1452, %1418, %1309, %1265
  %1469 = phi float [ %1414, %1309 ], [ %1290, %1418 ], [ %1290, %1452 ], [ 0x3FA23C0BE0000000, %1265 ]
  %1470 = phi float [ %1406, %1309 ], [ %1449, %1418 ], [ %1465, %1452 ], [ 1.000000e+00, %1265 ]
  %1471 = phi float [ %1407, %1309 ], [ %1450, %1418 ], [ %1466, %1452 ], [ 1.000000e+00, %1265 ]
  %1472 = phi float [ %1408, %1309 ], [ %1451, %1418 ], [ %1467, %1452 ], [ 1.000000e+00, %1265 ]
  %1473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.i32 %1473, 1
  %1475 = and i32 %1474, 1
  %1476 = icmp ne i32 %1475, 0
  %1477 = add i32 %54, 356
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = and i32 %1479, 32
  %1481 = icmp ne i32 %1480, 0
  %1482 = and i1 %1476, %1481
  %1483 = select i1 %1482, float 1.000000e+00, float %1470
  %1484 = select i1 %1482, float 0x3FD3333340000000, float %1471
  %1485 = select i1 %1482, float 0x3FD3333340000000, float %1472
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 32
  %1489 = icmp eq i32 %1488, 0
  br i1 %1489, label %1562, label %1490

; <label>:1490                                    ; preds = %1468
  %1491 = add i32 %54, 108
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = add i32 %54, 524
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = add i32 %1496, 0
  %1498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1497, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1499 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1498, %dx.types.Handle %100, float %1190, float %1191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1500 = extractvalue %dx.types.ResRet.f32 %1499, 0
  %1501 = extractvalue %dx.types.ResRet.f32 %1499, 1
  %1502 = extractvalue %dx.types.ResRet.f32 %1499, 2
  %1503 = extractvalue %dx.types.ResRet.f32 %1499, 3
  %1504 = and i32 %1493, 255
  %1505 = uitofp i32 %1504 to float
  %1506 = lshr i32 %1493, 8
  %1507 = and i32 %1506, 255
  %1508 = uitofp i32 %1507 to float
  %1509 = lshr i32 %1493, 16
  %1510 = and i32 %1509, 255
  %1511 = uitofp i32 %1510 to float
  %1512 = fmul fast float %1511, 0x3F70101000000000
  %1513 = fmul fast float %1500, %1505
  %1514 = fadd fast float %1513, %1508
  %1515 = fmul fast float %1514, 0x3F70101000000000
  %1516 = fadd fast float %1501, -5.000000e-01
  %1517 = fadd fast float %1503, -5.000000e-01
  %1518 = fmul fast float %1516, %1512
  %1519 = fmul fast float %1517, %1512
  %1520 = fadd fast float %1518, 5.000000e-01
  %1521 = fadd fast float %1519, 5.000000e-01
  %1522 = fmul fast float %1520, 2.000000e+00
  %1523 = fadd fast float %1522, -1.000000e+00
  %1524 = fmul fast float %1521, 2.000000e+00
  %1525 = fadd fast float %1524, -1.000000e+00
  %1526 = fadd fast float %1523, %1525
  %1527 = fmul fast float %1526, 5.000000e-01
  %1528 = fsub fast float %1523, %1525
  %1529 = fmul fast float %1528, 5.000000e-01
  %1530 = call float @dx.op.unary.f32(i32 6, float %1527)  ; FAbs(value)
  %1531 = fsub fast float 1.000000e+00, %1530
  %1532 = call float @dx.op.unary.f32(i32 6, float %1529)  ; FAbs(value)
  %1533 = fsub fast float %1531, %1532
  %1534 = call float @dx.op.dot3.f32(i32 55, float %1527, float %1529, float %1533, float %1527, float %1529, float %1533)  ; Dot3(ax,ay,az,bx,by,bz)
  %1535 = call float @dx.op.unary.f32(i32 25, float %1534)  ; Rsqrt(value)
  %1536 = fmul fast float %1527, %1535
  %1537 = fmul fast float %1529, %1535
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = and i32 %1539, 67108864
  %1541 = icmp eq i32 %1540, 0
  br i1 %1541, label %1558, label %1542

; <label>:1542                                    ; preds = %1490
  %1543 = add i32 %54, 296
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1543, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = and i32 %1545, 65535
  %1547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1546)  ; LegacyF16ToF32(value)
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = and i32 %1549, 65535
  %1551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1550)  ; LegacyF16ToF32(value)
  %1552 = lshr i32 %1545, 16
  %1553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1552)  ; LegacyF16ToF32(value)
  %1554 = fsub fast float %1515, %1553
  %1555 = fmul fast float %1554, %1547
  %1556 = fadd fast float %1555, %1551
  %1557 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  br label %1558

; <label>:1558                                    ; preds = %1542, %1490
  %1559 = phi float [ %1557, %1542 ], [ %1515, %1490 ]
  %1560 = call float @dx.op.dot2.f32(i32 54, float %1536, float %1537, float %1094, float %1095)  ; Dot2(ax,ay,bx,by)
  %1561 = call float @dx.op.dot2.f32(i32 54, float %1536, float %1537, float %1096, float %1097)  ; Dot2(ax,ay,bx,by)
  br label %1562

; <label>:1562                                    ; preds = %1558, %1468
  %1563 = phi float [ %1559, %1558 ], [ 0x3FD6666660000000, %1468 ]
  %1564 = phi float [ %1560, %1558 ], [ 0.000000e+00, %1468 ]
  %1565 = phi float [ %1561, %1558 ], [ 0.000000e+00, %1468 ]
  %1566 = phi float [ %1502, %1558 ], [ 1.000000e+00, %1468 ]
  %1567 = add i32 %54, 176
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1567, i32 undef)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = lshr i32 %1569, 22
  %1571 = shl nuw nsw i32 %1570, 5
  %1572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1571)  ; LegacyF16ToF32(value)
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = and i32 %1574, 64
  %1576 = icmp eq i32 %1575, 0
  br i1 %1576, label %1610, label %1577

; <label>:1577                                    ; preds = %1562
  %1578 = add i32 %54, 540
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = add i32 %1580, 0
  %1582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1581, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = and i32 %1584, 131072
  %1586 = icmp eq i32 %1585, 0
  %1587 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1582, %dx.types.Handle %100, float %1190, float %1191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1588 = extractvalue %dx.types.ResRet.f32 %1587, 0
  %1589 = extractvalue %dx.types.ResRet.f32 %1587, 1
  %1590 = extractvalue %dx.types.ResRet.f32 %1587, 2
  %1591 = fmul fast float %1588, %341
  %1592 = fmul fast float %1589, %344
  %1593 = fmul fast float %1590, %347
  br i1 %1586, label %1600, label %1594

; <label>:1594                                    ; preds = %1577
  %1595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1596 = extractvalue %dx.types.CBufRet.f32 %1595, 0
  %1597 = fmul fast float %1596, %1591
  %1598 = fmul fast float %1596, %1592
  %1599 = fmul fast float %1596, %1593
  br label %1600

; <label>:1600                                    ; preds = %1594, %1577
  %1601 = phi float [ %1597, %1594 ], [ %1591, %1577 ]
  %1602 = phi float [ %1598, %1594 ], [ %1592, %1577 ]
  %1603 = phi float [ %1599, %1594 ], [ %1593, %1577 ]
  %1604 = fmul fast float %1601, %1572
  %1605 = select i1 %282, float %1604, float %1601
  %1606 = call float @dx.op.dot3.f32(i32 55, float %1605, float %1602, float %1603, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1607 = select i1 %282, float 0.000000e+00, float %1601
  %1608 = select i1 %282, float %1606, float %1602
  %1609 = select i1 %282, float 0.000000e+00, float %1603
  br label %1610

; <label>:1610                                    ; preds = %1600, %1562
  %1611 = phi float [ %1607, %1600 ], [ 0.000000e+00, %1562 ]
  %1612 = phi float [ %1608, %1600 ], [ 0.000000e+00, %1562 ]
  %1613 = phi float [ %1609, %1600 ], [ 0.000000e+00, %1562 ]
  %1614 = add i32 %54, 112
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = and i32 %1616, 255
  %1618 = uitofp i32 %1617 to float
  %1619 = lshr i32 %1616, 8
  %1620 = and i32 %1619, 255
  %1621 = uitofp i32 %1620 to float
  %1622 = call float @dx.op.dot3.f32(i32 55, float %1483, float %1484, float %1485, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1623 = fmul fast float %1621, %1622
  %1624 = fadd fast float %1623, %1618
  %1625 = fmul fast float %1624, 0x3F70101020000000
  %1626 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  br i1 %1082, label %1627, label %1635

; <label>:1627                                    ; preds = %1610
  %1628 = fsub fast float 1.000000e+00, %1263
  %1629 = fmul fast float %1628, %1070
  %1630 = fmul fast float %1628, %1071
  %1631 = fmul fast float %1628, %1072
  %1632 = fmul fast float %1628, %1073
  %1633 = fmul fast float %1628, %1074
  %1634 = fmul fast float %1628, %1075
  br label %1635

; <label>:1635                                    ; preds = %1627, %1610
  %1636 = phi float [ %1629, %1627 ], [ %1070, %1610 ]
  %1637 = phi float [ %1630, %1627 ], [ %1071, %1610 ]
  %1638 = phi float [ %1631, %1627 ], [ %1072, %1610 ]
  %1639 = phi float [ %1632, %1627 ], [ %1073, %1610 ]
  %1640 = phi float [ %1633, %1627 ], [ %1074, %1610 ]
  %1641 = phi float [ %1634, %1627 ], [ %1075, %1610 ]
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = and i32 %1643, 3
  %1645 = icmp eq i32 %1644, 3
  br i1 %1645, label %1724, label %1646

; <label>:1646                                    ; preds = %1635
  %1647 = and i32 %1643, 16
  %1648 = icmp ne i32 %1647, 0
  %1649 = select i1 %1648, float %1263, float 0.000000e+00
  %1650 = icmp eq i32 %1644, 0
  br i1 %1650, label %1651, label %1679

; <label>:1651                                    ; preds = %1646
  %1652 = and i32 %1643, 64
  %1653 = icmp ne i32 %1652, 0
  %1654 = select i1 %1653, float %1263, float 0.000000e+00
  %1655 = fsub fast float %1483, %1636
  %1656 = fsub fast float %1484, %1637
  %1657 = fsub fast float %1485, %1638
  %1658 = fmul fast float %1649, %1655
  %1659 = fmul fast float %1649, %1656
  %1660 = fmul fast float %1649, %1657
  %1661 = fadd fast float %1658, %1636
  %1662 = fadd fast float %1659, %1637
  %1663 = fadd fast float %1660, %1638
  %1664 = fsub fast float %1469, %1076
  %1665 = fmul fast float %1649, %1664
  %1666 = fadd fast float %1665, %1076
  %1667 = fsub fast float %1611, %1639
  %1668 = fsub fast float %1612, %1640
  %1669 = fsub fast float %1613, %1641
  %1670 = fmul fast float %1654, %1667
  %1671 = fmul fast float %1654, %1668
  %1672 = fmul fast float %1654, %1669
  %1673 = fadd fast float %1670, %1639
  %1674 = fadd fast float %1671, %1640
  %1675 = fadd fast float %1672, %1641
  %1676 = fsub fast float %1626, %1080
  %1677 = fmul fast float %1649, %1676
  %1678 = fadd fast float %1677, %1080
  br label %1724

; <label>:1679                                    ; preds = %1646
  %1680 = icmp eq i32 %1644, 1
  br i1 %1680, label %1681, label %1694

; <label>:1681                                    ; preds = %1679
  %1682 = fadd fast float %1483, -1.000000e+00
  %1683 = fadd fast float %1484, -1.000000e+00
  %1684 = fadd fast float %1485, -1.000000e+00
  %1685 = fmul fast float %1649, %1682
  %1686 = fmul fast float %1649, %1683
  %1687 = fmul fast float %1649, %1684
  %1688 = fadd fast float %1685, 1.000000e+00
  %1689 = fadd fast float %1686, 1.000000e+00
  %1690 = fadd fast float %1687, 1.000000e+00
  %1691 = fmul fast float %1688, %1636
  %1692 = fmul fast float %1689, %1637
  %1693 = fmul fast float %1690, %1638
  br label %1724

; <label>:1694                                    ; preds = %1679
  %1695 = icmp eq i32 %1644, 2
  br i1 %1695, label %1696, label %1724

; <label>:1696                                    ; preds = %1694
  %1697 = call float @dx.op.unary.f32(i32 24, float %1483)  ; Sqrt(value)
  %1698 = call float @dx.op.unary.f32(i32 24, float %1484)  ; Sqrt(value)
  %1699 = call float @dx.op.unary.f32(i32 24, float %1485)  ; Sqrt(value)
  %1700 = fadd fast float %1697, -5.000000e-01
  %1701 = fadd fast float %1698, -5.000000e-01
  %1702 = fadd fast float %1699, -5.000000e-01
  %1703 = fmul fast float %1700, %1649
  %1704 = fmul fast float %1701, %1649
  %1705 = fmul fast float %1702, %1649
  %1706 = fadd fast float %1703, 5.000000e-01
  %1707 = fadd fast float %1704, 5.000000e-01
  %1708 = fadd fast float %1705, 5.000000e-01
  %1709 = fmul fast float %1706, 2.000000e+00
  %1710 = fsub fast float 1.000000e+00, %1709
  %1711 = fmul fast float %1710, %1636
  %1712 = fadd fast float %1711, %1709
  %1713 = fmul fast float %1712, %1636
  %1714 = fmul fast float %1707, 2.000000e+00
  %1715 = fsub fast float 1.000000e+00, %1714
  %1716 = fmul fast float %1715, %1637
  %1717 = fadd fast float %1716, %1714
  %1718 = fmul fast float %1717, %1637
  %1719 = fmul fast float %1708, 2.000000e+00
  %1720 = fsub fast float 1.000000e+00, %1719
  %1721 = fmul fast float %1720, %1638
  %1722 = fadd fast float %1721, %1719
  %1723 = fmul fast float %1722, %1638
  br label %1724

; <label>:1724                                    ; preds = %1696, %1694, %1681, %1651, %1635
  %1725 = phi float [ %1636, %1635 ], [ %1713, %1696 ], [ %1636, %1694 ], [ %1691, %1681 ], [ %1661, %1651 ]
  %1726 = phi float [ %1637, %1635 ], [ %1718, %1696 ], [ %1637, %1694 ], [ %1692, %1681 ], [ %1662, %1651 ]
  %1727 = phi float [ %1638, %1635 ], [ %1723, %1696 ], [ %1638, %1694 ], [ %1693, %1681 ], [ %1663, %1651 ]
  %1728 = phi float [ %1639, %1635 ], [ %1639, %1696 ], [ %1639, %1694 ], [ %1639, %1681 ], [ %1673, %1651 ]
  %1729 = phi float [ %1640, %1635 ], [ %1640, %1696 ], [ %1640, %1694 ], [ %1640, %1681 ], [ %1674, %1651 ]
  %1730 = phi float [ %1641, %1635 ], [ %1641, %1696 ], [ %1641, %1694 ], [ %1641, %1681 ], [ %1675, %1651 ]
  %1731 = phi float [ %1076, %1635 ], [ %1076, %1696 ], [ %1076, %1694 ], [ %1076, %1681 ], [ %1666, %1651 ]
  %1732 = phi float [ %1080, %1635 ], [ %1080, %1696 ], [ %1080, %1694 ], [ %1080, %1681 ], [ %1678, %1651 ]
  %1733 = and i32 %1643, 12
  %1734 = icmp eq i32 %1733, 12
  br i1 %1734, label %1807, label %1735

; <label>:1735                                    ; preds = %1724
  %1736 = and i32 %1643, 2097184
  %1737 = icmp eq i32 %1736, 2097184
  %1738 = select i1 %1737, float %1263, float 0.000000e+00
  %1739 = and i32 %1643, 4194336
  %1740 = icmp eq i32 %1739, 4194336
  %1741 = select i1 %1740, float %1263, float 0.000000e+00
  %1742 = and i32 %1643, 8388640
  %1743 = icmp eq i32 %1742, 8388640
  %1744 = select i1 %1743, float %1263, float 0.000000e+00
  %1745 = icmp eq i32 %1733, 0
  br i1 %1745, label %1746, label %1759

; <label>:1746                                    ; preds = %1735
  %1747 = fsub fast float %1564, %1068
  %1748 = fsub fast float %1565, %1069
  %1749 = fmul fast float %1738, %1747
  %1750 = fmul fast float %1738, %1748
  %1751 = fadd fast float %1749, %1068
  %1752 = fadd fast float %1750, %1069
  %1753 = fsub fast float %1566, %1079
  %1754 = fmul fast float %1741, %1753
  %1755 = fadd fast float %1754, %1079
  %1756 = fsub fast float %1563, %1078
  %1757 = fmul fast float %1744, %1756
  %1758 = fadd fast float %1757, %1078
  br label %1807

; <label>:1759                                    ; preds = %1735
  %1760 = icmp eq i32 %1733, 4
  br i1 %1760, label %1761, label %1793

; <label>:1761                                    ; preds = %1759
  %1762 = fmul fast float %1738, %1564
  %1763 = fmul fast float %1738, %1565
  %1764 = fadd fast float %1762, %1068
  %1765 = fadd fast float %1763, %1069
  %1766 = call float @dx.op.binary.f32(i32 36, float %1079, float %1566)  ; FMin(a,b)
  %1767 = fsub fast float %1766, %1079
  %1768 = fmul fast float %1767, %1741
  %1769 = fadd fast float %1768, %1079
  %1770 = fadd fast float %1563, %1078
  %1771 = fmul fast float %1770, 0x3FF337FAE0000000
  %1772 = fmul fast float %1078, %1078
  %1773 = fmul fast float %1563, %1563
  %1774 = fadd fast float %1773, %1772
  %1775 = fmul fast float %1774, 0x3FE5152B00000000
  %1776 = fmul fast float %1078, 0xBFCC1F85E0000000
  %1777 = fmul fast float %1776, %1563
  %1778 = fadd fast float %1777, 0xBFE1363700000000
  %1779 = fadd fast float %1778, %1771
  %1780 = fsub fast float %1779, %1775
  %1781 = fmul fast float %1770, 0x3FBA6F0D00000000
  %1782 = fmul fast float %1774, 0x3FD0432880000000
  %1783 = fmul fast float %1078, 0xBFEF110800000000
  %1784 = fmul fast float %1783, %1563
  %1785 = fadd fast float %1784, 1.000000e+00
  %1786 = fsub fast float %1785, %1781
  %1787 = fadd fast float %1786, %1782
  %1788 = fdiv fast float %1780, %1787
  %1789 = call float @dx.op.unary.f32(i32 7, float %1788)  ; Saturate(value)
  %1790 = fsub fast float %1789, %1078
  %1791 = fmul fast float %1790, %1744
  %1792 = fadd fast float %1791, %1078
  br label %1807

; <label>:1793                                    ; preds = %1759
  %1794 = icmp eq i32 %1733, 8
  br i1 %1794, label %1795, label %1807

; <label>:1795                                    ; preds = %1793
  %1796 = fmul fast float %1738, %1564
  %1797 = fmul fast float %1738, %1565
  %1798 = fadd fast float %1796, %1068
  %1799 = fadd fast float %1797, %1069
  %1800 = call float @dx.op.binary.f32(i32 36, float %1079, float %1566)  ; FMin(a,b)
  %1801 = fsub fast float %1800, %1079
  %1802 = fmul fast float %1801, %1741
  %1803 = fadd fast float %1802, %1079
  %1804 = fsub fast float %1563, %1078
  %1805 = fmul fast float %1744, %1804
  %1806 = fadd fast float %1805, %1078
  br label %1807

; <label>:1807                                    ; preds = %1795, %1793, %1761, %1746, %1724, %1262, %1081, %1067
  %1808 = phi float [ %1068, %1724 ], [ %1068, %1262 ], [ %1068, %1067 ], [ %1798, %1795 ], [ %1068, %1793 ], [ %1764, %1761 ], [ %1751, %1746 ], [ %1068, %1081 ]
  %1809 = phi float [ %1069, %1724 ], [ %1069, %1262 ], [ %1069, %1067 ], [ %1799, %1795 ], [ %1069, %1793 ], [ %1765, %1761 ], [ %1752, %1746 ], [ %1069, %1081 ]
  %1810 = phi float [ %1725, %1724 ], [ %1070, %1262 ], [ %1070, %1067 ], [ %1725, %1795 ], [ %1725, %1793 ], [ %1725, %1761 ], [ %1725, %1746 ], [ %1070, %1081 ]
  %1811 = phi float [ %1726, %1724 ], [ %1071, %1262 ], [ %1071, %1067 ], [ %1726, %1795 ], [ %1726, %1793 ], [ %1726, %1761 ], [ %1726, %1746 ], [ %1071, %1081 ]
  %1812 = phi float [ %1727, %1724 ], [ %1072, %1262 ], [ %1072, %1067 ], [ %1727, %1795 ], [ %1727, %1793 ], [ %1727, %1761 ], [ %1727, %1746 ], [ %1072, %1081 ]
  %1813 = phi float [ %1728, %1724 ], [ %1073, %1262 ], [ %1073, %1067 ], [ %1728, %1795 ], [ %1728, %1793 ], [ %1728, %1761 ], [ %1728, %1746 ], [ %1073, %1081 ]
  %1814 = phi float [ %1729, %1724 ], [ %1074, %1262 ], [ %1074, %1067 ], [ %1729, %1795 ], [ %1729, %1793 ], [ %1729, %1761 ], [ %1729, %1746 ], [ %1074, %1081 ]
  %1815 = phi float [ %1730, %1724 ], [ %1075, %1262 ], [ %1075, %1067 ], [ %1730, %1795 ], [ %1730, %1793 ], [ %1730, %1761 ], [ %1730, %1746 ], [ %1075, %1081 ]
  %1816 = phi float [ %1731, %1724 ], [ %1076, %1262 ], [ %1076, %1067 ], [ %1731, %1795 ], [ %1731, %1793 ], [ %1731, %1761 ], [ %1731, %1746 ], [ %1076, %1081 ]
  %1817 = phi float [ %1078, %1724 ], [ %1078, %1262 ], [ %1078, %1067 ], [ %1806, %1795 ], [ %1078, %1793 ], [ %1792, %1761 ], [ %1758, %1746 ], [ %1078, %1081 ]
  %1818 = phi float [ %1079, %1724 ], [ %1079, %1262 ], [ %1079, %1067 ], [ %1803, %1795 ], [ %1079, %1793 ], [ %1769, %1761 ], [ %1755, %1746 ], [ %1079, %1081 ]
  %1819 = phi float [ %1732, %1724 ], [ %1080, %1262 ], [ %1080, %1067 ], [ %1732, %1795 ], [ %1732, %1793 ], [ %1732, %1761 ], [ %1732, %1746 ], [ %1080, %1081 ]
  br i1 %468, label %2546, label %1820

; <label>:1820                                    ; preds = %1807
  %1821 = icmp ult i32 %524, 3
  %1822 = add i32 %54, 56
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = add i32 %54, 60
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = or i32 %1827, %1824
  %1829 = icmp eq i32 %1828, 0
  br i1 %1829, label %2546, label %1830

; <label>:1830                                    ; preds = %1820
  %1831 = and i32 %1824, 262144
  %1832 = icmp ne i32 %1831, 0
  %1833 = select i1 %1832, float %59, float 1.000000e+00
  %1834 = select i1 %1832, float %60, float 0.000000e+00
  %1835 = select i1 %1832, float %61, float 0.000000e+00
  %1836 = select i1 %1832, float %62, float 1.000000e+00
  %1837 = select i1 %1832, float %63, float %86
  %1838 = select i1 %1832, float %64, float %87
  %1839 = add i32 %54, 316
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = lshr i32 %1841, 16
  %1843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1842)  ; LegacyF16ToF32(value)
  %1844 = fmul fast float %1843, 0x3F50624DE0000000
  %1845 = add i32 %54, 120
  %1846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1845, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.i32 %1846, 0
  %1848 = lshr i32 %1847, 16
  %1849 = and i32 %1848, 255
  %1850 = lshr i32 %1847, 24
  %1851 = add i32 %54, 324
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = and i32 %1853, 65535
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = lshr i32 %1853, 16
  %1857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1856)  ; LegacyF16ToF32(value)
  %1858 = add i32 %54, 64
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = lshr i32 %1860, 22
  %1862 = shl nuw nsw i32 %1861, 5
  %1863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1862)  ; LegacyF16ToF32(value)
  %1864 = shl i32 %1860, 4
  %1865 = and i32 %1864, 32752
  %1866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1865)  ; LegacyF16ToF32(value)
  %1867 = lshr i32 %1860, 7
  %1868 = and i32 %1867, 32752
  %1869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1868)  ; LegacyF16ToF32(value)
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 3
  %1872 = fmul fast float %1871, 1.000000e+03
  %1873 = fmul fast float %418, %1872
  %1874 = call float @dx.op.unary.f32(i32 22, float %1873)  ; Frc(value)
  %1875 = fadd fast float %1874, %408
  %1876 = fmul fast float %419, %1872
  %1877 = call float @dx.op.unary.f32(i32 22, float %1876)  ; Frc(value)
  %1878 = fadd fast float %1877, %410
  %1879 = fmul fast float %1844, %1872
  %1880 = call float @dx.op.unary.f32(i32 22, float %1879)  ; Frc(value)
  %1881 = fmul fast float %1880, 0x401921FB60000000
  %1882 = fadd fast float %1881, %1863
  %1883 = call float @dx.op.unary.f32(i32 13, float %1882)  ; Sin(value)
  %1884 = call float @dx.op.unary.f32(i32 12, float %1882)  ; Cos(value)
  %1885 = fsub fast float -0.000000e+00, %1883
  %1886 = fadd fast float %1837, -5.000000e-01
  %1887 = fadd fast float %1838, -5.000000e-01
  %1888 = fmul fast float %1855, %1886
  %1889 = fmul fast float %1857, %1887
  %1890 = fadd fast float %1888, 5.000000e-01
  %1891 = fadd fast float %1889, 5.000000e-01
  %1892 = fmul fast float %1866, %1890
  %1893 = fmul fast float %1869, %1891
  %1894 = fmul fast float %1884, %1892
  %1895 = call float @dx.op.tertiary.f32(i32 46, float %1885, float %1893, float %1894)  ; FMad(a,b,c)
  %1896 = fmul fast float %1883, %1892
  %1897 = call float @dx.op.tertiary.f32(i32 46, float %1884, float %1893, float %1896)  ; FMad(a,b,c)
  %1898 = fadd fast float %1875, %1895
  %1899 = fadd fast float %1878, %1897
  %1900 = icmp ugt i32 %1849, 1
  %1901 = icmp ugt i32 %1847, 33554431
  %1902 = or i1 %1901, %1900
  br i1 %1902, label %1903, label %1928

; <label>:1903                                    ; preds = %1830
  %1904 = add i32 %54, 260
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = lshr i32 %1906, 16
  %1908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1907)  ; LegacyF16ToF32(value)
  %1909 = fmul fast float %1871, %1908
  %1910 = call float @dx.op.unary.f32(i32 22, float %1909)  ; Frc(value)
  %1911 = mul nuw nsw i32 %1849, %1850
  %1912 = uitofp i32 %1911 to float
  %1913 = fmul fast float %1910, %1912
  %1914 = call float @dx.op.unary.f32(i32 27, float %1913)  ; Round_ni(value)
  %1915 = fptoui float %1914 to i32
  %1916 = urem i32 %1915, %1849
  %1917 = udiv i32 %1915, %1850
  %1918 = call float @dx.op.unary.f32(i32 22, float %1898)  ; Frc(value)
  %1919 = call float @dx.op.unary.f32(i32 22, float %1899)  ; Frc(value)
  %1920 = uitofp i32 %1916 to float
  %1921 = uitofp i32 %1917 to float
  %1922 = fadd fast float %1918, %1920
  %1923 = fadd fast float %1919, %1921
  %1924 = uitofp i32 %1849 to float
  %1925 = uitofp i32 %1850 to float
  %1926 = fdiv fast float %1922, %1924
  %1927 = fdiv fast float %1923, %1925
  br label %1928

; <label>:1928                                    ; preds = %1903, %1830
  %1929 = phi float [ %1926, %1903 ], [ %1898, %1830 ]
  %1930 = phi float [ %1927, %1903 ], [ %1899, %1830 ]
  %1931 = and i32 %1824, 256
  %1932 = icmp eq i32 %1931, 0
  br i1 %1932, label %1979, label %1933

; <label>:1933                                    ; preds = %1928
  %1934 = add i32 %54, 576
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = add i32 %1936, 0
  %1938 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1937, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1939 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1938, %dx.types.Handle %101, float %1929, float %1930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1940 = extractvalue %dx.types.ResRet.f32 %1939, 0
  %1941 = add i32 %54, 132
  %1942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.i32 %1942, 0
  %1944 = shl i32 %1943, 4
  %1945 = and i32 %1944, 32752
  %1946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1945)  ; LegacyF16ToF32(value)
  %1947 = lshr i32 %1943, 7
  %1948 = and i32 %1947, 32752
  %1949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1948)  ; LegacyF16ToF32(value)
  %1950 = fsub fast float 1.000000e+00, %520
  %1951 = call float @dx.op.binary.f32(i32 35, float %1950, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1952 = bitcast float %520 to i32
  %1953 = sitofp i32 %1952 to float
  %1954 = fadd fast float %1953, 0xC1CFBF8940000000
  %1955 = fmul fast float %1949, %1954
  %1956 = fadd fast float %1955, 0x41CFBF8940000000
  %1957 = fptosi float %1956 to i32
  %1958 = bitcast i32 %1957 to float
  %1959 = bitcast float %1951 to i32
  %1960 = sitofp i32 %1959 to float
  %1961 = fadd fast float %1960, 0xC1CFBF8940000000
  %1962 = fmul fast float %1961, %1949
  %1963 = fadd fast float %1962, 0x41CFBF8940000000
  %1964 = fptosi float %1963 to i32
  %1965 = bitcast i32 %1964 to float
  %1966 = fmul fast float %1958, %1946
  %1967 = fmul fast float %1965, %1946
  %1968 = fsub fast float %1951, %1966
  %1969 = fadd fast float %1967, %1951
  %1970 = call float @dx.op.unary.f32(i32 7, float %1968)  ; Saturate(value)
  %1971 = call float @dx.op.unary.f32(i32 7, float %1969)  ; Saturate(value)
  %1972 = fsub fast float %1940, %1970
  %1973 = fsub fast float %1971, %1970
  %1974 = bitcast float %1973 to i32
  %1975 = sub nsw i32 2129859010, %1974
  %1976 = bitcast i32 %1975 to float
  %1977 = fmul fast float %1976, %1972
  %1978 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  br label %1979

; <label>:1979                                    ; preds = %1933, %1928
  %1980 = phi float [ %1978, %1933 ], [ %520, %1928 ]
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = and i32 %1982, 128
  %1984 = icmp eq i32 %1983, 0
  br i1 %1984, label %2001, label %1985

; <label>:1985                                    ; preds = %1979
  %1986 = add i32 %54, 560
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = add i32 %1988, 0
  %1990 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1989, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1991 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1990, %dx.types.Handle %101, float %1929, float %1930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1992 = extractvalue %dx.types.ResRet.f32 %1991, 0
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = and i32 %1994, 524288
  %1996 = icmp ne i32 %1995, 0
  %1997 = fcmp fast ogt float %1992, 0x3FE0101020000000
  %1998 = select i1 %1997, float 1.000000e+00, float 0.000000e+00
  %1999 = select i1 %1996, float %1998, float %1992
  %2000 = fmul fast float %1999, %1980
  br label %2001

; <label>:2001                                    ; preds = %1985, %1979
  %2002 = phi float [ %2000, %1985 ], [ %1980, %1979 ]
  %2003 = fcmp fast ult float %2002, 0x3F70101020000000
  br i1 %2003, label %2546, label %2004

; <label>:2004                                    ; preds = %2001
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = and i32 %2006, 16
  %2008 = icmp eq i32 %2007, 0
  br i1 %2008, label %2207, label %2009

; <label>:2009                                    ; preds = %2004
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1845, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = add i32 %54, 512
  %2013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2012, i32 undef)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.i32 %2013, 0
  %2015 = add i32 %2014, 0
  %2016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2015, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2017 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2016, %dx.types.Handle %100, float %1929, float %1930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2018 = extractvalue %dx.types.ResRet.f32 %2017, 0
  %2019 = extractvalue %dx.types.ResRet.f32 %2017, 1
  %2020 = extractvalue %dx.types.ResRet.f32 %2017, 2
  %2021 = extractvalue %dx.types.ResRet.f32 %2017, 3
  %2022 = and i32 %2011, 255
  %2023 = uitofp i32 %2022 to float
  %2024 = lshr i32 %2011, 8
  %2025 = and i32 %2024, 255
  %2026 = uitofp i32 %2025 to float
  %2027 = fmul fast float %2021, %2023
  %2028 = fadd fast float %2027, %2026
  %2029 = fmul fast float %2028, 0x3F70101000000000
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = and i32 %2031, 512
  %2033 = icmp eq i32 %2032, 0
  br i1 %2033, label %2042, label %2034

; <label>:2034                                    ; preds = %2009
  %2035 = add i32 %54, 596
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2035, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = add i32 %2037, 0
  %2039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2038, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2040 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2039, %dx.types.Handle %101, float %1929, float %1930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2041 = extractvalue %dx.types.ResRet.f32 %2040, 0
  br label %2042

; <label>:2042                                    ; preds = %2034, %2009
  %2043 = phi float [ %2041, %2034 ], [ 1.000000e+00, %2009 ]
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = and i32 %2045, 33554432
  %2047 = icmp eq i32 %2046, 0
  br i1 %2047, label %2154, label %2048

; <label>:2048                                    ; preds = %2042
  %2049 = add i32 %54, 256
  %2050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2049, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.i32 %2050, 0
  %2052 = and i32 %2051, 65535
  %2053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2052)  ; LegacyF16ToF32(value)
  %2054 = lshr i32 %2051, 16
  %2055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2054)  ; LegacyF16ToF32(value)
  %2056 = add i32 %54, 260
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = and i32 %2058, 65535
  %2060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2059)  ; LegacyF16ToF32(value)
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = lshr i32 %2062, 24
  %2064 = uitofp i32 %2063 to float
  %2065 = fmul fast float %2064, 0x3F70101020000000
  %2066 = and i32 %2062, 255
  %2067 = uitofp i32 %2066 to float
  %2068 = fmul fast float %2067, 0x3F70101020000000
  %2069 = lshr i32 %2062, 8
  %2070 = and i32 %2069, 255
  %2071 = uitofp i32 %2070 to float
  %2072 = fmul fast float %2071, 0x3F70101020000000
  %2073 = lshr i32 %2062, 16
  %2074 = and i32 %2073, 255
  %2075 = uitofp i32 %2074 to float
  %2076 = fmul fast float %2075, 0x3F70101020000000
  %2077 = add i32 %54, 252
  %2078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.i32 %2078, 0
  %2080 = lshr i32 %2079, 24
  %2081 = uitofp i32 %2080 to float
  %2082 = fmul fast float %2081, 0x3F70101020000000
  %2083 = and i32 %2079, 255
  %2084 = uitofp i32 %2083 to float
  %2085 = fmul fast float %2084, 0x3F70101020000000
  %2086 = lshr i32 %2079, 8
  %2087 = and i32 %2086, 255
  %2088 = uitofp i32 %2087 to float
  %2089 = fmul fast float %2088, 0x3F70101020000000
  %2090 = lshr i32 %2079, 16
  %2091 = and i32 %2090, 255
  %2092 = uitofp i32 %2091 to float
  %2093 = fmul fast float %2092, 0x3F70101020000000
  %2094 = bitcast float %2018 to i32
  %2095 = ashr i32 %2094, 1
  %2096 = sub nsw i32 1597463174, %2095
  %2097 = bitcast i32 %2096 to float
  %2098 = fmul fast float %2018, 5.000000e-01
  %2099 = fmul fast float %2097, %2097
  %2100 = fmul fast float %2099, %2098
  %2101 = fsub fast float 1.500000e+00, %2100
  %2102 = fmul fast float %2097, %2018
  %2103 = fmul fast float %2102, %2101
  %2104 = bitcast float %2019 to i32
  %2105 = ashr i32 %2104, 1
  %2106 = sub nsw i32 1597463174, %2105
  %2107 = bitcast i32 %2106 to float
  %2108 = fmul fast float %2019, 5.000000e-01
  %2109 = fmul fast float %2107, %2107
  %2110 = fmul fast float %2109, %2108
  %2111 = fsub fast float 1.500000e+00, %2110
  %2112 = fmul fast float %2107, %2019
  %2113 = fmul fast float %2112, %2111
  %2114 = bitcast float %2020 to i32
  %2115 = ashr i32 %2114, 1
  %2116 = sub nsw i32 1597463174, %2115
  %2117 = bitcast i32 %2116 to float
  %2118 = fmul fast float %2020, 5.000000e-01
  %2119 = fmul fast float %2117, %2117
  %2120 = fmul fast float %2119, %2118
  %2121 = fsub fast float 1.500000e+00, %2120
  %2122 = fmul fast float %2117, %2020
  %2123 = fmul fast float %2122, %2121
  %2124 = fsub fast float %2103, %2085
  %2125 = fsub fast float %2113, %2089
  %2126 = fsub fast float %2123, %2093
  %2127 = fmul fast float %2124, %2053
  %2128 = fmul fast float %2125, %2055
  %2129 = fmul fast float %2126, %2060
  %2130 = fadd fast float %2127, %2068
  %2131 = fadd fast float %2128, %2072
  %2132 = fadd fast float %2129, %2076
  %2133 = call float @dx.op.unary.f32(i32 7, float %2130)  ; Saturate(value)
  %2134 = call float @dx.op.unary.f32(i32 7, float %2131)  ; Saturate(value)
  %2135 = call float @dx.op.unary.f32(i32 7, float %2132)  ; Saturate(value)
  %2136 = fmul fast float %2133, %2133
  %2137 = fmul fast float %2134, %2134
  %2138 = fmul fast float %2135, %2135
  %2139 = fsub fast float %2136, %2018
  %2140 = fsub fast float %2137, %2019
  %2141 = fsub fast float %2138, %2020
  %2142 = fmul fast float %2139, %2043
  %2143 = fmul fast float %2140, %2043
  %2144 = fmul fast float %2141, %2043
  %2145 = fadd fast float %2142, %2018
  %2146 = fadd fast float %2143, %2019
  %2147 = fadd fast float %2144, %2020
  %2148 = fadd fast float %2065, %2029
  %2149 = fsub fast float %2148, %2082
  %2150 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2151 = fsub fast float %2150, %2029
  %2152 = fmul fast float %2151, %2043
  %2153 = fadd fast float %2152, %2029
  br label %2207

; <label>:2154                                    ; preds = %2042
  %2155 = and i32 %2045, 134217728
  %2156 = icmp eq i32 %2155, 0
  br i1 %2156, label %2191, label %2157

; <label>:2157                                    ; preds = %2154
  %2158 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %2159 = call float @dx.op.unary.f32(i32 24, float %399)  ; Sqrt(value)
  %2160 = call float @dx.op.unary.f32(i32 24, float %403)  ; Sqrt(value)
  %2161 = fadd fast float %2158, -5.000000e-01
  %2162 = fadd fast float %2159, -5.000000e-01
  %2163 = fadd fast float %2160, -5.000000e-01
  %2164 = fmul fast float %2161, %2043
  %2165 = fmul fast float %2162, %2043
  %2166 = fmul fast float %2163, %2043
  %2167 = fadd fast float %2164, 5.000000e-01
  %2168 = fadd fast float %2165, 5.000000e-01
  %2169 = fadd fast float %2166, 5.000000e-01
  %2170 = call float @dx.op.unary.f32(i32 24, float %2018)  ; Sqrt(value)
  %2171 = call float @dx.op.unary.f32(i32 24, float %2019)  ; Sqrt(value)
  %2172 = call float @dx.op.unary.f32(i32 24, float %2020)  ; Sqrt(value)
  %2173 = fmul fast float %2167, 2.000000e+00
  %2174 = fsub fast float 1.000000e+00, %2173
  %2175 = fmul fast float %2174, %2170
  %2176 = fadd fast float %2175, %2173
  %2177 = fmul fast float %2176, %2170
  %2178 = fmul fast float %2168, 2.000000e+00
  %2179 = fsub fast float 1.000000e+00, %2178
  %2180 = fmul fast float %2179, %2171
  %2181 = fadd fast float %2180, %2178
  %2182 = fmul fast float %2181, %2171
  %2183 = fmul fast float %2169, 2.000000e+00
  %2184 = fsub fast float 1.000000e+00, %2183
  %2185 = fmul fast float %2184, %2172
  %2186 = fadd fast float %2185, %2183
  %2187 = fmul fast float %2186, %2172
  %2188 = fmul fast float %2177, %2177
  %2189 = fmul fast float %2182, %2182
  %2190 = fmul fast float %2187, %2187
  br label %2207

; <label>:2191                                    ; preds = %2154
  %2192 = fmul fast float %395, %395
  %2193 = fmul fast float %399, %399
  %2194 = fmul fast float %403, %403
  %2195 = fadd fast float %2192, -1.000000e+00
  %2196 = fadd fast float %2193, -1.000000e+00
  %2197 = fadd fast float %2194, -1.000000e+00
  %2198 = fmul fast float %2043, %2195
  %2199 = fmul fast float %2043, %2196
  %2200 = fmul fast float %2043, %2197
  %2201 = fadd fast float %2198, 1.000000e+00
  %2202 = fadd fast float %2199, 1.000000e+00
  %2203 = fadd fast float %2200, 1.000000e+00
  %2204 = fmul fast float %2201, %2018
  %2205 = fmul fast float %2202, %2019
  %2206 = fmul fast float %2203, %2020
  br label %2207

; <label>:2207                                    ; preds = %2191, %2157, %2048, %2004
  %2208 = phi float [ %2153, %2048 ], [ %2029, %2157 ], [ %2029, %2191 ], [ 0x3FA23C0BE0000000, %2004 ]
  %2209 = phi float [ %2145, %2048 ], [ %2188, %2157 ], [ %2204, %2191 ], [ 1.000000e+00, %2004 ]
  %2210 = phi float [ %2146, %2048 ], [ %2189, %2157 ], [ %2205, %2191 ], [ 1.000000e+00, %2004 ]
  %2211 = phi float [ %2147, %2048 ], [ %2190, %2157 ], [ %2206, %2191 ], [ 1.000000e+00, %2004 ]
  %2212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2213 = extractvalue %dx.types.CBufRet.i32 %2212, 1
  %2214 = and i32 %2213, 1
  %2215 = icmp ne i32 %2214, 0
  %2216 = add i32 %54, 356
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2216, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = and i32 %2218, 32
  %2220 = icmp ne i32 %2219, 0
  %2221 = and i1 %2215, %2220
  %2222 = select i1 %2221, float 1.000000e+00, float %2209
  %2223 = select i1 %2221, float 0x3FD3333340000000, float %2210
  %2224 = select i1 %2221, float 0x3FD3333340000000, float %2211
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = and i32 %2226, 32
  %2228 = icmp eq i32 %2227, 0
  br i1 %2228, label %2301, label %2229

; <label>:2229                                    ; preds = %2207
  %2230 = add i32 %54, 124
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = add i32 %54, 528
  %2234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2233, i32 undef)  ; BufferLoad(srv,index,wot)
  %2235 = extractvalue %dx.types.ResRet.i32 %2234, 0
  %2236 = add i32 %2235, 0
  %2237 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2236, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2238 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2237, %dx.types.Handle %100, float %1929, float %1930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2239 = extractvalue %dx.types.ResRet.f32 %2238, 0
  %2240 = extractvalue %dx.types.ResRet.f32 %2238, 1
  %2241 = extractvalue %dx.types.ResRet.f32 %2238, 2
  %2242 = extractvalue %dx.types.ResRet.f32 %2238, 3
  %2243 = and i32 %2232, 255
  %2244 = uitofp i32 %2243 to float
  %2245 = lshr i32 %2232, 8
  %2246 = and i32 %2245, 255
  %2247 = uitofp i32 %2246 to float
  %2248 = lshr i32 %2232, 16
  %2249 = and i32 %2248, 255
  %2250 = uitofp i32 %2249 to float
  %2251 = fmul fast float %2250, 0x3F70101000000000
  %2252 = fmul fast float %2239, %2244
  %2253 = fadd fast float %2252, %2247
  %2254 = fmul fast float %2253, 0x3F70101000000000
  %2255 = fadd fast float %2240, -5.000000e-01
  %2256 = fadd fast float %2242, -5.000000e-01
  %2257 = fmul fast float %2255, %2251
  %2258 = fmul fast float %2256, %2251
  %2259 = fadd fast float %2257, 5.000000e-01
  %2260 = fadd fast float %2258, 5.000000e-01
  %2261 = fmul fast float %2259, 2.000000e+00
  %2262 = fadd fast float %2261, -1.000000e+00
  %2263 = fmul fast float %2260, 2.000000e+00
  %2264 = fadd fast float %2263, -1.000000e+00
  %2265 = fadd fast float %2262, %2264
  %2266 = fmul fast float %2265, 5.000000e-01
  %2267 = fsub fast float %2262, %2264
  %2268 = fmul fast float %2267, 5.000000e-01
  %2269 = call float @dx.op.unary.f32(i32 6, float %2266)  ; FAbs(value)
  %2270 = fsub fast float 1.000000e+00, %2269
  %2271 = call float @dx.op.unary.f32(i32 6, float %2268)  ; FAbs(value)
  %2272 = fsub fast float %2270, %2271
  %2273 = call float @dx.op.dot3.f32(i32 55, float %2266, float %2268, float %2272, float %2266, float %2268, float %2272)  ; Dot3(ax,ay,az,bx,by,bz)
  %2274 = call float @dx.op.unary.f32(i32 25, float %2273)  ; Rsqrt(value)
  %2275 = fmul fast float %2266, %2274
  %2276 = fmul fast float %2268, %2274
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = and i32 %2278, 67108864
  %2280 = icmp eq i32 %2279, 0
  br i1 %2280, label %2297, label %2281

; <label>:2281                                    ; preds = %2229
  %2282 = add i32 %54, 312
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = and i32 %2284, 65535
  %2286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2285)  ; LegacyF16ToF32(value)
  %2287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2288 = extractvalue %dx.types.ResRet.i32 %2287, 0
  %2289 = and i32 %2288, 65535
  %2290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2289)  ; LegacyF16ToF32(value)
  %2291 = lshr i32 %2284, 16
  %2292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2291)  ; LegacyF16ToF32(value)
  %2293 = fsub fast float %2254, %2292
  %2294 = fmul fast float %2293, %2286
  %2295 = fadd fast float %2294, %2290
  %2296 = call float @dx.op.unary.f32(i32 7, float %2295)  ; Saturate(value)
  br label %2297

; <label>:2297                                    ; preds = %2281, %2229
  %2298 = phi float [ %2296, %2281 ], [ %2254, %2229 ]
  %2299 = call float @dx.op.dot2.f32(i32 54, float %2275, float %2276, float %1833, float %1834)  ; Dot2(ax,ay,bx,by)
  %2300 = call float @dx.op.dot2.f32(i32 54, float %2275, float %2276, float %1835, float %1836)  ; Dot2(ax,ay,bx,by)
  br label %2301

; <label>:2301                                    ; preds = %2297, %2207
  %2302 = phi float [ %2298, %2297 ], [ 0x3FD6666660000000, %2207 ]
  %2303 = phi float [ %2299, %2297 ], [ 0.000000e+00, %2207 ]
  %2304 = phi float [ %2300, %2297 ], [ 0.000000e+00, %2207 ]
  %2305 = phi float [ %2241, %2297 ], [ 1.000000e+00, %2207 ]
  %2306 = add i32 %54, 192
  %2307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2306, i32 undef)  ; BufferLoad(srv,index,wot)
  %2308 = extractvalue %dx.types.ResRet.i32 %2307, 0
  %2309 = lshr i32 %2308, 22
  %2310 = shl nuw nsw i32 %2309, 5
  %2311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2310)  ; LegacyF16ToF32(value)
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = and i32 %2313, 64
  %2315 = icmp eq i32 %2314, 0
  br i1 %2315, label %2349, label %2316

; <label>:2316                                    ; preds = %2301
  %2317 = add i32 %54, 544
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = add i32 %2319, 0
  %2321 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2320, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = and i32 %2323, 131072
  %2325 = icmp eq i32 %2324, 0
  %2326 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2321, %dx.types.Handle %100, float %1929, float %1930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2327 = extractvalue %dx.types.ResRet.f32 %2326, 0
  %2328 = extractvalue %dx.types.ResRet.f32 %2326, 1
  %2329 = extractvalue %dx.types.ResRet.f32 %2326, 2
  %2330 = fmul fast float %2327, %383
  %2331 = fmul fast float %2328, %386
  %2332 = fmul fast float %2329, %389
  br i1 %2325, label %2339, label %2333

; <label>:2333                                    ; preds = %2316
  %2334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2335 = extractvalue %dx.types.CBufRet.f32 %2334, 0
  %2336 = fmul fast float %2335, %2330
  %2337 = fmul fast float %2335, %2331
  %2338 = fmul fast float %2335, %2332
  br label %2339

; <label>:2339                                    ; preds = %2333, %2316
  %2340 = phi float [ %2336, %2333 ], [ %2330, %2316 ]
  %2341 = phi float [ %2337, %2333 ], [ %2331, %2316 ]
  %2342 = phi float [ %2338, %2333 ], [ %2332, %2316 ]
  %2343 = fmul fast float %2340, %2311
  %2344 = select i1 %282, float %2343, float %2340
  %2345 = call float @dx.op.dot3.f32(i32 55, float %2344, float %2341, float %2342, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2346 = select i1 %282, float 0.000000e+00, float %2340
  %2347 = select i1 %282, float %2345, float %2341
  %2348 = select i1 %282, float 0.000000e+00, float %2342
  br label %2349

; <label>:2349                                    ; preds = %2339, %2301
  %2350 = phi float [ %2346, %2339 ], [ 0.000000e+00, %2301 ]
  %2351 = phi float [ %2347, %2339 ], [ 0.000000e+00, %2301 ]
  %2352 = phi float [ %2348, %2339 ], [ 0.000000e+00, %2301 ]
  %2353 = add i32 %54, 128
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = and i32 %2355, 255
  %2357 = uitofp i32 %2356 to float
  %2358 = lshr i32 %2355, 8
  %2359 = and i32 %2358, 255
  %2360 = uitofp i32 %2359 to float
  %2361 = call float @dx.op.dot3.f32(i32 55, float %2222, float %2223, float %2224, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2362 = fmul fast float %2360, %2361
  %2363 = fadd fast float %2362, %2357
  %2364 = fmul fast float %2363, 0x3F70101020000000
  %2365 = call float @dx.op.unary.f32(i32 7, float %2364)  ; Saturate(value)
  br i1 %1821, label %2366, label %2374

; <label>:2366                                    ; preds = %2349
  %2367 = fsub fast float 1.000000e+00, %2002
  %2368 = fmul fast float %2367, %1810
  %2369 = fmul fast float %2367, %1811
  %2370 = fmul fast float %2367, %1812
  %2371 = fmul fast float %2367, %1813
  %2372 = fmul fast float %2367, %1814
  %2373 = fmul fast float %2367, %1815
  br label %2374

; <label>:2374                                    ; preds = %2366, %2349
  %2375 = phi float [ %2368, %2366 ], [ %1810, %2349 ]
  %2376 = phi float [ %2369, %2366 ], [ %1811, %2349 ]
  %2377 = phi float [ %2370, %2366 ], [ %1812, %2349 ]
  %2378 = phi float [ %2371, %2366 ], [ %1813, %2349 ]
  %2379 = phi float [ %2372, %2366 ], [ %1814, %2349 ]
  %2380 = phi float [ %2373, %2366 ], [ %1815, %2349 ]
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = and i32 %2382, 3
  %2384 = icmp eq i32 %2383, 3
  br i1 %2384, label %2463, label %2385

; <label>:2385                                    ; preds = %2374
  %2386 = and i32 %2382, 16
  %2387 = icmp ne i32 %2386, 0
  %2388 = select i1 %2387, float %2002, float 0.000000e+00
  %2389 = icmp eq i32 %2383, 0
  br i1 %2389, label %2390, label %2418

; <label>:2390                                    ; preds = %2385
  %2391 = and i32 %2382, 64
  %2392 = icmp ne i32 %2391, 0
  %2393 = select i1 %2392, float %2002, float 0.000000e+00
  %2394 = fsub fast float %2222, %2375
  %2395 = fsub fast float %2223, %2376
  %2396 = fsub fast float %2224, %2377
  %2397 = fmul fast float %2388, %2394
  %2398 = fmul fast float %2388, %2395
  %2399 = fmul fast float %2388, %2396
  %2400 = fadd fast float %2397, %2375
  %2401 = fadd fast float %2398, %2376
  %2402 = fadd fast float %2399, %2377
  %2403 = fsub fast float %2208, %1816
  %2404 = fmul fast float %2388, %2403
  %2405 = fadd fast float %2404, %1816
  %2406 = fsub fast float %2350, %2378
  %2407 = fsub fast float %2351, %2379
  %2408 = fsub fast float %2352, %2380
  %2409 = fmul fast float %2393, %2406
  %2410 = fmul fast float %2393, %2407
  %2411 = fmul fast float %2393, %2408
  %2412 = fadd fast float %2409, %2378
  %2413 = fadd fast float %2410, %2379
  %2414 = fadd fast float %2411, %2380
  %2415 = fsub fast float %2365, %1819
  %2416 = fmul fast float %2388, %2415
  %2417 = fadd fast float %2416, %1819
  br label %2463

; <label>:2418                                    ; preds = %2385
  %2419 = icmp eq i32 %2383, 1
  br i1 %2419, label %2420, label %2433

; <label>:2420                                    ; preds = %2418
  %2421 = fadd fast float %2222, -1.000000e+00
  %2422 = fadd fast float %2223, -1.000000e+00
  %2423 = fadd fast float %2224, -1.000000e+00
  %2424 = fmul fast float %2388, %2421
  %2425 = fmul fast float %2388, %2422
  %2426 = fmul fast float %2388, %2423
  %2427 = fadd fast float %2424, 1.000000e+00
  %2428 = fadd fast float %2425, 1.000000e+00
  %2429 = fadd fast float %2426, 1.000000e+00
  %2430 = fmul fast float %2427, %2375
  %2431 = fmul fast float %2428, %2376
  %2432 = fmul fast float %2429, %2377
  br label %2463

; <label>:2433                                    ; preds = %2418
  %2434 = icmp eq i32 %2383, 2
  br i1 %2434, label %2435, label %2463

; <label>:2435                                    ; preds = %2433
  %2436 = call float @dx.op.unary.f32(i32 24, float %2222)  ; Sqrt(value)
  %2437 = call float @dx.op.unary.f32(i32 24, float %2223)  ; Sqrt(value)
  %2438 = call float @dx.op.unary.f32(i32 24, float %2224)  ; Sqrt(value)
  %2439 = fadd fast float %2436, -5.000000e-01
  %2440 = fadd fast float %2437, -5.000000e-01
  %2441 = fadd fast float %2438, -5.000000e-01
  %2442 = fmul fast float %2439, %2388
  %2443 = fmul fast float %2440, %2388
  %2444 = fmul fast float %2441, %2388
  %2445 = fadd fast float %2442, 5.000000e-01
  %2446 = fadd fast float %2443, 5.000000e-01
  %2447 = fadd fast float %2444, 5.000000e-01
  %2448 = fmul fast float %2445, 2.000000e+00
  %2449 = fsub fast float 1.000000e+00, %2448
  %2450 = fmul fast float %2449, %2375
  %2451 = fadd fast float %2450, %2448
  %2452 = fmul fast float %2451, %2375
  %2453 = fmul fast float %2446, 2.000000e+00
  %2454 = fsub fast float 1.000000e+00, %2453
  %2455 = fmul fast float %2454, %2376
  %2456 = fadd fast float %2455, %2453
  %2457 = fmul fast float %2456, %2376
  %2458 = fmul fast float %2447, 2.000000e+00
  %2459 = fsub fast float 1.000000e+00, %2458
  %2460 = fmul fast float %2459, %2377
  %2461 = fadd fast float %2460, %2458
  %2462 = fmul fast float %2461, %2377
  br label %2463

; <label>:2463                                    ; preds = %2435, %2433, %2420, %2390, %2374
  %2464 = phi float [ %2375, %2374 ], [ %2452, %2435 ], [ %2375, %2433 ], [ %2430, %2420 ], [ %2400, %2390 ]
  %2465 = phi float [ %2376, %2374 ], [ %2457, %2435 ], [ %2376, %2433 ], [ %2431, %2420 ], [ %2401, %2390 ]
  %2466 = phi float [ %2377, %2374 ], [ %2462, %2435 ], [ %2377, %2433 ], [ %2432, %2420 ], [ %2402, %2390 ]
  %2467 = phi float [ %2378, %2374 ], [ %2378, %2435 ], [ %2378, %2433 ], [ %2378, %2420 ], [ %2412, %2390 ]
  %2468 = phi float [ %2379, %2374 ], [ %2379, %2435 ], [ %2379, %2433 ], [ %2379, %2420 ], [ %2413, %2390 ]
  %2469 = phi float [ %2380, %2374 ], [ %2380, %2435 ], [ %2380, %2433 ], [ %2380, %2420 ], [ %2414, %2390 ]
  %2470 = phi float [ %1816, %2374 ], [ %1816, %2435 ], [ %1816, %2433 ], [ %1816, %2420 ], [ %2405, %2390 ]
  %2471 = phi float [ %1819, %2374 ], [ %1819, %2435 ], [ %1819, %2433 ], [ %1819, %2420 ], [ %2417, %2390 ]
  %2472 = and i32 %2382, 12
  %2473 = icmp eq i32 %2472, 12
  br i1 %2473, label %2546, label %2474

; <label>:2474                                    ; preds = %2463
  %2475 = and i32 %2382, 2097184
  %2476 = icmp eq i32 %2475, 2097184
  %2477 = select i1 %2476, float %2002, float 0.000000e+00
  %2478 = and i32 %2382, 4194336
  %2479 = icmp eq i32 %2478, 4194336
  %2480 = select i1 %2479, float %2002, float 0.000000e+00
  %2481 = and i32 %2382, 8388640
  %2482 = icmp eq i32 %2481, 8388640
  %2483 = select i1 %2482, float %2002, float 0.000000e+00
  %2484 = icmp eq i32 %2472, 0
  br i1 %2484, label %2485, label %2498

; <label>:2485                                    ; preds = %2474
  %2486 = fsub fast float %2303, %1808
  %2487 = fsub fast float %2304, %1809
  %2488 = fmul fast float %2477, %2486
  %2489 = fmul fast float %2477, %2487
  %2490 = fadd fast float %2488, %1808
  %2491 = fadd fast float %2489, %1809
  %2492 = fsub fast float %2305, %1818
  %2493 = fmul fast float %2480, %2492
  %2494 = fadd fast float %2493, %1818
  %2495 = fsub fast float %2302, %1817
  %2496 = fmul fast float %2483, %2495
  %2497 = fadd fast float %2496, %1817
  br label %2546

; <label>:2498                                    ; preds = %2474
  %2499 = icmp eq i32 %2472, 4
  br i1 %2499, label %2500, label %2532

; <label>:2500                                    ; preds = %2498
  %2501 = fmul fast float %2477, %2303
  %2502 = fmul fast float %2477, %2304
  %2503 = fadd fast float %2501, %1808
  %2504 = fadd fast float %2502, %1809
  %2505 = call float @dx.op.binary.f32(i32 36, float %1818, float %2305)  ; FMin(a,b)
  %2506 = fsub fast float %2505, %1818
  %2507 = fmul fast float %2506, %2480
  %2508 = fadd fast float %2507, %1818
  %2509 = fadd fast float %2302, %1817
  %2510 = fmul fast float %2509, 0x3FF337FAE0000000
  %2511 = fmul fast float %1817, %1817
  %2512 = fmul fast float %2302, %2302
  %2513 = fadd fast float %2512, %2511
  %2514 = fmul fast float %2513, 0x3FE5152B00000000
  %2515 = fmul fast float %1817, 0xBFCC1F85E0000000
  %2516 = fmul fast float %2515, %2302
  %2517 = fadd fast float %2516, 0xBFE1363700000000
  %2518 = fadd fast float %2517, %2510
  %2519 = fsub fast float %2518, %2514
  %2520 = fmul fast float %2509, 0x3FBA6F0D00000000
  %2521 = fmul fast float %2513, 0x3FD0432880000000
  %2522 = fmul fast float %1817, 0xBFEF110800000000
  %2523 = fmul fast float %2522, %2302
  %2524 = fadd fast float %2523, 1.000000e+00
  %2525 = fsub fast float %2524, %2520
  %2526 = fadd fast float %2525, %2521
  %2527 = fdiv fast float %2519, %2526
  %2528 = call float @dx.op.unary.f32(i32 7, float %2527)  ; Saturate(value)
  %2529 = fsub fast float %2528, %1817
  %2530 = fmul fast float %2529, %2483
  %2531 = fadd fast float %2530, %1817
  br label %2546

; <label>:2532                                    ; preds = %2498
  %2533 = icmp eq i32 %2472, 8
  br i1 %2533, label %2534, label %2546

; <label>:2534                                    ; preds = %2532
  %2535 = fmul fast float %2477, %2303
  %2536 = fmul fast float %2477, %2304
  %2537 = fadd fast float %2535, %1808
  %2538 = fadd fast float %2536, %1809
  %2539 = call float @dx.op.binary.f32(i32 36, float %1818, float %2305)  ; FMin(a,b)
  %2540 = fsub fast float %2539, %1818
  %2541 = fmul fast float %2540, %2480
  %2542 = fadd fast float %2541, %1818
  %2543 = fsub fast float %2302, %1817
  %2544 = fmul fast float %2483, %2543
  %2545 = fadd fast float %2544, %1817
  br label %2546

; <label>:2546                                    ; preds = %2534, %2532, %2500, %2485, %2463, %2001, %1820, %1807
  %2547 = phi float [ %1808, %2463 ], [ %1808, %2001 ], [ %1808, %1807 ], [ %2537, %2534 ], [ %1808, %2532 ], [ %2503, %2500 ], [ %2490, %2485 ], [ %1808, %1820 ]
  %2548 = phi float [ %1809, %2463 ], [ %1809, %2001 ], [ %1809, %1807 ], [ %2538, %2534 ], [ %1809, %2532 ], [ %2504, %2500 ], [ %2491, %2485 ], [ %1809, %1820 ]
  %2549 = phi float [ %2464, %2463 ], [ %1810, %2001 ], [ %1810, %1807 ], [ %2464, %2534 ], [ %2464, %2532 ], [ %2464, %2500 ], [ %2464, %2485 ], [ %1810, %1820 ]
  %2550 = phi float [ %2465, %2463 ], [ %1811, %2001 ], [ %1811, %1807 ], [ %2465, %2534 ], [ %2465, %2532 ], [ %2465, %2500 ], [ %2465, %2485 ], [ %1811, %1820 ]
  %2551 = phi float [ %2466, %2463 ], [ %1812, %2001 ], [ %1812, %1807 ], [ %2466, %2534 ], [ %2466, %2532 ], [ %2466, %2500 ], [ %2466, %2485 ], [ %1812, %1820 ]
  %2552 = phi float [ %2467, %2463 ], [ %1813, %2001 ], [ %1813, %1807 ], [ %2467, %2534 ], [ %2467, %2532 ], [ %2467, %2500 ], [ %2467, %2485 ], [ %1813, %1820 ]
  %2553 = phi float [ %2468, %2463 ], [ %1814, %2001 ], [ %1814, %1807 ], [ %2468, %2534 ], [ %2468, %2532 ], [ %2468, %2500 ], [ %2468, %2485 ], [ %1814, %1820 ]
  %2554 = phi float [ %2469, %2463 ], [ %1815, %2001 ], [ %1815, %1807 ], [ %2469, %2534 ], [ %2469, %2532 ], [ %2469, %2500 ], [ %2469, %2485 ], [ %1815, %1820 ]
  %2555 = phi float [ %2470, %2463 ], [ %1816, %2001 ], [ %1816, %1807 ], [ %2470, %2534 ], [ %2470, %2532 ], [ %2470, %2500 ], [ %2470, %2485 ], [ %1816, %1820 ]
  %2556 = phi float [ %1817, %2463 ], [ %1817, %2001 ], [ %1817, %1807 ], [ %2545, %2534 ], [ %1817, %2532 ], [ %2531, %2500 ], [ %2497, %2485 ], [ %1817, %1820 ]
  %2557 = phi float [ %1818, %2463 ], [ %1818, %2001 ], [ %1818, %1807 ], [ %2542, %2534 ], [ %1818, %2532 ], [ %2508, %2500 ], [ %2494, %2485 ], [ %1818, %1820 ]
  %2558 = phi float [ %2471, %2463 ], [ %1819, %2001 ], [ %1819, %1807 ], [ %2471, %2534 ], [ %2471, %2532 ], [ %2471, %2500 ], [ %2471, %2485 ], [ %1819, %1820 ]
  br i1 %470, label %3285, label %2559

; <label>:2559                                    ; preds = %2546
  %2560 = icmp ult i32 %524, 4
  %2561 = add i32 %54, 72
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = add i32 %54, 76
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2564, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = or i32 %2566, %2563
  %2568 = icmp eq i32 %2567, 0
  br i1 %2568, label %3285, label %2569

; <label>:2569                                    ; preds = %2559
  %2570 = and i32 %2563, 262144
  %2571 = icmp ne i32 %2570, 0
  %2572 = select i1 %2571, float %59, float 1.000000e+00
  %2573 = select i1 %2571, float %60, float 0.000000e+00
  %2574 = select i1 %2571, float %61, float 0.000000e+00
  %2575 = select i1 %2571, float %62, float 1.000000e+00
  %2576 = select i1 %2571, float %63, float %86
  %2577 = select i1 %2571, float %64, float %87
  %2578 = add i32 %54, 332
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = lshr i32 %2580, 16
  %2582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2581)  ; LegacyF16ToF32(value)
  %2583 = fmul fast float %2582, 0x3F50624DE0000000
  %2584 = add i32 %54, 136
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2584, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = lshr i32 %2586, 16
  %2588 = and i32 %2587, 255
  %2589 = lshr i32 %2586, 24
  %2590 = add i32 %54, 340
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = and i32 %2592, 65535
  %2594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2593)  ; LegacyF16ToF32(value)
  %2595 = lshr i32 %2592, 16
  %2596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2595)  ; LegacyF16ToF32(value)
  %2597 = add i32 %54, 80
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = lshr i32 %2599, 22
  %2601 = shl nuw nsw i32 %2600, 5
  %2602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2601)  ; LegacyF16ToF32(value)
  %2603 = shl i32 %2599, 4
  %2604 = and i32 %2603, 32752
  %2605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2604)  ; LegacyF16ToF32(value)
  %2606 = lshr i32 %2599, 7
  %2607 = and i32 %2606, 32752
  %2608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2607)  ; LegacyF16ToF32(value)
  %2609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2610 = extractvalue %dx.types.CBufRet.f32 %2609, 3
  %2611 = fmul fast float %2610, 1.000000e+03
  %2612 = fmul fast float %460, %2611
  %2613 = call float @dx.op.unary.f32(i32 22, float %2612)  ; Frc(value)
  %2614 = fadd fast float %2613, %450
  %2615 = fmul fast float %461, %2611
  %2616 = call float @dx.op.unary.f32(i32 22, float %2615)  ; Frc(value)
  %2617 = fadd fast float %2616, %452
  %2618 = fmul fast float %2583, %2611
  %2619 = call float @dx.op.unary.f32(i32 22, float %2618)  ; Frc(value)
  %2620 = fmul fast float %2619, 0x401921FB60000000
  %2621 = fadd fast float %2620, %2602
  %2622 = call float @dx.op.unary.f32(i32 13, float %2621)  ; Sin(value)
  %2623 = call float @dx.op.unary.f32(i32 12, float %2621)  ; Cos(value)
  %2624 = fsub fast float -0.000000e+00, %2622
  %2625 = fadd fast float %2576, -5.000000e-01
  %2626 = fadd fast float %2577, -5.000000e-01
  %2627 = fmul fast float %2594, %2625
  %2628 = fmul fast float %2596, %2626
  %2629 = fadd fast float %2627, 5.000000e-01
  %2630 = fadd fast float %2628, 5.000000e-01
  %2631 = fmul fast float %2605, %2629
  %2632 = fmul fast float %2608, %2630
  %2633 = fmul fast float %2623, %2631
  %2634 = call float @dx.op.tertiary.f32(i32 46, float %2624, float %2632, float %2633)  ; FMad(a,b,c)
  %2635 = fmul fast float %2622, %2631
  %2636 = call float @dx.op.tertiary.f32(i32 46, float %2623, float %2632, float %2635)  ; FMad(a,b,c)
  %2637 = fadd fast float %2614, %2634
  %2638 = fadd fast float %2617, %2636
  %2639 = icmp ugt i32 %2588, 1
  %2640 = icmp ugt i32 %2586, 33554431
  %2641 = or i1 %2640, %2639
  br i1 %2641, label %2642, label %2667

; <label>:2642                                    ; preds = %2569
  %2643 = add i32 %54, 276
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = lshr i32 %2645, 16
  %2647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2646)  ; LegacyF16ToF32(value)
  %2648 = fmul fast float %2610, %2647
  %2649 = call float @dx.op.unary.f32(i32 22, float %2648)  ; Frc(value)
  %2650 = mul nuw nsw i32 %2588, %2589
  %2651 = uitofp i32 %2650 to float
  %2652 = fmul fast float %2649, %2651
  %2653 = call float @dx.op.unary.f32(i32 27, float %2652)  ; Round_ni(value)
  %2654 = fptoui float %2653 to i32
  %2655 = urem i32 %2654, %2588
  %2656 = udiv i32 %2654, %2589
  %2657 = call float @dx.op.unary.f32(i32 22, float %2637)  ; Frc(value)
  %2658 = call float @dx.op.unary.f32(i32 22, float %2638)  ; Frc(value)
  %2659 = uitofp i32 %2655 to float
  %2660 = uitofp i32 %2656 to float
  %2661 = fadd fast float %2657, %2659
  %2662 = fadd fast float %2658, %2660
  %2663 = uitofp i32 %2588 to float
  %2664 = uitofp i32 %2589 to float
  %2665 = fdiv fast float %2661, %2663
  %2666 = fdiv fast float %2662, %2664
  br label %2667

; <label>:2667                                    ; preds = %2642, %2569
  %2668 = phi float [ %2665, %2642 ], [ %2637, %2569 ]
  %2669 = phi float [ %2666, %2642 ], [ %2638, %2569 ]
  %2670 = and i32 %2563, 256
  %2671 = icmp eq i32 %2670, 0
  br i1 %2671, label %2718, label %2672

; <label>:2672                                    ; preds = %2667
  %2673 = add i32 %54, 580
  %2674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2673, i32 undef)  ; BufferLoad(srv,index,wot)
  %2675 = extractvalue %dx.types.ResRet.i32 %2674, 0
  %2676 = add i32 %2675, 0
  %2677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2676, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2678 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2677, %dx.types.Handle %101, float %2668, float %2669, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2679 = extractvalue %dx.types.ResRet.f32 %2678, 0
  %2680 = add i32 %54, 148
  %2681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2680, i32 undef)  ; BufferLoad(srv,index,wot)
  %2682 = extractvalue %dx.types.ResRet.i32 %2681, 0
  %2683 = shl i32 %2682, 4
  %2684 = and i32 %2683, 32752
  %2685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2684)  ; LegacyF16ToF32(value)
  %2686 = lshr i32 %2682, 7
  %2687 = and i32 %2686, 32752
  %2688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2687)  ; LegacyF16ToF32(value)
  %2689 = fsub fast float 1.000000e+00, %519
  %2690 = call float @dx.op.binary.f32(i32 35, float %2689, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2691 = bitcast float %519 to i32
  %2692 = sitofp i32 %2691 to float
  %2693 = fadd fast float %2692, 0xC1CFBF8940000000
  %2694 = fmul fast float %2688, %2693
  %2695 = fadd fast float %2694, 0x41CFBF8940000000
  %2696 = fptosi float %2695 to i32
  %2697 = bitcast i32 %2696 to float
  %2698 = bitcast float %2690 to i32
  %2699 = sitofp i32 %2698 to float
  %2700 = fadd fast float %2699, 0xC1CFBF8940000000
  %2701 = fmul fast float %2700, %2688
  %2702 = fadd fast float %2701, 0x41CFBF8940000000
  %2703 = fptosi float %2702 to i32
  %2704 = bitcast i32 %2703 to float
  %2705 = fmul fast float %2697, %2685
  %2706 = fmul fast float %2704, %2685
  %2707 = fsub fast float %2690, %2705
  %2708 = fadd fast float %2706, %2690
  %2709 = call float @dx.op.unary.f32(i32 7, float %2707)  ; Saturate(value)
  %2710 = call float @dx.op.unary.f32(i32 7, float %2708)  ; Saturate(value)
  %2711 = fsub fast float %2679, %2709
  %2712 = fsub fast float %2710, %2709
  %2713 = bitcast float %2712 to i32
  %2714 = sub nsw i32 2129859010, %2713
  %2715 = bitcast i32 %2714 to float
  %2716 = fmul fast float %2715, %2711
  %2717 = call float @dx.op.unary.f32(i32 7, float %2716)  ; Saturate(value)
  br label %2718

; <label>:2718                                    ; preds = %2672, %2667
  %2719 = phi float [ %2717, %2672 ], [ %519, %2667 ]
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = and i32 %2721, 128
  %2723 = icmp eq i32 %2722, 0
  br i1 %2723, label %2740, label %2724

; <label>:2724                                    ; preds = %2718
  %2725 = add i32 %54, 564
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = add i32 %2727, 0
  %2729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2728, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2730 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2729, %dx.types.Handle %101, float %2668, float %2669, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2731 = extractvalue %dx.types.ResRet.f32 %2730, 0
  %2732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.i32 %2732, 0
  %2734 = and i32 %2733, 524288
  %2735 = icmp ne i32 %2734, 0
  %2736 = fcmp fast ogt float %2731, 0x3FE0101020000000
  %2737 = select i1 %2736, float 1.000000e+00, float 0.000000e+00
  %2738 = select i1 %2735, float %2737, float %2731
  %2739 = fmul fast float %2738, %2719
  br label %2740

; <label>:2740                                    ; preds = %2724, %2718
  %2741 = phi float [ %2739, %2724 ], [ %2719, %2718 ]
  %2742 = fcmp fast ult float %2741, 0x3F70101020000000
  br i1 %2742, label %3285, label %2743

; <label>:2743                                    ; preds = %2740
  %2744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.i32 %2744, 0
  %2746 = and i32 %2745, 16
  %2747 = icmp eq i32 %2746, 0
  br i1 %2747, label %2946, label %2748

; <label>:2748                                    ; preds = %2743
  %2749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2584, i32 undef)  ; BufferLoad(srv,index,wot)
  %2750 = extractvalue %dx.types.ResRet.i32 %2749, 0
  %2751 = add i32 %54, 516
  %2752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.i32 %2752, 0
  %2754 = add i32 %2753, 0
  %2755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2754, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2756 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2755, %dx.types.Handle %100, float %2668, float %2669, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2757 = extractvalue %dx.types.ResRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.ResRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.ResRet.f32 %2756, 2
  %2760 = extractvalue %dx.types.ResRet.f32 %2756, 3
  %2761 = and i32 %2750, 255
  %2762 = uitofp i32 %2761 to float
  %2763 = lshr i32 %2750, 8
  %2764 = and i32 %2763, 255
  %2765 = uitofp i32 %2764 to float
  %2766 = fmul fast float %2760, %2762
  %2767 = fadd fast float %2766, %2765
  %2768 = fmul fast float %2767, 0x3F70101000000000
  %2769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.i32 %2769, 0
  %2771 = and i32 %2770, 512
  %2772 = icmp eq i32 %2771, 0
  br i1 %2772, label %2781, label %2773

; <label>:2773                                    ; preds = %2748
  %2774 = add i32 %54, 600
  %2775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2774, i32 undef)  ; BufferLoad(srv,index,wot)
  %2776 = extractvalue %dx.types.ResRet.i32 %2775, 0
  %2777 = add i32 %2776, 0
  %2778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2777, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2779 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2778, %dx.types.Handle %101, float %2668, float %2669, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2780 = extractvalue %dx.types.ResRet.f32 %2779, 0
  br label %2781

; <label>:2781                                    ; preds = %2773, %2748
  %2782 = phi float [ %2780, %2773 ], [ 1.000000e+00, %2748 ]
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = and i32 %2784, 33554432
  %2786 = icmp eq i32 %2785, 0
  br i1 %2786, label %2893, label %2787

; <label>:2787                                    ; preds = %2781
  %2788 = add i32 %54, 272
  %2789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2788, i32 undef)  ; BufferLoad(srv,index,wot)
  %2790 = extractvalue %dx.types.ResRet.i32 %2789, 0
  %2791 = and i32 %2790, 65535
  %2792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2791)  ; LegacyF16ToF32(value)
  %2793 = lshr i32 %2790, 16
  %2794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2793)  ; LegacyF16ToF32(value)
  %2795 = add i32 %54, 276
  %2796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2797 = extractvalue %dx.types.ResRet.i32 %2796, 0
  %2798 = and i32 %2797, 65535
  %2799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2798)  ; LegacyF16ToF32(value)
  %2800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2801 = extractvalue %dx.types.ResRet.i32 %2800, 0
  %2802 = lshr i32 %2801, 24
  %2803 = uitofp i32 %2802 to float
  %2804 = fmul fast float %2803, 0x3F70101020000000
  %2805 = and i32 %2801, 255
  %2806 = uitofp i32 %2805 to float
  %2807 = fmul fast float %2806, 0x3F70101020000000
  %2808 = lshr i32 %2801, 8
  %2809 = and i32 %2808, 255
  %2810 = uitofp i32 %2809 to float
  %2811 = fmul fast float %2810, 0x3F70101020000000
  %2812 = lshr i32 %2801, 16
  %2813 = and i32 %2812, 255
  %2814 = uitofp i32 %2813 to float
  %2815 = fmul fast float %2814, 0x3F70101020000000
  %2816 = add i32 %54, 268
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = lshr i32 %2818, 24
  %2820 = uitofp i32 %2819 to float
  %2821 = fmul fast float %2820, 0x3F70101020000000
  %2822 = and i32 %2818, 255
  %2823 = uitofp i32 %2822 to float
  %2824 = fmul fast float %2823, 0x3F70101020000000
  %2825 = lshr i32 %2818, 8
  %2826 = and i32 %2825, 255
  %2827 = uitofp i32 %2826 to float
  %2828 = fmul fast float %2827, 0x3F70101020000000
  %2829 = lshr i32 %2818, 16
  %2830 = and i32 %2829, 255
  %2831 = uitofp i32 %2830 to float
  %2832 = fmul fast float %2831, 0x3F70101020000000
  %2833 = bitcast float %2757 to i32
  %2834 = ashr i32 %2833, 1
  %2835 = sub nsw i32 1597463174, %2834
  %2836 = bitcast i32 %2835 to float
  %2837 = fmul fast float %2757, 5.000000e-01
  %2838 = fmul fast float %2836, %2836
  %2839 = fmul fast float %2838, %2837
  %2840 = fsub fast float 1.500000e+00, %2839
  %2841 = fmul fast float %2836, %2757
  %2842 = fmul fast float %2841, %2840
  %2843 = bitcast float %2758 to i32
  %2844 = ashr i32 %2843, 1
  %2845 = sub nsw i32 1597463174, %2844
  %2846 = bitcast i32 %2845 to float
  %2847 = fmul fast float %2758, 5.000000e-01
  %2848 = fmul fast float %2846, %2846
  %2849 = fmul fast float %2848, %2847
  %2850 = fsub fast float 1.500000e+00, %2849
  %2851 = fmul fast float %2846, %2758
  %2852 = fmul fast float %2851, %2850
  %2853 = bitcast float %2759 to i32
  %2854 = ashr i32 %2853, 1
  %2855 = sub nsw i32 1597463174, %2854
  %2856 = bitcast i32 %2855 to float
  %2857 = fmul fast float %2759, 5.000000e-01
  %2858 = fmul fast float %2856, %2856
  %2859 = fmul fast float %2858, %2857
  %2860 = fsub fast float 1.500000e+00, %2859
  %2861 = fmul fast float %2856, %2759
  %2862 = fmul fast float %2861, %2860
  %2863 = fsub fast float %2842, %2824
  %2864 = fsub fast float %2852, %2828
  %2865 = fsub fast float %2862, %2832
  %2866 = fmul fast float %2863, %2792
  %2867 = fmul fast float %2864, %2794
  %2868 = fmul fast float %2865, %2799
  %2869 = fadd fast float %2866, %2807
  %2870 = fadd fast float %2867, %2811
  %2871 = fadd fast float %2868, %2815
  %2872 = call float @dx.op.unary.f32(i32 7, float %2869)  ; Saturate(value)
  %2873 = call float @dx.op.unary.f32(i32 7, float %2870)  ; Saturate(value)
  %2874 = call float @dx.op.unary.f32(i32 7, float %2871)  ; Saturate(value)
  %2875 = fmul fast float %2872, %2872
  %2876 = fmul fast float %2873, %2873
  %2877 = fmul fast float %2874, %2874
  %2878 = fsub fast float %2875, %2757
  %2879 = fsub fast float %2876, %2758
  %2880 = fsub fast float %2877, %2759
  %2881 = fmul fast float %2878, %2782
  %2882 = fmul fast float %2879, %2782
  %2883 = fmul fast float %2880, %2782
  %2884 = fadd fast float %2881, %2757
  %2885 = fadd fast float %2882, %2758
  %2886 = fadd fast float %2883, %2759
  %2887 = fadd fast float %2804, %2768
  %2888 = fsub fast float %2887, %2821
  %2889 = call float @dx.op.unary.f32(i32 7, float %2888)  ; Saturate(value)
  %2890 = fsub fast float %2889, %2768
  %2891 = fmul fast float %2890, %2782
  %2892 = fadd fast float %2891, %2768
  br label %2946

; <label>:2893                                    ; preds = %2781
  %2894 = and i32 %2784, 134217728
  %2895 = icmp eq i32 %2894, 0
  br i1 %2895, label %2930, label %2896

; <label>:2896                                    ; preds = %2893
  %2897 = call float @dx.op.unary.f32(i32 24, float %437)  ; Sqrt(value)
  %2898 = call float @dx.op.unary.f32(i32 24, float %441)  ; Sqrt(value)
  %2899 = call float @dx.op.unary.f32(i32 24, float %445)  ; Sqrt(value)
  %2900 = fadd fast float %2897, -5.000000e-01
  %2901 = fadd fast float %2898, -5.000000e-01
  %2902 = fadd fast float %2899, -5.000000e-01
  %2903 = fmul fast float %2900, %2782
  %2904 = fmul fast float %2901, %2782
  %2905 = fmul fast float %2902, %2782
  %2906 = fadd fast float %2903, 5.000000e-01
  %2907 = fadd fast float %2904, 5.000000e-01
  %2908 = fadd fast float %2905, 5.000000e-01
  %2909 = call float @dx.op.unary.f32(i32 24, float %2757)  ; Sqrt(value)
  %2910 = call float @dx.op.unary.f32(i32 24, float %2758)  ; Sqrt(value)
  %2911 = call float @dx.op.unary.f32(i32 24, float %2759)  ; Sqrt(value)
  %2912 = fmul fast float %2906, 2.000000e+00
  %2913 = fsub fast float 1.000000e+00, %2912
  %2914 = fmul fast float %2913, %2909
  %2915 = fadd fast float %2914, %2912
  %2916 = fmul fast float %2915, %2909
  %2917 = fmul fast float %2907, 2.000000e+00
  %2918 = fsub fast float 1.000000e+00, %2917
  %2919 = fmul fast float %2918, %2910
  %2920 = fadd fast float %2919, %2917
  %2921 = fmul fast float %2920, %2910
  %2922 = fmul fast float %2908, 2.000000e+00
  %2923 = fsub fast float 1.000000e+00, %2922
  %2924 = fmul fast float %2923, %2911
  %2925 = fadd fast float %2924, %2922
  %2926 = fmul fast float %2925, %2911
  %2927 = fmul fast float %2916, %2916
  %2928 = fmul fast float %2921, %2921
  %2929 = fmul fast float %2926, %2926
  br label %2946

; <label>:2930                                    ; preds = %2893
  %2931 = fmul fast float %437, %437
  %2932 = fmul fast float %441, %441
  %2933 = fmul fast float %445, %445
  %2934 = fadd fast float %2931, -1.000000e+00
  %2935 = fadd fast float %2932, -1.000000e+00
  %2936 = fadd fast float %2933, -1.000000e+00
  %2937 = fmul fast float %2782, %2934
  %2938 = fmul fast float %2782, %2935
  %2939 = fmul fast float %2782, %2936
  %2940 = fadd fast float %2937, 1.000000e+00
  %2941 = fadd fast float %2938, 1.000000e+00
  %2942 = fadd fast float %2939, 1.000000e+00
  %2943 = fmul fast float %2940, %2757
  %2944 = fmul fast float %2941, %2758
  %2945 = fmul fast float %2942, %2759
  br label %2946

; <label>:2946                                    ; preds = %2930, %2896, %2787, %2743
  %2947 = phi float [ %2892, %2787 ], [ %2768, %2896 ], [ %2768, %2930 ], [ 0x3FA23C0BE0000000, %2743 ]
  %2948 = phi float [ %2884, %2787 ], [ %2927, %2896 ], [ %2943, %2930 ], [ 1.000000e+00, %2743 ]
  %2949 = phi float [ %2885, %2787 ], [ %2928, %2896 ], [ %2944, %2930 ], [ 1.000000e+00, %2743 ]
  %2950 = phi float [ %2886, %2787 ], [ %2929, %2896 ], [ %2945, %2930 ], [ 1.000000e+00, %2743 ]
  %2951 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2952 = extractvalue %dx.types.CBufRet.i32 %2951, 1
  %2953 = and i32 %2952, 1
  %2954 = icmp ne i32 %2953, 0
  %2955 = add i32 %54, 356
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = and i32 %2957, 32
  %2959 = icmp ne i32 %2958, 0
  %2960 = and i1 %2954, %2959
  %2961 = select i1 %2960, float 1.000000e+00, float %2948
  %2962 = select i1 %2960, float 0x3FD3333340000000, float %2949
  %2963 = select i1 %2960, float 0x3FD3333340000000, float %2950
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = and i32 %2965, 32
  %2967 = icmp eq i32 %2966, 0
  br i1 %2967, label %3040, label %2968

; <label>:2968                                    ; preds = %2946
  %2969 = add i32 %54, 140
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = add i32 %54, 532
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = add i32 %2974, 0
  %2976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2975, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2977 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2976, %dx.types.Handle %100, float %2668, float %2669, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2978 = extractvalue %dx.types.ResRet.f32 %2977, 0
  %2979 = extractvalue %dx.types.ResRet.f32 %2977, 1
  %2980 = extractvalue %dx.types.ResRet.f32 %2977, 2
  %2981 = extractvalue %dx.types.ResRet.f32 %2977, 3
  %2982 = and i32 %2971, 255
  %2983 = uitofp i32 %2982 to float
  %2984 = lshr i32 %2971, 8
  %2985 = and i32 %2984, 255
  %2986 = uitofp i32 %2985 to float
  %2987 = lshr i32 %2971, 16
  %2988 = and i32 %2987, 255
  %2989 = uitofp i32 %2988 to float
  %2990 = fmul fast float %2989, 0x3F70101000000000
  %2991 = fmul fast float %2978, %2983
  %2992 = fadd fast float %2991, %2986
  %2993 = fmul fast float %2992, 0x3F70101000000000
  %2994 = fadd fast float %2979, -5.000000e-01
  %2995 = fadd fast float %2981, -5.000000e-01
  %2996 = fmul fast float %2994, %2990
  %2997 = fmul fast float %2995, %2990
  %2998 = fadd fast float %2996, 5.000000e-01
  %2999 = fadd fast float %2997, 5.000000e-01
  %3000 = fmul fast float %2998, 2.000000e+00
  %3001 = fadd fast float %3000, -1.000000e+00
  %3002 = fmul fast float %2999, 2.000000e+00
  %3003 = fadd fast float %3002, -1.000000e+00
  %3004 = fadd fast float %3001, %3003
  %3005 = fmul fast float %3004, 5.000000e-01
  %3006 = fsub fast float %3001, %3003
  %3007 = fmul fast float %3006, 5.000000e-01
  %3008 = call float @dx.op.unary.f32(i32 6, float %3005)  ; FAbs(value)
  %3009 = fsub fast float 1.000000e+00, %3008
  %3010 = call float @dx.op.unary.f32(i32 6, float %3007)  ; FAbs(value)
  %3011 = fsub fast float %3009, %3010
  %3012 = call float @dx.op.dot3.f32(i32 55, float %3005, float %3007, float %3011, float %3005, float %3007, float %3011)  ; Dot3(ax,ay,az,bx,by,bz)
  %3013 = call float @dx.op.unary.f32(i32 25, float %3012)  ; Rsqrt(value)
  %3014 = fmul fast float %3005, %3013
  %3015 = fmul fast float %3007, %3013
  %3016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3017 = extractvalue %dx.types.ResRet.i32 %3016, 0
  %3018 = and i32 %3017, 67108864
  %3019 = icmp eq i32 %3018, 0
  br i1 %3019, label %3036, label %3020

; <label>:3020                                    ; preds = %2968
  %3021 = add i32 %54, 328
  %3022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3021, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.i32 %3022, 0
  %3024 = and i32 %3023, 65535
  %3025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3024)  ; LegacyF16ToF32(value)
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = and i32 %3027, 65535
  %3029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3028)  ; LegacyF16ToF32(value)
  %3030 = lshr i32 %3023, 16
  %3031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3030)  ; LegacyF16ToF32(value)
  %3032 = fsub fast float %2993, %3031
  %3033 = fmul fast float %3032, %3025
  %3034 = fadd fast float %3033, %3029
  %3035 = call float @dx.op.unary.f32(i32 7, float %3034)  ; Saturate(value)
  br label %3036

; <label>:3036                                    ; preds = %3020, %2968
  %3037 = phi float [ %3035, %3020 ], [ %2993, %2968 ]
  %3038 = call float @dx.op.dot2.f32(i32 54, float %3014, float %3015, float %2572, float %2573)  ; Dot2(ax,ay,bx,by)
  %3039 = call float @dx.op.dot2.f32(i32 54, float %3014, float %3015, float %2574, float %2575)  ; Dot2(ax,ay,bx,by)
  br label %3040

; <label>:3040                                    ; preds = %3036, %2946
  %3041 = phi float [ %3037, %3036 ], [ 0x3FD6666660000000, %2946 ]
  %3042 = phi float [ %3038, %3036 ], [ 0.000000e+00, %2946 ]
  %3043 = phi float [ %3039, %3036 ], [ 0.000000e+00, %2946 ]
  %3044 = phi float [ %2980, %3036 ], [ 1.000000e+00, %2946 ]
  %3045 = add i32 %54, 208
  %3046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3045, i32 undef)  ; BufferLoad(srv,index,wot)
  %3047 = extractvalue %dx.types.ResRet.i32 %3046, 0
  %3048 = lshr i32 %3047, 22
  %3049 = shl nuw nsw i32 %3048, 5
  %3050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3049)  ; LegacyF16ToF32(value)
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = and i32 %3052, 64
  %3054 = icmp eq i32 %3053, 0
  br i1 %3054, label %3088, label %3055

; <label>:3055                                    ; preds = %3040
  %3056 = add i32 %54, 548
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 0
  %3059 = add i32 %3058, 0
  %3060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = and i32 %3062, 131072
  %3064 = icmp eq i32 %3063, 0
  %3065 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3060, %dx.types.Handle %100, float %2668, float %2669, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3066 = extractvalue %dx.types.ResRet.f32 %3065, 0
  %3067 = extractvalue %dx.types.ResRet.f32 %3065, 1
  %3068 = extractvalue %dx.types.ResRet.f32 %3065, 2
  %3069 = fmul fast float %3066, %425
  %3070 = fmul fast float %3067, %428
  %3071 = fmul fast float %3068, %431
  br i1 %3064, label %3078, label %3072

; <label>:3072                                    ; preds = %3055
  %3073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3074 = extractvalue %dx.types.CBufRet.f32 %3073, 0
  %3075 = fmul fast float %3074, %3069
  %3076 = fmul fast float %3074, %3070
  %3077 = fmul fast float %3074, %3071
  br label %3078

; <label>:3078                                    ; preds = %3072, %3055
  %3079 = phi float [ %3075, %3072 ], [ %3069, %3055 ]
  %3080 = phi float [ %3076, %3072 ], [ %3070, %3055 ]
  %3081 = phi float [ %3077, %3072 ], [ %3071, %3055 ]
  %3082 = fmul fast float %3079, %3050
  %3083 = select i1 %282, float %3082, float %3079
  %3084 = call float @dx.op.dot3.f32(i32 55, float %3083, float %3080, float %3081, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3085 = select i1 %282, float 0.000000e+00, float %3079
  %3086 = select i1 %282, float %3084, float %3080
  %3087 = select i1 %282, float 0.000000e+00, float %3081
  br label %3088

; <label>:3088                                    ; preds = %3078, %3040
  %3089 = phi float [ %3085, %3078 ], [ 0.000000e+00, %3040 ]
  %3090 = phi float [ %3086, %3078 ], [ 0.000000e+00, %3040 ]
  %3091 = phi float [ %3087, %3078 ], [ 0.000000e+00, %3040 ]
  %3092 = add i32 %54, 144
  %3093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.i32 %3093, 0
  %3095 = and i32 %3094, 255
  %3096 = uitofp i32 %3095 to float
  %3097 = lshr i32 %3094, 8
  %3098 = and i32 %3097, 255
  %3099 = uitofp i32 %3098 to float
  %3100 = call float @dx.op.dot3.f32(i32 55, float %2961, float %2962, float %2963, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3101 = fmul fast float %3099, %3100
  %3102 = fadd fast float %3101, %3096
  %3103 = fmul fast float %3102, 0x3F70101020000000
  %3104 = call float @dx.op.unary.f32(i32 7, float %3103)  ; Saturate(value)
  br i1 %2560, label %3105, label %3113

; <label>:3105                                    ; preds = %3088
  %3106 = fsub fast float 1.000000e+00, %2741
  %3107 = fmul fast float %3106, %2549
  %3108 = fmul fast float %3106, %2550
  %3109 = fmul fast float %3106, %2551
  %3110 = fmul fast float %3106, %2552
  %3111 = fmul fast float %3106, %2553
  %3112 = fmul fast float %3106, %2554
  br label %3113

; <label>:3113                                    ; preds = %3105, %3088
  %3114 = phi float [ %3107, %3105 ], [ %2549, %3088 ]
  %3115 = phi float [ %3108, %3105 ], [ %2550, %3088 ]
  %3116 = phi float [ %3109, %3105 ], [ %2551, %3088 ]
  %3117 = phi float [ %3110, %3105 ], [ %2552, %3088 ]
  %3118 = phi float [ %3111, %3105 ], [ %2553, %3088 ]
  %3119 = phi float [ %3112, %3105 ], [ %2554, %3088 ]
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = and i32 %3121, 3
  %3123 = icmp eq i32 %3122, 3
  br i1 %3123, label %3202, label %3124

; <label>:3124                                    ; preds = %3113
  %3125 = and i32 %3121, 16
  %3126 = icmp ne i32 %3125, 0
  %3127 = select i1 %3126, float %2741, float 0.000000e+00
  %3128 = icmp eq i32 %3122, 0
  br i1 %3128, label %3129, label %3157

; <label>:3129                                    ; preds = %3124
  %3130 = and i32 %3121, 64
  %3131 = icmp ne i32 %3130, 0
  %3132 = select i1 %3131, float %2741, float 0.000000e+00
  %3133 = fsub fast float %2961, %3114
  %3134 = fsub fast float %2962, %3115
  %3135 = fsub fast float %2963, %3116
  %3136 = fmul fast float %3127, %3133
  %3137 = fmul fast float %3127, %3134
  %3138 = fmul fast float %3127, %3135
  %3139 = fadd fast float %3136, %3114
  %3140 = fadd fast float %3137, %3115
  %3141 = fadd fast float %3138, %3116
  %3142 = fsub fast float %2947, %2555
  %3143 = fmul fast float %3127, %3142
  %3144 = fadd fast float %3143, %2555
  %3145 = fsub fast float %3089, %3117
  %3146 = fsub fast float %3090, %3118
  %3147 = fsub fast float %3091, %3119
  %3148 = fmul fast float %3132, %3145
  %3149 = fmul fast float %3132, %3146
  %3150 = fmul fast float %3132, %3147
  %3151 = fadd fast float %3148, %3117
  %3152 = fadd fast float %3149, %3118
  %3153 = fadd fast float %3150, %3119
  %3154 = fsub fast float %3104, %2558
  %3155 = fmul fast float %3127, %3154
  %3156 = fadd fast float %3155, %2558
  br label %3202

; <label>:3157                                    ; preds = %3124
  %3158 = icmp eq i32 %3122, 1
  br i1 %3158, label %3159, label %3172

; <label>:3159                                    ; preds = %3157
  %3160 = fadd fast float %2961, -1.000000e+00
  %3161 = fadd fast float %2962, -1.000000e+00
  %3162 = fadd fast float %2963, -1.000000e+00
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
  %3175 = call float @dx.op.unary.f32(i32 24, float %2961)  ; Sqrt(value)
  %3176 = call float @dx.op.unary.f32(i32 24, float %2962)  ; Sqrt(value)
  %3177 = call float @dx.op.unary.f32(i32 24, float %2963)  ; Sqrt(value)
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
  %3209 = phi float [ %2555, %3113 ], [ %2555, %3174 ], [ %2555, %3172 ], [ %2555, %3159 ], [ %3144, %3129 ]
  %3210 = phi float [ %2558, %3113 ], [ %2558, %3174 ], [ %2558, %3172 ], [ %2558, %3159 ], [ %3156, %3129 ]
  %3211 = and i32 %3121, 12
  %3212 = icmp eq i32 %3211, 12
  br i1 %3212, label %3285, label %3213

; <label>:3213                                    ; preds = %3202
  %3214 = and i32 %3121, 2097184
  %3215 = icmp eq i32 %3214, 2097184
  %3216 = select i1 %3215, float %2741, float 0.000000e+00
  %3217 = and i32 %3121, 4194336
  %3218 = icmp eq i32 %3217, 4194336
  %3219 = select i1 %3218, float %2741, float 0.000000e+00
  %3220 = and i32 %3121, 8388640
  %3221 = icmp eq i32 %3220, 8388640
  %3222 = select i1 %3221, float %2741, float 0.000000e+00
  %3223 = icmp eq i32 %3211, 0
  br i1 %3223, label %3224, label %3237

; <label>:3224                                    ; preds = %3213
  %3225 = fsub fast float %3042, %2547
  %3226 = fsub fast float %3043, %2548
  %3227 = fmul fast float %3216, %3225
  %3228 = fmul fast float %3216, %3226
  %3229 = fadd fast float %3227, %2547
  %3230 = fadd fast float %3228, %2548
  %3231 = fsub fast float %3044, %2557
  %3232 = fmul fast float %3219, %3231
  %3233 = fadd fast float %3232, %2557
  %3234 = fsub fast float %3041, %2556
  %3235 = fmul fast float %3222, %3234
  %3236 = fadd fast float %3235, %2556
  br label %3285

; <label>:3237                                    ; preds = %3213
  %3238 = icmp eq i32 %3211, 4
  br i1 %3238, label %3239, label %3271

; <label>:3239                                    ; preds = %3237
  %3240 = fmul fast float %3216, %3042
  %3241 = fmul fast float %3216, %3043
  %3242 = fadd fast float %3240, %2547
  %3243 = fadd fast float %3241, %2548
  %3244 = call float @dx.op.binary.f32(i32 36, float %2557, float %3044)  ; FMin(a,b)
  %3245 = fsub fast float %3244, %2557
  %3246 = fmul fast float %3245, %3219
  %3247 = fadd fast float %3246, %2557
  %3248 = fadd fast float %3041, %2556
  %3249 = fmul fast float %3248, 0x3FF337FAE0000000
  %3250 = fmul fast float %2556, %2556
  %3251 = fmul fast float %3041, %3041
  %3252 = fadd fast float %3251, %3250
  %3253 = fmul fast float %3252, 0x3FE5152B00000000
  %3254 = fmul fast float %2556, 0xBFCC1F85E0000000
  %3255 = fmul fast float %3254, %3041
  %3256 = fadd fast float %3255, 0xBFE1363700000000
  %3257 = fadd fast float %3256, %3249
  %3258 = fsub fast float %3257, %3253
  %3259 = fmul fast float %3248, 0x3FBA6F0D00000000
  %3260 = fmul fast float %3252, 0x3FD0432880000000
  %3261 = fmul fast float %2556, 0xBFEF110800000000
  %3262 = fmul fast float %3261, %3041
  %3263 = fadd fast float %3262, 1.000000e+00
  %3264 = fsub fast float %3263, %3259
  %3265 = fadd fast float %3264, %3260
  %3266 = fdiv fast float %3258, %3265
  %3267 = call float @dx.op.unary.f32(i32 7, float %3266)  ; Saturate(value)
  %3268 = fsub fast float %3267, %2556
  %3269 = fmul fast float %3268, %3222
  %3270 = fadd fast float %3269, %2556
  br label %3285

; <label>:3271                                    ; preds = %3237
  %3272 = icmp eq i32 %3211, 8
  br i1 %3272, label %3273, label %3285

; <label>:3273                                    ; preds = %3271
  %3274 = fmul fast float %3216, %3042
  %3275 = fmul fast float %3216, %3043
  %3276 = fadd fast float %3274, %2547
  %3277 = fadd fast float %3275, %2548
  %3278 = call float @dx.op.binary.f32(i32 36, float %2557, float %3044)  ; FMin(a,b)
  %3279 = fsub fast float %3278, %2557
  %3280 = fmul fast float %3279, %3219
  %3281 = fadd fast float %3280, %2557
  %3282 = fsub fast float %3041, %2556
  %3283 = fmul fast float %3222, %3282
  %3284 = fadd fast float %3283, %2556
  br label %3285

; <label>:3285                                    ; preds = %3273, %3271, %3239, %3224, %3202, %2740, %2559, %2546
  %3286 = phi float [ %2547, %3202 ], [ %2547, %2740 ], [ %2547, %2546 ], [ %2547, %2559 ], [ %3229, %3224 ], [ %3242, %3239 ], [ %2547, %3271 ], [ %3276, %3273 ]
  %3287 = phi float [ %2548, %3202 ], [ %2548, %2740 ], [ %2548, %2546 ], [ %2548, %2559 ], [ %3230, %3224 ], [ %3243, %3239 ], [ %2548, %3271 ], [ %3277, %3273 ]
  %3288 = phi float [ %3203, %3202 ], [ %2549, %2740 ], [ %2549, %2546 ], [ %2549, %2559 ], [ %3203, %3224 ], [ %3203, %3239 ], [ %3203, %3271 ], [ %3203, %3273 ]
  %3289 = phi float [ %3204, %3202 ], [ %2550, %2740 ], [ %2550, %2546 ], [ %2550, %2559 ], [ %3204, %3224 ], [ %3204, %3239 ], [ %3204, %3271 ], [ %3204, %3273 ]
  %3290 = phi float [ %3205, %3202 ], [ %2551, %2740 ], [ %2551, %2546 ], [ %2551, %2559 ], [ %3205, %3224 ], [ %3205, %3239 ], [ %3205, %3271 ], [ %3205, %3273 ]
  %3291 = phi float [ %3206, %3202 ], [ %2552, %2740 ], [ %2552, %2546 ], [ %2552, %2559 ], [ %3206, %3224 ], [ %3206, %3239 ], [ %3206, %3271 ], [ %3206, %3273 ]
  %3292 = phi float [ %3207, %3202 ], [ %2553, %2740 ], [ %2553, %2546 ], [ %2553, %2559 ], [ %3207, %3224 ], [ %3207, %3239 ], [ %3207, %3271 ], [ %3207, %3273 ]
  %3293 = phi float [ %3208, %3202 ], [ %2554, %2740 ], [ %2554, %2546 ], [ %2554, %2559 ], [ %3208, %3224 ], [ %3208, %3239 ], [ %3208, %3271 ], [ %3208, %3273 ]
  %3294 = phi float [ %3209, %3202 ], [ %2555, %2740 ], [ %2555, %2546 ], [ %2555, %2559 ], [ %3209, %3224 ], [ %3209, %3239 ], [ %3209, %3271 ], [ %3209, %3273 ]
  %3295 = phi float [ %2556, %3202 ], [ %2556, %2740 ], [ %2556, %2546 ], [ %2556, %2559 ], [ %3236, %3224 ], [ %3270, %3239 ], [ %2556, %3271 ], [ %3284, %3273 ]
  %3296 = phi float [ %2557, %3202 ], [ %2557, %2740 ], [ %2557, %2546 ], [ %2557, %2559 ], [ %3233, %3224 ], [ %3247, %3239 ], [ %2557, %3271 ], [ %3281, %3273 ]
  %3297 = phi float [ %3210, %3202 ], [ %2558, %2740 ], [ %2558, %2546 ], [ %2558, %2559 ], [ %3210, %3224 ], [ %3210, %3239 ], [ %3210, %3271 ], [ %3210, %3273 ]
  %3298 = add i32 %54, 488
  %3299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3298, i32 undef)  ; BufferLoad(srv,index,wot)
  %3300 = extractvalue %dx.types.ResRet.i32 %3299, 0
  %3301 = extractvalue %dx.types.ResRet.i32 %3299, 1
  %3302 = bitcast i32 %3300 to float
  %3303 = bitcast i32 %3301 to float
  %3304 = fcmp fast oge float %3302, 0.000000e+00
  %3305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3306 = extractvalue %dx.types.CBufRet.f32 %3305, 0
  %3307 = select i1 %3304, float %3302, float %3306
  %3308 = add i32 %54, 584
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = add i32 %3310, 0
  %3312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3311, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3313 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3312, %dx.types.Handle %101, float %86, float %87, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3314 = extractvalue %dx.types.ResRet.f32 %3313, 0
  %3315 = fmul fast float %3314, %3303
  %3316 = fadd fast float %3315, %3307
  %3317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3318 = extractvalue %dx.types.CBufRet.f32 %3317, 0
  %3319 = fmul fast float %3318, %3291
  %3320 = fmul fast float %3318, %3292
  %3321 = fmul fast float %3318, %3293
  %3322 = call float @dx.op.dot2.f32(i32 54, float %3286, float %3287, float %3286, float %3287)  ; Dot2(ax,ay,bx,by)
  %3323 = fmul fast float %3322, 0x3FE3333340000000
  %3324 = fsub fast float 1.000000e+00, %3323
  %3325 = call float @dx.op.dot3.f32(i32 55, float %3286, float %3287, float %3324, float %3286, float %3287, float %3324)  ; Dot3(ax,ay,az,bx,by,bz)
  %3326 = call float @dx.op.unary.f32(i32 25, float %3325)  ; Rsqrt(value)
  %3327 = fmul fast float %3326, %3286
  %3328 = fmul fast float %3326, %3287
  %3329 = fmul fast float %3324, %3326
  %3330 = fmul fast float %3329, %111
  %3331 = fmul fast float %3329, %112
  %3332 = fmul fast float %3329, %113
  %3333 = fmul fast float %3327, %79
  %3334 = fmul fast float %3327, %80
  %3335 = fmul fast float %3327, %81
  %3336 = fadd fast float %3330, %3333
  %3337 = fadd fast float %3331, %3334
  %3338 = fadd fast float %3332, %3335
  %3339 = fmul fast float %123, %3328
  %3340 = fmul fast float %124, %3328
  %3341 = fmul fast float %125, %3328
  %3342 = fadd fast float %3336, %3339
  %3343 = fadd fast float %3337, %3340
  %3344 = fadd fast float %3338, %3341
  %3345 = call float @dx.op.dot3.f32(i32 55, float %3342, float %3343, float %3344, float %3342, float %3343, float %3344)  ; Dot3(ax,ay,az,bx,by,bz)
  %3346 = call float @dx.op.unary.f32(i32 25, float %3345)  ; Rsqrt(value)
  %3347 = fmul fast float %3342, %3346
  %3348 = fmul fast float %3343, %3346
  %3349 = fmul fast float %3344, %3346
  %3350 = icmp eq i32 %55, 65535
  br i1 %3350, label %3869, label %3351

; <label>:3351                                    ; preds = %3285
  %3352 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %3353 = call float @dx.op.unary.f32(i32 83, float %57)  ; DerivCoarseX(value)
  %3354 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3355 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %3356 = call float @dx.op.unary.f32(i32 84, float %57)  ; DerivCoarseY(value)
  %3357 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3358 = fadd fast float %3352, %56
  %3359 = fadd fast float %3353, %57
  %3360 = fadd fast float %3354, %58
  %3361 = fadd fast float %3355, %56
  %3362 = fadd fast float %3356, %57
  %3363 = fadd fast float %3357, %58
  %3364 = mul i32 %55, 48
  %3365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.f32 %3365, 0
  %3367 = extractvalue %dx.types.ResRet.f32 %3365, 1
  %3368 = extractvalue %dx.types.ResRet.f32 %3365, 2
  %3369 = add i32 %3364, 16
  %3370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3369, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.f32 %3370, 0
  %3372 = extractvalue %dx.types.ResRet.f32 %3370, 1
  %3373 = extractvalue %dx.types.ResRet.f32 %3370, 2
  %3374 = add i32 %3364, 32
  %3375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.f32 %3375, 0
  %3377 = extractvalue %dx.types.ResRet.f32 %3375, 1
  %3378 = extractvalue %dx.types.ResRet.f32 %3375, 2
  %3379 = extractvalue %dx.types.ResRet.f32 %3375, 3
  %3380 = bitcast float %3379 to i32
  %3381 = fmul fast float %3366, %56
  %3382 = fmul fast float %3367, %57
  %3383 = fmul fast float %3368, %58
  %3384 = fsub fast float %3381, %3371
  %3385 = fsub fast float %3382, %3372
  %3386 = fsub fast float %3383, %3373
  %3387 = call float @dx.op.unary.f32(i32 7, float %3384)  ; Saturate(value)
  %3388 = call float @dx.op.unary.f32(i32 7, float %3385)  ; Saturate(value)
  %3389 = call float @dx.op.unary.f32(i32 7, float %3386)  ; Saturate(value)
  %3390 = fmul fast float %3387, %3376
  %3391 = fmul fast float %3388, %3377
  %3392 = fmul fast float %3389, %3378
  %3393 = fadd fast float %3376, -1.000000e+00
  %3394 = fadd fast float %3377, -1.000000e+00
  %3395 = fadd fast float %3378, -1.000000e+00
  %3396 = call float @dx.op.unary.f32(i32 27, float %3390)  ; Round_ni(value)
  %3397 = call float @dx.op.unary.f32(i32 27, float %3391)  ; Round_ni(value)
  %3398 = call float @dx.op.unary.f32(i32 27, float %3392)  ; Round_ni(value)
  %3399 = call float @dx.op.binary.f32(i32 36, float %3396, float %3393)  ; FMin(a,b)
  %3400 = call float @dx.op.binary.f32(i32 36, float %3397, float %3394)  ; FMin(a,b)
  %3401 = call float @dx.op.binary.f32(i32 36, float %3398, float %3395)  ; FMin(a,b)
  %3402 = fmul fast float %3401, %3377
  %3403 = fadd fast float %3402, %3400
  %3404 = fmul fast float %3403, %3376
  %3405 = fadd fast float %3404, %3399
  %3406 = fptosi float %3405 to i32
  %3407 = add nsw i32 %3406, %3380
  %3408 = shl nsw i32 %3407, 2
  %3409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.i32 %3409, 0
  %3411 = lshr i32 %3410, 16
  %3412 = icmp eq i32 %3411, 0
  br i1 %3412, label %3837, label %3413

; <label>:3413                                    ; preds = %3351
  br label %3414

; <label>:3414                                    ; preds = %3536, %3413
  %3415 = phi i32 [ %3438, %3536 ], [ %3411, %3413 ]
  %3416 = phi float [ %3537, %3536 ], [ 0.000000e+00, %3413 ]
  %3417 = phi float [ %3538, %3536 ], [ %3314, %3413 ]
  %3418 = phi float [ %3539, %3536 ], [ %3316, %3413 ]
  %3419 = phi float [ %3540, %3536 ], [ %3297, %3413 ]
  %3420 = phi float [ %3541, %3536 ], [ 0.000000e+00, %3413 ]
  %3421 = phi float [ %3542, %3536 ], [ 0.000000e+00, %3413 ]
  %3422 = phi float [ %3543, %3536 ], [ %3319, %3413 ]
  %3423 = phi float [ %3544, %3536 ], [ %3320, %3413 ]
  %3424 = phi float [ %3545, %3536 ], [ %3321, %3413 ]
  %3425 = phi float [ %3546, %3536 ], [ %3347, %3413 ]
  %3426 = phi float [ %3547, %3536 ], [ %3348, %3413 ]
  %3427 = phi float [ %3548, %3536 ], [ %3349, %3413 ]
  %3428 = phi float [ %3549, %3536 ], [ %3296, %3413 ]
  %3429 = phi float [ %3550, %3536 ], [ %3295, %3413 ]
  %3430 = phi float [ %3551, %3536 ], [ 0.000000e+00, %3413 ]
  %3431 = phi float [ %3552, %3536 ], [ %3294, %3413 ]
  %3432 = phi float [ %3553, %3536 ], [ %3288, %3413 ]
  %3433 = phi float [ %3554, %3536 ], [ %3289, %3413 ]
  %3434 = phi float [ %3555, %3536 ], [ %3290, %3413 ]
  %3435 = shl nuw nsw i32 %3415, 2
  %3436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3435, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.i32 %3436, 0
  %3438 = lshr i32 %3437, 16
  %3439 = shl i32 %3437, 8
  %3440 = and i32 %3439, 16776960
  %3441 = or i32 %3440, 48
  %3442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3441, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.f32 %3442, 0
  %3444 = extractvalue %dx.types.ResRet.f32 %3442, 1
  %3445 = extractvalue %dx.types.ResRet.f32 %3442, 2
  %3446 = or i32 %3440, 64
  %3447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.i32 %3447, 0
  %3449 = extractvalue %dx.types.ResRet.i32 %3447, 1
  %3450 = or i32 %3440, 80
  %3451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.f32 %3451, 2
  %3453 = extractvalue %dx.types.ResRet.f32 %3451, 3
  %3454 = or i32 %3440, 96
  %3455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.f32 %3455, 0
  %3457 = extractvalue %dx.types.ResRet.f32 %3455, 1
  %3458 = extractvalue %dx.types.ResRet.f32 %3455, 2
  %3459 = extractvalue %dx.types.ResRet.f32 %3455, 3
  %3460 = or i32 %3440, 112
  %3461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.f32 %3461, 2
  %3463 = or i32 %3440, 128
  %3464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.f32 %3464, 0
  %3466 = extractvalue %dx.types.ResRet.f32 %3464, 1
  %3467 = extractvalue %dx.types.ResRet.f32 %3464, 2
  %3468 = extractvalue %dx.types.ResRet.f32 %3464, 3
  %3469 = or i32 %3440, 144
  %3470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3469, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.f32 %3470, 0
  %3472 = extractvalue %dx.types.ResRet.f32 %3470, 1
  %3473 = extractvalue %dx.types.ResRet.f32 %3470, 2
  %3474 = extractvalue %dx.types.ResRet.f32 %3470, 3
  %3475 = or i32 %3440, 160
  %3476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3475, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.ResRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.ResRet.f32 %3476, 2
  %3480 = extractvalue %dx.types.ResRet.f32 %3476, 3
  %3481 = or i32 %3440, 192
  %3482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3481, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.i32 %3482, 0
  %3484 = or i32 %3440, 208
  %3485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.f32 %3485, 0
  %3487 = or i32 %3440, 248
  %3488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3487, i32 undef)  ; BufferLoad(srv,index,wot)
  %3489 = extractvalue %dx.types.ResRet.f32 %3488, 0
  %3490 = extractvalue %dx.types.ResRet.f32 %3488, 1
  %3491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3440, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.f32 %3491, 0
  %3493 = extractvalue %dx.types.ResRet.f32 %3491, 1
  %3494 = extractvalue %dx.types.ResRet.f32 %3491, 2
  %3495 = extractvalue %dx.types.ResRet.f32 %3491, 3
  %3496 = call float @dx.op.dot4.f32(i32 56, float %3492, float %3493, float %3494, float %3495, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3497 = or i32 %3440, 16
  %3498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3497, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.f32 %3498, 0
  %3500 = extractvalue %dx.types.ResRet.f32 %3498, 1
  %3501 = extractvalue %dx.types.ResRet.f32 %3498, 2
  %3502 = extractvalue %dx.types.ResRet.f32 %3498, 3
  %3503 = call float @dx.op.dot4.f32(i32 56, float %3499, float %3500, float %3501, float %3502, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3504 = or i32 %3440, 32
  %3505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3504, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.f32 %3505, 0
  %3507 = extractvalue %dx.types.ResRet.f32 %3505, 1
  %3508 = extractvalue %dx.types.ResRet.f32 %3505, 2
  %3509 = extractvalue %dx.types.ResRet.f32 %3505, 3
  %3510 = call float @dx.op.dot4.f32(i32 56, float %3506, float %3507, float %3508, float %3509, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3511 = call float @dx.op.unary.f32(i32 27, float %3496)  ; Round_ni(value)
  %3512 = call float @dx.op.unary.f32(i32 6, float %3511)  ; FAbs(value)
  %3513 = call float @dx.op.unary.f32(i32 27, float %3503)  ; Round_ni(value)
  %3514 = call float @dx.op.unary.f32(i32 6, float %3513)  ; FAbs(value)
  %3515 = call float @dx.op.unary.f32(i32 6, float %3510)  ; FAbs(value)
  %3516 = call float @dx.op.unary.f32(i32 27, float %3515)  ; Round_ni(value)
  %3517 = fadd fast float %3514, %3512
  %3518 = fadd fast float %3517, %3516
  %3519 = fcmp fast oeq float %3518, 0.000000e+00
  %3520 = call float @dx.op.dot4.f32(i32 56, float %3492, float %3493, float %3494, float %3495, float %3358, float %3359, float %3360, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3521 = call float @dx.op.dot4.f32(i32 56, float %3499, float %3500, float %3501, float %3502, float %3358, float %3359, float %3360, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3522 = call float @dx.op.dot4.f32(i32 56, float %3492, float %3493, float %3494, float %3495, float %3361, float %3362, float %3363, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3523 = call float @dx.op.dot4.f32(i32 56, float %3499, float %3500, float %3501, float %3502, float %3361, float %3362, float %3363, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3524 = fsub fast float %3520, %3496
  %3525 = fsub fast float %3522, %3496
  %3526 = fsub fast float %3521, %3503
  %3527 = fsub fast float %3523, %3503
  %3528 = call float @dx.op.dot3.f32(i32 55, float %3443, float %3444, float %3445, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3530 = extractvalue %dx.types.CBufRet.f32 %3529, 2
  %3531 = fadd fast float %3530, %3528
  %3532 = call float @dx.op.unary.f32(i32 7, float %3531)  ; Saturate(value)
  %3533 = extractvalue %dx.types.CBufRet.f32 %3529, 0
  %3534 = fcmp fast ogt float %3532, %3533
  %3535 = and i1 %3519, %3534
  br i1 %3535, label %3557, label %3536

; <label>:3536                                    ; preds = %3823, %3640, %3557, %3414
  %3537 = phi float [ %3416, %3557 ], [ %3643, %3640 ], [ %3643, %3823 ], [ %3416, %3414 ]
  %3538 = phi float [ %3417, %3557 ], [ %3417, %3640 ], [ %3798, %3823 ], [ %3417, %3414 ]
  %3539 = phi float [ %3418, %3557 ], [ %3418, %3640 ], [ %3797, %3823 ], [ %3418, %3414 ]
  %3540 = phi float [ %3419, %3557 ], [ %3419, %3640 ], [ %3795, %3823 ], [ %3419, %3414 ]
  %3541 = phi float [ %3420, %3557 ], [ %3420, %3640 ], [ %3767, %3823 ], [ %3420, %3414 ]
  %3542 = phi float [ %3421, %3557 ], [ %3421, %3640 ], [ %3765, %3823 ], [ %3421, %3414 ]
  %3543 = phi float [ %3422, %3557 ], [ %3422, %3640 ], [ %3833, %3823 ], [ %3422, %3414 ]
  %3544 = phi float [ %3423, %3557 ], [ %3423, %3640 ], [ %3834, %3823 ], [ %3423, %3414 ]
  %3545 = phi float [ %3424, %3557 ], [ %3424, %3640 ], [ %3835, %3823 ], [ %3424, %3414 ]
  %3546 = phi float [ %3425, %3557 ], [ %3425, %3640 ], [ %3746, %3823 ], [ %3425, %3414 ]
  %3547 = phi float [ %3426, %3557 ], [ %3426, %3640 ], [ %3747, %3823 ], [ %3426, %3414 ]
  %3548 = phi float [ %3427, %3557 ], [ %3427, %3640 ], [ %3748, %3823 ], [ %3427, %3414 ]
  %3549 = phi float [ %3428, %3557 ], [ %3428, %3640 ], [ %3775, %3823 ], [ %3428, %3414 ]
  %3550 = phi float [ %3429, %3557 ], [ %3429, %3640 ], [ %3772, %3823 ], [ %3429, %3414 ]
  %3551 = phi float [ %3430, %3557 ], [ %3430, %3640 ], [ %3769, %3823 ], [ %3430, %3414 ]
  %3552 = phi float [ %3431, %3557 ], [ %3431, %3640 ], [ %3763, %3823 ], [ %3431, %3414 ]
  %3553 = phi float [ %3432, %3557 ], [ %3432, %3640 ], [ %3758, %3823 ], [ %3432, %3414 ]
  %3554 = phi float [ %3433, %3557 ], [ %3433, %3640 ], [ %3759, %3823 ], [ %3433, %3414 ]
  %3555 = phi float [ %3434, %3557 ], [ %3434, %3640 ], [ %3760, %3823 ], [ %3434, %3414 ]
  %3556 = icmp eq i32 %3438, 0
  br i1 %3556, label %3836, label %3414

; <label>:3557                                    ; preds = %3414
  %3558 = extractvalue %dx.types.ResRet.f32 %3442, 3
  %3559 = extractvalue %dx.types.ResRet.f32 %3461, 3
  %3560 = extractvalue %dx.types.ResRet.f32 %3461, 1
  %3561 = extractvalue %dx.types.ResRet.f32 %3461, 0
  %3562 = extractvalue %dx.types.ResRet.f32 %3451, 1
  %3563 = extractvalue %dx.types.ResRet.f32 %3451, 0
  %3564 = extractvalue %dx.types.ResRet.i32 %3447, 3
  %3565 = extractvalue %dx.types.ResRet.i32 %3447, 2
  %3566 = bitcast float %3558 to i32
  %3567 = add i32 %3564, 0
  %3568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3567, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3569 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3570 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3568, %dx.types.Handle %3569, float %3496, float %3503, float undef, float undef, i32 0, i32 0, i32 undef, float %3524, float %3526, float undef, float %3525, float %3527, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3571 = extractvalue %dx.types.ResRet.f32 %3570, 0
  %3572 = fmul fast float %3571, %3563
  %3573 = fadd fast float %3572, %3562
  %3574 = call float @dx.op.unary.f32(i32 7, float %3573)  ; Saturate(value)
  %3575 = fmul fast float %3496, %3456
  %3576 = call float @dx.op.tertiary.f32(i32 46, float %3457, float %3503, float %3575)  ; FMad(a,b,c)
  %3577 = fadd fast float %3576, %3561
  %3578 = fmul fast float %3496, %3458
  %3579 = call float @dx.op.tertiary.f32(i32 46, float %3459, float %3503, float %3578)  ; FMad(a,b,c)
  %3580 = fadd fast float %3579, %3560
  %3581 = fmul fast float %3524, %3456
  %3582 = call float @dx.op.tertiary.f32(i32 46, float %3457, float %3526, float %3581)  ; FMad(a,b,c)
  %3583 = fmul fast float %3524, %3458
  %3584 = call float @dx.op.tertiary.f32(i32 46, float %3459, float %3526, float %3583)  ; FMad(a,b,c)
  %3585 = fmul fast float %3525, %3456
  %3586 = call float @dx.op.tertiary.f32(i32 46, float %3457, float %3527, float %3585)  ; FMad(a,b,c)
  %3587 = fmul fast float %3525, %3458
  %3588 = call float @dx.op.tertiary.f32(i32 46, float %3459, float %3527, float %3587)  ; FMad(a,b,c)
  %3589 = add i32 %3565, 0
  %3590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3589, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3591 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3590, %dx.types.Handle %3569, float %3577, float %3580, float undef, float undef, i32 0, i32 0, i32 undef, float %3582, float %3584, float undef, float %3586, float %3588, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3593 = and i32 %3566, 1024
  %3594 = icmp ne i32 %3593, 0
  %3595 = fcmp fast ogt float %3592, 0x3FE0101020000000
  %3596 = uitofp i1 %3595 to float
  %3597 = select i1 %3594, float %3596, float %3592
  %3598 = and i32 %3566, 8192
  %3599 = icmp ne i32 %3598, 0
  %3600 = select i1 %3599, float %3559, float 1.000000e+00
  %3601 = fmul fast float %3496, 2.000000e+00
  %3602 = fadd fast float %3601, -1.000000e+00
  %3603 = call float @dx.op.unary.f32(i32 6, float %3602)  ; FAbs(value)
  %3604 = fmul fast float %3603, %3489
  %3605 = fsub fast float %3604, %3489
  %3606 = call float @dx.op.unary.f32(i32 7, float %3605)  ; Saturate(value)
  %3607 = fmul fast float %3503, 2.000000e+00
  %3608 = fadd fast float %3607, -1.000000e+00
  %3609 = call float @dx.op.unary.f32(i32 6, float %3608)  ; FAbs(value)
  %3610 = fmul fast float %3609, %3490
  %3611 = fsub fast float %3610, %3490
  %3612 = call float @dx.op.unary.f32(i32 7, float %3611)  ; Saturate(value)
  %3613 = fmul fast float %3515, %3452
  %3614 = fsub fast float %3613, %3452
  %3615 = call float @dx.op.unary.f32(i32 7, float %3614)  ; Saturate(value)
  %3616 = fmul fast float %3574, %3600
  %3617 = fmul fast float %3616, %3571
  %3618 = fmul fast float %3617, %3606
  %3619 = fmul fast float %3618, %3597
  %3620 = fmul fast float %3619, %3612
  %3621 = fmul fast float %3620, %3615
  %3622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3623 = extractvalue %dx.types.CBufRet.f32 %3622, 1
  %3624 = extractvalue %dx.types.CBufRet.f32 %3622, 0
  %3625 = fsub fast float %3532, %3624
  %3626 = fmul fast float %3625, %3623
  %3627 = call float @dx.op.unary.f32(i32 7, float %3626)  ; Saturate(value)
  %3628 = fmul fast float %3621, %3453
  %3629 = fadd fast float %3621, %3453
  %3630 = fmul fast float %3629, %3462
  %3631 = fsub fast float %3630, %3462
  %3632 = call float @dx.op.unary.f32(i32 7, float %3631)  ; Saturate(value)
  %3633 = and i32 %3566, 128
  %3634 = icmp ne i32 %3633, 0
  %3635 = select i1 %3634, float %3632, float %3628
  %3636 = fmul fast float %3635, %3627
  %3637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3638 = extractvalue %dx.types.CBufRet.f32 %3637, 0
  %3639 = fcmp fast ugt float %3636, %3638
  br i1 %3639, label %3640, label %3536

; <label>:3640                                    ; preds = %3557
  %3641 = select i1 %3599, float %3636, float 0.000000e+00
  %3642 = fadd fast float %3641, %3416
  %3643 = call float @dx.op.unary.f32(i32 7, float %3642)  ; Saturate(value)
  br i1 %3599, label %3536, label %3644

; <label>:3644                                    ; preds = %3640
  %3645 = and i32 %3566, 4
  %3646 = and i32 %3566, 8
  %3647 = add i32 %3448, 0
  %3648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3647, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3650 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3648, %dx.types.Handle %3649, float %3577, float %3580, float undef, float undef, i32 0, i32 0, i32 undef, float %3582, float %3584, float undef, float %3586, float %3588, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3651 = extractvalue %dx.types.ResRet.f32 %3650, 0
  %3652 = extractvalue %dx.types.ResRet.f32 %3650, 1
  %3653 = extractvalue %dx.types.ResRet.f32 %3650, 2
  %3654 = extractvalue %dx.types.ResRet.f32 %3650, 3
  %3655 = bitcast float %3474 to i32
  %3656 = and i32 %3655, 255
  %3657 = uitofp i32 %3656 to float
  %3658 = lshr i32 %3655, 8
  %3659 = and i32 %3658, 255
  %3660 = uitofp i32 %3659 to float
  %3661 = fmul fast float %3654, %3657
  %3662 = fadd fast float %3661, %3660
  %3663 = fmul fast float %3662, 0x3F70101000000000
  %3664 = add i32 %3449, 0
  %3665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3664, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3666 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3665, %dx.types.Handle %3649, float %3577, float %3580, float undef, float undef, i32 0, i32 0, i32 undef, float %3582, float %3584, float undef, float %3586, float %3588, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3667 = extractvalue %dx.types.ResRet.f32 %3666, 0
  %3668 = extractvalue %dx.types.ResRet.f32 %3666, 1
  %3669 = extractvalue %dx.types.ResRet.f32 %3666, 2
  %3670 = extractvalue %dx.types.ResRet.f32 %3666, 3
  %3671 = bitcast float %3468 to i32
  %3672 = and i32 %3671, 255
  %3673 = uitofp i32 %3672 to float
  %3674 = lshr i32 %3671, 8
  %3675 = and i32 %3674, 255
  %3676 = uitofp i32 %3675 to float
  %3677 = lshr i32 %3671, 16
  %3678 = and i32 %3677, 255
  %3679 = uitofp i32 %3678 to float
  %3680 = fmul fast float %3679, 0x3F70101000000000
  %3681 = fmul fast float %3667, %3673
  %3682 = fadd fast float %3681, %3676
  %3683 = fmul fast float %3682, 0x3F70101000000000
  %3684 = fadd fast float %3668, -5.000000e-01
  %3685 = fadd fast float %3670, -5.000000e-01
  %3686 = fmul fast float %3684, %3680
  %3687 = fmul fast float %3685, %3680
  %3688 = fadd fast float %3686, 5.000000e-01
  %3689 = fadd fast float %3687, 5.000000e-01
  %3690 = fmul fast float %3651, %3477
  %3691 = fmul fast float %3652, %3478
  %3692 = fmul fast float %3653, %3479
  %3693 = fmul fast float %3688, 2.000000e+00
  %3694 = fadd fast float %3693, -1.000000e+00
  %3695 = fmul fast float %3689, 2.000000e+00
  %3696 = fadd fast float %3695, -1.000000e+00
  %3697 = fadd fast float %3694, %3696
  %3698 = fmul fast float %3697, 5.000000e-01
  %3699 = fsub fast float %3694, %3696
  %3700 = fmul fast float %3699, 5.000000e-01
  %3701 = call float @dx.op.unary.f32(i32 6, float %3698)  ; FAbs(value)
  %3702 = fsub fast float 1.000000e+00, %3701
  %3703 = call float @dx.op.unary.f32(i32 6, float %3700)  ; FAbs(value)
  %3704 = fsub fast float %3702, %3703
  %3705 = call float @dx.op.dot3.f32(i32 55, float %3698, float %3700, float %3704, float %3698, float %3700, float %3704)  ; Dot3(ax,ay,az,bx,by,bz)
  %3706 = call float @dx.op.unary.f32(i32 25, float %3705)  ; Rsqrt(value)
  %3707 = fmul fast float %3698, %3706
  %3708 = fmul fast float %3700, %3706
  %3709 = fmul fast float %3706, %3704
  %3710 = fmul fast float %3709, %3443
  %3711 = fmul fast float %3709, %3444
  %3712 = fmul fast float %3709, %3445
  %3713 = fmul fast float %3707, %3465
  %3714 = fmul fast float %3707, %3466
  %3715 = fmul fast float %3707, %3467
  %3716 = fadd fast float %3713, %3710
  %3717 = fadd fast float %3714, %3711
  %3718 = fadd fast float %3715, %3712
  %3719 = fmul fast float %3708, %3471
  %3720 = fmul fast float %3708, %3472
  %3721 = fmul fast float %3708, %3473
  %3722 = fadd fast float %3716, %3719
  %3723 = fadd fast float %3717, %3720
  %3724 = fadd fast float %3718, %3721
  %3725 = call float @dx.op.dot3.f32(i32 55, float %3722, float %3723, float %3724, float %3722, float %3723, float %3724)  ; Dot3(ax,ay,az,bx,by,bz)
  %3726 = call float @dx.op.unary.f32(i32 25, float %3725)  ; Rsqrt(value)
  %3727 = fmul fast float %3722, %3726
  %3728 = fmul fast float %3723, %3726
  %3729 = fmul fast float %3724, %3726
  %3730 = icmp ne i32 %3646, 0
  %3731 = select i1 %3730, float 1.000000e+00, float 0.000000e+00
  %3732 = fmul fast float %3636, %3731
  %3733 = and i32 %3566, 1
  %3734 = icmp eq i32 %3733, 0
  br i1 %3734, label %3735, label %3739

; <label>:3735                                    ; preds = %3644
  %3736 = fsub fast float %3727, %3425
  %3737 = fsub fast float %3728, %3426
  %3738 = fsub fast float %3729, %3427
  br label %3739

; <label>:3739                                    ; preds = %3735, %3644
  %3740 = phi float [ %3736, %3735 ], [ %3727, %3644 ]
  %3741 = phi float [ %3737, %3735 ], [ %3728, %3644 ]
  %3742 = phi float [ %3738, %3735 ], [ %3729, %3644 ]
  %3743 = fmul float %3742, %3732
  %3744 = fmul float %3741, %3732
  %3745 = fmul float %3740, %3732
  %3746 = fadd fast float %3745, %3425
  %3747 = fadd fast float %3744, %3426
  %3748 = fadd fast float %3743, %3427
  %3749 = icmp ne i32 %3645, 0
  %3750 = select i1 %3749, float 1.000000e+00, float 0.000000e+00
  %3751 = fmul fast float %3636, %3750
  %3752 = fsub fast float %3690, %3432
  %3753 = fsub fast float %3691, %3433
  %3754 = fsub fast float %3692, %3434
  %3755 = fmul fast float %3752, %3751
  %3756 = fmul fast float %3753, %3751
  %3757 = fmul fast float %3754, %3751
  %3758 = fadd fast float %3755, %3432
  %3759 = fadd fast float %3756, %3433
  %3760 = fadd fast float %3757, %3434
  %3761 = fsub fast float %3663, %3431
  %3762 = fmul fast float %3761, %3751
  %3763 = fadd fast float %3762, %3431
  %3764 = fmul fast float %3751, %3421
  %3765 = fsub fast float %3421, %3764
  %3766 = fmul fast float %3751, %3420
  %3767 = fsub fast float %3420, %3766
  %3768 = fadd fast float %3636, %3430
  %3769 = call float @dx.op.unary.f32(i32 7, float %3768)  ; Saturate(value)
  %3770 = fsub fast float %3683, %3429
  %3771 = fmul fast float %3770, %3732
  %3772 = fadd fast float %3771, %3429
  %3773 = fsub fast float %3669, %3428
  %3774 = fmul fast float %3773, %3732
  %3775 = fadd fast float %3774, %3428
  %3776 = call float @dx.op.dot3.f32(i32 55, float %3690, float %3691, float %3692, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3778 = extractvalue %dx.types.CBufRet.f32 %3777, 0
  %3779 = extractvalue %dx.types.CBufRet.f32 %3777, 1
  %3780 = fmul fast float %3779, %3776
  %3781 = fadd fast float %3780, %3778
  %3782 = call float @dx.op.unary.f32(i32 7, float %3781)  ; Saturate(value)
  %3783 = bitcast float %3480 to i32
  %3784 = and i32 %3783, 65535
  %3785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3784)  ; LegacyF16ToF32(value)
  %3786 = lshr i32 %3783, 16
  %3787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3786)  ; LegacyF16ToF32(value)
  %3788 = fcmp fast oge float %3785, 0.000000e+00
  %3789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3790 = extractvalue %dx.types.CBufRet.f32 %3789, 0
  %3791 = select i1 %3788, float %3785, float %3790
  %3792 = fadd fast float %3791, %3787
  %3793 = fsub fast float %3782, %3419
  %3794 = fmul fast float %3793, %3636
  %3795 = fadd fast float %3794, %3419
  %3796 = fmul fast float %3792, %3636
  %3797 = call float @dx.op.binary.f32(i32 35, float %3418, float %3796)  ; FMax(a,b)
  %3798 = call float @dx.op.binary.f32(i32 35, float %3417, float %3636)  ; FMax(a,b)
  %3799 = and i32 %3566, 16
  %3800 = icmp eq i32 %3799, 0
  br i1 %3800, label %3823, label %3801

; <label>:3801                                    ; preds = %3739
  %3802 = bitcast float %3486 to i32
  %3803 = add i32 %3483, 0
  %3804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3803, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3805 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3804, %dx.types.Handle %3649, float %3577, float %3580, float undef, float undef, i32 0, i32 0, i32 undef, float %3582, float %3584, float undef, float %3586, float %3588, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3806 = extractvalue %dx.types.ResRet.f32 %3805, 0
  %3807 = extractvalue %dx.types.ResRet.f32 %3805, 1
  %3808 = extractvalue %dx.types.ResRet.f32 %3805, 2
  %3809 = and i32 %3802, 65535
  %3810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3809)  ; LegacyF16ToF32(value)
  %3811 = fmul fast float %3806, %3477
  %3812 = fmul fast float %3807, %3478
  %3813 = fmul fast float %3808, %3479
  %3814 = and i32 %3566, 16384
  %3815 = icmp ne i32 %3814, 0
  %3816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3817 = extractvalue %dx.types.CBufRet.f32 %3816, 0
  %3818 = select i1 %3815, float %3817, float 1.000000e+00
  %3819 = fmul fast float %3818, %3810
  %3820 = fmul fast float %3811, %3819
  %3821 = fmul fast float %3812, %3819
  %3822 = fmul fast float %3813, %3819
  br label %3823

; <label>:3823                                    ; preds = %3801, %3739
  %3824 = phi float [ %3820, %3801 ], [ 0.000000e+00, %3739 ]
  %3825 = phi float [ %3821, %3801 ], [ 0.000000e+00, %3739 ]
  %3826 = phi float [ %3822, %3801 ], [ 0.000000e+00, %3739 ]
  %3827 = fsub fast float %3824, %3422
  %3828 = fsub fast float %3825, %3423
  %3829 = fsub fast float %3826, %3424
  %3830 = fmul fast float %3827, %3636
  %3831 = fmul fast float %3828, %3636
  %3832 = fmul fast float %3829, %3636
  %3833 = fadd fast float %3830, %3422
  %3834 = fadd fast float %3831, %3423
  %3835 = fadd fast float %3832, %3424
  br label %3536

; <label>:3836                                    ; preds = %3536
  br label %3837

; <label>:3837                                    ; preds = %3836, %3351
  %3838 = phi float [ 0.000000e+00, %3351 ], [ %3537, %3836 ]
  %3839 = phi float [ %3314, %3351 ], [ %3538, %3836 ]
  %3840 = phi float [ %3316, %3351 ], [ %3539, %3836 ]
  %3841 = phi float [ %3297, %3351 ], [ %3540, %3836 ]
  %3842 = phi float [ 0.000000e+00, %3351 ], [ %3541, %3836 ]
  %3843 = phi float [ 0.000000e+00, %3351 ], [ %3542, %3836 ]
  %3844 = phi float [ %3319, %3351 ], [ %3543, %3836 ]
  %3845 = phi float [ %3320, %3351 ], [ %3544, %3836 ]
  %3846 = phi float [ %3321, %3351 ], [ %3545, %3836 ]
  %3847 = phi float [ %3347, %3351 ], [ %3546, %3836 ]
  %3848 = phi float [ %3348, %3351 ], [ %3547, %3836 ]
  %3849 = phi float [ %3349, %3351 ], [ %3548, %3836 ]
  %3850 = phi float [ %3296, %3351 ], [ %3549, %3836 ]
  %3851 = phi float [ %3295, %3351 ], [ %3550, %3836 ]
  %3852 = phi float [ 0.000000e+00, %3351 ], [ %3551, %3836 ]
  %3853 = phi float [ %3294, %3351 ], [ %3552, %3836 ]
  %3854 = phi float [ %3288, %3351 ], [ %3553, %3836 ]
  %3855 = phi float [ %3289, %3351 ], [ %3554, %3836 ]
  %3856 = phi float [ %3290, %3351 ], [ %3555, %3836 ]
  %3857 = call float @dx.op.dot3.f32(i32 55, float %3847, float %3848, float %3849, float %3847, float %3848, float %3849)  ; Dot3(ax,ay,az,bx,by,bz)
  %3858 = call float @dx.op.unary.f32(i32 25, float %3857)  ; Rsqrt(value)
  %3859 = fmul fast float %3858, %3847
  %3860 = fmul fast float %3858, %3848
  %3861 = fmul fast float %3858, %3849
  %3862 = fadd fast float %3852, %1077
  %3863 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  %3864 = call float @dx.op.dot3.f32(i32 55, float %3859, float %3860, float %3861, float %3859, float %3860, float %3861)  ; Dot3(ax,ay,az,bx,by,bz)
  %3865 = call float @dx.op.unary.f32(i32 25, float %3864)  ; Rsqrt(value)
  %3866 = fmul fast float %3865, %3859
  %3867 = fmul fast float %3865, %3860
  %3868 = fmul fast float %3865, %3861
  br label %3869

; <label>:3869                                    ; preds = %3837, %3285
  %3870 = phi float [ %3866, %3837 ], [ %3347, %3285 ]
  %3871 = phi float [ %3867, %3837 ], [ %3348, %3285 ]
  %3872 = phi float [ %3868, %3837 ], [ %3349, %3285 ]
  %3873 = phi float [ %3854, %3837 ], [ %3288, %3285 ]
  %3874 = phi float [ %3855, %3837 ], [ %3289, %3285 ]
  %3875 = phi float [ %3856, %3837 ], [ %3290, %3285 ]
  %3876 = phi float [ %3844, %3837 ], [ %3319, %3285 ]
  %3877 = phi float [ %3845, %3837 ], [ %3320, %3285 ]
  %3878 = phi float [ %3846, %3837 ], [ %3321, %3285 ]
  %3879 = phi float [ %3853, %3837 ], [ %3294, %3285 ]
  %3880 = phi float [ %3863, %3837 ], [ %1077, %3285 ]
  %3881 = phi float [ %3851, %3837 ], [ %3295, %3285 ]
  %3882 = phi float [ %3850, %3837 ], [ %3296, %3285 ]
  %3883 = phi float [ %3843, %3837 ], [ 0.000000e+00, %3285 ]
  %3884 = phi float [ %3842, %3837 ], [ 0.000000e+00, %3285 ]
  %3885 = phi float [ %3838, %3837 ], [ 0.000000e+00, %3285 ]
  %3886 = phi float [ %3840, %3837 ], [ %3316, %3285 ]
  %3887 = phi float [ %3839, %3837 ], [ %3314, %3285 ]
  %3888 = phi float [ %3841, %3837 ], [ %3297, %3285 ]
  %3889 = add i32 %54, 472
  %3890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.i32 %3890, 0
  %3892 = extractvalue %dx.types.ResRet.i32 %3890, 1
  %3893 = extractvalue %dx.types.ResRet.i32 %3890, 2
  %3894 = bitcast i32 %3891 to float
  %3895 = bitcast i32 %3892 to float
  %3896 = bitcast i32 %3893 to float
  %3897 = add i32 %54, 456
  %3898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3897, i32 undef)  ; BufferLoad(srv,index,wot)
  %3899 = extractvalue %dx.types.ResRet.i32 %3898, 0
  %3900 = extractvalue %dx.types.ResRet.i32 %3898, 1
  %3901 = extractvalue %dx.types.ResRet.i32 %3898, 2
  %3902 = bitcast i32 %3899 to float
  %3903 = bitcast i32 %3900 to float
  %3904 = bitcast i32 %3901 to float
  %3905 = fsub fast float %3902, %3894
  %3906 = fsub fast float %3903, %3895
  %3907 = fsub fast float %3904, %3896
  %3908 = fmul fast float %3905, %225
  %3909 = fmul fast float %3906, %225
  %3910 = fmul fast float %3907, %225
  %3911 = fadd fast float %3908, %3894
  %3912 = fadd fast float %3909, %3895
  %3913 = fadd fast float %3910, %3896
  %3914 = fmul fast float %3911, %3873
  %3915 = fmul fast float %3912, %3874
  %3916 = fmul fast float %3913, %3875
  %3917 = fmul fast float %3880, %225
  %3918 = fadd fast float %3879, 0xBFB99999A0000000
  %3919 = call float @dx.op.unary.f32(i32 7, float %3918)  ; Saturate(value)
  %3920 = fmul fast float %3919, 0x3FF1C71C80000000
  %3921 = call float @dx.op.binary.f32(i32 36, float %3879, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3922 = fsub fast float 1.000000e+00, %3920
  %3923 = call float @dx.op.unary.f32(i32 7, float %3922)  ; Saturate(value)
  %3924 = fmul fast float %3914, %3923
  %3925 = fmul fast float %3915, %3923
  %3926 = fmul fast float %3916, %3923
  %3927 = call float @dx.op.unary.f32(i32 7, float %3924)  ; Saturate(value)
  %3928 = call float @dx.op.unary.f32(i32 7, float %3925)  ; Saturate(value)
  %3929 = call float @dx.op.unary.f32(i32 7, float %3926)  ; Saturate(value)
  %3930 = fmul fast float %3914, %3920
  %3931 = fmul fast float %3915, %3920
  %3932 = fmul fast float %3916, %3920
  %3933 = fadd fast float %3930, %3921
  %3934 = fadd fast float %3931, %3921
  %3935 = fadd fast float %3932, %3921
  %3936 = call float @dx.op.unary.f32(i32 7, float %3933)  ; Saturate(value)
  %3937 = call float @dx.op.unary.f32(i32 7, float %3934)  ; Saturate(value)
  %3938 = call float @dx.op.unary.f32(i32 7, float %3935)  ; Saturate(value)
  %3939 = call float @dx.op.unary.f32(i32 7, float %3881)  ; Saturate(value)
  %3940 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.i32 %3940, 3
  %3942 = and i32 %3941, 8
  %3943 = icmp ne i32 %3942, 0
  %3944 = call float @dx.op.binary.f32(i32 35, float %3927, float %3914)  ; FMax(a,b)
  %3945 = call float @dx.op.binary.f32(i32 35, float %3928, float %3914)  ; FMax(a,b)
  %3946 = call float @dx.op.binary.f32(i32 35, float %3929, float %3914)  ; FMax(a,b)
  %3947 = call float @dx.op.dot3.f32(i32 55, float %3927, float %3928, float %3929, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3948 = select i1 %282, float %3914, float %3927
  %3949 = select i1 %282, float %3947, float %3928
  %3950 = select i1 %282, float 1.000000e+00, float %3929
  %3951 = select i1 %3943, float %3944, float %3948
  %3952 = select i1 %3943, float %3945, float %3949
  %3953 = select i1 %3943, float %3946, float %3950
  %3954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3955 = extractvalue %dx.types.CBufRet.f32 %3954, 0
  %3956 = extractvalue %dx.types.CBufRet.f32 %3954, 1
  %3957 = extractvalue %dx.types.CBufRet.f32 %3954, 2
  %3958 = fadd fast float %3955, %191
  %3959 = fadd fast float %3956, %192
  %3960 = fadd fast float %3957, %193
  %3961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3962 = extractvalue %dx.types.CBufRet.f32 %3961, 0
  %3963 = extractvalue %dx.types.CBufRet.f32 %3961, 1
  %3964 = fsub fast float %3958, %3962
  %3965 = fsub fast float %3959, %3963
  %3966 = fmul fast float %3964, %3964
  %3967 = fmul fast float %3965, %3965
  %3968 = fadd fast float %3966, %3967
  %3969 = call float @dx.op.unary.f32(i32 24, float %3968)  ; Sqrt(value)
  %3970 = extractvalue %dx.types.CBufRet.f32 %3961, 2
  %3971 = fcmp fast olt float %3969, %3970
  br i1 %3971, label %3972, label %4039

; <label>:3972                                    ; preds = %3869
  %3973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3974 = extractvalue %dx.types.CBufRet.f32 %3973, 0
  %3975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3976 = extractvalue %dx.types.CBufRet.f32 %3975, 0
  %3977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3977, 0
  %3979 = extractvalue %dx.types.CBufRet.f32 %3973, 1
  %3980 = extractvalue %dx.types.CBufRet.f32 %3975, 1
  %3981 = extractvalue %dx.types.CBufRet.f32 %3977, 1
  %3982 = extractvalue %dx.types.CBufRet.f32 %3973, 3
  %3983 = extractvalue %dx.types.CBufRet.f32 %3975, 3
  %3984 = extractvalue %dx.types.CBufRet.f32 %3977, 3
  %3985 = fadd fast float %3982, %3958
  %3986 = fadd fast float %3983, %3959
  %3987 = fadd fast float %3984, %3960
  %3988 = fmul fast float %3985, %3974
  %3989 = call float @dx.op.tertiary.f32(i32 46, float %3986, float %3976, float %3988)  ; FMad(a,b,c)
  %3990 = call float @dx.op.tertiary.f32(i32 46, float %3987, float %3978, float %3989)  ; FMad(a,b,c)
  %3991 = fmul fast float %3985, %3979
  %3992 = call float @dx.op.tertiary.f32(i32 46, float %3986, float %3980, float %3991)  ; FMad(a,b,c)
  %3993 = call float @dx.op.tertiary.f32(i32 46, float %3987, float %3981, float %3992)  ; FMad(a,b,c)
  %3994 = fsub fast float %3990, %3982
  %3995 = fsub fast float %3993, %3983
  %3996 = fsub fast float %3994, %3962
  %3997 = fadd fast float %3996, %3970
  %3998 = fsub fast float %3995, %3963
  %3999 = fadd fast float %3998, %3970
  %4000 = extractvalue %dx.types.CBufRet.f32 %3961, 3
  %4001 = fmul fast float %3997, %4000
  %4002 = fmul fast float %3999, %4000
  %4003 = call float @dx.op.unary.f32(i32 7, float %4001)  ; Saturate(value)
  %4004 = call float @dx.op.unary.f32(i32 7, float %4002)  ; Saturate(value)
  %4005 = fsub fast float 1.000000e+00, %4003
  %4006 = fsub fast float 1.000000e+00, %4004
  %4007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %4005, float %4006, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4008 = extractvalue %dx.types.ResRet.f32 %4007, 0
  %4009 = fcmp fast ugt float %4008, 0.000000e+00
  br i1 %4009, label %4010, label %4313

; <label>:4010                                    ; preds = %3972
  %4011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4012 = extractvalue %dx.types.CBufRet.f32 %4011, 2
  %4013 = fmul fast float %4012, %4008
  %4014 = extractvalue %dx.types.CBufRet.f32 %4011, 3
  %4015 = fadd fast float %4014, %4013
  %4016 = extractvalue %dx.types.CBufRet.f32 %3977, 2
  %4017 = fadd fast float %4015, %3984
  %4018 = fmul fast float %3990, %3978
  %4019 = call float @dx.op.tertiary.f32(i32 46, float %3993, float %3981, float %4018)  ; FMad(a,b,c)
  %4020 = call float @dx.op.tertiary.f32(i32 46, float %4017, float %4016, float %4019)  ; FMad(a,b,c)
  %4021 = fsub fast float %4020, %3984
  %4022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4023 = extractvalue %dx.types.CBufRet.f32 %4022, 2
  %4024 = fsub fast float %4021, %4023
  %4025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4005, float %4006, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4026 = extractvalue %dx.types.ResRet.f32 %4025, 0
  %4027 = extractvalue %dx.types.ResRet.f32 %4025, 1
  %4028 = extractvalue %dx.types.ResRet.f32 %4025, 2
  %4029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4005, float %4006, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4030 = extractvalue %dx.types.ResRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.ResRet.f32 %4029, 1
  %4032 = extractvalue %dx.types.ResRet.f32 %4029, 2
  %4033 = fadd fast float %4030, %4026
  %4034 = fmul fast float %4033, 0x3F847AE140000000
  %4035 = fadd fast float %4031, %4027
  %4036 = fmul fast float %4035, 0x3F847AE140000000
  %4037 = fadd fast float %4032, %4028
  %4038 = fmul fast float %4037, 0x3F847AE140000000
  br label %4313

; <label>:4039                                    ; preds = %3869
  %4040 = and i32 %261, 1
  %4041 = icmp eq i32 %4040, 0
  br i1 %4041, label %4313, label %4042

; <label>:4042                                    ; preds = %4039
  %4043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4044 = extractvalue %dx.types.CBufRet.f32 %4043, 0
  %4045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4046 = extractvalue %dx.types.CBufRet.f32 %4045, 0
  %4047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4048 = extractvalue %dx.types.CBufRet.f32 %4047, 0
  %4049 = extractvalue %dx.types.CBufRet.f32 %4043, 1
  %4050 = extractvalue %dx.types.CBufRet.f32 %4045, 1
  %4051 = extractvalue %dx.types.CBufRet.f32 %4047, 1
  %4052 = extractvalue %dx.types.CBufRet.f32 %4043, 3
  %4053 = extractvalue %dx.types.CBufRet.f32 %4045, 3
  %4054 = extractvalue %dx.types.CBufRet.f32 %4047, 3
  %4055 = fadd fast float %4052, %3958
  %4056 = fadd fast float %4053, %3959
  %4057 = fadd fast float %4054, %3960
  %4058 = fmul fast float %4055, %4044
  %4059 = call float @dx.op.tertiary.f32(i32 46, float %4056, float %4046, float %4058)  ; FMad(a,b,c)
  %4060 = call float @dx.op.tertiary.f32(i32 46, float %4057, float %4048, float %4059)  ; FMad(a,b,c)
  %4061 = fmul fast float %4055, %4049
  %4062 = call float @dx.op.tertiary.f32(i32 46, float %4056, float %4050, float %4061)  ; FMad(a,b,c)
  %4063 = call float @dx.op.tertiary.f32(i32 46, float %4057, float %4051, float %4062)  ; FMad(a,b,c)
  %4064 = fsub fast float %4060, %4052
  %4065 = fsub fast float %4063, %4053
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 0
  %4068 = extractvalue %dx.types.CBufRet.f32 %4066, 1
  %4069 = extractvalue %dx.types.CBufRet.f32 %4066, 2
  %4070 = extractvalue %dx.types.CBufRet.f32 %4066, 3
  %4071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4072 = extractvalue %dx.types.CBufRet.f32 %4071, 3
  %4073 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4074 = extractvalue %dx.types.CBufRet.i32 %4073, 0
  %4075 = extractvalue %dx.types.CBufRet.i32 %4073, 1
  %4076 = udiv i32 %4075, %4074
  %4077 = fsub fast float %4064, %4067
  %4078 = fsub fast float %4065, %4068
  %4079 = call float @dx.op.binary.f32(i32 35, float %4077, float 0.000000e+00)  ; FMax(a,b)
  %4080 = call float @dx.op.binary.f32(i32 35, float %4078, float 0.000000e+00)  ; FMax(a,b)
  %4081 = call float @dx.op.binary.f32(i32 36, float %4079, float %4069)  ; FMin(a,b)
  %4082 = call float @dx.op.binary.f32(i32 36, float %4080, float %4070)  ; FMin(a,b)
  %4083 = add i32 %4074, -1
  %4084 = add i32 %4076, -1
  %4085 = fmul fast float %4081, %4072
  %4086 = fmul fast float %4082, %4072
  %4087 = fptoui float %4085 to i32
  %4088 = fptoui float %4086 to i32
  %4089 = call i32 @dx.op.binary.i32(i32 40, i32 %4087, i32 %4083)  ; UMin(a,b)
  %4090 = call i32 @dx.op.binary.i32(i32 40, i32 %4088, i32 %4084)  ; UMin(a,b)
  %4091 = mul i32 %4090, %4074
  %4092 = add i32 %4091, %4089
  %4093 = shl i32 %4092, 2
  %4094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4093, i32 undef)  ; BufferLoad(srv,index,wot)
  %4095 = extractvalue %dx.types.ResRet.i32 %4094, 0
  %4096 = icmp eq i32 %4095, -1
  br i1 %4096, label %4313, label %4097

; <label>:4097                                    ; preds = %4042
  %4098 = mul i32 %4095, 148
  %4099 = add i32 %4098, 4
  %4100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4099, i32 undef)  ; BufferLoad(srv,index,wot)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = add i32 %4098, 8
  %4103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4102, i32 undef)  ; BufferLoad(srv,index,wot)
  %4104 = extractvalue %dx.types.ResRet.f32 %4103, 0
  %4105 = add i32 %4098, 36
  %4106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4105, i32 undef)  ; BufferLoad(srv,index,wot)
  %4107 = extractvalue %dx.types.ResRet.f32 %4106, 0
  %4108 = add i32 %4098, 60
  %4109 = add i32 %4098, 92
  %4110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4109, i32 undef)  ; BufferLoad(srv,index,wot)
  %4111 = extractvalue %dx.types.ResRet.i32 %4110, 0
  %4112 = add i32 %4098, 116
  %4113 = fsub fast float %4064, %4101
  %4114 = fsub fast float %4065, %4104
  %4115 = fmul fast float %4072, %4113
  %4116 = fmul fast float %4072, %4114
  %4117 = call float @dx.op.unary.f32(i32 7, float %4115)  ; Saturate(value)
  %4118 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4119 = fsub fast float 1.000000e+00, %4118
  %4120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4121 = extractvalue %dx.types.CBufRet.f32 %4120, 2
  %4122 = call float @dx.op.unary.f32(i32 83, float %4117)  ; DerivCoarseX(value)
  %4123 = call float @dx.op.unary.f32(i32 83, float %4119)  ; DerivCoarseX(value)
  %4124 = call float @dx.op.unary.f32(i32 84, float %4117)  ; DerivCoarseY(value)
  %4125 = call float @dx.op.unary.f32(i32 84, float %4119)  ; DerivCoarseY(value)
  %4126 = fmul fast float %4122, %4121
  %4127 = fmul fast float %4123, %4121
  %4128 = fmul fast float %4124, %4121
  %4129 = fmul fast float %4125, %4121
  %4130 = call float @dx.op.dot2.f32(i32 54, float %4128, float %4129, float %4128, float %4129)  ; Dot2(ax,ay,bx,by)
  %4131 = call float @dx.op.dot2.f32(i32 54, float %4126, float %4127, float %4126, float %4127)  ; Dot2(ax,ay,bx,by)
  %4132 = call float @dx.op.binary.f32(i32 35, float %4131, float %4130)  ; FMax(a,b)
  %4133 = call float @dx.op.unary.f32(i32 23, float %4132)  ; Log(value)
  %4134 = fmul fast float %4133, 5.000000e-01
  %4135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.f32 %4135, 1
  %4137 = fadd fast float %4136, %4134
  %4138 = call float @dx.op.binary.f32(i32 35, float %4137, float 0.000000e+00)  ; FMax(a,b)
  %4139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.f32 %4139, 3
  %4141 = fadd fast float %4140, %4138
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 3
  %4144 = fadd fast float %4141, %4143
  %4145 = add i32 %4111, 0
  %4146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4145, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4147 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4146, i32 0)  ; GetDimensions(handle,mipLevel)
  %4148 = extractvalue %dx.types.Dimensions %4147, 0
  %4149 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4148)  ; FirstbitLo(value)
  %4150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.i32 %4150, 1
  %4152 = sub nsw i32 %4151, %4149
  %4153 = sitofp i32 %4152 to float
  %4154 = fsub fast float %4144, %4153
  %4155 = call float @dx.op.binary.f32(i32 35, float %4154, float 0.000000e+00)  ; FMax(a,b)
  %4156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4146, %dx.types.Handle %46, float %4117, float %4119, float %4107, float undef, i32 0, i32 0, i32 undef, float %4155)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4157 = extractvalue %dx.types.ResRet.f32 %4156, 0
  %4158 = fcmp ule float %4157, 0x3FE0101020000000
  %4159 = extractvalue %dx.types.CBufRet.i32 %4150, 0
  %4160 = and i32 %4159, 128
  %4161 = icmp ne i32 %4160, 0
  %4162 = and i1 %4158, %4161
  br i1 %4162, label %4313, label %4163

; <label>:4163                                    ; preds = %4097
  %4164 = add i32 %4098, 20
  %4165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4164, i32 undef)  ; BufferLoad(srv,index,wot)
  %4166 = extractvalue %dx.types.ResRet.f32 %4165, 0
  %4167 = add i32 %4098, 24
  %4168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4167, i32 undef)  ; BufferLoad(srv,index,wot)
  %4169 = extractvalue %dx.types.ResRet.f32 %4168, 0
  %4170 = add i32 %4098, 40
  %4171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4170, i32 undef)  ; BufferLoad(srv,index,wot)
  %4172 = extractvalue %dx.types.ResRet.f32 %4171, 0
  %4173 = add i32 %4098, 96
  %4174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4173, i32 undef)  ; BufferLoad(srv,index,wot)
  %4175 = extractvalue %dx.types.ResRet.i32 %4174, 0
  %4176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4176, 2
  %4178 = fmul fast float %4177, %4117
  %4179 = fmul fast float %4177, %4119
  %4180 = extractvalue %dx.types.CBufRet.f32 %4176, 3
  %4181 = fadd fast float %4178, %4180
  %4182 = fadd fast float %4179, %4180
  %4183 = add i32 %4175, 0
  %4184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4183, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4185 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4184, i32 0)  ; GetDimensions(handle,mipLevel)
  %4186 = extractvalue %dx.types.Dimensions %4185, 0
  %4187 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4186)  ; FirstbitLo(value)
  %4188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.i32 %4188, 1
  %4190 = sub nsw i32 %4189, %4187
  %4191 = sitofp i32 %4190 to float
  %4192 = fsub fast float %4141, %4191
  %4193 = call float @dx.op.binary.f32(i32 35, float %4192, float 0.000000e+00)  ; FMax(a,b)
  %4194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4184, %dx.types.Handle %46, float %4181, float %4182, float %4172, float undef, i32 0, i32 0, i32 undef, float %4193)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4195 = extractvalue %dx.types.ResRet.f32 %4194, 0
  %4196 = fmul fast float %4195, %4166
  %4197 = fadd fast float %4196, %4169
  %4198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4199 = extractvalue %dx.types.CBufRet.f32 %4198, 0
  %4200 = extractvalue %dx.types.CBufRet.f32 %4198, 1
  %4201 = extractvalue %dx.types.CBufRet.f32 %4198, 2
  %4202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4203 = extractvalue %dx.types.CBufRet.f32 %4202, 3
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 3
  %4206 = extractvalue %dx.types.CBufRet.f32 %4198, 3
  %4207 = fadd fast float %4203, %4064
  %4208 = fadd fast float %4205, %4065
  %4209 = fadd fast float %4197, %4206
  %4210 = fmul fast float %4207, %4199
  %4211 = call float @dx.op.tertiary.f32(i32 46, float %4208, float %4200, float %4210)  ; FMad(a,b,c)
  %4212 = call float @dx.op.tertiary.f32(i32 46, float %4209, float %4201, float %4211)  ; FMad(a,b,c)
  %4213 = fsub fast float %4212, %4206
  %4214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4215 = extractvalue %dx.types.CBufRet.f32 %4214, 2
  %4216 = fsub fast float %4213, %4215
  %4217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4218 = extractvalue %dx.types.CBufRet.i32 %4217, 0
  %4219 = call i32 @dx.op.binary.i32(i32 40, i32 %4095, i32 %4218)  ; UMin(a,b)
  %4220 = mul i32 %4219, 36
  %4221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4220, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.i32 %4221, 0
  %4223 = add i32 %4220, 4
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 0
  %4226 = fmul fast float %4225, %4117
  %4227 = fmul fast float %4225, %4119
  %4228 = extractvalue %dx.types.CBufRet.f32 %4224, 1
  %4229 = fadd fast float %4226, %4228
  %4230 = fadd fast float %4227, %4228
  %4231 = icmp eq i32 %4222, 0
  br i1 %4231, label %4300, label %4232

; <label>:4232                                    ; preds = %4163
  br label %4233

; <label>:4233                                    ; preds = %4290, %4232
  %4234 = phi float [ %4291, %4290 ], [ 0.000000e+00, %4232 ]
  %4235 = phi float [ %4292, %4290 ], [ 0.000000e+00, %4232 ]
  %4236 = phi float [ %4293, %4290 ], [ 0.000000e+00, %4232 ]
  %4237 = phi float [ %4294, %4290 ], [ 0.000000e+00, %4232 ]
  %4238 = phi float [ %4295, %4290 ], [ 0.000000e+00, %4232 ]
  %4239 = phi float [ %4296, %4290 ], [ 0.000000e+00, %4232 ]
  %4240 = phi i32 [ %4297, %4290 ], [ 0, %4232 ]
  %4241 = shl i32 %4240, 2
  %4242 = add i32 %4108, %4241
  %4243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4242, i32 undef)  ; BufferLoad(srv,index,wot)
  %4244 = extractvalue %dx.types.ResRet.f32 %4243, 0
  %4245 = add i32 %4112, %4241
  %4246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4245, i32 undef)  ; BufferLoad(srv,index,wot)
  %4247 = extractvalue %dx.types.ResRet.i32 %4246, 0
  %4248 = add i32 %4247, 0
  %4249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4248, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4250 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4249, i32 0)  ; GetDimensions(handle,mipLevel)
  %4251 = extractvalue %dx.types.Dimensions %4250, 0
  %4252 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4251)  ; FirstbitLo(value)
  %4253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4254 = extractvalue %dx.types.CBufRet.i32 %4253, 1
  %4255 = sub nsw i32 %4254, %4252
  %4256 = sitofp i32 %4255 to float
  %4257 = fsub fast float %4141, %4256
  %4258 = call float @dx.op.binary.f32(i32 35, float %4257, float 0.000000e+00)  ; FMax(a,b)
  %4259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4249, %dx.types.Handle %46, float %4229, float %4230, float %4244, float undef, i32 0, i32 0, i32 undef, float %4258)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4260 = extractvalue %dx.types.ResRet.f32 %4259, 0
  %4261 = fcmp fast ogt float %4260, 0.000000e+00
  br i1 %4261, label %4262, label %4290

; <label>:4262                                    ; preds = %4233
  %4263 = add i32 %4223, %4241
  %4264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4263, i32 undef)  ; BufferLoad(srv,index,wot)
  %4265 = extractvalue %dx.types.ResRet.i32 %4264, 0
  %4266 = and i32 %4265, 32767
  %4267 = mul nuw nsw i32 %4266, 928
  %4268 = add nuw nsw i32 %4267, 48
  %4269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4268, i32 undef)  ; BufferLoad(srv,index,wot)
  %4270 = extractvalue %dx.types.ResRet.f32 %4269, 0
  %4271 = extractvalue %dx.types.ResRet.f32 %4269, 1
  %4272 = extractvalue %dx.types.ResRet.f32 %4269, 2
  %4273 = add nuw nsw i32 %4267, 60
  %4274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = extractvalue %dx.types.ResRet.f32 %4274, 1
  %4277 = extractvalue %dx.types.ResRet.f32 %4274, 2
  %4278 = fmul fast float %4270, %4260
  %4279 = fmul fast float %4271, %4260
  %4280 = fmul fast float %4272, %4260
  %4281 = fadd fast float %4278, %4234
  %4282 = fadd fast float %4279, %4235
  %4283 = fadd fast float %4280, %4236
  %4284 = fmul fast float %4275, %4260
  %4285 = fmul fast float %4276, %4260
  %4286 = fmul fast float %4277, %4260
  %4287 = fadd fast float %4284, %4237
  %4288 = fadd fast float %4285, %4238
  %4289 = fadd fast float %4286, %4239
  br label %4290

; <label>:4290                                    ; preds = %4262, %4233
  %4291 = phi float [ %4281, %4262 ], [ %4234, %4233 ]
  %4292 = phi float [ %4282, %4262 ], [ %4235, %4233 ]
  %4293 = phi float [ %4283, %4262 ], [ %4236, %4233 ]
  %4294 = phi float [ %4287, %4262 ], [ %4237, %4233 ]
  %4295 = phi float [ %4288, %4262 ], [ %4238, %4233 ]
  %4296 = phi float [ %4289, %4262 ], [ %4239, %4233 ]
  %4297 = add nuw i32 %4240, 1
  %4298 = icmp eq i32 %4297, %4222
  br i1 %4298, label %4299, label %4233

; <label>:4299                                    ; preds = %4290
  br label %4300

; <label>:4300                                    ; preds = %4299, %4163
  %4301 = phi float [ 0.000000e+00, %4163 ], [ %4291, %4299 ]
  %4302 = phi float [ 0.000000e+00, %4163 ], [ %4292, %4299 ]
  %4303 = phi float [ 0.000000e+00, %4163 ], [ %4293, %4299 ]
  %4304 = phi float [ 0.000000e+00, %4163 ], [ %4294, %4299 ]
  %4305 = phi float [ 0.000000e+00, %4163 ], [ %4295, %4299 ]
  %4306 = phi float [ 0.000000e+00, %4163 ], [ %4296, %4299 ]
  %4307 = fadd fast float %4304, %4301
  %4308 = fmul fast float %4307, 0x3F847AE140000000
  %4309 = fadd fast float %4305, %4302
  %4310 = fmul fast float %4309, 0x3F847AE140000000
  %4311 = fadd fast float %4306, %4303
  %4312 = fmul fast float %4311, 0x3F847AE140000000
  br label %4313

; <label>:4313                                    ; preds = %4300, %4097, %4042, %4039, %4010, %3972
  %4314 = phi float [ %4024, %4010 ], [ -1.310720e+05, %3972 ], [ %4216, %4300 ], [ -1.310720e+05, %4042 ], [ -1.310720e+05, %4097 ], [ -1.310720e+05, %4039 ]
  %4315 = phi float [ %4034, %4010 ], [ 0.000000e+00, %3972 ], [ %4308, %4300 ], [ 0.000000e+00, %4042 ], [ 0.000000e+00, %4097 ], [ 0.000000e+00, %4039 ]
  %4316 = phi float [ %4036, %4010 ], [ 0.000000e+00, %3972 ], [ %4310, %4300 ], [ 0.000000e+00, %4042 ], [ 0.000000e+00, %4097 ], [ 0.000000e+00, %4039 ]
  %4317 = phi float [ %4038, %4010 ], [ 0.000000e+00, %3972 ], [ %4312, %4300 ], [ 0.000000e+00, %4042 ], [ 0.000000e+00, %4097 ], [ 0.000000e+00, %4039 ]
  %4318 = phi i1 [ true, %4010 ], [ false, %3972 ], [ true, %4300 ], [ false, %4042 ], [ false, %4097 ], [ false, %4039 ]
  %4319 = and i32 %261, 3
  %4320 = icmp eq i32 %4319, 1
  %4321 = select i1 %4320, float 1.000000e+00, float 0.000000e+00
  %4322 = fsub fast float %4314, %193
  %4323 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4324 = select i1 %4318, float %4323, float 1.000000e+00
  %4325 = fmul fast float %4324, %4321
  %4326 = icmp eq i32 %4319, 3
  %4327 = select i1 %4326, float 1.000000e+00, float %4325
  %4328 = call float @dx.op.binary.f32(i32 35, float %3885, float %4327)  ; FMax(a,b)
  %4329 = fcmp fast olt float %4327, 1.000000e+00
  %4330 = fcmp uge float %69, 0.000000e+00
  %4331 = and i1 %4330, %4329
  br i1 %4331, label %4332, label %4342

; <label>:4332                                    ; preds = %4313
  %4333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %46, float %69, float %70, float %71, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4334 = extractvalue %dx.types.ResRet.f32 %4333, 0
  %4335 = extractvalue %dx.types.ResRet.f32 %4333, 1
  %4336 = extractvalue %dx.types.ResRet.f32 %4333, 2
  %4337 = fadd fast float %4334, %4328
  %4338 = fcmp ule float %68, 0.000000e+00
  %4339 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4340 = select i1 %4338, float %4339, float 1.000000e+00
  %4341 = fmul fast float %4340, %4336
  br label %4342

; <label>:4342                                    ; preds = %4332, %4313
  %4343 = phi float [ %4337, %4332 ], [ %4328, %4313 ]
  %4344 = phi float [ %4335, %4332 ], [ 0.000000e+00, %4313 ]
  %4345 = phi float [ %4341, %4332 ], [ 0.000000e+00, %4313 ]
  %4346 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4347 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  %4348 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4349 = fcmp fast une float %4347, 0.000000e+00
  %4350 = fcmp fast une float %4348, 0.000000e+00
  %4351 = or i1 %4349, %4350
  br i1 %4351, label %4352, label %4911

; <label>:4352                                    ; preds = %4342
  br i1 %4349, label %4353, label %4626

; <label>:4353                                    ; preds = %4352
  %4354 = call float @dx.op.unary.f32(i32 23, float %3882)  ; Log(value)
  %4355 = fmul fast float %4354, 4.000000e+00
  %4356 = call float @dx.op.unary.f32(i32 21, float %4355)  ; Exp(value)
  %4357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4358 = extractvalue %dx.types.CBufRet.f32 %4357, 0
  %4359 = fmul fast float %4358, %56
  %4360 = fmul fast float %4358, %57
  %4361 = fmul fast float %4358, %58
  %4362 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4363 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4364 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4365 = call float @dx.op.unary.f32(i32 23, float %4362)  ; Log(value)
  %4366 = call float @dx.op.unary.f32(i32 23, float %4363)  ; Log(value)
  %4367 = call float @dx.op.unary.f32(i32 23, float %4364)  ; Log(value)
  %4368 = fmul fast float %4365, 4.000000e+00
  %4369 = fmul fast float %4366, 4.000000e+00
  %4370 = fmul fast float %4367, 4.000000e+00
  %4371 = call float @dx.op.unary.f32(i32 21, float %4368)  ; Exp(value)
  %4372 = call float @dx.op.unary.f32(i32 21, float %4369)  ; Exp(value)
  %4373 = call float @dx.op.unary.f32(i32 21, float %4370)  ; Exp(value)
  %4374 = fadd fast float %4372, %4371
  %4375 = fadd fast float %4374, %4373
  %4376 = fdiv fast float 1.000000e+00, %4375
  %4377 = fmul fast float %4376, %4371
  %4378 = fcmp fast ogt float %65, 0.000000e+00
  %4379 = fcmp fast ogt float %66, 0.000000e+00
  %4380 = fcmp fast ogt float %67, 0.000000e+00
  %4381 = fcmp fast olt float %65, 0.000000e+00
  %4382 = fcmp fast olt float %66, 0.000000e+00
  %4383 = fcmp fast olt float %67, 0.000000e+00
  %4384 = zext i1 %4378 to i32
  %4385 = zext i1 %4379 to i32
  %4386 = zext i1 %4380 to i32
  %4387 = zext i1 %4381 to i32
  %4388 = zext i1 %4382 to i32
  %4389 = zext i1 %4383 to i32
  %4390 = sub nsw i32 %4384, %4387
  %4391 = sub nsw i32 %4385, %4388
  %4392 = sub nsw i32 %4386, %4389
  %4393 = call float @dx.op.unary.f32(i32 83, float %4359)  ; DerivCoarseX(value)
  %4394 = call float @dx.op.unary.f32(i32 83, float %4360)  ; DerivCoarseX(value)
  %4395 = call float @dx.op.unary.f32(i32 83, float %4361)  ; DerivCoarseX(value)
  %4396 = call float @dx.op.unary.f32(i32 84, float %4359)  ; DerivCoarseY(value)
  %4397 = call float @dx.op.unary.f32(i32 84, float %4360)  ; DerivCoarseY(value)
  %4398 = call float @dx.op.unary.f32(i32 84, float %4361)  ; DerivCoarseY(value)
  %4399 = fcmp fast ole float %293, %4377
  %4400 = fmul fast float %4376, %4374
  %4401 = fcmp fast ole float %293, %4400
  %4402 = select i1 %4401, float %4361, float %4359
  %4403 = select i1 %4401, float %4359, float %4360
  %4404 = select i1 %4399, float %4360, float %4402
  %4405 = select i1 %4399, float %4361, float %4403
  %4406 = select i1 %4401, float %4395, float %4393
  %4407 = select i1 %4401, float %4393, float %4394
  %4408 = select i1 %4399, float %4394, float %4406
  %4409 = select i1 %4399, float %4395, float %4407
  %4410 = select i1 %4401, float %4398, float %4396
  %4411 = select i1 %4401, float %4396, float %4397
  %4412 = select i1 %4399, float %4397, float %4410
  %4413 = select i1 %4399, float %4398, float %4411
  %4414 = call float @dx.op.unary.f32(i32 27, float %4404)  ; Round_ni(value)
  %4415 = call float @dx.op.unary.f32(i32 27, float %4405)  ; Round_ni(value)
  %4416 = fptosi float %4414 to i32
  %4417 = fptosi float %4415 to i32
  %4418 = xor i32 %4417, %4416
  %4419 = sitofp i32 %4418 to float
  %4420 = fptosi float %4419 to i32
  %4421 = sitofp i32 %4420 to float
  %4422 = fmul fast float %4421, 0x3FE3C6EF40000000
  %4423 = frem fast float %4414, 2.560000e+02
  %4424 = frem fast float %4415, 2.560000e+02
  %4425 = fptoui float %4423 to i32
  %4426 = fptoui float %4424 to i32
  %4427 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4425, i32 %4426, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4428 = extractvalue %dx.types.ResRet.f32 %4427, 0
  %4429 = extractvalue %dx.types.ResRet.f32 %4427, 1
  %4430 = extractvalue %dx.types.ResRet.f32 %4427, 2
  %4431 = fadd fast float %4428, %4422
  %4432 = fadd fast float %4429, %4422
  %4433 = fadd fast float %4430, %4422
  %4434 = call float @dx.op.unary.f32(i32 22, float %4431)  ; Frc(value)
  %4435 = call float @dx.op.unary.f32(i32 22, float %4432)  ; Frc(value)
  %4436 = call float @dx.op.unary.f32(i32 22, float %4433)  ; Frc(value)
  %4437 = fmul fast float %4436, 0x401921FB60000000
  %4438 = call float @dx.op.unary.f32(i32 13, float %4437)  ; Sin(value)
  %4439 = call float @dx.op.unary.f32(i32 12, float %4437)  ; Cos(value)
  %4440 = fsub fast float -0.000000e+00, %4439
  %4441 = fmul fast float %4439, %4404
  %4442 = call float @dx.op.tertiary.f32(i32 46, float %4438, float %4405, float %4441)  ; FMad(a,b,c)
  %4443 = fmul fast float %4438, %4404
  %4444 = call float @dx.op.tertiary.f32(i32 46, float %4440, float %4405, float %4443)  ; FMad(a,b,c)
  %4445 = fadd fast float %4442, %4434
  %4446 = fadd fast float %4444, %4435
  %4447 = extractvalue %dx.types.CBufRet.f32 %4357, 3
  %4448 = bitcast float %4447 to i32
  %4449 = icmp eq i32 %4448, 0
  br i1 %4449, label %4488, label %4450

; <label>:4450                                    ; preds = %4353
  %4451 = add i32 %4448, 0
  %4452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4451, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4453 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4452, %dx.types.Handle %101, float %4445, float %4446, float undef, float undef, i32 0, i32 0, i32 undef, float %4408, float %4409, float undef, float %4412, float %4413, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4454 = extractvalue %dx.types.ResRet.f32 %4453, 0
  %4455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4456 = extractvalue %dx.types.CBufRet.f32 %4455, 1
  %4457 = extractvalue %dx.types.CBufRet.f32 %4455, 2
  %4458 = fsub fast float 1.000000e+00, %4347
  %4459 = call float @dx.op.binary.f32(i32 35, float %4458, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4460 = bitcast float %4347 to i32
  %4461 = sitofp i32 %4460 to float
  %4462 = fadd fast float %4461, 0xC1CFBF8940000000
  %4463 = fmul fast float %4457, %4462
  %4464 = fadd fast float %4463, 0x41CFBF8940000000
  %4465 = fptosi float %4464 to i32
  %4466 = bitcast i32 %4465 to float
  %4467 = bitcast float %4459 to i32
  %4468 = sitofp i32 %4467 to float
  %4469 = fadd fast float %4468, 0xC1CFBF8940000000
  %4470 = fmul fast float %4469, %4457
  %4471 = fadd fast float %4470, 0x41CFBF8940000000
  %4472 = fptosi float %4471 to i32
  %4473 = bitcast i32 %4472 to float
  %4474 = fmul fast float %4466, %4456
  %4475 = fmul fast float %4473, %4456
  %4476 = fsub fast float %4459, %4474
  %4477 = fadd fast float %4475, %4459
  %4478 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4479 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4480 = fsub fast float %4454, %4478
  %4481 = fsub fast float %4479, %4478
  %4482 = bitcast float %4481 to i32
  %4483 = sub nsw i32 2129859010, %4482
  %4484 = bitcast i32 %4483 to float
  %4485 = fmul fast float %4484, %4480
  %4486 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4487 = fcmp fast olt float %4486, 0x3F70101020000000
  br i1 %4487, label %4626, label %4488

; <label>:4488                                    ; preds = %4450, %4353
  %4489 = phi float [ %4486, %4450 ], [ %4347, %4353 ]
  %4490 = fmul fast float %4489, %4356
  %4491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4492 = extractvalue %dx.types.CBufRet.i32 %4491, 1
  %4493 = extractvalue %dx.types.CBufRet.i32 %4491, 0
  %4494 = add i32 %4493, 0
  %4495 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4494, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4496 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4495, %dx.types.Handle %100, float %4445, float %4446, float undef, float undef, i32 0, i32 0, i32 undef, float %4408, float %4409, float undef, float %4412, float %4413, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4497 = extractvalue %dx.types.ResRet.f32 %4496, 0
  %4498 = extractvalue %dx.types.ResRet.f32 %4496, 1
  %4499 = extractvalue %dx.types.ResRet.f32 %4496, 2
  %4500 = extractvalue %dx.types.ResRet.f32 %4496, 3
  %4501 = and i32 %4492, 255
  %4502 = uitofp i32 %4501 to float
  %4503 = lshr i32 %4492, 8
  %4504 = and i32 %4503, 255
  %4505 = uitofp i32 %4504 to float
  %4506 = fmul fast float %4500, %4502
  %4507 = fadd fast float %4506, %4505
  %4508 = fmul fast float %4507, 0x3F70101000000000
  %4509 = fadd fast float %4508, 0xBFB99999A0000000
  %4510 = call float @dx.op.unary.f32(i32 7, float %4509)  ; Saturate(value)
  %4511 = fmul fast float %4510, 0x3FF1C71C80000000
  %4512 = call float @dx.op.binary.f32(i32 36, float %4508, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4513 = fsub fast float 1.000000e+00, %4511
  %4514 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4515 = fmul fast float %4514, %4497
  %4516 = fmul fast float %4514, %4498
  %4517 = fmul fast float %4514, %4499
  %4518 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4519 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4520 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4521 = fmul fast float %4511, %4497
  %4522 = fmul fast float %4511, %4498
  %4523 = fmul fast float %4511, %4499
  %4524 = fadd fast float %4521, %4512
  %4525 = fadd fast float %4522, %4512
  %4526 = fadd fast float %4523, %4512
  %4527 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4528 = call float @dx.op.unary.f32(i32 7, float %4525)  ; Saturate(value)
  %4529 = call float @dx.op.unary.f32(i32 7, float %4526)  ; Saturate(value)
  %4530 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4531 = extractvalue %dx.types.CBufRet.i32 %4530, 3
  %4532 = extractvalue %dx.types.CBufRet.i32 %4530, 2
  %4533 = add i32 %4532, 0
  %4534 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4533, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4535 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4534, %dx.types.Handle %100, float %4445, float %4446, float undef, float undef, i32 0, i32 0, i32 undef, float %4408, float %4409, float undef, float %4412, float %4413, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4536 = extractvalue %dx.types.ResRet.f32 %4535, 0
  %4537 = extractvalue %dx.types.ResRet.f32 %4535, 1
  %4538 = extractvalue %dx.types.ResRet.f32 %4535, 2
  %4539 = extractvalue %dx.types.ResRet.f32 %4535, 3
  %4540 = and i32 %4531, 255
  %4541 = uitofp i32 %4540 to float
  %4542 = lshr i32 %4531, 8
  %4543 = and i32 %4542, 255
  %4544 = uitofp i32 %4543 to float
  %4545 = lshr i32 %4531, 16
  %4546 = and i32 %4545, 255
  %4547 = uitofp i32 %4546 to float
  %4548 = fmul fast float %4547, 0x3F70101000000000
  %4549 = fmul fast float %4536, %4541
  %4550 = fadd fast float %4549, %4544
  %4551 = fmul fast float %4550, 0x3F70101000000000
  %4552 = fadd fast float %4537, -5.000000e-01
  %4553 = fadd fast float %4539, -5.000000e-01
  %4554 = fmul fast float %4552, %4548
  %4555 = fmul fast float %4553, %4548
  %4556 = fadd fast float %4554, 5.000000e-01
  %4557 = fadd fast float %4555, 5.000000e-01
  %4558 = fmul fast float %4556, 2.000000e+00
  %4559 = fadd fast float %4558, -1.000000e+00
  %4560 = fmul fast float %4557, 2.000000e+00
  %4561 = fadd fast float %4560, -1.000000e+00
  %4562 = fadd fast float %4559, %4561
  %4563 = fmul fast float %4562, 5.000000e-01
  %4564 = fsub fast float %4559, %4561
  %4565 = fmul fast float %4564, 5.000000e-01
  %4566 = call float @dx.op.unary.f32(i32 6, float %4563)  ; FAbs(value)
  %4567 = fsub fast float 1.000000e+00, %4566
  %4568 = call float @dx.op.unary.f32(i32 6, float %4565)  ; FAbs(value)
  %4569 = fsub fast float %4567, %4568
  %4570 = call float @dx.op.dot3.f32(i32 55, float %4563, float %4565, float %4569, float %4563, float %4565, float %4569)  ; Dot3(ax,ay,az,bx,by,bz)
  %4571 = call float @dx.op.unary.f32(i32 25, float %4570)  ; Rsqrt(value)
  %4572 = fmul fast float %4563, %4571
  %4573 = fmul fast float %4565, %4571
  %4574 = select i1 %4401, i32 %4391, i32 %4392
  %4575 = select i1 %4399, i32 %4390, i32 %4574
  %4576 = sitofp i32 %4575 to float
  %4577 = fmul fast float %4569, %4576
  %4578 = fmul fast float %4577, %4571
  %4579 = select i1 %4401, float %4578, float %4573
  %4580 = select i1 %4401, float %4573, float %4578
  %4581 = select i1 %4399, float %4578, float %4572
  %4582 = select i1 %4399, float %4573, float %4579
  %4583 = select i1 %4399, float %4572, float %4580
  %4584 = fsub fast float %4518, %3951
  %4585 = fsub fast float %4519, %3952
  %4586 = fsub fast float %4520, %3953
  %4587 = fmul fast float %4584, %4490
  %4588 = fmul fast float %4585, %4490
  %4589 = fmul fast float %4586, %4490
  %4590 = fadd fast float %4587, %3951
  %4591 = fadd fast float %4588, %3952
  %4592 = fadd fast float %4589, %3953
  %4593 = fsub fast float %4527, %3936
  %4594 = fsub fast float %4528, %3937
  %4595 = fsub fast float %4529, %3938
  %4596 = fmul fast float %4593, %4490
  %4597 = fmul fast float %4594, %4490
  %4598 = fmul fast float %4595, %4490
  %4599 = fadd fast float %4596, %3936
  %4600 = fadd fast float %4597, %3937
  %4601 = fadd fast float %4598, %3938
  %4602 = fadd fast float %4581, %3870
  %4603 = fadd fast float %4582, %3871
  %4604 = fadd fast float %4583, %3872
  %4605 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4603, float %4604, float %4602, float %4603, float %4604)  ; Dot3(ax,ay,az,bx,by,bz)
  %4606 = call float @dx.op.unary.f32(i32 25, float %4605)  ; Rsqrt(value)
  %4607 = fmul fast float %4602, %4606
  %4608 = fmul fast float %4603, %4606
  %4609 = fmul fast float %4604, %4606
  %4610 = fsub fast float %4607, %3870
  %4611 = fsub fast float %4608, %3871
  %4612 = fsub fast float %4609, %3872
  %4613 = fmul fast float %4610, %4490
  %4614 = fmul fast float %4611, %4490
  %4615 = fmul fast float %4612, %4490
  %4616 = fadd fast float %4613, %3870
  %4617 = fadd fast float %4614, %3871
  %4618 = fadd fast float %4615, %3872
  %4619 = call float @dx.op.binary.f32(i32 36, float %3882, float %4538)  ; FMin(a,b)
  %4620 = fsub fast float %4619, %3882
  %4621 = fmul fast float %4620, %4490
  %4622 = fadd fast float %4621, %3882
  %4623 = fsub fast float %4551, %3939
  %4624 = fmul fast float %4623, %4490
  %4625 = fadd fast float %4624, %3939
  br label %4626

; <label>:4626                                    ; preds = %4488, %4450, %4352
  %4627 = phi float [ %4599, %4488 ], [ %3936, %4450 ], [ %3936, %4352 ]
  %4628 = phi float [ %4600, %4488 ], [ %3937, %4450 ], [ %3937, %4352 ]
  %4629 = phi float [ %4601, %4488 ], [ %3938, %4450 ], [ %3938, %4352 ]
  %4630 = phi float [ %4590, %4488 ], [ %3951, %4450 ], [ %3951, %4352 ]
  %4631 = phi float [ %4591, %4488 ], [ %3952, %4450 ], [ %3952, %4352 ]
  %4632 = phi float [ %4592, %4488 ], [ %3953, %4450 ], [ %3953, %4352 ]
  %4633 = phi float [ %4616, %4488 ], [ %3870, %4450 ], [ %3870, %4352 ]
  %4634 = phi float [ %4617, %4488 ], [ %3871, %4450 ], [ %3871, %4352 ]
  %4635 = phi float [ %4618, %4488 ], [ %3872, %4450 ], [ %3872, %4352 ]
  %4636 = phi float [ %4625, %4488 ], [ %3939, %4450 ], [ %3939, %4352 ]
  %4637 = phi float [ %4622, %4488 ], [ %3882, %4450 ], [ %3882, %4352 ]
  br i1 %4350, label %4638, label %4911

; <label>:4638                                    ; preds = %4626
  %4639 = call float @dx.op.unary.f32(i32 23, float %4637)  ; Log(value)
  %4640 = fmul fast float %4639, 4.000000e+00
  %4641 = call float @dx.op.unary.f32(i32 21, float %4640)  ; Exp(value)
  %4642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4643 = extractvalue %dx.types.CBufRet.f32 %4642, 0
  %4644 = fmul fast float %4643, %56
  %4645 = fmul fast float %4643, %57
  %4646 = fmul fast float %4643, %58
  %4647 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4648 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4649 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4650 = call float @dx.op.unary.f32(i32 23, float %4647)  ; Log(value)
  %4651 = call float @dx.op.unary.f32(i32 23, float %4648)  ; Log(value)
  %4652 = call float @dx.op.unary.f32(i32 23, float %4649)  ; Log(value)
  %4653 = fmul fast float %4650, 4.000000e+00
  %4654 = fmul fast float %4651, 4.000000e+00
  %4655 = fmul fast float %4652, 4.000000e+00
  %4656 = call float @dx.op.unary.f32(i32 21, float %4653)  ; Exp(value)
  %4657 = call float @dx.op.unary.f32(i32 21, float %4654)  ; Exp(value)
  %4658 = call float @dx.op.unary.f32(i32 21, float %4655)  ; Exp(value)
  %4659 = fadd fast float %4657, %4656
  %4660 = fadd fast float %4659, %4658
  %4661 = fdiv fast float 1.000000e+00, %4660
  %4662 = fmul fast float %4661, %4656
  %4663 = fcmp fast ogt float %65, 0.000000e+00
  %4664 = fcmp fast ogt float %66, 0.000000e+00
  %4665 = fcmp fast ogt float %67, 0.000000e+00
  %4666 = fcmp fast olt float %65, 0.000000e+00
  %4667 = fcmp fast olt float %66, 0.000000e+00
  %4668 = fcmp fast olt float %67, 0.000000e+00
  %4669 = zext i1 %4663 to i32
  %4670 = zext i1 %4664 to i32
  %4671 = zext i1 %4665 to i32
  %4672 = zext i1 %4666 to i32
  %4673 = zext i1 %4667 to i32
  %4674 = zext i1 %4668 to i32
  %4675 = sub nsw i32 %4669, %4672
  %4676 = sub nsw i32 %4670, %4673
  %4677 = sub nsw i32 %4671, %4674
  %4678 = call float @dx.op.unary.f32(i32 83, float %4644)  ; DerivCoarseX(value)
  %4679 = call float @dx.op.unary.f32(i32 83, float %4645)  ; DerivCoarseX(value)
  %4680 = call float @dx.op.unary.f32(i32 83, float %4646)  ; DerivCoarseX(value)
  %4681 = call float @dx.op.unary.f32(i32 84, float %4644)  ; DerivCoarseY(value)
  %4682 = call float @dx.op.unary.f32(i32 84, float %4645)  ; DerivCoarseY(value)
  %4683 = call float @dx.op.unary.f32(i32 84, float %4646)  ; DerivCoarseY(value)
  %4684 = fcmp fast ole float %293, %4662
  %4685 = fmul fast float %4661, %4659
  %4686 = fcmp fast ole float %293, %4685
  %4687 = select i1 %4686, float %4646, float %4644
  %4688 = select i1 %4686, float %4644, float %4645
  %4689 = select i1 %4684, float %4645, float %4687
  %4690 = select i1 %4684, float %4646, float %4688
  %4691 = select i1 %4686, float %4680, float %4678
  %4692 = select i1 %4686, float %4678, float %4679
  %4693 = select i1 %4684, float %4679, float %4691
  %4694 = select i1 %4684, float %4680, float %4692
  %4695 = select i1 %4686, float %4683, float %4681
  %4696 = select i1 %4686, float %4681, float %4682
  %4697 = select i1 %4684, float %4682, float %4695
  %4698 = select i1 %4684, float %4683, float %4696
  %4699 = call float @dx.op.unary.f32(i32 27, float %4689)  ; Round_ni(value)
  %4700 = call float @dx.op.unary.f32(i32 27, float %4690)  ; Round_ni(value)
  %4701 = fptosi float %4699 to i32
  %4702 = fptosi float %4700 to i32
  %4703 = xor i32 %4702, %4701
  %4704 = sitofp i32 %4703 to float
  %4705 = fptosi float %4704 to i32
  %4706 = sitofp i32 %4705 to float
  %4707 = fmul fast float %4706, 0x3FE3C6EF40000000
  %4708 = frem fast float %4699, 2.560000e+02
  %4709 = frem fast float %4700, 2.560000e+02
  %4710 = fptoui float %4708 to i32
  %4711 = fptoui float %4709 to i32
  %4712 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4710, i32 %4711, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4713 = extractvalue %dx.types.ResRet.f32 %4712, 0
  %4714 = extractvalue %dx.types.ResRet.f32 %4712, 1
  %4715 = extractvalue %dx.types.ResRet.f32 %4712, 2
  %4716 = fadd fast float %4713, %4707
  %4717 = fadd fast float %4714, %4707
  %4718 = fadd fast float %4715, %4707
  %4719 = call float @dx.op.unary.f32(i32 22, float %4716)  ; Frc(value)
  %4720 = call float @dx.op.unary.f32(i32 22, float %4717)  ; Frc(value)
  %4721 = call float @dx.op.unary.f32(i32 22, float %4718)  ; Frc(value)
  %4722 = fmul fast float %4721, 0x401921FB60000000
  %4723 = call float @dx.op.unary.f32(i32 13, float %4722)  ; Sin(value)
  %4724 = call float @dx.op.unary.f32(i32 12, float %4722)  ; Cos(value)
  %4725 = fsub fast float -0.000000e+00, %4724
  %4726 = fmul fast float %4724, %4689
  %4727 = call float @dx.op.tertiary.f32(i32 46, float %4723, float %4690, float %4726)  ; FMad(a,b,c)
  %4728 = fmul fast float %4723, %4689
  %4729 = call float @dx.op.tertiary.f32(i32 46, float %4725, float %4690, float %4728)  ; FMad(a,b,c)
  %4730 = fadd fast float %4727, %4719
  %4731 = fadd fast float %4729, %4720
  %4732 = extractvalue %dx.types.CBufRet.f32 %4642, 3
  %4733 = bitcast float %4732 to i32
  %4734 = icmp eq i32 %4733, 0
  br i1 %4734, label %4773, label %4735

; <label>:4735                                    ; preds = %4638
  %4736 = add i32 %4733, 0
  %4737 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4736, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4738 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4737, %dx.types.Handle %101, float %4730, float %4731, float undef, float undef, i32 0, i32 0, i32 undef, float %4693, float %4694, float undef, float %4697, float %4698, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4739 = extractvalue %dx.types.ResRet.f32 %4738, 0
  %4740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4741 = extractvalue %dx.types.CBufRet.f32 %4740, 1
  %4742 = extractvalue %dx.types.CBufRet.f32 %4740, 2
  %4743 = fsub fast float 1.000000e+00, %4348
  %4744 = call float @dx.op.binary.f32(i32 35, float %4743, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4745 = bitcast float %4348 to i32
  %4746 = sitofp i32 %4745 to float
  %4747 = fadd fast float %4746, 0xC1CFBF8940000000
  %4748 = fmul fast float %4742, %4747
  %4749 = fadd fast float %4748, 0x41CFBF8940000000
  %4750 = fptosi float %4749 to i32
  %4751 = bitcast i32 %4750 to float
  %4752 = bitcast float %4744 to i32
  %4753 = sitofp i32 %4752 to float
  %4754 = fadd fast float %4753, 0xC1CFBF8940000000
  %4755 = fmul fast float %4754, %4742
  %4756 = fadd fast float %4755, 0x41CFBF8940000000
  %4757 = fptosi float %4756 to i32
  %4758 = bitcast i32 %4757 to float
  %4759 = fmul fast float %4751, %4741
  %4760 = fmul fast float %4758, %4741
  %4761 = fsub fast float %4744, %4759
  %4762 = fadd fast float %4760, %4744
  %4763 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4764 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  %4765 = fsub fast float %4739, %4763
  %4766 = fsub fast float %4764, %4763
  %4767 = bitcast float %4766 to i32
  %4768 = sub nsw i32 2129859010, %4767
  %4769 = bitcast i32 %4768 to float
  %4770 = fmul fast float %4769, %4765
  %4771 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4772 = fcmp fast olt float %4771, 0x3F70101020000000
  br i1 %4772, label %4911, label %4773

; <label>:4773                                    ; preds = %4735, %4638
  %4774 = phi float [ %4771, %4735 ], [ %4348, %4638 ]
  %4775 = fmul fast float %4774, %4641
  %4776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4777 = extractvalue %dx.types.CBufRet.i32 %4776, 1
  %4778 = extractvalue %dx.types.CBufRet.i32 %4776, 0
  %4779 = add i32 %4778, 0
  %4780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4779, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4781 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4780, %dx.types.Handle %100, float %4730, float %4731, float undef, float undef, i32 0, i32 0, i32 undef, float %4693, float %4694, float undef, float %4697, float %4698, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4782 = extractvalue %dx.types.ResRet.f32 %4781, 0
  %4783 = extractvalue %dx.types.ResRet.f32 %4781, 1
  %4784 = extractvalue %dx.types.ResRet.f32 %4781, 2
  %4785 = extractvalue %dx.types.ResRet.f32 %4781, 3
  %4786 = and i32 %4777, 255
  %4787 = uitofp i32 %4786 to float
  %4788 = lshr i32 %4777, 8
  %4789 = and i32 %4788, 255
  %4790 = uitofp i32 %4789 to float
  %4791 = fmul fast float %4785, %4787
  %4792 = fadd fast float %4791, %4790
  %4793 = fmul fast float %4792, 0x3F70101000000000
  %4794 = fadd fast float %4793, 0xBFB99999A0000000
  %4795 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4796 = fmul fast float %4795, 0x3FF1C71C80000000
  %4797 = call float @dx.op.binary.f32(i32 36, float %4793, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4798 = fsub fast float 1.000000e+00, %4796
  %4799 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4800 = fmul fast float %4799, %4782
  %4801 = fmul fast float %4799, %4783
  %4802 = fmul fast float %4799, %4784
  %4803 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4804 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4805 = call float @dx.op.unary.f32(i32 7, float %4802)  ; Saturate(value)
  %4806 = fmul fast float %4796, %4782
  %4807 = fmul fast float %4796, %4783
  %4808 = fmul fast float %4796, %4784
  %4809 = fadd fast float %4806, %4797
  %4810 = fadd fast float %4807, %4797
  %4811 = fadd fast float %4808, %4797
  %4812 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4813 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4814 = call float @dx.op.unary.f32(i32 7, float %4811)  ; Saturate(value)
  %4815 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4816 = extractvalue %dx.types.CBufRet.i32 %4815, 3
  %4817 = extractvalue %dx.types.CBufRet.i32 %4815, 2
  %4818 = add i32 %4817, 0
  %4819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4818, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4820 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4819, %dx.types.Handle %100, float %4730, float %4731, float undef, float undef, i32 0, i32 0, i32 undef, float %4693, float %4694, float undef, float %4697, float %4698, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4821 = extractvalue %dx.types.ResRet.f32 %4820, 0
  %4822 = extractvalue %dx.types.ResRet.f32 %4820, 1
  %4823 = extractvalue %dx.types.ResRet.f32 %4820, 2
  %4824 = extractvalue %dx.types.ResRet.f32 %4820, 3
  %4825 = and i32 %4816, 255
  %4826 = uitofp i32 %4825 to float
  %4827 = lshr i32 %4816, 8
  %4828 = and i32 %4827, 255
  %4829 = uitofp i32 %4828 to float
  %4830 = lshr i32 %4816, 16
  %4831 = and i32 %4830, 255
  %4832 = uitofp i32 %4831 to float
  %4833 = fmul fast float %4832, 0x3F70101000000000
  %4834 = fmul fast float %4821, %4826
  %4835 = fadd fast float %4834, %4829
  %4836 = fmul fast float %4835, 0x3F70101000000000
  %4837 = fadd fast float %4822, -5.000000e-01
  %4838 = fadd fast float %4824, -5.000000e-01
  %4839 = fmul fast float %4837, %4833
  %4840 = fmul fast float %4838, %4833
  %4841 = fadd fast float %4839, 5.000000e-01
  %4842 = fadd fast float %4840, 5.000000e-01
  %4843 = fmul fast float %4841, 2.000000e+00
  %4844 = fadd fast float %4843, -1.000000e+00
  %4845 = fmul fast float %4842, 2.000000e+00
  %4846 = fadd fast float %4845, -1.000000e+00
  %4847 = fadd fast float %4844, %4846
  %4848 = fmul fast float %4847, 5.000000e-01
  %4849 = fsub fast float %4844, %4846
  %4850 = fmul fast float %4849, 5.000000e-01
  %4851 = call float @dx.op.unary.f32(i32 6, float %4848)  ; FAbs(value)
  %4852 = fsub fast float 1.000000e+00, %4851
  %4853 = call float @dx.op.unary.f32(i32 6, float %4850)  ; FAbs(value)
  %4854 = fsub fast float %4852, %4853
  %4855 = call float @dx.op.dot3.f32(i32 55, float %4848, float %4850, float %4854, float %4848, float %4850, float %4854)  ; Dot3(ax,ay,az,bx,by,bz)
  %4856 = call float @dx.op.unary.f32(i32 25, float %4855)  ; Rsqrt(value)
  %4857 = fmul fast float %4848, %4856
  %4858 = fmul fast float %4850, %4856
  %4859 = select i1 %4686, i32 %4676, i32 %4677
  %4860 = select i1 %4684, i32 %4675, i32 %4859
  %4861 = sitofp i32 %4860 to float
  %4862 = fmul fast float %4854, %4861
  %4863 = fmul fast float %4862, %4856
  %4864 = select i1 %4686, float %4863, float %4858
  %4865 = select i1 %4686, float %4858, float %4863
  %4866 = select i1 %4684, float %4863, float %4857
  %4867 = select i1 %4684, float %4858, float %4864
  %4868 = select i1 %4684, float %4857, float %4865
  %4869 = fsub fast float %4803, %4630
  %4870 = fsub fast float %4804, %4631
  %4871 = fsub fast float %4805, %4632
  %4872 = fmul fast float %4869, %4775
  %4873 = fmul fast float %4870, %4775
  %4874 = fmul fast float %4871, %4775
  %4875 = fadd fast float %4872, %4630
  %4876 = fadd fast float %4873, %4631
  %4877 = fadd fast float %4874, %4632
  %4878 = fsub fast float %4812, %4627
  %4879 = fsub fast float %4813, %4628
  %4880 = fsub fast float %4814, %4629
  %4881 = fmul fast float %4878, %4775
  %4882 = fmul fast float %4879, %4775
  %4883 = fmul fast float %4880, %4775
  %4884 = fadd fast float %4881, %4627
  %4885 = fadd fast float %4882, %4628
  %4886 = fadd fast float %4883, %4629
  %4887 = fadd fast float %4866, %4633
  %4888 = fadd fast float %4867, %4634
  %4889 = fadd fast float %4868, %4635
  %4890 = call float @dx.op.dot3.f32(i32 55, float %4887, float %4888, float %4889, float %4887, float %4888, float %4889)  ; Dot3(ax,ay,az,bx,by,bz)
  %4891 = call float @dx.op.unary.f32(i32 25, float %4890)  ; Rsqrt(value)
  %4892 = fmul fast float %4887, %4891
  %4893 = fmul fast float %4888, %4891
  %4894 = fmul fast float %4889, %4891
  %4895 = fsub fast float %4892, %4633
  %4896 = fsub fast float %4893, %4634
  %4897 = fsub fast float %4894, %4635
  %4898 = fmul fast float %4895, %4775
  %4899 = fmul fast float %4896, %4775
  %4900 = fmul fast float %4897, %4775
  %4901 = fadd fast float %4898, %4633
  %4902 = fadd fast float %4899, %4634
  %4903 = fadd fast float %4900, %4635
  %4904 = call float @dx.op.binary.f32(i32 36, float %4637, float %4823)  ; FMin(a,b)
  %4905 = fsub fast float %4904, %4637
  %4906 = fmul fast float %4905, %4775
  %4907 = fadd fast float %4906, %4637
  %4908 = fsub fast float %4836, %4636
  %4909 = fmul fast float %4908, %4775
  %4910 = fadd fast float %4909, %4636
  br label %4911

; <label>:4911                                    ; preds = %4773, %4735, %4626, %4342
  %4912 = phi float [ %4884, %4773 ], [ %4627, %4735 ], [ %4627, %4626 ], [ %3936, %4342 ]
  %4913 = phi float [ %4885, %4773 ], [ %4628, %4735 ], [ %4628, %4626 ], [ %3937, %4342 ]
  %4914 = phi float [ %4886, %4773 ], [ %4629, %4735 ], [ %4629, %4626 ], [ %3938, %4342 ]
  %4915 = phi float [ %4875, %4773 ], [ %4630, %4735 ], [ %4630, %4626 ], [ %3951, %4342 ]
  %4916 = phi float [ %4876, %4773 ], [ %4631, %4735 ], [ %4631, %4626 ], [ %3952, %4342 ]
  %4917 = phi float [ %4877, %4773 ], [ %4632, %4735 ], [ %4632, %4626 ], [ %3953, %4342 ]
  %4918 = phi float [ %4901, %4773 ], [ %4633, %4735 ], [ %4633, %4626 ], [ %3870, %4342 ]
  %4919 = phi float [ %4902, %4773 ], [ %4634, %4735 ], [ %4634, %4626 ], [ %3871, %4342 ]
  %4920 = phi float [ %4903, %4773 ], [ %4635, %4735 ], [ %4635, %4626 ], [ %3872, %4342 ]
  %4921 = phi float [ %4910, %4773 ], [ %4636, %4735 ], [ %4636, %4626 ], [ %3939, %4342 ]
  %4922 = phi float [ %4907, %4773 ], [ %4637, %4735 ], [ %4637, %4626 ], [ %3882, %4342 ]
  %4923 = fcmp fast une float %4346, 0.000000e+00
  %4924 = fsub fast float -0.000000e+00, %211
  %4925 = fsub fast float -0.000000e+00, %212
  %4926 = fsub fast float -0.000000e+00, %213
  br i1 %4923, label %4927, label %5088

; <label>:4927                                    ; preds = %4911
  %4928 = call float @dx.op.dot3.f32(i32 55, float %4924, float %4925, float %4926, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4929 = fmul fast float %4346, 2.500000e+00
  %4930 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4931 = fmul fast float %4346, 0x4013FFFFE0000000
  %4932 = fadd fast float %4931, 0xBFFFFFFFE0000000
  %4933 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4934 = fmul fast float %4346, 0x4004000020000000
  %4935 = fadd fast float %4934, 0xBFF8000040000000
  %4936 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4937 = fmul fast float %3918, 1.000000e+01
  %4938 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4939 = fmul fast float %4938, 2.000000e+00
  %4940 = fsub fast float 3.000000e+00, %4939
  %4941 = fmul fast float %4938, %4938
  %4942 = fmul fast float %4941, %4940
  %4943 = fsub fast float 1.000000e+00, %4942
  %4944 = fsub fast float 0x3FE3333340000000, %4921
  %4945 = fmul fast float %4944, 0x400AAAAAA0000000
  %4946 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4947 = fmul fast float %4943, %4946
  %4948 = fmul fast float %4915, 0x3FEA2B8620000000
  %4949 = fmul fast float %4916, 0x3FEA2B8620000000
  %4950 = fmul fast float %4917, 0x3FEA2B8620000000
  %4951 = fadd fast float %4948, 0x3FC81DFBA0000000
  %4952 = fmul fast float %4951, %4915
  %4953 = fadd fast float %4952, 0x3F910E6020000000
  %4954 = fadd fast float %4949, 0x3FC81DFBA0000000
  %4955 = fmul fast float %4954, %4916
  %4956 = fadd fast float %4955, 0x3F910E6020000000
  %4957 = fadd fast float %4950, 0x3FC81DFBA0000000
  %4958 = fmul fast float %4957, %4917
  %4959 = fadd fast float %4958, 0x3F910E6020000000
  %4960 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %4961 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %4962 = call float @dx.op.unary.f32(i32 7, float %4959)  ; Saturate(value)
  %4963 = fsub fast float %4960, %4915
  %4964 = fsub fast float %4961, %4916
  %4965 = fsub fast float %4962, %4917
  %4966 = fmul fast float %4963, %4930
  %4967 = fmul fast float %4966, %4947
  %4968 = fmul fast float %4964, %4930
  %4969 = fmul fast float %4968, %4947
  %4970 = fmul fast float %4965, %4930
  %4971 = fmul fast float %4970, %4947
  %4972 = fadd fast float %4967, %4915
  %4973 = fadd fast float %4969, %4916
  %4974 = fadd fast float %4971, %4917
  %4975 = fmul fast float %4922, %4922
  %4976 = fmul fast float %4975, %4975
  %4977 = fadd fast float %4933, 1.000000e+00
  %4978 = fsub fast float %4977, %4947
  %4979 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4980 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4981 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4982 = fsub fast float 1.000000e+00, %4976
  %4983 = call float @dx.op.binary.f32(i32 36, float %4979, float %4982)  ; FMin(a,b)
  %4984 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4985 = call float @dx.op.binary.f32(i32 35, float %4983, float %4984)  ; FMax(a,b)
  %4986 = fadd fast float %4981, 0xBFE4CCCCC0000000
  %4987 = fmul fast float %4986, 0x4006DB6DA0000000
  %4988 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4989 = fmul fast float %4988, 2.000000e+00
  %4990 = fsub fast float 3.000000e+00, %4989
  %4991 = bitcast float %4912 to i32
  %4992 = ashr i32 %4991, 1
  %4993 = add nsw i32 %4992, 532487669
  %4994 = bitcast i32 %4993 to float
  %4995 = fsub fast float 1.000000e+00, %4994
  %4996 = bitcast float %4995 to i32
  %4997 = sub nsw i32 2129859010, %4996
  %4998 = bitcast i32 %4997 to float
  %4999 = fmul fast float %4998, 2.000000e+00
  %5000 = bitcast float %4913 to i32
  %5001 = ashr i32 %5000, 1
  %5002 = add nsw i32 %5001, 532487669
  %5003 = bitcast i32 %5002 to float
  %5004 = fsub fast float 1.000000e+00, %5003
  %5005 = bitcast float %5004 to i32
  %5006 = sub nsw i32 2129859010, %5005
  %5007 = bitcast i32 %5006 to float
  %5008 = fmul fast float %5007, 2.000000e+00
  %5009 = bitcast float %4914 to i32
  %5010 = ashr i32 %5009, 1
  %5011 = add nsw i32 %5010, 532487669
  %5012 = bitcast i32 %5011 to float
  %5013 = fsub fast float 1.000000e+00, %5012
  %5014 = bitcast float %5013 to i32
  %5015 = sub nsw i32 2129859010, %5014
  %5016 = bitcast i32 %5015 to float
  %5017 = fmul fast float %5016, 2.000000e+00
  %5018 = fsub fast float 0x4002A9FBE0000000, %4999
  %5019 = fadd fast float %4999, 0x3FD54FDF00000000
  %5020 = bitcast float %5019 to i32
  %5021 = sub nsw i32 2129859010, %5020
  %5022 = bitcast i32 %5021 to float
  %5023 = fmul fast float %5022, %5018
  %5024 = fmul fast float %5023, %5023
  %5025 = fsub fast float 0x4002A9FBE0000000, %5008
  %5026 = fadd fast float %5008, 0x3FD54FDF00000000
  %5027 = bitcast float %5026 to i32
  %5028 = sub nsw i32 2129859010, %5027
  %5029 = bitcast i32 %5028 to float
  %5030 = fmul fast float %5029, %5025
  %5031 = fmul fast float %5030, %5030
  %5032 = fsub fast float 0x4002A9FBE0000000, %5017
  %5033 = fadd fast float %5017, 0x3FD54FDF00000000
  %5034 = bitcast float %5033 to i32
  %5035 = sub nsw i32 2129859010, %5034
  %5036 = bitcast i32 %5035 to float
  %5037 = fmul fast float %5036, %5032
  %5038 = fmul fast float %5037, %5037
  %5039 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5024)  ; FMax(a,b)
  %5040 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5031)  ; FMax(a,b)
  %5041 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5038)  ; FMax(a,b)
  %5042 = fsub fast float 1.000000e+00, %4928
  %5043 = fadd fast float %5042, %4943
  %5044 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  %5045 = fsub fast float 1.000000e+00, %4327
  %5046 = fmul fast float %4985, %5045
  %5047 = fmul fast float %4988, %4988
  %5048 = fmul fast float %5047, %5046
  %5049 = fmul fast float %5048, %4990
  %5050 = fmul fast float %5045, 0xBFE99999A0000000
  %5051 = fmul fast float %5050, %4930
  %5052 = fmul fast float %5051, %4947
  %5053 = fadd fast float %5052, 1.000000e+00
  %5054 = fadd fast float %4921, -1.000000e+00
  %5055 = fmul fast float %5053, %5054
  %5056 = fadd fast float %5055, 1.000000e+00
  %5057 = fsub fast float %5039, %4912
  %5058 = fsub fast float %5040, %4913
  %5059 = fsub fast float %5041, %4914
  %5060 = fmul fast float %5049, %5057
  %5061 = fmul fast float %5049, %5058
  %5062 = fmul fast float %5049, %5059
  %5063 = fadd fast float %5060, %4912
  %5064 = fadd fast float %5061, %4913
  %5065 = fadd fast float %5062, %4914
  %5066 = fsub fast float %111, %4918
  %5067 = fsub fast float %112, %4919
  %5068 = fsub fast float %113, %4920
  %5069 = fmul fast float %5049, %5066
  %5070 = fmul fast float %5049, %5067
  %5071 = fmul fast float %5049, %5068
  %5072 = fadd fast float %5069, %4918
  %5073 = fadd fast float %5070, %4919
  %5074 = fadd fast float %5071, %4920
  %5075 = fmul fast float %5049, %5044
  %5076 = call float @dx.op.unary.f32(i32 7, float %5056)  ; Saturate(value)
  %5077 = fsub fast float 1.000000e+00, %5076
  %5078 = fmul fast float %5075, %5077
  %5079 = fadd fast float %5078, %5076
  %5080 = fsub fast float 1.000000e+00, %4922
  %5081 = fmul fast float %5049, %5080
  %5082 = fadd fast float %5081, %4922
  %5083 = call float @dx.op.dot3.f32(i32 55, float %5072, float %5073, float %5074, float %5072, float %5073, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %5084 = call float @dx.op.unary.f32(i32 25, float %5083)  ; Rsqrt(value)
  %5085 = fmul fast float %5072, %5084
  %5086 = fmul fast float %5073, %5084
  %5087 = fmul fast float %5074, %5084
  br label %5088

; <label>:5088                                    ; preds = %4927, %4911
  %5089 = phi float [ %5063, %4927 ], [ %4912, %4911 ]
  %5090 = phi float [ %5064, %4927 ], [ %4913, %4911 ]
  %5091 = phi float [ %5065, %4927 ], [ %4914, %4911 ]
  %5092 = phi float [ %4972, %4927 ], [ %4915, %4911 ]
  %5093 = phi float [ %4973, %4927 ], [ %4916, %4911 ]
  %5094 = phi float [ %4974, %4927 ], [ %4917, %4911 ]
  %5095 = phi float [ %5085, %4927 ], [ %4918, %4911 ]
  %5096 = phi float [ %5086, %4927 ], [ %4919, %4911 ]
  %5097 = phi float [ %5087, %4927 ], [ %4920, %4911 ]
  %5098 = phi float [ %5079, %4927 ], [ %4921, %4911 ]
  %5099 = phi float [ %5082, %4927 ], [ %4922, %4911 ]
  %5100 = fsub fast float -0.000000e+00, %193
  %5101 = select i1 %282, float 0.000000e+00, float %5091
  %5102 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5096, float %5097, float %4924, float %4925, float %4926)  ; Dot3(ax,ay,az,bx,by,bz)
  %5103 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5104 = call float @dx.op.dot3.f32(i32 55, float %211, float %212, float %213, float %5095, float %5096, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %5105 = fmul fast float %5104, 2.000000e+00
  %5106 = fmul fast float %5105, %5095
  %5107 = fmul fast float %5105, %5096
  %5108 = fmul fast float %5105, %5097
  %5109 = fsub fast float %211, %5106
  %5110 = fsub fast float %212, %5107
  %5111 = fsub fast float %213, %5108
  %5112 = call float @dx.op.binary.f32(i32 36, float %5099, float 1.000000e+00)  ; FMin(a,b)
  %5113 = fsub fast float 1.000000e+00, %5099
  %5114 = bitcast float %5113 to i32
  %5115 = sub nsw i32 2129859010, %5114
  %5116 = bitcast i32 %5115 to float
  %5117 = fsub fast float 1.000000e+00, %75
  %5118 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5119 = call float @dx.op.binary.f32(i32 35, float %5118, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5120 = fdiv fast float %5117, %5119
  %5121 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5096, float %5097, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5122 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5123 = fmul fast float %5122, 5.000000e-01
  %5124 = fadd fast float %5123, 5.000000e-01
  %5125 = fmul fast float %5124, %75
  %5126 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5096, float %5097, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5127 = call float @dx.op.unary.f32(i32 7, float %5126)  ; Saturate(value)
  %5128 = fmul fast float %5127, %5120
  %5129 = fadd fast float %5125, %5128
  %5130 = fsub fast float 5.000000e-01, %5123
  %5131 = fmul fast float %5130, %5092
  %5132 = fmul fast float %5130, %5093
  %5133 = fmul fast float %5130, %5094
  %5134 = fadd fast float %5129, %5131
  %5135 = fadd fast float %5129, %5132
  %5136 = fadd fast float %5129, %5133
  %5137 = call float @dx.op.dot3.f32(i32 55, float %5109, float %5110, float %5111, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5138 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5139 = fmul fast float %5138, 5.000000e-01
  %5140 = fadd fast float %5139, 5.000000e-01
  %5141 = fmul fast float %5140, %75
  %5142 = call float @dx.op.dot3.f32(i32 55, float %5109, float %5110, float %5111, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5143 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5144 = fmul fast float %5143, %5120
  %5145 = fadd fast float %5141, %5144
  %5146 = fsub fast float 5.000000e-01, %5139
  %5147 = fmul fast float %5146, %5092
  %5148 = fmul fast float %5146, %5093
  %5149 = fmul fast float %5146, %5094
  %5150 = fadd fast float %5145, %5147
  %5151 = fadd fast float %5145, %5148
  %5152 = fadd fast float %5145, %5149
  %5153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5153, 0
  %5155 = call float @dx.op.binary.f32(i32 36, float %5092, float %5154)  ; FMin(a,b)
  %5156 = fsub fast float 1.000000e+00, %5112
  %5157 = fmul fast float %5155, %5156
  %5158 = fsub fast float 1.000000e+00, %5157
  %5159 = bitcast float %5158 to i32
  %5160 = sub nsw i32 2129859010, %5159
  %5161 = bitcast i32 %5160 to float
  %5162 = call float @dx.op.binary.f32(i32 36, float %5093, float %5154)  ; FMin(a,b)
  %5163 = fmul fast float %5162, %5156
  %5164 = fsub fast float 1.000000e+00, %5163
  %5165 = bitcast float %5164 to i32
  %5166 = sub nsw i32 2129859010, %5165
  %5167 = bitcast i32 %5166 to float
  %5168 = call float @dx.op.binary.f32(i32 36, float %5094, float %5154)  ; FMin(a,b)
  %5169 = fmul fast float %5168, %5156
  %5170 = fsub fast float 1.000000e+00, %5169
  %5171 = bitcast float %5170 to i32
  %5172 = sub nsw i32 2129859010, %5171
  %5173 = bitcast i32 %5172 to float
  %5174 = fmul fast float %5112, %76
  %5175 = fmul fast float %5174, %5134
  %5176 = fmul fast float %5175, %5161
  %5177 = fmul fast float %5112, %77
  %5178 = fmul fast float %5177, %5135
  %5179 = fmul fast float %5178, %5167
  %5180 = fmul fast float %5112, %78
  %5181 = fmul fast float %5180, %5136
  %5182 = fmul fast float %5181, %5173
  %5183 = call float @dx.op.binary.f32(i32 36, float %5089, float %5154)  ; FMin(a,b)
  %5184 = fmul fast float %5183, %5156
  %5185 = fsub fast float 1.000000e+00, %5184
  %5186 = bitcast float %5185 to i32
  %5187 = sub nsw i32 2129859010, %5186
  %5188 = bitcast i32 %5187 to float
  %5189 = call float @dx.op.binary.f32(i32 36, float %5090, float %5154)  ; FMin(a,b)
  %5190 = fmul fast float %5189, %5156
  %5191 = fsub fast float 1.000000e+00, %5190
  %5192 = bitcast float %5191 to i32
  %5193 = sub nsw i32 2129859010, %5192
  %5194 = bitcast i32 %5193 to float
  %5195 = call float @dx.op.binary.f32(i32 36, float %5101, float %5154)  ; FMin(a,b)
  %5196 = fmul fast float %5195, %5156
  %5197 = fsub fast float 1.000000e+00, %5196
  %5198 = bitcast float %5197 to i32
  %5199 = sub nsw i32 2129859010, %5198
  %5200 = bitcast i32 %5199 to float
  %5201 = fmul fast float %5174, %5150
  %5202 = fmul fast float %5201, %5188
  %5203 = fmul fast float %5177, %5151
  %5204 = fmul fast float %5203, %5194
  %5205 = fmul fast float %5180, %5152
  %5206 = fmul fast float %5205, %5200
  %5207 = call float @dx.op.dot3.f32(i32 55, float %5176, float %5179, float %5182, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5208 = select i1 %282, float 0.000000e+00, float %5176
  %5209 = select i1 %282, float %5207, float %5179
  %5210 = select i1 %282, float 0.000000e+00, float %5182
  %5211 = call float @dx.op.dot3.f32(i32 55, float %5202, float %5204, float %5206, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5212 = select i1 %282, float 0.000000e+00, float %5202
  %5213 = select i1 %282, float %5211, float %5204
  %5214 = select i1 %282, float 0.000000e+00, float %5206
  %5215 = fmul fast float %5103, 9.843750e-01
  %5216 = fmul fast float %5098, 9.843750e-01
  %5217 = fadd fast float %5215, 7.812500e-03
  %5218 = fadd fast float %5216, 7.812500e-03
  %5219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %5217, float %5218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5220 = extractvalue %dx.types.ResRet.f32 %5219, 2
  %5221 = extractvalue %dx.types.ResRet.f32 %5219, 3
  %5222 = fmul fast float %5220, %5089
  %5223 = fmul fast float %5220, %5090
  %5224 = fmul fast float %5220, %5101
  %5225 = fadd fast float %5222, %5221
  %5226 = fadd fast float %5223, %5221
  %5227 = fadd fast float %5224, %5221
  %5228 = fcmp fast ogt float %3883, 0.000000e+00
  br i1 %5228, label %5229, label %5255

; <label>:5229                                    ; preds = %5088
  %5230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3883, float %5103, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5231 = extractvalue %dx.types.ResRet.f32 %5230, 0
  %5232 = extractvalue %dx.types.ResRet.f32 %5230, 1
  %5233 = extractvalue %dx.types.ResRet.f32 %5230, 2
  %5234 = fadd fast float %5231, -5.000000e-01
  %5235 = fadd fast float %5232, -5.000000e-01
  %5236 = fadd fast float %5233, -5.000000e-01
  %5237 = fsub fast float 1.000000e+00, %5089
  %5238 = fsub fast float 1.000000e+00, %5090
  %5239 = fsub fast float 1.000000e+00, %5101
  %5240 = fmul fast float %5089, 4.000000e+00
  %5241 = fmul fast float %5240, %5237
  %5242 = fmul fast float %5241, %5234
  %5243 = fmul fast float %5090, 4.000000e+00
  %5244 = fmul fast float %5243, %5238
  %5245 = fmul fast float %5244, %5235
  %5246 = fmul fast float %5101, 4.000000e+00
  %5247 = fmul fast float %5246, %5239
  %5248 = fmul fast float %5247, %5236
  %5249 = fadd fast float %5242, %5225
  %5250 = fadd fast float %5245, %5226
  %5251 = fadd fast float %5248, %5227
  %5252 = call float @dx.op.unary.f32(i32 7, float %5249)  ; Saturate(value)
  %5253 = call float @dx.op.unary.f32(i32 7, float %5250)  ; Saturate(value)
  %5254 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  br label %5255

; <label>:5255                                    ; preds = %5229, %5088
  %5256 = phi float [ %5252, %5229 ], [ %5225, %5088 ]
  %5257 = phi float [ %5253, %5229 ], [ %5226, %5088 ]
  %5258 = phi float [ %5254, %5229 ], [ %5227, %5088 ]
  %5259 = call float @dx.op.binary.f32(i32 35, float %5257, float %5258)  ; FMax(a,b)
  %5260 = call float @dx.op.binary.f32(i32 35, float %5256, float %5259)  ; FMax(a,b)
  %5261 = fsub fast float 1.000000e+00, %5260
  %5262 = fmul fast float %5261, %5208
  %5263 = fmul fast float %5261, %5209
  %5264 = fmul fast float %5261, %5210
  %5265 = call float @dx.op.dot3.f32(i32 55, float %5092, float %5093, float %5094, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5266 = fcmp fast ogt float %5265, 0x3E7FF19E20000000
  %5267 = fdiv fast float 1.000000e+00, %5265
  %5268 = select i1 %5266, float %5267, float 0.000000e+00
  %5269 = fmul fast float %5268, %5092
  %5270 = fmul fast float %5268, %5093
  %5271 = fmul fast float %5268, %5094
  %5272 = fadd fast float %5269, -1.000000e+00
  %5273 = fadd fast float %5270, -1.000000e+00
  %5274 = fadd fast float %5271, -1.000000e+00
  %5275 = fmul fast float %5272, 5.000000e-01
  %5276 = fmul fast float %5273, 5.000000e-01
  %5277 = fmul fast float %5274, 5.000000e-01
  %5278 = fadd fast float %5275, 1.000000e+00
  %5279 = fadd fast float %5276, 1.000000e+00
  %5280 = fadd fast float %5277, 1.000000e+00
  %5281 = fmul fast float %5256, %5212
  %5282 = fmul fast float %5257, %5213
  %5283 = fmul fast float %5258, %5214
  %5284 = fsub fast float 1.000000e+00, %5103
  %5285 = bitcast float %5284 to i32
  %5286 = sitofp i32 %5285 to float
  %5287 = fmul fast float %5286, 5.000000e+00
  %5288 = fadd fast float %5287, 0xC1EFBF8940000000
  %5289 = fptosi float %5288 to i32
  %5290 = bitcast i32 %5289 to float
  %5291 = fmul fast float %5290, %3884
  %5292 = fmul fast float %5208, %5291
  %5293 = fmul fast float %5292, %5261
  %5294 = fmul fast float %5293, %5278
  %5295 = fmul fast float %5209, %5291
  %5296 = fmul fast float %5295, %5261
  %5297 = fmul fast float %5296, %5279
  %5298 = fmul fast float %5210, %5291
  %5299 = fmul fast float %5298, %5261
  %5300 = fmul fast float %5299, %5280
  %5301 = fmul fast float %5262, %3917
  %5302 = fmul fast float %5263, %3917
  %5303 = fmul fast float %5264, %3917
  %5304 = fadd fast float %5281, %3876
  %5305 = fadd fast float %5304, %5294
  %5306 = fmul fast float %5305, %3917
  %5307 = fadd fast float %5282, %3877
  %5308 = fadd fast float %5307, %5297
  %5309 = fmul fast float %5308, %3917
  %5310 = fadd fast float %5283, %3878
  %5311 = fadd fast float %5310, %5300
  %5312 = fmul fast float %5311, %3917
  %5313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5314 = extractvalue %dx.types.CBufRet.f32 %5313, 3
  %5315 = fcmp fast oeq float %5314, 0.000000e+00
  br i1 %5315, label %6400, label %5316

; <label>:5316                                    ; preds = %5255
  %5317 = extractvalue %dx.types.CBufRet.f32 %5313, 0
  %5318 = extractvalue %dx.types.CBufRet.f32 %5313, 1
  %5319 = extractvalue %dx.types.CBufRet.f32 %5313, 2
  %5320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5321 = extractvalue %dx.types.CBufRet.f32 %5320, 0
  %5322 = extractvalue %dx.types.CBufRet.f32 %5320, 1
  %5323 = extractvalue %dx.types.CBufRet.f32 %5320, 2
  %5324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5325 = extractvalue %dx.types.CBufRet.f32 %5324, 0
  %5326 = extractvalue %dx.types.CBufRet.f32 %5324, 1
  %5327 = call float @dx.op.dot3.f32(i32 55, float %5321, float %5322, float %5323, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = select i1 %282, float %5325, float %5321
  %5329 = select i1 %282, float %5327, float %5322
  %5330 = select i1 %282, float %5326, float %5323
  %5331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5332 = extractvalue %dx.types.CBufRet.f32 %5331, 2
  %5333 = fmul fast float %5332, %111
  %5334 = fmul fast float %5332, %112
  %5335 = fmul fast float %5332, %113
  %5336 = fadd fast float %5333, %191
  %5337 = fadd fast float %5334, %192
  %5338 = fadd fast float %5335, %193
  %5339 = fcmp fast olt float %5314, 0.000000e+00
  br i1 %5339, label %5979, label %5340

; <label>:5340                                    ; preds = %5316
  %5341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5342 = extractvalue %dx.types.CBufRet.f32 %5341, 0
  %5343 = extractvalue %dx.types.CBufRet.f32 %5341, 1
  %5344 = extractvalue %dx.types.CBufRet.f32 %5341, 2
  %5345 = extractvalue %dx.types.CBufRet.f32 %5341, 3
  %5346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5347 = extractvalue %dx.types.CBufRet.f32 %5346, 0
  %5348 = extractvalue %dx.types.CBufRet.f32 %5346, 1
  %5349 = extractvalue %dx.types.CBufRet.f32 %5346, 2
  %5350 = extractvalue %dx.types.CBufRet.f32 %5346, 3
  %5351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5352 = extractvalue %dx.types.CBufRet.f32 %5351, 0
  %5353 = extractvalue %dx.types.CBufRet.f32 %5351, 1
  %5354 = extractvalue %dx.types.CBufRet.f32 %5351, 2
  %5355 = extractvalue %dx.types.CBufRet.f32 %5351, 3
  %5356 = fmul fast float %5342, %5336
  %5357 = call float @dx.op.tertiary.f32(i32 46, float %5337, float %5343, float %5356)  ; FMad(a,b,c)
  %5358 = call float @dx.op.tertiary.f32(i32 46, float %5338, float %5344, float %5357)  ; FMad(a,b,c)
  %5359 = fadd fast float %5358, %5345
  %5360 = fmul fast float %5347, %5336
  %5361 = call float @dx.op.tertiary.f32(i32 46, float %5337, float %5348, float %5360)  ; FMad(a,b,c)
  %5362 = call float @dx.op.tertiary.f32(i32 46, float %5338, float %5349, float %5361)  ; FMad(a,b,c)
  %5363 = fadd fast float %5362, %5350
  %5364 = fmul fast float %5352, %5336
  %5365 = call float @dx.op.tertiary.f32(i32 46, float %5337, float %5353, float %5364)  ; FMad(a,b,c)
  %5366 = call float @dx.op.tertiary.f32(i32 46, float %5338, float %5354, float %5365)  ; FMad(a,b,c)
  %5367 = fadd fast float %5366, %5355
  %5368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5369 = extractvalue %dx.types.CBufRet.f32 %5368, 0
  %5370 = fcmp fast une float %5369, 0.000000e+00
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 0
  %5373 = extractvalue %dx.types.CBufRet.f32 %5371, 1
  %5374 = extractvalue %dx.types.CBufRet.f32 %5371, 3
  %5375 = fmul fast float %5374, %5359
  %5376 = fmul fast float %5374, %5363
  %5377 = fadd fast float %5375, %5372
  %5378 = fadd fast float %5376, %5373
  %5379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.f32 %5379, 0
  %5381 = extractvalue %dx.types.CBufRet.f32 %5379, 1
  %5382 = extractvalue %dx.types.CBufRet.f32 %5379, 3
  %5383 = fmul fast float %5382, %5359
  %5384 = fmul fast float %5382, %5363
  %5385 = fadd fast float %5383, %5380
  %5386 = fadd fast float %5384, %5381
  %5387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5388 = extractvalue %dx.types.CBufRet.f32 %5387, 1
  %5389 = fsub fast float %5388, %5367
  %5390 = extractvalue %dx.types.CBufRet.f32 %5387, 2
  %5391 = fmul fast float %5389, %5390
  %5392 = fsub fast float 1.000000e+00, %5391
  %5393 = call float @dx.op.unary.f32(i32 7, float %5392)  ; Saturate(value)
  br i1 %5370, label %5454, label %5394

; <label>:5394                                    ; preds = %5340
  %5395 = extractvalue %dx.types.CBufRet.f32 %5379, 2
  %5396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5397 = extractvalue %dx.types.CBufRet.f32 %5396, 2
  %5398 = fadd fast float %5397, %5395
  %5399 = fcmp fast ogt float %5398, 0.000000e+00
  br i1 %5399, label %5400, label %5424

; <label>:5400                                    ; preds = %5394
  %5401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5402 = extractvalue %dx.types.CBufRet.f32 %5401, 0
  %5403 = extractvalue %dx.types.CBufRet.f32 %5401, 1
  %5404 = fsub fast float %5385, %5402
  %5405 = fsub fast float %5386, %5403
  %5406 = fcmp fast olt float %5404, 0.000000e+00
  %5407 = fcmp fast olt float %5405, 0.000000e+00
  %5408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5409 = extractvalue %dx.types.CBufRet.f32 %5408, 0
  %5410 = extractvalue %dx.types.CBufRet.f32 %5408, 1
  %5411 = extractvalue %dx.types.CBufRet.f32 %5408, 2
  %5412 = extractvalue %dx.types.CBufRet.f32 %5408, 3
  %5413 = select i1 %5406, float %5409, float %5411
  %5414 = select i1 %5407, float %5410, float %5412
  %5415 = fmul fast float %5413, %5404
  %5416 = fmul fast float %5414, %5405
  %5417 = call float @dx.op.unary.f32(i32 6, float %5415)  ; FAbs(value)
  %5418 = call float @dx.op.unary.f32(i32 6, float %5416)  ; FAbs(value)
  %5419 = extractvalue %dx.types.CBufRet.f32 %5331, 0
  %5420 = call float @dx.op.binary.f32(i32 35, float %5417, float %5418)  ; FMax(a,b)
  %5421 = fsub fast float %5419, %5420
  %5422 = call float @dx.op.unary.f32(i32 7, float %5421)  ; Saturate(value)
  %5423 = fmul fast float %5422, %5393
  br label %5424

; <label>:5424                                    ; preds = %5400, %5394
  %5425 = phi float [ %5423, %5400 ], [ 0.000000e+00, %5394 ]
  %5426 = extractvalue %dx.types.CBufRet.f32 %5371, 2
  %5427 = extractvalue %dx.types.CBufRet.f32 %5396, 1
  %5428 = fadd fast float %5427, %5426
  %5429 = fcmp fast ogt float %5428, 0.000000e+00
  br i1 %5429, label %5430, label %5454

; <label>:5430                                    ; preds = %5424
  %5431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5432 = extractvalue %dx.types.CBufRet.f32 %5431, 0
  %5433 = extractvalue %dx.types.CBufRet.f32 %5431, 1
  %5434 = fsub fast float %5377, %5432
  %5435 = fsub fast float %5378, %5433
  %5436 = fcmp fast olt float %5434, 0.000000e+00
  %5437 = fcmp fast olt float %5435, 0.000000e+00
  %5438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.f32 %5438, 0
  %5440 = extractvalue %dx.types.CBufRet.f32 %5438, 1
  %5441 = extractvalue %dx.types.CBufRet.f32 %5438, 2
  %5442 = extractvalue %dx.types.CBufRet.f32 %5438, 3
  %5443 = select i1 %5436, float %5439, float %5441
  %5444 = select i1 %5437, float %5440, float %5442
  %5445 = fmul fast float %5443, %5434
  %5446 = fmul fast float %5444, %5435
  %5447 = call float @dx.op.unary.f32(i32 6, float %5445)  ; FAbs(value)
  %5448 = call float @dx.op.unary.f32(i32 6, float %5446)  ; FAbs(value)
  %5449 = extractvalue %dx.types.CBufRet.f32 %5331, 0
  %5450 = call float @dx.op.binary.f32(i32 35, float %5447, float %5448)  ; FMax(a,b)
  %5451 = fsub fast float %5449, %5450
  %5452 = call float @dx.op.unary.f32(i32 7, float %5451)  ; Saturate(value)
  %5453 = fmul fast float %5452, %5393
  br label %5454

; <label>:5454                                    ; preds = %5430, %5424, %5340
  %5455 = phi float [ 0.000000e+00, %5340 ], [ %5453, %5430 ], [ 0.000000e+00, %5424 ]
  %5456 = phi float [ 0.000000e+00, %5340 ], [ %5425, %5430 ], [ %5425, %5424 ]
  %5457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5458 = extractvalue %dx.types.CBufRet.f32 %5457, 1
  %5459 = call float @dx.op.unary.f32(i32 7, float %5458)  ; Saturate(value)
  %5460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5461 = extractvalue %dx.types.CBufRet.f32 %5460, 0
  %5462 = extractvalue %dx.types.CBufRet.f32 %5460, 1
  %5463 = fsub fast float %5359, %5461
  %5464 = fsub fast float %5363, %5462
  %5465 = fcmp fast olt float %5463, 0.000000e+00
  %5466 = fcmp fast olt float %5464, 0.000000e+00
  %5467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5468 = extractvalue %dx.types.CBufRet.f32 %5467, 0
  %5469 = extractvalue %dx.types.CBufRet.f32 %5467, 1
  %5470 = extractvalue %dx.types.CBufRet.f32 %5467, 2
  %5471 = extractvalue %dx.types.CBufRet.f32 %5467, 3
  %5472 = select i1 %5465, float %5468, float %5470
  %5473 = select i1 %5466, float %5469, float %5471
  %5474 = fmul fast float %5472, %5463
  %5475 = fmul fast float %5473, %5464
  %5476 = call float @dx.op.unary.f32(i32 6, float %5474)  ; FAbs(value)
  %5477 = call float @dx.op.unary.f32(i32 6, float %5475)  ; FAbs(value)
  %5478 = extractvalue %dx.types.CBufRet.f32 %5331, 0
  %5479 = call float @dx.op.binary.f32(i32 35, float %5476, float %5477)  ; FMax(a,b)
  %5480 = fsub fast float %5478, %5479
  %5481 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  %5482 = call float @dx.op.binary.f32(i32 36, float %5481, float %5459)  ; FMin(a,b)
  %5483 = fmul fast float %5482, %5393
  %5484 = fsub fast float %5455, %5483
  %5485 = fsub fast float %5456, %5455
  %5486 = fsub fast float %5485, %5483
  %5487 = call float @dx.op.binary.f32(i32 35, float %5455, float %5456)  ; FMax(a,b)
  %5488 = call float @dx.op.binary.f32(i32 35, float %5483, float %5487)  ; FMax(a,b)
  %5489 = fcmp fast olt float %5488, 1.000000e+00
  br i1 %5489, label %5490, label %5888, !dx.controlflow.hints !94

; <label>:5490                                    ; preds = %5454
  %5491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5492 = extractvalue %dx.types.CBufRet.f32 %5491, 0
  %5493 = fcmp fast une float %5492, 0.000000e+00
  br i1 %5493, label %5494, label %5888, !dx.controlflow.hints !95

; <label>:5494                                    ; preds = %5490
  %5495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5496 = extractvalue %dx.types.CBufRet.f32 %5495, 0
  %5497 = extractvalue %dx.types.CBufRet.f32 %5495, 1
  %5498 = extractvalue %dx.types.CBufRet.f32 %5495, 2
  %5499 = extractvalue %dx.types.CBufRet.f32 %5495, 3
  %5500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5501 = extractvalue %dx.types.CBufRet.f32 %5500, 0
  %5502 = extractvalue %dx.types.CBufRet.f32 %5500, 1
  %5503 = extractvalue %dx.types.CBufRet.f32 %5500, 2
  %5504 = extractvalue %dx.types.CBufRet.f32 %5500, 3
  %5505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5506 = extractvalue %dx.types.CBufRet.f32 %5505, 0
  %5507 = extractvalue %dx.types.CBufRet.f32 %5505, 1
  %5508 = extractvalue %dx.types.CBufRet.f32 %5505, 2
  %5509 = extractvalue %dx.types.CBufRet.f32 %5505, 3
  %5510 = fmul fast float %5496, %5336
  %5511 = call float @dx.op.tertiary.f32(i32 46, float %5337, float %5497, float %5510)  ; FMad(a,b,c)
  %5512 = call float @dx.op.tertiary.f32(i32 46, float %5338, float %5498, float %5511)  ; FMad(a,b,c)
  %5513 = fadd fast float %5512, %5499
  %5514 = fmul fast float %5501, %5336
  %5515 = call float @dx.op.tertiary.f32(i32 46, float %5337, float %5502, float %5514)  ; FMad(a,b,c)
  %5516 = call float @dx.op.tertiary.f32(i32 46, float %5338, float %5503, float %5515)  ; FMad(a,b,c)
  %5517 = fadd fast float %5516, %5504
  %5518 = fmul fast float %5506, %5336
  %5519 = call float @dx.op.tertiary.f32(i32 46, float %5337, float %5507, float %5518)  ; FMad(a,b,c)
  %5520 = call float @dx.op.tertiary.f32(i32 46, float %5338, float %5508, float %5519)  ; FMad(a,b,c)
  %5521 = fadd fast float %5520, %5509
  %5522 = fcmp fast oge float %5513, 1.000000e+00
  %5523 = fcmp fast oge float %5517, 1.000000e+00
  %5524 = or i1 %5522, %5523
  %5525 = fcmp fast olt float %5513, 0.000000e+00
  %5526 = fcmp fast olt float %5517, 0.000000e+00
  %5527 = or i1 %5525, %5526
  %5528 = or i1 %5524, %5527
  br i1 %5528, label %5888, label %5529, !dx.controlflow.hints !96

; <label>:5529                                    ; preds = %5494
  %5530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5531 = extractvalue %dx.types.CBufRet.f32 %5530, 0
  %5532 = extractvalue %dx.types.CBufRet.f32 %5530, 1
  %5533 = extractvalue %dx.types.CBufRet.f32 %5530, 2
  %5534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5535 = extractvalue %dx.types.CBufRet.i32 %5534, 2
  %5536 = uitofp i32 %5535 to float
  %5537 = extractvalue %dx.types.CBufRet.i32 %5534, 3
  %5538 = uitofp i32 %5537 to float
  %5539 = extractvalue %dx.types.CBufRet.f32 %5530, 3
  %5540 = fmul fast float %5539, 2.000000e+00
  %5541 = fsub fast float %5513, %5531
  %5542 = fsub fast float %5517, %5532
  %5543 = fmul fast float %5540, %5541
  %5544 = fmul fast float %5540, %5542
  %5545 = fdiv fast float 1.000000e+00, %5319
  %5546 = fmul fast float %5544, %5545
  %5547 = call float @dx.op.unary.f32(i32 6, float %5546)  ; FAbs(value)
  %5548 = fmul fast float %5533, %5338
  %5549 = fmul fast float %5548, %5540
  %5550 = call float @dx.op.unary.f32(i32 6, float %5549)  ; FAbs(value)
  %5551 = call float @dx.op.unary.f32(i32 6, float %5543)  ; FAbs(value)
  %5552 = call float @dx.op.binary.f32(i32 35, float %5550, float %5547)  ; FMax(a,b)
  %5553 = call float @dx.op.binary.f32(i32 35, float %5551, float %5552)  ; FMax(a,b)
  %5554 = fmul fast float %5553, 2.000000e+00
  %5555 = call float @dx.op.unary.f32(i32 23, float %5554)  ; Log(value)
  %5556 = call float @dx.op.binary.f32(i32 35, float %5555, float %5536)  ; FMax(a,b)
  %5557 = call float @dx.op.unary.f32(i32 22, float %5556)  ; Frc(value)
  %5558 = fadd fast float %5557, 0xBFEA666660000000
  %5559 = fmul fast float %5558, 8.000000e+00
  %5560 = call float @dx.op.unary.f32(i32 7, float %5559)  ; Saturate(value)
  %5561 = call float @dx.op.unary.f32(i32 27, float %5556)  ; Round_ni(value)
  %5562 = fadd fast float %5561, %5560
  %5563 = call float @dx.op.binary.f32(i32 36, float %5562, float %5538)  ; FMin(a,b)
  %5564 = call float @dx.op.unary.f32(i32 27, float %5563)  ; Round_ni(value)
  %5565 = fsub fast float -0.000000e+00, %5564
  %5566 = call float @dx.op.unary.f32(i32 21, float %5565)  ; Exp(value)
  %5567 = fmul fast float %5566, %5540
  %5568 = fmul fast float %5567, %5513
  %5569 = fmul fast float %5567, %5517
  %5570 = fmul fast float %5568, 2.500000e-01
  %5571 = fmul fast float %5569, 2.500000e-01
  %5572 = fadd fast float %5570, 5.000000e-01
  %5573 = fadd fast float %5571, 5.000000e-01
  %5574 = fsub fast float %5538, %5536
  %5575 = fptoui float %5574 to i32
  %5576 = add i32 %5575, 320
  %5577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5576)  ; CBufferLoadLegacy(handle,regIndex)
  %5578 = extractvalue %dx.types.CBufRet.f32 %5577, 0
  %5579 = extractvalue %dx.types.CBufRet.f32 %5577, 1
  %5580 = fcmp fast une float %5563, %5538
  %5581 = fsub fast float %5513, %5578
  %5582 = fsub fast float %5517, %5579
  %5583 = call float @dx.op.unary.f32(i32 6, float %5581)  ; FAbs(value)
  %5584 = call float @dx.op.unary.f32(i32 6, float %5582)  ; FAbs(value)
  %5585 = fmul fast float %5583, %5567
  %5586 = fmul fast float %5584, %5567
  %5587 = fcmp fast olt float %5585, 1.000000e+00
  %5588 = fcmp fast olt float %5586, 1.000000e+00
  %5589 = and i1 %5587, %5588
  %5590 = or i1 %5580, %5589
  br i1 %5590, label %5591, label %5888, !dx.controlflow.hints !97

; <label>:5591                                    ; preds = %5529
  %5592 = fmul fast float %5569, 5.000000e-01
  %5593 = fmul fast float %5568, 5.000000e-01
  %5594 = fadd fast float %5592, 5.000000e-01
  %5595 = fadd fast float %5593, 5.000000e-01
  %5596 = sitofp i32 %5535 to float
  %5597 = fsub fast float %5563, %5596
  %5598 = call float @dx.op.unary.f32(i32 27, float %5597)  ; Round_ni(value)
  %5599 = call float @dx.op.unary.f32(i32 22, float %5563)  ; Frc(value)
  %5600 = call float @dx.op.unary.f32(i32 22, float %5595)  ; Frc(value)
  %5601 = call float @dx.op.unary.f32(i32 22, float %5594)  ; Frc(value)
  %5602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5600, float %5601, float %5598, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5603 = extractvalue %dx.types.ResRet.f32 %5602, 0
  %5604 = extractvalue %dx.types.ResRet.f32 %5602, 1
  %5605 = extractvalue %dx.types.ResRet.f32 %5602, 2
  %5606 = extractvalue %dx.types.ResRet.f32 %5602, 3
  %5607 = fcmp fast ogt float %5599, 0.000000e+00
  br i1 %5607, label %5608, label %5629, !dx.controlflow.hints !98

; <label>:5608                                    ; preds = %5591
  %5609 = fadd fast float %5598, 1.000000e+00
  %5610 = call float @dx.op.unary.f32(i32 22, float %5572)  ; Frc(value)
  %5611 = call float @dx.op.unary.f32(i32 22, float %5573)  ; Frc(value)
  %5612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5610, float %5611, float %5609, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5613 = extractvalue %dx.types.ResRet.f32 %5612, 0
  %5614 = extractvalue %dx.types.ResRet.f32 %5612, 1
  %5615 = extractvalue %dx.types.ResRet.f32 %5612, 2
  %5616 = extractvalue %dx.types.ResRet.f32 %5612, 3
  %5617 = fsub fast float %5613, %5603
  %5618 = fsub fast float %5614, %5604
  %5619 = fsub fast float %5615, %5605
  %5620 = fsub fast float %5616, %5606
  %5621 = fmul fast float %5617, %5599
  %5622 = fmul fast float %5618, %5599
  %5623 = fmul fast float %5619, %5599
  %5624 = fmul fast float %5620, %5599
  %5625 = fadd fast float %5621, %5603
  %5626 = fadd fast float %5622, %5604
  %5627 = fadd fast float %5623, %5605
  %5628 = fadd fast float %5624, %5606
  br label %5629

; <label>:5629                                    ; preds = %5608, %5591
  %5630 = phi float [ %5625, %5608 ], [ %5603, %5591 ]
  %5631 = phi float [ %5626, %5608 ], [ %5604, %5591 ]
  %5632 = phi float [ %5627, %5608 ], [ %5605, %5591 ]
  %5633 = phi float [ %5628, %5608 ], [ %5606, %5591 ]
  %5634 = fadd fast float %5630, -5.000000e-01
  %5635 = fadd fast float %5632, -5.000000e-01
  %5636 = fmul fast float %5634, 0xBFD5555560000000
  %5637 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5635, float %5636)  ; FMad(a,b,c)
  %5638 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5631, float 0.000000e+00)  ; FMad(a,b,c)
  %5639 = fadd fast float %5638, %5633
  %5640 = fmul fast float %5634, -7.500000e-01
  %5641 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5635, float %5640)  ; FMad(a,b,c)
  %5642 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5631, float 0.000000e+00)  ; FMad(a,b,c)
  %5643 = fadd fast float %5642, %5633
  %5644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5645 = extractvalue %dx.types.CBufRet.f32 %5644, 0
  %5646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5647 = extractvalue %dx.types.CBufRet.f32 %5646, 0
  %5648 = extractvalue %dx.types.CBufRet.f32 %5646, 1
  %5649 = extractvalue %dx.types.CBufRet.f32 %5646, 2
  %5650 = extractvalue %dx.types.CBufRet.f32 %5646, 3
  %5651 = fsub fast float %5647, %5637
  %5652 = fsub fast float %5648, %5639
  %5653 = fsub fast float %5649, %5641
  %5654 = fsub fast float %5650, %5643
  %5655 = fmul fast float %5651, %5645
  %5656 = fmul fast float %5652, %5645
  %5657 = fmul fast float %5653, %5645
  %5658 = fmul fast float %5654, %5645
  %5659 = fadd fast float %5655, %5637
  %5660 = fadd fast float %5656, %5639
  %5661 = fadd fast float %5657, %5641
  %5662 = fadd fast float %5658, %5643
  %5663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5664 = extractvalue %dx.types.ResRet.i32 %5663, 0
  %5665 = and i32 %5664, 536870911
  %5666 = uitofp i32 %5665 to float
  %5667 = fmul fast float %5666, %5513
  %5668 = fmul fast float %5666, %5517
  %5669 = fptoui float %5667 to i32
  %5670 = fptoui float %5668 to i32
  %5671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5672 = extractvalue %dx.types.ResRet.i32 %5671, 0
  %5673 = and i32 %5672, 31
  %5674 = lshr i32 %5669, %5673
  %5675 = lshr i32 %5670, %5673
  %5676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5677 = extractvalue %dx.types.ResRet.i32 %5676, 0
  %5678 = and i32 %5677, 31
  %5679 = shl i32 1, %5678
  %5680 = call i32 @dx.op.binary.i32(i32 40, i32 %5679, i32 4)  ; UMin(a,b)
  %5681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5682 = extractvalue %dx.types.ResRet.i32 %5681, 0
  %5683 = extractvalue %dx.types.ResRet.i32 %5681, 1
  %5684 = icmp eq i32 %5680, 0
  br i1 %5684, label %5726, label %5685

; <label>:5685                                    ; preds = %5629
  br label %5686

; <label>:5686                                    ; preds = %5714, %5685
  %5687 = phi i32 [ %5717, %5714 ], [ 0, %5685 ]
  %5688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5689 = extractvalue %dx.types.ResRet.i32 %5688, 0
  %5690 = lshr i32 %5689, 16
  %5691 = and i32 %5690, 31
  %5692 = shl i32 %5675, %5691
  %5693 = add i32 %5692, %5674
  %5694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5695 = extractvalue %dx.types.ResRet.i32 %5694, 0
  %5696 = and i32 %5695, 31
  %5697 = shl i32 %5693, %5696
  %5698 = add i32 %5697, %5687
  %5699 = shl i32 %5698, 2
  %5700 = add i32 %5699, 32
  %5701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5700, i32 undef)  ; BufferLoad(srv,index,wot)
  %5702 = extractvalue %dx.types.ResRet.i32 %5701, 0
  %5703 = icmp slt i32 %5702, 0
  %5704 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5687
  %5705 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5687
  %5706 = bitcast float* %5704 to i32*
  %5707 = bitcast float* %5705 to i32*
  br i1 %5703, label %5708, label %5714

; <label>:5708                                    ; preds = %5686
  %5709 = and i32 %5702, 1073741823
  %5710 = add nuw nsw i32 %5709, 20
  %5711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5710, i32 undef)  ; BufferLoad(srv,index,wot)
  %5712 = extractvalue %dx.types.ResRet.i32 %5711, 0
  %5713 = extractvalue %dx.types.ResRet.i32 %5711, 1
  br label %5714

; <label>:5714                                    ; preds = %5708, %5686
  %5715 = phi i32 [ %5712, %5708 ], [ %5682, %5686 ]
  %5716 = phi i32 [ %5713, %5708 ], [ %5683, %5686 ]
  store i32 %5715, i32* %5706, align 4
  store i32 %5716, i32* %5707, align 4
  %5717 = add nuw i32 %5687, 1
  %5718 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5719 = extractvalue %dx.types.CBufRet.i32 %5718, 2
  %5720 = icmp eq i32 %5719, 0
  %5721 = icmp ugt i32 %5702, -1073741825
  %5722 = and i1 %5721, %5720
  %5723 = icmp ult i32 %5717, %5680
  %5724 = and i1 %5722, %5723
  br i1 %5724, label %5686, label %5725

; <label>:5725                                    ; preds = %5714
  br label %5726

; <label>:5726                                    ; preds = %5725, %5629
  %5727 = phi i32 [ 0, %5629 ], [ %5717, %5725 ]
  %5728 = extractvalue %dx.types.CBufRet.f32 %5491, 2
  %5729 = fptoui float %5728 to i32
  %5730 = icmp eq i32 %5729, 0
  br i1 %5730, label %5782, label %5731

; <label>:5731                                    ; preds = %5726
  br label %5732

; <label>:5732                                    ; preds = %5777, %5731
  %5733 = phi i32 [ %5778, %5777 ], [ %5727, %5731 ]
  %5734 = phi i32 [ %5779, %5777 ], [ 0, %5731 ]
  %5735 = lshr i32 %5734, 2
  %5736 = and i32 %5734, 3
  %5737 = add nuw nsw i32 %5735, 83
  %5738 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5737)  ; CBufferLoadLegacy(handle,regIndex)
  %5739 = extractvalue %dx.types.CBufRet.i32 %5738, 0
  %5740 = extractvalue %dx.types.CBufRet.i32 %5738, 1
  %5741 = extractvalue %dx.types.CBufRet.i32 %5738, 2
  %5742 = extractvalue %dx.types.CBufRet.i32 %5738, 3
  %5743 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5739, i32* %5743, align 4
  %5744 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5740, i32* %5744, align 4
  %5745 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5741, i32* %5745, align 4
  %5746 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5742, i32* %5746, align 4
  %5747 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5736
  %5748 = load i32, i32* %5747, align 4, !tbaa !99, !noalias !103
  %5749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5750 = extractvalue %dx.types.ResRet.i32 %5749, 0
  %5751 = lshr i32 %5750, 16
  %5752 = and i32 %5751, 31
  %5753 = shl i32 %5675, %5752
  %5754 = add i32 %5753, %5674
  %5755 = shl i32 %5754, 2
  %5756 = add i32 %5755, %5748
  %5757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5756, i32 undef)  ; BufferLoad(srv,index,wot)
  %5758 = extractvalue %dx.types.ResRet.i32 %5757, 0
  %5759 = icmp eq i32 %5758, 0
  br i1 %5759, label %5777, label %5760

; <label>:5760                                    ; preds = %5732
  %5761 = icmp slt i32 %5758, 0
  %5762 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5733
  %5763 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5733
  %5764 = bitcast float* %5762 to i32*
  %5765 = bitcast float* %5763 to i32*
  br i1 %5761, label %5766, label %5773

; <label>:5766                                    ; preds = %5760
  %5767 = and i32 %5758, 1073741823
  %5768 = add i32 %5748, 20
  %5769 = add i32 %5768, %5767
  %5770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5769, i32 undef)  ; BufferLoad(srv,index,wot)
  %5771 = extractvalue %dx.types.ResRet.i32 %5770, 0
  %5772 = extractvalue %dx.types.ResRet.i32 %5770, 1
  br label %5773

; <label>:5773                                    ; preds = %5766, %5760
  %5774 = phi i32 [ %5771, %5766 ], [ %5682, %5760 ]
  %5775 = phi i32 [ %5772, %5766 ], [ %5683, %5760 ]
  store i32 %5774, i32* %5764, align 4
  store i32 %5775, i32* %5765, align 4
  %5776 = add i32 %5733, 1
  br label %5777

; <label>:5777                                    ; preds = %5773, %5732
  %5778 = phi i32 [ %5733, %5732 ], [ %5776, %5773 ]
  %5779 = add nuw i32 %5734, 1
  %5780 = icmp eq i32 %5779, %5729
  br i1 %5780, label %5781, label %5732

; <label>:5781                                    ; preds = %5777
  br label %5782

; <label>:5782                                    ; preds = %5781, %5726
  %5783 = phi i32 [ %5727, %5726 ], [ %5778, %5781 ]
  %5784 = icmp eq i32 %5783, 1
  %5785 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 0
  %5786 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  br i1 %5784, label %5787, label %5790

; <label>:5787                                    ; preds = %5782
  %5788 = load float, float* %5785, align 4
  %5789 = load float, float* %5786, align 4
  br label %5817

; <label>:5790                                    ; preds = %5782
  %5791 = load float, float* %5785, align 4
  %5792 = load float, float* %5786, align 4
  %5793 = fdiv fast float 1.000000e+00, %5792
  %5794 = fsub fast float %5791, %5793
  %5795 = icmp ugt i32 %5783, 1
  br i1 %5795, label %5796, label %5812

; <label>:5796                                    ; preds = %5790
  br label %5797

; <label>:5797                                    ; preds = %5797, %5796
  %5798 = phi float [ %5807, %5797 ], [ %5794, %5796 ]
  %5799 = phi float [ %5808, %5797 ], [ %5791, %5796 ]
  %5800 = phi i32 [ %5809, %5797 ], [ 1, %5796 ]
  %5801 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5800
  %5802 = load float, float* %5801, align 4
  %5803 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5800
  %5804 = load float, float* %5803, align 4
  %5805 = fdiv fast float 1.000000e+00, %5804
  %5806 = fsub fast float %5802, %5805
  %5807 = call float @dx.op.binary.f32(i32 36, float %5798, float %5806)  ; FMin(a,b)
  %5808 = call float @dx.op.binary.f32(i32 35, float %5799, float %5802)  ; FMax(a,b)
  %5809 = add nuw i32 %5800, 1
  %5810 = icmp eq i32 %5809, %5783
  br i1 %5810, label %5811, label %5797

; <label>:5811                                    ; preds = %5797
  br label %5812

; <label>:5812                                    ; preds = %5811, %5790
  %5813 = phi float [ %5794, %5790 ], [ %5807, %5811 ]
  %5814 = phi float [ %5791, %5790 ], [ %5808, %5811 ]
  %5815 = fsub fast float %5814, %5813
  %5816 = fdiv fast float 1.000000e+00, %5815
  br label %5817

; <label>:5817                                    ; preds = %5812, %5787
  %5818 = phi float [ %5788, %5787 ], [ %5814, %5812 ]
  %5819 = phi float [ %5789, %5787 ], [ %5816, %5812 ]
  %5820 = fadd fast float %5521, %5818
  %5821 = fmul fast float %5820, %5819
  %5822 = call float @dx.op.unary.f32(i32 7, float %5821)  ; Saturate(value)
  %5823 = fmul fast float %5822, 2.000000e+00
  %5824 = fsub fast float 1.000000e+00, %5823
  %5825 = fmul fast float %5659, %5659
  %5826 = fsub fast float %5660, %5825
  %5827 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5826)  ; FMax(a,b)
  %5828 = fdiv fast float 1.000000e+00, %5827
  %5829 = fmul fast float %5660, %5659
  %5830 = fsub fast float %5661, %5829
  %5831 = fsub fast float %5824, %5659
  %5832 = fmul fast float %5824, %5824
  %5833 = fsub fast float %5832, %5660
  %5834 = fmul fast float %5828, %5830
  %5835 = fmul fast float %5834, %5831
  %5836 = fsub fast float %5833, %5835
  %5837 = fmul fast float %5660, %5660
  %5838 = fsub fast float %5662, %5837
  %5839 = fmul fast float %5830, %5830
  %5840 = fmul fast float %5839, %5828
  %5841 = fsub fast float %5838, %5840
  %5842 = fdiv fast float %5836, %5841
  %5843 = fmul fast float %5842, %5830
  %5844 = fsub fast float %5831, %5843
  %5845 = fmul fast float %5844, %5828
  %5846 = fmul fast float %5845, %5659
  %5847 = fsub fast float 1.000000e+00, %5846
  %5848 = fmul fast float %5842, %5660
  %5849 = fsub fast float %5847, %5848
  %5850 = fmul fast float %5845, %5845
  %5851 = fmul fast float %5842, 4.000000e+00
  %5852 = fmul fast float %5851, %5849
  %5853 = fsub fast float %5850, %5852
  %5854 = call float @dx.op.unary.f32(i32 24, float %5853)  ; Sqrt(value)
  %5855 = fcmp fast oge float %5845, 0.000000e+00
  %5856 = fsub fast float -0.000000e+00, %5854
  %5857 = select i1 %5855, float %5856, float %5854
  %5858 = fsub fast float %5857, %5845
  %5859 = fdiv fast float %5858, %5842
  %5860 = fdiv fast float %5849, %5858
  %5861 = fmul fast float %5859, 5.000000e-01
  %5862 = fmul fast float %5860, 2.000000e+00
  %5863 = select i1 %5855, float %5861, float %5862
  %5864 = select i1 %5855, float %5862, float %5861
  %5865 = call float @dx.op.binary.f32(i32 35, float %5863, float %5864)  ; FMax(a,b)
  %5866 = call float @dx.op.binary.f32(i32 36, float %5863, float %5864)  ; FMin(a,b)
  %5867 = fcmp fast ogt float %5824, %5865
  %5868 = fsub fast float %5824, %5866
  %5869 = fsub fast float %5824, %5865
  %5870 = fsub fast float %5865, %5866
  %5871 = select i1 %5867, float %5869, float %5870
  %5872 = fmul float %5868, %5871
  %5873 = select i1 %5867, float %5866, float %5824
  %5874 = fcmp fast ogt float %5824, %5866
  %5875 = fmul fast float %5873, %5865
  %5876 = fadd fast float %5873, %5865
  %5877 = fmul fast float %5876, %5659
  %5878 = fadd fast float %5875, %5660
  %5879 = fsub fast float %5878, %5877
  %5880 = fdiv fast float %5879, %5872
  %5881 = select i1 %5874, float %5880, float 0.000000e+00
  %5882 = fsub fast float 1.000000e+00, %5881
  %5883 = select i1 %5867, float %5882, float %5881
  %5884 = call float @dx.op.unary.f32(i32 7, float %5883)  ; Saturate(value)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5644, 3
  %5886 = fmul fast float %5885, %5884
  %5887 = fsub fast float 1.000000e+00, %5886
  br label %5888

; <label>:5888                                    ; preds = %5817, %5529, %5494, %5490, %5454
  %5889 = phi float [ 1.000000e+00, %5454 ], [ %5887, %5817 ], [ 1.000000e+00, %5494 ], [ 1.000000e+00, %5529 ], [ 1.000000e+00, %5490 ]
  %5890 = fcmp fast ogt float %5486, 0.000000e+00
  br i1 %5890, label %5891, label %5899, !dx.controlflow.hints !112

; <label>:5891                                    ; preds = %5888
  %5892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5892, 2
  %5894 = fadd fast float %5893, %5367
  %5895 = call float @dx.op.binary.f32(i32 35, float %5894, float 0.000000e+00)  ; FMax(a,b)
  %5896 = fadd fast float %5895, 0x3F10000000000000
  %5897 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5385, float %5386, float undef, float undef, i32 0, i32 0, i32 undef, float %5896)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5898 = extractvalue %dx.types.ResRet.f32 %5897, 0
  br label %5899

; <label>:5899                                    ; preds = %5891, %5888
  %5900 = phi float [ %5898, %5891 ], [ 1.000000e+00, %5888 ]
  %5901 = fcmp fast ogt float %5484, 0.000000e+00
  br i1 %5901, label %5902, label %5910, !dx.controlflow.hints !113

; <label>:5902                                    ; preds = %5899
  %5903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.f32 %5903, 1
  %5905 = fadd fast float %5904, %5367
  %5906 = call float @dx.op.binary.f32(i32 35, float %5905, float 0.000000e+00)  ; FMax(a,b)
  %5907 = fadd fast float %5906, 0x3F10000000000000
  %5908 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5377, float %5378, float undef, float undef, i32 0, i32 0, i32 undef, float %5907)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5909 = extractvalue %dx.types.ResRet.f32 %5908, 0
  br label %5910

; <label>:5910                                    ; preds = %5902, %5899
  %5911 = phi float [ %5909, %5902 ], [ 1.000000e+00, %5899 ]
  %5912 = fcmp fast ogt float %5483, 0.000000e+00
  br i1 %5912, label %5913, label %5925, !dx.controlflow.hints !114

; <label>:5913                                    ; preds = %5910
  %5914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5915 = extractvalue %dx.types.CBufRet.f32 %5914, 0
  %5916 = fadd fast float %5915, %5367
  %5917 = call float @dx.op.binary.f32(i32 35, float %5916, float 0.000000e+00)  ; FMax(a,b)
  %5918 = fadd fast float %5917, 0x3F10000000000000
  br i1 %5370, label %5919, label %5922, !dx.controlflow.hints !115

; <label>:5919                                    ; preds = %5913
  %5920 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %5359, float %5363, float undef, float undef, i32 0, i32 0, i32 undef, float %5918)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5921 = extractvalue %dx.types.ResRet.f32 %5920, 0
  br label %5925

; <label>:5922                                    ; preds = %5913
  %5923 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5359, float %5363, float undef, float undef, i32 0, i32 0, i32 undef, float %5918)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5924 = extractvalue %dx.types.ResRet.f32 %5923, 0
  br label %5925

; <label>:5925                                    ; preds = %5922, %5919, %5910
  %5926 = phi float [ %5921, %5919 ], [ %5924, %5922 ], [ 1.000000e+00, %5910 ]
  %5927 = fsub fast float %5900, %5889
  %5928 = fmul fast float %5927, %5456
  %5929 = fadd fast float %5928, %5889
  %5930 = fsub fast float %5911, %5929
  %5931 = fmul fast float %5930, %5455
  %5932 = fadd fast float %5931, %5929
  %5933 = fsub fast float %5926, %5932
  %5934 = fmul fast float %5933, %5483
  %5935 = fadd fast float %5934, %5932
  %5936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.f32 %5936, 2
  %5938 = fcmp fast ogt float %5937, 0.000000e+00
  br i1 %5938, label %5939, label %5979, !dx.controlflow.hints !116

; <label>:5939                                    ; preds = %5925
  %5940 = fcmp fast ugt float %5937, 0.000000e+00
  br i1 %5940, label %5941, label %5976

; <label>:5941                                    ; preds = %5939
  %5942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5943 = extractvalue %dx.types.CBufRet.f32 %5942, 0
  %5944 = extractvalue %dx.types.CBufRet.f32 %5942, 1
  %5945 = extractvalue %dx.types.CBufRet.f32 %5942, 2
  %5946 = extractvalue %dx.types.CBufRet.f32 %5942, 3
  %5947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5948 = extractvalue %dx.types.CBufRet.f32 %5947, 0
  %5949 = extractvalue %dx.types.CBufRet.f32 %5947, 1
  %5950 = extractvalue %dx.types.CBufRet.f32 %5947, 2
  %5951 = extractvalue %dx.types.CBufRet.f32 %5947, 3
  %5952 = extractvalue %dx.types.CBufRet.f32 %5936, 0
  %5953 = extractvalue %dx.types.CBufRet.f32 %5936, 1
  %5954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5955 = extractvalue %dx.types.CBufRet.f32 %5954, 0
  %5956 = extractvalue %dx.types.CBufRet.f32 %5954, 1
  %5957 = extractvalue %dx.types.CBufRet.f32 %5954, 2
  %5958 = fadd fast float %5955, %5336
  %5959 = fadd fast float %5956, %5337
  %5960 = fadd fast float %5957, %5338
  %5961 = fmul fast float %5958, %5943
  %5962 = call float @dx.op.tertiary.f32(i32 46, float %5944, float %5959, float %5961)  ; FMad(a,b,c)
  %5963 = call float @dx.op.tertiary.f32(i32 46, float %5945, float %5960, float %5962)  ; FMad(a,b,c)
  %5964 = fadd fast float %5963, %5946
  %5965 = fmul fast float %5958, %5948
  %5966 = call float @dx.op.tertiary.f32(i32 46, float %5949, float %5959, float %5965)  ; FMad(a,b,c)
  %5967 = call float @dx.op.tertiary.f32(i32 46, float %5950, float %5960, float %5966)  ; FMad(a,b,c)
  %5968 = fadd fast float %5967, %5951
  %5969 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5964, float %5968, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5970 = extractvalue %dx.types.ResRet.f32 %5969, 0
  %5971 = fmul fast float %5970, %5953
  %5972 = fadd fast float %5971, %5952
  %5973 = call float @dx.op.unary.f32(i32 7, float %5972)  ; Saturate(value)
  %5974 = fmul fast float %5973, %5937
  %5975 = fsub fast float 1.000000e+00, %5974
  br label %5976

; <label>:5976                                    ; preds = %5941, %5939
  %5977 = phi float [ %5975, %5941 ], [ 1.000000e+00, %5939 ]
  %5978 = fmul fast float %5977, %5935
  br label %5979

; <label>:5979                                    ; preds = %5976, %5925, %5316
  %5980 = phi float [ 1.000000e+00, %5316 ], [ %5978, %5976 ], [ %5935, %5925 ]
  %5981 = call float @dx.op.binary.f32(i32 36, float %5980, float %5980)  ; FMin(a,b)
  %5982 = call float @dx.op.binary.f32(i32 36, float %5980, float %5981)  ; FMin(a,b)
  %5983 = fcmp fast ogt float %5982, 0.000000e+00
  br i1 %5983, label %5984, label %6144, !dx.controlflow.hints !117

; <label>:5984                                    ; preds = %5979
  %5985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5986 = extractvalue %dx.types.CBufRet.f32 %5985, 0
  %5987 = extractvalue %dx.types.CBufRet.f32 %5985, 1
  %5988 = extractvalue %dx.types.CBufRet.f32 %5985, 2
  %5989 = extractvalue %dx.types.CBufRet.f32 %5985, 3
  %5990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5991 = extractvalue %dx.types.CBufRet.f32 %5990, 0
  %5992 = extractvalue %dx.types.CBufRet.f32 %5990, 1
  %5993 = extractvalue %dx.types.CBufRet.f32 %5990, 2
  %5994 = extractvalue %dx.types.CBufRet.f32 %5990, 3
  %5995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5996 = extractvalue %dx.types.CBufRet.f32 %5995, 0
  %5997 = extractvalue %dx.types.CBufRet.f32 %5995, 1
  %5998 = extractvalue %dx.types.CBufRet.f32 %5995, 2
  %5999 = extractvalue %dx.types.CBufRet.f32 %5995, 3
  %6000 = fmul fast float %5986, %5336
  %6001 = call float @dx.op.tertiary.f32(i32 46, float %5337, float %5987, float %6000)  ; FMad(a,b,c)
  %6002 = call float @dx.op.tertiary.f32(i32 46, float %5338, float %5988, float %6001)  ; FMad(a,b,c)
  %6003 = fadd fast float %6002, %5989
  %6004 = fmul fast float %5991, %5336
  %6005 = call float @dx.op.tertiary.f32(i32 46, float %5337, float %5992, float %6004)  ; FMad(a,b,c)
  %6006 = call float @dx.op.tertiary.f32(i32 46, float %5338, float %5993, float %6005)  ; FMad(a,b,c)
  %6007 = fadd fast float %6006, %5994
  %6008 = fmul fast float %5996, %5336
  %6009 = call float @dx.op.tertiary.f32(i32 46, float %5337, float %5997, float %6008)  ; FMad(a,b,c)
  %6010 = call float @dx.op.tertiary.f32(i32 46, float %5338, float %5998, float %6009)  ; FMad(a,b,c)
  %6011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6012 = extractvalue %dx.types.CBufRet.f32 %6011, 0
  %6013 = extractvalue %dx.types.CBufRet.f32 %6011, 1
  %6014 = extractvalue %dx.types.CBufRet.f32 %6011, 3
  %6015 = fmul fast float %6014, %6003
  %6016 = fmul fast float %6014, %6007
  %6017 = fadd fast float %6015, %6012
  %6018 = fadd fast float %6016, %6013
  %6019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6020 = extractvalue %dx.types.CBufRet.f32 %6019, 0
  %6021 = extractvalue %dx.types.CBufRet.f32 %6019, 1
  %6022 = fsub fast float %6017, %6020
  %6023 = fsub fast float %6018, %6021
  %6024 = fcmp fast olt float %6022, 0.000000e+00
  %6025 = fcmp fast olt float %6023, 0.000000e+00
  %6026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6027 = extractvalue %dx.types.CBufRet.f32 %6026, 0
  %6028 = extractvalue %dx.types.CBufRet.f32 %6026, 1
  %6029 = extractvalue %dx.types.CBufRet.f32 %6026, 2
  %6030 = extractvalue %dx.types.CBufRet.f32 %6026, 3
  %6031 = select i1 %6024, float %6027, float %6029
  %6032 = select i1 %6025, float %6028, float %6030
  %6033 = fmul fast float %6031, %6022
  %6034 = fmul fast float %6032, %6023
  %6035 = call float @dx.op.unary.f32(i32 6, float %6033)  ; FAbs(value)
  %6036 = call float @dx.op.unary.f32(i32 6, float %6034)  ; FAbs(value)
  %6037 = extractvalue %dx.types.CBufRet.f32 %5331, 0
  %6038 = call float @dx.op.binary.f32(i32 35, float %6035, float %6036)  ; FMax(a,b)
  %6039 = fsub fast float %6037, %6038
  %6040 = call float @dx.op.unary.f32(i32 7, float %6039)  ; Saturate(value)
  %6041 = fcmp fast ogt float %6040, 0.000000e+00
  br i1 %6041, label %6042, label %6083, !dx.controlflow.hints !118

; <label>:6042                                    ; preds = %5984
  %6043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6017, float %6018, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6044 = extractvalue %dx.types.ResRet.f32 %6043, 1
  %6045 = fcmp fast ogt float %6044, 0.000000e+00
  br i1 %6045, label %6046, label %6078

; <label>:6046                                    ; preds = %6042
  %6047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6017, float %6018, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6048 = extractvalue %dx.types.ResRet.f32 %6047, 0
  %6049 = extractvalue %dx.types.ResRet.f32 %6047, 1
  %6050 = extractvalue %dx.types.ResRet.f32 %6047, 2
  %6051 = extractvalue %dx.types.ResRet.f32 %6047, 3
  %6052 = fsub fast float 1.000000e+00, %5999
  %6053 = fsub fast float %6052, %6010
  %6054 = fmul fast float %6053, 0x400921FB60000000
  %6055 = fadd fast float %6054, 0x3FF921FB60000000
  %6056 = call float @dx.op.unary.f32(i32 13, float %6055)  ; Sin(value)
  %6057 = fadd fast float %6056, -1.000000e+00
  %6058 = fmul fast float %6057, 0x3FD45F3060000000
  %6059 = fmul fast float %6053, 0x401921FB60000000
  %6060 = fadd fast float %6059, 0x400921FB60000000
  %6061 = call float @dx.op.unary.f32(i32 13, float %6060)  ; Sin(value)
  %6062 = fadd fast float %6061, 0x3E7777A5C0000000
  %6063 = fmul fast float %6062, 0x3FC45F3060000000
  %6064 = fmul fast float %6053, 0x4022D97C80000000
  %6065 = fadd fast float %6064, 0x4012D97C80000000
  %6066 = call float @dx.op.unary.f32(i32 13, float %6065)  ; Sin(value)
  %6067 = fadd fast float %6066, 1.000000e+00
  %6068 = fmul fast float %6067, 0x3FBB2995E0000000
  %6069 = fmul fast float %6053, 0x402921FB60000000
  %6070 = fadd fast float %6069, 0x401921FB60000000
  %6071 = call float @dx.op.unary.f32(i32 13, float %6070)  ; Sin(value)
  %6072 = fadd fast float %6071, 0xBE8777A5C0000000
  %6073 = fmul fast float %6072, 0x3FB45F3060000000
  %6074 = call float @dx.op.dot4.f32(i32 56, float %6048, float %6049, float %6050, float %6051, float %6058, float %6063, float %6068, float %6073)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6075 = fmul fast float %6074, 0xBFF7154760000000
  %6076 = call float @dx.op.unary.f32(i32 21, float %6075)  ; Exp(value)
  %6077 = call float @dx.op.unary.f32(i32 7, float %6076)  ; Saturate(value)
  br label %6078

; <label>:6078                                    ; preds = %6046, %6042
  %6079 = phi float [ %6077, %6046 ], [ 1.000000e+00, %6042 ]
  %6080 = fadd fast float %6079, -1.000000e+00
  %6081 = fmul fast float %6080, %6040
  %6082 = fadd fast float %6081, 1.000000e+00
  br label %6083

; <label>:6083                                    ; preds = %6078, %5984
  %6084 = phi float [ %6082, %6078 ], [ 1.000000e+00, %5984 ]
  %6085 = fmul fast float %6084, %5980
  %6086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6087 = extractvalue %dx.types.CBufRet.f32 %6086, 0
  %6088 = extractvalue %dx.types.CBufRet.f32 %6086, 1
  %6089 = extractvalue %dx.types.CBufRet.f32 %6086, 2
  %6090 = fadd fast float %6087, %191
  %6091 = fadd fast float %6088, %192
  %6092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6093 = extractvalue %dx.types.CBufRet.f32 %6092, 1
  %6094 = fsub fast float -0.000000e+00, %6090
  %6095 = fsub fast float -0.000000e+00, %6091
  %6096 = fsub fast float %5100, %6089
  %6097 = fadd fast float %6096, %6093
  %6098 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6094, float %6095, float %6097)  ; Dot3(ax,ay,az,bx,by,bz)
  %6099 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5317, float %5318, float %5319)  ; Dot3(ax,ay,az,bx,by,bz)
  %6100 = fdiv fast float 1.000000e+00, %6099
  %6101 = fmul fast float %6100, %6098
  %6102 = fmul fast float %5317, %6101
  %6103 = fmul fast float %5318, %6101
  %6104 = fadd fast float %6102, %6090
  %6105 = fadd fast float %6103, %6091
  %6106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6107 = extractvalue %dx.types.CBufRet.f32 %6106, 0
  %6108 = extractvalue %dx.types.CBufRet.f32 %6106, 1
  %6109 = fsub fast float %6104, %6107
  %6110 = fsub fast float %6105, %6108
  %6111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6112 = extractvalue %dx.types.CBufRet.f32 %6111, 2
  %6113 = extractvalue %dx.types.CBufRet.f32 %6111, 3
  %6114 = fmul fast float %6109, %6112
  %6115 = fmul fast float %6110, %6113
  %6116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6117 = extractvalue %dx.types.CBufRet.i32 %6116, 3
  %6118 = icmp eq i32 %6117, 0
  br i1 %6118, label %6124, label %6119

; <label>:6119                                    ; preds = %6083
  %6120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6114, float %6115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6121 = extractvalue %dx.types.ResRet.f32 %6120, 0
  %6122 = extractvalue %dx.types.ResRet.f32 %6120, 1
  %6123 = extractvalue %dx.types.ResRet.f32 %6120, 2
  br label %6129

; <label>:6124                                    ; preds = %6083
  %6125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6114, float %6115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6126 = extractvalue %dx.types.ResRet.f32 %6125, 0
  %6127 = extractvalue %dx.types.ResRet.f32 %6125, 1
  %6128 = extractvalue %dx.types.ResRet.f32 %6125, 2
  br label %6129

; <label>:6129                                    ; preds = %6124, %6119
  %6130 = phi float [ %6121, %6119 ], [ %6126, %6124 ]
  %6131 = phi float [ %6122, %6119 ], [ %6127, %6124 ]
  %6132 = phi float [ %6123, %6119 ], [ %6128, %6124 ]
  %6133 = extractvalue %dx.types.CBufRet.f32 %6092, 2
  %6134 = fmul fast float %6133, %6130
  %6135 = extractvalue %dx.types.CBufRet.f32 %6092, 0
  %6136 = fsub fast float %6101, %6135
  %6137 = fsub fast float %6136, %6134
  %6138 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6137)  ; FMax(a,b)
  %6139 = fmul fast float %6138, %6131
  %6140 = call float @dx.op.binary.f32(i32 36, float %6132, float %6139)  ; FMin(a,b)
  %6141 = fmul fast float %6140, 0xBFF7154760000000
  %6142 = call float @dx.op.unary.f32(i32 21, float %6141)  ; Exp(value)
  %6143 = fmul fast float %6085, %6142
  br label %6144

; <label>:6144                                    ; preds = %6129, %5979
  %6145 = phi float [ %6143, %6129 ], [ %5980, %5979 ]
  %6146 = call float @dx.op.binary.f32(i32 36, float %6145, float %6145)  ; FMin(a,b)
  %6147 = call float @dx.op.binary.f32(i32 36, float %6145, float %6146)  ; FMin(a,b)
  %6148 = fcmp fast ogt float %6147, 0.000000e+00
  br i1 %6148, label %6149, label %6400, !dx.controlflow.hints !119

; <label>:6149                                    ; preds = %6144
  %6150 = fmul fast float %6145, %5328
  %6151 = fmul fast float %6145, %5329
  %6152 = fmul fast float %6145, %5330
  %6153 = fsub fast float %193, %4314
  %6154 = fcmp fast ogt float %6153, 0.000000e+00
  %6155 = fmul fast float %5317, 5.120000e+02
  %6156 = fmul fast float %5318, 5.120000e+02
  %6157 = fmul fast float %5319, 5.120000e+02
  %6158 = fadd fast float %6157, %193
  %6159 = fsub fast float %4314, %6158
  %6160 = fmul fast float %6159, 2.000000e+00
  %6161 = fadd fast float %6160, %6158
  %6162 = select i1 %6154, float %6161, float %6158
  %6163 = fsub fast float %6162, %193
  %6164 = call float @dx.op.dot3.f32(i32 55, float %6155, float %6156, float %6163, float %6155, float %6156, float %6163)  ; Dot3(ax,ay,az,bx,by,bz)
  %6165 = call float @dx.op.unary.f32(i32 25, float %6164)  ; Rsqrt(value)
  %6166 = fmul fast float %6165, %6155
  %6167 = fmul fast float %6165, %6156
  %6168 = fmul fast float %6165, %6163
  %6169 = fsub fast float %4314, %193
  %6170 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6169)  ; Dot3(ax,ay,az,bx,by,bz)
  %6171 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6166, float %6167, float %6168)  ; Dot3(ax,ay,az,bx,by,bz)
  %6172 = fdiv fast float 1.000000e+00, %6171
  %6173 = fmul fast float %6172, %6170
  %6174 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6153, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6175 = fcmp fast ogt float %6174, 0.000000e+00
  %6176 = fcmp fast olt float %6174, 0.000000e+00
  %6177 = zext i1 %6175 to i32
  %6178 = zext i1 %6176 to i32
  %6179 = sub nsw i32 %6177, %6178
  %6180 = sitofp i32 %6179 to float
  %6181 = fsub fast float %6162, %4314
  %6182 = call float @dx.op.dot3.f32(i32 55, float %6155, float %6156, float %6181, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6183 = fcmp fast ogt float %6182, 0.000000e+00
  %6184 = fcmp fast olt float %6182, 0.000000e+00
  %6185 = zext i1 %6183 to i32
  %6186 = zext i1 %6184 to i32
  %6187 = sub nsw i32 %6185, %6186
  %6188 = sitofp i32 %6187 to float
  %6189 = fcmp fast une float %6180, %6188
  br i1 %6189, label %6190, label %6200

; <label>:6190                                    ; preds = %6149
  %6191 = fmul fast float %6173, %6168
  %6192 = fmul fast float %6173, %6167
  %6193 = fmul fast float %6173, %6166
  %6194 = fmul fast float %6193, %6193
  %6195 = fmul fast float %6192, %6192
  %6196 = fadd fast float %6194, %6195
  %6197 = fmul fast float %6191, %6191
  %6198 = fadd fast float %6196, %6197
  %6199 = call float @dx.op.unary.f32(i32 24, float %6198)  ; Sqrt(value)
  br label %6210

; <label>:6200                                    ; preds = %6149
  %6201 = icmp slt i32 %6179, 0
  br i1 %6201, label %6202, label %6210

; <label>:6202                                    ; preds = %6200
  %6203 = fsub fast float %193, %6162
  %6204 = fmul fast float %6155, %6155
  %6205 = fmul fast float %6156, %6156
  %6206 = fadd fast float %6204, %6205
  %6207 = fmul fast float %6203, %6203
  %6208 = fadd fast float %6206, %6207
  %6209 = call float @dx.op.unary.f32(i32 24, float %6208)  ; Sqrt(value)
  br label %6210

; <label>:6210                                    ; preds = %6202, %6200, %6190
  %6211 = phi float [ %6199, %6190 ], [ %6209, %6202 ], [ 0.000000e+00, %6200 ]
  %6212 = fsub fast float -0.000000e+00, %6211
  %6213 = select i1 %6154, float -0.000000e+00, float %6212
  %6214 = fmul fast float %4315, 0x3FF7154760000000
  %6215 = fmul fast float %6214, %6213
  %6216 = fmul fast float %4316, 0x3FF7154760000000
  %6217 = fmul fast float %6216, %6213
  %6218 = fmul fast float %4317, 0x3FF7154760000000
  %6219 = fmul fast float %6218, %6213
  %6220 = call float @dx.op.unary.f32(i32 21, float %6215)  ; Exp(value)
  %6221 = call float @dx.op.unary.f32(i32 21, float %6217)  ; Exp(value)
  %6222 = call float @dx.op.unary.f32(i32 21, float %6219)  ; Exp(value)
  %6223 = call float @dx.op.unary.f32(i32 7, float %6220)  ; Saturate(value)
  %6224 = call float @dx.op.unary.f32(i32 7, float %6221)  ; Saturate(value)
  %6225 = call float @dx.op.unary.f32(i32 7, float %6222)  ; Saturate(value)
  %6226 = fmul fast float %6150, %6223
  %6227 = fmul fast float %6151, %6224
  %6228 = fmul fast float %6152, %6225
  %6229 = fsub fast float %5317, %211
  %6230 = fsub fast float %5318, %212
  %6231 = fsub fast float %5319, %213
  %6232 = call float @dx.op.dot3.f32(i32 55, float %6229, float %6230, float %6231, float %6229, float %6230, float %6231)  ; Dot3(ax,ay,az,bx,by,bz)
  %6233 = call float @dx.op.unary.f32(i32 25, float %6232)  ; Rsqrt(value)
  %6234 = fmul fast float %6233, %6229
  %6235 = fmul fast float %6233, %6230
  %6236 = fmul fast float %6233, %6231
  %6237 = call float @dx.op.dot3.f32(i32 55, float %5317, float %5318, float %5319, float %5095, float %5096, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %6238 = call float @dx.op.dot3.f32(i32 55, float %4924, float %4925, float %4926, float %6234, float %6235, float %6236)  ; Dot3(ax,ay,az,bx,by,bz)
  %6239 = call float @dx.op.unary.f32(i32 7, float %6237)  ; Saturate(value)
  %6240 = fmul fast float %6239, %6239
  %6241 = fmul fast float %6240, %5116
  %6242 = call float @dx.op.unary.f32(i32 7, float %6241)  ; Saturate(value)
  %6243 = fmul fast float %6242, %6239
  %6244 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5096, float %5097, float %6234, float %6235, float %6236)  ; Dot3(ax,ay,az,bx,by,bz)
  %6245 = fmul fast float %6244, %6244
  %6246 = call float @dx.op.unary.f32(i32 6, float %6237)  ; FAbs(value)
  %6247 = fsub fast float 1.000000e+00, %5098
  %6248 = call float @dx.op.binary.f32(i32 35, float %6247, float 0x3F847AE140000000)  ; FMax(a,b)
  %6249 = fmul fast float %6248, %6248
  %6250 = fmul fast float %6249, %6249
  %6251 = fsub fast float 1.000000e+00, %6250
  %6252 = fmul fast float %5103, %5103
  %6253 = fmul fast float %6252, %6251
  %6254 = fadd fast float %6253, %6250
  %6255 = bitcast float %6254 to i32
  %6256 = ashr i32 %6255, 1
  %6257 = add nsw i32 %6256, 532487669
  %6258 = bitcast i32 %6257 to float
  %6259 = fadd fast float %6258, %5103
  %6260 = fmul fast float %6250, %6245
  %6261 = fsub fast float 1.000000e+00, %6245
  %6262 = fadd fast float %6261, %6260
  %6263 = fmul fast float %6246, %6246
  %6264 = fmul fast float %6263, %6251
  %6265 = fadd fast float %6264, %6250
  %6266 = bitcast float %6265 to i32
  %6267 = ashr i32 %6266, 1
  %6268 = add nsw i32 %6267, 532487669
  %6269 = bitcast i32 %6268 to float
  %6270 = fadd fast float %6269, %6246
  %6271 = fmul fast float %6262, %6262
  %6272 = fmul fast float %6271, %6259
  %6273 = fmul fast float %6272, %6270
  %6274 = fdiv fast float 0x3FF0A00000000000, %6273
  %6275 = fmul fast float %6274, %6250
  %6276 = call float @dx.op.unary.f32(i32 6, float %6238)  ; FAbs(value)
  %6277 = fsub fast float 1.000000e+00, %6276
  %6278 = bitcast float %6277 to i32
  %6279 = sitofp i32 %6278 to float
  %6280 = fmul fast float %6279, 5.000000e+00
  %6281 = fadd fast float %6280, 0xC1EFBF8940000000
  %6282 = fptosi float %6281 to i32
  %6283 = bitcast i32 %6282 to float
  %6284 = fsub fast float 1.000000e+00, %5089
  %6285 = fsub fast float 1.000000e+00, %5090
  %6286 = fsub fast float 1.000000e+00, %5101
  %6287 = fmul fast float %6283, %6284
  %6288 = fmul fast float %6283, %6285
  %6289 = fmul fast float %6283, %6286
  %6290 = fadd fast float %6287, %5089
  %6291 = fadd fast float %6288, %5090
  %6292 = fadd fast float %6289, %5101
  br i1 %5228, label %6293, label %6316

; <label>:6293                                    ; preds = %6210
  %6294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3883, float %6276, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6295 = extractvalue %dx.types.ResRet.f32 %6294, 0
  %6296 = extractvalue %dx.types.ResRet.f32 %6294, 1
  %6297 = extractvalue %dx.types.ResRet.f32 %6294, 2
  %6298 = fadd fast float %6295, -5.000000e-01
  %6299 = fadd fast float %6296, -5.000000e-01
  %6300 = fadd fast float %6297, -5.000000e-01
  %6301 = fmul fast float %5089, 4.000000e+00
  %6302 = fmul fast float %6301, %6284
  %6303 = fmul fast float %6302, %6298
  %6304 = fmul fast float %5090, 4.000000e+00
  %6305 = fmul fast float %6304, %6285
  %6306 = fmul fast float %6305, %6299
  %6307 = fmul fast float %5101, 4.000000e+00
  %6308 = fmul fast float %6307, %6286
  %6309 = fmul fast float %6308, %6300
  %6310 = fadd fast float %6303, %6290
  %6311 = fadd fast float %6306, %6291
  %6312 = fadd fast float %6309, %6292
  %6313 = call float @dx.op.unary.f32(i32 7, float %6310)  ; Saturate(value)
  %6314 = call float @dx.op.unary.f32(i32 7, float %6311)  ; Saturate(value)
  %6315 = call float @dx.op.unary.f32(i32 7, float %6312)  ; Saturate(value)
  br label %6316

; <label>:6316                                    ; preds = %6293, %6210
  %6317 = phi float [ %6313, %6293 ], [ %6290, %6210 ]
  %6318 = phi float [ %6314, %6293 ], [ %6291, %6210 ]
  %6319 = phi float [ %6315, %6293 ], [ %6292, %6210 ]
  %6320 = fmul fast float %6237, 9.843750e-01
  %6321 = fadd fast float %6320, 7.812500e-03
  %6322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6321, float %5218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6323 = extractvalue %dx.types.ResRet.f32 %6322, 2
  %6324 = extractvalue %dx.types.ResRet.f32 %6322, 3
  %6325 = fmul fast float %6323, %5089
  %6326 = fmul fast float %6323, %5090
  %6327 = fmul fast float %6323, %5101
  %6328 = fadd fast float %6325, %6324
  %6329 = fadd fast float %6326, %6324
  %6330 = fadd fast float %6327, %6324
  br i1 %5228, label %6331, label %6354

; <label>:6331                                    ; preds = %6316
  %6332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3883, float %6237, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6333 = extractvalue %dx.types.ResRet.f32 %6332, 0
  %6334 = extractvalue %dx.types.ResRet.f32 %6332, 1
  %6335 = extractvalue %dx.types.ResRet.f32 %6332, 2
  %6336 = fadd fast float %6333, -5.000000e-01
  %6337 = fadd fast float %6334, -5.000000e-01
  %6338 = fadd fast float %6335, -5.000000e-01
  %6339 = fmul fast float %5089, 4.000000e+00
  %6340 = fmul fast float %6339, %6284
  %6341 = fmul fast float %6340, %6336
  %6342 = fmul fast float %5090, 4.000000e+00
  %6343 = fmul fast float %6342, %6285
  %6344 = fmul fast float %6343, %6337
  %6345 = fmul fast float %5101, 4.000000e+00
  %6346 = fmul fast float %6345, %6286
  %6347 = fmul fast float %6346, %6338
  %6348 = fadd fast float %6341, %6328
  %6349 = fadd fast float %6344, %6329
  %6350 = fadd fast float %6347, %6330
  %6351 = call float @dx.op.unary.f32(i32 7, float %6348)  ; Saturate(value)
  %6352 = call float @dx.op.unary.f32(i32 7, float %6349)  ; Saturate(value)
  %6353 = call float @dx.op.unary.f32(i32 7, float %6350)  ; Saturate(value)
  br label %6354

; <label>:6354                                    ; preds = %6331, %6316
  %6355 = phi float [ %6351, %6331 ], [ %6328, %6316 ]
  %6356 = phi float [ %6352, %6331 ], [ %6329, %6316 ]
  %6357 = phi float [ %6353, %6331 ], [ %6330, %6316 ]
  %6358 = call float @dx.op.binary.f32(i32 35, float %6356, float %6357)  ; FMax(a,b)
  %6359 = call float @dx.op.binary.f32(i32 35, float %6355, float %6358)  ; FMax(a,b)
  %6360 = fsub fast float 1.000000e+00, %6359
  %6361 = fmul fast float %6317, %6275
  %6362 = fmul fast float %6318, %6275
  %6363 = fmul fast float %6319, %6275
  %6364 = fsub fast float 1.000000e+00, %6238
  %6365 = bitcast float %6364 to i32
  %6366 = sitofp i32 %6365 to float
  %6367 = fmul fast float %6366, 5.000000e+00
  %6368 = fadd fast float %6367, 0xC1EFBF8940000000
  %6369 = fptosi float %6368 to i32
  %6370 = bitcast i32 %6369 to float
  %6371 = fmul fast float %6370, %3884
  %6372 = fmul fast float %6360, %6371
  %6373 = fmul fast float %6372, %5278
  %6374 = fmul fast float %6372, %5279
  %6375 = fmul fast float %6372, %5280
  %6376 = fadd fast float %6373, %6361
  %6377 = fadd fast float %6374, %6362
  %6378 = fadd fast float %6375, %6363
  %6379 = fmul fast float %6243, %6226
  %6380 = fmul fast float %6379, %6360
  %6381 = fmul fast float %6243, %6227
  %6382 = fmul fast float %6381, %6360
  %6383 = fmul fast float %6243, %6228
  %6384 = fmul fast float %6383, %6360
  %6385 = fmul fast float %6379, %6376
  %6386 = fmul fast float %6381, %6377
  %6387 = fmul fast float %6383, %6378
  %6388 = fadd fast float %6380, %5262
  %6389 = fmul fast float %6388, %3917
  %6390 = fadd fast float %6382, %5263
  %6391 = fmul fast float %6390, %3917
  %6392 = fadd fast float %6384, %5264
  %6393 = fmul fast float %6392, %3917
  %6394 = fadd fast float %6385, %5305
  %6395 = fmul fast float %6394, %3917
  %6396 = fadd fast float %6386, %5308
  %6397 = fmul fast float %6396, %3917
  %6398 = fadd fast float %6387, %5311
  %6399 = fmul fast float %6398, %3917
  br label %6400

; <label>:6400                                    ; preds = %6354, %6144, %5255
  %6401 = phi float [ %5306, %5255 ], [ %5306, %6144 ], [ %6395, %6354 ]
  %6402 = phi float [ %5309, %5255 ], [ %5309, %6144 ], [ %6397, %6354 ]
  %6403 = phi float [ %5312, %5255 ], [ %5312, %6144 ], [ %6399, %6354 ]
  %6404 = phi float [ %5301, %5255 ], [ %5301, %6144 ], [ %6389, %6354 ]
  %6405 = phi float [ %5302, %5255 ], [ %5302, %6144 ], [ %6391, %6354 ]
  %6406 = phi float [ %5303, %5255 ], [ %5303, %6144 ], [ %6393, %6354 ]
  %6407 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6408 = extractvalue %dx.types.CBufRet.i32 %6407, 0
  %6409 = icmp eq i32 %6408, 0
  br i1 %6409, label %7030, label %6410

; <label>:6410                                    ; preds = %6400
  %6411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6412 = extractvalue %dx.types.CBufRet.f32 %6411, 2
  %6413 = extractvalue %dx.types.CBufRet.f32 %6411, 3
  %6414 = fmul fast float %6412, %104
  %6415 = fmul fast float %6413, %105
  %6416 = fptoui float %6414 to i32
  %6417 = fptoui float %6415 to i32
  %6418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6419 = extractvalue %dx.types.CBufRet.f32 %6418, 0
  %6420 = extractvalue %dx.types.CBufRet.f32 %6418, 2
  %6421 = extractvalue %dx.types.CBufRet.f32 %6418, 3
  %6422 = fadd fast float %95, -4.000000e+00
  %6423 = call float @dx.op.binary.f32(i32 35, float %6422, float 0.000000e+00)  ; FMax(a,b)
  %6424 = fadd fast float %6423, %6419
  %6425 = fmul fast float %6424, %6420
  %6426 = call float @dx.op.unary.f32(i32 23, float %6425)  ; Log(value)
  %6427 = fmul fast float %6426, %6421
  %6428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6429 = extractvalue %dx.types.CBufRet.f32 %6428, 2
  %6430 = fmul fast float %6427, %6429
  %6431 = call float @dx.op.unary.f32(i32 7, float %6430)  ; Saturate(value)
  %6432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6433 = extractvalue %dx.types.CBufRet.i32 %6432, 1
  %6434 = add i32 %6433, -1
  %6435 = uitofp i32 %6433 to float
  %6436 = fmul fast float %6435, %6431
  %6437 = fptoui float %6436 to i32
  %6438 = call i32 @dx.op.binary.i32(i32 40, i32 %6437, i32 %6434)  ; UMin(a,b)
  %6439 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6440 = extractvalue %dx.types.CBufRet.i32 %6439, 2
  %6441 = extractvalue %dx.types.CBufRet.i32 %6439, 3
  %6442 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6417, i32 %6440, i32 %6416)  ; UMad(a,b,c)
  %6443 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6438, i32 %6441, i32 %6442)  ; UMad(a,b,c)
  %6444 = add nsw i32 %6408, -1
  %6445 = call i32 @dx.op.binary.i32(i32 37, i32 %6444, i32 0)  ; IMax(a,b)
  %6446 = call float @dx.op.binary.f32(i32 35, float %95, float 0.000000e+00)  ; FMax(a,b)
  %6447 = fptoui float %6446 to i32
  %6448 = lshr i32 %6447, 5
  %6449 = call i32 @dx.op.binary.i32(i32 40, i32 %6448, i32 8191)  ; UMin(a,b)
  %6450 = shl i32 %6449, 2
  %6451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6450, i32 undef)  ; BufferLoad(srv,index,wot)
  %6452 = extractvalue %dx.types.ResRet.i32 %6451, 0
  %6453 = lshr i32 %6452, 16
  %6454 = and i32 %6452, 65535
  %6455 = lshr i32 %6452, 21
  %6456 = lshr i32 %6454, 5
  %6457 = call i32 @dx.op.binary.i32(i32 40, i32 %6456, i32 %6445)  ; UMin(a,b)
  %6458 = icmp ugt i32 %6455, %6457
  br i1 %6458, label %7030, label %6459

; <label>:6459                                    ; preds = %6410
  br label %6460

; <label>:6460                                    ; preds = %7020, %6459
  %6461 = phi i32 [ %7027, %7020 ], [ %6455, %6459 ]
  %6462 = phi float [ %7021, %7020 ], [ %6401, %6459 ]
  %6463 = phi float [ %7022, %7020 ], [ %6402, %6459 ]
  %6464 = phi float [ %7023, %7020 ], [ %6403, %6459 ]
  %6465 = phi float [ %7024, %7020 ], [ %6404, %6459 ]
  %6466 = phi float [ %7025, %7020 ], [ %6405, %6459 ]
  %6467 = phi float [ %7026, %7020 ], [ %6406, %6459 ]
  %6468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6469 = extractvalue %dx.types.CBufRet.i32 %6468, 0
  %6470 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6443, i32 %6469, i32 %6461)  ; UMad(a,b,c)
  %6471 = shl i32 %6470, 2
  %6472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6471, i32 undef)  ; BufferLoad(srv,index,wot)
  %6473 = extractvalue %dx.types.ResRet.i32 %6472, 0
  %6474 = shl i32 %6461, 5
  %6475 = sub nsw i32 %6453, %6474
  %6476 = call i32 @dx.op.binary.i32(i32 37, i32 %6475, i32 0)  ; IMax(a,b)
  %6477 = call i32 @dx.op.binary.i32(i32 38, i32 %6476, i32 31)  ; IMin(a,b)
  %6478 = sub nsw i32 1, %6453
  %6479 = add nsw i32 %6478, %6454
  %6480 = call i32 @dx.op.binary.i32(i32 37, i32 %6479, i32 0)  ; IMax(a,b)
  %6481 = call i32 @dx.op.binary.i32(i32 38, i32 %6480, i32 32)  ; IMin(a,b)
  %6482 = and i32 %6481, 31
  %6483 = shl i32 -1, %6482
  %6484 = xor i32 %6483, -1
  %6485 = and i32 %6477, 31
  %6486 = shl i32 %6484, %6485
  %6487 = icmp eq i32 %6481, 32
  %6488 = select i1 %6487, i32 -1, i32 %6486
  %6489 = and i32 %6488, %6473
  %6490 = icmp eq i32 %6489, 0
  br i1 %6490, label %7020, label %6491

; <label>:6491                                    ; preds = %6460
  br label %6492

; <label>:6492                                    ; preds = %6626, %6491
  %6493 = phi i32 [ %6504, %6626 ], [ %6489, %6491 ]
  %6494 = phi float [ %6627, %6626 ], [ %6462, %6491 ]
  %6495 = phi float [ %6628, %6626 ], [ %6463, %6491 ]
  %6496 = phi float [ %6629, %6626 ], [ %6464, %6491 ]
  %6497 = phi float [ %6630, %6626 ], [ %6465, %6491 ]
  %6498 = phi float [ %6631, %6626 ], [ %6466, %6491 ]
  %6499 = phi float [ %6632, %6626 ], [ %6467, %6491 ]
  %6500 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6493)  ; FirstbitLo(value)
  %6501 = add i32 %6500, %6474
  %6502 = and i32 %6500, 31
  %6503 = shl i32 1, %6502
  %6504 = xor i32 %6503, %6493
  %6505 = mul i32 %6501, 112
  %6506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6505, i32 undef)  ; BufferLoad(srv,index,wot)
  %6507 = extractvalue %dx.types.ResRet.f32 %6506, 0
  %6508 = extractvalue %dx.types.ResRet.f32 %6506, 1
  %6509 = extractvalue %dx.types.ResRet.f32 %6506, 2
  %6510 = or i32 %6505, 12
  %6511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6510, i32 undef)  ; BufferLoad(srv,index,wot)
  %6512 = extractvalue %dx.types.ResRet.f32 %6511, 0
  %6513 = add i32 %6505, 16
  %6514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6513, i32 undef)  ; BufferLoad(srv,index,wot)
  %6515 = extractvalue %dx.types.ResRet.f32 %6514, 0
  %6516 = extractvalue %dx.types.ResRet.f32 %6514, 1
  %6517 = extractvalue %dx.types.ResRet.f32 %6514, 2
  %6518 = add i32 %6505, 28
  %6519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6518, i32 undef)  ; BufferLoad(srv,index,wot)
  %6520 = extractvalue %dx.types.ResRet.i32 %6519, 0
  %6521 = add i32 %6505, 44
  %6522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6521, i32 undef)  ; BufferLoad(srv,index,wot)
  %6523 = extractvalue %dx.types.ResRet.f32 %6522, 0
  %6524 = add i32 %6505, 48
  %6525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6524, i32 undef)  ; BufferLoad(srv,index,wot)
  %6526 = extractvalue %dx.types.ResRet.f32 %6525, 0
  %6527 = extractvalue %dx.types.ResRet.f32 %6525, 1
  %6528 = extractvalue %dx.types.ResRet.f32 %6525, 2
  %6529 = extractvalue %dx.types.ResRet.f32 %6525, 3
  %6530 = add i32 %6505, 64
  %6531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6530, i32 undef)  ; BufferLoad(srv,index,wot)
  %6532 = extractvalue %dx.types.ResRet.f32 %6531, 0
  %6533 = extractvalue %dx.types.ResRet.f32 %6531, 1
  %6534 = extractvalue %dx.types.ResRet.f32 %6531, 2
  %6535 = extractvalue %dx.types.ResRet.f32 %6531, 3
  %6536 = add i32 %6505, 80
  %6537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6536, i32 undef)  ; BufferLoad(srv,index,wot)
  %6538 = extractvalue %dx.types.ResRet.f32 %6537, 1
  %6539 = extractvalue %dx.types.ResRet.f32 %6537, 2
  %6540 = add i32 %6505, 92
  %6541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6540, i32 undef)  ; BufferLoad(srv,index,wot)
  %6542 = extractvalue %dx.types.ResRet.i32 %6541, 0
  %6543 = call float @dx.op.dot3.f32(i32 55, float %6507, float %6508, float %6509, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6544 = select i1 %282, float %6538, float %6507
  %6545 = select i1 %282, float %6543, float %6508
  %6546 = select i1 %282, float %6539, float %6509
  %6547 = and i32 %6542, 65535
  %6548 = uitofp i32 %6547 to float
  %6549 = lshr i32 %6542, 16
  %6550 = uitofp i32 %6549 to float
  %6551 = and i32 %6520, 65535
  %6552 = and i32 %6520, 50331648
  %6553 = icmp eq i32 %6552, 33554432
  %6554 = fsub fast float %6526, %191
  %6555 = fsub fast float %6527, %192
  %6556 = fsub fast float %6528, %193
  %6557 = call float @dx.op.dot3.f32(i32 55, float %6554, float %6555, float %6556, float %6554, float %6555, float %6556)  ; Dot3(ax,ay,az,bx,by,bz)
  %6558 = call float @dx.op.unary.f32(i32 24, float %6557)  ; Sqrt(value)
  %6559 = fdiv fast float 1.000000e+00, %6558
  %6560 = fmul fast float %6559, %6554
  %6561 = fmul fast float %6559, %6555
  %6562 = fmul fast float %6559, %6556
  %6563 = fadd fast float %6558, %6512
  %6564 = fdiv fast float 1.000000e+00, %6563
  %6565 = fmul float %6523, %6564
  %6566 = fmul float %6565, %6565
  %6567 = call float @dx.op.unary.f32(i32 7, float %6566)  ; Saturate(value)
  br i1 %6553, label %6568, label %6589

; <label>:6568                                    ; preds = %6492
  %6569 = fmul fast float %6534, %6515
  %6570 = fmul fast float %6534, %6516
  %6571 = fmul fast float %6534, %6517
  %6572 = fadd fast float %6554, %6569
  %6573 = fadd fast float %6555, %6570
  %6574 = fadd fast float %6556, %6571
  %6575 = call float @dx.op.dot3.f32(i32 55, float %6572, float %6573, float %6574, float %6572, float %6573, float %6574)  ; Dot3(ax,ay,az,bx,by,bz)
  %6576 = call float @dx.op.unary.f32(i32 25, float %6575)  ; Rsqrt(value)
  %6577 = fmul fast float %6576, %6572
  %6578 = fmul fast float %6576, %6573
  %6579 = fmul fast float %6576, %6574
  %6580 = fsub fast float %191, %6526
  %6581 = fsub fast float %192, %6527
  %6582 = fsub fast float %193, %6528
  %6583 = fsub fast float -0.000000e+00, %6580
  %6584 = fsub fast float -0.000000e+00, %6581
  %6585 = fsub fast float -0.000000e+00, %6582
  %6586 = call float @dx.op.dot3.f32(i32 55, float %6583, float %6584, float %6585, float %6515, float %6516, float %6517)  ; Dot3(ax,ay,az,bx,by,bz)
  %6587 = fcmp fast ogt float %6586, 0.000000e+00
  %6588 = uitofp i1 %6587 to float
  br label %6589

; <label>:6589                                    ; preds = %6568, %6492
  %6590 = phi float [ %6588, %6568 ], [ 1.000000e+00, %6492 ]
  %6591 = phi float [ %6577, %6568 ], [ %6560, %6492 ]
  %6592 = phi float [ %6578, %6568 ], [ %6561, %6492 ]
  %6593 = phi float [ %6579, %6568 ], [ %6562, %6492 ]
  %6594 = call float @dx.op.dot3.f32(i32 55, float %6515, float %6516, float %6517, float %6591, float %6592, float %6593)  ; Dot3(ax,ay,az,bx,by,bz)
  %6595 = fmul fast float %6594, %6594
  %6596 = call float @dx.op.unary.f32(i32 7, float %6595)  ; Saturate(value)
  %6597 = fsub fast float 1.000000e+00, %6596
  %6598 = fmul fast float %6597, 5.000000e-01
  %6599 = fcmp fast ogt float %6594, 0.000000e+00
  %6600 = fsub fast float 1.000000e+00, %6598
  %6601 = select i1 %6599, float %6598, float %6600
  %6602 = fmul fast float %6601, %6550
  %6603 = fadd fast float %6602, %6548
  %6604 = fmul fast float %6603, 0x3EF0001000000000
  %6605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %48, float %6604, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6606 = extractvalue %dx.types.ResRet.f32 %6605, 0
  %6607 = fmul fast float %6594, %6532
  %6608 = fadd fast float %6607, %6533
  %6609 = call float @dx.op.unary.f32(i32 7, float %6608)  ; Saturate(value)
  %6610 = select i1 %6553, float 1.000000e+00, float %6609
  %6611 = select i1 %6553, float %6609, float 1.000000e+00
  %6612 = fmul fast float %6558, %6529
  %6613 = fsub fast float 1.000000e+00, %6612
  %6614 = fmul fast float %6613, %6535
  %6615 = call float @dx.op.unary.f32(i32 7, float %6614)  ; Saturate(value)
  %6616 = fmul fast float %6615, %6611
  %6617 = fmul fast float %6616, 2.000000e+00
  %6618 = fsub fast float 3.000000e+00, %6617
  %6619 = fmul fast float %6606, %6590
  %6620 = fmul fast float %6616, %6616
  %6621 = fmul fast float %6620, %6619
  %6622 = fmul fast float %6621, %6618
  %6623 = call float @dx.op.binary.f32(i32 36, float %6622, float %6622)  ; FMin(a,b)
  %6624 = call float @dx.op.binary.f32(i32 36, float %6622, float %6623)  ; FMin(a,b)
  %6625 = fcmp fast ogt float %6624, 0.000000e+00
  br i1 %6625, label %6634, label %6626, !dx.controlflow.hints !120

; <label>:6626                                    ; preds = %6976, %6734, %6589
  %6627 = phi float [ %6494, %6734 ], [ %6494, %6589 ], [ %7016, %6976 ]
  %6628 = phi float [ %6495, %6734 ], [ %6495, %6589 ], [ %7017, %6976 ]
  %6629 = phi float [ %6496, %6734 ], [ %6496, %6589 ], [ %7018, %6976 ]
  %6630 = phi float [ %6497, %6734 ], [ %6497, %6589 ], [ %7010, %6976 ]
  %6631 = phi float [ %6498, %6734 ], [ %6498, %6589 ], [ %7011, %6976 ]
  %6632 = phi float [ %6499, %6734 ], [ %6499, %6589 ], [ %7012, %6976 ]
  %6633 = icmp eq i32 %6493, %6503
  br i1 %6633, label %7019, label %6492

; <label>:6634                                    ; preds = %6589
  %6635 = icmp eq i32 %6551, 255
  br i1 %6635, label %6734, label %6636, !dx.controlflow.hints !121

; <label>:6636                                    ; preds = %6634
  %6637 = mul nuw nsw i32 %6551, 176
  %6638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6637, i32 undef)  ; BufferLoad(srv,index,wot)
  %6639 = extractvalue %dx.types.ResRet.f32 %6638, 0
  %6640 = extractvalue %dx.types.ResRet.f32 %6638, 1
  %6641 = extractvalue %dx.types.ResRet.f32 %6638, 2
  %6642 = extractvalue %dx.types.ResRet.f32 %6638, 3
  %6643 = add nuw nsw i32 %6637, 16
  %6644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6643, i32 undef)  ; BufferLoad(srv,index,wot)
  %6645 = extractvalue %dx.types.ResRet.f32 %6644, 0
  %6646 = extractvalue %dx.types.ResRet.f32 %6644, 1
  %6647 = add nuw nsw i32 %6637, 32
  %6648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6647, i32 undef)  ; BufferLoad(srv,index,wot)
  %6649 = extractvalue %dx.types.ResRet.f32 %6648, 0
  %6650 = extractvalue %dx.types.ResRet.f32 %6648, 1
  %6651 = extractvalue %dx.types.ResRet.f32 %6648, 2
  %6652 = add nuw nsw i32 %6637, 48
  %6653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6652, i32 undef)  ; BufferLoad(srv,index,wot)
  %6654 = extractvalue %dx.types.ResRet.f32 %6653, 0
  %6655 = extractvalue %dx.types.ResRet.f32 %6653, 1
  %6656 = extractvalue %dx.types.ResRet.f32 %6653, 2
  %6657 = extractvalue %dx.types.ResRet.f32 %6653, 3
  %6658 = add nuw nsw i32 %6637, 64
  %6659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6658, i32 undef)  ; BufferLoad(srv,index,wot)
  %6660 = extractvalue %dx.types.ResRet.f32 %6659, 0
  %6661 = extractvalue %dx.types.ResRet.f32 %6659, 1
  %6662 = extractvalue %dx.types.ResRet.f32 %6659, 2
  %6663 = extractvalue %dx.types.ResRet.f32 %6659, 3
  %6664 = add nuw nsw i32 %6637, 80
  %6665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6664, i32 undef)  ; BufferLoad(srv,index,wot)
  %6666 = extractvalue %dx.types.ResRet.f32 %6665, 0
  %6667 = extractvalue %dx.types.ResRet.f32 %6665, 1
  %6668 = extractvalue %dx.types.ResRet.f32 %6665, 2
  %6669 = extractvalue %dx.types.ResRet.f32 %6665, 3
  %6670 = add nuw nsw i32 %6637, 96
  %6671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6670, i32 undef)  ; BufferLoad(srv,index,wot)
  %6672 = extractvalue %dx.types.ResRet.f32 %6671, 0
  %6673 = extractvalue %dx.types.ResRet.f32 %6671, 1
  %6674 = extractvalue %dx.types.ResRet.f32 %6671, 2
  %6675 = extractvalue %dx.types.ResRet.f32 %6671, 3
  %6676 = bitcast float %6646 to i32
  %6677 = fmul fast float %6651, %111
  %6678 = fmul fast float %6651, %112
  %6679 = fmul fast float %6651, %113
  %6680 = fadd fast float %6677, %191
  %6681 = fadd fast float %6678, %192
  %6682 = fadd fast float %6679, %193
  %6683 = fmul fast float %6680, %6654
  %6684 = call float @dx.op.tertiary.f32(i32 46, float %6681, float %6660, float %6683)  ; FMad(a,b,c)
  %6685 = call float @dx.op.tertiary.f32(i32 46, float %6682, float %6666, float %6684)  ; FMad(a,b,c)
  %6686 = fadd fast float %6685, %6672
  %6687 = fmul fast float %6680, %6655
  %6688 = call float @dx.op.tertiary.f32(i32 46, float %6681, float %6661, float %6687)  ; FMad(a,b,c)
  %6689 = call float @dx.op.tertiary.f32(i32 46, float %6682, float %6667, float %6688)  ; FMad(a,b,c)
  %6690 = fadd fast float %6689, %6673
  %6691 = fmul fast float %6680, %6656
  %6692 = call float @dx.op.tertiary.f32(i32 46, float %6681, float %6662, float %6691)  ; FMad(a,b,c)
  %6693 = call float @dx.op.tertiary.f32(i32 46, float %6682, float %6668, float %6692)  ; FMad(a,b,c)
  %6694 = fadd fast float %6693, %6674
  %6695 = fmul fast float %6680, %6657
  %6696 = call float @dx.op.tertiary.f32(i32 46, float %6681, float %6663, float %6695)  ; FMad(a,b,c)
  %6697 = call float @dx.op.tertiary.f32(i32 46, float %6682, float %6669, float %6696)  ; FMad(a,b,c)
  %6698 = fadd fast float %6697, %6675
  %6699 = fdiv fast float %6686, %6698
  %6700 = fdiv fast float %6690, %6698
  %6701 = fdiv fast float %6694, %6698
  %6702 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6701)  ; FMax(a,b)
  %6703 = fmul fast float %293, 0x401921FB60000000
  %6704 = call float @dx.op.unary.f32(i32 13, float %6703)  ; Sin(value)
  %6705 = call float @dx.op.unary.f32(i32 12, float %6703)  ; Cos(value)
  %6706 = fsub fast float -0.000000e+00, %6704
  %6707 = fmul fast float %6641, 5.000000e-01
  %6708 = call float @dx.op.dot2.f32(i32 54, float %293, float %293, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6709 = call float @dx.op.unary.f32(i32 22, float %6708)  ; Frc(value)
  %6710 = fmul fast float %6709, 0x404A7DD040000000
  %6711 = call float @dx.op.unary.f32(i32 22, float %6710)  ; Frc(value)
  %6712 = fmul fast float %6711, %6650
  %6713 = fadd fast float %6712, %6707
  %6714 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6706, float 0.000000e+00)  ; FMad(a,b,c)
  %6715 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6705, float 0.000000e+00)  ; FMad(a,b,c)
  %6716 = fadd fast float %6714, %6699
  %6717 = fadd fast float %6715, %6700
  %6718 = fmul fast float %6716, %6645
  %6719 = fmul fast float %6717, %6645
  %6720 = call float @dx.op.binary.f32(i32 35, float %6718, float %6641)  ; FMax(a,b)
  %6721 = call float @dx.op.binary.f32(i32 35, float %6719, float %6641)  ; FMax(a,b)
  %6722 = call float @dx.op.binary.f32(i32 36, float %6720, float %6642)  ; FMin(a,b)
  %6723 = call float @dx.op.binary.f32(i32 36, float %6721, float %6642)  ; FMin(a,b)
  %6724 = fadd fast float %6722, %6639
  %6725 = fadd fast float %6723, %6640
  %6726 = uitofp i32 %6676 to float
  %6727 = fadd fast float %6702, %6649
  %6728 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %50, float %6724, float %6725, float %6726, float undef, i32 0, i32 0, i32 undef, float %6727)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6729 = extractvalue %dx.types.ResRet.f32 %6728, 0
  %6730 = fadd fast float %6729, -1.000000e+00
  %6731 = fmul fast float %6730, %6610
  %6732 = fadd fast float %6731, 1.000000e+00
  %6733 = fmul fast float %6732, %6622
  br label %6734

; <label>:6734                                    ; preds = %6636, %6634
  %6735 = phi float [ %6733, %6636 ], [ %6622, %6634 ]
  %6736 = call float @dx.op.binary.f32(i32 36, float %6735, float %6735)  ; FMin(a,b)
  %6737 = call float @dx.op.binary.f32(i32 36, float %6735, float %6736)  ; FMin(a,b)
  %6738 = fcmp fast ogt float %6737, 0.000000e+00
  br i1 %6738, label %6739, label %6626, !dx.controlflow.hints !122

; <label>:6739                                    ; preds = %6734
  %6740 = fmul fast float %6735, %6544
  %6741 = fmul fast float %6735, %6545
  %6742 = fmul fast float %6735, %6546
  %6743 = fsub fast float %6528, %4314
  %6744 = fcmp fast ogt float %6743, 0.000000e+00
  %6745 = fsub fast float %193, %4314
  %6746 = fcmp fast ogt float %6745, 0.000000e+00
  %6747 = xor i1 %6746, %6744
  %6748 = fsub fast float %4314, %6528
  %6749 = fmul fast float %6748, 2.000000e+00
  %6750 = fadd fast float %6749, %6528
  %6751 = select i1 %6747, float %6528, float %6750
  %6752 = fsub fast float %6751, %193
  %6753 = call float @dx.op.dot3.f32(i32 55, float %6554, float %6555, float %6752, float %6554, float %6555, float %6752)  ; Dot3(ax,ay,az,bx,by,bz)
  %6754 = call float @dx.op.unary.f32(i32 25, float %6753)  ; Rsqrt(value)
  %6755 = fmul fast float %6754, %6554
  %6756 = fmul fast float %6754, %6555
  %6757 = fmul fast float %6754, %6752
  %6758 = fsub fast float %4314, %193
  %6759 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6758)  ; Dot3(ax,ay,az,bx,by,bz)
  %6760 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6755, float %6756, float %6757)  ; Dot3(ax,ay,az,bx,by,bz)
  %6761 = fdiv fast float 1.000000e+00, %6760
  %6762 = fmul fast float %6761, %6759
  %6763 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6745, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6764 = fcmp fast ogt float %6763, 0.000000e+00
  %6765 = fcmp fast olt float %6763, 0.000000e+00
  %6766 = zext i1 %6764 to i32
  %6767 = zext i1 %6765 to i32
  %6768 = sub nsw i32 %6766, %6767
  %6769 = sitofp i32 %6768 to float
  %6770 = fsub fast float %6751, %4314
  %6771 = call float @dx.op.dot3.f32(i32 55, float %6554, float %6555, float %6770, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6772 = fcmp fast ogt float %6771, 0.000000e+00
  %6773 = fcmp fast olt float %6771, 0.000000e+00
  %6774 = zext i1 %6772 to i32
  %6775 = zext i1 %6773 to i32
  %6776 = sub nsw i32 %6774, %6775
  %6777 = sitofp i32 %6776 to float
  %6778 = fcmp fast une float %6769, %6777
  br i1 %6778, label %6779, label %6789

; <label>:6779                                    ; preds = %6739
  %6780 = fmul fast float %6762, %6757
  %6781 = fmul fast float %6762, %6756
  %6782 = fmul fast float %6762, %6755
  %6783 = fmul fast float %6782, %6782
  %6784 = fmul fast float %6781, %6781
  %6785 = fadd fast float %6783, %6784
  %6786 = fmul fast float %6780, %6780
  %6787 = fadd fast float %6785, %6786
  %6788 = call float @dx.op.unary.f32(i32 24, float %6787)  ; Sqrt(value)
  br label %6801

; <label>:6789                                    ; preds = %6739
  %6790 = icmp slt i32 %6768, 0
  br i1 %6790, label %6791, label %6801

; <label>:6791                                    ; preds = %6789
  %6792 = fsub fast float %191, %6526
  %6793 = fsub fast float %192, %6527
  %6794 = fsub fast float %193, %6751
  %6795 = fmul fast float %6792, %6792
  %6796 = fmul fast float %6793, %6793
  %6797 = fadd fast float %6795, %6796
  %6798 = fmul fast float %6794, %6794
  %6799 = fadd fast float %6797, %6798
  %6800 = call float @dx.op.unary.f32(i32 24, float %6799)  ; Sqrt(value)
  br label %6801

; <label>:6801                                    ; preds = %6791, %6789, %6779
  %6802 = phi float [ %6788, %6779 ], [ %6800, %6791 ], [ 0.000000e+00, %6789 ]
  %6803 = and i1 %6746, %6744
  %6804 = fsub fast float -0.000000e+00, %6802
  %6805 = select i1 %6803, float -0.000000e+00, float %6804
  %6806 = fmul fast float %4315, 0x3FF7154760000000
  %6807 = fmul fast float %6806, %6805
  %6808 = fmul fast float %4316, 0x3FF7154760000000
  %6809 = fmul fast float %6808, %6805
  %6810 = fmul fast float %4317, 0x3FF7154760000000
  %6811 = fmul fast float %6810, %6805
  %6812 = call float @dx.op.unary.f32(i32 21, float %6807)  ; Exp(value)
  %6813 = call float @dx.op.unary.f32(i32 21, float %6809)  ; Exp(value)
  %6814 = call float @dx.op.unary.f32(i32 21, float %6811)  ; Exp(value)
  %6815 = call float @dx.op.unary.f32(i32 7, float %6812)  ; Saturate(value)
  %6816 = call float @dx.op.unary.f32(i32 7, float %6813)  ; Saturate(value)
  %6817 = call float @dx.op.unary.f32(i32 7, float %6814)  ; Saturate(value)
  %6818 = fmul fast float %6740, %6815
  %6819 = fmul fast float %6741, %6816
  %6820 = fmul fast float %6742, %6817
  %6821 = fsub fast float %6560, %211
  %6822 = fsub fast float %6561, %212
  %6823 = fsub fast float %6562, %213
  %6824 = call float @dx.op.dot3.f32(i32 55, float %6821, float %6822, float %6823, float %6821, float %6822, float %6823)  ; Dot3(ax,ay,az,bx,by,bz)
  %6825 = call float @dx.op.unary.f32(i32 25, float %6824)  ; Rsqrt(value)
  %6826 = fmul fast float %6825, %6821
  %6827 = fmul fast float %6825, %6822
  %6828 = fmul fast float %6825, %6823
  %6829 = call float @dx.op.dot3.f32(i32 55, float %6560, float %6561, float %6562, float %5095, float %5096, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %6830 = call float @dx.op.dot3.f32(i32 55, float %4924, float %4925, float %4926, float %6826, float %6827, float %6828)  ; Dot3(ax,ay,az,bx,by,bz)
  %6831 = call float @dx.op.unary.f32(i32 7, float %6829)  ; Saturate(value)
  %6832 = fmul fast float %6831, %6567
  %6833 = fmul fast float %6831, %6831
  %6834 = fmul fast float %6833, %5116
  %6835 = call float @dx.op.unary.f32(i32 7, float %6834)  ; Saturate(value)
  %6836 = fmul fast float %6832, %6835
  %6837 = bitcast float %6557 to i32
  %6838 = ashr i32 %6837, 1
  %6839 = sub nsw i32 1597463007, %6838
  %6840 = bitcast i32 %6839 to float
  %6841 = fmul fast float %6840, %6554
  %6842 = fmul fast float %6840, %6555
  %6843 = fmul fast float %6840, %6556
  %6844 = fsub fast float %6841, %211
  %6845 = fsub fast float %6842, %212
  %6846 = fsub fast float %6843, %213
  %6847 = call float @dx.op.dot3.f32(i32 55, float %6844, float %6845, float %6846, float %6844, float %6845, float %6846)  ; Dot3(ax,ay,az,bx,by,bz)
  %6848 = call float @dx.op.unary.f32(i32 25, float %6847)  ; Rsqrt(value)
  %6849 = fmul fast float %6844, %6848
  %6850 = fmul fast float %6845, %6848
  %6851 = fmul fast float %6846, %6848
  %6852 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5096, float %5097, float %6849, float %6850, float %6851)  ; Dot3(ax,ay,az,bx,by,bz)
  %6853 = fmul fast float %6852, %6852
  %6854 = call float @dx.op.unary.f32(i32 6, float %6829)  ; FAbs(value)
  %6855 = fsub fast float 1.000000e+00, %5098
  %6856 = call float @dx.op.binary.f32(i32 35, float %6855, float 0x3F847AE140000000)  ; FMax(a,b)
  %6857 = fmul fast float %6856, %6856
  %6858 = fmul fast float %6857, %6857
  %6859 = fsub fast float 1.000000e+00, %6858
  %6860 = fmul fast float %5103, %5103
  %6861 = fmul fast float %6860, %6859
  %6862 = fadd fast float %6861, %6858
  %6863 = bitcast float %6862 to i32
  %6864 = ashr i32 %6863, 1
  %6865 = add nsw i32 %6864, 532487669
  %6866 = bitcast i32 %6865 to float
  %6867 = fadd fast float %6866, %5103
  %6868 = fmul fast float %6858, %6853
  %6869 = fsub fast float 1.000000e+00, %6853
  %6870 = fadd fast float %6869, %6868
  %6871 = fmul fast float %6854, %6854
  %6872 = fmul fast float %6871, %6859
  %6873 = fadd fast float %6872, %6858
  %6874 = bitcast float %6873 to i32
  %6875 = ashr i32 %6874, 1
  %6876 = add nsw i32 %6875, 532487669
  %6877 = bitcast i32 %6876 to float
  %6878 = fadd fast float %6877, %6854
  %6879 = fmul fast float %6870, %6870
  %6880 = fmul fast float %6879, %6867
  %6881 = fmul fast float %6880, %6878
  %6882 = fdiv fast float 1.000000e+00, %6881
  %6883 = bitcast float %6858 to i32
  %6884 = sitofp i32 %6883 to float
  %6885 = fmul fast float %6884, 0x3FE7F73180000000
  %6886 = fadd fast float %6885, 0x41AFE27C40000000
  %6887 = fptosi float %6886 to i32
  %6888 = bitcast i32 %6887 to float
  %6889 = fmul fast float %6523, 0x3FD80E9D60000000
  %6890 = fmul fast float %6889, %6840
  %6891 = fadd fast float %6888, %6890
  %6892 = bitcast float %6891 to i32
  %6893 = sub nsw i32 2129859010, %6892
  %6894 = bitcast i32 %6893 to float
  %6895 = fmul fast float %6858, %6882
  %6896 = fmul fast float %6895, %6888
  %6897 = fmul fast float %6896, %6894
  %6898 = call float @dx.op.unary.f32(i32 6, float %6830)  ; FAbs(value)
  %6899 = fsub fast float 1.000000e+00, %6898
  %6900 = bitcast float %6899 to i32
  %6901 = sitofp i32 %6900 to float
  %6902 = fmul fast float %6901, 5.000000e+00
  %6903 = fadd fast float %6902, 0xC1EFBF8940000000
  %6904 = fptosi float %6903 to i32
  %6905 = bitcast i32 %6904 to float
  %6906 = fsub fast float 1.000000e+00, %5089
  %6907 = fsub fast float 1.000000e+00, %5090
  %6908 = fsub fast float 1.000000e+00, %5101
  %6909 = fmul fast float %6905, %6906
  %6910 = fmul fast float %6905, %6907
  %6911 = fmul fast float %6905, %6908
  %6912 = fadd fast float %6909, %5089
  %6913 = fadd fast float %6910, %5090
  %6914 = fadd fast float %6911, %5101
  br i1 %5228, label %6915, label %6938

; <label>:6915                                    ; preds = %6801
  %6916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3883, float %6898, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6917 = extractvalue %dx.types.ResRet.f32 %6916, 0
  %6918 = extractvalue %dx.types.ResRet.f32 %6916, 1
  %6919 = extractvalue %dx.types.ResRet.f32 %6916, 2
  %6920 = fadd fast float %6917, -5.000000e-01
  %6921 = fadd fast float %6918, -5.000000e-01
  %6922 = fadd fast float %6919, -5.000000e-01
  %6923 = fmul fast float %5089, 4.000000e+00
  %6924 = fmul fast float %6923, %6906
  %6925 = fmul fast float %6924, %6920
  %6926 = fmul fast float %5090, 4.000000e+00
  %6927 = fmul fast float %6926, %6907
  %6928 = fmul fast float %6927, %6921
  %6929 = fmul fast float %5101, 4.000000e+00
  %6930 = fmul fast float %6929, %6908
  %6931 = fmul fast float %6930, %6922
  %6932 = fadd fast float %6925, %6912
  %6933 = fadd fast float %6928, %6913
  %6934 = fadd fast float %6931, %6914
  %6935 = call float @dx.op.unary.f32(i32 7, float %6932)  ; Saturate(value)
  %6936 = call float @dx.op.unary.f32(i32 7, float %6933)  ; Saturate(value)
  %6937 = call float @dx.op.unary.f32(i32 7, float %6934)  ; Saturate(value)
  br label %6938

; <label>:6938                                    ; preds = %6915, %6801
  %6939 = phi float [ %6935, %6915 ], [ %6912, %6801 ]
  %6940 = phi float [ %6936, %6915 ], [ %6913, %6801 ]
  %6941 = phi float [ %6937, %6915 ], [ %6914, %6801 ]
  %6942 = fmul fast float %6829, 9.843750e-01
  %6943 = fadd fast float %6942, 7.812500e-03
  %6944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6943, float %5218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6945 = extractvalue %dx.types.ResRet.f32 %6944, 2
  %6946 = extractvalue %dx.types.ResRet.f32 %6944, 3
  %6947 = fmul fast float %6945, %5089
  %6948 = fmul fast float %6945, %5090
  %6949 = fmul fast float %6945, %5101
  %6950 = fadd fast float %6947, %6946
  %6951 = fadd fast float %6948, %6946
  %6952 = fadd fast float %6949, %6946
  br i1 %5228, label %6953, label %6976

; <label>:6953                                    ; preds = %6938
  %6954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3883, float %6829, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6955 = extractvalue %dx.types.ResRet.f32 %6954, 0
  %6956 = extractvalue %dx.types.ResRet.f32 %6954, 1
  %6957 = extractvalue %dx.types.ResRet.f32 %6954, 2
  %6958 = fadd fast float %6955, -5.000000e-01
  %6959 = fadd fast float %6956, -5.000000e-01
  %6960 = fadd fast float %6957, -5.000000e-01
  %6961 = fmul fast float %5089, 4.000000e+00
  %6962 = fmul fast float %6961, %6906
  %6963 = fmul fast float %6962, %6958
  %6964 = fmul fast float %5090, 4.000000e+00
  %6965 = fmul fast float %6964, %6907
  %6966 = fmul fast float %6965, %6959
  %6967 = fmul fast float %5101, 4.000000e+00
  %6968 = fmul fast float %6967, %6908
  %6969 = fmul fast float %6968, %6960
  %6970 = fadd fast float %6963, %6950
  %6971 = fadd fast float %6966, %6951
  %6972 = fadd fast float %6969, %6952
  %6973 = call float @dx.op.unary.f32(i32 7, float %6970)  ; Saturate(value)
  %6974 = call float @dx.op.unary.f32(i32 7, float %6971)  ; Saturate(value)
  %6975 = call float @dx.op.unary.f32(i32 7, float %6972)  ; Saturate(value)
  br label %6976

; <label>:6976                                    ; preds = %6953, %6938
  %6977 = phi float [ %6973, %6953 ], [ %6950, %6938 ]
  %6978 = phi float [ %6974, %6953 ], [ %6951, %6938 ]
  %6979 = phi float [ %6975, %6953 ], [ %6952, %6938 ]
  %6980 = call float @dx.op.binary.f32(i32 35, float %6978, float %6979)  ; FMax(a,b)
  %6981 = call float @dx.op.binary.f32(i32 35, float %6977, float %6980)  ; FMax(a,b)
  %6982 = fsub fast float 1.000000e+00, %6981
  %6983 = fmul fast float %6939, %6897
  %6984 = fmul fast float %6940, %6897
  %6985 = fmul fast float %6941, %6897
  %6986 = fsub fast float 1.000000e+00, %6830
  %6987 = bitcast float %6986 to i32
  %6988 = sitofp i32 %6987 to float
  %6989 = fmul fast float %6988, 5.000000e+00
  %6990 = fadd fast float %6989, 0xC1EFBF8940000000
  %6991 = fptosi float %6990 to i32
  %6992 = bitcast i32 %6991 to float
  %6993 = fmul fast float %6992, %3884
  %6994 = fmul fast float %6982, %6993
  %6995 = fmul fast float %6994, %5278
  %6996 = fmul fast float %6994, %5279
  %6997 = fmul fast float %6994, %5280
  %6998 = fadd fast float %6995, %6983
  %6999 = fadd fast float %6996, %6984
  %7000 = fadd fast float %6997, %6985
  %7001 = fmul fast float %6818, %3917
  %7002 = fmul fast float %7001, %6836
  %7003 = fmul fast float %7002, %6982
  %7004 = fmul fast float %6819, %3917
  %7005 = fmul fast float %7004, %6836
  %7006 = fmul fast float %7005, %6982
  %7007 = fmul fast float %6820, %3917
  %7008 = fmul fast float %7007, %6836
  %7009 = fmul fast float %7008, %6982
  %7010 = fadd fast float %7003, %6497
  %7011 = fadd fast float %7006, %6498
  %7012 = fadd fast float %7009, %6499
  %7013 = fmul fast float %7002, %6998
  %7014 = fmul fast float %7005, %6999
  %7015 = fmul fast float %7008, %7000
  %7016 = fadd fast float %7013, %6494
  %7017 = fadd fast float %7014, %6495
  %7018 = fadd fast float %7015, %6496
  br label %6626

; <label>:7019                                    ; preds = %6626
  br label %7020

; <label>:7020                                    ; preds = %7019, %6460
  %7021 = phi float [ %6462, %6460 ], [ %6627, %7019 ]
  %7022 = phi float [ %6463, %6460 ], [ %6628, %7019 ]
  %7023 = phi float [ %6464, %6460 ], [ %6629, %7019 ]
  %7024 = phi float [ %6465, %6460 ], [ %6630, %7019 ]
  %7025 = phi float [ %6466, %6460 ], [ %6631, %7019 ]
  %7026 = phi float [ %6467, %6460 ], [ %6632, %7019 ]
  %7027 = add i32 %6461, 1
  %7028 = icmp ugt i32 %7027, %6457
  br i1 %7028, label %7029, label %6460

; <label>:7029                                    ; preds = %7020
  br label %7030

; <label>:7030                                    ; preds = %7029, %6410, %6400
  %7031 = phi float [ %6401, %6400 ], [ %6401, %6410 ], [ %7021, %7029 ]
  %7032 = phi float [ %6402, %6400 ], [ %6402, %6410 ], [ %7022, %7029 ]
  %7033 = phi float [ %6403, %6400 ], [ %6403, %6410 ], [ %7023, %7029 ]
  %7034 = phi float [ %6404, %6400 ], [ %6404, %6410 ], [ %7024, %7029 ]
  %7035 = phi float [ %6405, %6400 ], [ %6405, %6410 ], [ %7025, %7029 ]
  %7036 = phi float [ %6406, %6400 ], [ %6406, %6410 ], [ %7026, %7029 ]
  %7037 = fmul fast float %3917, %3917
  %7038 = fsub fast float 1.000000e+00, %7037
  %7039 = call float @dx.op.dot3.f32(i32 55, float %7038, float %7038, float %7038, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7040 = fsub fast float 1.000000e+00, %7039
  %7041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7042 = extractvalue %dx.types.CBufRet.f32 %7041, 0
  %7043 = fmul fast float %7042, %5284
  %7044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7045 = extractvalue %dx.types.CBufRet.f32 %7044, 3
  %7046 = fsub fast float 1.000000e+00, %3888
  %7047 = call float @dx.op.unary.f32(i32 7, float %7046)  ; Saturate(value)
  %7048 = fadd fast float %7036, %3886
  %7049 = fmul fast float %7048, %3888
  %7050 = fmul fast float %7047, %7045
  %7051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7052 = extractvalue %dx.types.CBufRet.f32 %7051, 3
  %7053 = fmul fast float %7034, %5092
  %7054 = fmul fast float %7035, %5093
  %7055 = fmul fast float %7036, %5094
  %7056 = fcmp fast ogt float %95, %245
  %7057 = and i1 %7056, %4320
  %7058 = or i1 %4326, %7057
  %7059 = icmp eq i32 %4319, 2
  %7060 = fcmp fast ole float %95, %245
  %7061 = and i1 %7060, %7059
  %7062 = or i1 %7061, %7058
  br i1 %7057, label %7063, label %7320

; <label>:7063                                    ; preds = %7030
  %7064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7065 = extractvalue %dx.types.CBufRet.f32 %7064, 2
  %7066 = extractvalue %dx.types.CBufRet.f32 %7064, 3
  %7067 = fmul fast float %7065, %104
  %7068 = fmul fast float %7066, %105
  %7069 = call float @dx.op.unary.f32(i32 7, float %7067)  ; Saturate(value)
  %7070 = call float @dx.op.unary.f32(i32 7, float %7068)  ; Saturate(value)
  %7071 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7069, float %7070, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7072 = extractvalue %dx.types.ResRet.f32 %7071, 0
  %7073 = extractvalue %dx.types.ResRet.f32 %7071, 1
  %7074 = extractvalue %dx.types.ResRet.f32 %7071, 2
  %7075 = extractvalue %dx.types.ResRet.f32 %7071, 3
  %7076 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7069, float %7070, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7077 = extractvalue %dx.types.ResRet.f32 %7076, 0
  %7078 = extractvalue %dx.types.ResRet.f32 %7076, 1
  %7079 = extractvalue %dx.types.ResRet.f32 %7076, 2
  %7080 = extractvalue %dx.types.ResRet.f32 %7076, 3
  %7081 = call float @dx.op.binary.f32(i32 35, float %7073, float %7074)  ; FMax(a,b)
  %7082 = call float @dx.op.binary.f32(i32 35, float %7072, float %7081)  ; FMax(a,b)
  %7083 = call float @dx.op.binary.f32(i32 35, float %7082, float %7075)  ; FMax(a,b)
  %7084 = call float @dx.op.binary.f32(i32 36, float %7078, float %7079)  ; FMin(a,b)
  %7085 = call float @dx.op.binary.f32(i32 36, float %7077, float %7084)  ; FMin(a,b)
  %7086 = call float @dx.op.binary.f32(i32 36, float %7085, float %7080)  ; FMin(a,b)
  %7087 = fmul fast float %7083, 2.550000e+02
  %7088 = fadd fast float %7087, 0x3F70101020000000
  %7089 = fptoui float %7088 to i32
  %7090 = fmul fast float %7086, 2.550000e+02
  %7091 = fadd fast float %7090, 0x3F70101020000000
  %7092 = fptoui float %7091 to i32
  %7093 = icmp ult i32 %7089, %7092
  br i1 %7093, label %7094, label %7262

; <label>:7094                                    ; preds = %7063
  %7095 = fcmp fast ogt float %94, 9.843750e-01
  %7096 = fadd fast float %95, -4.000000e+00
  %7097 = select i1 %7095, float -4.000000e+00, float %7096
  %7098 = call float @dx.op.binary.f32(i32 35, float %7097, float 0.000000e+00)  ; FMax(a,b)
  %7099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7100 = extractvalue %dx.types.CBufRet.f32 %7099, 0
  %7101 = fadd fast float %7100, %7098
  %7102 = extractvalue %dx.types.CBufRet.f32 %7099, 2
  %7103 = fmul fast float %7101, %7102
  %7104 = call float @dx.op.unary.f32(i32 23, float %7103)  ; Log(value)
  %7105 = extractvalue %dx.types.CBufRet.f32 %7099, 3
  %7106 = fmul fast float %7105, %7104
  %7107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7108 = extractvalue %dx.types.CBufRet.f32 %7107, 2
  %7109 = fmul fast float %7106, %7108
  %7110 = call float @dx.op.unary.f32(i32 7, float %7109)  ; Saturate(value)
  %7111 = uitofp i32 %7089 to float
  %7112 = uitofp i32 %7092 to float
  %7113 = fadd fast float %7111, 5.000000e-01
  %7114 = fadd fast float %7112, 5.000000e-01
  %7115 = fmul fast float %7108, %7113
  %7116 = fmul fast float %7108, %7114
  %7117 = fadd fast float %7115, 0x3F0FFB4800000000
  %7118 = fadd fast float %7116, 0xBF0FFB4800000000
  %7119 = call float @dx.op.binary.f32(i32 35, float %7110, float %7117)  ; FMax(a,b)
  %7120 = call float @dx.op.binary.f32(i32 36, float %7119, float %7118)  ; FMin(a,b)
  %7121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7122 = extractvalue %dx.types.CBufRet.f32 %7121, 1
  %7123 = extractvalue %dx.types.CBufRet.f32 %7121, 2
  %7124 = extractvalue %dx.types.CBufRet.f32 %7121, 0
  %7125 = fmul fast float %7122, %7120
  %7126 = fadd fast float %7124, %7125
  %7127 = fadd fast float %7124, %7123
  %7128 = fsub fast float %7122, %7123
  %7129 = fadd fast float %7128, %7124
  %7130 = call float @dx.op.binary.f32(i32 35, float %7126, float %7127)  ; FMax(a,b)
  %7131 = call float @dx.op.binary.f32(i32 36, float %7130, float %7129)  ; FMin(a,b)
  %7132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7069, float %7070, float %7131, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7133 = extractvalue %dx.types.ResRet.f32 %7132, 0
  %7134 = extractvalue %dx.types.ResRet.f32 %7132, 1
  %7135 = extractvalue %dx.types.ResRet.f32 %7132, 2
  %7136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7137 = extractvalue %dx.types.CBufRet.i32 %7136, 0
  %7138 = extractvalue %dx.types.CBufRet.i32 %7136, 1
  %7139 = uitofp i32 %7137 to float
  %7140 = uitofp i32 %7138 to float
  %7141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7142 = extractvalue %dx.types.CBufRet.f32 %7141, 0
  %7143 = extractvalue %dx.types.CBufRet.f32 %7141, 1
  %7144 = fmul fast float %7139, %7069
  %7145 = fmul fast float %7140, %7070
  %7146 = fadd fast float %7144, -5.000000e-01
  %7147 = fadd fast float %7145, -5.000000e-01
  %7148 = call float @dx.op.unary.f32(i32 22, float %7146)  ; Frc(value)
  %7149 = call float @dx.op.unary.f32(i32 22, float %7147)  ; Frc(value)
  %7150 = fmul fast float %7148, %7148
  %7151 = fmul fast float %7150, %7148
  %7152 = fsub fast float 3.000000e+00, %7148
  %7153 = fmul fast float %7150, %7152
  %7154 = fmul fast float %7148, 3.000000e+00
  %7155 = fmul fast float %7151, 3.000000e+00
  %7156 = fmul fast float %7150, 6.000000e+00
  %7157 = fsub fast float %7155, %7156
  %7158 = fadd fast float %7157, 4.000000e+00
  %7159 = fmul fast float %7158, 0x3FC5555560000000
  %7160 = fmul fast float %7151, -3.000000e+00
  %7161 = fadd fast float %7150, %7148
  %7162 = fmul fast float %7161, 3.000000e+00
  %7163 = fadd fast float %7160, 1.000000e+00
  %7164 = fadd fast float %7163, %7162
  %7165 = fmul fast float %7151, 0x3FC5555560000000
  %7166 = fmul fast float %7149, %7149
  %7167 = fmul fast float %7166, %7149
  %7168 = fsub fast float 3.000000e+00, %7149
  %7169 = fmul fast float %7166, %7168
  %7170 = fmul fast float %7149, 3.000000e+00
  %7171 = fmul fast float %7167, 3.000000e+00
  %7172 = fmul fast float %7166, 6.000000e+00
  %7173 = fsub fast float %7171, %7172
  %7174 = fadd fast float %7173, 4.000000e+00
  %7175 = fmul fast float %7174, 0x3FC5555560000000
  %7176 = fmul fast float %7167, -3.000000e+00
  %7177 = fadd fast float %7166, %7149
  %7178 = fmul fast float %7177, 3.000000e+00
  %7179 = fadd fast float %7176, 1.000000e+00
  %7180 = fadd fast float %7179, %7178
  %7181 = fmul fast float %7167, 0x3FC5555560000000
  %7182 = fadd fast float %7148, 1.000000e+00
  %7183 = fsub fast float 1.000000e+00, %7154
  %7184 = fadd fast float %7183, %7153
  %7185 = fadd fast float %7184, %7158
  %7186 = fmul fast float %7185, 0x3FC5555560000000
  %7187 = fdiv fast float %7159, %7186
  %7188 = fsub fast float %7182, %7187
  %7189 = fsub fast float 1.000000e+00, %7148
  %7190 = fadd fast float %7164, %7151
  %7191 = fmul fast float %7190, 0x3FC5555560000000
  %7192 = fdiv fast float %7165, %7191
  %7193 = fadd fast float %7189, %7192
  %7194 = fadd fast float %7149, 1.000000e+00
  %7195 = fsub fast float 1.000000e+00, %7170
  %7196 = fadd fast float %7195, %7169
  %7197 = fadd fast float %7196, %7174
  %7198 = fmul fast float %7197, 0x3FC5555560000000
  %7199 = fdiv fast float %7175, %7198
  %7200 = fsub fast float %7194, %7199
  %7201 = fsub fast float 1.000000e+00, %7149
  %7202 = fadd fast float %7180, %7167
  %7203 = fmul fast float %7202, 0x3FC5555560000000
  %7204 = fdiv fast float %7181, %7203
  %7205 = fadd fast float %7204, %7201
  %7206 = fmul fast float %7188, %7142
  %7207 = fsub fast float %7069, %7206
  %7208 = fmul fast float %7193, %7142
  %7209 = fadd fast float %7208, %7069
  %7210 = fmul fast float %7205, %7143
  %7211 = fadd fast float %7210, %7070
  %7212 = fmul fast float %7200, %7143
  %7213 = fsub fast float %7070, %7212
  %7214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7207, float %7213, float %7131, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7215 = extractvalue %dx.types.ResRet.f32 %7214, 0
  %7216 = extractvalue %dx.types.ResRet.f32 %7214, 1
  %7217 = extractvalue %dx.types.ResRet.f32 %7214, 2
  %7218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7209, float %7213, float %7131, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7219 = extractvalue %dx.types.ResRet.f32 %7218, 0
  %7220 = extractvalue %dx.types.ResRet.f32 %7218, 1
  %7221 = extractvalue %dx.types.ResRet.f32 %7218, 2
  %7222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7207, float %7211, float %7131, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7223 = extractvalue %dx.types.ResRet.f32 %7222, 0
  %7224 = extractvalue %dx.types.ResRet.f32 %7222, 1
  %7225 = extractvalue %dx.types.ResRet.f32 %7222, 2
  %7226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7209, float %7211, float %7131, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7227 = extractvalue %dx.types.ResRet.f32 %7226, 0
  %7228 = extractvalue %dx.types.ResRet.f32 %7226, 1
  %7229 = extractvalue %dx.types.ResRet.f32 %7226, 2
  %7230 = fsub fast float %7223, %7215
  %7231 = fsub fast float %7224, %7216
  %7232 = fsub fast float %7225, %7217
  %7233 = fmul fast float %7230, %7203
  %7234 = fmul fast float %7231, %7203
  %7235 = fmul fast float %7232, %7203
  %7236 = fadd fast float %7233, %7215
  %7237 = fadd fast float %7234, %7216
  %7238 = fadd fast float %7235, %7217
  %7239 = fsub fast float %7227, %7219
  %7240 = fsub fast float %7228, %7220
  %7241 = fsub fast float %7229, %7221
  %7242 = fmul fast float %7239, %7203
  %7243 = fmul fast float %7240, %7203
  %7244 = fmul fast float %7241, %7203
  %7245 = fsub fast float %7219, %7236
  %7246 = fadd fast float %7245, %7242
  %7247 = fsub fast float %7220, %7237
  %7248 = fadd fast float %7247, %7243
  %7249 = fsub fast float %7221, %7238
  %7250 = fadd fast float %7249, %7244
  %7251 = fmul fast float %7246, %7191
  %7252 = fmul fast float %7248, %7191
  %7253 = fmul fast float %7250, %7191
  %7254 = fadd fast float %7251, %7236
  %7255 = fadd fast float %7252, %7237
  %7256 = fadd fast float %7253, %7238
  %7257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7258 = extractvalue %dx.types.CBufRet.f32 %7257, 1
  %7259 = fmul fast float %7254, %7258
  %7260 = fmul fast float %7255, %7258
  %7261 = fmul fast float %7256, %7258
  br label %7262

; <label>:7262                                    ; preds = %7094, %7063
  %7263 = phi float [ %7133, %7094 ], [ 1.000000e+00, %7063 ]
  %7264 = phi float [ %7134, %7094 ], [ 1.000000e+00, %7063 ]
  %7265 = phi float [ %7135, %7094 ], [ 1.000000e+00, %7063 ]
  %7266 = phi float [ %7259, %7094 ], [ 0.000000e+00, %7063 ]
  %7267 = phi float [ %7260, %7094 ], [ 0.000000e+00, %7063 ]
  %7268 = phi float [ %7261, %7094 ], [ 0.000000e+00, %7063 ]
  %7269 = fmul fast float %7266, %7040
  %7270 = fmul fast float %7267, %7040
  %7271 = fmul fast float %7268, %7040
  %7272 = call float @dx.op.dot3.f32(i32 55, float %7263, float %7264, float %7265, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7273 = call float @dx.op.dot3.f32(i32 55, float %7269, float %7270, float %7271, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7274 = select i1 %282, float %7272, float %7263
  %7275 = select i1 %282, float %7272, float %7264
  %7276 = select i1 %282, float 1.000000e+00, float %7265
  %7277 = select i1 %282, float %7273, float %7269
  %7278 = select i1 %282, float 0.000000e+00, float %7270
  %7279 = select i1 %282, float 0.000000e+00, float %7271
  %7280 = fmul fast float %7274, %7053
  %7281 = fmul fast float %7275, %7054
  %7282 = fmul fast float %7276, %7055
  %7283 = fadd fast float %7280, %7277
  %7284 = fadd fast float %7281, %7278
  %7285 = fadd fast float %7279, %7282
  %7286 = fmul fast float %7274, %7031
  %7287 = fmul fast float %7275, %7032
  %7288 = fmul fast float %7276, %7033
  %7289 = fmul fast float %140, %7065
  %7290 = fmul fast float %142, %7066
  %7291 = fsub fast float 1.000000e+00, %7289
  %7292 = fsub fast float 1.000000e+00, %7290
  %7293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7294 = extractvalue %dx.types.CBufRet.f32 %7293, 0
  %7295 = extractvalue %dx.types.CBufRet.f32 %7293, 1
  %7296 = extractvalue %dx.types.CBufRet.f32 %7293, 2
  %7297 = fmul fast float %7291, %7294
  %7298 = fmul fast float %7291, %7295
  %7299 = fmul fast float %7291, %7296
  %7300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7301 = extractvalue %dx.types.CBufRet.f32 %7300, 0
  %7302 = extractvalue %dx.types.CBufRet.f32 %7300, 1
  %7303 = extractvalue %dx.types.CBufRet.f32 %7300, 2
  %7304 = fmul fast float %7292, %7301
  %7305 = fmul fast float %7292, %7302
  %7306 = fmul fast float %7292, %7303
  %7307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7308 = extractvalue %dx.types.CBufRet.f32 %7307, 0
  %7309 = extractvalue %dx.types.CBufRet.f32 %7307, 1
  %7310 = extractvalue %dx.types.CBufRet.f32 %7307, 2
  %7311 = fadd fast float %7304, %7308
  %7312 = fadd fast float %7311, %7297
  %7313 = fadd fast float %7305, %7309
  %7314 = fadd fast float %7313, %7298
  %7315 = fadd fast float %7306, %7310
  %7316 = fadd fast float %7315, %7299
  %7317 = fmul fast float %7312, %245
  %7318 = fmul fast float %7314, %245
  %7319 = fmul fast float %7316, %245
  br label %7320

; <label>:7320                                    ; preds = %7262, %7030
  %7321 = phi float [ %7317, %7262 ], [ %191, %7030 ]
  %7322 = phi float [ %7318, %7262 ], [ %192, %7030 ]
  %7323 = phi float [ %7319, %7262 ], [ %193, %7030 ]
  %7324 = phi float [ %245, %7262 ], [ %95, %7030 ]
  %7325 = phi float [ %7283, %7262 ], [ %7053, %7030 ]
  %7326 = phi float [ %7284, %7262 ], [ %7054, %7030 ]
  %7327 = phi float [ %7285, %7262 ], [ %7055, %7030 ]
  %7328 = phi float [ %7286, %7262 ], [ %7031, %7030 ]
  %7329 = phi float [ %7287, %7262 ], [ %7032, %7030 ]
  %7330 = phi float [ %7288, %7262 ], [ %7033, %7030 ]
  %7331 = phi float [ %7263, %7262 ], [ 1.000000e+00, %7030 ]
  br i1 %7062, label %8486, label %7332

; <label>:7332                                    ; preds = %7320
  %7333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7334 = extractvalue %dx.types.CBufRet.f32 %7333, 0
  %7335 = extractvalue %dx.types.CBufRet.f32 %7333, 1
  %7336 = extractvalue %dx.types.CBufRet.f32 %7333, 2
  %7337 = extractvalue %dx.types.CBufRet.f32 %7333, 3
  %7338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7339 = extractvalue %dx.types.CBufRet.f32 %7338, 0
  %7340 = extractvalue %dx.types.CBufRet.f32 %7338, 1
  %7341 = extractvalue %dx.types.CBufRet.f32 %7338, 2
  %7342 = extractvalue %dx.types.CBufRet.f32 %7338, 3
  %7343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7344 = extractvalue %dx.types.CBufRet.f32 %7343, 0
  %7345 = extractvalue %dx.types.CBufRet.f32 %7343, 1
  %7346 = extractvalue %dx.types.CBufRet.f32 %7343, 2
  %7347 = extractvalue %dx.types.CBufRet.f32 %7343, 3
  %7348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7349 = extractvalue %dx.types.CBufRet.f32 %7348, 0
  %7350 = extractvalue %dx.types.CBufRet.f32 %7348, 1
  %7351 = extractvalue %dx.types.CBufRet.f32 %7348, 2
  %7352 = extractvalue %dx.types.CBufRet.f32 %7348, 3
  %7353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7354 = extractvalue %dx.types.CBufRet.f32 %7353, 3
  %7355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7356 = extractvalue %dx.types.CBufRet.f32 %7355, 3
  %7357 = extractvalue %dx.types.CBufRet.f32 %7355, 0
  %7358 = extractvalue %dx.types.CBufRet.f32 %7355, 1
  %7359 = extractvalue %dx.types.CBufRet.f32 %7355, 2
  %7360 = fcmp fast olt float %7359, -5.000000e-01
  %7361 = call float @dx.op.dot3.f32(i32 55, float %7321, float %7322, float %7323, float %7321, float %7322, float %7323)  ; Dot3(ax,ay,az,bx,by,bz)
  %7362 = call float @dx.op.unary.f32(i32 25, float %7361)  ; Rsqrt(value)
  %7363 = fmul fast float %7362, %7361
  %7364 = fmul fast float %7362, %7321
  %7365 = fmul fast float %7362, %7322
  %7366 = fmul fast float %7362, %7323
  %7367 = fadd fast float %7363, %7337
  %7368 = call float @dx.op.dot3.f32(i32 55, float %7364, float %7365, float %7366, float %7334, float %7335, float %7336)  ; Dot3(ax,ay,az,bx,by,bz)
  %7369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7370 = extractvalue %dx.types.CBufRet.i32 %7369, 1
  %7371 = and i32 %7370, 1
  %7372 = icmp ne i32 %7371, 0
  %7373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7374 = extractvalue %dx.types.CBufRet.f32 %7373, 2
  %7375 = fcmp fast ogt float %7374, 0.000000e+00
  %7376 = and i1 %7372, %7375
  br i1 %7376, label %7377, label %7783, !dx.controlflow.hints !123

; <label>:7377                                    ; preds = %7332
  %7378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7379 = extractvalue %dx.types.CBufRet.f32 %7378, 3
  %7380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7381 = extractvalue %dx.types.CBufRet.f32 %7380, 2
  %7382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7383 = extractvalue %dx.types.CBufRet.f32 %7382, 2
  %7384 = fsub fast float %7381, %7383
  %7385 = and i32 %7370, 2
  %7386 = extractvalue %dx.types.CBufRet.i32 %7369, 0
  %7387 = call i32 @dx.op.binary.i32(i32 40, i32 %7386, i32 3)  ; UMin(a,b)
  %7388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7389 = extractvalue %dx.types.CBufRet.f32 %7388, 0
  %7390 = extractvalue %dx.types.CBufRet.f32 %7388, 1
  %7391 = extractvalue %dx.types.CBufRet.f32 %7382, 0
  %7392 = extractvalue %dx.types.CBufRet.f32 %7382, 1
  %7393 = fsub fast float %7389, %7391
  %7394 = fsub fast float %7390, %7392
  %7395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7396 = extractvalue %dx.types.CBufRet.f32 %7395, 0
  %7397 = fcmp fast ogt float %7396, 0.000000e+00
  %7398 = fsub fast float -0.000000e+00, %7393
  %7399 = fsub fast float -0.000000e+00, %7394
  %7400 = call float @dx.op.dot2.f32(i32 54, float %7364, float %7365, float %7364, float %7365)  ; Dot2(ax,ay,bx,by)
  %7401 = call float @dx.op.dot2.f32(i32 54, float %7364, float %7365, float %7398, float %7399)  ; Dot2(ax,ay,bx,by)
  %7402 = fmul fast float %7401, 2.000000e+00
  %7403 = call float @dx.op.dot2.f32(i32 54, float %7398, float %7399, float %7398, float %7399)  ; Dot2(ax,ay,bx,by)
  %7404 = fmul fast float %7396, %7396
  %7405 = fsub fast float %7403, %7404
  %7406 = fmul fast float %7402, %7402
  %7407 = fmul fast float %7400, 4.000000e+00
  %7408 = fmul fast float %7407, %7405
  %7409 = fsub fast float %7406, %7408
  %7410 = fcmp fast ogt float %7409, 0.000000e+00
  br i1 %7410, label %7411, label %7426

; <label>:7411                                    ; preds = %7377
  %7412 = fcmp fast ogt float %7402, 0.000000e+00
  %7413 = call float @dx.op.unary.f32(i32 24, float %7409)  ; Sqrt(value)
  %7414 = fsub fast float -0.000000e+00, %7413
  %7415 = select i1 %7412, float %7413, float %7414
  %7416 = fadd fast float %7415, %7402
  %7417 = fmul float %7416, -5.000000e-01
  %7418 = fdiv fast float %7417, %7400
  %7419 = call float @dx.op.binary.f32(i32 35, float %7418, float 0.000000e+00)  ; FMax(a,b)
  %7420 = call float @dx.op.binary.f32(i32 36, float %7363, float %7419)  ; FMin(a,b)
  %7421 = fdiv fast float %7405, %7417
  %7422 = call float @dx.op.binary.f32(i32 35, float %7421, float 0.000000e+00)  ; FMax(a,b)
  %7423 = call float @dx.op.binary.f32(i32 36, float %7363, float %7422)  ; FMin(a,b)
  %7424 = call float @dx.op.binary.f32(i32 36, float %7420, float %7423)  ; FMin(a,b)
  %7425 = call float @dx.op.binary.f32(i32 35, float %7420, float %7423)  ; FMax(a,b)
  br label %7426

; <label>:7426                                    ; preds = %7411, %7377
  %7427 = phi float [ %7425, %7411 ], [ -1.000000e+00, %7377 ]
  %7428 = phi float [ %7424, %7411 ], [ -1.000000e+00, %7377 ]
  %7429 = phi i1 [ true, %7411 ], [ false, %7377 ]
  %7430 = and i1 %7397, %7429
  br i1 %7430, label %7431, label %7433

; <label>:7431                                    ; preds = %7426
  %7432 = fcmp fast oeq float %7428, %7427
  br i1 %7432, label %7736, label %7434

; <label>:7433                                    ; preds = %7426
  br i1 %7397, label %7736, label %7434

; <label>:7434                                    ; preds = %7433, %7431
  %7435 = phi float [ %7363, %7433 ], [ %7427, %7431 ]
  %7436 = phi float [ 0.000000e+00, %7433 ], [ %7428, %7431 ]
  %7437 = icmp ne i32 %7385, 0
  %7438 = fmul fast float %7435, %7366
  %7439 = fadd fast float %7438, %7379
  %7440 = fmul fast float %7439, %7435
  %7441 = select i1 %7437, float 0.000000e+00, float %7440
  %7442 = fcmp fast oeq float %7366, 0.000000e+00
  %7443 = fdiv fast float %7384, %7366
  %7444 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7443)  ; FMax(a,b)
  %7445 = select i1 %7442, float %7435, float %7444
  %7446 = call float @dx.op.binary.f32(i32 36, float %7435, float %7445)  ; FMin(a,b)
  %7447 = fcmp fast ogt float %7366, 0.000000e+00
  %7448 = fcmp fast olt float %7384, 0.000000e+00
  br i1 %7447, label %7449, label %7506

; <label>:7449                                    ; preds = %7434
  %7450 = icmp eq i32 %7385, 0
  br i1 %7448, label %7451, label %7495

; <label>:7451                                    ; preds = %7449
  %7452 = select i1 %7450, float %7435, float 0.000000e+00
  %7453 = fsub fast float -0.000000e+00, %7452
  %7454 = call float @dx.op.unary.f32(i32 6, float %7453)  ; FAbs(value)
  %7455 = fmul fast float %7452, %7366
  %7456 = fadd fast float %7455, %7379
  %7457 = fmul fast float %7454, %7456
  %7458 = fsub fast float %7441, %7457
  %7459 = fsub fast float %7435, %7454
  %7460 = select i1 %7450, float %7459, float 0.000000e+00
  %7461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7462 = extractvalue %dx.types.CBufRet.f32 %7461, 0
  %7463 = extractvalue %dx.types.CBufRet.f32 %7461, 1
  %7464 = extractvalue %dx.types.CBufRet.f32 %7461, 2
  %7465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7466 = extractvalue %dx.types.CBufRet.f32 %7465, 0
  %7467 = extractvalue %dx.types.CBufRet.f32 %7465, 1
  %7468 = extractvalue %dx.types.CBufRet.f32 %7465, 2
  %7469 = extractvalue %dx.types.CBufRet.f32 %7465, 3
  %7470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7471 = extractvalue %dx.types.CBufRet.f32 %7470, 3
  %7472 = call float @dx.op.binary.f32(i32 36, float %7458, float %7471)  ; FMin(a,b)
  %7473 = fmul fast float %7469, %7460
  %7474 = call float @dx.op.unary.f32(i32 7, float %7473)  ; Saturate(value)
  %7475 = fsub fast float %7466, %7462
  %7476 = fsub fast float %7467, %7463
  %7477 = fsub fast float %7468, %7464
  %7478 = fmul fast float %7474, %7475
  %7479 = fmul fast float %7474, %7476
  %7480 = fmul fast float %7474, %7477
  %7481 = fadd fast float %7478, %7462
  %7482 = fadd fast float %7479, %7463
  %7483 = fadd fast float %7480, %7464
  %7484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7485 = extractvalue %dx.types.CBufRet.f32 %7484, 0
  %7486 = extractvalue %dx.types.CBufRet.f32 %7484, 1
  %7487 = fadd fast float %7486, %7485
  %7488 = call float @dx.op.unary.f32(i32 7, float %7487)  ; Saturate(value)
  %7489 = extractvalue %dx.types.CBufRet.f32 %7484, 2
  %7490 = extractvalue %dx.types.CBufRet.f32 %7484, 3
  %7491 = fadd fast float %7490, %7489
  %7492 = call float @dx.op.unary.f32(i32 7, float %7491)  ; Saturate(value)
  %7493 = fmul fast float %7488, %7472
  %7494 = fmul fast float %7493, %7492
  br label %7736

; <label>:7495                                    ; preds = %7449
  br i1 %7450, label %7496, label %7517

; <label>:7496                                    ; preds = %7495
  %7497 = call float @dx.op.binary.f32(i32 36, float %7446, float %7436)  ; FMin(a,b)
  %7498 = fsub fast float %7446, %7497
  %7499 = fsub fast float %7498, %7435
  %7500 = call float @dx.op.unary.f32(i32 6, float %7499)  ; FAbs(value)
  %7501 = fadd fast float %7498, %7435
  %7502 = fmul fast float %7501, %7366
  %7503 = fadd fast float %7502, %7379
  %7504 = fmul fast float %7503, %7500
  %7505 = fsub fast float %7441, %7504
  br label %7517

; <label>:7506                                    ; preds = %7434
  br i1 %7448, label %7507, label %7517

; <label>:7507                                    ; preds = %7506
  %7508 = call float @dx.op.binary.f32(i32 35, float %7436, float %7446)  ; FMax(a,b)
  %7509 = icmp eq i32 %7385, 0
  %7510 = select i1 %7509, float %7446, float 0.000000e+00
  %7511 = fsub fast float -0.000000e+00, %7510
  %7512 = call float @dx.op.unary.f32(i32 6, float %7511)  ; FAbs(value)
  %7513 = fmul fast float %7510, %7366
  %7514 = fadd fast float %7513, %7379
  %7515 = fmul fast float %7512, %7514
  %7516 = fsub fast float %7441, %7515
  br label %7517

; <label>:7517                                    ; preds = %7507, %7506, %7496, %7495
  %7518 = phi float [ %7436, %7495 ], [ %7436, %7496 ], [ %7508, %7507 ], [ %7436, %7506 ]
  %7519 = phi float [ 0.000000e+00, %7495 ], [ %7500, %7496 ], [ %7512, %7507 ], [ 0.000000e+00, %7506 ]
  %7520 = phi float [ %7441, %7495 ], [ %7505, %7496 ], [ %7516, %7507 ], [ %7441, %7506 ]
  %7521 = phi float [ %7446, %7495 ], [ %7446, %7496 ], [ %7435, %7507 ], [ %7435, %7506 ]
  %7522 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %7522, align 4, !tbaa !124, !noalias !126
  %7523 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %7523, align 4, !tbaa !124, !noalias !126
  %7524 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %7524, align 4, !tbaa !124, !noalias !126
  %7525 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %7525, align 4, !tbaa !124, !noalias !126
  %7526 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %7526, align 4, !tbaa !124, !noalias !126
  %7527 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %7527, align 4, !tbaa !124, !noalias !126
  %7528 = icmp sgt i32 %7387, 0
  br i1 %7528, label %7529, label %7590

; <label>:7529                                    ; preds = %7517
  br label %7530

; <label>:7530                                    ; preds = %7579, %7529
  %7531 = phi i32 [ %7580, %7579 ], [ 0, %7529 ]
  %7532 = phi i32 [ %7581, %7579 ], [ 0, %7529 ]
  %7533 = add nuw i32 %7532, 171
  %7534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7533)  ; CBufferLoadLegacy(handle,regIndex)
  %7535 = extractvalue %dx.types.CBufRet.f32 %7534, 0
  %7536 = extractvalue %dx.types.CBufRet.f32 %7534, 1
  %7537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7538 = extractvalue %dx.types.CBufRet.f32 %7537, 0
  %7539 = extractvalue %dx.types.CBufRet.f32 %7537, 1
  %7540 = fsub fast float %7535, %7538
  %7541 = fsub fast float %7536, %7539
  %7542 = extractvalue %dx.types.CBufRet.f32 %7534, 2
  %7543 = fsub fast float -0.000000e+00, %7540
  %7544 = fsub fast float -0.000000e+00, %7541
  %7545 = call float @dx.op.dot2.f32(i32 54, float %7364, float %7365, float %7543, float %7544)  ; Dot2(ax,ay,bx,by)
  %7546 = fmul fast float %7545, 2.000000e+00
  %7547 = call float @dx.op.dot2.f32(i32 54, float %7543, float %7544, float %7543, float %7544)  ; Dot2(ax,ay,bx,by)
  %7548 = fmul fast float %7542, %7542
  %7549 = fsub fast float %7547, %7548
  %7550 = fmul fast float %7546, %7546
  %7551 = fmul fast float %7407, %7549
  %7552 = fsub fast float %7550, %7551
  %7553 = fcmp fast ogt float %7552, 0.000000e+00
  br i1 %7553, label %7554, label %7569

; <label>:7554                                    ; preds = %7530
  %7555 = fcmp fast ogt float %7546, 0.000000e+00
  %7556 = call float @dx.op.unary.f32(i32 24, float %7552)  ; Sqrt(value)
  %7557 = fsub fast float -0.000000e+00, %7556
  %7558 = select i1 %7555, float %7556, float %7557
  %7559 = fadd fast float %7558, %7546
  %7560 = fmul float %7559, -5.000000e-01
  %7561 = fdiv fast float %7560, %7400
  %7562 = call float @dx.op.binary.f32(i32 35, float %7561, float 0.000000e+00)  ; FMax(a,b)
  %7563 = call float @dx.op.binary.f32(i32 36, float %7435, float %7562)  ; FMin(a,b)
  %7564 = fdiv fast float %7549, %7560
  %7565 = call float @dx.op.binary.f32(i32 35, float %7564, float 0.000000e+00)  ; FMax(a,b)
  %7566 = call float @dx.op.binary.f32(i32 36, float %7435, float %7565)  ; FMin(a,b)
  %7567 = call float @dx.op.binary.f32(i32 36, float %7563, float %7566)  ; FMin(a,b)
  %7568 = call float @dx.op.binary.f32(i32 35, float %7563, float %7566)  ; FMax(a,b)
  br label %7569

; <label>:7569                                    ; preds = %7554, %7530
  %7570 = phi float [ %7568, %7554 ], [ -1.000000e+00, %7530 ]
  %7571 = phi float [ %7567, %7554 ], [ -1.000000e+00, %7530 ]
  %7572 = phi i1 [ true, %7554 ], [ false, %7530 ]
  br i1 %7572, label %7573, label %7579

; <label>:7573                                    ; preds = %7569
  %7574 = call float @dx.op.binary.f32(i32 35, float %7518, float %7571)  ; FMax(a,b)
  %7575 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7532
  store float %7574, float* %7575, align 4, !tbaa !124, !noalias !126
  %7576 = call float @dx.op.binary.f32(i32 35, float %7518, float %7570)  ; FMax(a,b)
  %7577 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7532
  store float %7576, float* %7577, align 4, !tbaa !124, !noalias !126
  %7578 = add nsw i32 %7531, 1
  br label %7579

; <label>:7579                                    ; preds = %7573, %7569
  %7580 = phi i32 [ %7578, %7573 ], [ %7531, %7569 ]
  %7581 = add nuw nsw i32 %7532, 1
  %7582 = icmp eq i32 %7581, %7387
  br i1 %7582, label %7583, label %7530

; <label>:7583                                    ; preds = %7579
  %7584 = load float, float* %7524, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %7585 = load float, float* %7523, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  %7586 = load float, float* %7522, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  %7587 = load float, float* %7527, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %7588 = load float, float* %7526, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  %7589 = load float, float* %7525, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  br label %7590

; <label>:7590                                    ; preds = %7583, %7517
  %7591 = phi float [ -1.000000e+00, %7517 ], [ %7589, %7583 ]
  %7592 = phi float [ -1.000000e+00, %7517 ], [ %7588, %7583 ]
  %7593 = phi float [ -1.000000e+00, %7517 ], [ %7587, %7583 ]
  %7594 = phi float [ -1.000000e+00, %7517 ], [ %7586, %7583 ]
  %7595 = phi float [ -1.000000e+00, %7517 ], [ %7585, %7583 ]
  %7596 = phi float [ -1.000000e+00, %7517 ], [ %7584, %7583 ]
  %7597 = phi i32 [ 0, %7517 ], [ %7580, %7583 ]
  %7598 = call float @dx.op.binary.f32(i32 36, float %7595, float %7596)  ; FMin(a,b)
  %7599 = call float @dx.op.binary.f32(i32 36, float %7594, float %7598)  ; FMin(a,b)
  %7600 = call float @dx.op.binary.f32(i32 35, float %7594, float %7595)  ; FMax(a,b)
  %7601 = call float @dx.op.binary.f32(i32 36, float %7600, float %7596)  ; FMin(a,b)
  %7602 = call float @dx.op.binary.f32(i32 36, float %7594, float %7595)  ; FMin(a,b)
  %7603 = call float @dx.op.binary.f32(i32 35, float %7602, float %7601)  ; FMax(a,b)
  %7604 = call float @dx.op.binary.f32(i32 35, float %7595, float %7596)  ; FMax(a,b)
  %7605 = call float @dx.op.binary.f32(i32 35, float %7594, float %7604)  ; FMax(a,b)
  store float %7599, float* %7522, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  store float %7603, float* %7523, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  store float %7605, float* %7524, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %7606 = call float @dx.op.binary.f32(i32 36, float %7592, float %7593)  ; FMin(a,b)
  %7607 = call float @dx.op.binary.f32(i32 36, float %7591, float %7606)  ; FMin(a,b)
  %7608 = call float @dx.op.binary.f32(i32 35, float %7591, float %7592)  ; FMax(a,b)
  %7609 = call float @dx.op.binary.f32(i32 36, float %7608, float %7593)  ; FMin(a,b)
  %7610 = call float @dx.op.binary.f32(i32 36, float %7591, float %7592)  ; FMin(a,b)
  %7611 = call float @dx.op.binary.f32(i32 35, float %7610, float %7609)  ; FMax(a,b)
  %7612 = call float @dx.op.binary.f32(i32 35, float %7592, float %7593)  ; FMax(a,b)
  %7613 = call float @dx.op.binary.f32(i32 35, float %7591, float %7612)  ; FMax(a,b)
  store float %7607, float* %7525, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  store float %7611, float* %7526, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  store float %7613, float* %7527, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %7614 = sub nsw i32 3, %7597
  %7615 = icmp sgt i32 %7614, 2
  br i1 %7615, label %7616, label %7654

; <label>:7616                                    ; preds = %7590
  %7617 = icmp eq i32 %7385, 0
  %7618 = fsub fast float %7435, %7519
  %7619 = select i1 %7617, float %7618, float %7519
  %7620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7621 = extractvalue %dx.types.CBufRet.f32 %7620, 0
  %7622 = extractvalue %dx.types.CBufRet.f32 %7620, 1
  %7623 = extractvalue %dx.types.CBufRet.f32 %7620, 2
  %7624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7625 = extractvalue %dx.types.CBufRet.f32 %7624, 0
  %7626 = extractvalue %dx.types.CBufRet.f32 %7624, 1
  %7627 = extractvalue %dx.types.CBufRet.f32 %7624, 2
  %7628 = extractvalue %dx.types.CBufRet.f32 %7624, 3
  %7629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7630 = extractvalue %dx.types.CBufRet.f32 %7629, 3
  %7631 = call float @dx.op.binary.f32(i32 36, float %7520, float %7630)  ; FMin(a,b)
  %7632 = fmul fast float %7628, %7619
  %7633 = call float @dx.op.unary.f32(i32 7, float %7632)  ; Saturate(value)
  %7634 = fsub fast float %7625, %7621
  %7635 = fsub fast float %7626, %7622
  %7636 = fsub fast float %7627, %7623
  %7637 = fmul fast float %7633, %7634
  %7638 = fmul fast float %7633, %7635
  %7639 = fmul fast float %7633, %7636
  %7640 = fadd fast float %7637, %7621
  %7641 = fadd fast float %7638, %7622
  %7642 = fadd fast float %7639, %7623
  %7643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7644 = extractvalue %dx.types.CBufRet.f32 %7643, 0
  %7645 = extractvalue %dx.types.CBufRet.f32 %7643, 1
  %7646 = fadd fast float %7645, %7644
  %7647 = call float @dx.op.unary.f32(i32 7, float %7646)  ; Saturate(value)
  %7648 = extractvalue %dx.types.CBufRet.f32 %7643, 2
  %7649 = extractvalue %dx.types.CBufRet.f32 %7643, 3
  %7650 = fadd fast float %7649, %7648
  %7651 = call float @dx.op.unary.f32(i32 7, float %7650)  ; Saturate(value)
  %7652 = fmul fast float %7647, %7631
  %7653 = fmul fast float %7652, %7651
  br label %7736

; <label>:7654                                    ; preds = %7590
  %7655 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7614
  %7656 = load float, float* %7655, align 4, !tbaa !124, !noalias !126
  %7657 = fcmp fast olt float %7656, %7521
  %7658 = icmp sgt i32 %7597, 0
  %7659 = and i1 %7658, %7657
  br i1 %7659, label %7660, label %7697

; <label>:7660                                    ; preds = %7654
  br label %7661

; <label>:7661                                    ; preds = %7690, %7660
  %7662 = phi float [ %7691, %7690 ], [ %7519, %7660 ]
  %7663 = phi float [ %7692, %7690 ], [ %7520, %7660 ]
  %7664 = phi float [ %7672, %7690 ], [ %7656, %7660 ]
  %7665 = phi i32 [ %7669, %7690 ], [ %7614, %7660 ]
  %7666 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7665
  %7667 = load float, float* %7666, align 4, !tbaa !124, !noalias !126
  %7668 = icmp slt i32 %7665, 2
  %7669 = add nsw i32 %7665, 1
  %7670 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7669
  %7671 = load float, float* %7670, align 4, !tbaa !124, !noalias !126
  %7672 = select i1 %7668, float %7671, float %7435
  %7673 = call float @dx.op.binary.f32(i32 36, float %7672, float %7667)  ; FMin(a,b)
  %7674 = call float @dx.op.binary.f32(i32 36, float %7521, float %7673)  ; FMin(a,b)
  %7675 = icmp eq i32 %7385, 0
  %7676 = fadd fast float %7674, %7664
  %7677 = fmul fast float %7676, %7366
  %7678 = fadd fast float %7677, %7379
  br i1 %7675, label %7684, label %7679

; <label>:7679                                    ; preds = %7661
  %7680 = fsub fast float %7674, %7664
  %7681 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7680)  ; FMax(a,b)
  %7682 = fmul fast float %7681, %7678
  %7683 = fadd fast float %7682, %7663
  br label %7690

; <label>:7684                                    ; preds = %7661
  %7685 = fsub fast float %7664, %7674
  %7686 = call float @dx.op.unary.f32(i32 6, float %7685)  ; FAbs(value)
  %7687 = fadd fast float %7686, %7662
  %7688 = fmul fast float %7686, %7678
  %7689 = fsub fast float %7663, %7688
  br label %7690

; <label>:7690                                    ; preds = %7684, %7679
  %7691 = phi float [ %7681, %7679 ], [ %7687, %7684 ]
  %7692 = phi float [ %7683, %7679 ], [ %7689, %7684 ]
  %7693 = fcmp fast olt float %7672, %7521
  %7694 = icmp slt i32 %7669, 3
  %7695 = and i1 %7694, %7693
  br i1 %7695, label %7661, label %7696

; <label>:7696                                    ; preds = %7690
  br label %7697

; <label>:7697                                    ; preds = %7696, %7654
  %7698 = phi float [ %7519, %7654 ], [ %7691, %7696 ]
  %7699 = phi float [ %7520, %7654 ], [ %7692, %7696 ]
  %7700 = fsub fast float %7435, %7698
  %7701 = select i1 %7437, float %7698, float %7700
  %7702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7703 = extractvalue %dx.types.CBufRet.f32 %7702, 0
  %7704 = extractvalue %dx.types.CBufRet.f32 %7702, 1
  %7705 = extractvalue %dx.types.CBufRet.f32 %7702, 2
  %7706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7707 = extractvalue %dx.types.CBufRet.f32 %7706, 0
  %7708 = extractvalue %dx.types.CBufRet.f32 %7706, 1
  %7709 = extractvalue %dx.types.CBufRet.f32 %7706, 2
  %7710 = extractvalue %dx.types.CBufRet.f32 %7706, 3
  %7711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7712 = extractvalue %dx.types.CBufRet.f32 %7711, 3
  %7713 = call float @dx.op.binary.f32(i32 36, float %7699, float %7712)  ; FMin(a,b)
  %7714 = fmul fast float %7710, %7701
  %7715 = call float @dx.op.unary.f32(i32 7, float %7714)  ; Saturate(value)
  %7716 = fsub fast float %7707, %7703
  %7717 = fsub fast float %7708, %7704
  %7718 = fsub fast float %7709, %7705
  %7719 = fmul fast float %7715, %7716
  %7720 = fmul fast float %7715, %7717
  %7721 = fmul fast float %7715, %7718
  %7722 = fadd fast float %7719, %7703
  %7723 = fadd fast float %7720, %7704
  %7724 = fadd fast float %7721, %7705
  %7725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7726 = extractvalue %dx.types.CBufRet.f32 %7725, 0
  %7727 = extractvalue %dx.types.CBufRet.f32 %7725, 1
  %7728 = fadd fast float %7727, %7726
  %7729 = call float @dx.op.unary.f32(i32 7, float %7728)  ; Saturate(value)
  %7730 = extractvalue %dx.types.CBufRet.f32 %7725, 2
  %7731 = extractvalue %dx.types.CBufRet.f32 %7725, 3
  %7732 = fadd fast float %7731, %7730
  %7733 = call float @dx.op.unary.f32(i32 7, float %7732)  ; Saturate(value)
  %7734 = fmul fast float %7729, %7713
  %7735 = fmul fast float %7734, %7733
  br label %7736

; <label>:7736                                    ; preds = %7697, %7616, %7451, %7433, %7431
  %7737 = phi float [ %7460, %7451 ], [ %7619, %7616 ], [ %7701, %7697 ], [ 0.000000e+00, %7431 ], [ 0.000000e+00, %7433 ]
  %7738 = phi float [ %7494, %7451 ], [ %7653, %7616 ], [ %7735, %7697 ], [ 0.000000e+00, %7431 ], [ 0.000000e+00, %7433 ]
  %7739 = phi float [ %7481, %7451 ], [ %7640, %7616 ], [ %7722, %7697 ], [ 0.000000e+00, %7431 ], [ 0.000000e+00, %7433 ]
  %7740 = phi float [ %7482, %7451 ], [ %7641, %7616 ], [ %7723, %7697 ], [ 0.000000e+00, %7431 ], [ 0.000000e+00, %7433 ]
  %7741 = phi float [ %7483, %7451 ], [ %7642, %7616 ], [ %7724, %7697 ], [ 0.000000e+00, %7431 ], [ 0.000000e+00, %7433 ]
  %7742 = fmul fast float %7374, %7738
  %7743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7744 = extractvalue %dx.types.CBufRet.f32 %7743, 2
  %7745 = fsub fast float %7381, %7744
  %7746 = fcmp fast olt float %7742, -2.000000e+01
  %7747 = call float @dx.op.unary.f32(i32 21, float %7742)  ; Exp(value)
  %7748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7749 = extractvalue %dx.types.CBufRet.f32 %7748, 2
  %7750 = extractvalue %dx.types.CBufRet.f32 %7748, 3
  %7751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7752 = extractvalue %dx.types.CBufRet.f32 %7751, 2
  %7753 = fmul fast float %7750, %7745
  %7754 = call float @dx.op.unary.f32(i32 7, float %7753)  ; Saturate(value)
  %7755 = fsub fast float 1.000000e+00, %7754
  %7756 = fmul fast float %7366, 5.000000e-01
  %7757 = fadd fast float %7756, 5.000000e-01
  %7758 = call float @dx.op.unary.f32(i32 7, float %7757)  ; Saturate(value)
  %7759 = fsub fast float 1.000000e+00, %7758
  %7760 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7755)  ; FMax(a,b)
  %7761 = fdiv fast float %7759, %7760
  %7762 = fsub fast float %7745, %7323
  %7763 = call float @dx.op.unary.f32(i32 6, float %7762)  ; FAbs(value)
  %7764 = fmul fast float %7763, %7749
  %7765 = call float @dx.op.unary.f32(i32 7, float %7761)  ; Saturate(value)
  %7766 = fsub fast float 1.000000e+00, %7764
  %7767 = fmul fast float %7766, %7765
  %7768 = fadd fast float %7767, %7764
  %7769 = fmul fast float %7752, %7745
  %7770 = call float @dx.op.unary.f32(i32 7, float %7769)  ; Saturate(value)
  %7771 = fsub fast float 1.000000e+00, %7768
  %7772 = fmul fast float %7771, %7770
  %7773 = fadd fast float %7772, %7768
  %7774 = call float @dx.op.unary.f32(i32 7, float %7773)  ; Saturate(value)
  %7775 = fadd fast float %7747, -1.000000e+00
  %7776 = select i1 %7746, float -1.000000e+00, float %7775
  %7777 = fmul fast float %7774, %7776
  %7778 = fadd fast float %7777, 1.000000e+00
  %7779 = fsub fast float -0.000000e+00, %7777
  %7780 = fmul fast float %7739, %7779
  %7781 = fmul fast float %7740, %7779
  %7782 = fmul fast float %7741, %7779
  br label %7783

; <label>:7783                                    ; preds = %7736, %7332
  %7784 = phi float [ %7737, %7736 ], [ 0.000000e+00, %7332 ]
  %7785 = phi float [ %7778, %7736 ], [ 1.000000e+00, %7332 ]
  %7786 = phi float [ %7780, %7736 ], [ 0.000000e+00, %7332 ]
  %7787 = phi float [ %7781, %7736 ], [ 0.000000e+00, %7332 ]
  %7788 = phi float [ %7782, %7736 ], [ 0.000000e+00, %7332 ]
  %7789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7790 = extractvalue %dx.types.CBufRet.f32 %7789, 1
  %7791 = fsub fast float 1.000000e+00, %7785
  %7792 = fmul fast float %7791, %7367
  %7793 = fmul fast float %7792, %7790
  %7794 = fsub fast float %7367, %7793
  br i1 %7360, label %7795, label %7824, !dx.controlflow.hints !162

; <label>:7795                                    ; preds = %7783
  %7796 = fmul fast float %7368, %7357
  %7797 = fadd fast float %7796, %7358
  %7798 = call float @dx.op.unary.f32(i32 7, float %7797)  ; Saturate(value)
  %7799 = fmul fast float %7339, %7794
  %7800 = fsub fast float -0.000000e+00, %7799
  %7801 = fmul fast float %7340, %7794
  %7802 = fsub fast float -0.000000e+00, %7801
  %7803 = call float @dx.op.unary.f32(i32 21, float %7800)  ; Exp(value)
  %7804 = call float @dx.op.unary.f32(i32 21, float %7802)  ; Exp(value)
  %7805 = call float @dx.op.binary.f32(i32 35, float %7347, float %7803)  ; FMax(a,b)
  %7806 = call float @dx.op.binary.f32(i32 35, float %7347, float %7804)  ; FMax(a,b)
  %7807 = fsub fast float %7806, %7805
  %7808 = fmul fast float %7807, %7798
  %7809 = fadd fast float %7808, %7805
  %7810 = call float @dx.op.unary.f32(i32 7, float %7809)  ; Saturate(value)
  %7811 = fsub fast float %7344, %7349
  %7812 = fsub fast float %7345, %7350
  %7813 = fsub fast float %7346, %7351
  %7814 = fmul fast float %7798, %7811
  %7815 = fmul fast float %7798, %7812
  %7816 = fmul fast float %7798, %7813
  %7817 = fadd fast float %7814, %7349
  %7818 = fadd fast float %7815, %7350
  %7819 = fadd fast float %7816, %7351
  %7820 = fsub fast float 1.000000e+00, %7810
  %7821 = fmul fast float %7820, %7817
  %7822 = fmul fast float %7820, %7818
  %7823 = fmul fast float %7820, %7819
  br label %7883

; <label>:7824                                    ; preds = %7783
  %7825 = fmul fast float %7794, %7356
  %7826 = call float @dx.op.unary.f32(i32 7, float %7825)  ; Saturate(value)
  %7827 = fsub fast float 2.000000e+00, %7826
  %7828 = fmul fast float %7826, 9.921875e-01
  %7829 = fmul fast float %7828, %7827
  %7830 = fadd fast float %7829, 3.906250e-03
  %7831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7830, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7832 = extractvalue %dx.types.ResRet.f32 %7831, 0
  %7833 = fsub fast float %7826, %7832
  %7834 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7833)  ; FMax(a,b)
  %7835 = fmul fast float %7342, %7323
  %7836 = call float @dx.op.unary.f32(i32 6, float %7835)  ; FAbs(value)
  %7837 = fcmp fast ogt float %7836, 0x3EB0C6F7A0000000
  br i1 %7837, label %7838, label %7844, !dx.controlflow.hints !163

; <label>:7838                                    ; preds = %7824
  %7839 = fmul fast float %7835, 0xBFF7154760000000
  %7840 = call float @dx.op.unary.f32(i32 21, float %7839)  ; Exp(value)
  %7841 = fsub fast float 1.000000e+00, %7840
  %7842 = fdiv fast float %7841, %7835
  %7843 = fmul fast float %7842, %7352
  br label %7844

; <label>:7844                                    ; preds = %7838, %7824
  %7845 = phi float [ %7843, %7838 ], [ %7352, %7824 ]
  %7846 = fadd fast float %7845, %7354
  %7847 = fmul fast float %7846, %7834
  %7848 = fmul fast float %7339, %7847
  %7849 = fsub fast float -0.000000e+00, %7848
  %7850 = fmul fast float %7340, %7847
  %7851 = fsub fast float -0.000000e+00, %7850
  %7852 = fmul fast float %7341, %7847
  %7853 = fsub fast float -0.000000e+00, %7852
  %7854 = call float @dx.op.unary.f32(i32 21, float %7849)  ; Exp(value)
  %7855 = call float @dx.op.unary.f32(i32 21, float %7851)  ; Exp(value)
  %7856 = call float @dx.op.unary.f32(i32 21, float %7853)  ; Exp(value)
  %7857 = fmul fast float %7368, %7368
  %7858 = fadd fast float %7857, 1.000000e+00
  %7859 = fmul fast float %7858, 0x3FAE8EC8A0000000
  %7860 = fmul fast float %7859, %7349
  %7861 = fmul fast float %7859, %7350
  %7862 = fmul fast float %7859, %7351
  %7863 = fmul fast float %7368, %7347
  %7864 = fsub fast float 1.000000e+00, %7863
  %7865 = fmul fast float %7347, %7347
  %7866 = fsub fast float 1.000000e+00, %7865
  %7867 = fmul fast float %7866, 0x3FB45F3060000000
  %7868 = fmul fast float %7864, %7864
  %7869 = fdiv fast float 1.000000e+00, %7868
  %7870 = fmul fast float %7867, %7869
  %7871 = fmul fast float %7870, %7344
  %7872 = fmul fast float %7870, %7345
  %7873 = fmul fast float %7870, %7346
  %7874 = fadd fast float %7871, %7860
  %7875 = fadd fast float %7872, %7861
  %7876 = fadd fast float %7873, %7862
  %7877 = fsub fast float 1.000000e+00, %7854
  %7878 = fsub fast float 1.000000e+00, %7855
  %7879 = fsub fast float 1.000000e+00, %7856
  %7880 = fmul fast float %7874, %7877
  %7881 = fmul fast float %7875, %7878
  %7882 = fmul fast float %7876, %7879
  br label %7883

; <label>:7883                                    ; preds = %7844, %7795
  %7884 = phi float [ %7821, %7795 ], [ %7880, %7844 ]
  %7885 = phi float [ %7822, %7795 ], [ %7881, %7844 ]
  %7886 = phi float [ %7823, %7795 ], [ %7882, %7844 ]
  %7887 = phi float [ %7810, %7795 ], [ %7854, %7844 ]
  %7888 = phi float [ %7810, %7795 ], [ %7855, %7844 ]
  %7889 = phi float [ %7810, %7795 ], [ %7856, %7844 ]
  br i1 %7376, label %7890, label %8088, !dx.controlflow.hints !164

; <label>:7890                                    ; preds = %7883
  %7891 = extractvalue %dx.types.CBufRet.f32 %7789, 0
  %7892 = fmul fast float %7891, %7791
  %7893 = fsub fast float %7786, %7884
  %7894 = fsub fast float %7787, %7885
  %7895 = fsub fast float %7788, %7886
  %7896 = fmul fast float %7892, %7893
  %7897 = fmul fast float %7892, %7894
  %7898 = fmul fast float %7892, %7895
  %7899 = fadd fast float %7896, %7884
  %7900 = fadd fast float %7897, %7885
  %7901 = fadd fast float %7898, %7886
  %7902 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7887)  ; FMax(a,b)
  %7903 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7888)  ; FMax(a,b)
  %7904 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7889)  ; FMax(a,b)
  %7905 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7785)  ; FMax(a,b)
  %7906 = call float @dx.op.binary.f32(i32 35, float %7784, float %7794)  ; FMax(a,b)
  %7907 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7906)  ; FMax(a,b)
  %7908 = fdiv fast float %7784, %7907
  %7909 = call float @dx.op.unary.f32(i32 7, float %7908)  ; Saturate(value)
  %7910 = fdiv fast float %7794, %7907
  %7911 = call float @dx.op.unary.f32(i32 7, float %7910)  ; Saturate(value)
  %7912 = fcmp fast une float %7905, 1.000000e+00
  br i1 %7912, label %7913, label %7926, !dx.controlflow.hints !165

; <label>:7913                                    ; preds = %7890
  %7914 = call float @dx.op.unary.f32(i32 23, float %7905)  ; Log(value)
  %7915 = fmul fast float %7914, 0x3FE62E4300000000
  %7916 = fmul fast float %7786, %7915
  %7917 = fsub fast float -0.000000e+00, %7916
  %7918 = fmul fast float %7787, %7915
  %7919 = fsub fast float -0.000000e+00, %7918
  %7920 = fmul fast float %7788, %7915
  %7921 = fsub fast float -0.000000e+00, %7920
  %7922 = fsub fast float 1.000000e+00, %7905
  %7923 = fdiv fast float %7917, %7922
  %7924 = fdiv fast float %7919, %7922
  %7925 = fdiv fast float %7921, %7922
  br label %7926

; <label>:7926                                    ; preds = %7913, %7890
  %7927 = phi float [ %7923, %7913 ], [ %7786, %7890 ]
  %7928 = phi float [ %7924, %7913 ], [ %7787, %7890 ]
  %7929 = phi float [ %7925, %7913 ], [ %7788, %7890 ]
  %7930 = phi float [ %7915, %7913 ], [ 0.000000e+00, %7890 ]
  %7931 = fcmp fast une float %7902, 1.000000e+00
  br i1 %7931, label %7932, label %7939, !dx.controlflow.hints !166

; <label>:7932                                    ; preds = %7926
  %7933 = call float @dx.op.unary.f32(i32 23, float %7902)  ; Log(value)
  %7934 = fmul fast float %7933, 0x3FE62E4300000000
  %7935 = fmul fast float %7899, %7934
  %7936 = fsub fast float -0.000000e+00, %7935
  %7937 = fsub fast float 1.000000e+00, %7902
  %7938 = fdiv fast float %7936, %7937
  br label %7939

; <label>:7939                                    ; preds = %7932, %7926
  %7940 = phi float [ %7938, %7932 ], [ %7899, %7926 ]
  %7941 = phi float [ %7934, %7932 ], [ 0.000000e+00, %7926 ]
  %7942 = fcmp fast une float %7903, 1.000000e+00
  br i1 %7942, label %7943, label %7950, !dx.controlflow.hints !166

; <label>:7943                                    ; preds = %7939
  %7944 = call float @dx.op.unary.f32(i32 23, float %7903)  ; Log(value)
  %7945 = fmul fast float %7944, 0x3FE62E4300000000
  %7946 = fmul fast float %7900, %7945
  %7947 = fsub fast float -0.000000e+00, %7946
  %7948 = fsub fast float 1.000000e+00, %7903
  %7949 = fdiv fast float %7947, %7948
  br label %7950

; <label>:7950                                    ; preds = %7943, %7939
  %7951 = phi float [ %7949, %7943 ], [ %7900, %7939 ]
  %7952 = phi float [ %7945, %7943 ], [ 0.000000e+00, %7939 ]
  %7953 = fcmp fast une float %7904, 1.000000e+00
  br i1 %7953, label %7954, label %7961, !dx.controlflow.hints !166

; <label>:7954                                    ; preds = %7950
  %7955 = call float @dx.op.unary.f32(i32 23, float %7904)  ; Log(value)
  %7956 = fmul fast float %7955, 0x3FE62E4300000000
  %7957 = fmul fast float %7901, %7956
  %7958 = fsub fast float -0.000000e+00, %7957
  %7959 = fsub fast float 1.000000e+00, %7904
  %7960 = fdiv fast float %7958, %7959
  br label %7961

; <label>:7961                                    ; preds = %7954, %7950
  %7962 = phi float [ %7960, %7954 ], [ %7901, %7950 ]
  %7963 = phi float [ %7956, %7954 ], [ 0.000000e+00, %7950 ]
  %7964 = fmul fast float %7927, %7911
  %7965 = fmul fast float %7928, %7911
  %7966 = fmul fast float %7929, %7911
  %7967 = fmul fast float %7930, %7911
  %7968 = fmul fast float %7940, %7909
  %7969 = fmul fast float %7951, %7909
  %7970 = fmul fast float %7962, %7909
  %7971 = fmul fast float %7941, %7909
  %7972 = fmul fast float %7952, %7909
  %7973 = fmul fast float %7963, %7909
  %7974 = fadd fast float %7968, %7964
  %7975 = fadd fast float %7969, %7965
  %7976 = fadd fast float %7970, %7966
  %7977 = fadd fast float %7971, %7967
  %7978 = fadd fast float %7972, %7967
  %7979 = fadd fast float %7973, %7967
  %7980 = fcmp fast une float %7977, 0.000000e+00
  br i1 %7980, label %7981, label %7988, !dx.controlflow.hints !167

; <label>:7981                                    ; preds = %7961
  %7982 = fmul fast float %7977, 0x3FF7154760000000
  %7983 = call float @dx.op.unary.f32(i32 21, float %7982)  ; Exp(value)
  %7984 = fsub fast float 1.000000e+00, %7983
  %7985 = fmul fast float %7974, %7984
  %7986 = fsub fast float -0.000000e+00, %7985
  %7987 = fdiv fast float %7986, %7977
  br label %7988

; <label>:7988                                    ; preds = %7981, %7961
  %7989 = phi float [ %7983, %7981 ], [ 1.000000e+00, %7961 ]
  %7990 = phi float [ %7987, %7981 ], [ %7974, %7961 ]
  %7991 = fcmp fast une float %7978, 0.000000e+00
  br i1 %7991, label %7992, label %7999, !dx.controlflow.hints !167

; <label>:7992                                    ; preds = %7988
  %7993 = fmul fast float %7978, 0x3FF7154760000000
  %7994 = call float @dx.op.unary.f32(i32 21, float %7993)  ; Exp(value)
  %7995 = fsub fast float 1.000000e+00, %7994
  %7996 = fmul fast float %7975, %7995
  %7997 = fsub fast float -0.000000e+00, %7996
  %7998 = fdiv fast float %7997, %7978
  br label %7999

; <label>:7999                                    ; preds = %7992, %7988
  %8000 = phi float [ %7994, %7992 ], [ 1.000000e+00, %7988 ]
  %8001 = phi float [ %7998, %7992 ], [ %7975, %7988 ]
  %8002 = fcmp fast une float %7979, 0.000000e+00
  br i1 %8002, label %8003, label %8010, !dx.controlflow.hints !167

; <label>:8003                                    ; preds = %7999
  %8004 = fmul fast float %7979, 0x3FF7154760000000
  %8005 = call float @dx.op.unary.f32(i32 21, float %8004)  ; Exp(value)
  %8006 = fsub fast float 1.000000e+00, %8005
  %8007 = fmul fast float %7976, %8006
  %8008 = fsub fast float -0.000000e+00, %8007
  %8009 = fdiv fast float %8008, %7979
  br label %8010

; <label>:8010                                    ; preds = %8003, %7999
  %8011 = phi float [ %8005, %8003 ], [ 1.000000e+00, %7999 ]
  %8012 = phi float [ %8009, %8003 ], [ %7976, %7999 ]
  %8013 = fcmp fast ogt float %7909, %7911
  br i1 %8013, label %8014, label %8034

; <label>:8014                                    ; preds = %8010
  %8015 = fsub fast float 1.000000e+00, %7911
  %8016 = fmul fast float %7927, %8015
  %8017 = fmul fast float %7928, %8015
  %8018 = fmul fast float %7929, %8015
  %8019 = fmul fast float %7930, %8015
  %8020 = fcmp fast une float %8019, 0.000000e+00
  br i1 %8020, label %8021, label %8072, !dx.controlflow.hints !168

; <label>:8021                                    ; preds = %8014
  %8022 = fmul fast float %8019, 0x3FF7154760000000
  %8023 = call float @dx.op.unary.f32(i32 21, float %8022)  ; Exp(value)
  %8024 = fsub fast float 1.000000e+00, %8023
  %8025 = fmul fast float %8016, %8024
  %8026 = fsub fast float -0.000000e+00, %8025
  %8027 = fmul fast float %8017, %8024
  %8028 = fsub fast float -0.000000e+00, %8027
  %8029 = fmul fast float %8018, %8024
  %8030 = fsub fast float -0.000000e+00, %8029
  %8031 = fdiv fast float %8026, %8019
  %8032 = fdiv fast float %8028, %8019
  %8033 = fdiv fast float %8030, %8019
  br label %8072

; <label>:8034                                    ; preds = %8010
  %8035 = fsub fast float 1.000000e+00, %7909
  %8036 = fmul fast float %7940, %8035
  %8037 = fmul fast float %7951, %8035
  %8038 = fmul fast float %7962, %8035
  %8039 = fmul fast float %7941, %8035
  %8040 = fmul fast float %7952, %8035
  %8041 = fmul fast float %7963, %8035
  %8042 = fcmp fast une float %8039, 0.000000e+00
  br i1 %8042, label %8043, label %8050, !dx.controlflow.hints !167

; <label>:8043                                    ; preds = %8034
  %8044 = fmul fast float %8039, 0x3FF7154760000000
  %8045 = call float @dx.op.unary.f32(i32 21, float %8044)  ; Exp(value)
  %8046 = fsub fast float 1.000000e+00, %8045
  %8047 = fmul fast float %8036, %8046
  %8048 = fsub fast float -0.000000e+00, %8047
  %8049 = fdiv fast float %8048, %8039
  br label %8050

; <label>:8050                                    ; preds = %8043, %8034
  %8051 = phi float [ %8049, %8043 ], [ %8036, %8034 ]
  %8052 = phi float [ %8045, %8043 ], [ 1.000000e+00, %8034 ]
  %8053 = fcmp fast une float %8040, 0.000000e+00
  br i1 %8053, label %8054, label %8061, !dx.controlflow.hints !167

; <label>:8054                                    ; preds = %8050
  %8055 = fmul fast float %8040, 0x3FF7154760000000
  %8056 = call float @dx.op.unary.f32(i32 21, float %8055)  ; Exp(value)
  %8057 = fsub fast float 1.000000e+00, %8056
  %8058 = fmul fast float %8037, %8057
  %8059 = fsub fast float -0.000000e+00, %8058
  %8060 = fdiv fast float %8059, %8040
  br label %8061

; <label>:8061                                    ; preds = %8054, %8050
  %8062 = phi float [ %8060, %8054 ], [ %8037, %8050 ]
  %8063 = phi float [ %8056, %8054 ], [ 1.000000e+00, %8050 ]
  %8064 = fcmp fast une float %8041, 0.000000e+00
  br i1 %8064, label %8065, label %8072, !dx.controlflow.hints !167

; <label>:8065                                    ; preds = %8061
  %8066 = fmul fast float %8041, 0x3FF7154760000000
  %8067 = call float @dx.op.unary.f32(i32 21, float %8066)  ; Exp(value)
  %8068 = fsub fast float 1.000000e+00, %8067
  %8069 = fmul fast float %8038, %8068
  %8070 = fsub fast float -0.000000e+00, %8069
  %8071 = fdiv fast float %8070, %8041
  br label %8072

; <label>:8072                                    ; preds = %8065, %8061, %8021, %8014
  %8073 = phi float [ %8071, %8065 ], [ %8033, %8021 ], [ %8018, %8014 ], [ %8038, %8061 ]
  %8074 = phi float [ %8062, %8065 ], [ %8032, %8021 ], [ %8017, %8014 ], [ %8062, %8061 ]
  %8075 = phi float [ %8051, %8065 ], [ %8031, %8021 ], [ %8016, %8014 ], [ %8051, %8061 ]
  %8076 = phi float [ %8067, %8065 ], [ %8023, %8021 ], [ 1.000000e+00, %8014 ], [ 1.000000e+00, %8061 ]
  %8077 = phi float [ %8063, %8065 ], [ %8023, %8021 ], [ 1.000000e+00, %8014 ], [ %8063, %8061 ]
  %8078 = phi float [ %8052, %8065 ], [ %8023, %8021 ], [ 1.000000e+00, %8014 ], [ %8052, %8061 ]
  %8079 = fmul fast float %8078, %7990
  %8080 = fmul fast float %8077, %8001
  %8081 = fmul fast float %8076, %8012
  %8082 = fadd fast float %8079, %8075
  %8083 = fadd fast float %8080, %8074
  %8084 = fadd fast float %8081, %8073
  %8085 = fmul fast float %8078, %7989
  %8086 = fmul fast float %8077, %8000
  %8087 = fmul fast float %8076, %8011
  br label %8088

; <label>:8088                                    ; preds = %8072, %7883
  %8089 = phi float [ %8087, %8072 ], [ %7889, %7883 ]
  %8090 = phi float [ %8086, %8072 ], [ %7888, %7883 ]
  %8091 = phi float [ %8085, %8072 ], [ %7887, %7883 ]
  %8092 = phi float [ %8084, %8072 ], [ %7886, %7883 ]
  %8093 = phi float [ %8083, %8072 ], [ %7885, %7883 ]
  %8094 = phi float [ %8082, %8072 ], [ %7884, %7883 ]
  %8095 = fmul fast float %8094, %7040
  %8096 = fmul fast float %8093, %7040
  %8097 = fmul fast float %8092, %7040
  %8098 = fmul fast float %8091, %7331
  %8099 = call float @dx.op.dot3.f32(i32 55, float %8091, float %8090, float %8089, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8100 = call float @dx.op.dot3.f32(i32 55, float %8095, float %8096, float %8097, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8101 = select i1 %282, float %8099, float %8091
  %8102 = select i1 %282, float %8099, float %8090
  %8103 = select i1 %282, float 1.000000e+00, float %8089
  %8104 = select i1 %282, float %8100, float %8095
  %8105 = select i1 %282, float 0.000000e+00, float %8096
  %8106 = select i1 %282, float 0.000000e+00, float %8097
  %8107 = fmul fast float %8101, %7325
  %8108 = fmul fast float %8102, %7326
  %8109 = fmul fast float %8103, %7327
  %8110 = fadd fast float %8107, %8104
  %8111 = fadd fast float %8108, %8105
  %8112 = fadd fast float %8106, %8109
  %8113 = fmul fast float %8101, %7328
  %8114 = fmul fast float %8102, %7329
  %8115 = fmul fast float %8103, %7330
  %8116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8117 = extractvalue %dx.types.CBufRet.i32 %8116, 0
  %8118 = icmp eq i32 %8117, 0
  br i1 %8118, label %8486, label %8119, !dx.controlflow.hints !169

; <label>:8119                                    ; preds = %8088
  %8120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8121 = extractvalue %dx.types.CBufRet.f32 %8120, 2
  %8122 = extractvalue %dx.types.CBufRet.f32 %8120, 3
  %8123 = fmul fast float %8121, %104
  %8124 = fmul fast float %8122, %105
  %8125 = fmul fast float %8123, 2.000000e+00
  %8126 = fmul fast float %8124, 2.000000e+00
  %8127 = fsub fast float 1.000000e+00, %8125
  %8128 = fsub fast float 1.000000e+00, %8126
  %8129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8130 = extractvalue %dx.types.CBufRet.f32 %8129, 0
  %8131 = extractvalue %dx.types.CBufRet.f32 %8129, 1
  %8132 = extractvalue %dx.types.CBufRet.f32 %8129, 2
  %8133 = fmul fast float %8127, %8130
  %8134 = fmul fast float %8127, %8131
  %8135 = fmul fast float %8127, %8132
  %8136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8137 = extractvalue %dx.types.CBufRet.f32 %8136, 0
  %8138 = extractvalue %dx.types.CBufRet.f32 %8136, 1
  %8139 = extractvalue %dx.types.CBufRet.f32 %8136, 2
  %8140 = fmul fast float %8128, %8137
  %8141 = fmul fast float %8128, %8138
  %8142 = fmul fast float %8128, %8139
  %8143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8144 = extractvalue %dx.types.CBufRet.f32 %8143, 0
  %8145 = extractvalue %dx.types.CBufRet.f32 %8143, 1
  %8146 = extractvalue %dx.types.CBufRet.f32 %8143, 2
  %8147 = fadd fast float %8140, %8144
  %8148 = fadd fast float %8147, %8133
  %8149 = fadd fast float %8141, %8145
  %8150 = fadd fast float %8149, %8134
  %8151 = fadd fast float %8142, %8146
  %8152 = fadd fast float %8151, %8135
  %8153 = fmul fast float %8148, %7324
  %8154 = fmul fast float %8150, %7324
  %8155 = fmul fast float %8152, %7324
  %8156 = fmul fast float %8153, %8153
  %8157 = fmul fast float %8154, %8154
  %8158 = fadd fast float %8156, %8157
  %8159 = fmul fast float %8155, %8155
  %8160 = fadd fast float %8158, %8159
  %8161 = call float @dx.op.unary.f32(i32 24, float %8160)  ; Sqrt(value)
  %8162 = extractvalue %dx.types.CBufRet.f32 %7051, 0
  %8163 = fsub fast float %8161, %8162
  %8164 = extractvalue %dx.types.CBufRet.f32 %7051, 2
  %8165 = fmul fast float %8163, %8164
  %8166 = call float @dx.op.unary.f32(i32 7, float %8165)  ; Saturate(value)
  %8167 = fadd fast float %8166, -5.000000e-01
  %8168 = fmul fast float %8167, 2.000000e+00
  %8169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8170 = extractvalue %dx.types.CBufRet.f32 %8169, 2
  %8171 = call float @dx.op.binary.f32(i32 36, float %8170, float %8168)  ; FMin(a,b)
  %8172 = fsub fast float -0.000000e+00, %8170
  %8173 = fcmp fast ogt float %8171, %8172
  br i1 %8173, label %8174, label %8486, !dx.controlflow.hints !170

; <label>:8174                                    ; preds = %8119
  %8175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8176 = extractvalue %dx.types.CBufRet.f32 %8175, 3
  %8177 = fcmp fast ogt float %8176, 0.000000e+00
  br i1 %8177, label %8178, label %8253, !dx.controlflow.hints !171

; <label>:8178                                    ; preds = %8174
  %8179 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8180 = extractvalue %dx.types.Dimensions %8179, 0
  %8181 = sitofp i32 %8180 to float
  %8182 = extractvalue %dx.types.Dimensions %8179, 1
  %8183 = sitofp i32 %8182 to float
  %8184 = fmul fast float %8123, %8181
  %8185 = fmul fast float %8124, %8183
  %8186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8187 = extractvalue %dx.types.CBufRet.f32 %8186, 1
  %8188 = fsub fast float -0.000000e+00, %8187
  %8189 = fptoui float %8188 to i32
  %8190 = fptoui float %8184 to i32
  %8191 = fptoui float %8185 to i32
  %8192 = and i32 %8189, 31
  %8193 = lshr i32 %8190, %8192
  %8194 = lshr i32 %8191, %8192
  %8195 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8189, i32 %8193, i32 %8194, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8196 = extractvalue %dx.types.ResRet.f32 %8195, 0
  %8197 = fcmp fast olt float %8196, -1.000000e+00
  %8198 = fcmp fast ogt float %8196, -1.000000e+00
  %8199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8200 = extractvalue %dx.types.CBufRet.f32 %8199, 1
  %8201 = select i1 %8198, float %8200, float 1.000000e+00
  %8202 = fadd fast float %8196, 1.000000e+00
  %8203 = fmul fast float %8201, %8202
  %8204 = call float @dx.op.unary.f32(i32 6, float %8203)  ; FAbs(value)
  %8205 = extractvalue %dx.types.CBufRet.f32 %8199, 3
  %8206 = fcmp fast oge float %8204, %8205
  %8207 = select i1 %8206, float 0x4197782600000000, float %8204
  %8208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8209 = extractvalue %dx.types.CBufRet.f32 %8208, 0
  %8210 = extractvalue %dx.types.CBufRet.f32 %8208, 1
  %8211 = extractvalue %dx.types.CBufRet.f32 %8208, 2
  %8212 = select i1 %8197, float %8209, float %8130
  %8213 = select i1 %8197, float %8210, float %8131
  %8214 = select i1 %8197, float %8211, float %8132
  %8215 = fmul fast float %8212, %8127
  %8216 = fmul fast float %8213, %8127
  %8217 = fmul fast float %8214, %8127
  %8218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8219 = extractvalue %dx.types.CBufRet.f32 %8218, 0
  %8220 = extractvalue %dx.types.CBufRet.f32 %8218, 1
  %8221 = extractvalue %dx.types.CBufRet.f32 %8218, 2
  %8222 = select i1 %8197, float %8219, float %8137
  %8223 = select i1 %8197, float %8220, float %8138
  %8224 = select i1 %8197, float %8221, float %8139
  %8225 = fmul fast float %8222, %8128
  %8226 = fmul fast float %8223, %8128
  %8227 = fmul fast float %8224, %8128
  %8228 = fadd fast float %8225, %8215
  %8229 = fadd fast float %8226, %8216
  %8230 = fadd fast float %8227, %8217
  %8231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8232 = extractvalue %dx.types.CBufRet.f32 %8231, 0
  %8233 = extractvalue %dx.types.CBufRet.f32 %8231, 1
  %8234 = extractvalue %dx.types.CBufRet.f32 %8231, 2
  %8235 = select i1 %8197, float %8232, float %8144
  %8236 = select i1 %8197, float %8233, float %8145
  %8237 = select i1 %8197, float %8234, float %8146
  %8238 = fadd fast float %8228, %8235
  %8239 = fadd fast float %8229, %8236
  %8240 = fadd fast float %8230, %8237
  %8241 = fmul fast float %8238, %8207
  %8242 = fmul fast float %8239, %8207
  %8243 = fmul fast float %8240, %8207
  %8244 = fmul fast float %8241, %8241
  %8245 = fmul fast float %8242, %8242
  %8246 = fadd fast float %8244, %8245
  %8247 = fmul fast float %8243, %8243
  %8248 = fadd fast float %8246, %8247
  %8249 = call float @dx.op.unary.f32(i32 24, float %8248)  ; Sqrt(value)
  %8250 = fsub fast float %8249, %8162
  %8251 = fmul fast float %8250, %8164
  %8252 = call float @dx.op.unary.f32(i32 7, float %8251)  ; Saturate(value)
  br label %8253

; <label>:8253                                    ; preds = %8178, %8174
  %8254 = phi float [ %8252, %8178 ], [ 1.000000e+00, %8174 ]
  %8255 = fmul fast float %8171, 5.000000e-01
  %8256 = fadd fast float %8255, 5.000000e-01
  %8257 = call float @dx.op.unary.f32(i32 22, float %8256)  ; Frc(value)
  %8258 = call float @dx.op.unary.f32(i32 27, float %8257)  ; Round_ni(value)
  %8259 = call float @dx.op.unary.f32(i32 22, float %8257)  ; Frc(value)
  %8260 = fmul fast float %8259, 2.000000e+00
  %8261 = fadd fast float %8260, -1.000000e+00
  %8262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8123, float %8124, float %8258, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8263 = extractvalue %dx.types.ResRet.f32 %8262, 0
  %8264 = extractvalue %dx.types.ResRet.f32 %8262, 1
  %8265 = extractvalue %dx.types.ResRet.f32 %8262, 2
  %8266 = extractvalue %dx.types.ResRet.f32 %8262, 3
  %8267 = fadd fast float %8263, -5.000000e-01
  %8268 = fadd fast float %8265, -5.000000e-01
  %8269 = fmul fast float %8267, 0xBFD5555560000000
  %8270 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8268, float %8269)  ; FMad(a,b,c)
  %8271 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8264, float 0.000000e+00)  ; FMad(a,b,c)
  %8272 = fadd fast float %8271, %8266
  %8273 = fmul fast float %8267, -7.500000e-01
  %8274 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8268, float %8273)  ; FMad(a,b,c)
  %8275 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8264, float 0.000000e+00)  ; FMad(a,b,c)
  %8276 = fadd fast float %8275, %8266
  %8277 = call float @dx.op.binary.f32(i32 35, float %8270, float -1.000000e+00)  ; FMax(a,b)
  %8278 = call float @dx.op.binary.f32(i32 35, float %8272, float -1.000000e+00)  ; FMax(a,b)
  %8279 = call float @dx.op.binary.f32(i32 35, float %8274, float -1.000000e+00)  ; FMax(a,b)
  %8280 = call float @dx.op.binary.f32(i32 35, float %8276, float -1.000000e+00)  ; FMax(a,b)
  %8281 = call float @dx.op.binary.f32(i32 36, float %8277, float 1.000000e+00)  ; FMin(a,b)
  %8282 = call float @dx.op.binary.f32(i32 36, float %8278, float 1.000000e+00)  ; FMin(a,b)
  %8283 = call float @dx.op.binary.f32(i32 36, float %8279, float 1.000000e+00)  ; FMin(a,b)
  %8284 = call float @dx.op.binary.f32(i32 36, float %8280, float 1.000000e+00)  ; FMin(a,b)
  %8285 = fcmp fast olt float %8281, 0x3FEFFF8020000000
  br i1 %8285, label %8286, label %8401, !dx.controlflow.hints !172

; <label>:8286                                    ; preds = %8253
  %8287 = extractvalue %dx.types.CBufRet.f32 %8169, 3
  %8288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8289 = extractvalue %dx.types.CBufRet.f32 %8288, 0
  %8290 = extractvalue %dx.types.CBufRet.f32 %8288, 1
  %8291 = extractvalue %dx.types.CBufRet.f32 %8288, 2
  %8292 = extractvalue %dx.types.CBufRet.f32 %8288, 3
  %8293 = fsub fast float %8289, %8281
  %8294 = fsub fast float %8290, %8282
  %8295 = fsub fast float %8291, %8283
  %8296 = fsub fast float %8292, %8284
  %8297 = fmul fast float %8293, %8287
  %8298 = fmul fast float %8294, %8287
  %8299 = fmul fast float %8295, %8287
  %8300 = fmul fast float %8296, %8287
  %8301 = fadd fast float %8297, %8281
  %8302 = fadd fast float %8298, %8282
  %8303 = fsub fast float -0.000000e+00, %8302
  %8304 = fadd fast float %8299, %8283
  %8305 = fadd fast float %8300, %8284
  %8306 = fmul fast float %8301, %8301
  %8307 = fsub fast float %8302, %8306
  %8308 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8307)  ; FMax(a,b)
  %8309 = fdiv fast float 1.000000e+00, %8308
  %8310 = fmul fast float %8302, %8301
  %8311 = fsub fast float %8304, %8310
  %8312 = fsub fast float %8261, %8301
  %8313 = fmul fast float %8261, %8261
  %8314 = fsub fast float %8313, %8302
  %8315 = fmul fast float %8312, %8309
  %8316 = fmul fast float %8315, %8311
  %8317 = fsub fast float %8314, %8316
  %8318 = fmul fast float %8302, %8302
  %8319 = fsub fast float %8305, %8318
  %8320 = fmul fast float %8311, %8311
  %8321 = fmul fast float %8320, %8309
  %8322 = fsub fast float %8319, %8321
  %8323 = fdiv fast float %8317, %8322
  %8324 = fmul fast float %8311, %8323
  %8325 = fsub fast float %8312, %8324
  %8326 = fmul fast float %8325, %8309
  %8327 = fmul fast float %8326, %8301
  %8328 = fsub fast float 1.000000e+00, %8327
  %8329 = fmul fast float %8302, %8323
  %8330 = fsub fast float %8328, %8329
  %8331 = fmul fast float %8326, %8326
  %8332 = fmul fast float %8323, 4.000000e+00
  %8333 = fmul fast float %8332, %8330
  %8334 = fsub fast float %8331, %8333
  %8335 = call float @dx.op.unary.f32(i32 24, float %8334)  ; Sqrt(value)
  %8336 = fcmp fast oge float %8326, 0.000000e+00
  %8337 = fsub fast float -0.000000e+00, %8335
  %8338 = select i1 %8336, float %8337, float %8335
  %8339 = fsub fast float %8338, %8326
  %8340 = fdiv fast float %8339, %8323
  %8341 = fdiv fast float %8330, %8339
  %8342 = fmul fast float %8340, 5.000000e-01
  %8343 = fmul fast float %8341, 2.000000e+00
  %8344 = select i1 %8336, float %8342, float %8343
  %8345 = select i1 %8336, float %8343, float %8342
  %8346 = call float @dx.op.binary.f32(i32 35, float %8344, float %8345)  ; FMax(a,b)
  %8347 = call float @dx.op.binary.f32(i32 36, float %8344, float %8345)  ; FMin(a,b)
  %8348 = fcmp fast ogt float %8261, %8347
  br i1 %8348, label %8349, label %8359

; <label>:8349                                    ; preds = %8286
  %8350 = fsub fast float %8261, %8347
  %8351 = fsub fast float %8346, %8347
  %8352 = fmul fast float %8350, %8351
  %8353 = fmul fast float %8346, %8261
  %8354 = fadd fast float %8346, %8261
  %8355 = fmul fast float %8354, %8301
  %8356 = fadd fast float %8353, %8302
  %8357 = fsub fast float %8356, %8355
  %8358 = fdiv fast float %8357, %8352
  br label %8359

; <label>:8359                                    ; preds = %8349, %8286
  %8360 = phi float [ %8358, %8349 ], [ 0.000000e+00, %8286 ]
  %8361 = fcmp fast ogt float %8261, %8346
  %8362 = fsub fast float %8261, %8346
  br i1 %8361, label %8363, label %8373

; <label>:8363                                    ; preds = %8359
  %8364 = fsub fast float %8346, %8347
  %8365 = fmul fast float %8364, %8362
  %8366 = fmul fast float %8347, %8261
  %8367 = fadd fast float %8347, %8261
  %8368 = fmul fast float %8367, %8301
  %8369 = fsub fast float %8303, %8366
  %8370 = fadd fast float %8369, %8368
  %8371 = fdiv fast float %8370, %8365
  %8372 = fadd fast float %8371, %8360
  br label %8373

; <label>:8373                                    ; preds = %8363, %8359
  %8374 = phi float [ %8372, %8363 ], [ %8360, %8359 ]
  %8375 = fsub fast float %8261, %8347
  %8376 = fmul fast float %8375, %8362
  %8377 = fmul fast float %8347, %8346
  %8378 = fadd fast float %8347, %8346
  %8379 = fmul fast float %8378, %8301
  %8380 = fadd fast float %8377, %8302
  %8381 = fsub fast float %8380, %8379
  %8382 = fdiv fast float %8381, %8376
  %8383 = call float @dx.op.unary.f32(i32 7, float %8374)  ; Saturate(value)
  %8384 = fcmp fast oeq float %7052, 0.000000e+00
  %8385 = extractvalue %dx.types.CBufRet.f32 %8169, 0
  %8386 = fcmp fast oeq float %8385, 0.000000e+00
  %8387 = or i1 %8384, %8386
  %8388 = fmul fast float %8385, 2.000000e+00
  %8389 = fadd fast float %8170, %8171
  %8390 = fdiv fast float %8389, %8388
  %8391 = call float @dx.op.unary.f32(i32 7, float %8390)  ; Saturate(value)
  %8392 = fmul fast float %8391, 2.000000e+00
  %8393 = fsub fast float 3.000000e+00, %8392
  %8394 = fmul fast float %8391, %8391
  %8395 = fmul fast float %8394, %8393
  %8396 = select i1 %8387, float 1.000000e+00, float %8395
  %8397 = fmul fast float %8382, %7052
  %8398 = fadd fast float %8383, %8397
  %8399 = call float @dx.op.unary.f32(i32 7, float %8398)  ; Saturate(value)
  %8400 = fmul fast float %8396, %8399
  br label %8401

; <label>:8401                                    ; preds = %8373, %8253
  %8402 = phi float [ %8400, %8373 ], [ 0.000000e+00, %8253 ]
  %8403 = fsub fast float 1.000000e+00, %8402
  %8404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8123, float %8124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8405 = extractvalue %dx.types.ResRet.f32 %8404, 0
  %8406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8407 = extractvalue %dx.types.CBufRet.i32 %8406, 2
  %8408 = icmp eq i32 %8407, 0
  br i1 %8408, label %8414, label %8409

; <label>:8409                                    ; preds = %8401
  %8410 = call float @dx.op.unary.f32(i32 7, float %8402)  ; Saturate(value)
  %8411 = fadd fast float %8405, -1.000000e+00
  %8412 = fmul fast float %8410, %8411
  %8413 = fadd fast float %8412, 1.000000e+00
  br label %8414

; <label>:8414                                    ; preds = %8409, %8401
  %8415 = phi float [ %8413, %8409 ], [ %8403, %8401 ]
  br i1 %8177, label %8416, label %8434

; <label>:8416                                    ; preds = %8414
  %8417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8418 = extractvalue %dx.types.CBufRet.f32 %8417, 1
  %8419 = fsub fast float %8254, %8418
  %8420 = call float @dx.op.unary.f32(i32 7, float %8419)  ; Saturate(value)
  %8421 = fsub fast float %8254, %8176
  %8422 = call float @dx.op.unary.f32(i32 7, float %8421)  ; Saturate(value)
  %8423 = fsub fast float %8420, %8422
  %8424 = fsub fast float %8256, %8422
  %8425 = fdiv fast float %8424, %8423
  %8426 = call float @dx.op.unary.f32(i32 7, float %8425)  ; Saturate(value)
  %8427 = fmul fast float %8426, 2.000000e+00
  %8428 = fsub fast float 3.000000e+00, %8427
  %8429 = fsub fast float %8405, %8415
  %8430 = fmul fast float %8426, %8426
  %8431 = fmul fast float %8430, %8429
  %8432 = fmul fast float %8431, %8428
  %8433 = fadd fast float %8432, %8415
  br label %8434

; <label>:8434                                    ; preds = %8416, %8414
  %8435 = phi float [ %8433, %8416 ], [ %8415, %8414 ]
  %8436 = call float @dx.op.binary.f32(i32 35, float %8405, float %8435)  ; FMax(a,b)
  %8437 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8438 = extractvalue %dx.types.CBufRet.i32 %8437, 2
  %8439 = and i32 %8438, 1
  %8440 = icmp eq i32 %8439, 0
  %8441 = fcmp fast une float %8436, 1.000000e+00
  %8442 = and i1 %8441, %8440
  br i1 %8442, label %8443, label %8462

; <label>:8443                                    ; preds = %8434
  %8444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8123, float %8124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8445 = extractvalue %dx.types.ResRet.f32 %8444, 0
  %8446 = extractvalue %dx.types.ResRet.f32 %8444, 1
  %8447 = extractvalue %dx.types.ResRet.f32 %8444, 2
  %8448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8449 = extractvalue %dx.types.CBufRet.f32 %8448, 1
  %8450 = fmul fast float %8449, %8445
  %8451 = fmul fast float %8449, %8446
  %8452 = fmul fast float %8449, %8447
  %8453 = fcmp fast ogt float %8405, 0x3FEFFF2E40000000
  %8454 = fsub fast float 1.000000e+00, %8436
  %8455 = fsub fast float 1.000000e+00, %8405
  %8456 = fdiv fast float %8454, %8455
  %8457 = call float @dx.op.unary.f32(i32 7, float %8456)  ; Saturate(value)
  %8458 = select i1 %8453, float 0.000000e+00, float %8457
  %8459 = fmul fast float %8450, %8458
  %8460 = fmul fast float %8451, %8458
  %8461 = fmul fast float %8452, %8458
  br label %8462

; <label>:8462                                    ; preds = %8443, %8434
  %8463 = phi float [ 0.000000e+00, %8434 ], [ %8459, %8443 ]
  %8464 = phi float [ 0.000000e+00, %8434 ], [ %8460, %8443 ]
  %8465 = phi float [ 0.000000e+00, %8434 ], [ %8461, %8443 ]
  %8466 = fmul fast float %8463, %7040
  %8467 = fmul fast float %8464, %7040
  %8468 = fmul fast float %8465, %7040
  %8469 = fmul fast float %8436, %8098
  %8470 = call float @dx.op.dot3.f32(i32 55, float %8436, float %8436, float %8436, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8471 = call float @dx.op.dot3.f32(i32 55, float %8466, float %8467, float %8468, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8472 = select i1 %282, float %8470, float %8436
  %8473 = select i1 %282, float 1.000000e+00, float %8436
  %8474 = select i1 %282, float %8471, float %8466
  %8475 = select i1 %282, float 0.000000e+00, float %8467
  %8476 = select i1 %282, float 0.000000e+00, float %8468
  %8477 = fmul fast float %8472, %8110
  %8478 = fmul fast float %8472, %8111
  %8479 = fmul fast float %8473, %8112
  %8480 = fadd fast float %8477, %8474
  %8481 = fadd fast float %8478, %8475
  %8482 = fadd fast float %8476, %8479
  %8483 = fmul fast float %8472, %8113
  %8484 = fmul fast float %8472, %8114
  %8485 = fmul fast float %8473, %8115
  br label %8486

; <label>:8486                                    ; preds = %8462, %8119, %8088, %7320
  %8487 = phi float [ %7325, %7320 ], [ %8110, %8088 ], [ %8480, %8462 ], [ %8110, %8119 ]
  %8488 = phi float [ %7326, %7320 ], [ %8111, %8088 ], [ %8481, %8462 ], [ %8111, %8119 ]
  %8489 = phi float [ %7327, %7320 ], [ %8112, %8088 ], [ %8482, %8462 ], [ %8112, %8119 ]
  %8490 = phi float [ %7328, %7320 ], [ %8113, %8088 ], [ %8483, %8462 ], [ %8113, %8119 ]
  %8491 = phi float [ %7329, %7320 ], [ %8114, %8088 ], [ %8484, %8462 ], [ %8114, %8119 ]
  %8492 = phi float [ %7330, %7320 ], [ %8115, %8088 ], [ %8485, %8462 ], [ %8115, %8119 ]
  %8493 = phi float [ %7331, %7320 ], [ %8098, %8088 ], [ %8469, %8462 ], [ %8098, %8119 ]
  %8494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8495 = extractvalue %dx.types.CBufRet.f32 %8494, 2
  %8496 = extractvalue %dx.types.CBufRet.f32 %8494, 3
  %8497 = fmul fast float %8495, %104
  %8498 = fmul fast float %8496, %105
  %8499 = call float @dx.op.unary.f32(i32 7, float %8497)  ; Saturate(value)
  %8500 = call float @dx.op.unary.f32(i32 7, float %8498)  ; Saturate(value)
  %8501 = select i1 %7062, i32 2, i32 0
  %8502 = or i32 %8501, 1
  %8503 = uitofp i32 %8502 to float
  %8504 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8499, float %8500, float %8503, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8505 = extractvalue %dx.types.ResRet.f32 %8504, 0
  %8506 = extractvalue %dx.types.ResRet.f32 %8504, 1
  %8507 = extractvalue %dx.types.ResRet.f32 %8504, 2
  %8508 = extractvalue %dx.types.ResRet.f32 %8504, 3
  %8509 = add nuw nsw i32 %8501, 2
  %8510 = uitofp i32 %8509 to float
  %8511 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8499, float %8500, float %8510, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8512 = extractvalue %dx.types.ResRet.f32 %8511, 0
  %8513 = extractvalue %dx.types.ResRet.f32 %8511, 1
  %8514 = extractvalue %dx.types.ResRet.f32 %8511, 2
  %8515 = extractvalue %dx.types.ResRet.f32 %8511, 3
  %8516 = call float @dx.op.binary.f32(i32 35, float %8506, float %8507)  ; FMax(a,b)
  %8517 = call float @dx.op.binary.f32(i32 35, float %8505, float %8516)  ; FMax(a,b)
  %8518 = call float @dx.op.binary.f32(i32 35, float %8517, float %8508)  ; FMax(a,b)
  %8519 = call float @dx.op.binary.f32(i32 36, float %8513, float %8514)  ; FMin(a,b)
  %8520 = call float @dx.op.binary.f32(i32 36, float %8512, float %8519)  ; FMin(a,b)
  %8521 = call float @dx.op.binary.f32(i32 36, float %8520, float %8515)  ; FMin(a,b)
  %8522 = fmul fast float %8518, 2.550000e+02
  %8523 = fadd fast float %8522, 0x3F70101020000000
  %8524 = fptoui float %8523 to i32
  %8525 = fmul fast float %8521, 2.550000e+02
  %8526 = fadd fast float %8525, 0x3F70101020000000
  %8527 = fptoui float %8526 to i32
  %8528 = icmp ult i32 %8524, %8527
  br i1 %8528, label %8529, label %8698

; <label>:8529                                    ; preds = %8486
  %8530 = fcmp fast ogt float %94, 9.843750e-01
  %8531 = fadd fast float %7324, -4.000000e+00
  %8532 = select i1 %8530, float -4.000000e+00, float %8531
  %8533 = call float @dx.op.binary.f32(i32 35, float %8532, float 0.000000e+00)  ; FMax(a,b)
  %8534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8535 = extractvalue %dx.types.CBufRet.f32 %8534, 0
  %8536 = fadd fast float %8535, %8533
  %8537 = extractvalue %dx.types.CBufRet.f32 %8534, 2
  %8538 = fmul fast float %8536, %8537
  %8539 = call float @dx.op.unary.f32(i32 23, float %8538)  ; Log(value)
  %8540 = extractvalue %dx.types.CBufRet.f32 %8534, 3
  %8541 = fmul fast float %8540, %8539
  %8542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8543 = extractvalue %dx.types.CBufRet.f32 %8542, 2
  %8544 = fmul fast float %8541, %8543
  %8545 = call float @dx.op.unary.f32(i32 7, float %8544)  ; Saturate(value)
  %8546 = uitofp i32 %8524 to float
  %8547 = uitofp i32 %8527 to float
  %8548 = fadd fast float %8546, 5.000000e-01
  %8549 = fadd fast float %8547, 5.000000e-01
  %8550 = fmul fast float %8543, %8548
  %8551 = fmul fast float %8543, %8549
  %8552 = fadd fast float %8550, 0x3F0FFB4800000000
  %8553 = fadd fast float %8551, 0xBF0FFB4800000000
  %8554 = call float @dx.op.binary.f32(i32 35, float %8545, float %8552)  ; FMax(a,b)
  %8555 = call float @dx.op.binary.f32(i32 36, float %8554, float %8553)  ; FMin(a,b)
  %8556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8557 = extractvalue %dx.types.CBufRet.f32 %8556, 1
  %8558 = extractvalue %dx.types.CBufRet.f32 %8556, 2
  %8559 = extractvalue %dx.types.CBufRet.f32 %8556, 0
  %8560 = select i1 %7062, float %8559, float 0.000000e+00
  %8561 = fmul fast float %8557, %8555
  %8562 = fadd fast float %8560, %8561
  %8563 = fadd fast float %8560, %8558
  %8564 = fsub fast float %8557, %8558
  %8565 = fadd fast float %8564, %8560
  %8566 = call float @dx.op.binary.f32(i32 35, float %8562, float %8563)  ; FMax(a,b)
  %8567 = call float @dx.op.binary.f32(i32 36, float %8566, float %8565)  ; FMin(a,b)
  %8568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8499, float %8500, float %8567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8569 = extractvalue %dx.types.ResRet.f32 %8568, 0
  %8570 = extractvalue %dx.types.ResRet.f32 %8568, 1
  %8571 = extractvalue %dx.types.ResRet.f32 %8568, 2
  %8572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8573 = extractvalue %dx.types.CBufRet.i32 %8572, 0
  %8574 = extractvalue %dx.types.CBufRet.i32 %8572, 1
  %8575 = uitofp i32 %8573 to float
  %8576 = uitofp i32 %8574 to float
  %8577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8578 = extractvalue %dx.types.CBufRet.f32 %8577, 0
  %8579 = extractvalue %dx.types.CBufRet.f32 %8577, 1
  %8580 = fmul fast float %8575, %8499
  %8581 = fmul fast float %8576, %8500
  %8582 = fadd fast float %8580, -5.000000e-01
  %8583 = fadd fast float %8581, -5.000000e-01
  %8584 = call float @dx.op.unary.f32(i32 22, float %8582)  ; Frc(value)
  %8585 = call float @dx.op.unary.f32(i32 22, float %8583)  ; Frc(value)
  %8586 = fmul fast float %8584, %8584
  %8587 = fmul fast float %8586, %8584
  %8588 = fsub fast float 3.000000e+00, %8584
  %8589 = fmul fast float %8586, %8588
  %8590 = fmul fast float %8584, 3.000000e+00
  %8591 = fmul fast float %8587, 3.000000e+00
  %8592 = fmul fast float %8586, 6.000000e+00
  %8593 = fsub fast float %8591, %8592
  %8594 = fadd fast float %8593, 4.000000e+00
  %8595 = fmul fast float %8594, 0x3FC5555560000000
  %8596 = fmul fast float %8587, -3.000000e+00
  %8597 = fadd fast float %8586, %8584
  %8598 = fmul fast float %8597, 3.000000e+00
  %8599 = fadd fast float %8596, 1.000000e+00
  %8600 = fadd fast float %8599, %8598
  %8601 = fmul fast float %8587, 0x3FC5555560000000
  %8602 = fmul fast float %8585, %8585
  %8603 = fmul fast float %8602, %8585
  %8604 = fsub fast float 3.000000e+00, %8585
  %8605 = fmul fast float %8602, %8604
  %8606 = fmul fast float %8585, 3.000000e+00
  %8607 = fmul fast float %8603, 3.000000e+00
  %8608 = fmul fast float %8602, 6.000000e+00
  %8609 = fsub fast float %8607, %8608
  %8610 = fadd fast float %8609, 4.000000e+00
  %8611 = fmul fast float %8610, 0x3FC5555560000000
  %8612 = fmul fast float %8603, -3.000000e+00
  %8613 = fadd fast float %8602, %8585
  %8614 = fmul fast float %8613, 3.000000e+00
  %8615 = fadd fast float %8612, 1.000000e+00
  %8616 = fadd fast float %8615, %8614
  %8617 = fmul fast float %8603, 0x3FC5555560000000
  %8618 = fadd fast float %8584, 1.000000e+00
  %8619 = fsub fast float 1.000000e+00, %8590
  %8620 = fadd fast float %8619, %8589
  %8621 = fadd fast float %8620, %8594
  %8622 = fmul fast float %8621, 0x3FC5555560000000
  %8623 = fdiv fast float %8595, %8622
  %8624 = fsub fast float %8618, %8623
  %8625 = fsub fast float 1.000000e+00, %8584
  %8626 = fadd fast float %8600, %8587
  %8627 = fmul fast float %8626, 0x3FC5555560000000
  %8628 = fdiv fast float %8601, %8627
  %8629 = fadd fast float %8625, %8628
  %8630 = fadd fast float %8585, 1.000000e+00
  %8631 = fsub fast float 1.000000e+00, %8606
  %8632 = fadd fast float %8631, %8605
  %8633 = fadd fast float %8632, %8610
  %8634 = fmul fast float %8633, 0x3FC5555560000000
  %8635 = fdiv fast float %8611, %8634
  %8636 = fsub fast float %8630, %8635
  %8637 = fsub fast float 1.000000e+00, %8585
  %8638 = fadd fast float %8616, %8603
  %8639 = fmul fast float %8638, 0x3FC5555560000000
  %8640 = fdiv fast float %8617, %8639
  %8641 = fadd fast float %8640, %8637
  %8642 = fmul fast float %8624, %8578
  %8643 = fsub fast float %8499, %8642
  %8644 = fmul fast float %8629, %8578
  %8645 = fadd fast float %8644, %8499
  %8646 = fmul fast float %8641, %8579
  %8647 = fadd fast float %8646, %8500
  %8648 = fmul fast float %8636, %8579
  %8649 = fsub fast float %8500, %8648
  %8650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8643, float %8649, float %8567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8651 = extractvalue %dx.types.ResRet.f32 %8650, 0
  %8652 = extractvalue %dx.types.ResRet.f32 %8650, 1
  %8653 = extractvalue %dx.types.ResRet.f32 %8650, 2
  %8654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8645, float %8649, float %8567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8655 = extractvalue %dx.types.ResRet.f32 %8654, 0
  %8656 = extractvalue %dx.types.ResRet.f32 %8654, 1
  %8657 = extractvalue %dx.types.ResRet.f32 %8654, 2
  %8658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8643, float %8647, float %8567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8659 = extractvalue %dx.types.ResRet.f32 %8658, 0
  %8660 = extractvalue %dx.types.ResRet.f32 %8658, 1
  %8661 = extractvalue %dx.types.ResRet.f32 %8658, 2
  %8662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8645, float %8647, float %8567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8663 = extractvalue %dx.types.ResRet.f32 %8662, 0
  %8664 = extractvalue %dx.types.ResRet.f32 %8662, 1
  %8665 = extractvalue %dx.types.ResRet.f32 %8662, 2
  %8666 = fsub fast float %8659, %8651
  %8667 = fsub fast float %8660, %8652
  %8668 = fsub fast float %8661, %8653
  %8669 = fmul fast float %8666, %8639
  %8670 = fmul fast float %8667, %8639
  %8671 = fmul fast float %8668, %8639
  %8672 = fadd fast float %8669, %8651
  %8673 = fadd fast float %8670, %8652
  %8674 = fadd fast float %8671, %8653
  %8675 = fsub fast float %8663, %8655
  %8676 = fsub fast float %8664, %8656
  %8677 = fsub fast float %8665, %8657
  %8678 = fmul fast float %8675, %8639
  %8679 = fmul fast float %8676, %8639
  %8680 = fmul fast float %8677, %8639
  %8681 = fsub fast float %8655, %8672
  %8682 = fadd fast float %8681, %8678
  %8683 = fsub fast float %8656, %8673
  %8684 = fadd fast float %8683, %8679
  %8685 = fsub fast float %8657, %8674
  %8686 = fadd fast float %8685, %8680
  %8687 = fmul fast float %8682, %8627
  %8688 = fmul fast float %8684, %8627
  %8689 = fmul fast float %8686, %8627
  %8690 = fadd fast float %8687, %8672
  %8691 = fadd fast float %8688, %8673
  %8692 = fadd fast float %8689, %8674
  %8693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8694 = extractvalue %dx.types.CBufRet.f32 %8693, 1
  %8695 = fmul fast float %8690, %8694
  %8696 = fmul fast float %8691, %8694
  %8697 = fmul fast float %8692, %8694
  br label %8698

; <label>:8698                                    ; preds = %8529, %8486
  %8699 = phi float [ %8569, %8529 ], [ 1.000000e+00, %8486 ]
  %8700 = phi float [ %8570, %8529 ], [ 1.000000e+00, %8486 ]
  %8701 = phi float [ %8571, %8529 ], [ 1.000000e+00, %8486 ]
  %8702 = phi float [ %8695, %8529 ], [ 0.000000e+00, %8486 ]
  %8703 = phi float [ %8696, %8529 ], [ 0.000000e+00, %8486 ]
  %8704 = phi float [ %8697, %8529 ], [ 0.000000e+00, %8486 ]
  %8705 = fmul fast float %8702, %7040
  %8706 = fmul fast float %8703, %7040
  %8707 = fmul fast float %8704, %7040
  %8708 = fmul fast float %8699, %8493
  %8709 = call float @dx.op.dot3.f32(i32 55, float %8699, float %8700, float %8701, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8710 = call float @dx.op.dot3.f32(i32 55, float %8705, float %8706, float %8707, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8711 = select i1 %282, float %8709, float %8699
  %8712 = select i1 %282, float %8709, float %8700
  %8713 = select i1 %282, float 1.000000e+00, float %8701
  %8714 = select i1 %282, float %8710, float %8705
  %8715 = select i1 %282, float 0.000000e+00, float %8706
  %8716 = select i1 %282, float 0.000000e+00, float %8707
  %8717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8718 = extractvalue %dx.types.CBufRet.i32 %8717, 3
  %8719 = and i32 %8718, 3
  %8720 = icmp ne i32 %8719, 0
  %8721 = and i32 %8718, 4
  %8722 = icmp ne i32 %8721, 0
  %8723 = and i1 %8720, %8722
  %8724 = and i1 %282, %8723
  br i1 %8724, label %8725, label %8731

; <label>:8725                                    ; preds = %8698
  %8726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8727 = extractvalue %dx.types.CBufRet.f32 %8726, 1
  %8728 = fadd fast float %8708, -1.000000e+00
  %8729 = fmul fast float %8727, %8728
  %8730 = fadd fast float %8729, 1.000000e+00
  br label %8731

; <label>:8731                                    ; preds = %8725, %8698
  %8732 = phi float [ %8730, %8725 ], [ %8708, %8698 ]
  %8733 = fadd fast float %8490, %8487
  %8734 = fmul fast float %8711, %8733
  %8735 = fadd fast float %8734, %8714
  %8736 = fadd fast float %8491, %8488
  %8737 = fmul fast float %8712, %8736
  %8738 = fadd fast float %8737, %8715
  %8739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8740 = extractvalue %dx.types.CBufRet.f32 %8739, 0
  br i1 %282, label %8741, label %8765

; <label>:8741                                    ; preds = %8731
  %8742 = fadd fast float %8735, %8738
  %8743 = fmul fast float %8740, %8742
  %8744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8745 = extractvalue %dx.types.CBufRet.f32 %8744, 3
  %8746 = extractvalue %dx.types.CBufRet.f32 %7044, 1
  %8747 = fsub fast float %7049, %7043
  %8748 = fadd fast float %8747, %7050
  %8749 = fsub fast float %8748, %8746
  %8750 = extractvalue %dx.types.CBufRet.f32 %7044, 2
  %8751 = fmul fast float %8749, %8750
  %8752 = call float @dx.op.unary.f32(i32 7, float %8751)  ; Saturate(value)
  %8753 = fsub fast float %8752, %8745
  %8754 = fmul fast float %8753, %8732
  %8755 = fadd fast float %8754, %8745
  %8756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8757 = extractvalue %dx.types.CBufRet.f32 %8756, 0
  %8758 = fsub fast float %8755, %8757
  %8759 = fmul fast float %8758, 1.000000e+01
  %8760 = call float @dx.op.unary.f32(i32 7, float %8759)  ; Saturate(value)
  %8761 = fsub fast float %3887, %7040
  %8762 = fmul fast float %8760, %8761
  %8763 = fadd fast float %8762, %7040
  %8764 = fmul fast float %8763, %8755
  br label %8789

; <label>:8765                                    ; preds = %8731
  %8766 = fadd fast float %8492, %8489
  %8767 = fmul fast float %8713, %8766
  %8768 = fadd fast float %8767, %8716
  %8769 = fmul fast float %8740, %8735
  %8770 = fmul fast float %8740, %8738
  %8771 = fmul fast float %8740, %8768
  %8772 = call float @dx.op.binary.f32(i32 35, float %8770, float %8771)  ; FMax(a,b)
  %8773 = call float @dx.op.binary.f32(i32 35, float %8769, float %8772)  ; FMax(a,b)
  %8774 = call float @dx.op.binary.f32(i32 35, float %8773, float %7040)  ; FMax(a,b)
  %8775 = fcmp fast ugt float %8774, 0x3F10000000000000
  br i1 %8775, label %8777, label %8776

; <label>:8776                                    ; preds = %8765
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8777

; <label>:8777                                    ; preds = %8776, %8765
  %8778 = add i32 %54, 356
  %8779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8778, i32 undef)  ; BufferLoad(srv,index,wot)
  %8780 = extractvalue %dx.types.ResRet.i32 %8779, 0
  %8781 = and i32 %8780, 32
  %8782 = icmp eq i32 %8781, 0
  br i1 %8782, label %8789, label %8783

; <label>:8783                                    ; preds = %8777
  %8784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8785 = extractvalue %dx.types.CBufRet.f32 %8784, 0
  %8786 = fmul fast float %8785, 0x3FE99999A0000000
  %8787 = fadd fast float %8785, %8769
  %8788 = fadd fast float %8786, %8771
  br label %8789

; <label>:8789                                    ; preds = %8783, %8777, %8741
  %8790 = phi float [ %8743, %8741 ], [ %8787, %8783 ], [ %8769, %8777 ]
  %8791 = phi float [ %8764, %8741 ], [ %8770, %8783 ], [ %8770, %8777 ]
  %8792 = phi float [ %8763, %8741 ], [ %8788, %8783 ], [ %8771, %8777 ]
  %8793 = phi float [ %8763, %8741 ], [ %7040, %8783 ], [ %7040, %8777 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8794 = call float @dx.op.binary.f32(i32 36, float %8790, float 3.225500e+04)  ; FMin(a,b)
  %8795 = call float @dx.op.binary.f32(i32 36, float %8791, float 3.225500e+04)  ; FMin(a,b)
  %8796 = call float @dx.op.binary.f32(i32 36, float %8792, float 3.225500e+04)  ; FMin(a,b)
  %8797 = call float @dx.op.binary.f32(i32 36, float %8793, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8794)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8795)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8796)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8797)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

