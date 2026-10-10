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
; shader hash: bd071f3a2cdbc8a624d1c2c5bb81a493
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
  %430 = add i32 %54, 348
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
  %444 = add i32 %54, 504
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
  br i1 %500, label %1119, label %501

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
  %885 = add i32 %54, 356
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
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = and i32 %1023, 1024
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1056, label %1026

; <label>:1026                                    ; preds = %1018
  %1027 = add i32 %54, 152
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = and i32 %1029, 255
  %1031 = uitofp i32 %1030 to float
  %1032 = fmul fast float %1031, 0x3F70101020000000
  %1033 = lshr i32 %1029, 8
  %1034 = and i32 %1033, 255
  %1035 = uitofp i32 %1034 to float
  %1036 = fmul fast float %1035, 0x3F70101020000000
  %1037 = lshr i32 %1029, 16
  %1038 = and i32 %1037, 255
  %1039 = uitofp i32 %1038 to float
  %1040 = fmul fast float %1039, 0x3F70101020000000
  %1041 = fmul fast float %1032, %1032
  %1042 = fmul fast float %1036, %1036
  %1043 = fmul fast float %1040, %1040
  %1044 = add i32 %54, 472
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = add i32 %1046, 0
  %1048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1047, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1049 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1048, %dx.types.Handle %101, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = fmul fast float %1041, %1050
  %1054 = fmul fast float %1042, %1051
  %1055 = fmul fast float %1043, %1052
  br label %1056

; <label>:1056                                    ; preds = %1026, %1018
  %1057 = phi float [ %1053, %1026 ], [ 0.000000e+00, %1018 ]
  %1058 = phi float [ %1054, %1026 ], [ 0.000000e+00, %1018 ]
  %1059 = phi float [ %1055, %1026 ], [ 0.000000e+00, %1018 ]
  %1060 = fcmp fast ogt float %1057, 0.000000e+00
  %1061 = fcmp fast ogt float %1058, 0.000000e+00
  %1062 = fcmp fast ogt float %1059, 0.000000e+00
  %1063 = call float @dx.op.unary.f32(i32 23, float %1057)  ; Log(value)
  %1064 = call float @dx.op.unary.f32(i32 23, float %1058)  ; Log(value)
  %1065 = call float @dx.op.unary.f32(i32 23, float %1059)  ; Log(value)
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = lshr i32 %1067, 7
  %1069 = and i32 %1068, 32752
  %1070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1069)  ; LegacyF16ToF32(value)
  %1071 = fmul fast float %1063, 0xBFE62E4300000000
  %1072 = fmul fast float %1071, %1070
  %1073 = fmul fast float %1064, 0xBFE62E4300000000
  %1074 = fmul fast float %1073, %1070
  %1075 = fmul fast float %1065, 0xBFE62E4300000000
  %1076 = fmul fast float %1075, %1070
  %1077 = select i1 %1060, float %1072, float 1.270000e+02
  %1078 = select i1 %1061, float %1074, float 1.270000e+02
  %1079 = select i1 %1062, float %1076, float 1.270000e+02
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = and i32 %1081, 10240
  %1083 = icmp eq i32 %1082, 0
  br i1 %1083, label %1104, label %1084

; <label>:1084                                    ; preds = %1056
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = and i32 %1086, 2048
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1104, label %1089

; <label>:1089                                    ; preds = %1084
  %1090 = add i32 %54, 488
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = add i32 %1092, 0
  %1094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1093, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1095 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1094, %dx.types.Handle %101, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1096 = extractvalue %dx.types.ResRet.f32 %1095, 3
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = shl i32 %1098, 4
  %1100 = and i32 %1099, 32752
  %1101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1100)  ; LegacyF16ToF32(value)
  %1102 = fmul fast float %1101, %1096
  %1103 = call float @dx.op.binary.f32(i32 35, float %1102, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1104

; <label>:1104                                    ; preds = %1089, %1084, %1056
  %1105 = phi float [ %1103, %1089 ], [ 0x3F70101020000000, %1084 ], [ 0x3F70101020000000, %1056 ]
  %1106 = add i32 %54, 96
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 255
  %1110 = uitofp i32 %1109 to float
  %1111 = lshr i32 %1108, 8
  %1112 = and i32 %1111, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = call float @dx.op.dot3.f32(i32 55, float %891, float %892, float %893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1115 = fmul fast float %1113, %1114
  %1116 = fadd fast float %1115, %1110
  %1117 = fmul fast float %1116, 0x3F70101020000000
  %1118 = call float @dx.op.unary.f32(i32 7, float %1117)  ; Saturate(value)
  br label %1119

; <label>:1119                                    ; preds = %1104, %486
  %1120 = phi float [ 0.000000e+00, %486 ], [ %972, %1104 ]
  %1121 = phi float [ 0.000000e+00, %486 ], [ %973, %1104 ]
  %1122 = phi float [ 0.000000e+00, %486 ], [ %891, %1104 ]
  %1123 = phi float [ 0.000000e+00, %486 ], [ %892, %1104 ]
  %1124 = phi float [ 0.000000e+00, %486 ], [ %893, %1104 ]
  %1125 = phi float [ 0.000000e+00, %486 ], [ %1019, %1104 ]
  %1126 = phi float [ 0.000000e+00, %486 ], [ %1020, %1104 ]
  %1127 = phi float [ 0.000000e+00, %486 ], [ %1021, %1104 ]
  %1128 = phi float [ 0.000000e+00, %486 ], [ %1077, %1104 ]
  %1129 = phi float [ 0.000000e+00, %486 ], [ %1078, %1104 ]
  %1130 = phi float [ 0.000000e+00, %486 ], [ %1079, %1104 ]
  %1131 = phi float [ 0.000000e+00, %486 ], [ %877, %1104 ]
  %1132 = phi float [ 0.000000e+00, %486 ], [ %673, %1104 ]
  %1133 = phi float [ 0.000000e+00, %486 ], [ %971, %1104 ]
  %1134 = phi float [ 0.000000e+00, %486 ], [ %974, %1104 ]
  %1135 = phi float [ 0.000000e+00, %486 ], [ %1105, %1104 ]
  %1136 = phi float [ 0.000000e+00, %486 ], [ %1118, %1104 ]
  br i1 %434, label %2008, label %1137

; <label>:1137                                    ; preds = %1119
  %1138 = icmp ult i32 %492, 2
  %1139 = add i32 %54, 40
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = add i32 %54, 44
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = or i32 %1144, %1141
  %1146 = icmp eq i32 %1145, 0
  br i1 %1146, label %2008, label %1147

; <label>:1147                                    ; preds = %1137
  %1148 = and i32 %1141, 262144
  %1149 = icmp ne i32 %1148, 0
  %1150 = select i1 %1149, float %59, float 1.000000e+00
  %1151 = select i1 %1149, float %60, float 0.000000e+00
  %1152 = select i1 %1149, float %61, float 0.000000e+00
  %1153 = select i1 %1149, float %62, float 1.000000e+00
  %1154 = select i1 %1149, float %63, float %86
  %1155 = select i1 %1149, float %64, float %87
  %1156 = add i32 %54, 300
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = lshr i32 %1158, 16
  %1160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1159)  ; LegacyF16ToF32(value)
  %1161 = fmul fast float %1160, 0x3F50624DE0000000
  %1162 = add i32 %54, 104
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = lshr i32 %1164, 16
  %1166 = and i32 %1165, 255
  %1167 = lshr i32 %1164, 24
  %1168 = add i32 %54, 308
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = and i32 %1170, 65535
  %1172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1171)  ; LegacyF16ToF32(value)
  %1173 = lshr i32 %1170, 16
  %1174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1173)  ; LegacyF16ToF32(value)
  %1175 = add i32 %54, 48
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = lshr i32 %1177, 22
  %1179 = shl nuw nsw i32 %1178, 5
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = shl i32 %1177, 4
  %1182 = and i32 %1181, 32752
  %1183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1182)  ; LegacyF16ToF32(value)
  %1184 = lshr i32 %1177, 7
  %1185 = and i32 %1184, 32752
  %1186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1185)  ; LegacyF16ToF32(value)
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 3
  %1189 = fmul fast float %1188, 1.000000e+03
  %1190 = fmul fast float %344, %1189
  %1191 = call float @dx.op.unary.f32(i32 22, float %1190)  ; Frc(value)
  %1192 = fadd fast float %1191, %334
  %1193 = fmul fast float %345, %1189
  %1194 = call float @dx.op.unary.f32(i32 22, float %1193)  ; Frc(value)
  %1195 = fadd fast float %1194, %336
  %1196 = fmul fast float %1161, %1189
  %1197 = call float @dx.op.unary.f32(i32 22, float %1196)  ; Frc(value)
  %1198 = fmul fast float %1197, 0x401921FB60000000
  %1199 = fadd fast float %1198, %1180
  %1200 = call float @dx.op.unary.f32(i32 13, float %1199)  ; Sin(value)
  %1201 = call float @dx.op.unary.f32(i32 12, float %1199)  ; Cos(value)
  %1202 = fsub fast float -0.000000e+00, %1200
  %1203 = fadd fast float %1154, -5.000000e-01
  %1204 = fadd fast float %1155, -5.000000e-01
  %1205 = fmul fast float %1172, %1203
  %1206 = fmul fast float %1174, %1204
  %1207 = fadd fast float %1205, 5.000000e-01
  %1208 = fadd fast float %1206, 5.000000e-01
  %1209 = fmul fast float %1183, %1207
  %1210 = fmul fast float %1186, %1208
  %1211 = fmul fast float %1201, %1209
  %1212 = call float @dx.op.tertiary.f32(i32 46, float %1202, float %1210, float %1211)  ; FMad(a,b,c)
  %1213 = fmul fast float %1200, %1209
  %1214 = call float @dx.op.tertiary.f32(i32 46, float %1201, float %1210, float %1213)  ; FMad(a,b,c)
  %1215 = fadd fast float %1192, %1212
  %1216 = fadd fast float %1195, %1214
  %1217 = icmp ugt i32 %1166, 1
  %1218 = icmp ugt i32 %1164, 33554431
  %1219 = or i1 %1218, %1217
  br i1 %1219, label %1220, label %1245

; <label>:1220                                    ; preds = %1147
  %1221 = add i32 %54, 244
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = lshr i32 %1223, 16
  %1225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1224)  ; LegacyF16ToF32(value)
  %1226 = fmul fast float %1188, %1225
  %1227 = call float @dx.op.unary.f32(i32 22, float %1226)  ; Frc(value)
  %1228 = mul nuw nsw i32 %1166, %1167
  %1229 = uitofp i32 %1228 to float
  %1230 = fmul fast float %1227, %1229
  %1231 = call float @dx.op.unary.f32(i32 27, float %1230)  ; Round_ni(value)
  %1232 = fptoui float %1231 to i32
  %1233 = urem i32 %1232, %1166
  %1234 = udiv i32 %1232, %1167
  %1235 = call float @dx.op.unary.f32(i32 22, float %1215)  ; Frc(value)
  %1236 = call float @dx.op.unary.f32(i32 22, float %1216)  ; Frc(value)
  %1237 = uitofp i32 %1233 to float
  %1238 = uitofp i32 %1234 to float
  %1239 = fadd fast float %1235, %1237
  %1240 = fadd fast float %1236, %1238
  %1241 = uitofp i32 %1166 to float
  %1242 = uitofp i32 %1167 to float
  %1243 = fdiv fast float %1239, %1241
  %1244 = fdiv fast float %1240, %1242
  br label %1245

; <label>:1245                                    ; preds = %1220, %1147
  %1246 = phi float [ %1243, %1220 ], [ %1215, %1147 ]
  %1247 = phi float [ %1244, %1220 ], [ %1216, %1147 ]
  %1248 = and i32 %1141, 256
  %1249 = icmp eq i32 %1248, 0
  br i1 %1249, label %1296, label %1250

; <label>:1250                                    ; preds = %1245
  %1251 = add i32 %54, 444
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = add i32 %1253, 0
  %1255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1255, %dx.types.Handle %101, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = add i32 %54, 116
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = shl i32 %1260, 4
  %1262 = and i32 %1261, 32752
  %1263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1262)  ; LegacyF16ToF32(value)
  %1264 = lshr i32 %1260, 7
  %1265 = and i32 %1264, 32752
  %1266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1265)  ; LegacyF16ToF32(value)
  %1267 = fsub fast float 1.000000e+00, %489
  %1268 = call float @dx.op.binary.f32(i32 35, float %1267, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1269 = bitcast float %489 to i32
  %1270 = sitofp i32 %1269 to float
  %1271 = fadd fast float %1270, 0xC1CFBF8940000000
  %1272 = fmul fast float %1266, %1271
  %1273 = fadd fast float %1272, 0x41CFBF8940000000
  %1274 = fptosi float %1273 to i32
  %1275 = bitcast i32 %1274 to float
  %1276 = bitcast float %1268 to i32
  %1277 = sitofp i32 %1276 to float
  %1278 = fadd fast float %1277, 0xC1CFBF8940000000
  %1279 = fmul fast float %1278, %1266
  %1280 = fadd fast float %1279, 0x41CFBF8940000000
  %1281 = fptosi float %1280 to i32
  %1282 = bitcast i32 %1281 to float
  %1283 = fmul fast float %1275, %1263
  %1284 = fmul fast float %1282, %1263
  %1285 = fsub fast float %1268, %1283
  %1286 = fadd fast float %1284, %1268
  %1287 = call float @dx.op.unary.f32(i32 7, float %1285)  ; Saturate(value)
  %1288 = call float @dx.op.unary.f32(i32 7, float %1286)  ; Saturate(value)
  %1289 = fsub fast float %1257, %1287
  %1290 = fsub fast float %1288, %1287
  %1291 = bitcast float %1290 to i32
  %1292 = sub nsw i32 2129859010, %1291
  %1293 = bitcast i32 %1292 to float
  %1294 = fmul fast float %1293, %1289
  %1295 = call float @dx.op.unary.f32(i32 7, float %1294)  ; Saturate(value)
  br label %1296

; <label>:1296                                    ; preds = %1250, %1245
  %1297 = phi float [ %1295, %1250 ], [ %489, %1245 ]
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = and i32 %1299, 128
  %1301 = icmp eq i32 %1300, 0
  br i1 %1301, label %1318, label %1302

; <label>:1302                                    ; preds = %1296
  %1303 = add i32 %54, 428
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = add i32 %1305, 0
  %1307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1306, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1308 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1307, %dx.types.Handle %101, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1309 = extractvalue %dx.types.ResRet.f32 %1308, 0
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = and i32 %1311, 524288
  %1313 = icmp ne i32 %1312, 0
  %1314 = fcmp fast ogt float %1309, 0x3FE0101020000000
  %1315 = select i1 %1314, float 1.000000e+00, float 0.000000e+00
  %1316 = select i1 %1313, float %1315, float %1309
  %1317 = fmul fast float %1316, %1297
  br label %1318

; <label>:1318                                    ; preds = %1302, %1296
  %1319 = phi float [ %1317, %1302 ], [ %1297, %1296 ]
  %1320 = fcmp fast ult float %1319, 0x3F70101020000000
  br i1 %1320, label %2008, label %1321

; <label>:1321                                    ; preds = %1318
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = and i32 %1323, 16
  %1325 = icmp eq i32 %1324, 0
  br i1 %1325, label %1524, label %1326

; <label>:1326                                    ; preds = %1321
  %1327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.i32 %1327, 0
  %1329 = add i32 %54, 380
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = add i32 %1331, 0
  %1333 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1332, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1334 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1333, %dx.types.Handle %100, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1335 = extractvalue %dx.types.ResRet.f32 %1334, 0
  %1336 = extractvalue %dx.types.ResRet.f32 %1334, 1
  %1337 = extractvalue %dx.types.ResRet.f32 %1334, 2
  %1338 = extractvalue %dx.types.ResRet.f32 %1334, 3
  %1339 = and i32 %1328, 255
  %1340 = uitofp i32 %1339 to float
  %1341 = lshr i32 %1328, 8
  %1342 = and i32 %1341, 255
  %1343 = uitofp i32 %1342 to float
  %1344 = fmul fast float %1338, %1340
  %1345 = fadd fast float %1344, %1343
  %1346 = fmul fast float %1345, 0x3F70101000000000
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = and i32 %1348, 512
  %1350 = icmp eq i32 %1349, 0
  br i1 %1350, label %1359, label %1351

; <label>:1351                                    ; preds = %1326
  %1352 = add i32 %54, 460
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = add i32 %1354, 0
  %1356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1355, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1357 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1356, %dx.types.Handle %101, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1358 = extractvalue %dx.types.ResRet.f32 %1357, 0
  br label %1359

; <label>:1359                                    ; preds = %1351, %1326
  %1360 = phi float [ %1358, %1351 ], [ 1.000000e+00, %1326 ]
  %1361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1362 = extractvalue %dx.types.ResRet.i32 %1361, 0
  %1363 = and i32 %1362, 33554432
  %1364 = icmp eq i32 %1363, 0
  br i1 %1364, label %1471, label %1365

; <label>:1365                                    ; preds = %1359
  %1366 = add i32 %54, 240
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = and i32 %1368, 65535
  %1370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1369)  ; LegacyF16ToF32(value)
  %1371 = lshr i32 %1368, 16
  %1372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1371)  ; LegacyF16ToF32(value)
  %1373 = add i32 %54, 244
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = and i32 %1375, 65535
  %1377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1376)  ; LegacyF16ToF32(value)
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = lshr i32 %1379, 24
  %1381 = uitofp i32 %1380 to float
  %1382 = fmul fast float %1381, 0x3F70101020000000
  %1383 = and i32 %1379, 255
  %1384 = uitofp i32 %1383 to float
  %1385 = fmul fast float %1384, 0x3F70101020000000
  %1386 = lshr i32 %1379, 8
  %1387 = and i32 %1386, 255
  %1388 = uitofp i32 %1387 to float
  %1389 = fmul fast float %1388, 0x3F70101020000000
  %1390 = lshr i32 %1379, 16
  %1391 = and i32 %1390, 255
  %1392 = uitofp i32 %1391 to float
  %1393 = fmul fast float %1392, 0x3F70101020000000
  %1394 = add i32 %54, 236
  %1395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.i32 %1395, 0
  %1397 = lshr i32 %1396, 24
  %1398 = uitofp i32 %1397 to float
  %1399 = fmul fast float %1398, 0x3F70101020000000
  %1400 = and i32 %1396, 255
  %1401 = uitofp i32 %1400 to float
  %1402 = fmul fast float %1401, 0x3F70101020000000
  %1403 = lshr i32 %1396, 8
  %1404 = and i32 %1403, 255
  %1405 = uitofp i32 %1404 to float
  %1406 = fmul fast float %1405, 0x3F70101020000000
  %1407 = lshr i32 %1396, 16
  %1408 = and i32 %1407, 255
  %1409 = uitofp i32 %1408 to float
  %1410 = fmul fast float %1409, 0x3F70101020000000
  %1411 = bitcast float %1335 to i32
  %1412 = ashr i32 %1411, 1
  %1413 = sub nsw i32 1597463174, %1412
  %1414 = bitcast i32 %1413 to float
  %1415 = fmul fast float %1335, 5.000000e-01
  %1416 = fmul fast float %1414, %1414
  %1417 = fmul fast float %1416, %1415
  %1418 = fsub fast float 1.500000e+00, %1417
  %1419 = fmul fast float %1414, %1335
  %1420 = fmul fast float %1419, %1418
  %1421 = bitcast float %1336 to i32
  %1422 = ashr i32 %1421, 1
  %1423 = sub nsw i32 1597463174, %1422
  %1424 = bitcast i32 %1423 to float
  %1425 = fmul fast float %1336, 5.000000e-01
  %1426 = fmul fast float %1424, %1424
  %1427 = fmul fast float %1426, %1425
  %1428 = fsub fast float 1.500000e+00, %1427
  %1429 = fmul fast float %1424, %1336
  %1430 = fmul fast float %1429, %1428
  %1431 = bitcast float %1337 to i32
  %1432 = ashr i32 %1431, 1
  %1433 = sub nsw i32 1597463174, %1432
  %1434 = bitcast i32 %1433 to float
  %1435 = fmul fast float %1337, 5.000000e-01
  %1436 = fmul fast float %1434, %1434
  %1437 = fmul fast float %1436, %1435
  %1438 = fsub fast float 1.500000e+00, %1437
  %1439 = fmul fast float %1434, %1337
  %1440 = fmul fast float %1439, %1438
  %1441 = fsub fast float %1420, %1402
  %1442 = fsub fast float %1430, %1406
  %1443 = fsub fast float %1440, %1410
  %1444 = fmul fast float %1441, %1370
  %1445 = fmul fast float %1442, %1372
  %1446 = fmul fast float %1443, %1377
  %1447 = fadd fast float %1444, %1385
  %1448 = fadd fast float %1445, %1389
  %1449 = fadd fast float %1446, %1393
  %1450 = call float @dx.op.unary.f32(i32 7, float %1447)  ; Saturate(value)
  %1451 = call float @dx.op.unary.f32(i32 7, float %1448)  ; Saturate(value)
  %1452 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  %1453 = fmul fast float %1450, %1450
  %1454 = fmul fast float %1451, %1451
  %1455 = fmul fast float %1452, %1452
  %1456 = fsub fast float %1453, %1335
  %1457 = fsub fast float %1454, %1336
  %1458 = fsub fast float %1455, %1337
  %1459 = fmul fast float %1456, %1360
  %1460 = fmul fast float %1457, %1360
  %1461 = fmul fast float %1458, %1360
  %1462 = fadd fast float %1459, %1335
  %1463 = fadd fast float %1460, %1336
  %1464 = fadd fast float %1461, %1337
  %1465 = fadd fast float %1382, %1346
  %1466 = fsub fast float %1465, %1399
  %1467 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  %1468 = fsub fast float %1467, %1346
  %1469 = fmul fast float %1468, %1360
  %1470 = fadd fast float %1469, %1346
  br label %1524

; <label>:1471                                    ; preds = %1359
  %1472 = and i32 %1362, 134217728
  %1473 = icmp eq i32 %1472, 0
  br i1 %1473, label %1508, label %1474

; <label>:1474                                    ; preds = %1471
  %1475 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %1476 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %1477 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %1478 = fadd fast float %1475, -5.000000e-01
  %1479 = fadd fast float %1476, -5.000000e-01
  %1480 = fadd fast float %1477, -5.000000e-01
  %1481 = fmul fast float %1478, %1360
  %1482 = fmul fast float %1479, %1360
  %1483 = fmul fast float %1480, %1360
  %1484 = fadd fast float %1481, 5.000000e-01
  %1485 = fadd fast float %1482, 5.000000e-01
  %1486 = fadd fast float %1483, 5.000000e-01
  %1487 = call float @dx.op.unary.f32(i32 24, float %1335)  ; Sqrt(value)
  %1488 = call float @dx.op.unary.f32(i32 24, float %1336)  ; Sqrt(value)
  %1489 = call float @dx.op.unary.f32(i32 24, float %1337)  ; Sqrt(value)
  %1490 = fmul fast float %1484, 2.000000e+00
  %1491 = fsub fast float 1.000000e+00, %1490
  %1492 = fmul fast float %1491, %1487
  %1493 = fadd fast float %1492, %1490
  %1494 = fmul fast float %1493, %1487
  %1495 = fmul fast float %1485, 2.000000e+00
  %1496 = fsub fast float 1.000000e+00, %1495
  %1497 = fmul fast float %1496, %1488
  %1498 = fadd fast float %1497, %1495
  %1499 = fmul fast float %1498, %1488
  %1500 = fmul fast float %1486, 2.000000e+00
  %1501 = fsub fast float 1.000000e+00, %1500
  %1502 = fmul fast float %1501, %1489
  %1503 = fadd fast float %1502, %1500
  %1504 = fmul fast float %1503, %1489
  %1505 = fmul fast float %1494, %1494
  %1506 = fmul fast float %1499, %1499
  %1507 = fmul fast float %1504, %1504
  br label %1524

; <label>:1508                                    ; preds = %1471
  %1509 = fmul fast float %321, %321
  %1510 = fmul fast float %325, %325
  %1511 = fmul fast float %329, %329
  %1512 = fadd fast float %1509, -1.000000e+00
  %1513 = fadd fast float %1510, -1.000000e+00
  %1514 = fadd fast float %1511, -1.000000e+00
  %1515 = fmul fast float %1360, %1512
  %1516 = fmul fast float %1360, %1513
  %1517 = fmul fast float %1360, %1514
  %1518 = fadd fast float %1515, 1.000000e+00
  %1519 = fadd fast float %1516, 1.000000e+00
  %1520 = fadd fast float %1517, 1.000000e+00
  %1521 = fmul fast float %1518, %1335
  %1522 = fmul fast float %1519, %1336
  %1523 = fmul fast float %1520, %1337
  br label %1524

; <label>:1524                                    ; preds = %1508, %1474, %1365, %1321
  %1525 = phi float [ %1470, %1365 ], [ %1346, %1474 ], [ %1346, %1508 ], [ 0x3FA23C0BE0000000, %1321 ]
  %1526 = phi float [ %1462, %1365 ], [ %1505, %1474 ], [ %1521, %1508 ], [ 1.000000e+00, %1321 ]
  %1527 = phi float [ %1463, %1365 ], [ %1506, %1474 ], [ %1522, %1508 ], [ 1.000000e+00, %1321 ]
  %1528 = phi float [ %1464, %1365 ], [ %1507, %1474 ], [ %1523, %1508 ], [ 1.000000e+00, %1321 ]
  %1529 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.i32 %1529, 1
  %1531 = and i32 %1530, 1
  %1532 = icmp ne i32 %1531, 0
  %1533 = add i32 %54, 356
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1533, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 32
  %1537 = icmp ne i32 %1536, 0
  %1538 = and i1 %1532, %1537
  %1539 = select i1 %1538, float 1.000000e+00, float %1526
  %1540 = select i1 %1538, float 0x3FD3333340000000, float %1527
  %1541 = select i1 %1538, float 0x3FD3333340000000, float %1528
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = and i32 %1543, 32
  %1545 = icmp eq i32 %1544, 0
  br i1 %1545, label %1618, label %1546

; <label>:1546                                    ; preds = %1524
  %1547 = add i32 %54, 108
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1547, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = add i32 %54, 396
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = add i32 %1552, 0
  %1554 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1553, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1555 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1554, %dx.types.Handle %100, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1556 = extractvalue %dx.types.ResRet.f32 %1555, 0
  %1557 = extractvalue %dx.types.ResRet.f32 %1555, 1
  %1558 = extractvalue %dx.types.ResRet.f32 %1555, 2
  %1559 = extractvalue %dx.types.ResRet.f32 %1555, 3
  %1560 = and i32 %1549, 255
  %1561 = uitofp i32 %1560 to float
  %1562 = lshr i32 %1549, 8
  %1563 = and i32 %1562, 255
  %1564 = uitofp i32 %1563 to float
  %1565 = lshr i32 %1549, 16
  %1566 = and i32 %1565, 255
  %1567 = uitofp i32 %1566 to float
  %1568 = fmul fast float %1567, 0x3F70101000000000
  %1569 = fmul fast float %1556, %1561
  %1570 = fadd fast float %1569, %1564
  %1571 = fmul fast float %1570, 0x3F70101000000000
  %1572 = fadd fast float %1557, -5.000000e-01
  %1573 = fadd fast float %1559, -5.000000e-01
  %1574 = fmul fast float %1572, %1568
  %1575 = fmul fast float %1573, %1568
  %1576 = fadd fast float %1574, 5.000000e-01
  %1577 = fadd fast float %1575, 5.000000e-01
  %1578 = fmul fast float %1576, 2.000000e+00
  %1579 = fadd fast float %1578, -1.000000e+00
  %1580 = fmul fast float %1577, 2.000000e+00
  %1581 = fadd fast float %1580, -1.000000e+00
  %1582 = fadd fast float %1579, %1581
  %1583 = fmul fast float %1582, 5.000000e-01
  %1584 = fsub fast float %1579, %1581
  %1585 = fmul fast float %1584, 5.000000e-01
  %1586 = call float @dx.op.unary.f32(i32 6, float %1583)  ; FAbs(value)
  %1587 = fsub fast float 1.000000e+00, %1586
  %1588 = call float @dx.op.unary.f32(i32 6, float %1585)  ; FAbs(value)
  %1589 = fsub fast float %1587, %1588
  %1590 = call float @dx.op.dot3.f32(i32 55, float %1583, float %1585, float %1589, float %1583, float %1585, float %1589)  ; Dot3(ax,ay,az,bx,by,bz)
  %1591 = call float @dx.op.unary.f32(i32 25, float %1590)  ; Rsqrt(value)
  %1592 = fmul fast float %1583, %1591
  %1593 = fmul fast float %1585, %1591
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = and i32 %1595, 67108864
  %1597 = icmp eq i32 %1596, 0
  br i1 %1597, label %1614, label %1598

; <label>:1598                                    ; preds = %1546
  %1599 = add i32 %54, 296
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = and i32 %1601, 65535
  %1603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1602)  ; LegacyF16ToF32(value)
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = and i32 %1605, 65535
  %1607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1606)  ; LegacyF16ToF32(value)
  %1608 = lshr i32 %1601, 16
  %1609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1608)  ; LegacyF16ToF32(value)
  %1610 = fsub fast float %1571, %1609
  %1611 = fmul fast float %1610, %1603
  %1612 = fadd fast float %1611, %1607
  %1613 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  br label %1614

; <label>:1614                                    ; preds = %1598, %1546
  %1615 = phi float [ %1613, %1598 ], [ %1571, %1546 ]
  %1616 = call float @dx.op.dot2.f32(i32 54, float %1592, float %1593, float %1150, float %1151)  ; Dot2(ax,ay,bx,by)
  %1617 = call float @dx.op.dot2.f32(i32 54, float %1592, float %1593, float %1152, float %1153)  ; Dot2(ax,ay,bx,by)
  br label %1618

; <label>:1618                                    ; preds = %1614, %1524
  %1619 = phi float [ %1615, %1614 ], [ 0x3FD6666660000000, %1524 ]
  %1620 = phi float [ %1616, %1614 ], [ 0.000000e+00, %1524 ]
  %1621 = phi float [ %1617, %1614 ], [ 0.000000e+00, %1524 ]
  %1622 = phi float [ %1558, %1614 ], [ 1.000000e+00, %1524 ]
  %1623 = add i32 %54, 176
  %1624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1623, i32 undef)  ; BufferLoad(srv,index,wot)
  %1625 = extractvalue %dx.types.ResRet.i32 %1624, 0
  %1626 = lshr i32 %1625, 22
  %1627 = shl nuw nsw i32 %1626, 5
  %1628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1627)  ; LegacyF16ToF32(value)
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = and i32 %1630, 64
  %1632 = icmp eq i32 %1631, 0
  br i1 %1632, label %1666, label %1633

; <label>:1633                                    ; preds = %1618
  %1634 = add i32 %54, 412
  %1635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1634, i32 undef)  ; BufferLoad(srv,index,wot)
  %1636 = extractvalue %dx.types.ResRet.i32 %1635, 0
  %1637 = add i32 %1636, 0
  %1638 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1637, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1640 = extractvalue %dx.types.ResRet.i32 %1639, 0
  %1641 = and i32 %1640, 131072
  %1642 = icmp eq i32 %1641, 0
  %1643 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1638, %dx.types.Handle %100, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1644 = extractvalue %dx.types.ResRet.f32 %1643, 0
  %1645 = extractvalue %dx.types.ResRet.f32 %1643, 1
  %1646 = extractvalue %dx.types.ResRet.f32 %1643, 2
  %1647 = fmul fast float %1644, %309
  %1648 = fmul fast float %1645, %312
  %1649 = fmul fast float %1646, %315
  br i1 %1642, label %1656, label %1650

; <label>:1650                                    ; preds = %1633
  %1651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.f32 %1651, 0
  %1653 = fmul fast float %1652, %1647
  %1654 = fmul fast float %1652, %1648
  %1655 = fmul fast float %1652, %1649
  br label %1656

; <label>:1656                                    ; preds = %1650, %1633
  %1657 = phi float [ %1653, %1650 ], [ %1647, %1633 ]
  %1658 = phi float [ %1654, %1650 ], [ %1648, %1633 ]
  %1659 = phi float [ %1655, %1650 ], [ %1649, %1633 ]
  %1660 = fmul fast float %1657, %1628
  %1661 = select i1 %250, float %1660, float %1657
  %1662 = call float @dx.op.dot3.f32(i32 55, float %1661, float %1658, float %1659, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1663 = select i1 %250, float 0.000000e+00, float %1657
  %1664 = select i1 %250, float %1662, float %1658
  %1665 = select i1 %250, float 0.000000e+00, float %1659
  br label %1666

; <label>:1666                                    ; preds = %1656, %1618
  %1667 = phi float [ %1663, %1656 ], [ 0.000000e+00, %1618 ]
  %1668 = phi float [ %1664, %1656 ], [ 0.000000e+00, %1618 ]
  %1669 = phi float [ %1665, %1656 ], [ 0.000000e+00, %1618 ]
  %1670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1671 = extractvalue %dx.types.ResRet.i32 %1670, 0
  %1672 = and i32 %1671, 1024
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %1704, label %1674

; <label>:1674                                    ; preds = %1666
  %1675 = add i32 %54, 168
  %1676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1675, i32 undef)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.i32 %1676, 0
  %1678 = and i32 %1677, 255
  %1679 = uitofp i32 %1678 to float
  %1680 = fmul fast float %1679, 0x3F70101020000000
  %1681 = lshr i32 %1677, 8
  %1682 = and i32 %1681, 255
  %1683 = uitofp i32 %1682 to float
  %1684 = fmul fast float %1683, 0x3F70101020000000
  %1685 = lshr i32 %1677, 16
  %1686 = and i32 %1685, 255
  %1687 = uitofp i32 %1686 to float
  %1688 = fmul fast float %1687, 0x3F70101020000000
  %1689 = fmul fast float %1680, %1680
  %1690 = fmul fast float %1684, %1684
  %1691 = fmul fast float %1688, %1688
  %1692 = add i32 %54, 476
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = add i32 %1694, 0
  %1696 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1695, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1697 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1696, %dx.types.Handle %101, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1698 = extractvalue %dx.types.ResRet.f32 %1697, 0
  %1699 = extractvalue %dx.types.ResRet.f32 %1697, 1
  %1700 = extractvalue %dx.types.ResRet.f32 %1697, 2
  %1701 = fmul fast float %1689, %1698
  %1702 = fmul fast float %1690, %1699
  %1703 = fmul fast float %1691, %1700
  br label %1704

; <label>:1704                                    ; preds = %1674, %1666
  %1705 = phi float [ %1701, %1674 ], [ 0.000000e+00, %1666 ]
  %1706 = phi float [ %1702, %1674 ], [ 0.000000e+00, %1666 ]
  %1707 = phi float [ %1703, %1674 ], [ 0.000000e+00, %1666 ]
  %1708 = fcmp fast ogt float %1705, 0.000000e+00
  %1709 = fcmp fast ogt float %1706, 0.000000e+00
  %1710 = fcmp fast ogt float %1707, 0.000000e+00
  %1711 = call float @dx.op.unary.f32(i32 23, float %1705)  ; Log(value)
  %1712 = call float @dx.op.unary.f32(i32 23, float %1706)  ; Log(value)
  %1713 = call float @dx.op.unary.f32(i32 23, float %1707)  ; Log(value)
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1623, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = lshr i32 %1715, 7
  %1717 = and i32 %1716, 32752
  %1718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1717)  ; LegacyF16ToF32(value)
  %1719 = fmul fast float %1711, 0xBFE62E4300000000
  %1720 = fmul fast float %1719, %1718
  %1721 = fmul fast float %1712, 0xBFE62E4300000000
  %1722 = fmul fast float %1721, %1718
  %1723 = fmul fast float %1713, 0xBFE62E4300000000
  %1724 = fmul fast float %1723, %1718
  %1725 = select i1 %1708, float %1720, float 1.270000e+02
  %1726 = select i1 %1709, float %1722, float 1.270000e+02
  %1727 = select i1 %1710, float %1724, float 1.270000e+02
  %1728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1729 = extractvalue %dx.types.ResRet.i32 %1728, 0
  %1730 = and i32 %1729, 10240
  %1731 = icmp eq i32 %1730, 0
  br i1 %1731, label %1752, label %1732

; <label>:1732                                    ; preds = %1704
  %1733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1734 = extractvalue %dx.types.ResRet.i32 %1733, 0
  %1735 = and i32 %1734, 2048
  %1736 = icmp eq i32 %1735, 0
  br i1 %1736, label %1752, label %1737

; <label>:1737                                    ; preds = %1732
  %1738 = add i32 %54, 492
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = add i32 %1740, 0
  %1742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1743 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1742, %dx.types.Handle %101, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1744 = extractvalue %dx.types.ResRet.f32 %1743, 3
  %1745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1623, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.i32 %1745, 0
  %1747 = shl i32 %1746, 4
  %1748 = and i32 %1747, 32752
  %1749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1748)  ; LegacyF16ToF32(value)
  %1750 = fmul fast float %1749, %1744
  %1751 = call float @dx.op.binary.f32(i32 35, float %1750, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1752

; <label>:1752                                    ; preds = %1737, %1732, %1704
  %1753 = phi float [ %1751, %1737 ], [ 0x3F70101020000000, %1732 ], [ 0x3F70101020000000, %1704 ]
  %1754 = add i32 %54, 112
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = and i32 %1756, 255
  %1758 = uitofp i32 %1757 to float
  %1759 = lshr i32 %1756, 8
  %1760 = and i32 %1759, 255
  %1761 = uitofp i32 %1760 to float
  %1762 = call float @dx.op.dot3.f32(i32 55, float %1539, float %1540, float %1541, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1763 = fmul fast float %1761, %1762
  %1764 = fadd fast float %1763, %1758
  %1765 = fmul fast float %1764, 0x3F70101020000000
  %1766 = call float @dx.op.unary.f32(i32 7, float %1765)  ; Saturate(value)
  br i1 %1138, label %1767, label %1802

; <label>:1767                                    ; preds = %1752
  %1768 = fmul fast float %1753, 2.000000e+00
  %1769 = fcmp fast olt float %1725, 1.270000e+02
  %1770 = fcmp fast olt float %1726, 1.270000e+02
  %1771 = fcmp fast olt float %1727, 1.270000e+02
  %1772 = fmul fast float %1725, 0xBFF7154760000000
  %1773 = fmul fast float %1772, %1768
  %1774 = fmul fast float %1726, 0xBFF7154760000000
  %1775 = fmul fast float %1774, %1768
  %1776 = fmul fast float %1727, 0xBFF7154760000000
  %1777 = fmul fast float %1776, %1768
  %1778 = call float @dx.op.unary.f32(i32 21, float %1773)  ; Exp(value)
  %1779 = call float @dx.op.unary.f32(i32 21, float %1775)  ; Exp(value)
  %1780 = call float @dx.op.unary.f32(i32 21, float %1777)  ; Exp(value)
  %1781 = call float @dx.op.unary.f32(i32 7, float %1778)  ; Saturate(value)
  %1782 = call float @dx.op.unary.f32(i32 7, float %1779)  ; Saturate(value)
  %1783 = call float @dx.op.unary.f32(i32 7, float %1780)  ; Saturate(value)
  %1784 = fadd fast float %1781, -1.000000e+00
  %1785 = select i1 %1769, float %1784, float -1.000000e+00
  %1786 = fadd fast float %1782, -1.000000e+00
  %1787 = select i1 %1770, float %1786, float -1.000000e+00
  %1788 = fadd fast float %1783, -1.000000e+00
  %1789 = select i1 %1771, float %1788, float -1.000000e+00
  %1790 = fmul fast float %1785, %1319
  %1791 = fmul fast float %1787, %1319
  %1792 = fmul fast float %1789, %1319
  %1793 = fadd fast float %1790, 1.000000e+00
  %1794 = fadd fast float %1791, 1.000000e+00
  %1795 = fadd fast float %1792, 1.000000e+00
  %1796 = fmul fast float %1793, %1122
  %1797 = fmul fast float %1794, %1123
  %1798 = fmul fast float %1795, %1124
  %1799 = fmul fast float %1793, %1125
  %1800 = fmul fast float %1794, %1126
  %1801 = fmul fast float %1795, %1127
  br label %1802

; <label>:1802                                    ; preds = %1767, %1752
  %1803 = phi float [ %1796, %1767 ], [ %1122, %1752 ]
  %1804 = phi float [ %1797, %1767 ], [ %1123, %1752 ]
  %1805 = phi float [ %1798, %1767 ], [ %1124, %1752 ]
  %1806 = phi float [ %1799, %1767 ], [ %1125, %1752 ]
  %1807 = phi float [ %1800, %1767 ], [ %1126, %1752 ]
  %1808 = phi float [ %1801, %1767 ], [ %1127, %1752 ]
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = and i32 %1810, 3
  %1812 = icmp eq i32 %1811, 3
  br i1 %1812, label %1891, label %1813

; <label>:1813                                    ; preds = %1802
  %1814 = and i32 %1810, 16
  %1815 = icmp ne i32 %1814, 0
  %1816 = select i1 %1815, float %1319, float 0.000000e+00
  %1817 = icmp eq i32 %1811, 0
  br i1 %1817, label %1818, label %1846

; <label>:1818                                    ; preds = %1813
  %1819 = and i32 %1810, 64
  %1820 = icmp ne i32 %1819, 0
  %1821 = select i1 %1820, float %1319, float 0.000000e+00
  %1822 = fsub fast float %1539, %1803
  %1823 = fsub fast float %1540, %1804
  %1824 = fsub fast float %1541, %1805
  %1825 = fmul fast float %1816, %1822
  %1826 = fmul fast float %1816, %1823
  %1827 = fmul fast float %1816, %1824
  %1828 = fadd fast float %1825, %1803
  %1829 = fadd fast float %1826, %1804
  %1830 = fadd fast float %1827, %1805
  %1831 = fsub fast float %1525, %1131
  %1832 = fmul fast float %1816, %1831
  %1833 = fadd fast float %1832, %1131
  %1834 = fsub fast float %1667, %1806
  %1835 = fsub fast float %1668, %1807
  %1836 = fsub fast float %1669, %1808
  %1837 = fmul fast float %1821, %1834
  %1838 = fmul fast float %1821, %1835
  %1839 = fmul fast float %1821, %1836
  %1840 = fadd fast float %1837, %1806
  %1841 = fadd fast float %1838, %1807
  %1842 = fadd fast float %1839, %1808
  %1843 = fsub fast float %1766, %1136
  %1844 = fmul fast float %1816, %1843
  %1845 = fadd fast float %1844, %1136
  br label %1891

; <label>:1846                                    ; preds = %1813
  %1847 = icmp eq i32 %1811, 1
  br i1 %1847, label %1848, label %1861

; <label>:1848                                    ; preds = %1846
  %1849 = fadd fast float %1539, -1.000000e+00
  %1850 = fadd fast float %1540, -1.000000e+00
  %1851 = fadd fast float %1541, -1.000000e+00
  %1852 = fmul fast float %1816, %1849
  %1853 = fmul fast float %1816, %1850
  %1854 = fmul fast float %1816, %1851
  %1855 = fadd fast float %1852, 1.000000e+00
  %1856 = fadd fast float %1853, 1.000000e+00
  %1857 = fadd fast float %1854, 1.000000e+00
  %1858 = fmul fast float %1855, %1803
  %1859 = fmul fast float %1856, %1804
  %1860 = fmul fast float %1857, %1805
  br label %1891

; <label>:1861                                    ; preds = %1846
  %1862 = icmp eq i32 %1811, 2
  br i1 %1862, label %1863, label %1891

; <label>:1863                                    ; preds = %1861
  %1864 = call float @dx.op.unary.f32(i32 24, float %1539)  ; Sqrt(value)
  %1865 = call float @dx.op.unary.f32(i32 24, float %1540)  ; Sqrt(value)
  %1866 = call float @dx.op.unary.f32(i32 24, float %1541)  ; Sqrt(value)
  %1867 = fadd fast float %1864, -5.000000e-01
  %1868 = fadd fast float %1865, -5.000000e-01
  %1869 = fadd fast float %1866, -5.000000e-01
  %1870 = fmul fast float %1867, %1816
  %1871 = fmul fast float %1868, %1816
  %1872 = fmul fast float %1869, %1816
  %1873 = fadd fast float %1870, 5.000000e-01
  %1874 = fadd fast float %1871, 5.000000e-01
  %1875 = fadd fast float %1872, 5.000000e-01
  %1876 = fmul fast float %1873, 2.000000e+00
  %1877 = fsub fast float 1.000000e+00, %1876
  %1878 = fmul fast float %1877, %1803
  %1879 = fadd fast float %1878, %1876
  %1880 = fmul fast float %1879, %1803
  %1881 = fmul fast float %1874, 2.000000e+00
  %1882 = fsub fast float 1.000000e+00, %1881
  %1883 = fmul fast float %1882, %1804
  %1884 = fadd fast float %1883, %1881
  %1885 = fmul fast float %1884, %1804
  %1886 = fmul fast float %1875, 2.000000e+00
  %1887 = fsub fast float 1.000000e+00, %1886
  %1888 = fmul fast float %1887, %1805
  %1889 = fadd fast float %1888, %1886
  %1890 = fmul fast float %1889, %1805
  br label %1891

; <label>:1891                                    ; preds = %1863, %1861, %1848, %1818, %1802
  %1892 = phi float [ %1803, %1802 ], [ %1880, %1863 ], [ %1803, %1861 ], [ %1858, %1848 ], [ %1828, %1818 ]
  %1893 = phi float [ %1804, %1802 ], [ %1885, %1863 ], [ %1804, %1861 ], [ %1859, %1848 ], [ %1829, %1818 ]
  %1894 = phi float [ %1805, %1802 ], [ %1890, %1863 ], [ %1805, %1861 ], [ %1860, %1848 ], [ %1830, %1818 ]
  %1895 = phi float [ %1806, %1802 ], [ %1806, %1863 ], [ %1806, %1861 ], [ %1806, %1848 ], [ %1840, %1818 ]
  %1896 = phi float [ %1807, %1802 ], [ %1807, %1863 ], [ %1807, %1861 ], [ %1807, %1848 ], [ %1841, %1818 ]
  %1897 = phi float [ %1808, %1802 ], [ %1808, %1863 ], [ %1808, %1861 ], [ %1808, %1848 ], [ %1842, %1818 ]
  %1898 = phi float [ %1131, %1802 ], [ %1131, %1863 ], [ %1131, %1861 ], [ %1131, %1848 ], [ %1833, %1818 ]
  %1899 = phi float [ %1136, %1802 ], [ %1136, %1863 ], [ %1136, %1861 ], [ %1136, %1848 ], [ %1845, %1818 ]
  %1900 = and i32 %1810, 12
  %1901 = icmp eq i32 %1900, 12
  br i1 %1901, label %2008, label %1902

; <label>:1902                                    ; preds = %1891
  %1903 = and i32 %1810, 2097184
  %1904 = icmp eq i32 %1903, 2097184
  %1905 = select i1 %1904, float %1319, float 0.000000e+00
  %1906 = and i32 %1810, 4194336
  %1907 = icmp eq i32 %1906, 4194336
  %1908 = select i1 %1907, float %1319, float 0.000000e+00
  %1909 = and i32 %1810, 8388640
  %1910 = icmp eq i32 %1909, 8388640
  %1911 = select i1 %1910, float %1319, float 0.000000e+00
  %1912 = and i32 %1810, 1024
  %1913 = icmp ne i32 %1912, 0
  %1914 = select i1 %1913, float %1319, float 0.000000e+00
  %1915 = and i32 %1810, 2048
  %1916 = icmp ne i32 %1915, 0
  %1917 = select i1 %1916, float %1319, float 0.000000e+00
  %1918 = icmp eq i32 %1900, 0
  br i1 %1918, label %1919, label %1944

; <label>:1919                                    ; preds = %1902
  %1920 = fsub fast float %1620, %1120
  %1921 = fsub fast float %1621, %1121
  %1922 = fmul fast float %1905, %1920
  %1923 = fmul fast float %1905, %1921
  %1924 = fadd fast float %1922, %1120
  %1925 = fadd fast float %1923, %1121
  %1926 = fsub fast float %1622, %1134
  %1927 = fmul fast float %1908, %1926
  %1928 = fadd fast float %1927, %1134
  %1929 = fsub fast float %1619, %1133
  %1930 = fmul fast float %1911, %1929
  %1931 = fadd fast float %1930, %1133
  %1932 = fsub fast float %1725, %1128
  %1933 = fsub fast float %1726, %1129
  %1934 = fsub fast float %1727, %1130
  %1935 = fmul fast float %1914, %1932
  %1936 = fmul fast float %1914, %1933
  %1937 = fmul fast float %1914, %1934
  %1938 = fadd fast float %1935, %1128
  %1939 = fadd fast float %1936, %1129
  %1940 = fadd fast float %1937, %1130
  %1941 = fsub fast float %1753, %1135
  %1942 = fmul fast float %1917, %1941
  %1943 = fadd fast float %1942, %1135
  br label %2008

; <label>:1944                                    ; preds = %1902
  %1945 = icmp eq i32 %1900, 4
  br i1 %1945, label %1946, label %1986

; <label>:1946                                    ; preds = %1944
  %1947 = fmul fast float %1905, %1620
  %1948 = fmul fast float %1905, %1621
  %1949 = fadd fast float %1947, %1120
  %1950 = fadd fast float %1948, %1121
  %1951 = call float @dx.op.binary.f32(i32 36, float %1134, float %1622)  ; FMin(a,b)
  %1952 = fsub fast float %1951, %1134
  %1953 = fmul fast float %1952, %1908
  %1954 = fadd fast float %1953, %1134
  %1955 = fadd fast float %1619, %1133
  %1956 = fmul fast float %1955, 0x3FF337FAE0000000
  %1957 = fmul fast float %1133, %1133
  %1958 = fmul fast float %1619, %1619
  %1959 = fadd fast float %1958, %1957
  %1960 = fmul fast float %1959, 0x3FE5152B00000000
  %1961 = fmul fast float %1133, 0xBFCC1F85E0000000
  %1962 = fmul fast float %1961, %1619
  %1963 = fadd fast float %1962, 0xBFE1363700000000
  %1964 = fadd fast float %1963, %1956
  %1965 = fsub fast float %1964, %1960
  %1966 = fmul fast float %1955, 0x3FBA6F0D00000000
  %1967 = fmul fast float %1959, 0x3FD0432880000000
  %1968 = fmul fast float %1133, 0xBFEF110800000000
  %1969 = fmul fast float %1968, %1619
  %1970 = fadd fast float %1969, 1.000000e+00
  %1971 = fsub fast float %1970, %1966
  %1972 = fadd fast float %1971, %1967
  %1973 = fdiv fast float %1965, %1972
  %1974 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  %1975 = fsub fast float %1974, %1133
  %1976 = fmul fast float %1975, %1911
  %1977 = fadd fast float %1976, %1133
  %1978 = fmul fast float %1914, %1725
  %1979 = fmul fast float %1914, %1726
  %1980 = fmul fast float %1914, %1727
  %1981 = fadd fast float %1978, %1128
  %1982 = fadd fast float %1979, %1129
  %1983 = fadd fast float %1980, %1130
  %1984 = fmul fast float %1917, %1753
  %1985 = fadd fast float %1984, %1135
  br label %2008

; <label>:1986                                    ; preds = %1944
  %1987 = icmp eq i32 %1900, 8
  br i1 %1987, label %1988, label %2008

; <label>:1988                                    ; preds = %1986
  %1989 = fmul fast float %1905, %1620
  %1990 = fmul fast float %1905, %1621
  %1991 = fadd fast float %1989, %1120
  %1992 = fadd fast float %1990, %1121
  %1993 = call float @dx.op.binary.f32(i32 36, float %1134, float %1622)  ; FMin(a,b)
  %1994 = fsub fast float %1993, %1134
  %1995 = fmul fast float %1994, %1908
  %1996 = fadd fast float %1995, %1134
  %1997 = fsub fast float %1619, %1133
  %1998 = fmul fast float %1911, %1997
  %1999 = fadd fast float %1998, %1133
  %2000 = fmul fast float %1914, %1725
  %2001 = fmul fast float %1914, %1726
  %2002 = fmul fast float %1914, %1727
  %2003 = fadd fast float %2000, %1128
  %2004 = fadd fast float %2001, %1129
  %2005 = fadd fast float %2002, %1130
  %2006 = fmul fast float %1917, %1753
  %2007 = fadd fast float %2006, %1135
  br label %2008

; <label>:2008                                    ; preds = %1988, %1986, %1946, %1919, %1891, %1318, %1137, %1119
  %2009 = phi float [ %1120, %1891 ], [ %1120, %1318 ], [ %1120, %1119 ], [ %1991, %1988 ], [ %1120, %1986 ], [ %1949, %1946 ], [ %1924, %1919 ], [ %1120, %1137 ]
  %2010 = phi float [ %1121, %1891 ], [ %1121, %1318 ], [ %1121, %1119 ], [ %1992, %1988 ], [ %1121, %1986 ], [ %1950, %1946 ], [ %1925, %1919 ], [ %1121, %1137 ]
  %2011 = phi float [ %1892, %1891 ], [ %1122, %1318 ], [ %1122, %1119 ], [ %1892, %1988 ], [ %1892, %1986 ], [ %1892, %1946 ], [ %1892, %1919 ], [ %1122, %1137 ]
  %2012 = phi float [ %1893, %1891 ], [ %1123, %1318 ], [ %1123, %1119 ], [ %1893, %1988 ], [ %1893, %1986 ], [ %1893, %1946 ], [ %1893, %1919 ], [ %1123, %1137 ]
  %2013 = phi float [ %1894, %1891 ], [ %1124, %1318 ], [ %1124, %1119 ], [ %1894, %1988 ], [ %1894, %1986 ], [ %1894, %1946 ], [ %1894, %1919 ], [ %1124, %1137 ]
  %2014 = phi float [ %1895, %1891 ], [ %1125, %1318 ], [ %1125, %1119 ], [ %1895, %1988 ], [ %1895, %1986 ], [ %1895, %1946 ], [ %1895, %1919 ], [ %1125, %1137 ]
  %2015 = phi float [ %1896, %1891 ], [ %1126, %1318 ], [ %1126, %1119 ], [ %1896, %1988 ], [ %1896, %1986 ], [ %1896, %1946 ], [ %1896, %1919 ], [ %1126, %1137 ]
  %2016 = phi float [ %1897, %1891 ], [ %1127, %1318 ], [ %1127, %1119 ], [ %1897, %1988 ], [ %1897, %1986 ], [ %1897, %1946 ], [ %1897, %1919 ], [ %1127, %1137 ]
  %2017 = phi float [ %1128, %1891 ], [ %1128, %1318 ], [ %1128, %1119 ], [ %2003, %1988 ], [ %1128, %1986 ], [ %1981, %1946 ], [ %1938, %1919 ], [ %1128, %1137 ]
  %2018 = phi float [ %1129, %1891 ], [ %1129, %1318 ], [ %1129, %1119 ], [ %2004, %1988 ], [ %1129, %1986 ], [ %1982, %1946 ], [ %1939, %1919 ], [ %1129, %1137 ]
  %2019 = phi float [ %1130, %1891 ], [ %1130, %1318 ], [ %1130, %1119 ], [ %2005, %1988 ], [ %1130, %1986 ], [ %1983, %1946 ], [ %1940, %1919 ], [ %1130, %1137 ]
  %2020 = phi float [ %1898, %1891 ], [ %1131, %1318 ], [ %1131, %1119 ], [ %1898, %1988 ], [ %1898, %1986 ], [ %1898, %1946 ], [ %1898, %1919 ], [ %1131, %1137 ]
  %2021 = phi float [ %1133, %1891 ], [ %1133, %1318 ], [ %1133, %1119 ], [ %1999, %1988 ], [ %1133, %1986 ], [ %1977, %1946 ], [ %1931, %1919 ], [ %1133, %1137 ]
  %2022 = phi float [ %1134, %1891 ], [ %1134, %1318 ], [ %1134, %1119 ], [ %1996, %1988 ], [ %1134, %1986 ], [ %1954, %1946 ], [ %1928, %1919 ], [ %1134, %1137 ]
  %2023 = phi float [ %1135, %1891 ], [ %1135, %1318 ], [ %1135, %1119 ], [ %2007, %1988 ], [ %1135, %1986 ], [ %1985, %1946 ], [ %1943, %1919 ], [ %1135, %1137 ]
  %2024 = phi float [ %1899, %1891 ], [ %1136, %1318 ], [ %1136, %1119 ], [ %1899, %1988 ], [ %1899, %1986 ], [ %1899, %1946 ], [ %1899, %1919 ], [ %1136, %1137 ]
  br i1 %436, label %2896, label %2025

; <label>:2025                                    ; preds = %2008
  %2026 = icmp ult i32 %492, 3
  %2027 = add i32 %54, 56
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = add i32 %54, 60
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = or i32 %2032, %2029
  %2034 = icmp eq i32 %2033, 0
  br i1 %2034, label %2896, label %2035

; <label>:2035                                    ; preds = %2025
  %2036 = and i32 %2029, 262144
  %2037 = icmp ne i32 %2036, 0
  %2038 = select i1 %2037, float %59, float 1.000000e+00
  %2039 = select i1 %2037, float %60, float 0.000000e+00
  %2040 = select i1 %2037, float %61, float 0.000000e+00
  %2041 = select i1 %2037, float %62, float 1.000000e+00
  %2042 = select i1 %2037, float %63, float %86
  %2043 = select i1 %2037, float %64, float %87
  %2044 = add i32 %54, 316
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = lshr i32 %2046, 16
  %2048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2047)  ; LegacyF16ToF32(value)
  %2049 = fmul fast float %2048, 0x3F50624DE0000000
  %2050 = add i32 %54, 120
  %2051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2050, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.i32 %2051, 0
  %2053 = lshr i32 %2052, 16
  %2054 = and i32 %2053, 255
  %2055 = lshr i32 %2052, 24
  %2056 = add i32 %54, 324
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = and i32 %2058, 65535
  %2060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2059)  ; LegacyF16ToF32(value)
  %2061 = lshr i32 %2058, 16
  %2062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2061)  ; LegacyF16ToF32(value)
  %2063 = add i32 %54, 64
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2063, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = lshr i32 %2065, 22
  %2067 = shl nuw nsw i32 %2066, 5
  %2068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2067)  ; LegacyF16ToF32(value)
  %2069 = shl i32 %2065, 4
  %2070 = and i32 %2069, 32752
  %2071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2070)  ; LegacyF16ToF32(value)
  %2072 = lshr i32 %2065, 7
  %2073 = and i32 %2072, 32752
  %2074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2073)  ; LegacyF16ToF32(value)
  %2075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2076 = extractvalue %dx.types.CBufRet.f32 %2075, 3
  %2077 = fmul fast float %2076, 1.000000e+03
  %2078 = fmul fast float %386, %2077
  %2079 = call float @dx.op.unary.f32(i32 22, float %2078)  ; Frc(value)
  %2080 = fadd fast float %2079, %376
  %2081 = fmul fast float %387, %2077
  %2082 = call float @dx.op.unary.f32(i32 22, float %2081)  ; Frc(value)
  %2083 = fadd fast float %2082, %378
  %2084 = fmul fast float %2049, %2077
  %2085 = call float @dx.op.unary.f32(i32 22, float %2084)  ; Frc(value)
  %2086 = fmul fast float %2085, 0x401921FB60000000
  %2087 = fadd fast float %2086, %2068
  %2088 = call float @dx.op.unary.f32(i32 13, float %2087)  ; Sin(value)
  %2089 = call float @dx.op.unary.f32(i32 12, float %2087)  ; Cos(value)
  %2090 = fsub fast float -0.000000e+00, %2088
  %2091 = fadd fast float %2042, -5.000000e-01
  %2092 = fadd fast float %2043, -5.000000e-01
  %2093 = fmul fast float %2060, %2091
  %2094 = fmul fast float %2062, %2092
  %2095 = fadd fast float %2093, 5.000000e-01
  %2096 = fadd fast float %2094, 5.000000e-01
  %2097 = fmul fast float %2071, %2095
  %2098 = fmul fast float %2074, %2096
  %2099 = fmul fast float %2089, %2097
  %2100 = call float @dx.op.tertiary.f32(i32 46, float %2090, float %2098, float %2099)  ; FMad(a,b,c)
  %2101 = fmul fast float %2088, %2097
  %2102 = call float @dx.op.tertiary.f32(i32 46, float %2089, float %2098, float %2101)  ; FMad(a,b,c)
  %2103 = fadd fast float %2080, %2100
  %2104 = fadd fast float %2083, %2102
  %2105 = icmp ugt i32 %2054, 1
  %2106 = icmp ugt i32 %2052, 33554431
  %2107 = or i1 %2106, %2105
  br i1 %2107, label %2108, label %2133

; <label>:2108                                    ; preds = %2035
  %2109 = add i32 %54, 260
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = lshr i32 %2111, 16
  %2113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2112)  ; LegacyF16ToF32(value)
  %2114 = fmul fast float %2076, %2113
  %2115 = call float @dx.op.unary.f32(i32 22, float %2114)  ; Frc(value)
  %2116 = mul nuw nsw i32 %2054, %2055
  %2117 = uitofp i32 %2116 to float
  %2118 = fmul fast float %2115, %2117
  %2119 = call float @dx.op.unary.f32(i32 27, float %2118)  ; Round_ni(value)
  %2120 = fptoui float %2119 to i32
  %2121 = urem i32 %2120, %2054
  %2122 = udiv i32 %2120, %2055
  %2123 = call float @dx.op.unary.f32(i32 22, float %2103)  ; Frc(value)
  %2124 = call float @dx.op.unary.f32(i32 22, float %2104)  ; Frc(value)
  %2125 = uitofp i32 %2121 to float
  %2126 = uitofp i32 %2122 to float
  %2127 = fadd fast float %2123, %2125
  %2128 = fadd fast float %2124, %2126
  %2129 = uitofp i32 %2054 to float
  %2130 = uitofp i32 %2055 to float
  %2131 = fdiv fast float %2127, %2129
  %2132 = fdiv fast float %2128, %2130
  br label %2133

; <label>:2133                                    ; preds = %2108, %2035
  %2134 = phi float [ %2131, %2108 ], [ %2103, %2035 ]
  %2135 = phi float [ %2132, %2108 ], [ %2104, %2035 ]
  %2136 = and i32 %2029, 256
  %2137 = icmp eq i32 %2136, 0
  br i1 %2137, label %2184, label %2138

; <label>:2138                                    ; preds = %2133
  %2139 = add i32 %54, 448
  %2140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2139, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.i32 %2140, 0
  %2142 = add i32 %2141, 0
  %2143 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2142, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2144 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2143, %dx.types.Handle %101, float %2134, float %2135, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = add i32 %54, 132
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = shl i32 %2148, 4
  %2150 = and i32 %2149, 32752
  %2151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2150)  ; LegacyF16ToF32(value)
  %2152 = lshr i32 %2148, 7
  %2153 = and i32 %2152, 32752
  %2154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2153)  ; LegacyF16ToF32(value)
  %2155 = fsub fast float 1.000000e+00, %488
  %2156 = call float @dx.op.binary.f32(i32 35, float %2155, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2157 = bitcast float %488 to i32
  %2158 = sitofp i32 %2157 to float
  %2159 = fadd fast float %2158, 0xC1CFBF8940000000
  %2160 = fmul fast float %2154, %2159
  %2161 = fadd fast float %2160, 0x41CFBF8940000000
  %2162 = fptosi float %2161 to i32
  %2163 = bitcast i32 %2162 to float
  %2164 = bitcast float %2156 to i32
  %2165 = sitofp i32 %2164 to float
  %2166 = fadd fast float %2165, 0xC1CFBF8940000000
  %2167 = fmul fast float %2166, %2154
  %2168 = fadd fast float %2167, 0x41CFBF8940000000
  %2169 = fptosi float %2168 to i32
  %2170 = bitcast i32 %2169 to float
  %2171 = fmul fast float %2163, %2151
  %2172 = fmul fast float %2170, %2151
  %2173 = fsub fast float %2156, %2171
  %2174 = fadd fast float %2172, %2156
  %2175 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2176 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2177 = fsub fast float %2145, %2175
  %2178 = fsub fast float %2176, %2175
  %2179 = bitcast float %2178 to i32
  %2180 = sub nsw i32 2129859010, %2179
  %2181 = bitcast i32 %2180 to float
  %2182 = fmul fast float %2181, %2177
  %2183 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  br label %2184

; <label>:2184                                    ; preds = %2138, %2133
  %2185 = phi float [ %2183, %2138 ], [ %488, %2133 ]
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = and i32 %2187, 128
  %2189 = icmp eq i32 %2188, 0
  br i1 %2189, label %2206, label %2190

; <label>:2190                                    ; preds = %2184
  %2191 = add i32 %54, 432
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2191, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = add i32 %2193, 0
  %2195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2194, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2195, %dx.types.Handle %101, float %2134, float %2135, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2197 = extractvalue %dx.types.ResRet.f32 %2196, 0
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = and i32 %2199, 524288
  %2201 = icmp ne i32 %2200, 0
  %2202 = fcmp fast ogt float %2197, 0x3FE0101020000000
  %2203 = select i1 %2202, float 1.000000e+00, float 0.000000e+00
  %2204 = select i1 %2201, float %2203, float %2197
  %2205 = fmul fast float %2204, %2185
  br label %2206

; <label>:2206                                    ; preds = %2190, %2184
  %2207 = phi float [ %2205, %2190 ], [ %2185, %2184 ]
  %2208 = fcmp fast ult float %2207, 0x3F70101020000000
  br i1 %2208, label %2896, label %2209

; <label>:2209                                    ; preds = %2206
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = and i32 %2211, 16
  %2213 = icmp eq i32 %2212, 0
  br i1 %2213, label %2412, label %2214

; <label>:2214                                    ; preds = %2209
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2050, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = add i32 %54, 384
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = add i32 %2219, 0
  %2221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2221, %dx.types.Handle %100, float %2134, float %2135, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2223 = extractvalue %dx.types.ResRet.f32 %2222, 0
  %2224 = extractvalue %dx.types.ResRet.f32 %2222, 1
  %2225 = extractvalue %dx.types.ResRet.f32 %2222, 2
  %2226 = extractvalue %dx.types.ResRet.f32 %2222, 3
  %2227 = and i32 %2216, 255
  %2228 = uitofp i32 %2227 to float
  %2229 = lshr i32 %2216, 8
  %2230 = and i32 %2229, 255
  %2231 = uitofp i32 %2230 to float
  %2232 = fmul fast float %2226, %2228
  %2233 = fadd fast float %2232, %2231
  %2234 = fmul fast float %2233, 0x3F70101000000000
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = and i32 %2236, 512
  %2238 = icmp eq i32 %2237, 0
  br i1 %2238, label %2247, label %2239

; <label>:2239                                    ; preds = %2214
  %2240 = add i32 %54, 464
  %2241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2242 = extractvalue %dx.types.ResRet.i32 %2241, 0
  %2243 = add i32 %2242, 0
  %2244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2243, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2245 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2244, %dx.types.Handle %101, float %2134, float %2135, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2246 = extractvalue %dx.types.ResRet.f32 %2245, 0
  br label %2247

; <label>:2247                                    ; preds = %2239, %2214
  %2248 = phi float [ %2246, %2239 ], [ 1.000000e+00, %2214 ]
  %2249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = and i32 %2250, 33554432
  %2252 = icmp eq i32 %2251, 0
  br i1 %2252, label %2359, label %2253

; <label>:2253                                    ; preds = %2247
  %2254 = add i32 %54, 256
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2254, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = and i32 %2256, 65535
  %2258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2257)  ; LegacyF16ToF32(value)
  %2259 = lshr i32 %2256, 16
  %2260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2259)  ; LegacyF16ToF32(value)
  %2261 = add i32 %54, 260
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = and i32 %2263, 65535
  %2265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2264)  ; LegacyF16ToF32(value)
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = lshr i32 %2267, 24
  %2269 = uitofp i32 %2268 to float
  %2270 = fmul fast float %2269, 0x3F70101020000000
  %2271 = and i32 %2267, 255
  %2272 = uitofp i32 %2271 to float
  %2273 = fmul fast float %2272, 0x3F70101020000000
  %2274 = lshr i32 %2267, 8
  %2275 = and i32 %2274, 255
  %2276 = uitofp i32 %2275 to float
  %2277 = fmul fast float %2276, 0x3F70101020000000
  %2278 = lshr i32 %2267, 16
  %2279 = and i32 %2278, 255
  %2280 = uitofp i32 %2279 to float
  %2281 = fmul fast float %2280, 0x3F70101020000000
  %2282 = add i32 %54, 252
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = lshr i32 %2284, 24
  %2286 = uitofp i32 %2285 to float
  %2287 = fmul fast float %2286, 0x3F70101020000000
  %2288 = and i32 %2284, 255
  %2289 = uitofp i32 %2288 to float
  %2290 = fmul fast float %2289, 0x3F70101020000000
  %2291 = lshr i32 %2284, 8
  %2292 = and i32 %2291, 255
  %2293 = uitofp i32 %2292 to float
  %2294 = fmul fast float %2293, 0x3F70101020000000
  %2295 = lshr i32 %2284, 16
  %2296 = and i32 %2295, 255
  %2297 = uitofp i32 %2296 to float
  %2298 = fmul fast float %2297, 0x3F70101020000000
  %2299 = bitcast float %2223 to i32
  %2300 = ashr i32 %2299, 1
  %2301 = sub nsw i32 1597463174, %2300
  %2302 = bitcast i32 %2301 to float
  %2303 = fmul fast float %2223, 5.000000e-01
  %2304 = fmul fast float %2302, %2302
  %2305 = fmul fast float %2304, %2303
  %2306 = fsub fast float 1.500000e+00, %2305
  %2307 = fmul fast float %2302, %2223
  %2308 = fmul fast float %2307, %2306
  %2309 = bitcast float %2224 to i32
  %2310 = ashr i32 %2309, 1
  %2311 = sub nsw i32 1597463174, %2310
  %2312 = bitcast i32 %2311 to float
  %2313 = fmul fast float %2224, 5.000000e-01
  %2314 = fmul fast float %2312, %2312
  %2315 = fmul fast float %2314, %2313
  %2316 = fsub fast float 1.500000e+00, %2315
  %2317 = fmul fast float %2312, %2224
  %2318 = fmul fast float %2317, %2316
  %2319 = bitcast float %2225 to i32
  %2320 = ashr i32 %2319, 1
  %2321 = sub nsw i32 1597463174, %2320
  %2322 = bitcast i32 %2321 to float
  %2323 = fmul fast float %2225, 5.000000e-01
  %2324 = fmul fast float %2322, %2322
  %2325 = fmul fast float %2324, %2323
  %2326 = fsub fast float 1.500000e+00, %2325
  %2327 = fmul fast float %2322, %2225
  %2328 = fmul fast float %2327, %2326
  %2329 = fsub fast float %2308, %2290
  %2330 = fsub fast float %2318, %2294
  %2331 = fsub fast float %2328, %2298
  %2332 = fmul fast float %2329, %2258
  %2333 = fmul fast float %2330, %2260
  %2334 = fmul fast float %2331, %2265
  %2335 = fadd fast float %2332, %2273
  %2336 = fadd fast float %2333, %2277
  %2337 = fadd fast float %2334, %2281
  %2338 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  %2339 = call float @dx.op.unary.f32(i32 7, float %2336)  ; Saturate(value)
  %2340 = call float @dx.op.unary.f32(i32 7, float %2337)  ; Saturate(value)
  %2341 = fmul fast float %2338, %2338
  %2342 = fmul fast float %2339, %2339
  %2343 = fmul fast float %2340, %2340
  %2344 = fsub fast float %2341, %2223
  %2345 = fsub fast float %2342, %2224
  %2346 = fsub fast float %2343, %2225
  %2347 = fmul fast float %2344, %2248
  %2348 = fmul fast float %2345, %2248
  %2349 = fmul fast float %2346, %2248
  %2350 = fadd fast float %2347, %2223
  %2351 = fadd fast float %2348, %2224
  %2352 = fadd fast float %2349, %2225
  %2353 = fadd fast float %2270, %2234
  %2354 = fsub fast float %2353, %2287
  %2355 = call float @dx.op.unary.f32(i32 7, float %2354)  ; Saturate(value)
  %2356 = fsub fast float %2355, %2234
  %2357 = fmul fast float %2356, %2248
  %2358 = fadd fast float %2357, %2234
  br label %2412

; <label>:2359                                    ; preds = %2247
  %2360 = and i32 %2250, 134217728
  %2361 = icmp eq i32 %2360, 0
  br i1 %2361, label %2396, label %2362

; <label>:2362                                    ; preds = %2359
  %2363 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %2364 = call float @dx.op.unary.f32(i32 24, float %367)  ; Sqrt(value)
  %2365 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %2366 = fadd fast float %2363, -5.000000e-01
  %2367 = fadd fast float %2364, -5.000000e-01
  %2368 = fadd fast float %2365, -5.000000e-01
  %2369 = fmul fast float %2366, %2248
  %2370 = fmul fast float %2367, %2248
  %2371 = fmul fast float %2368, %2248
  %2372 = fadd fast float %2369, 5.000000e-01
  %2373 = fadd fast float %2370, 5.000000e-01
  %2374 = fadd fast float %2371, 5.000000e-01
  %2375 = call float @dx.op.unary.f32(i32 24, float %2223)  ; Sqrt(value)
  %2376 = call float @dx.op.unary.f32(i32 24, float %2224)  ; Sqrt(value)
  %2377 = call float @dx.op.unary.f32(i32 24, float %2225)  ; Sqrt(value)
  %2378 = fmul fast float %2372, 2.000000e+00
  %2379 = fsub fast float 1.000000e+00, %2378
  %2380 = fmul fast float %2379, %2375
  %2381 = fadd fast float %2380, %2378
  %2382 = fmul fast float %2381, %2375
  %2383 = fmul fast float %2373, 2.000000e+00
  %2384 = fsub fast float 1.000000e+00, %2383
  %2385 = fmul fast float %2384, %2376
  %2386 = fadd fast float %2385, %2383
  %2387 = fmul fast float %2386, %2376
  %2388 = fmul fast float %2374, 2.000000e+00
  %2389 = fsub fast float 1.000000e+00, %2388
  %2390 = fmul fast float %2389, %2377
  %2391 = fadd fast float %2390, %2388
  %2392 = fmul fast float %2391, %2377
  %2393 = fmul fast float %2382, %2382
  %2394 = fmul fast float %2387, %2387
  %2395 = fmul fast float %2392, %2392
  br label %2412

; <label>:2396                                    ; preds = %2359
  %2397 = fmul fast float %363, %363
  %2398 = fmul fast float %367, %367
  %2399 = fmul fast float %371, %371
  %2400 = fadd fast float %2397, -1.000000e+00
  %2401 = fadd fast float %2398, -1.000000e+00
  %2402 = fadd fast float %2399, -1.000000e+00
  %2403 = fmul fast float %2248, %2400
  %2404 = fmul fast float %2248, %2401
  %2405 = fmul fast float %2248, %2402
  %2406 = fadd fast float %2403, 1.000000e+00
  %2407 = fadd fast float %2404, 1.000000e+00
  %2408 = fadd fast float %2405, 1.000000e+00
  %2409 = fmul fast float %2406, %2223
  %2410 = fmul fast float %2407, %2224
  %2411 = fmul fast float %2408, %2225
  br label %2412

; <label>:2412                                    ; preds = %2396, %2362, %2253, %2209
  %2413 = phi float [ %2358, %2253 ], [ %2234, %2362 ], [ %2234, %2396 ], [ 0x3FA23C0BE0000000, %2209 ]
  %2414 = phi float [ %2350, %2253 ], [ %2393, %2362 ], [ %2409, %2396 ], [ 1.000000e+00, %2209 ]
  %2415 = phi float [ %2351, %2253 ], [ %2394, %2362 ], [ %2410, %2396 ], [ 1.000000e+00, %2209 ]
  %2416 = phi float [ %2352, %2253 ], [ %2395, %2362 ], [ %2411, %2396 ], [ 1.000000e+00, %2209 ]
  %2417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2418 = extractvalue %dx.types.CBufRet.i32 %2417, 1
  %2419 = and i32 %2418, 1
  %2420 = icmp ne i32 %2419, 0
  %2421 = add i32 %54, 356
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2421, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = and i32 %2423, 32
  %2425 = icmp ne i32 %2424, 0
  %2426 = and i1 %2420, %2425
  %2427 = select i1 %2426, float 1.000000e+00, float %2414
  %2428 = select i1 %2426, float 0x3FD3333340000000, float %2415
  %2429 = select i1 %2426, float 0x3FD3333340000000, float %2416
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = and i32 %2431, 32
  %2433 = icmp eq i32 %2432, 0
  br i1 %2433, label %2506, label %2434

; <label>:2434                                    ; preds = %2412
  %2435 = add i32 %54, 124
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2435, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = add i32 %54, 400
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = add i32 %2440, 0
  %2442 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2441, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2443 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2442, %dx.types.Handle %100, float %2134, float %2135, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2444 = extractvalue %dx.types.ResRet.f32 %2443, 0
  %2445 = extractvalue %dx.types.ResRet.f32 %2443, 1
  %2446 = extractvalue %dx.types.ResRet.f32 %2443, 2
  %2447 = extractvalue %dx.types.ResRet.f32 %2443, 3
  %2448 = and i32 %2437, 255
  %2449 = uitofp i32 %2448 to float
  %2450 = lshr i32 %2437, 8
  %2451 = and i32 %2450, 255
  %2452 = uitofp i32 %2451 to float
  %2453 = lshr i32 %2437, 16
  %2454 = and i32 %2453, 255
  %2455 = uitofp i32 %2454 to float
  %2456 = fmul fast float %2455, 0x3F70101000000000
  %2457 = fmul fast float %2444, %2449
  %2458 = fadd fast float %2457, %2452
  %2459 = fmul fast float %2458, 0x3F70101000000000
  %2460 = fadd fast float %2445, -5.000000e-01
  %2461 = fadd fast float %2447, -5.000000e-01
  %2462 = fmul fast float %2460, %2456
  %2463 = fmul fast float %2461, %2456
  %2464 = fadd fast float %2462, 5.000000e-01
  %2465 = fadd fast float %2463, 5.000000e-01
  %2466 = fmul fast float %2464, 2.000000e+00
  %2467 = fadd fast float %2466, -1.000000e+00
  %2468 = fmul fast float %2465, 2.000000e+00
  %2469 = fadd fast float %2468, -1.000000e+00
  %2470 = fadd fast float %2467, %2469
  %2471 = fmul fast float %2470, 5.000000e-01
  %2472 = fsub fast float %2467, %2469
  %2473 = fmul fast float %2472, 5.000000e-01
  %2474 = call float @dx.op.unary.f32(i32 6, float %2471)  ; FAbs(value)
  %2475 = fsub fast float 1.000000e+00, %2474
  %2476 = call float @dx.op.unary.f32(i32 6, float %2473)  ; FAbs(value)
  %2477 = fsub fast float %2475, %2476
  %2478 = call float @dx.op.dot3.f32(i32 55, float %2471, float %2473, float %2477, float %2471, float %2473, float %2477)  ; Dot3(ax,ay,az,bx,by,bz)
  %2479 = call float @dx.op.unary.f32(i32 25, float %2478)  ; Rsqrt(value)
  %2480 = fmul fast float %2471, %2479
  %2481 = fmul fast float %2473, %2479
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = and i32 %2483, 67108864
  %2485 = icmp eq i32 %2484, 0
  br i1 %2485, label %2502, label %2486

; <label>:2486                                    ; preds = %2434
  %2487 = add i32 %54, 312
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2487, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = and i32 %2489, 65535
  %2491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2490)  ; LegacyF16ToF32(value)
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = and i32 %2493, 65535
  %2495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2494)  ; LegacyF16ToF32(value)
  %2496 = lshr i32 %2489, 16
  %2497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2496)  ; LegacyF16ToF32(value)
  %2498 = fsub fast float %2459, %2497
  %2499 = fmul fast float %2498, %2491
  %2500 = fadd fast float %2499, %2495
  %2501 = call float @dx.op.unary.f32(i32 7, float %2500)  ; Saturate(value)
  br label %2502

; <label>:2502                                    ; preds = %2486, %2434
  %2503 = phi float [ %2501, %2486 ], [ %2459, %2434 ]
  %2504 = call float @dx.op.dot2.f32(i32 54, float %2480, float %2481, float %2038, float %2039)  ; Dot2(ax,ay,bx,by)
  %2505 = call float @dx.op.dot2.f32(i32 54, float %2480, float %2481, float %2040, float %2041)  ; Dot2(ax,ay,bx,by)
  br label %2506

; <label>:2506                                    ; preds = %2502, %2412
  %2507 = phi float [ %2503, %2502 ], [ 0x3FD6666660000000, %2412 ]
  %2508 = phi float [ %2504, %2502 ], [ 0.000000e+00, %2412 ]
  %2509 = phi float [ %2505, %2502 ], [ 0.000000e+00, %2412 ]
  %2510 = phi float [ %2446, %2502 ], [ 1.000000e+00, %2412 ]
  %2511 = add i32 %54, 192
  %2512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2511, i32 undef)  ; BufferLoad(srv,index,wot)
  %2513 = extractvalue %dx.types.ResRet.i32 %2512, 0
  %2514 = lshr i32 %2513, 22
  %2515 = shl nuw nsw i32 %2514, 5
  %2516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2515)  ; LegacyF16ToF32(value)
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = and i32 %2518, 64
  %2520 = icmp eq i32 %2519, 0
  br i1 %2520, label %2554, label %2521

; <label>:2521                                    ; preds = %2506
  %2522 = add i32 %54, 416
  %2523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = add i32 %2524, 0
  %2526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2525, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = and i32 %2528, 131072
  %2530 = icmp eq i32 %2529, 0
  %2531 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2526, %dx.types.Handle %100, float %2134, float %2135, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2532 = extractvalue %dx.types.ResRet.f32 %2531, 0
  %2533 = extractvalue %dx.types.ResRet.f32 %2531, 1
  %2534 = extractvalue %dx.types.ResRet.f32 %2531, 2
  %2535 = fmul fast float %2532, %351
  %2536 = fmul fast float %2533, %354
  %2537 = fmul fast float %2534, %357
  br i1 %2530, label %2544, label %2538

; <label>:2538                                    ; preds = %2521
  %2539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2540 = extractvalue %dx.types.CBufRet.f32 %2539, 0
  %2541 = fmul fast float %2540, %2535
  %2542 = fmul fast float %2540, %2536
  %2543 = fmul fast float %2540, %2537
  br label %2544

; <label>:2544                                    ; preds = %2538, %2521
  %2545 = phi float [ %2541, %2538 ], [ %2535, %2521 ]
  %2546 = phi float [ %2542, %2538 ], [ %2536, %2521 ]
  %2547 = phi float [ %2543, %2538 ], [ %2537, %2521 ]
  %2548 = fmul fast float %2545, %2516
  %2549 = select i1 %250, float %2548, float %2545
  %2550 = call float @dx.op.dot3.f32(i32 55, float %2549, float %2546, float %2547, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2551 = select i1 %250, float 0.000000e+00, float %2545
  %2552 = select i1 %250, float %2550, float %2546
  %2553 = select i1 %250, float 0.000000e+00, float %2547
  br label %2554

; <label>:2554                                    ; preds = %2544, %2506
  %2555 = phi float [ %2551, %2544 ], [ 0.000000e+00, %2506 ]
  %2556 = phi float [ %2552, %2544 ], [ 0.000000e+00, %2506 ]
  %2557 = phi float [ %2553, %2544 ], [ 0.000000e+00, %2506 ]
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = and i32 %2559, 1024
  %2561 = icmp eq i32 %2560, 0
  br i1 %2561, label %2592, label %2562

; <label>:2562                                    ; preds = %2554
  %2563 = add i32 %54, 184
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = and i32 %2565, 255
  %2567 = uitofp i32 %2566 to float
  %2568 = fmul fast float %2567, 0x3F70101020000000
  %2569 = lshr i32 %2565, 8
  %2570 = and i32 %2569, 255
  %2571 = uitofp i32 %2570 to float
  %2572 = fmul fast float %2571, 0x3F70101020000000
  %2573 = lshr i32 %2565, 16
  %2574 = and i32 %2573, 255
  %2575 = uitofp i32 %2574 to float
  %2576 = fmul fast float %2575, 0x3F70101020000000
  %2577 = fmul fast float %2568, %2568
  %2578 = fmul fast float %2572, %2572
  %2579 = fmul fast float %2576, %2576
  %2580 = add i32 %54, 480
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = add i32 %2582, 0
  %2584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2584, %dx.types.Handle %101, float %2134, float %2135, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2586 = extractvalue %dx.types.ResRet.f32 %2585, 0
  %2587 = extractvalue %dx.types.ResRet.f32 %2585, 1
  %2588 = extractvalue %dx.types.ResRet.f32 %2585, 2
  %2589 = fmul fast float %2577, %2586
  %2590 = fmul fast float %2578, %2587
  %2591 = fmul fast float %2579, %2588
  br label %2592

; <label>:2592                                    ; preds = %2562, %2554
  %2593 = phi float [ %2589, %2562 ], [ 0.000000e+00, %2554 ]
  %2594 = phi float [ %2590, %2562 ], [ 0.000000e+00, %2554 ]
  %2595 = phi float [ %2591, %2562 ], [ 0.000000e+00, %2554 ]
  %2596 = fcmp fast ogt float %2593, 0.000000e+00
  %2597 = fcmp fast ogt float %2594, 0.000000e+00
  %2598 = fcmp fast ogt float %2595, 0.000000e+00
  %2599 = call float @dx.op.unary.f32(i32 23, float %2593)  ; Log(value)
  %2600 = call float @dx.op.unary.f32(i32 23, float %2594)  ; Log(value)
  %2601 = call float @dx.op.unary.f32(i32 23, float %2595)  ; Log(value)
  %2602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2511, i32 undef)  ; BufferLoad(srv,index,wot)
  %2603 = extractvalue %dx.types.ResRet.i32 %2602, 0
  %2604 = lshr i32 %2603, 7
  %2605 = and i32 %2604, 32752
  %2606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2605)  ; LegacyF16ToF32(value)
  %2607 = fmul fast float %2599, 0xBFE62E4300000000
  %2608 = fmul fast float %2607, %2606
  %2609 = fmul fast float %2600, 0xBFE62E4300000000
  %2610 = fmul fast float %2609, %2606
  %2611 = fmul fast float %2601, 0xBFE62E4300000000
  %2612 = fmul fast float %2611, %2606
  %2613 = select i1 %2596, float %2608, float 1.270000e+02
  %2614 = select i1 %2597, float %2610, float 1.270000e+02
  %2615 = select i1 %2598, float %2612, float 1.270000e+02
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = and i32 %2617, 10240
  %2619 = icmp eq i32 %2618, 0
  br i1 %2619, label %2640, label %2620

; <label>:2620                                    ; preds = %2592
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = and i32 %2622, 2048
  %2624 = icmp eq i32 %2623, 0
  br i1 %2624, label %2640, label %2625

; <label>:2625                                    ; preds = %2620
  %2626 = add i32 %54, 496
  %2627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2626, i32 undef)  ; BufferLoad(srv,index,wot)
  %2628 = extractvalue %dx.types.ResRet.i32 %2627, 0
  %2629 = add i32 %2628, 0
  %2630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2629, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2631 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2630, %dx.types.Handle %101, float %2134, float %2135, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2632 = extractvalue %dx.types.ResRet.f32 %2631, 3
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2511, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = shl i32 %2634, 4
  %2636 = and i32 %2635, 32752
  %2637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2636)  ; LegacyF16ToF32(value)
  %2638 = fmul fast float %2637, %2632
  %2639 = call float @dx.op.binary.f32(i32 35, float %2638, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2640

; <label>:2640                                    ; preds = %2625, %2620, %2592
  %2641 = phi float [ %2639, %2625 ], [ 0x3F70101020000000, %2620 ], [ 0x3F70101020000000, %2592 ]
  %2642 = add i32 %54, 128
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = and i32 %2644, 255
  %2646 = uitofp i32 %2645 to float
  %2647 = lshr i32 %2644, 8
  %2648 = and i32 %2647, 255
  %2649 = uitofp i32 %2648 to float
  %2650 = call float @dx.op.dot3.f32(i32 55, float %2427, float %2428, float %2429, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2651 = fmul fast float %2649, %2650
  %2652 = fadd fast float %2651, %2646
  %2653 = fmul fast float %2652, 0x3F70101020000000
  %2654 = call float @dx.op.unary.f32(i32 7, float %2653)  ; Saturate(value)
  br i1 %2026, label %2655, label %2690

; <label>:2655                                    ; preds = %2640
  %2656 = fmul fast float %2641, 2.000000e+00
  %2657 = fcmp fast olt float %2613, 1.270000e+02
  %2658 = fcmp fast olt float %2614, 1.270000e+02
  %2659 = fcmp fast olt float %2615, 1.270000e+02
  %2660 = fmul fast float %2613, 0xBFF7154760000000
  %2661 = fmul fast float %2660, %2656
  %2662 = fmul fast float %2614, 0xBFF7154760000000
  %2663 = fmul fast float %2662, %2656
  %2664 = fmul fast float %2615, 0xBFF7154760000000
  %2665 = fmul fast float %2664, %2656
  %2666 = call float @dx.op.unary.f32(i32 21, float %2661)  ; Exp(value)
  %2667 = call float @dx.op.unary.f32(i32 21, float %2663)  ; Exp(value)
  %2668 = call float @dx.op.unary.f32(i32 21, float %2665)  ; Exp(value)
  %2669 = call float @dx.op.unary.f32(i32 7, float %2666)  ; Saturate(value)
  %2670 = call float @dx.op.unary.f32(i32 7, float %2667)  ; Saturate(value)
  %2671 = call float @dx.op.unary.f32(i32 7, float %2668)  ; Saturate(value)
  %2672 = fadd fast float %2669, -1.000000e+00
  %2673 = select i1 %2657, float %2672, float -1.000000e+00
  %2674 = fadd fast float %2670, -1.000000e+00
  %2675 = select i1 %2658, float %2674, float -1.000000e+00
  %2676 = fadd fast float %2671, -1.000000e+00
  %2677 = select i1 %2659, float %2676, float -1.000000e+00
  %2678 = fmul fast float %2673, %2207
  %2679 = fmul fast float %2675, %2207
  %2680 = fmul fast float %2677, %2207
  %2681 = fadd fast float %2678, 1.000000e+00
  %2682 = fadd fast float %2679, 1.000000e+00
  %2683 = fadd fast float %2680, 1.000000e+00
  %2684 = fmul fast float %2681, %2011
  %2685 = fmul fast float %2682, %2012
  %2686 = fmul fast float %2683, %2013
  %2687 = fmul fast float %2681, %2014
  %2688 = fmul fast float %2682, %2015
  %2689 = fmul fast float %2683, %2016
  br label %2690

; <label>:2690                                    ; preds = %2655, %2640
  %2691 = phi float [ %2684, %2655 ], [ %2011, %2640 ]
  %2692 = phi float [ %2685, %2655 ], [ %2012, %2640 ]
  %2693 = phi float [ %2686, %2655 ], [ %2013, %2640 ]
  %2694 = phi float [ %2687, %2655 ], [ %2014, %2640 ]
  %2695 = phi float [ %2688, %2655 ], [ %2015, %2640 ]
  %2696 = phi float [ %2689, %2655 ], [ %2016, %2640 ]
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = and i32 %2698, 3
  %2700 = icmp eq i32 %2699, 3
  br i1 %2700, label %2779, label %2701

; <label>:2701                                    ; preds = %2690
  %2702 = and i32 %2698, 16
  %2703 = icmp ne i32 %2702, 0
  %2704 = select i1 %2703, float %2207, float 0.000000e+00
  %2705 = icmp eq i32 %2699, 0
  br i1 %2705, label %2706, label %2734

; <label>:2706                                    ; preds = %2701
  %2707 = and i32 %2698, 64
  %2708 = icmp ne i32 %2707, 0
  %2709 = select i1 %2708, float %2207, float 0.000000e+00
  %2710 = fsub fast float %2427, %2691
  %2711 = fsub fast float %2428, %2692
  %2712 = fsub fast float %2429, %2693
  %2713 = fmul fast float %2704, %2710
  %2714 = fmul fast float %2704, %2711
  %2715 = fmul fast float %2704, %2712
  %2716 = fadd fast float %2713, %2691
  %2717 = fadd fast float %2714, %2692
  %2718 = fadd fast float %2715, %2693
  %2719 = fsub fast float %2413, %2020
  %2720 = fmul fast float %2704, %2719
  %2721 = fadd fast float %2720, %2020
  %2722 = fsub fast float %2555, %2694
  %2723 = fsub fast float %2556, %2695
  %2724 = fsub fast float %2557, %2696
  %2725 = fmul fast float %2709, %2722
  %2726 = fmul fast float %2709, %2723
  %2727 = fmul fast float %2709, %2724
  %2728 = fadd fast float %2725, %2694
  %2729 = fadd fast float %2726, %2695
  %2730 = fadd fast float %2727, %2696
  %2731 = fsub fast float %2654, %2024
  %2732 = fmul fast float %2704, %2731
  %2733 = fadd fast float %2732, %2024
  br label %2779

; <label>:2734                                    ; preds = %2701
  %2735 = icmp eq i32 %2699, 1
  br i1 %2735, label %2736, label %2749

; <label>:2736                                    ; preds = %2734
  %2737 = fadd fast float %2427, -1.000000e+00
  %2738 = fadd fast float %2428, -1.000000e+00
  %2739 = fadd fast float %2429, -1.000000e+00
  %2740 = fmul fast float %2704, %2737
  %2741 = fmul fast float %2704, %2738
  %2742 = fmul fast float %2704, %2739
  %2743 = fadd fast float %2740, 1.000000e+00
  %2744 = fadd fast float %2741, 1.000000e+00
  %2745 = fadd fast float %2742, 1.000000e+00
  %2746 = fmul fast float %2743, %2691
  %2747 = fmul fast float %2744, %2692
  %2748 = fmul fast float %2745, %2693
  br label %2779

; <label>:2749                                    ; preds = %2734
  %2750 = icmp eq i32 %2699, 2
  br i1 %2750, label %2751, label %2779

; <label>:2751                                    ; preds = %2749
  %2752 = call float @dx.op.unary.f32(i32 24, float %2427)  ; Sqrt(value)
  %2753 = call float @dx.op.unary.f32(i32 24, float %2428)  ; Sqrt(value)
  %2754 = call float @dx.op.unary.f32(i32 24, float %2429)  ; Sqrt(value)
  %2755 = fadd fast float %2752, -5.000000e-01
  %2756 = fadd fast float %2753, -5.000000e-01
  %2757 = fadd fast float %2754, -5.000000e-01
  %2758 = fmul fast float %2755, %2704
  %2759 = fmul fast float %2756, %2704
  %2760 = fmul fast float %2757, %2704
  %2761 = fadd fast float %2758, 5.000000e-01
  %2762 = fadd fast float %2759, 5.000000e-01
  %2763 = fadd fast float %2760, 5.000000e-01
  %2764 = fmul fast float %2761, 2.000000e+00
  %2765 = fsub fast float 1.000000e+00, %2764
  %2766 = fmul fast float %2765, %2691
  %2767 = fadd fast float %2766, %2764
  %2768 = fmul fast float %2767, %2691
  %2769 = fmul fast float %2762, 2.000000e+00
  %2770 = fsub fast float 1.000000e+00, %2769
  %2771 = fmul fast float %2770, %2692
  %2772 = fadd fast float %2771, %2769
  %2773 = fmul fast float %2772, %2692
  %2774 = fmul fast float %2763, 2.000000e+00
  %2775 = fsub fast float 1.000000e+00, %2774
  %2776 = fmul fast float %2775, %2693
  %2777 = fadd fast float %2776, %2774
  %2778 = fmul fast float %2777, %2693
  br label %2779

; <label>:2779                                    ; preds = %2751, %2749, %2736, %2706, %2690
  %2780 = phi float [ %2691, %2690 ], [ %2768, %2751 ], [ %2691, %2749 ], [ %2746, %2736 ], [ %2716, %2706 ]
  %2781 = phi float [ %2692, %2690 ], [ %2773, %2751 ], [ %2692, %2749 ], [ %2747, %2736 ], [ %2717, %2706 ]
  %2782 = phi float [ %2693, %2690 ], [ %2778, %2751 ], [ %2693, %2749 ], [ %2748, %2736 ], [ %2718, %2706 ]
  %2783 = phi float [ %2694, %2690 ], [ %2694, %2751 ], [ %2694, %2749 ], [ %2694, %2736 ], [ %2728, %2706 ]
  %2784 = phi float [ %2695, %2690 ], [ %2695, %2751 ], [ %2695, %2749 ], [ %2695, %2736 ], [ %2729, %2706 ]
  %2785 = phi float [ %2696, %2690 ], [ %2696, %2751 ], [ %2696, %2749 ], [ %2696, %2736 ], [ %2730, %2706 ]
  %2786 = phi float [ %2020, %2690 ], [ %2020, %2751 ], [ %2020, %2749 ], [ %2020, %2736 ], [ %2721, %2706 ]
  %2787 = phi float [ %2024, %2690 ], [ %2024, %2751 ], [ %2024, %2749 ], [ %2024, %2736 ], [ %2733, %2706 ]
  %2788 = and i32 %2698, 12
  %2789 = icmp eq i32 %2788, 12
  br i1 %2789, label %2896, label %2790

; <label>:2790                                    ; preds = %2779
  %2791 = and i32 %2698, 2097184
  %2792 = icmp eq i32 %2791, 2097184
  %2793 = select i1 %2792, float %2207, float 0.000000e+00
  %2794 = and i32 %2698, 4194336
  %2795 = icmp eq i32 %2794, 4194336
  %2796 = select i1 %2795, float %2207, float 0.000000e+00
  %2797 = and i32 %2698, 8388640
  %2798 = icmp eq i32 %2797, 8388640
  %2799 = select i1 %2798, float %2207, float 0.000000e+00
  %2800 = and i32 %2698, 1024
  %2801 = icmp ne i32 %2800, 0
  %2802 = select i1 %2801, float %2207, float 0.000000e+00
  %2803 = and i32 %2698, 2048
  %2804 = icmp ne i32 %2803, 0
  %2805 = select i1 %2804, float %2207, float 0.000000e+00
  %2806 = icmp eq i32 %2788, 0
  br i1 %2806, label %2807, label %2832

; <label>:2807                                    ; preds = %2790
  %2808 = fsub fast float %2508, %2009
  %2809 = fsub fast float %2509, %2010
  %2810 = fmul fast float %2793, %2808
  %2811 = fmul fast float %2793, %2809
  %2812 = fadd fast float %2810, %2009
  %2813 = fadd fast float %2811, %2010
  %2814 = fsub fast float %2510, %2022
  %2815 = fmul fast float %2796, %2814
  %2816 = fadd fast float %2815, %2022
  %2817 = fsub fast float %2507, %2021
  %2818 = fmul fast float %2799, %2817
  %2819 = fadd fast float %2818, %2021
  %2820 = fsub fast float %2613, %2017
  %2821 = fsub fast float %2614, %2018
  %2822 = fsub fast float %2615, %2019
  %2823 = fmul fast float %2802, %2820
  %2824 = fmul fast float %2802, %2821
  %2825 = fmul fast float %2802, %2822
  %2826 = fadd fast float %2823, %2017
  %2827 = fadd fast float %2824, %2018
  %2828 = fadd fast float %2825, %2019
  %2829 = fsub fast float %2641, %2023
  %2830 = fmul fast float %2805, %2829
  %2831 = fadd fast float %2830, %2023
  br label %2896

; <label>:2832                                    ; preds = %2790
  %2833 = icmp eq i32 %2788, 4
  br i1 %2833, label %2834, label %2874

; <label>:2834                                    ; preds = %2832
  %2835 = fmul fast float %2793, %2508
  %2836 = fmul fast float %2793, %2509
  %2837 = fadd fast float %2835, %2009
  %2838 = fadd fast float %2836, %2010
  %2839 = call float @dx.op.binary.f32(i32 36, float %2022, float %2510)  ; FMin(a,b)
  %2840 = fsub fast float %2839, %2022
  %2841 = fmul fast float %2840, %2796
  %2842 = fadd fast float %2841, %2022
  %2843 = fadd fast float %2507, %2021
  %2844 = fmul fast float %2843, 0x3FF337FAE0000000
  %2845 = fmul fast float %2021, %2021
  %2846 = fmul fast float %2507, %2507
  %2847 = fadd fast float %2846, %2845
  %2848 = fmul fast float %2847, 0x3FE5152B00000000
  %2849 = fmul fast float %2021, 0xBFCC1F85E0000000
  %2850 = fmul fast float %2849, %2507
  %2851 = fadd fast float %2850, 0xBFE1363700000000
  %2852 = fadd fast float %2851, %2844
  %2853 = fsub fast float %2852, %2848
  %2854 = fmul fast float %2843, 0x3FBA6F0D00000000
  %2855 = fmul fast float %2847, 0x3FD0432880000000
  %2856 = fmul fast float %2021, 0xBFEF110800000000
  %2857 = fmul fast float %2856, %2507
  %2858 = fadd fast float %2857, 1.000000e+00
  %2859 = fsub fast float %2858, %2854
  %2860 = fadd fast float %2859, %2855
  %2861 = fdiv fast float %2853, %2860
  %2862 = call float @dx.op.unary.f32(i32 7, float %2861)  ; Saturate(value)
  %2863 = fsub fast float %2862, %2021
  %2864 = fmul fast float %2863, %2799
  %2865 = fadd fast float %2864, %2021
  %2866 = fmul fast float %2802, %2613
  %2867 = fmul fast float %2802, %2614
  %2868 = fmul fast float %2802, %2615
  %2869 = fadd fast float %2866, %2017
  %2870 = fadd fast float %2867, %2018
  %2871 = fadd fast float %2868, %2019
  %2872 = fmul fast float %2805, %2641
  %2873 = fadd fast float %2872, %2023
  br label %2896

; <label>:2874                                    ; preds = %2832
  %2875 = icmp eq i32 %2788, 8
  br i1 %2875, label %2876, label %2896

; <label>:2876                                    ; preds = %2874
  %2877 = fmul fast float %2793, %2508
  %2878 = fmul fast float %2793, %2509
  %2879 = fadd fast float %2877, %2009
  %2880 = fadd fast float %2878, %2010
  %2881 = call float @dx.op.binary.f32(i32 36, float %2022, float %2510)  ; FMin(a,b)
  %2882 = fsub fast float %2881, %2022
  %2883 = fmul fast float %2882, %2796
  %2884 = fadd fast float %2883, %2022
  %2885 = fsub fast float %2507, %2021
  %2886 = fmul fast float %2799, %2885
  %2887 = fadd fast float %2886, %2021
  %2888 = fmul fast float %2802, %2613
  %2889 = fmul fast float %2802, %2614
  %2890 = fmul fast float %2802, %2615
  %2891 = fadd fast float %2888, %2017
  %2892 = fadd fast float %2889, %2018
  %2893 = fadd fast float %2890, %2019
  %2894 = fmul fast float %2805, %2641
  %2895 = fadd fast float %2894, %2023
  br label %2896

; <label>:2896                                    ; preds = %2876, %2874, %2834, %2807, %2779, %2206, %2025, %2008
  %2897 = phi float [ %2009, %2779 ], [ %2009, %2206 ], [ %2009, %2008 ], [ %2879, %2876 ], [ %2009, %2874 ], [ %2837, %2834 ], [ %2812, %2807 ], [ %2009, %2025 ]
  %2898 = phi float [ %2010, %2779 ], [ %2010, %2206 ], [ %2010, %2008 ], [ %2880, %2876 ], [ %2010, %2874 ], [ %2838, %2834 ], [ %2813, %2807 ], [ %2010, %2025 ]
  %2899 = phi float [ %2780, %2779 ], [ %2011, %2206 ], [ %2011, %2008 ], [ %2780, %2876 ], [ %2780, %2874 ], [ %2780, %2834 ], [ %2780, %2807 ], [ %2011, %2025 ]
  %2900 = phi float [ %2781, %2779 ], [ %2012, %2206 ], [ %2012, %2008 ], [ %2781, %2876 ], [ %2781, %2874 ], [ %2781, %2834 ], [ %2781, %2807 ], [ %2012, %2025 ]
  %2901 = phi float [ %2782, %2779 ], [ %2013, %2206 ], [ %2013, %2008 ], [ %2782, %2876 ], [ %2782, %2874 ], [ %2782, %2834 ], [ %2782, %2807 ], [ %2013, %2025 ]
  %2902 = phi float [ %2783, %2779 ], [ %2014, %2206 ], [ %2014, %2008 ], [ %2783, %2876 ], [ %2783, %2874 ], [ %2783, %2834 ], [ %2783, %2807 ], [ %2014, %2025 ]
  %2903 = phi float [ %2784, %2779 ], [ %2015, %2206 ], [ %2015, %2008 ], [ %2784, %2876 ], [ %2784, %2874 ], [ %2784, %2834 ], [ %2784, %2807 ], [ %2015, %2025 ]
  %2904 = phi float [ %2785, %2779 ], [ %2016, %2206 ], [ %2016, %2008 ], [ %2785, %2876 ], [ %2785, %2874 ], [ %2785, %2834 ], [ %2785, %2807 ], [ %2016, %2025 ]
  %2905 = phi float [ %2017, %2779 ], [ %2017, %2206 ], [ %2017, %2008 ], [ %2891, %2876 ], [ %2017, %2874 ], [ %2869, %2834 ], [ %2826, %2807 ], [ %2017, %2025 ]
  %2906 = phi float [ %2018, %2779 ], [ %2018, %2206 ], [ %2018, %2008 ], [ %2892, %2876 ], [ %2018, %2874 ], [ %2870, %2834 ], [ %2827, %2807 ], [ %2018, %2025 ]
  %2907 = phi float [ %2019, %2779 ], [ %2019, %2206 ], [ %2019, %2008 ], [ %2893, %2876 ], [ %2019, %2874 ], [ %2871, %2834 ], [ %2828, %2807 ], [ %2019, %2025 ]
  %2908 = phi float [ %2786, %2779 ], [ %2020, %2206 ], [ %2020, %2008 ], [ %2786, %2876 ], [ %2786, %2874 ], [ %2786, %2834 ], [ %2786, %2807 ], [ %2020, %2025 ]
  %2909 = phi float [ %2021, %2779 ], [ %2021, %2206 ], [ %2021, %2008 ], [ %2887, %2876 ], [ %2021, %2874 ], [ %2865, %2834 ], [ %2819, %2807 ], [ %2021, %2025 ]
  %2910 = phi float [ %2022, %2779 ], [ %2022, %2206 ], [ %2022, %2008 ], [ %2884, %2876 ], [ %2022, %2874 ], [ %2842, %2834 ], [ %2816, %2807 ], [ %2022, %2025 ]
  %2911 = phi float [ %2023, %2779 ], [ %2023, %2206 ], [ %2023, %2008 ], [ %2895, %2876 ], [ %2023, %2874 ], [ %2873, %2834 ], [ %2831, %2807 ], [ %2023, %2025 ]
  %2912 = phi float [ %2787, %2779 ], [ %2024, %2206 ], [ %2024, %2008 ], [ %2787, %2876 ], [ %2787, %2874 ], [ %2787, %2834 ], [ %2787, %2807 ], [ %2024, %2025 ]
  br i1 %438, label %3784, label %2913

; <label>:2913                                    ; preds = %2896
  %2914 = icmp ult i32 %492, 4
  %2915 = add i32 %54, 72
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = add i32 %54, 76
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2918, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = or i32 %2920, %2917
  %2922 = icmp eq i32 %2921, 0
  br i1 %2922, label %3784, label %2923

; <label>:2923                                    ; preds = %2913
  %2924 = and i32 %2917, 262144
  %2925 = icmp ne i32 %2924, 0
  %2926 = select i1 %2925, float %59, float 1.000000e+00
  %2927 = select i1 %2925, float %60, float 0.000000e+00
  %2928 = select i1 %2925, float %61, float 0.000000e+00
  %2929 = select i1 %2925, float %62, float 1.000000e+00
  %2930 = select i1 %2925, float %63, float %86
  %2931 = select i1 %2925, float %64, float %87
  %2932 = add i32 %54, 332
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2932, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = lshr i32 %2934, 16
  %2936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2935)  ; LegacyF16ToF32(value)
  %2937 = fmul fast float %2936, 0x3F50624DE0000000
  %2938 = add i32 %54, 136
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2938, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = lshr i32 %2940, 16
  %2942 = and i32 %2941, 255
  %2943 = lshr i32 %2940, 24
  %2944 = add i32 %54, 340
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = and i32 %2946, 65535
  %2948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2947)  ; LegacyF16ToF32(value)
  %2949 = lshr i32 %2946, 16
  %2950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2949)  ; LegacyF16ToF32(value)
  %2951 = add i32 %54, 80
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = lshr i32 %2953, 22
  %2955 = shl nuw nsw i32 %2954, 5
  %2956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2955)  ; LegacyF16ToF32(value)
  %2957 = shl i32 %2953, 4
  %2958 = and i32 %2957, 32752
  %2959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2958)  ; LegacyF16ToF32(value)
  %2960 = lshr i32 %2953, 7
  %2961 = and i32 %2960, 32752
  %2962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2961)  ; LegacyF16ToF32(value)
  %2963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2964 = extractvalue %dx.types.CBufRet.f32 %2963, 3
  %2965 = fmul fast float %2964, 1.000000e+03
  %2966 = fmul fast float %428, %2965
  %2967 = call float @dx.op.unary.f32(i32 22, float %2966)  ; Frc(value)
  %2968 = fadd fast float %2967, %418
  %2969 = fmul fast float %429, %2965
  %2970 = call float @dx.op.unary.f32(i32 22, float %2969)  ; Frc(value)
  %2971 = fadd fast float %2970, %420
  %2972 = fmul fast float %2937, %2965
  %2973 = call float @dx.op.unary.f32(i32 22, float %2972)  ; Frc(value)
  %2974 = fmul fast float %2973, 0x401921FB60000000
  %2975 = fadd fast float %2974, %2956
  %2976 = call float @dx.op.unary.f32(i32 13, float %2975)  ; Sin(value)
  %2977 = call float @dx.op.unary.f32(i32 12, float %2975)  ; Cos(value)
  %2978 = fsub fast float -0.000000e+00, %2976
  %2979 = fadd fast float %2930, -5.000000e-01
  %2980 = fadd fast float %2931, -5.000000e-01
  %2981 = fmul fast float %2948, %2979
  %2982 = fmul fast float %2950, %2980
  %2983 = fadd fast float %2981, 5.000000e-01
  %2984 = fadd fast float %2982, 5.000000e-01
  %2985 = fmul fast float %2959, %2983
  %2986 = fmul fast float %2962, %2984
  %2987 = fmul fast float %2977, %2985
  %2988 = call float @dx.op.tertiary.f32(i32 46, float %2978, float %2986, float %2987)  ; FMad(a,b,c)
  %2989 = fmul fast float %2976, %2985
  %2990 = call float @dx.op.tertiary.f32(i32 46, float %2977, float %2986, float %2989)  ; FMad(a,b,c)
  %2991 = fadd fast float %2968, %2988
  %2992 = fadd fast float %2971, %2990
  %2993 = icmp ugt i32 %2942, 1
  %2994 = icmp ugt i32 %2940, 33554431
  %2995 = or i1 %2994, %2993
  br i1 %2995, label %2996, label %3021

; <label>:2996                                    ; preds = %2923
  %2997 = add i32 %54, 276
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = lshr i32 %2999, 16
  %3001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3000)  ; LegacyF16ToF32(value)
  %3002 = fmul fast float %2964, %3001
  %3003 = call float @dx.op.unary.f32(i32 22, float %3002)  ; Frc(value)
  %3004 = mul nuw nsw i32 %2942, %2943
  %3005 = uitofp i32 %3004 to float
  %3006 = fmul fast float %3003, %3005
  %3007 = call float @dx.op.unary.f32(i32 27, float %3006)  ; Round_ni(value)
  %3008 = fptoui float %3007 to i32
  %3009 = urem i32 %3008, %2942
  %3010 = udiv i32 %3008, %2943
  %3011 = call float @dx.op.unary.f32(i32 22, float %2991)  ; Frc(value)
  %3012 = call float @dx.op.unary.f32(i32 22, float %2992)  ; Frc(value)
  %3013 = uitofp i32 %3009 to float
  %3014 = uitofp i32 %3010 to float
  %3015 = fadd fast float %3011, %3013
  %3016 = fadd fast float %3012, %3014
  %3017 = uitofp i32 %2942 to float
  %3018 = uitofp i32 %2943 to float
  %3019 = fdiv fast float %3015, %3017
  %3020 = fdiv fast float %3016, %3018
  br label %3021

; <label>:3021                                    ; preds = %2996, %2923
  %3022 = phi float [ %3019, %2996 ], [ %2991, %2923 ]
  %3023 = phi float [ %3020, %2996 ], [ %2992, %2923 ]
  %3024 = and i32 %2917, 256
  %3025 = icmp eq i32 %3024, 0
  br i1 %3025, label %3072, label %3026

; <label>:3026                                    ; preds = %3021
  %3027 = add i32 %54, 452
  %3028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3027, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.i32 %3028, 0
  %3030 = add i32 %3029, 0
  %3031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3030, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3032 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3031, %dx.types.Handle %101, float %3022, float %3023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3033 = extractvalue %dx.types.ResRet.f32 %3032, 0
  %3034 = add i32 %54, 148
  %3035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3034, i32 undef)  ; BufferLoad(srv,index,wot)
  %3036 = extractvalue %dx.types.ResRet.i32 %3035, 0
  %3037 = shl i32 %3036, 4
  %3038 = and i32 %3037, 32752
  %3039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3038)  ; LegacyF16ToF32(value)
  %3040 = lshr i32 %3036, 7
  %3041 = and i32 %3040, 32752
  %3042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3041)  ; LegacyF16ToF32(value)
  %3043 = fsub fast float 1.000000e+00, %487
  %3044 = call float @dx.op.binary.f32(i32 35, float %3043, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3045 = bitcast float %487 to i32
  %3046 = sitofp i32 %3045 to float
  %3047 = fadd fast float %3046, 0xC1CFBF8940000000
  %3048 = fmul fast float %3042, %3047
  %3049 = fadd fast float %3048, 0x41CFBF8940000000
  %3050 = fptosi float %3049 to i32
  %3051 = bitcast i32 %3050 to float
  %3052 = bitcast float %3044 to i32
  %3053 = sitofp i32 %3052 to float
  %3054 = fadd fast float %3053, 0xC1CFBF8940000000
  %3055 = fmul fast float %3054, %3042
  %3056 = fadd fast float %3055, 0x41CFBF8940000000
  %3057 = fptosi float %3056 to i32
  %3058 = bitcast i32 %3057 to float
  %3059 = fmul fast float %3051, %3039
  %3060 = fmul fast float %3058, %3039
  %3061 = fsub fast float %3044, %3059
  %3062 = fadd fast float %3060, %3044
  %3063 = call float @dx.op.unary.f32(i32 7, float %3061)  ; Saturate(value)
  %3064 = call float @dx.op.unary.f32(i32 7, float %3062)  ; Saturate(value)
  %3065 = fsub fast float %3033, %3063
  %3066 = fsub fast float %3064, %3063
  %3067 = bitcast float %3066 to i32
  %3068 = sub nsw i32 2129859010, %3067
  %3069 = bitcast i32 %3068 to float
  %3070 = fmul fast float %3069, %3065
  %3071 = call float @dx.op.unary.f32(i32 7, float %3070)  ; Saturate(value)
  br label %3072

; <label>:3072                                    ; preds = %3026, %3021
  %3073 = phi float [ %3071, %3026 ], [ %487, %3021 ]
  %3074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3075 = extractvalue %dx.types.ResRet.i32 %3074, 0
  %3076 = and i32 %3075, 128
  %3077 = icmp eq i32 %3076, 0
  br i1 %3077, label %3094, label %3078

; <label>:3078                                    ; preds = %3072
  %3079 = add i32 %54, 436
  %3080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3079, i32 undef)  ; BufferLoad(srv,index,wot)
  %3081 = extractvalue %dx.types.ResRet.i32 %3080, 0
  %3082 = add i32 %3081, 0
  %3083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3084 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3083, %dx.types.Handle %101, float %3022, float %3023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3085 = extractvalue %dx.types.ResRet.f32 %3084, 0
  %3086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3087 = extractvalue %dx.types.ResRet.i32 %3086, 0
  %3088 = and i32 %3087, 524288
  %3089 = icmp ne i32 %3088, 0
  %3090 = fcmp fast ogt float %3085, 0x3FE0101020000000
  %3091 = select i1 %3090, float 1.000000e+00, float 0.000000e+00
  %3092 = select i1 %3089, float %3091, float %3085
  %3093 = fmul fast float %3092, %3073
  br label %3094

; <label>:3094                                    ; preds = %3078, %3072
  %3095 = phi float [ %3093, %3078 ], [ %3073, %3072 ]
  %3096 = fcmp fast ult float %3095, 0x3F70101020000000
  br i1 %3096, label %3784, label %3097

; <label>:3097                                    ; preds = %3094
  %3098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3099 = extractvalue %dx.types.ResRet.i32 %3098, 0
  %3100 = and i32 %3099, 16
  %3101 = icmp eq i32 %3100, 0
  br i1 %3101, label %3300, label %3102

; <label>:3102                                    ; preds = %3097
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2938, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = add i32 %54, 388
  %3106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3105, i32 undef)  ; BufferLoad(srv,index,wot)
  %3107 = extractvalue %dx.types.ResRet.i32 %3106, 0
  %3108 = add i32 %3107, 0
  %3109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3110 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3109, %dx.types.Handle %100, float %3022, float %3023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3111 = extractvalue %dx.types.ResRet.f32 %3110, 0
  %3112 = extractvalue %dx.types.ResRet.f32 %3110, 1
  %3113 = extractvalue %dx.types.ResRet.f32 %3110, 2
  %3114 = extractvalue %dx.types.ResRet.f32 %3110, 3
  %3115 = and i32 %3104, 255
  %3116 = uitofp i32 %3115 to float
  %3117 = lshr i32 %3104, 8
  %3118 = and i32 %3117, 255
  %3119 = uitofp i32 %3118 to float
  %3120 = fmul fast float %3114, %3116
  %3121 = fadd fast float %3120, %3119
  %3122 = fmul fast float %3121, 0x3F70101000000000
  %3123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = and i32 %3124, 512
  %3126 = icmp eq i32 %3125, 0
  br i1 %3126, label %3135, label %3127

; <label>:3127                                    ; preds = %3102
  %3128 = add i32 %54, 468
  %3129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3130 = extractvalue %dx.types.ResRet.i32 %3129, 0
  %3131 = add i32 %3130, 0
  %3132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3131, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3133 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3132, %dx.types.Handle %101, float %3022, float %3023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3134 = extractvalue %dx.types.ResRet.f32 %3133, 0
  br label %3135

; <label>:3135                                    ; preds = %3127, %3102
  %3136 = phi float [ %3134, %3127 ], [ 1.000000e+00, %3102 ]
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = and i32 %3138, 33554432
  %3140 = icmp eq i32 %3139, 0
  br i1 %3140, label %3247, label %3141

; <label>:3141                                    ; preds = %3135
  %3142 = add i32 %54, 272
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = and i32 %3144, 65535
  %3146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3145)  ; LegacyF16ToF32(value)
  %3147 = lshr i32 %3144, 16
  %3148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3147)  ; LegacyF16ToF32(value)
  %3149 = add i32 %54, 276
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3149, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = and i32 %3151, 65535
  %3153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3152)  ; LegacyF16ToF32(value)
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = lshr i32 %3155, 24
  %3157 = uitofp i32 %3156 to float
  %3158 = fmul fast float %3157, 0x3F70101020000000
  %3159 = and i32 %3155, 255
  %3160 = uitofp i32 %3159 to float
  %3161 = fmul fast float %3160, 0x3F70101020000000
  %3162 = lshr i32 %3155, 8
  %3163 = and i32 %3162, 255
  %3164 = uitofp i32 %3163 to float
  %3165 = fmul fast float %3164, 0x3F70101020000000
  %3166 = lshr i32 %3155, 16
  %3167 = and i32 %3166, 255
  %3168 = uitofp i32 %3167 to float
  %3169 = fmul fast float %3168, 0x3F70101020000000
  %3170 = add i32 %54, 268
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3170, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = lshr i32 %3172, 24
  %3174 = uitofp i32 %3173 to float
  %3175 = fmul fast float %3174, 0x3F70101020000000
  %3176 = and i32 %3172, 255
  %3177 = uitofp i32 %3176 to float
  %3178 = fmul fast float %3177, 0x3F70101020000000
  %3179 = lshr i32 %3172, 8
  %3180 = and i32 %3179, 255
  %3181 = uitofp i32 %3180 to float
  %3182 = fmul fast float %3181, 0x3F70101020000000
  %3183 = lshr i32 %3172, 16
  %3184 = and i32 %3183, 255
  %3185 = uitofp i32 %3184 to float
  %3186 = fmul fast float %3185, 0x3F70101020000000
  %3187 = bitcast float %3111 to i32
  %3188 = ashr i32 %3187, 1
  %3189 = sub nsw i32 1597463174, %3188
  %3190 = bitcast i32 %3189 to float
  %3191 = fmul fast float %3111, 5.000000e-01
  %3192 = fmul fast float %3190, %3190
  %3193 = fmul fast float %3192, %3191
  %3194 = fsub fast float 1.500000e+00, %3193
  %3195 = fmul fast float %3190, %3111
  %3196 = fmul fast float %3195, %3194
  %3197 = bitcast float %3112 to i32
  %3198 = ashr i32 %3197, 1
  %3199 = sub nsw i32 1597463174, %3198
  %3200 = bitcast i32 %3199 to float
  %3201 = fmul fast float %3112, 5.000000e-01
  %3202 = fmul fast float %3200, %3200
  %3203 = fmul fast float %3202, %3201
  %3204 = fsub fast float 1.500000e+00, %3203
  %3205 = fmul fast float %3200, %3112
  %3206 = fmul fast float %3205, %3204
  %3207 = bitcast float %3113 to i32
  %3208 = ashr i32 %3207, 1
  %3209 = sub nsw i32 1597463174, %3208
  %3210 = bitcast i32 %3209 to float
  %3211 = fmul fast float %3113, 5.000000e-01
  %3212 = fmul fast float %3210, %3210
  %3213 = fmul fast float %3212, %3211
  %3214 = fsub fast float 1.500000e+00, %3213
  %3215 = fmul fast float %3210, %3113
  %3216 = fmul fast float %3215, %3214
  %3217 = fsub fast float %3196, %3178
  %3218 = fsub fast float %3206, %3182
  %3219 = fsub fast float %3216, %3186
  %3220 = fmul fast float %3217, %3146
  %3221 = fmul fast float %3218, %3148
  %3222 = fmul fast float %3219, %3153
  %3223 = fadd fast float %3220, %3161
  %3224 = fadd fast float %3221, %3165
  %3225 = fadd fast float %3222, %3169
  %3226 = call float @dx.op.unary.f32(i32 7, float %3223)  ; Saturate(value)
  %3227 = call float @dx.op.unary.f32(i32 7, float %3224)  ; Saturate(value)
  %3228 = call float @dx.op.unary.f32(i32 7, float %3225)  ; Saturate(value)
  %3229 = fmul fast float %3226, %3226
  %3230 = fmul fast float %3227, %3227
  %3231 = fmul fast float %3228, %3228
  %3232 = fsub fast float %3229, %3111
  %3233 = fsub fast float %3230, %3112
  %3234 = fsub fast float %3231, %3113
  %3235 = fmul fast float %3232, %3136
  %3236 = fmul fast float %3233, %3136
  %3237 = fmul fast float %3234, %3136
  %3238 = fadd fast float %3235, %3111
  %3239 = fadd fast float %3236, %3112
  %3240 = fadd fast float %3237, %3113
  %3241 = fadd fast float %3158, %3122
  %3242 = fsub fast float %3241, %3175
  %3243 = call float @dx.op.unary.f32(i32 7, float %3242)  ; Saturate(value)
  %3244 = fsub fast float %3243, %3122
  %3245 = fmul fast float %3244, %3136
  %3246 = fadd fast float %3245, %3122
  br label %3300

; <label>:3247                                    ; preds = %3135
  %3248 = and i32 %3138, 134217728
  %3249 = icmp eq i32 %3248, 0
  br i1 %3249, label %3284, label %3250

; <label>:3250                                    ; preds = %3247
  %3251 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %3252 = call float @dx.op.unary.f32(i32 24, float %409)  ; Sqrt(value)
  %3253 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %3254 = fadd fast float %3251, -5.000000e-01
  %3255 = fadd fast float %3252, -5.000000e-01
  %3256 = fadd fast float %3253, -5.000000e-01
  %3257 = fmul fast float %3254, %3136
  %3258 = fmul fast float %3255, %3136
  %3259 = fmul fast float %3256, %3136
  %3260 = fadd fast float %3257, 5.000000e-01
  %3261 = fadd fast float %3258, 5.000000e-01
  %3262 = fadd fast float %3259, 5.000000e-01
  %3263 = call float @dx.op.unary.f32(i32 24, float %3111)  ; Sqrt(value)
  %3264 = call float @dx.op.unary.f32(i32 24, float %3112)  ; Sqrt(value)
  %3265 = call float @dx.op.unary.f32(i32 24, float %3113)  ; Sqrt(value)
  %3266 = fmul fast float %3260, 2.000000e+00
  %3267 = fsub fast float 1.000000e+00, %3266
  %3268 = fmul fast float %3267, %3263
  %3269 = fadd fast float %3268, %3266
  %3270 = fmul fast float %3269, %3263
  %3271 = fmul fast float %3261, 2.000000e+00
  %3272 = fsub fast float 1.000000e+00, %3271
  %3273 = fmul fast float %3272, %3264
  %3274 = fadd fast float %3273, %3271
  %3275 = fmul fast float %3274, %3264
  %3276 = fmul fast float %3262, 2.000000e+00
  %3277 = fsub fast float 1.000000e+00, %3276
  %3278 = fmul fast float %3277, %3265
  %3279 = fadd fast float %3278, %3276
  %3280 = fmul fast float %3279, %3265
  %3281 = fmul fast float %3270, %3270
  %3282 = fmul fast float %3275, %3275
  %3283 = fmul fast float %3280, %3280
  br label %3300

; <label>:3284                                    ; preds = %3247
  %3285 = fmul fast float %405, %405
  %3286 = fmul fast float %409, %409
  %3287 = fmul fast float %413, %413
  %3288 = fadd fast float %3285, -1.000000e+00
  %3289 = fadd fast float %3286, -1.000000e+00
  %3290 = fadd fast float %3287, -1.000000e+00
  %3291 = fmul fast float %3136, %3288
  %3292 = fmul fast float %3136, %3289
  %3293 = fmul fast float %3136, %3290
  %3294 = fadd fast float %3291, 1.000000e+00
  %3295 = fadd fast float %3292, 1.000000e+00
  %3296 = fadd fast float %3293, 1.000000e+00
  %3297 = fmul fast float %3294, %3111
  %3298 = fmul fast float %3295, %3112
  %3299 = fmul fast float %3296, %3113
  br label %3300

; <label>:3300                                    ; preds = %3284, %3250, %3141, %3097
  %3301 = phi float [ %3246, %3141 ], [ %3122, %3250 ], [ %3122, %3284 ], [ 0x3FA23C0BE0000000, %3097 ]
  %3302 = phi float [ %3238, %3141 ], [ %3281, %3250 ], [ %3297, %3284 ], [ 1.000000e+00, %3097 ]
  %3303 = phi float [ %3239, %3141 ], [ %3282, %3250 ], [ %3298, %3284 ], [ 1.000000e+00, %3097 ]
  %3304 = phi float [ %3240, %3141 ], [ %3283, %3250 ], [ %3299, %3284 ], [ 1.000000e+00, %3097 ]
  %3305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3306 = extractvalue %dx.types.CBufRet.i32 %3305, 1
  %3307 = and i32 %3306, 1
  %3308 = icmp ne i32 %3307, 0
  %3309 = add i32 %54, 356
  %3310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.i32 %3310, 0
  %3312 = and i32 %3311, 32
  %3313 = icmp ne i32 %3312, 0
  %3314 = and i1 %3308, %3313
  %3315 = select i1 %3314, float 1.000000e+00, float %3302
  %3316 = select i1 %3314, float 0x3FD3333340000000, float %3303
  %3317 = select i1 %3314, float 0x3FD3333340000000, float %3304
  %3318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3319 = extractvalue %dx.types.ResRet.i32 %3318, 0
  %3320 = and i32 %3319, 32
  %3321 = icmp eq i32 %3320, 0
  br i1 %3321, label %3394, label %3322

; <label>:3322                                    ; preds = %3300
  %3323 = add i32 %54, 140
  %3324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3323, i32 undef)  ; BufferLoad(srv,index,wot)
  %3325 = extractvalue %dx.types.ResRet.i32 %3324, 0
  %3326 = add i32 %54, 404
  %3327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3326, i32 undef)  ; BufferLoad(srv,index,wot)
  %3328 = extractvalue %dx.types.ResRet.i32 %3327, 0
  %3329 = add i32 %3328, 0
  %3330 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3329, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3331 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3330, %dx.types.Handle %100, float %3022, float %3023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3332 = extractvalue %dx.types.ResRet.f32 %3331, 0
  %3333 = extractvalue %dx.types.ResRet.f32 %3331, 1
  %3334 = extractvalue %dx.types.ResRet.f32 %3331, 2
  %3335 = extractvalue %dx.types.ResRet.f32 %3331, 3
  %3336 = and i32 %3325, 255
  %3337 = uitofp i32 %3336 to float
  %3338 = lshr i32 %3325, 8
  %3339 = and i32 %3338, 255
  %3340 = uitofp i32 %3339 to float
  %3341 = lshr i32 %3325, 16
  %3342 = and i32 %3341, 255
  %3343 = uitofp i32 %3342 to float
  %3344 = fmul fast float %3343, 0x3F70101000000000
  %3345 = fmul fast float %3332, %3337
  %3346 = fadd fast float %3345, %3340
  %3347 = fmul fast float %3346, 0x3F70101000000000
  %3348 = fadd fast float %3333, -5.000000e-01
  %3349 = fadd fast float %3335, -5.000000e-01
  %3350 = fmul fast float %3348, %3344
  %3351 = fmul fast float %3349, %3344
  %3352 = fadd fast float %3350, 5.000000e-01
  %3353 = fadd fast float %3351, 5.000000e-01
  %3354 = fmul fast float %3352, 2.000000e+00
  %3355 = fadd fast float %3354, -1.000000e+00
  %3356 = fmul fast float %3353, 2.000000e+00
  %3357 = fadd fast float %3356, -1.000000e+00
  %3358 = fadd fast float %3355, %3357
  %3359 = fmul fast float %3358, 5.000000e-01
  %3360 = fsub fast float %3355, %3357
  %3361 = fmul fast float %3360, 5.000000e-01
  %3362 = call float @dx.op.unary.f32(i32 6, float %3359)  ; FAbs(value)
  %3363 = fsub fast float 1.000000e+00, %3362
  %3364 = call float @dx.op.unary.f32(i32 6, float %3361)  ; FAbs(value)
  %3365 = fsub fast float %3363, %3364
  %3366 = call float @dx.op.dot3.f32(i32 55, float %3359, float %3361, float %3365, float %3359, float %3361, float %3365)  ; Dot3(ax,ay,az,bx,by,bz)
  %3367 = call float @dx.op.unary.f32(i32 25, float %3366)  ; Rsqrt(value)
  %3368 = fmul fast float %3359, %3367
  %3369 = fmul fast float %3361, %3367
  %3370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.i32 %3370, 0
  %3372 = and i32 %3371, 67108864
  %3373 = icmp eq i32 %3372, 0
  br i1 %3373, label %3390, label %3374

; <label>:3374                                    ; preds = %3322
  %3375 = add i32 %54, 328
  %3376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3377 = extractvalue %dx.types.ResRet.i32 %3376, 0
  %3378 = and i32 %3377, 65535
  %3379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3378)  ; LegacyF16ToF32(value)
  %3380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2932, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.i32 %3380, 0
  %3382 = and i32 %3381, 65535
  %3383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3382)  ; LegacyF16ToF32(value)
  %3384 = lshr i32 %3377, 16
  %3385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3384)  ; LegacyF16ToF32(value)
  %3386 = fsub fast float %3347, %3385
  %3387 = fmul fast float %3386, %3379
  %3388 = fadd fast float %3387, %3383
  %3389 = call float @dx.op.unary.f32(i32 7, float %3388)  ; Saturate(value)
  br label %3390

; <label>:3390                                    ; preds = %3374, %3322
  %3391 = phi float [ %3389, %3374 ], [ %3347, %3322 ]
  %3392 = call float @dx.op.dot2.f32(i32 54, float %3368, float %3369, float %2926, float %2927)  ; Dot2(ax,ay,bx,by)
  %3393 = call float @dx.op.dot2.f32(i32 54, float %3368, float %3369, float %2928, float %2929)  ; Dot2(ax,ay,bx,by)
  br label %3394

; <label>:3394                                    ; preds = %3390, %3300
  %3395 = phi float [ %3391, %3390 ], [ 0x3FD6666660000000, %3300 ]
  %3396 = phi float [ %3392, %3390 ], [ 0.000000e+00, %3300 ]
  %3397 = phi float [ %3393, %3390 ], [ 0.000000e+00, %3300 ]
  %3398 = phi float [ %3334, %3390 ], [ 1.000000e+00, %3300 ]
  %3399 = add i32 %54, 208
  %3400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.i32 %3400, 0
  %3402 = lshr i32 %3401, 22
  %3403 = shl nuw nsw i32 %3402, 5
  %3404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3403)  ; LegacyF16ToF32(value)
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = and i32 %3406, 64
  %3408 = icmp eq i32 %3407, 0
  br i1 %3408, label %3442, label %3409

; <label>:3409                                    ; preds = %3394
  %3410 = add i32 %54, 420
  %3411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3410, i32 undef)  ; BufferLoad(srv,index,wot)
  %3412 = extractvalue %dx.types.ResRet.i32 %3411, 0
  %3413 = add i32 %3412, 0
  %3414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = and i32 %3416, 131072
  %3418 = icmp eq i32 %3417, 0
  %3419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3414, %dx.types.Handle %100, float %3022, float %3023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3420 = extractvalue %dx.types.ResRet.f32 %3419, 0
  %3421 = extractvalue %dx.types.ResRet.f32 %3419, 1
  %3422 = extractvalue %dx.types.ResRet.f32 %3419, 2
  %3423 = fmul fast float %3420, %393
  %3424 = fmul fast float %3421, %396
  %3425 = fmul fast float %3422, %399
  br i1 %3418, label %3432, label %3426

; <label>:3426                                    ; preds = %3409
  %3427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3428 = extractvalue %dx.types.CBufRet.f32 %3427, 0
  %3429 = fmul fast float %3428, %3423
  %3430 = fmul fast float %3428, %3424
  %3431 = fmul fast float %3428, %3425
  br label %3432

; <label>:3432                                    ; preds = %3426, %3409
  %3433 = phi float [ %3429, %3426 ], [ %3423, %3409 ]
  %3434 = phi float [ %3430, %3426 ], [ %3424, %3409 ]
  %3435 = phi float [ %3431, %3426 ], [ %3425, %3409 ]
  %3436 = fmul fast float %3433, %3404
  %3437 = select i1 %250, float %3436, float %3433
  %3438 = call float @dx.op.dot3.f32(i32 55, float %3437, float %3434, float %3435, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3439 = select i1 %250, float 0.000000e+00, float %3433
  %3440 = select i1 %250, float %3438, float %3434
  %3441 = select i1 %250, float 0.000000e+00, float %3435
  br label %3442

; <label>:3442                                    ; preds = %3432, %3394
  %3443 = phi float [ %3439, %3432 ], [ 0.000000e+00, %3394 ]
  %3444 = phi float [ %3440, %3432 ], [ 0.000000e+00, %3394 ]
  %3445 = phi float [ %3441, %3432 ], [ 0.000000e+00, %3394 ]
  %3446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.i32 %3446, 0
  %3448 = and i32 %3447, 1024
  %3449 = icmp eq i32 %3448, 0
  br i1 %3449, label %3480, label %3450

; <label>:3450                                    ; preds = %3442
  %3451 = add i32 %54, 200
  %3452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3451, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.i32 %3452, 0
  %3454 = and i32 %3453, 255
  %3455 = uitofp i32 %3454 to float
  %3456 = fmul fast float %3455, 0x3F70101020000000
  %3457 = lshr i32 %3453, 8
  %3458 = and i32 %3457, 255
  %3459 = uitofp i32 %3458 to float
  %3460 = fmul fast float %3459, 0x3F70101020000000
  %3461 = lshr i32 %3453, 16
  %3462 = and i32 %3461, 255
  %3463 = uitofp i32 %3462 to float
  %3464 = fmul fast float %3463, 0x3F70101020000000
  %3465 = fmul fast float %3456, %3456
  %3466 = fmul fast float %3460, %3460
  %3467 = fmul fast float %3464, %3464
  %3468 = add i32 %54, 484
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = add i32 %3470, 0
  %3472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3473 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3472, %dx.types.Handle %101, float %3022, float %3023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3474 = extractvalue %dx.types.ResRet.f32 %3473, 0
  %3475 = extractvalue %dx.types.ResRet.f32 %3473, 1
  %3476 = extractvalue %dx.types.ResRet.f32 %3473, 2
  %3477 = fmul fast float %3465, %3474
  %3478 = fmul fast float %3466, %3475
  %3479 = fmul fast float %3467, %3476
  br label %3480

; <label>:3480                                    ; preds = %3450, %3442
  %3481 = phi float [ %3477, %3450 ], [ 0.000000e+00, %3442 ]
  %3482 = phi float [ %3478, %3450 ], [ 0.000000e+00, %3442 ]
  %3483 = phi float [ %3479, %3450 ], [ 0.000000e+00, %3442 ]
  %3484 = fcmp fast ogt float %3481, 0.000000e+00
  %3485 = fcmp fast ogt float %3482, 0.000000e+00
  %3486 = fcmp fast ogt float %3483, 0.000000e+00
  %3487 = call float @dx.op.unary.f32(i32 23, float %3481)  ; Log(value)
  %3488 = call float @dx.op.unary.f32(i32 23, float %3482)  ; Log(value)
  %3489 = call float @dx.op.unary.f32(i32 23, float %3483)  ; Log(value)
  %3490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.i32 %3490, 0
  %3492 = lshr i32 %3491, 7
  %3493 = and i32 %3492, 32752
  %3494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3493)  ; LegacyF16ToF32(value)
  %3495 = fmul fast float %3487, 0xBFE62E4300000000
  %3496 = fmul fast float %3495, %3494
  %3497 = fmul fast float %3488, 0xBFE62E4300000000
  %3498 = fmul fast float %3497, %3494
  %3499 = fmul fast float %3489, 0xBFE62E4300000000
  %3500 = fmul fast float %3499, %3494
  %3501 = select i1 %3484, float %3496, float 1.270000e+02
  %3502 = select i1 %3485, float %3498, float 1.270000e+02
  %3503 = select i1 %3486, float %3500, float 1.270000e+02
  %3504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.i32 %3504, 0
  %3506 = and i32 %3505, 10240
  %3507 = icmp eq i32 %3506, 0
  br i1 %3507, label %3528, label %3508

; <label>:3508                                    ; preds = %3480
  %3509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3510 = extractvalue %dx.types.ResRet.i32 %3509, 0
  %3511 = and i32 %3510, 2048
  %3512 = icmp eq i32 %3511, 0
  br i1 %3512, label %3528, label %3513

; <label>:3513                                    ; preds = %3508
  %3514 = add i32 %54, 500
  %3515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3514, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.i32 %3515, 0
  %3517 = add i32 %3516, 0
  %3518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3519 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3518, %dx.types.Handle %101, float %3022, float %3023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3520 = extractvalue %dx.types.ResRet.f32 %3519, 3
  %3521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.i32 %3521, 0
  %3523 = shl i32 %3522, 4
  %3524 = and i32 %3523, 32752
  %3525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3524)  ; LegacyF16ToF32(value)
  %3526 = fmul fast float %3525, %3520
  %3527 = call float @dx.op.binary.f32(i32 35, float %3526, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3528

; <label>:3528                                    ; preds = %3513, %3508, %3480
  %3529 = phi float [ %3527, %3513 ], [ 0x3F70101020000000, %3508 ], [ 0x3F70101020000000, %3480 ]
  %3530 = add i32 %54, 144
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3530, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = and i32 %3532, 255
  %3534 = uitofp i32 %3533 to float
  %3535 = lshr i32 %3532, 8
  %3536 = and i32 %3535, 255
  %3537 = uitofp i32 %3536 to float
  %3538 = call float @dx.op.dot3.f32(i32 55, float %3315, float %3316, float %3317, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3539 = fmul fast float %3537, %3538
  %3540 = fadd fast float %3539, %3534
  %3541 = fmul fast float %3540, 0x3F70101020000000
  %3542 = call float @dx.op.unary.f32(i32 7, float %3541)  ; Saturate(value)
  br i1 %2914, label %3543, label %3578

; <label>:3543                                    ; preds = %3528
  %3544 = fmul fast float %3529, 2.000000e+00
  %3545 = fcmp fast olt float %3501, 1.270000e+02
  %3546 = fcmp fast olt float %3502, 1.270000e+02
  %3547 = fcmp fast olt float %3503, 1.270000e+02
  %3548 = fmul fast float %3501, 0xBFF7154760000000
  %3549 = fmul fast float %3548, %3544
  %3550 = fmul fast float %3502, 0xBFF7154760000000
  %3551 = fmul fast float %3550, %3544
  %3552 = fmul fast float %3503, 0xBFF7154760000000
  %3553 = fmul fast float %3552, %3544
  %3554 = call float @dx.op.unary.f32(i32 21, float %3549)  ; Exp(value)
  %3555 = call float @dx.op.unary.f32(i32 21, float %3551)  ; Exp(value)
  %3556 = call float @dx.op.unary.f32(i32 21, float %3553)  ; Exp(value)
  %3557 = call float @dx.op.unary.f32(i32 7, float %3554)  ; Saturate(value)
  %3558 = call float @dx.op.unary.f32(i32 7, float %3555)  ; Saturate(value)
  %3559 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3560 = fadd fast float %3557, -1.000000e+00
  %3561 = select i1 %3545, float %3560, float -1.000000e+00
  %3562 = fadd fast float %3558, -1.000000e+00
  %3563 = select i1 %3546, float %3562, float -1.000000e+00
  %3564 = fadd fast float %3559, -1.000000e+00
  %3565 = select i1 %3547, float %3564, float -1.000000e+00
  %3566 = fmul fast float %3561, %3095
  %3567 = fmul fast float %3563, %3095
  %3568 = fmul fast float %3565, %3095
  %3569 = fadd fast float %3566, 1.000000e+00
  %3570 = fadd fast float %3567, 1.000000e+00
  %3571 = fadd fast float %3568, 1.000000e+00
  %3572 = fmul fast float %3569, %2899
  %3573 = fmul fast float %3570, %2900
  %3574 = fmul fast float %3571, %2901
  %3575 = fmul fast float %3569, %2902
  %3576 = fmul fast float %3570, %2903
  %3577 = fmul fast float %3571, %2904
  br label %3578

; <label>:3578                                    ; preds = %3543, %3528
  %3579 = phi float [ %3572, %3543 ], [ %2899, %3528 ]
  %3580 = phi float [ %3573, %3543 ], [ %2900, %3528 ]
  %3581 = phi float [ %3574, %3543 ], [ %2901, %3528 ]
  %3582 = phi float [ %3575, %3543 ], [ %2902, %3528 ]
  %3583 = phi float [ %3576, %3543 ], [ %2903, %3528 ]
  %3584 = phi float [ %3577, %3543 ], [ %2904, %3528 ]
  %3585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.i32 %3585, 0
  %3587 = and i32 %3586, 3
  %3588 = icmp eq i32 %3587, 3
  br i1 %3588, label %3667, label %3589

; <label>:3589                                    ; preds = %3578
  %3590 = and i32 %3586, 16
  %3591 = icmp ne i32 %3590, 0
  %3592 = select i1 %3591, float %3095, float 0.000000e+00
  %3593 = icmp eq i32 %3587, 0
  br i1 %3593, label %3594, label %3622

; <label>:3594                                    ; preds = %3589
  %3595 = and i32 %3586, 64
  %3596 = icmp ne i32 %3595, 0
  %3597 = select i1 %3596, float %3095, float 0.000000e+00
  %3598 = fsub fast float %3315, %3579
  %3599 = fsub fast float %3316, %3580
  %3600 = fsub fast float %3317, %3581
  %3601 = fmul fast float %3592, %3598
  %3602 = fmul fast float %3592, %3599
  %3603 = fmul fast float %3592, %3600
  %3604 = fadd fast float %3601, %3579
  %3605 = fadd fast float %3602, %3580
  %3606 = fadd fast float %3603, %3581
  %3607 = fsub fast float %3301, %2908
  %3608 = fmul fast float %3592, %3607
  %3609 = fadd fast float %3608, %2908
  %3610 = fsub fast float %3443, %3582
  %3611 = fsub fast float %3444, %3583
  %3612 = fsub fast float %3445, %3584
  %3613 = fmul fast float %3597, %3610
  %3614 = fmul fast float %3597, %3611
  %3615 = fmul fast float %3597, %3612
  %3616 = fadd fast float %3613, %3582
  %3617 = fadd fast float %3614, %3583
  %3618 = fadd fast float %3615, %3584
  %3619 = fsub fast float %3542, %2912
  %3620 = fmul fast float %3592, %3619
  %3621 = fadd fast float %3620, %2912
  br label %3667

; <label>:3622                                    ; preds = %3589
  %3623 = icmp eq i32 %3587, 1
  br i1 %3623, label %3624, label %3637

; <label>:3624                                    ; preds = %3622
  %3625 = fadd fast float %3315, -1.000000e+00
  %3626 = fadd fast float %3316, -1.000000e+00
  %3627 = fadd fast float %3317, -1.000000e+00
  %3628 = fmul fast float %3592, %3625
  %3629 = fmul fast float %3592, %3626
  %3630 = fmul fast float %3592, %3627
  %3631 = fadd fast float %3628, 1.000000e+00
  %3632 = fadd fast float %3629, 1.000000e+00
  %3633 = fadd fast float %3630, 1.000000e+00
  %3634 = fmul fast float %3631, %3579
  %3635 = fmul fast float %3632, %3580
  %3636 = fmul fast float %3633, %3581
  br label %3667

; <label>:3637                                    ; preds = %3622
  %3638 = icmp eq i32 %3587, 2
  br i1 %3638, label %3639, label %3667

; <label>:3639                                    ; preds = %3637
  %3640 = call float @dx.op.unary.f32(i32 24, float %3315)  ; Sqrt(value)
  %3641 = call float @dx.op.unary.f32(i32 24, float %3316)  ; Sqrt(value)
  %3642 = call float @dx.op.unary.f32(i32 24, float %3317)  ; Sqrt(value)
  %3643 = fadd fast float %3640, -5.000000e-01
  %3644 = fadd fast float %3641, -5.000000e-01
  %3645 = fadd fast float %3642, -5.000000e-01
  %3646 = fmul fast float %3643, %3592
  %3647 = fmul fast float %3644, %3592
  %3648 = fmul fast float %3645, %3592
  %3649 = fadd fast float %3646, 5.000000e-01
  %3650 = fadd fast float %3647, 5.000000e-01
  %3651 = fadd fast float %3648, 5.000000e-01
  %3652 = fmul fast float %3649, 2.000000e+00
  %3653 = fsub fast float 1.000000e+00, %3652
  %3654 = fmul fast float %3653, %3579
  %3655 = fadd fast float %3654, %3652
  %3656 = fmul fast float %3655, %3579
  %3657 = fmul fast float %3650, 2.000000e+00
  %3658 = fsub fast float 1.000000e+00, %3657
  %3659 = fmul fast float %3658, %3580
  %3660 = fadd fast float %3659, %3657
  %3661 = fmul fast float %3660, %3580
  %3662 = fmul fast float %3651, 2.000000e+00
  %3663 = fsub fast float 1.000000e+00, %3662
  %3664 = fmul fast float %3663, %3581
  %3665 = fadd fast float %3664, %3662
  %3666 = fmul fast float %3665, %3581
  br label %3667

; <label>:3667                                    ; preds = %3639, %3637, %3624, %3594, %3578
  %3668 = phi float [ %3579, %3578 ], [ %3656, %3639 ], [ %3579, %3637 ], [ %3634, %3624 ], [ %3604, %3594 ]
  %3669 = phi float [ %3580, %3578 ], [ %3661, %3639 ], [ %3580, %3637 ], [ %3635, %3624 ], [ %3605, %3594 ]
  %3670 = phi float [ %3581, %3578 ], [ %3666, %3639 ], [ %3581, %3637 ], [ %3636, %3624 ], [ %3606, %3594 ]
  %3671 = phi float [ %3582, %3578 ], [ %3582, %3639 ], [ %3582, %3637 ], [ %3582, %3624 ], [ %3616, %3594 ]
  %3672 = phi float [ %3583, %3578 ], [ %3583, %3639 ], [ %3583, %3637 ], [ %3583, %3624 ], [ %3617, %3594 ]
  %3673 = phi float [ %3584, %3578 ], [ %3584, %3639 ], [ %3584, %3637 ], [ %3584, %3624 ], [ %3618, %3594 ]
  %3674 = phi float [ %2908, %3578 ], [ %2908, %3639 ], [ %2908, %3637 ], [ %2908, %3624 ], [ %3609, %3594 ]
  %3675 = phi float [ %2912, %3578 ], [ %2912, %3639 ], [ %2912, %3637 ], [ %2912, %3624 ], [ %3621, %3594 ]
  %3676 = and i32 %3586, 12
  %3677 = icmp eq i32 %3676, 12
  br i1 %3677, label %3784, label %3678

; <label>:3678                                    ; preds = %3667
  %3679 = and i32 %3586, 2097184
  %3680 = icmp eq i32 %3679, 2097184
  %3681 = select i1 %3680, float %3095, float 0.000000e+00
  %3682 = and i32 %3586, 4194336
  %3683 = icmp eq i32 %3682, 4194336
  %3684 = select i1 %3683, float %3095, float 0.000000e+00
  %3685 = and i32 %3586, 8388640
  %3686 = icmp eq i32 %3685, 8388640
  %3687 = select i1 %3686, float %3095, float 0.000000e+00
  %3688 = and i32 %3586, 1024
  %3689 = icmp ne i32 %3688, 0
  %3690 = select i1 %3689, float %3095, float 0.000000e+00
  %3691 = and i32 %3586, 2048
  %3692 = icmp ne i32 %3691, 0
  %3693 = select i1 %3692, float %3095, float 0.000000e+00
  %3694 = icmp eq i32 %3676, 0
  br i1 %3694, label %3695, label %3720

; <label>:3695                                    ; preds = %3678
  %3696 = fsub fast float %3396, %2897
  %3697 = fsub fast float %3397, %2898
  %3698 = fmul fast float %3681, %3696
  %3699 = fmul fast float %3681, %3697
  %3700 = fadd fast float %3698, %2897
  %3701 = fadd fast float %3699, %2898
  %3702 = fsub fast float %3398, %2910
  %3703 = fmul fast float %3684, %3702
  %3704 = fadd fast float %3703, %2910
  %3705 = fsub fast float %3395, %2909
  %3706 = fmul fast float %3687, %3705
  %3707 = fadd fast float %3706, %2909
  %3708 = fsub fast float %3501, %2905
  %3709 = fsub fast float %3502, %2906
  %3710 = fsub fast float %3503, %2907
  %3711 = fmul fast float %3690, %3708
  %3712 = fmul fast float %3690, %3709
  %3713 = fmul fast float %3690, %3710
  %3714 = fadd fast float %3711, %2905
  %3715 = fadd fast float %3712, %2906
  %3716 = fadd fast float %3713, %2907
  %3717 = fsub fast float %3529, %2911
  %3718 = fmul fast float %3693, %3717
  %3719 = fadd fast float %3718, %2911
  br label %3784

; <label>:3720                                    ; preds = %3678
  %3721 = icmp eq i32 %3676, 4
  br i1 %3721, label %3722, label %3762

; <label>:3722                                    ; preds = %3720
  %3723 = fmul fast float %3681, %3396
  %3724 = fmul fast float %3681, %3397
  %3725 = fadd fast float %3723, %2897
  %3726 = fadd fast float %3724, %2898
  %3727 = call float @dx.op.binary.f32(i32 36, float %2910, float %3398)  ; FMin(a,b)
  %3728 = fsub fast float %3727, %2910
  %3729 = fmul fast float %3728, %3684
  %3730 = fadd fast float %3729, %2910
  %3731 = fadd fast float %3395, %2909
  %3732 = fmul fast float %3731, 0x3FF337FAE0000000
  %3733 = fmul fast float %2909, %2909
  %3734 = fmul fast float %3395, %3395
  %3735 = fadd fast float %3734, %3733
  %3736 = fmul fast float %3735, 0x3FE5152B00000000
  %3737 = fmul fast float %2909, 0xBFCC1F85E0000000
  %3738 = fmul fast float %3737, %3395
  %3739 = fadd fast float %3738, 0xBFE1363700000000
  %3740 = fadd fast float %3739, %3732
  %3741 = fsub fast float %3740, %3736
  %3742 = fmul fast float %3731, 0x3FBA6F0D00000000
  %3743 = fmul fast float %3735, 0x3FD0432880000000
  %3744 = fmul fast float %2909, 0xBFEF110800000000
  %3745 = fmul fast float %3744, %3395
  %3746 = fadd fast float %3745, 1.000000e+00
  %3747 = fsub fast float %3746, %3742
  %3748 = fadd fast float %3747, %3743
  %3749 = fdiv fast float %3741, %3748
  %3750 = call float @dx.op.unary.f32(i32 7, float %3749)  ; Saturate(value)
  %3751 = fsub fast float %3750, %2909
  %3752 = fmul fast float %3751, %3687
  %3753 = fadd fast float %3752, %2909
  %3754 = fmul fast float %3690, %3501
  %3755 = fmul fast float %3690, %3502
  %3756 = fmul fast float %3690, %3503
  %3757 = fadd fast float %3754, %2905
  %3758 = fadd fast float %3755, %2906
  %3759 = fadd fast float %3756, %2907
  %3760 = fmul fast float %3693, %3529
  %3761 = fadd fast float %3760, %2911
  br label %3784

; <label>:3762                                    ; preds = %3720
  %3763 = icmp eq i32 %3676, 8
  br i1 %3763, label %3764, label %3784

; <label>:3764                                    ; preds = %3762
  %3765 = fmul fast float %3681, %3396
  %3766 = fmul fast float %3681, %3397
  %3767 = fadd fast float %3765, %2897
  %3768 = fadd fast float %3766, %2898
  %3769 = call float @dx.op.binary.f32(i32 36, float %2910, float %3398)  ; FMin(a,b)
  %3770 = fsub fast float %3769, %2910
  %3771 = fmul fast float %3770, %3684
  %3772 = fadd fast float %3771, %2910
  %3773 = fsub fast float %3395, %2909
  %3774 = fmul fast float %3687, %3773
  %3775 = fadd fast float %3774, %2909
  %3776 = fmul fast float %3690, %3501
  %3777 = fmul fast float %3690, %3502
  %3778 = fmul fast float %3690, %3503
  %3779 = fadd fast float %3776, %2905
  %3780 = fadd fast float %3777, %2906
  %3781 = fadd fast float %3778, %2907
  %3782 = fmul fast float %3693, %3529
  %3783 = fadd fast float %3782, %2911
  br label %3784

; <label>:3784                                    ; preds = %3764, %3762, %3722, %3695, %3667, %3094, %2913, %2896
  %3785 = phi float [ %2897, %3667 ], [ %2897, %3094 ], [ %2897, %2896 ], [ %2897, %2913 ], [ %3700, %3695 ], [ %3725, %3722 ], [ %2897, %3762 ], [ %3767, %3764 ]
  %3786 = phi float [ %2898, %3667 ], [ %2898, %3094 ], [ %2898, %2896 ], [ %2898, %2913 ], [ %3701, %3695 ], [ %3726, %3722 ], [ %2898, %3762 ], [ %3768, %3764 ]
  %3787 = phi float [ %3668, %3667 ], [ %2899, %3094 ], [ %2899, %2896 ], [ %2899, %2913 ], [ %3668, %3695 ], [ %3668, %3722 ], [ %3668, %3762 ], [ %3668, %3764 ]
  %3788 = phi float [ %3669, %3667 ], [ %2900, %3094 ], [ %2900, %2896 ], [ %2900, %2913 ], [ %3669, %3695 ], [ %3669, %3722 ], [ %3669, %3762 ], [ %3669, %3764 ]
  %3789 = phi float [ %3670, %3667 ], [ %2901, %3094 ], [ %2901, %2896 ], [ %2901, %2913 ], [ %3670, %3695 ], [ %3670, %3722 ], [ %3670, %3762 ], [ %3670, %3764 ]
  %3790 = phi float [ %3671, %3667 ], [ %2902, %3094 ], [ %2902, %2896 ], [ %2902, %2913 ], [ %3671, %3695 ], [ %3671, %3722 ], [ %3671, %3762 ], [ %3671, %3764 ]
  %3791 = phi float [ %3672, %3667 ], [ %2903, %3094 ], [ %2903, %2896 ], [ %2903, %2913 ], [ %3672, %3695 ], [ %3672, %3722 ], [ %3672, %3762 ], [ %3672, %3764 ]
  %3792 = phi float [ %3673, %3667 ], [ %2904, %3094 ], [ %2904, %2896 ], [ %2904, %2913 ], [ %3673, %3695 ], [ %3673, %3722 ], [ %3673, %3762 ], [ %3673, %3764 ]
  %3793 = phi float [ %2905, %3667 ], [ %2905, %3094 ], [ %2905, %2896 ], [ %2905, %2913 ], [ %3714, %3695 ], [ %3757, %3722 ], [ %2905, %3762 ], [ %3779, %3764 ]
  %3794 = phi float [ %2906, %3667 ], [ %2906, %3094 ], [ %2906, %2896 ], [ %2906, %2913 ], [ %3715, %3695 ], [ %3758, %3722 ], [ %2906, %3762 ], [ %3780, %3764 ]
  %3795 = phi float [ %2907, %3667 ], [ %2907, %3094 ], [ %2907, %2896 ], [ %2907, %2913 ], [ %3716, %3695 ], [ %3759, %3722 ], [ %2907, %3762 ], [ %3781, %3764 ]
  %3796 = phi float [ %3674, %3667 ], [ %2908, %3094 ], [ %2908, %2896 ], [ %2908, %2913 ], [ %3674, %3695 ], [ %3674, %3722 ], [ %3674, %3762 ], [ %3674, %3764 ]
  %3797 = phi float [ %2909, %3667 ], [ %2909, %3094 ], [ %2909, %2896 ], [ %2909, %2913 ], [ %3707, %3695 ], [ %3753, %3722 ], [ %2909, %3762 ], [ %3775, %3764 ]
  %3798 = phi float [ %2910, %3667 ], [ %2910, %3094 ], [ %2910, %2896 ], [ %2910, %2913 ], [ %3704, %3695 ], [ %3730, %3722 ], [ %2910, %3762 ], [ %3772, %3764 ]
  %3799 = phi float [ %2911, %3667 ], [ %2911, %3094 ], [ %2911, %2896 ], [ %2911, %2913 ], [ %3719, %3695 ], [ %3761, %3722 ], [ %2911, %3762 ], [ %3783, %3764 ]
  %3800 = phi float [ %3675, %3667 ], [ %2912, %3094 ], [ %2912, %2896 ], [ %2912, %2913 ], [ %3675, %3695 ], [ %3675, %3722 ], [ %3675, %3762 ], [ %3675, %3764 ]
  %3801 = add i32 %54, 360
  %3802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3803 = extractvalue %dx.types.ResRet.i32 %3802, 0
  %3804 = bitcast i32 %3803 to float
  %3805 = fcmp fast oge float %3804, 0.000000e+00
  %3806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3807 = extractvalue %dx.types.CBufRet.f32 %3806, 0
  %3808 = select i1 %3805, float %3804, float %3807
  %3809 = call float @dx.op.dot2.f32(i32 54, float %3785, float %3786, float %3785, float %3786)  ; Dot2(ax,ay,bx,by)
  %3810 = fmul fast float %3809, 0x3FE3333340000000
  %3811 = fsub fast float 1.000000e+00, %3810
  %3812 = call float @dx.op.dot3.f32(i32 55, float %3785, float %3786, float %3811, float %3785, float %3786, float %3811)  ; Dot3(ax,ay,az,bx,by,bz)
  %3813 = call float @dx.op.unary.f32(i32 25, float %3812)  ; Rsqrt(value)
  %3814 = fmul fast float %3813, %3785
  %3815 = fmul fast float %3813, %3786
  %3816 = fmul fast float %3811, %3813
  %3817 = fmul fast float %3816, %111
  %3818 = fmul fast float %3816, %112
  %3819 = fmul fast float %3816, %113
  %3820 = fmul fast float %3814, %79
  %3821 = fmul fast float %3814, %80
  %3822 = fmul fast float %3814, %81
  %3823 = fadd fast float %3817, %3820
  %3824 = fadd fast float %3818, %3821
  %3825 = fadd fast float %3819, %3822
  %3826 = fmul fast float %123, %3815
  %3827 = fmul fast float %124, %3815
  %3828 = fmul fast float %125, %3815
  %3829 = fadd fast float %3823, %3826
  %3830 = fadd fast float %3824, %3827
  %3831 = fadd fast float %3825, %3828
  %3832 = call float @dx.op.dot3.f32(i32 55, float %3829, float %3830, float %3831, float %3829, float %3830, float %3831)  ; Dot3(ax,ay,az,bx,by,bz)
  %3833 = call float @dx.op.unary.f32(i32 25, float %3832)  ; Rsqrt(value)
  %3834 = fmul fast float %3829, %3833
  %3835 = fmul fast float %3830, %3833
  %3836 = fmul fast float %3831, %3833
  %3837 = icmp eq i32 %55, 65535
  br i1 %3837, label %4383, label %3838

; <label>:3838                                    ; preds = %3784
  %3839 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %3840 = call float @dx.op.unary.f32(i32 83, float %57)  ; DerivCoarseX(value)
  %3841 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3842 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %3843 = call float @dx.op.unary.f32(i32 84, float %57)  ; DerivCoarseY(value)
  %3844 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3845 = fadd fast float %3839, %56
  %3846 = fadd fast float %3840, %57
  %3847 = fadd fast float %3841, %58
  %3848 = fadd fast float %3842, %56
  %3849 = fadd fast float %3843, %57
  %3850 = fadd fast float %3844, %58
  %3851 = mul i32 %55, 48
  %3852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  %3854 = extractvalue %dx.types.ResRet.f32 %3852, 1
  %3855 = extractvalue %dx.types.ResRet.f32 %3852, 2
  %3856 = add i32 %3851, 16
  %3857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3858 = extractvalue %dx.types.ResRet.f32 %3857, 0
  %3859 = extractvalue %dx.types.ResRet.f32 %3857, 1
  %3860 = extractvalue %dx.types.ResRet.f32 %3857, 2
  %3861 = add i32 %3851, 32
  %3862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.f32 %3862, 0
  %3864 = extractvalue %dx.types.ResRet.f32 %3862, 1
  %3865 = extractvalue %dx.types.ResRet.f32 %3862, 2
  %3866 = extractvalue %dx.types.ResRet.f32 %3862, 3
  %3867 = bitcast float %3866 to i32
  %3868 = fmul fast float %3853, %56
  %3869 = fmul fast float %3854, %57
  %3870 = fmul fast float %3855, %58
  %3871 = fsub fast float %3868, %3858
  %3872 = fsub fast float %3869, %3859
  %3873 = fsub fast float %3870, %3860
  %3874 = call float @dx.op.unary.f32(i32 7, float %3871)  ; Saturate(value)
  %3875 = call float @dx.op.unary.f32(i32 7, float %3872)  ; Saturate(value)
  %3876 = call float @dx.op.unary.f32(i32 7, float %3873)  ; Saturate(value)
  %3877 = fmul fast float %3874, %3863
  %3878 = fmul fast float %3875, %3864
  %3879 = fmul fast float %3876, %3865
  %3880 = fadd fast float %3863, -1.000000e+00
  %3881 = fadd fast float %3864, -1.000000e+00
  %3882 = fadd fast float %3865, -1.000000e+00
  %3883 = call float @dx.op.unary.f32(i32 27, float %3877)  ; Round_ni(value)
  %3884 = call float @dx.op.unary.f32(i32 27, float %3878)  ; Round_ni(value)
  %3885 = call float @dx.op.unary.f32(i32 27, float %3879)  ; Round_ni(value)
  %3886 = call float @dx.op.binary.f32(i32 36, float %3883, float %3880)  ; FMin(a,b)
  %3887 = call float @dx.op.binary.f32(i32 36, float %3884, float %3881)  ; FMin(a,b)
  %3888 = call float @dx.op.binary.f32(i32 36, float %3885, float %3882)  ; FMin(a,b)
  %3889 = fmul fast float %3888, %3864
  %3890 = fadd fast float %3889, %3887
  %3891 = fmul fast float %3890, %3863
  %3892 = fadd fast float %3891, %3886
  %3893 = fptosi float %3892 to i32
  %3894 = add nsw i32 %3893, %3867
  %3895 = shl nsw i32 %3894, 2
  %3896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3895, i32 undef)  ; BufferLoad(srv,index,wot)
  %3897 = extractvalue %dx.types.ResRet.i32 %3896, 0
  %3898 = lshr i32 %3897, 16
  %3899 = icmp eq i32 %3898, 0
  br i1 %3899, label %4349, label %3900

; <label>:3900                                    ; preds = %3838
  br label %3901

; <label>:3901                                    ; preds = %4025, %3900
  %3902 = phi i32 [ %3927, %4025 ], [ %3898, %3900 ]
  %3903 = phi float [ %4026, %4025 ], [ 0.000000e+00, %3900 ]
  %3904 = phi float [ %4027, %4025 ], [ %3808, %3900 ]
  %3905 = phi float [ %4028, %4025 ], [ %3800, %3900 ]
  %3906 = phi float [ %4029, %4025 ], [ %3793, %3900 ]
  %3907 = phi float [ %4030, %4025 ], [ %3794, %3900 ]
  %3908 = phi float [ %4031, %4025 ], [ %3795, %3900 ]
  %3909 = phi float [ %4032, %4025 ], [ 0.000000e+00, %3900 ]
  %3910 = phi float [ %4033, %4025 ], [ 0.000000e+00, %3900 ]
  %3911 = phi float [ %4034, %4025 ], [ %3790, %3900 ]
  %3912 = phi float [ %4035, %4025 ], [ %3791, %3900 ]
  %3913 = phi float [ %4036, %4025 ], [ %3792, %3900 ]
  %3914 = phi float [ %4037, %4025 ], [ %3834, %3900 ]
  %3915 = phi float [ %4038, %4025 ], [ %3835, %3900 ]
  %3916 = phi float [ %4039, %4025 ], [ %3836, %3900 ]
  %3917 = phi float [ %4040, %4025 ], [ %3798, %3900 ]
  %3918 = phi float [ %4041, %4025 ], [ %3797, %3900 ]
  %3919 = phi float [ %4042, %4025 ], [ 0.000000e+00, %3900 ]
  %3920 = phi float [ %4043, %4025 ], [ %3796, %3900 ]
  %3921 = phi float [ %4044, %4025 ], [ %3787, %3900 ]
  %3922 = phi float [ %4045, %4025 ], [ %3788, %3900 ]
  %3923 = phi float [ %4046, %4025 ], [ %3789, %3900 ]
  %3924 = shl nuw nsw i32 %3902, 2
  %3925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3926 = extractvalue %dx.types.ResRet.i32 %3925, 0
  %3927 = lshr i32 %3926, 16
  %3928 = shl i32 %3926, 8
  %3929 = and i32 %3928, 16776960
  %3930 = or i32 %3929, 48
  %3931 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3932 = extractvalue %dx.types.ResRet.f32 %3931, 0
  %3933 = extractvalue %dx.types.ResRet.f32 %3931, 1
  %3934 = extractvalue %dx.types.ResRet.f32 %3931, 2
  %3935 = or i32 %3929, 64
  %3936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3935, i32 undef)  ; BufferLoad(srv,index,wot)
  %3937 = extractvalue %dx.types.ResRet.i32 %3936, 0
  %3938 = extractvalue %dx.types.ResRet.i32 %3936, 1
  %3939 = or i32 %3929, 80
  %3940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3939, i32 undef)  ; BufferLoad(srv,index,wot)
  %3941 = extractvalue %dx.types.ResRet.f32 %3940, 2
  %3942 = extractvalue %dx.types.ResRet.f32 %3940, 3
  %3943 = or i32 %3929, 96
  %3944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3943, i32 undef)  ; BufferLoad(srv,index,wot)
  %3945 = extractvalue %dx.types.ResRet.f32 %3944, 0
  %3946 = extractvalue %dx.types.ResRet.f32 %3944, 1
  %3947 = extractvalue %dx.types.ResRet.f32 %3944, 2
  %3948 = extractvalue %dx.types.ResRet.f32 %3944, 3
  %3949 = or i32 %3929, 112
  %3950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3949, i32 undef)  ; BufferLoad(srv,index,wot)
  %3951 = extractvalue %dx.types.ResRet.f32 %3950, 2
  %3952 = or i32 %3929, 128
  %3953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3952, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.f32 %3953, 0
  %3955 = extractvalue %dx.types.ResRet.f32 %3953, 1
  %3956 = extractvalue %dx.types.ResRet.f32 %3953, 2
  %3957 = extractvalue %dx.types.ResRet.f32 %3953, 3
  %3958 = or i32 %3929, 144
  %3959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3958, i32 undef)  ; BufferLoad(srv,index,wot)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = extractvalue %dx.types.ResRet.f32 %3959, 1
  %3962 = extractvalue %dx.types.ResRet.f32 %3959, 2
  %3963 = extractvalue %dx.types.ResRet.f32 %3959, 3
  %3964 = or i32 %3929, 160
  %3965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %3966 = extractvalue %dx.types.ResRet.f32 %3965, 0
  %3967 = extractvalue %dx.types.ResRet.f32 %3965, 1
  %3968 = extractvalue %dx.types.ResRet.f32 %3965, 2
  %3969 = extractvalue %dx.types.ResRet.f32 %3965, 3
  %3970 = or i32 %3929, 192
  %3971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3970, i32 undef)  ; BufferLoad(srv,index,wot)
  %3972 = extractvalue %dx.types.ResRet.i32 %3971, 0
  %3973 = or i32 %3929, 208
  %3974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3975 = extractvalue %dx.types.ResRet.f32 %3974, 0
  %3976 = or i32 %3929, 248
  %3977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3976, i32 undef)  ; BufferLoad(srv,index,wot)
  %3978 = extractvalue %dx.types.ResRet.f32 %3977, 0
  %3979 = extractvalue %dx.types.ResRet.f32 %3977, 1
  %3980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3929, i32 undef)  ; BufferLoad(srv,index,wot)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = extractvalue %dx.types.ResRet.f32 %3980, 1
  %3983 = extractvalue %dx.types.ResRet.f32 %3980, 2
  %3984 = extractvalue %dx.types.ResRet.f32 %3980, 3
  %3985 = call float @dx.op.dot4.f32(i32 56, float %3981, float %3982, float %3983, float %3984, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3986 = or i32 %3929, 16
  %3987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3986, i32 undef)  ; BufferLoad(srv,index,wot)
  %3988 = extractvalue %dx.types.ResRet.f32 %3987, 0
  %3989 = extractvalue %dx.types.ResRet.f32 %3987, 1
  %3990 = extractvalue %dx.types.ResRet.f32 %3987, 2
  %3991 = extractvalue %dx.types.ResRet.f32 %3987, 3
  %3992 = call float @dx.op.dot4.f32(i32 56, float %3988, float %3989, float %3990, float %3991, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3993 = or i32 %3929, 32
  %3994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3993, i32 undef)  ; BufferLoad(srv,index,wot)
  %3995 = extractvalue %dx.types.ResRet.f32 %3994, 0
  %3996 = extractvalue %dx.types.ResRet.f32 %3994, 1
  %3997 = extractvalue %dx.types.ResRet.f32 %3994, 2
  %3998 = extractvalue %dx.types.ResRet.f32 %3994, 3
  %3999 = call float @dx.op.dot4.f32(i32 56, float %3995, float %3996, float %3997, float %3998, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4000 = call float @dx.op.unary.f32(i32 27, float %3985)  ; Round_ni(value)
  %4001 = call float @dx.op.unary.f32(i32 6, float %4000)  ; FAbs(value)
  %4002 = call float @dx.op.unary.f32(i32 27, float %3992)  ; Round_ni(value)
  %4003 = call float @dx.op.unary.f32(i32 6, float %4002)  ; FAbs(value)
  %4004 = call float @dx.op.unary.f32(i32 6, float %3999)  ; FAbs(value)
  %4005 = call float @dx.op.unary.f32(i32 27, float %4004)  ; Round_ni(value)
  %4006 = fadd fast float %4003, %4001
  %4007 = fadd fast float %4006, %4005
  %4008 = fcmp fast oeq float %4007, 0.000000e+00
  %4009 = call float @dx.op.dot4.f32(i32 56, float %3981, float %3982, float %3983, float %3984, float %3845, float %3846, float %3847, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4010 = call float @dx.op.dot4.f32(i32 56, float %3988, float %3989, float %3990, float %3991, float %3845, float %3846, float %3847, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4011 = call float @dx.op.dot4.f32(i32 56, float %3981, float %3982, float %3983, float %3984, float %3848, float %3849, float %3850, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4012 = call float @dx.op.dot4.f32(i32 56, float %3988, float %3989, float %3990, float %3991, float %3848, float %3849, float %3850, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4013 = fsub fast float %4009, %3985
  %4014 = fsub fast float %4011, %3985
  %4015 = fsub fast float %4010, %3992
  %4016 = fsub fast float %4012, %3992
  %4017 = call float @dx.op.dot3.f32(i32 55, float %3932, float %3933, float %3934, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4019 = extractvalue %dx.types.CBufRet.f32 %4018, 2
  %4020 = fadd fast float %4019, %4017
  %4021 = call float @dx.op.unary.f32(i32 7, float %4020)  ; Saturate(value)
  %4022 = extractvalue %dx.types.CBufRet.f32 %4018, 0
  %4023 = fcmp fast ogt float %4021, %4022
  %4024 = and i1 %4008, %4023
  br i1 %4024, label %4048, label %4025

; <label>:4025                                    ; preds = %4335, %4131, %4048, %3901
  %4026 = phi float [ %3903, %4048 ], [ %4134, %4131 ], [ %4134, %4335 ], [ %3903, %3901 ]
  %4027 = phi float [ %3904, %4048 ], [ %3904, %4131 ], [ %4311, %4335 ], [ %3904, %3901 ]
  %4028 = phi float [ %3905, %4048 ], [ %3905, %4131 ], [ %4309, %4335 ], [ %3905, %3901 ]
  %4029 = phi float [ %3906, %4048 ], [ %3906, %4131 ], [ %4287, %4335 ], [ %3906, %3901 ]
  %4030 = phi float [ %3907, %4048 ], [ %3907, %4131 ], [ %4288, %4335 ], [ %3907, %3901 ]
  %4031 = phi float [ %3908, %4048 ], [ %3908, %4131 ], [ %4289, %4335 ], [ %3908, %3901 ]
  %4032 = phi float [ %3909, %4048 ], [ %3909, %4131 ], [ %4258, %4335 ], [ %3909, %3901 ]
  %4033 = phi float [ %3910, %4048 ], [ %3910, %4131 ], [ %4256, %4335 ], [ %3910, %3901 ]
  %4034 = phi float [ %3911, %4048 ], [ %3911, %4131 ], [ %4345, %4335 ], [ %3911, %3901 ]
  %4035 = phi float [ %3912, %4048 ], [ %3912, %4131 ], [ %4346, %4335 ], [ %3912, %3901 ]
  %4036 = phi float [ %3913, %4048 ], [ %3913, %4131 ], [ %4347, %4335 ], [ %3913, %3901 ]
  %4037 = phi float [ %3914, %4048 ], [ %3914, %4131 ], [ %4237, %4335 ], [ %3914, %3901 ]
  %4038 = phi float [ %3915, %4048 ], [ %3915, %4131 ], [ %4238, %4335 ], [ %3915, %3901 ]
  %4039 = phi float [ %3916, %4048 ], [ %3916, %4131 ], [ %4239, %4335 ], [ %3916, %3901 ]
  %4040 = phi float [ %3917, %4048 ], [ %3917, %4131 ], [ %4267, %4335 ], [ %3917, %3901 ]
  %4041 = phi float [ %3918, %4048 ], [ %3918, %4131 ], [ %4264, %4335 ], [ %3918, %3901 ]
  %4042 = phi float [ %3919, %4048 ], [ %3919, %4131 ], [ %4261, %4335 ], [ %3919, %3901 ]
  %4043 = phi float [ %3920, %4048 ], [ %3920, %4131 ], [ %4254, %4335 ], [ %3920, %3901 ]
  %4044 = phi float [ %3921, %4048 ], [ %3921, %4131 ], [ %4249, %4335 ], [ %3921, %3901 ]
  %4045 = phi float [ %3922, %4048 ], [ %3922, %4131 ], [ %4250, %4335 ], [ %3922, %3901 ]
  %4046 = phi float [ %3923, %4048 ], [ %3923, %4131 ], [ %4251, %4335 ], [ %3923, %3901 ]
  %4047 = icmp eq i32 %3927, 0
  br i1 %4047, label %4348, label %3901

; <label>:4048                                    ; preds = %3901
  %4049 = extractvalue %dx.types.ResRet.f32 %3931, 3
  %4050 = extractvalue %dx.types.ResRet.f32 %3950, 3
  %4051 = extractvalue %dx.types.ResRet.f32 %3950, 1
  %4052 = extractvalue %dx.types.ResRet.f32 %3950, 0
  %4053 = extractvalue %dx.types.ResRet.f32 %3940, 1
  %4054 = extractvalue %dx.types.ResRet.f32 %3940, 0
  %4055 = extractvalue %dx.types.ResRet.i32 %3936, 3
  %4056 = extractvalue %dx.types.ResRet.i32 %3936, 2
  %4057 = bitcast float %4049 to i32
  %4058 = add i32 %4055, 0
  %4059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4058, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4061 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4059, %dx.types.Handle %4060, float %3985, float %3992, float undef, float undef, i32 0, i32 0, i32 undef, float %4013, float %4015, float undef, float %4014, float %4016, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4062 = extractvalue %dx.types.ResRet.f32 %4061, 0
  %4063 = fmul fast float %4062, %4054
  %4064 = fadd fast float %4063, %4053
  %4065 = call float @dx.op.unary.f32(i32 7, float %4064)  ; Saturate(value)
  %4066 = fmul fast float %3985, %3945
  %4067 = call float @dx.op.tertiary.f32(i32 46, float %3946, float %3992, float %4066)  ; FMad(a,b,c)
  %4068 = fadd fast float %4067, %4052
  %4069 = fmul fast float %3985, %3947
  %4070 = call float @dx.op.tertiary.f32(i32 46, float %3948, float %3992, float %4069)  ; FMad(a,b,c)
  %4071 = fadd fast float %4070, %4051
  %4072 = fmul fast float %4013, %3945
  %4073 = call float @dx.op.tertiary.f32(i32 46, float %3946, float %4015, float %4072)  ; FMad(a,b,c)
  %4074 = fmul fast float %4013, %3947
  %4075 = call float @dx.op.tertiary.f32(i32 46, float %3948, float %4015, float %4074)  ; FMad(a,b,c)
  %4076 = fmul fast float %4014, %3945
  %4077 = call float @dx.op.tertiary.f32(i32 46, float %3946, float %4016, float %4076)  ; FMad(a,b,c)
  %4078 = fmul fast float %4014, %3947
  %4079 = call float @dx.op.tertiary.f32(i32 46, float %3948, float %4016, float %4078)  ; FMad(a,b,c)
  %4080 = add i32 %4056, 0
  %4081 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4080, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4082 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4081, %dx.types.Handle %4060, float %4068, float %4071, float undef, float undef, i32 0, i32 0, i32 undef, float %4073, float %4075, float undef, float %4077, float %4079, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4083 = extractvalue %dx.types.ResRet.f32 %4082, 0
  %4084 = and i32 %4057, 1024
  %4085 = icmp ne i32 %4084, 0
  %4086 = fcmp fast ogt float %4083, 0x3FE0101020000000
  %4087 = uitofp i1 %4086 to float
  %4088 = select i1 %4085, float %4087, float %4083
  %4089 = and i32 %4057, 8192
  %4090 = icmp ne i32 %4089, 0
  %4091 = select i1 %4090, float %4050, float 1.000000e+00
  %4092 = fmul fast float %3985, 2.000000e+00
  %4093 = fadd fast float %4092, -1.000000e+00
  %4094 = call float @dx.op.unary.f32(i32 6, float %4093)  ; FAbs(value)
  %4095 = fmul fast float %4094, %3978
  %4096 = fsub fast float %4095, %3978
  %4097 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  %4098 = fmul fast float %3992, 2.000000e+00
  %4099 = fadd fast float %4098, -1.000000e+00
  %4100 = call float @dx.op.unary.f32(i32 6, float %4099)  ; FAbs(value)
  %4101 = fmul fast float %4100, %3979
  %4102 = fsub fast float %4101, %3979
  %4103 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4104 = fmul fast float %4004, %3941
  %4105 = fsub fast float %4104, %3941
  %4106 = call float @dx.op.unary.f32(i32 7, float %4105)  ; Saturate(value)
  %4107 = fmul fast float %4065, %4091
  %4108 = fmul fast float %4107, %4062
  %4109 = fmul fast float %4108, %4097
  %4110 = fmul fast float %4109, %4088
  %4111 = fmul fast float %4110, %4103
  %4112 = fmul fast float %4111, %4106
  %4113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4113, 1
  %4115 = extractvalue %dx.types.CBufRet.f32 %4113, 0
  %4116 = fsub fast float %4021, %4115
  %4117 = fmul fast float %4116, %4114
  %4118 = call float @dx.op.unary.f32(i32 7, float %4117)  ; Saturate(value)
  %4119 = fmul fast float %4112, %3942
  %4120 = fadd fast float %4112, %3942
  %4121 = fmul fast float %4120, %3951
  %4122 = fsub fast float %4121, %3951
  %4123 = call float @dx.op.unary.f32(i32 7, float %4122)  ; Saturate(value)
  %4124 = and i32 %4057, 128
  %4125 = icmp ne i32 %4124, 0
  %4126 = select i1 %4125, float %4123, float %4119
  %4127 = fmul fast float %4126, %4118
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 0
  %4130 = fcmp fast ugt float %4127, %4129
  br i1 %4130, label %4131, label %4025

; <label>:4131                                    ; preds = %4048
  %4132 = select i1 %4090, float %4127, float 0.000000e+00
  %4133 = fadd fast float %4132, %3903
  %4134 = call float @dx.op.unary.f32(i32 7, float %4133)  ; Saturate(value)
  br i1 %4090, label %4025, label %4135

; <label>:4135                                    ; preds = %4131
  %4136 = and i32 %4057, 4
  %4137 = and i32 %4057, 8
  %4138 = add i32 %3937, 0
  %4139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4138, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4141 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4139, %dx.types.Handle %4140, float %4068, float %4071, float undef, float undef, i32 0, i32 0, i32 undef, float %4073, float %4075, float undef, float %4077, float %4079, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4142 = extractvalue %dx.types.ResRet.f32 %4141, 0
  %4143 = extractvalue %dx.types.ResRet.f32 %4141, 1
  %4144 = extractvalue %dx.types.ResRet.f32 %4141, 2
  %4145 = extractvalue %dx.types.ResRet.f32 %4141, 3
  %4146 = bitcast float %3963 to i32
  %4147 = and i32 %4146, 255
  %4148 = uitofp i32 %4147 to float
  %4149 = lshr i32 %4146, 8
  %4150 = and i32 %4149, 255
  %4151 = uitofp i32 %4150 to float
  %4152 = fmul fast float %4145, %4148
  %4153 = fadd fast float %4152, %4151
  %4154 = fmul fast float %4153, 0x3F70101000000000
  %4155 = add i32 %3938, 0
  %4156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4155, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4157 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4156, %dx.types.Handle %4140, float %4068, float %4071, float undef, float undef, i32 0, i32 0, i32 undef, float %4073, float %4075, float undef, float %4077, float %4079, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4158 = extractvalue %dx.types.ResRet.f32 %4157, 0
  %4159 = extractvalue %dx.types.ResRet.f32 %4157, 1
  %4160 = extractvalue %dx.types.ResRet.f32 %4157, 2
  %4161 = extractvalue %dx.types.ResRet.f32 %4157, 3
  %4162 = bitcast float %3957 to i32
  %4163 = and i32 %4162, 255
  %4164 = uitofp i32 %4163 to float
  %4165 = lshr i32 %4162, 8
  %4166 = and i32 %4165, 255
  %4167 = uitofp i32 %4166 to float
  %4168 = lshr i32 %4162, 16
  %4169 = and i32 %4168, 255
  %4170 = uitofp i32 %4169 to float
  %4171 = fmul fast float %4170, 0x3F70101000000000
  %4172 = fmul fast float %4158, %4164
  %4173 = fadd fast float %4172, %4167
  %4174 = fmul fast float %4173, 0x3F70101000000000
  %4175 = fadd fast float %4159, -5.000000e-01
  %4176 = fadd fast float %4161, -5.000000e-01
  %4177 = fmul fast float %4175, %4171
  %4178 = fmul fast float %4176, %4171
  %4179 = fadd fast float %4177, 5.000000e-01
  %4180 = fadd fast float %4178, 5.000000e-01
  %4181 = fmul fast float %4142, %3966
  %4182 = fmul fast float %4143, %3967
  %4183 = fmul fast float %4144, %3968
  %4184 = fmul fast float %4179, 2.000000e+00
  %4185 = fadd fast float %4184, -1.000000e+00
  %4186 = fmul fast float %4180, 2.000000e+00
  %4187 = fadd fast float %4186, -1.000000e+00
  %4188 = fadd fast float %4185, %4187
  %4189 = fmul fast float %4188, 5.000000e-01
  %4190 = fsub fast float %4185, %4187
  %4191 = fmul fast float %4190, 5.000000e-01
  %4192 = call float @dx.op.unary.f32(i32 6, float %4189)  ; FAbs(value)
  %4193 = fsub fast float 1.000000e+00, %4192
  %4194 = call float @dx.op.unary.f32(i32 6, float %4191)  ; FAbs(value)
  %4195 = fsub fast float %4193, %4194
  %4196 = call float @dx.op.dot3.f32(i32 55, float %4189, float %4191, float %4195, float %4189, float %4191, float %4195)  ; Dot3(ax,ay,az,bx,by,bz)
  %4197 = call float @dx.op.unary.f32(i32 25, float %4196)  ; Rsqrt(value)
  %4198 = fmul fast float %4189, %4197
  %4199 = fmul fast float %4191, %4197
  %4200 = fmul fast float %4197, %4195
  %4201 = fmul fast float %4200, %3932
  %4202 = fmul fast float %4200, %3933
  %4203 = fmul fast float %4200, %3934
  %4204 = fmul fast float %4198, %3954
  %4205 = fmul fast float %4198, %3955
  %4206 = fmul fast float %4198, %3956
  %4207 = fadd fast float %4204, %4201
  %4208 = fadd fast float %4205, %4202
  %4209 = fadd fast float %4206, %4203
  %4210 = fmul fast float %4199, %3960
  %4211 = fmul fast float %4199, %3961
  %4212 = fmul fast float %4199, %3962
  %4213 = fadd fast float %4207, %4210
  %4214 = fadd fast float %4208, %4211
  %4215 = fadd fast float %4209, %4212
  %4216 = call float @dx.op.dot3.f32(i32 55, float %4213, float %4214, float %4215, float %4213, float %4214, float %4215)  ; Dot3(ax,ay,az,bx,by,bz)
  %4217 = call float @dx.op.unary.f32(i32 25, float %4216)  ; Rsqrt(value)
  %4218 = fmul fast float %4213, %4217
  %4219 = fmul fast float %4214, %4217
  %4220 = fmul fast float %4215, %4217
  %4221 = icmp ne i32 %4137, 0
  %4222 = select i1 %4221, float 1.000000e+00, float 0.000000e+00
  %4223 = fmul fast float %4127, %4222
  %4224 = and i32 %4057, 1
  %4225 = icmp eq i32 %4224, 0
  br i1 %4225, label %4226, label %4230

; <label>:4226                                    ; preds = %4135
  %4227 = fsub fast float %4218, %3914
  %4228 = fsub fast float %4219, %3915
  %4229 = fsub fast float %4220, %3916
  br label %4230

; <label>:4230                                    ; preds = %4226, %4135
  %4231 = phi float [ %4227, %4226 ], [ %4218, %4135 ]
  %4232 = phi float [ %4228, %4226 ], [ %4219, %4135 ]
  %4233 = phi float [ %4229, %4226 ], [ %4220, %4135 ]
  %4234 = fmul float %4233, %4223
  %4235 = fmul float %4232, %4223
  %4236 = fmul float %4231, %4223
  %4237 = fadd fast float %4236, %3914
  %4238 = fadd fast float %4235, %3915
  %4239 = fadd fast float %4234, %3916
  %4240 = icmp ne i32 %4136, 0
  %4241 = select i1 %4240, float 1.000000e+00, float 0.000000e+00
  %4242 = fmul fast float %4127, %4241
  %4243 = fsub fast float %4181, %3921
  %4244 = fsub fast float %4182, %3922
  %4245 = fsub fast float %4183, %3923
  %4246 = fmul fast float %4243, %4242
  %4247 = fmul fast float %4244, %4242
  %4248 = fmul fast float %4245, %4242
  %4249 = fadd fast float %4246, %3921
  %4250 = fadd fast float %4247, %3922
  %4251 = fadd fast float %4248, %3923
  %4252 = fsub fast float %4154, %3920
  %4253 = fmul fast float %4252, %4242
  %4254 = fadd fast float %4253, %3920
  %4255 = fmul fast float %4242, %3910
  %4256 = fsub fast float %3910, %4255
  %4257 = fmul fast float %4242, %3909
  %4258 = fsub fast float %3909, %4257
  %4259 = bitcast float %3975 to i32
  %4260 = fadd fast float %4127, %3919
  %4261 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4262 = fsub fast float %4174, %3918
  %4263 = fmul fast float %4262, %4223
  %4264 = fadd fast float %4263, %3918
  %4265 = fsub fast float %4160, %3917
  %4266 = fmul fast float %4265, %4223
  %4267 = fadd fast float %4266, %3917
  br i1 %4225, label %4276, label %4268

; <label>:4268                                    ; preds = %4230
  %4269 = and i32 %4057, 32768
  %4270 = icmp eq i32 %4269, 0
  br i1 %4270, label %4286, label %4271

; <label>:4271                                    ; preds = %4268
  %4272 = fmul fast float %4223, 1.270000e+02
  %4273 = fadd fast float %4272, %3906
  %4274 = fadd fast float %4272, %3907
  %4275 = fadd fast float %4272, %3908
  br label %4286

; <label>:4276                                    ; preds = %4230
  %4277 = fsub fast float 1.270000e+02, %3906
  %4278 = fsub fast float 1.270000e+02, %3907
  %4279 = fsub fast float 1.270000e+02, %3908
  %4280 = fmul fast float %4223, %4277
  %4281 = fmul fast float %4223, %4278
  %4282 = fmul fast float %4223, %4279
  %4283 = fadd fast float %4280, %3906
  %4284 = fadd fast float %4281, %3907
  %4285 = fadd fast float %4282, %3908
  br label %4286

; <label>:4286                                    ; preds = %4276, %4271, %4268
  %4287 = phi float [ %4273, %4271 ], [ %3906, %4268 ], [ %4283, %4276 ]
  %4288 = phi float [ %4274, %4271 ], [ %3907, %4268 ], [ %4284, %4276 ]
  %4289 = phi float [ %4275, %4271 ], [ %3908, %4268 ], [ %4285, %4276 ]
  %4290 = call float @dx.op.dot3.f32(i32 55, float %4181, float %4182, float %4183, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.f32 %4291, 0
  %4293 = extractvalue %dx.types.CBufRet.f32 %4291, 1
  %4294 = fmul fast float %4293, %4290
  %4295 = fadd fast float %4294, %4292
  %4296 = call float @dx.op.unary.f32(i32 7, float %4295)  ; Saturate(value)
  %4297 = bitcast float %3969 to i32
  %4298 = and i32 %4297, 65535
  %4299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4298)  ; LegacyF16ToF32(value)
  %4300 = lshr i32 %4297, 16
  %4301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4300)  ; LegacyF16ToF32(value)
  %4302 = fcmp fast oge float %4299, 0.000000e+00
  %4303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4303, 0
  %4305 = select i1 %4302, float %4299, float %4304
  %4306 = fadd fast float %4305, %4301
  %4307 = fsub fast float %4296, %3905
  %4308 = fmul fast float %4307, %4127
  %4309 = fadd fast float %4308, %3905
  %4310 = fmul fast float %4306, %4127
  %4311 = call float @dx.op.binary.f32(i32 35, float %3904, float %4310)  ; FMax(a,b)
  %4312 = and i32 %4057, 16
  %4313 = icmp eq i32 %4312, 0
  br i1 %4313, label %4335, label %4314

; <label>:4314                                    ; preds = %4286
  %4315 = add i32 %3972, 0
  %4316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4315, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4317 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4316, %dx.types.Handle %4140, float %4068, float %4071, float undef, float undef, i32 0, i32 0, i32 undef, float %4073, float %4075, float undef, float %4077, float %4079, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4318 = extractvalue %dx.types.ResRet.f32 %4317, 0
  %4319 = extractvalue %dx.types.ResRet.f32 %4317, 1
  %4320 = extractvalue %dx.types.ResRet.f32 %4317, 2
  %4321 = and i32 %4259, 65535
  %4322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4321)  ; LegacyF16ToF32(value)
  %4323 = fmul fast float %4318, %3966
  %4324 = fmul fast float %4319, %3967
  %4325 = fmul fast float %4320, %3968
  %4326 = and i32 %4057, 16384
  %4327 = icmp ne i32 %4326, 0
  %4328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4329 = extractvalue %dx.types.CBufRet.f32 %4328, 0
  %4330 = select i1 %4327, float %4329, float 1.000000e+00
  %4331 = fmul fast float %4330, %4322
  %4332 = fmul fast float %4323, %4331
  %4333 = fmul fast float %4324, %4331
  %4334 = fmul fast float %4325, %4331
  br label %4335

; <label>:4335                                    ; preds = %4314, %4286
  %4336 = phi float [ %4332, %4314 ], [ 0.000000e+00, %4286 ]
  %4337 = phi float [ %4333, %4314 ], [ 0.000000e+00, %4286 ]
  %4338 = phi float [ %4334, %4314 ], [ 0.000000e+00, %4286 ]
  %4339 = fsub fast float %4336, %3911
  %4340 = fsub fast float %4337, %3912
  %4341 = fsub fast float %4338, %3913
  %4342 = fmul fast float %4339, %4127
  %4343 = fmul fast float %4340, %4127
  %4344 = fmul fast float %4341, %4127
  %4345 = fadd fast float %4342, %3911
  %4346 = fadd fast float %4343, %3912
  %4347 = fadd fast float %4344, %3913
  br label %4025

; <label>:4348                                    ; preds = %4025
  br label %4349

; <label>:4349                                    ; preds = %4348, %3838
  %4350 = phi float [ 0.000000e+00, %3838 ], [ %4026, %4348 ]
  %4351 = phi float [ %3808, %3838 ], [ %4027, %4348 ]
  %4352 = phi float [ %3800, %3838 ], [ %4028, %4348 ]
  %4353 = phi float [ %3793, %3838 ], [ %4029, %4348 ]
  %4354 = phi float [ %3794, %3838 ], [ %4030, %4348 ]
  %4355 = phi float [ %3795, %3838 ], [ %4031, %4348 ]
  %4356 = phi float [ 0.000000e+00, %3838 ], [ %4032, %4348 ]
  %4357 = phi float [ 0.000000e+00, %3838 ], [ %4033, %4348 ]
  %4358 = phi float [ %3790, %3838 ], [ %4034, %4348 ]
  %4359 = phi float [ %3791, %3838 ], [ %4035, %4348 ]
  %4360 = phi float [ %3792, %3838 ], [ %4036, %4348 ]
  %4361 = phi float [ %3834, %3838 ], [ %4037, %4348 ]
  %4362 = phi float [ %3835, %3838 ], [ %4038, %4348 ]
  %4363 = phi float [ %3836, %3838 ], [ %4039, %4348 ]
  %4364 = phi float [ %3798, %3838 ], [ %4040, %4348 ]
  %4365 = phi float [ %3797, %3838 ], [ %4041, %4348 ]
  %4366 = phi float [ 0.000000e+00, %3838 ], [ %4042, %4348 ]
  %4367 = phi float [ %3796, %3838 ], [ %4043, %4348 ]
  %4368 = phi float [ %3787, %3838 ], [ %4044, %4348 ]
  %4369 = phi float [ %3788, %3838 ], [ %4045, %4348 ]
  %4370 = phi float [ %3789, %3838 ], [ %4046, %4348 ]
  %4371 = call float @dx.op.dot3.f32(i32 55, float %4361, float %4362, float %4363, float %4361, float %4362, float %4363)  ; Dot3(ax,ay,az,bx,by,bz)
  %4372 = call float @dx.op.unary.f32(i32 25, float %4371)  ; Rsqrt(value)
  %4373 = fmul fast float %4372, %4361
  %4374 = fmul fast float %4372, %4362
  %4375 = fmul fast float %4372, %4363
  %4376 = fadd fast float %4366, %1132
  %4377 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4378 = call float @dx.op.dot3.f32(i32 55, float %4373, float %4374, float %4375, float %4373, float %4374, float %4375)  ; Dot3(ax,ay,az,bx,by,bz)
  %4379 = call float @dx.op.unary.f32(i32 25, float %4378)  ; Rsqrt(value)
  %4380 = fmul fast float %4379, %4373
  %4381 = fmul fast float %4379, %4374
  %4382 = fmul fast float %4379, %4375
  br label %4383

; <label>:4383                                    ; preds = %4349, %3784
  %4384 = phi float [ %4380, %4349 ], [ %3834, %3784 ]
  %4385 = phi float [ %4381, %4349 ], [ %3835, %3784 ]
  %4386 = phi float [ %4382, %4349 ], [ %3836, %3784 ]
  %4387 = phi float [ %4368, %4349 ], [ %3787, %3784 ]
  %4388 = phi float [ %4369, %4349 ], [ %3788, %3784 ]
  %4389 = phi float [ %4370, %4349 ], [ %3789, %3784 ]
  %4390 = phi float [ %4358, %4349 ], [ %3790, %3784 ]
  %4391 = phi float [ %4359, %4349 ], [ %3791, %3784 ]
  %4392 = phi float [ %4360, %4349 ], [ %3792, %3784 ]
  %4393 = phi float [ %4353, %4349 ], [ %3793, %3784 ]
  %4394 = phi float [ %4354, %4349 ], [ %3794, %3784 ]
  %4395 = phi float [ %4355, %4349 ], [ %3795, %3784 ]
  %4396 = phi float [ %4367, %4349 ], [ %3796, %3784 ]
  %4397 = phi float [ %4377, %4349 ], [ %1132, %3784 ]
  %4398 = phi float [ %4365, %4349 ], [ %3797, %3784 ]
  %4399 = phi float [ %4364, %4349 ], [ %3798, %3784 ]
  %4400 = phi float [ %4357, %4349 ], [ 0.000000e+00, %3784 ]
  %4401 = phi float [ %4356, %4349 ], [ 0.000000e+00, %3784 ]
  %4402 = phi float [ %4350, %4349 ], [ 0.000000e+00, %3784 ]
  %4403 = phi float [ %4351, %4349 ], [ %3808, %3784 ]
  %4404 = phi float [ %4352, %4349 ], [ %3800, %3784 ]
  %4405 = fadd fast float %4396, 0xBFB99999A0000000
  %4406 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4407 = fmul fast float %4406, 0x3FF1C71C80000000
  %4408 = call float @dx.op.binary.f32(i32 36, float %4396, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4409 = fsub fast float 1.000000e+00, %4407
  %4410 = call float @dx.op.unary.f32(i32 7, float %4409)  ; Saturate(value)
  %4411 = fmul fast float %4410, %4387
  %4412 = fmul fast float %4410, %4388
  %4413 = fmul fast float %4410, %4389
  %4414 = call float @dx.op.unary.f32(i32 7, float %4411)  ; Saturate(value)
  %4415 = call float @dx.op.unary.f32(i32 7, float %4412)  ; Saturate(value)
  %4416 = call float @dx.op.unary.f32(i32 7, float %4413)  ; Saturate(value)
  %4417 = fmul fast float %4407, %4387
  %4418 = fmul fast float %4407, %4388
  %4419 = fmul fast float %4407, %4389
  %4420 = fadd fast float %4417, %4408
  %4421 = fadd fast float %4418, %4408
  %4422 = fadd fast float %4419, %4408
  %4423 = call float @dx.op.unary.f32(i32 7, float %4420)  ; Saturate(value)
  %4424 = call float @dx.op.unary.f32(i32 7, float %4421)  ; Saturate(value)
  %4425 = call float @dx.op.unary.f32(i32 7, float %4422)  ; Saturate(value)
  %4426 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4427 = call float @dx.op.binary.f32(i32 36, float %4393, float 1.270000e+02)  ; FMin(a,b)
  %4428 = call float @dx.op.binary.f32(i32 36, float %4394, float 1.270000e+02)  ; FMin(a,b)
  %4429 = call float @dx.op.binary.f32(i32 36, float %4395, float 1.270000e+02)  ; FMin(a,b)
  %4430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4431 = extractvalue %dx.types.CBufRet.i32 %4430, 3
  %4432 = and i32 %4431, 8
  %4433 = icmp ne i32 %4432, 0
  %4434 = call float @dx.op.binary.f32(i32 35, float %4414, float %4387)  ; FMax(a,b)
  %4435 = call float @dx.op.binary.f32(i32 35, float %4415, float %4387)  ; FMax(a,b)
  %4436 = call float @dx.op.binary.f32(i32 35, float %4416, float %4387)  ; FMax(a,b)
  %4437 = call float @dx.op.dot3.f32(i32 55, float %4414, float %4415, float %4416, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4438 = select i1 %250, float %4387, float %4414
  %4439 = select i1 %250, float %4437, float %4415
  %4440 = select i1 %250, float 1.000000e+00, float %4416
  %4441 = select i1 %4433, float %4434, float %4438
  %4442 = select i1 %4433, float %4435, float %4439
  %4443 = select i1 %4433, float %4436, float %4440
  %4444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4445 = extractvalue %dx.types.CBufRet.f32 %4444, 0
  %4446 = extractvalue %dx.types.CBufRet.f32 %4444, 1
  %4447 = extractvalue %dx.types.CBufRet.f32 %4444, 2
  %4448 = fadd fast float %4445, %191
  %4449 = fadd fast float %4446, %192
  %4450 = fadd fast float %4447, %193
  %4451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4452 = extractvalue %dx.types.CBufRet.f32 %4451, 0
  %4453 = extractvalue %dx.types.CBufRet.f32 %4451, 1
  %4454 = fsub fast float %4448, %4452
  %4455 = fsub fast float %4449, %4453
  %4456 = fmul fast float %4454, %4454
  %4457 = fmul fast float %4455, %4455
  %4458 = fadd fast float %4456, %4457
  %4459 = call float @dx.op.unary.f32(i32 24, float %4458)  ; Sqrt(value)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4451, 2
  %4461 = fcmp fast olt float %4459, %4460
  br i1 %4461, label %4462, label %4529

; <label>:4462                                    ; preds = %4383
  %4463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4464 = extractvalue %dx.types.CBufRet.f32 %4463, 0
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 0
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 0
  %4469 = extractvalue %dx.types.CBufRet.f32 %4463, 1
  %4470 = extractvalue %dx.types.CBufRet.f32 %4465, 1
  %4471 = extractvalue %dx.types.CBufRet.f32 %4467, 1
  %4472 = extractvalue %dx.types.CBufRet.f32 %4463, 3
  %4473 = extractvalue %dx.types.CBufRet.f32 %4465, 3
  %4474 = extractvalue %dx.types.CBufRet.f32 %4467, 3
  %4475 = fadd fast float %4472, %4448
  %4476 = fadd fast float %4473, %4449
  %4477 = fadd fast float %4474, %4450
  %4478 = fmul fast float %4475, %4464
  %4479 = call float @dx.op.tertiary.f32(i32 46, float %4476, float %4466, float %4478)  ; FMad(a,b,c)
  %4480 = call float @dx.op.tertiary.f32(i32 46, float %4477, float %4468, float %4479)  ; FMad(a,b,c)
  %4481 = fmul fast float %4475, %4469
  %4482 = call float @dx.op.tertiary.f32(i32 46, float %4476, float %4470, float %4481)  ; FMad(a,b,c)
  %4483 = call float @dx.op.tertiary.f32(i32 46, float %4477, float %4471, float %4482)  ; FMad(a,b,c)
  %4484 = fsub fast float %4480, %4472
  %4485 = fsub fast float %4483, %4473
  %4486 = fsub fast float %4484, %4452
  %4487 = fadd fast float %4486, %4460
  %4488 = fsub fast float %4485, %4453
  %4489 = fadd fast float %4488, %4460
  %4490 = extractvalue %dx.types.CBufRet.f32 %4451, 3
  %4491 = fmul fast float %4487, %4490
  %4492 = fmul fast float %4489, %4490
  %4493 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4494 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4495 = fsub fast float 1.000000e+00, %4493
  %4496 = fsub fast float 1.000000e+00, %4494
  %4497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %4495, float %4496, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4498 = extractvalue %dx.types.ResRet.f32 %4497, 0
  %4499 = fcmp fast ugt float %4498, 0.000000e+00
  br i1 %4499, label %4500, label %4803

; <label>:4500                                    ; preds = %4462
  %4501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4502 = extractvalue %dx.types.CBufRet.f32 %4501, 2
  %4503 = fmul fast float %4502, %4498
  %4504 = extractvalue %dx.types.CBufRet.f32 %4501, 3
  %4505 = fadd fast float %4504, %4503
  %4506 = extractvalue %dx.types.CBufRet.f32 %4467, 2
  %4507 = fadd fast float %4505, %4474
  %4508 = fmul fast float %4480, %4468
  %4509 = call float @dx.op.tertiary.f32(i32 46, float %4483, float %4471, float %4508)  ; FMad(a,b,c)
  %4510 = call float @dx.op.tertiary.f32(i32 46, float %4507, float %4506, float %4509)  ; FMad(a,b,c)
  %4511 = fsub fast float %4510, %4474
  %4512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4513 = extractvalue %dx.types.CBufRet.f32 %4512, 2
  %4514 = fsub fast float %4511, %4513
  %4515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4495, float %4496, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4516 = extractvalue %dx.types.ResRet.f32 %4515, 0
  %4517 = extractvalue %dx.types.ResRet.f32 %4515, 1
  %4518 = extractvalue %dx.types.ResRet.f32 %4515, 2
  %4519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4495, float %4496, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4520 = extractvalue %dx.types.ResRet.f32 %4519, 0
  %4521 = extractvalue %dx.types.ResRet.f32 %4519, 1
  %4522 = extractvalue %dx.types.ResRet.f32 %4519, 2
  %4523 = fadd fast float %4520, %4516
  %4524 = fmul fast float %4523, 0x3F847AE140000000
  %4525 = fadd fast float %4521, %4517
  %4526 = fmul fast float %4525, 0x3F847AE140000000
  %4527 = fadd fast float %4522, %4518
  %4528 = fmul fast float %4527, 0x3F847AE140000000
  br label %4803

; <label>:4529                                    ; preds = %4383
  %4530 = and i32 %229, 1
  %4531 = icmp eq i32 %4530, 0
  br i1 %4531, label %4803, label %4532

; <label>:4532                                    ; preds = %4529
  %4533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4534 = extractvalue %dx.types.CBufRet.f32 %4533, 0
  %4535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4536 = extractvalue %dx.types.CBufRet.f32 %4535, 0
  %4537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4538 = extractvalue %dx.types.CBufRet.f32 %4537, 0
  %4539 = extractvalue %dx.types.CBufRet.f32 %4533, 1
  %4540 = extractvalue %dx.types.CBufRet.f32 %4535, 1
  %4541 = extractvalue %dx.types.CBufRet.f32 %4537, 1
  %4542 = extractvalue %dx.types.CBufRet.f32 %4533, 3
  %4543 = extractvalue %dx.types.CBufRet.f32 %4535, 3
  %4544 = extractvalue %dx.types.CBufRet.f32 %4537, 3
  %4545 = fadd fast float %4542, %4448
  %4546 = fadd fast float %4543, %4449
  %4547 = fadd fast float %4544, %4450
  %4548 = fmul fast float %4545, %4534
  %4549 = call float @dx.op.tertiary.f32(i32 46, float %4546, float %4536, float %4548)  ; FMad(a,b,c)
  %4550 = call float @dx.op.tertiary.f32(i32 46, float %4547, float %4538, float %4549)  ; FMad(a,b,c)
  %4551 = fmul fast float %4545, %4539
  %4552 = call float @dx.op.tertiary.f32(i32 46, float %4546, float %4540, float %4551)  ; FMad(a,b,c)
  %4553 = call float @dx.op.tertiary.f32(i32 46, float %4547, float %4541, float %4552)  ; FMad(a,b,c)
  %4554 = fsub fast float %4550, %4542
  %4555 = fsub fast float %4553, %4543
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 0
  %4558 = extractvalue %dx.types.CBufRet.f32 %4556, 1
  %4559 = extractvalue %dx.types.CBufRet.f32 %4556, 2
  %4560 = extractvalue %dx.types.CBufRet.f32 %4556, 3
  %4561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.f32 %4561, 3
  %4563 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4564 = extractvalue %dx.types.CBufRet.i32 %4563, 0
  %4565 = extractvalue %dx.types.CBufRet.i32 %4563, 1
  %4566 = udiv i32 %4565, %4564
  %4567 = fsub fast float %4554, %4557
  %4568 = fsub fast float %4555, %4558
  %4569 = call float @dx.op.binary.f32(i32 35, float %4567, float 0.000000e+00)  ; FMax(a,b)
  %4570 = call float @dx.op.binary.f32(i32 35, float %4568, float 0.000000e+00)  ; FMax(a,b)
  %4571 = call float @dx.op.binary.f32(i32 36, float %4569, float %4559)  ; FMin(a,b)
  %4572 = call float @dx.op.binary.f32(i32 36, float %4570, float %4560)  ; FMin(a,b)
  %4573 = add i32 %4564, -1
  %4574 = add i32 %4566, -1
  %4575 = fmul fast float %4571, %4562
  %4576 = fmul fast float %4572, %4562
  %4577 = fptoui float %4575 to i32
  %4578 = fptoui float %4576 to i32
  %4579 = call i32 @dx.op.binary.i32(i32 40, i32 %4577, i32 %4573)  ; UMin(a,b)
  %4580 = call i32 @dx.op.binary.i32(i32 40, i32 %4578, i32 %4574)  ; UMin(a,b)
  %4581 = mul i32 %4580, %4564
  %4582 = add i32 %4581, %4579
  %4583 = shl i32 %4582, 2
  %4584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4585 = extractvalue %dx.types.ResRet.i32 %4584, 0
  %4586 = icmp eq i32 %4585, -1
  br i1 %4586, label %4803, label %4587

; <label>:4587                                    ; preds = %4532
  %4588 = mul i32 %4585, 148
  %4589 = add i32 %4588, 4
  %4590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4589, i32 undef)  ; BufferLoad(srv,index,wot)
  %4591 = extractvalue %dx.types.ResRet.f32 %4590, 0
  %4592 = add i32 %4588, 8
  %4593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = add i32 %4588, 36
  %4596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4595, i32 undef)  ; BufferLoad(srv,index,wot)
  %4597 = extractvalue %dx.types.ResRet.f32 %4596, 0
  %4598 = add i32 %4588, 60
  %4599 = add i32 %4588, 92
  %4600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4599, i32 undef)  ; BufferLoad(srv,index,wot)
  %4601 = extractvalue %dx.types.ResRet.i32 %4600, 0
  %4602 = add i32 %4588, 116
  %4603 = fsub fast float %4554, %4591
  %4604 = fsub fast float %4555, %4594
  %4605 = fmul fast float %4562, %4603
  %4606 = fmul fast float %4562, %4604
  %4607 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4608 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4609 = fsub fast float 1.000000e+00, %4608
  %4610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4611 = extractvalue %dx.types.CBufRet.f32 %4610, 2
  %4612 = call float @dx.op.unary.f32(i32 83, float %4607)  ; DerivCoarseX(value)
  %4613 = call float @dx.op.unary.f32(i32 83, float %4609)  ; DerivCoarseX(value)
  %4614 = call float @dx.op.unary.f32(i32 84, float %4607)  ; DerivCoarseY(value)
  %4615 = call float @dx.op.unary.f32(i32 84, float %4609)  ; DerivCoarseY(value)
  %4616 = fmul fast float %4612, %4611
  %4617 = fmul fast float %4613, %4611
  %4618 = fmul fast float %4614, %4611
  %4619 = fmul fast float %4615, %4611
  %4620 = call float @dx.op.dot2.f32(i32 54, float %4618, float %4619, float %4618, float %4619)  ; Dot2(ax,ay,bx,by)
  %4621 = call float @dx.op.dot2.f32(i32 54, float %4616, float %4617, float %4616, float %4617)  ; Dot2(ax,ay,bx,by)
  %4622 = call float @dx.op.binary.f32(i32 35, float %4621, float %4620)  ; FMax(a,b)
  %4623 = call float @dx.op.unary.f32(i32 23, float %4622)  ; Log(value)
  %4624 = fmul fast float %4623, 5.000000e-01
  %4625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.f32 %4625, 1
  %4627 = fadd fast float %4626, %4624
  %4628 = call float @dx.op.binary.f32(i32 35, float %4627, float 0.000000e+00)  ; FMax(a,b)
  %4629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4630 = extractvalue %dx.types.CBufRet.f32 %4629, 3
  %4631 = fadd fast float %4630, %4628
  %4632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4632, 3
  %4634 = fadd fast float %4631, %4633
  %4635 = add i32 %4601, 0
  %4636 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4635, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4637 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4636, i32 0)  ; GetDimensions(handle,mipLevel)
  %4638 = extractvalue %dx.types.Dimensions %4637, 0
  %4639 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4638)  ; FirstbitLo(value)
  %4640 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4641 = extractvalue %dx.types.CBufRet.i32 %4640, 1
  %4642 = sub nsw i32 %4641, %4639
  %4643 = sitofp i32 %4642 to float
  %4644 = fsub fast float %4634, %4643
  %4645 = call float @dx.op.binary.f32(i32 35, float %4644, float 0.000000e+00)  ; FMax(a,b)
  %4646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4636, %dx.types.Handle %46, float %4607, float %4609, float %4597, float undef, i32 0, i32 0, i32 undef, float %4645)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4647 = extractvalue %dx.types.ResRet.f32 %4646, 0
  %4648 = fcmp ule float %4647, 0x3FE0101020000000
  %4649 = extractvalue %dx.types.CBufRet.i32 %4640, 0
  %4650 = and i32 %4649, 128
  %4651 = icmp ne i32 %4650, 0
  %4652 = and i1 %4648, %4651
  br i1 %4652, label %4803, label %4653

; <label>:4653                                    ; preds = %4587
  %4654 = add i32 %4588, 20
  %4655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4654, i32 undef)  ; BufferLoad(srv,index,wot)
  %4656 = extractvalue %dx.types.ResRet.f32 %4655, 0
  %4657 = add i32 %4588, 24
  %4658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4657, i32 undef)  ; BufferLoad(srv,index,wot)
  %4659 = extractvalue %dx.types.ResRet.f32 %4658, 0
  %4660 = add i32 %4588, 40
  %4661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4660, i32 undef)  ; BufferLoad(srv,index,wot)
  %4662 = extractvalue %dx.types.ResRet.f32 %4661, 0
  %4663 = add i32 %4588, 96
  %4664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4663, i32 undef)  ; BufferLoad(srv,index,wot)
  %4665 = extractvalue %dx.types.ResRet.i32 %4664, 0
  %4666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4667 = extractvalue %dx.types.CBufRet.f32 %4666, 2
  %4668 = fmul fast float %4667, %4607
  %4669 = fmul fast float %4667, %4609
  %4670 = extractvalue %dx.types.CBufRet.f32 %4666, 3
  %4671 = fadd fast float %4668, %4670
  %4672 = fadd fast float %4669, %4670
  %4673 = add i32 %4665, 0
  %4674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4673, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4675 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4674, i32 0)  ; GetDimensions(handle,mipLevel)
  %4676 = extractvalue %dx.types.Dimensions %4675, 0
  %4677 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4676)  ; FirstbitLo(value)
  %4678 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4679 = extractvalue %dx.types.CBufRet.i32 %4678, 1
  %4680 = sub nsw i32 %4679, %4677
  %4681 = sitofp i32 %4680 to float
  %4682 = fsub fast float %4631, %4681
  %4683 = call float @dx.op.binary.f32(i32 35, float %4682, float 0.000000e+00)  ; FMax(a,b)
  %4684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4674, %dx.types.Handle %46, float %4671, float %4672, float %4662, float undef, i32 0, i32 0, i32 undef, float %4683)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4685 = extractvalue %dx.types.ResRet.f32 %4684, 0
  %4686 = fmul fast float %4685, %4656
  %4687 = fadd fast float %4686, %4659
  %4688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4689 = extractvalue %dx.types.CBufRet.f32 %4688, 0
  %4690 = extractvalue %dx.types.CBufRet.f32 %4688, 1
  %4691 = extractvalue %dx.types.CBufRet.f32 %4688, 2
  %4692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4693 = extractvalue %dx.types.CBufRet.f32 %4692, 3
  %4694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4695 = extractvalue %dx.types.CBufRet.f32 %4694, 3
  %4696 = extractvalue %dx.types.CBufRet.f32 %4688, 3
  %4697 = fadd fast float %4693, %4554
  %4698 = fadd fast float %4695, %4555
  %4699 = fadd fast float %4687, %4696
  %4700 = fmul fast float %4697, %4689
  %4701 = call float @dx.op.tertiary.f32(i32 46, float %4698, float %4690, float %4700)  ; FMad(a,b,c)
  %4702 = call float @dx.op.tertiary.f32(i32 46, float %4699, float %4691, float %4701)  ; FMad(a,b,c)
  %4703 = fsub fast float %4702, %4696
  %4704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4705 = extractvalue %dx.types.CBufRet.f32 %4704, 2
  %4706 = fsub fast float %4703, %4705
  %4707 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4708 = extractvalue %dx.types.CBufRet.i32 %4707, 0
  %4709 = call i32 @dx.op.binary.i32(i32 40, i32 %4585, i32 %4708)  ; UMin(a,b)
  %4710 = mul i32 %4709, 36
  %4711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4710, i32 undef)  ; BufferLoad(srv,index,wot)
  %4712 = extractvalue %dx.types.ResRet.i32 %4711, 0
  %4713 = add i32 %4710, 4
  %4714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4715 = extractvalue %dx.types.CBufRet.f32 %4714, 0
  %4716 = fmul fast float %4715, %4607
  %4717 = fmul fast float %4715, %4609
  %4718 = extractvalue %dx.types.CBufRet.f32 %4714, 1
  %4719 = fadd fast float %4716, %4718
  %4720 = fadd fast float %4717, %4718
  %4721 = icmp eq i32 %4712, 0
  br i1 %4721, label %4790, label %4722

; <label>:4722                                    ; preds = %4653
  br label %4723

; <label>:4723                                    ; preds = %4780, %4722
  %4724 = phi float [ %4781, %4780 ], [ 0.000000e+00, %4722 ]
  %4725 = phi float [ %4782, %4780 ], [ 0.000000e+00, %4722 ]
  %4726 = phi float [ %4783, %4780 ], [ 0.000000e+00, %4722 ]
  %4727 = phi float [ %4784, %4780 ], [ 0.000000e+00, %4722 ]
  %4728 = phi float [ %4785, %4780 ], [ 0.000000e+00, %4722 ]
  %4729 = phi float [ %4786, %4780 ], [ 0.000000e+00, %4722 ]
  %4730 = phi i32 [ %4787, %4780 ], [ 0, %4722 ]
  %4731 = shl i32 %4730, 2
  %4732 = add i32 %4598, %4731
  %4733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4732, i32 undef)  ; BufferLoad(srv,index,wot)
  %4734 = extractvalue %dx.types.ResRet.f32 %4733, 0
  %4735 = add i32 %4602, %4731
  %4736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4735, i32 undef)  ; BufferLoad(srv,index,wot)
  %4737 = extractvalue %dx.types.ResRet.i32 %4736, 0
  %4738 = add i32 %4737, 0
  %4739 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4738, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4740 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4739, i32 0)  ; GetDimensions(handle,mipLevel)
  %4741 = extractvalue %dx.types.Dimensions %4740, 0
  %4742 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4741)  ; FirstbitLo(value)
  %4743 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4744 = extractvalue %dx.types.CBufRet.i32 %4743, 1
  %4745 = sub nsw i32 %4744, %4742
  %4746 = sitofp i32 %4745 to float
  %4747 = fsub fast float %4631, %4746
  %4748 = call float @dx.op.binary.f32(i32 35, float %4747, float 0.000000e+00)  ; FMax(a,b)
  %4749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4739, %dx.types.Handle %46, float %4719, float %4720, float %4734, float undef, i32 0, i32 0, i32 undef, float %4748)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4750 = extractvalue %dx.types.ResRet.f32 %4749, 0
  %4751 = fcmp fast ogt float %4750, 0.000000e+00
  br i1 %4751, label %4752, label %4780

; <label>:4752                                    ; preds = %4723
  %4753 = add i32 %4713, %4731
  %4754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4753, i32 undef)  ; BufferLoad(srv,index,wot)
  %4755 = extractvalue %dx.types.ResRet.i32 %4754, 0
  %4756 = and i32 %4755, 32767
  %4757 = mul nuw nsw i32 %4756, 928
  %4758 = add nuw nsw i32 %4757, 48
  %4759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4758, i32 undef)  ; BufferLoad(srv,index,wot)
  %4760 = extractvalue %dx.types.ResRet.f32 %4759, 0
  %4761 = extractvalue %dx.types.ResRet.f32 %4759, 1
  %4762 = extractvalue %dx.types.ResRet.f32 %4759, 2
  %4763 = add nuw nsw i32 %4757, 60
  %4764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4763, i32 undef)  ; BufferLoad(srv,index,wot)
  %4765 = extractvalue %dx.types.ResRet.f32 %4764, 0
  %4766 = extractvalue %dx.types.ResRet.f32 %4764, 1
  %4767 = extractvalue %dx.types.ResRet.f32 %4764, 2
  %4768 = fmul fast float %4760, %4750
  %4769 = fmul fast float %4761, %4750
  %4770 = fmul fast float %4762, %4750
  %4771 = fadd fast float %4768, %4724
  %4772 = fadd fast float %4769, %4725
  %4773 = fadd fast float %4770, %4726
  %4774 = fmul fast float %4765, %4750
  %4775 = fmul fast float %4766, %4750
  %4776 = fmul fast float %4767, %4750
  %4777 = fadd fast float %4774, %4727
  %4778 = fadd fast float %4775, %4728
  %4779 = fadd fast float %4776, %4729
  br label %4780

; <label>:4780                                    ; preds = %4752, %4723
  %4781 = phi float [ %4771, %4752 ], [ %4724, %4723 ]
  %4782 = phi float [ %4772, %4752 ], [ %4725, %4723 ]
  %4783 = phi float [ %4773, %4752 ], [ %4726, %4723 ]
  %4784 = phi float [ %4777, %4752 ], [ %4727, %4723 ]
  %4785 = phi float [ %4778, %4752 ], [ %4728, %4723 ]
  %4786 = phi float [ %4779, %4752 ], [ %4729, %4723 ]
  %4787 = add nuw i32 %4730, 1
  %4788 = icmp eq i32 %4787, %4712
  br i1 %4788, label %4789, label %4723

; <label>:4789                                    ; preds = %4780
  br label %4790

; <label>:4790                                    ; preds = %4789, %4653
  %4791 = phi float [ 0.000000e+00, %4653 ], [ %4781, %4789 ]
  %4792 = phi float [ 0.000000e+00, %4653 ], [ %4782, %4789 ]
  %4793 = phi float [ 0.000000e+00, %4653 ], [ %4783, %4789 ]
  %4794 = phi float [ 0.000000e+00, %4653 ], [ %4784, %4789 ]
  %4795 = phi float [ 0.000000e+00, %4653 ], [ %4785, %4789 ]
  %4796 = phi float [ 0.000000e+00, %4653 ], [ %4786, %4789 ]
  %4797 = fadd fast float %4794, %4791
  %4798 = fmul fast float %4797, 0x3F847AE140000000
  %4799 = fadd fast float %4795, %4792
  %4800 = fmul fast float %4799, 0x3F847AE140000000
  %4801 = fadd fast float %4796, %4793
  %4802 = fmul fast float %4801, 0x3F847AE140000000
  br label %4803

; <label>:4803                                    ; preds = %4790, %4587, %4532, %4529, %4500, %4462
  %4804 = phi float [ %4514, %4500 ], [ -1.310720e+05, %4462 ], [ %4706, %4790 ], [ -1.310720e+05, %4532 ], [ -1.310720e+05, %4587 ], [ -1.310720e+05, %4529 ]
  %4805 = phi float [ %4524, %4500 ], [ 0.000000e+00, %4462 ], [ %4798, %4790 ], [ 0.000000e+00, %4532 ], [ 0.000000e+00, %4587 ], [ 0.000000e+00, %4529 ]
  %4806 = phi float [ %4526, %4500 ], [ 0.000000e+00, %4462 ], [ %4800, %4790 ], [ 0.000000e+00, %4532 ], [ 0.000000e+00, %4587 ], [ 0.000000e+00, %4529 ]
  %4807 = phi float [ %4528, %4500 ], [ 0.000000e+00, %4462 ], [ %4802, %4790 ], [ 0.000000e+00, %4532 ], [ 0.000000e+00, %4587 ], [ 0.000000e+00, %4529 ]
  %4808 = phi i1 [ true, %4500 ], [ false, %4462 ], [ true, %4790 ], [ false, %4532 ], [ false, %4587 ], [ false, %4529 ]
  %4809 = and i32 %229, 3
  %4810 = icmp eq i32 %4809, 1
  %4811 = select i1 %4810, float 1.000000e+00, float 0.000000e+00
  %4812 = fsub fast float %4804, %193
  %4813 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4814 = select i1 %4808, float %4813, float 1.000000e+00
  %4815 = fmul fast float %4814, %4811
  %4816 = icmp eq i32 %4809, 3
  %4817 = select i1 %4816, float 1.000000e+00, float %4815
  %4818 = call float @dx.op.binary.f32(i32 35, float %4402, float %4817)  ; FMax(a,b)
  %4819 = fcmp fast olt float %4817, 1.000000e+00
  %4820 = fcmp uge float %69, 0.000000e+00
  %4821 = and i1 %4820, %4819
  br i1 %4821, label %4822, label %4832

; <label>:4822                                    ; preds = %4803
  %4823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %46, float %69, float %70, float %71, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4824 = extractvalue %dx.types.ResRet.f32 %4823, 0
  %4825 = extractvalue %dx.types.ResRet.f32 %4823, 1
  %4826 = extractvalue %dx.types.ResRet.f32 %4823, 2
  %4827 = fadd fast float %4824, %4818
  %4828 = fcmp ule float %68, 0.000000e+00
  %4829 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4830 = select i1 %4828, float %4829, float 1.000000e+00
  %4831 = fmul fast float %4830, %4826
  br label %4832

; <label>:4832                                    ; preds = %4822, %4803
  %4833 = phi float [ %4827, %4822 ], [ %4818, %4803 ]
  %4834 = phi float [ %4825, %4822 ], [ 0.000000e+00, %4803 ]
  %4835 = phi float [ %4831, %4822 ], [ 0.000000e+00, %4803 ]
  %4836 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4837 = call float @dx.op.unary.f32(i32 7, float %4834)  ; Saturate(value)
  %4838 = call float @dx.op.unary.f32(i32 7, float %4835)  ; Saturate(value)
  %4839 = fcmp fast une float %4837, 0.000000e+00
  %4840 = fcmp fast une float %4838, 0.000000e+00
  %4841 = or i1 %4839, %4840
  br i1 %4841, label %4842, label %5401

; <label>:4842                                    ; preds = %4832
  br i1 %4839, label %4843, label %5116

; <label>:4843                                    ; preds = %4842
  %4844 = call float @dx.op.unary.f32(i32 23, float %4399)  ; Log(value)
  %4845 = fmul fast float %4844, 4.000000e+00
  %4846 = call float @dx.op.unary.f32(i32 21, float %4845)  ; Exp(value)
  %4847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.f32 %4847, 0
  %4849 = fmul fast float %4848, %56
  %4850 = fmul fast float %4848, %57
  %4851 = fmul fast float %4848, %58
  %4852 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4853 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4854 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4855 = call float @dx.op.unary.f32(i32 23, float %4852)  ; Log(value)
  %4856 = call float @dx.op.unary.f32(i32 23, float %4853)  ; Log(value)
  %4857 = call float @dx.op.unary.f32(i32 23, float %4854)  ; Log(value)
  %4858 = fmul fast float %4855, 4.000000e+00
  %4859 = fmul fast float %4856, 4.000000e+00
  %4860 = fmul fast float %4857, 4.000000e+00
  %4861 = call float @dx.op.unary.f32(i32 21, float %4858)  ; Exp(value)
  %4862 = call float @dx.op.unary.f32(i32 21, float %4859)  ; Exp(value)
  %4863 = call float @dx.op.unary.f32(i32 21, float %4860)  ; Exp(value)
  %4864 = fadd fast float %4862, %4861
  %4865 = fadd fast float %4864, %4863
  %4866 = fdiv fast float 1.000000e+00, %4865
  %4867 = fmul fast float %4866, %4861
  %4868 = fcmp fast ogt float %65, 0.000000e+00
  %4869 = fcmp fast ogt float %66, 0.000000e+00
  %4870 = fcmp fast ogt float %67, 0.000000e+00
  %4871 = fcmp fast olt float %65, 0.000000e+00
  %4872 = fcmp fast olt float %66, 0.000000e+00
  %4873 = fcmp fast olt float %67, 0.000000e+00
  %4874 = zext i1 %4868 to i32
  %4875 = zext i1 %4869 to i32
  %4876 = zext i1 %4870 to i32
  %4877 = zext i1 %4871 to i32
  %4878 = zext i1 %4872 to i32
  %4879 = zext i1 %4873 to i32
  %4880 = sub nsw i32 %4874, %4877
  %4881 = sub nsw i32 %4875, %4878
  %4882 = sub nsw i32 %4876, %4879
  %4883 = call float @dx.op.unary.f32(i32 83, float %4849)  ; DerivCoarseX(value)
  %4884 = call float @dx.op.unary.f32(i32 83, float %4850)  ; DerivCoarseX(value)
  %4885 = call float @dx.op.unary.f32(i32 83, float %4851)  ; DerivCoarseX(value)
  %4886 = call float @dx.op.unary.f32(i32 84, float %4849)  ; DerivCoarseY(value)
  %4887 = call float @dx.op.unary.f32(i32 84, float %4850)  ; DerivCoarseY(value)
  %4888 = call float @dx.op.unary.f32(i32 84, float %4851)  ; DerivCoarseY(value)
  %4889 = fcmp fast ole float %261, %4867
  %4890 = fmul fast float %4866, %4864
  %4891 = fcmp fast ole float %261, %4890
  %4892 = select i1 %4891, float %4851, float %4849
  %4893 = select i1 %4891, float %4849, float %4850
  %4894 = select i1 %4889, float %4850, float %4892
  %4895 = select i1 %4889, float %4851, float %4893
  %4896 = select i1 %4891, float %4885, float %4883
  %4897 = select i1 %4891, float %4883, float %4884
  %4898 = select i1 %4889, float %4884, float %4896
  %4899 = select i1 %4889, float %4885, float %4897
  %4900 = select i1 %4891, float %4888, float %4886
  %4901 = select i1 %4891, float %4886, float %4887
  %4902 = select i1 %4889, float %4887, float %4900
  %4903 = select i1 %4889, float %4888, float %4901
  %4904 = call float @dx.op.unary.f32(i32 27, float %4894)  ; Round_ni(value)
  %4905 = call float @dx.op.unary.f32(i32 27, float %4895)  ; Round_ni(value)
  %4906 = fptosi float %4904 to i32
  %4907 = fptosi float %4905 to i32
  %4908 = xor i32 %4907, %4906
  %4909 = sitofp i32 %4908 to float
  %4910 = fptosi float %4909 to i32
  %4911 = sitofp i32 %4910 to float
  %4912 = fmul fast float %4911, 0x3FE3C6EF40000000
  %4913 = frem fast float %4904, 2.560000e+02
  %4914 = frem fast float %4905, 2.560000e+02
  %4915 = fptoui float %4913 to i32
  %4916 = fptoui float %4914 to i32
  %4917 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4915, i32 %4916, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4918 = extractvalue %dx.types.ResRet.f32 %4917, 0
  %4919 = extractvalue %dx.types.ResRet.f32 %4917, 1
  %4920 = extractvalue %dx.types.ResRet.f32 %4917, 2
  %4921 = fadd fast float %4918, %4912
  %4922 = fadd fast float %4919, %4912
  %4923 = fadd fast float %4920, %4912
  %4924 = call float @dx.op.unary.f32(i32 22, float %4921)  ; Frc(value)
  %4925 = call float @dx.op.unary.f32(i32 22, float %4922)  ; Frc(value)
  %4926 = call float @dx.op.unary.f32(i32 22, float %4923)  ; Frc(value)
  %4927 = fmul fast float %4926, 0x401921FB60000000
  %4928 = call float @dx.op.unary.f32(i32 13, float %4927)  ; Sin(value)
  %4929 = call float @dx.op.unary.f32(i32 12, float %4927)  ; Cos(value)
  %4930 = fsub fast float -0.000000e+00, %4929
  %4931 = fmul fast float %4929, %4894
  %4932 = call float @dx.op.tertiary.f32(i32 46, float %4928, float %4895, float %4931)  ; FMad(a,b,c)
  %4933 = fmul fast float %4928, %4894
  %4934 = call float @dx.op.tertiary.f32(i32 46, float %4930, float %4895, float %4933)  ; FMad(a,b,c)
  %4935 = fadd fast float %4932, %4924
  %4936 = fadd fast float %4934, %4925
  %4937 = extractvalue %dx.types.CBufRet.f32 %4847, 3
  %4938 = bitcast float %4937 to i32
  %4939 = icmp eq i32 %4938, 0
  br i1 %4939, label %4978, label %4940

; <label>:4940                                    ; preds = %4843
  %4941 = add i32 %4938, 0
  %4942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4941, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4943 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4942, %dx.types.Handle %101, float %4935, float %4936, float undef, float undef, i32 0, i32 0, i32 undef, float %4898, float %4899, float undef, float %4902, float %4903, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4944 = extractvalue %dx.types.ResRet.f32 %4943, 0
  %4945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4946 = extractvalue %dx.types.CBufRet.f32 %4945, 1
  %4947 = extractvalue %dx.types.CBufRet.f32 %4945, 2
  %4948 = fsub fast float 1.000000e+00, %4837
  %4949 = call float @dx.op.binary.f32(i32 35, float %4948, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4950 = bitcast float %4837 to i32
  %4951 = sitofp i32 %4950 to float
  %4952 = fadd fast float %4951, 0xC1CFBF8940000000
  %4953 = fmul fast float %4947, %4952
  %4954 = fadd fast float %4953, 0x41CFBF8940000000
  %4955 = fptosi float %4954 to i32
  %4956 = bitcast i32 %4955 to float
  %4957 = bitcast float %4949 to i32
  %4958 = sitofp i32 %4957 to float
  %4959 = fadd fast float %4958, 0xC1CFBF8940000000
  %4960 = fmul fast float %4959, %4947
  %4961 = fadd fast float %4960, 0x41CFBF8940000000
  %4962 = fptosi float %4961 to i32
  %4963 = bitcast i32 %4962 to float
  %4964 = fmul fast float %4956, %4946
  %4965 = fmul fast float %4963, %4946
  %4966 = fsub fast float %4949, %4964
  %4967 = fadd fast float %4965, %4949
  %4968 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4969 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  %4970 = fsub fast float %4944, %4968
  %4971 = fsub fast float %4969, %4968
  %4972 = bitcast float %4971 to i32
  %4973 = sub nsw i32 2129859010, %4972
  %4974 = bitcast i32 %4973 to float
  %4975 = fmul fast float %4974, %4970
  %4976 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4977 = fcmp fast olt float %4976, 0x3F70101020000000
  br i1 %4977, label %5116, label %4978

; <label>:4978                                    ; preds = %4940, %4843
  %4979 = phi float [ %4976, %4940 ], [ %4837, %4843 ]
  %4980 = fmul fast float %4979, %4846
  %4981 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.i32 %4981, 1
  %4983 = extractvalue %dx.types.CBufRet.i32 %4981, 0
  %4984 = add i32 %4983, 0
  %4985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4984, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4986 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4985, %dx.types.Handle %100, float %4935, float %4936, float undef, float undef, i32 0, i32 0, i32 undef, float %4898, float %4899, float undef, float %4902, float %4903, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4987 = extractvalue %dx.types.ResRet.f32 %4986, 0
  %4988 = extractvalue %dx.types.ResRet.f32 %4986, 1
  %4989 = extractvalue %dx.types.ResRet.f32 %4986, 2
  %4990 = extractvalue %dx.types.ResRet.f32 %4986, 3
  %4991 = and i32 %4982, 255
  %4992 = uitofp i32 %4991 to float
  %4993 = lshr i32 %4982, 8
  %4994 = and i32 %4993, 255
  %4995 = uitofp i32 %4994 to float
  %4996 = fmul fast float %4990, %4992
  %4997 = fadd fast float %4996, %4995
  %4998 = fmul fast float %4997, 0x3F70101000000000
  %4999 = fadd fast float %4998, 0xBFB99999A0000000
  %5000 = call float @dx.op.unary.f32(i32 7, float %4999)  ; Saturate(value)
  %5001 = fmul fast float %5000, 0x3FF1C71C80000000
  %5002 = call float @dx.op.binary.f32(i32 36, float %4998, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5003 = fsub fast float 1.000000e+00, %5001
  %5004 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5005 = fmul fast float %5004, %4987
  %5006 = fmul fast float %5004, %4988
  %5007 = fmul fast float %5004, %4989
  %5008 = call float @dx.op.unary.f32(i32 7, float %5005)  ; Saturate(value)
  %5009 = call float @dx.op.unary.f32(i32 7, float %5006)  ; Saturate(value)
  %5010 = call float @dx.op.unary.f32(i32 7, float %5007)  ; Saturate(value)
  %5011 = fmul fast float %5001, %4987
  %5012 = fmul fast float %5001, %4988
  %5013 = fmul fast float %5001, %4989
  %5014 = fadd fast float %5011, %5002
  %5015 = fadd fast float %5012, %5002
  %5016 = fadd fast float %5013, %5002
  %5017 = call float @dx.op.unary.f32(i32 7, float %5014)  ; Saturate(value)
  %5018 = call float @dx.op.unary.f32(i32 7, float %5015)  ; Saturate(value)
  %5019 = call float @dx.op.unary.f32(i32 7, float %5016)  ; Saturate(value)
  %5020 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5021 = extractvalue %dx.types.CBufRet.i32 %5020, 3
  %5022 = extractvalue %dx.types.CBufRet.i32 %5020, 2
  %5023 = add i32 %5022, 0
  %5024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5025 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5024, %dx.types.Handle %100, float %4935, float %4936, float undef, float undef, i32 0, i32 0, i32 undef, float %4898, float %4899, float undef, float %4902, float %4903, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5026 = extractvalue %dx.types.ResRet.f32 %5025, 0
  %5027 = extractvalue %dx.types.ResRet.f32 %5025, 1
  %5028 = extractvalue %dx.types.ResRet.f32 %5025, 2
  %5029 = extractvalue %dx.types.ResRet.f32 %5025, 3
  %5030 = and i32 %5021, 255
  %5031 = uitofp i32 %5030 to float
  %5032 = lshr i32 %5021, 8
  %5033 = and i32 %5032, 255
  %5034 = uitofp i32 %5033 to float
  %5035 = lshr i32 %5021, 16
  %5036 = and i32 %5035, 255
  %5037 = uitofp i32 %5036 to float
  %5038 = fmul fast float %5037, 0x3F70101000000000
  %5039 = fmul fast float %5026, %5031
  %5040 = fadd fast float %5039, %5034
  %5041 = fmul fast float %5040, 0x3F70101000000000
  %5042 = fadd fast float %5027, -5.000000e-01
  %5043 = fadd fast float %5029, -5.000000e-01
  %5044 = fmul fast float %5042, %5038
  %5045 = fmul fast float %5043, %5038
  %5046 = fadd fast float %5044, 5.000000e-01
  %5047 = fadd fast float %5045, 5.000000e-01
  %5048 = fmul fast float %5046, 2.000000e+00
  %5049 = fadd fast float %5048, -1.000000e+00
  %5050 = fmul fast float %5047, 2.000000e+00
  %5051 = fadd fast float %5050, -1.000000e+00
  %5052 = fadd fast float %5049, %5051
  %5053 = fmul fast float %5052, 5.000000e-01
  %5054 = fsub fast float %5049, %5051
  %5055 = fmul fast float %5054, 5.000000e-01
  %5056 = call float @dx.op.unary.f32(i32 6, float %5053)  ; FAbs(value)
  %5057 = fsub fast float 1.000000e+00, %5056
  %5058 = call float @dx.op.unary.f32(i32 6, float %5055)  ; FAbs(value)
  %5059 = fsub fast float %5057, %5058
  %5060 = call float @dx.op.dot3.f32(i32 55, float %5053, float %5055, float %5059, float %5053, float %5055, float %5059)  ; Dot3(ax,ay,az,bx,by,bz)
  %5061 = call float @dx.op.unary.f32(i32 25, float %5060)  ; Rsqrt(value)
  %5062 = fmul fast float %5053, %5061
  %5063 = fmul fast float %5055, %5061
  %5064 = select i1 %4891, i32 %4881, i32 %4882
  %5065 = select i1 %4889, i32 %4880, i32 %5064
  %5066 = sitofp i32 %5065 to float
  %5067 = fmul fast float %5059, %5066
  %5068 = fmul fast float %5067, %5061
  %5069 = select i1 %4891, float %5068, float %5063
  %5070 = select i1 %4891, float %5063, float %5068
  %5071 = select i1 %4889, float %5068, float %5062
  %5072 = select i1 %4889, float %5063, float %5069
  %5073 = select i1 %4889, float %5062, float %5070
  %5074 = fsub fast float %5008, %4441
  %5075 = fsub fast float %5009, %4442
  %5076 = fsub fast float %5010, %4443
  %5077 = fmul fast float %5074, %4980
  %5078 = fmul fast float %5075, %4980
  %5079 = fmul fast float %5076, %4980
  %5080 = fadd fast float %5077, %4441
  %5081 = fadd fast float %5078, %4442
  %5082 = fadd fast float %5079, %4443
  %5083 = fsub fast float %5017, %4423
  %5084 = fsub fast float %5018, %4424
  %5085 = fsub fast float %5019, %4425
  %5086 = fmul fast float %5083, %4980
  %5087 = fmul fast float %5084, %4980
  %5088 = fmul fast float %5085, %4980
  %5089 = fadd fast float %5086, %4423
  %5090 = fadd fast float %5087, %4424
  %5091 = fadd fast float %5088, %4425
  %5092 = fadd fast float %5071, %4384
  %5093 = fadd fast float %5072, %4385
  %5094 = fadd fast float %5073, %4386
  %5095 = call float @dx.op.dot3.f32(i32 55, float %5092, float %5093, float %5094, float %5092, float %5093, float %5094)  ; Dot3(ax,ay,az,bx,by,bz)
  %5096 = call float @dx.op.unary.f32(i32 25, float %5095)  ; Rsqrt(value)
  %5097 = fmul fast float %5092, %5096
  %5098 = fmul fast float %5093, %5096
  %5099 = fmul fast float %5094, %5096
  %5100 = fsub fast float %5097, %4384
  %5101 = fsub fast float %5098, %4385
  %5102 = fsub fast float %5099, %4386
  %5103 = fmul fast float %5100, %4980
  %5104 = fmul fast float %5101, %4980
  %5105 = fmul fast float %5102, %4980
  %5106 = fadd fast float %5103, %4384
  %5107 = fadd fast float %5104, %4385
  %5108 = fadd fast float %5105, %4386
  %5109 = call float @dx.op.binary.f32(i32 36, float %4399, float %5028)  ; FMin(a,b)
  %5110 = fsub fast float %5109, %4399
  %5111 = fmul fast float %5110, %4980
  %5112 = fadd fast float %5111, %4399
  %5113 = fsub fast float %5041, %4426
  %5114 = fmul fast float %5113, %4980
  %5115 = fadd fast float %5114, %4426
  br label %5116

; <label>:5116                                    ; preds = %4978, %4940, %4842
  %5117 = phi float [ %5089, %4978 ], [ %4423, %4940 ], [ %4423, %4842 ]
  %5118 = phi float [ %5090, %4978 ], [ %4424, %4940 ], [ %4424, %4842 ]
  %5119 = phi float [ %5091, %4978 ], [ %4425, %4940 ], [ %4425, %4842 ]
  %5120 = phi float [ %5080, %4978 ], [ %4441, %4940 ], [ %4441, %4842 ]
  %5121 = phi float [ %5081, %4978 ], [ %4442, %4940 ], [ %4442, %4842 ]
  %5122 = phi float [ %5082, %4978 ], [ %4443, %4940 ], [ %4443, %4842 ]
  %5123 = phi float [ %5106, %4978 ], [ %4384, %4940 ], [ %4384, %4842 ]
  %5124 = phi float [ %5107, %4978 ], [ %4385, %4940 ], [ %4385, %4842 ]
  %5125 = phi float [ %5108, %4978 ], [ %4386, %4940 ], [ %4386, %4842 ]
  %5126 = phi float [ %5115, %4978 ], [ %4426, %4940 ], [ %4426, %4842 ]
  %5127 = phi float [ %5112, %4978 ], [ %4399, %4940 ], [ %4399, %4842 ]
  br i1 %4840, label %5128, label %5401

; <label>:5128                                    ; preds = %5116
  %5129 = call float @dx.op.unary.f32(i32 23, float %5127)  ; Log(value)
  %5130 = fmul fast float %5129, 4.000000e+00
  %5131 = call float @dx.op.unary.f32(i32 21, float %5130)  ; Exp(value)
  %5132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5133 = extractvalue %dx.types.CBufRet.f32 %5132, 0
  %5134 = fmul fast float %5133, %56
  %5135 = fmul fast float %5133, %57
  %5136 = fmul fast float %5133, %58
  %5137 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %5138 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %5139 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %5140 = call float @dx.op.unary.f32(i32 23, float %5137)  ; Log(value)
  %5141 = call float @dx.op.unary.f32(i32 23, float %5138)  ; Log(value)
  %5142 = call float @dx.op.unary.f32(i32 23, float %5139)  ; Log(value)
  %5143 = fmul fast float %5140, 4.000000e+00
  %5144 = fmul fast float %5141, 4.000000e+00
  %5145 = fmul fast float %5142, 4.000000e+00
  %5146 = call float @dx.op.unary.f32(i32 21, float %5143)  ; Exp(value)
  %5147 = call float @dx.op.unary.f32(i32 21, float %5144)  ; Exp(value)
  %5148 = call float @dx.op.unary.f32(i32 21, float %5145)  ; Exp(value)
  %5149 = fadd fast float %5147, %5146
  %5150 = fadd fast float %5149, %5148
  %5151 = fdiv fast float 1.000000e+00, %5150
  %5152 = fmul fast float %5151, %5146
  %5153 = fcmp fast ogt float %65, 0.000000e+00
  %5154 = fcmp fast ogt float %66, 0.000000e+00
  %5155 = fcmp fast ogt float %67, 0.000000e+00
  %5156 = fcmp fast olt float %65, 0.000000e+00
  %5157 = fcmp fast olt float %66, 0.000000e+00
  %5158 = fcmp fast olt float %67, 0.000000e+00
  %5159 = zext i1 %5153 to i32
  %5160 = zext i1 %5154 to i32
  %5161 = zext i1 %5155 to i32
  %5162 = zext i1 %5156 to i32
  %5163 = zext i1 %5157 to i32
  %5164 = zext i1 %5158 to i32
  %5165 = sub nsw i32 %5159, %5162
  %5166 = sub nsw i32 %5160, %5163
  %5167 = sub nsw i32 %5161, %5164
  %5168 = call float @dx.op.unary.f32(i32 83, float %5134)  ; DerivCoarseX(value)
  %5169 = call float @dx.op.unary.f32(i32 83, float %5135)  ; DerivCoarseX(value)
  %5170 = call float @dx.op.unary.f32(i32 83, float %5136)  ; DerivCoarseX(value)
  %5171 = call float @dx.op.unary.f32(i32 84, float %5134)  ; DerivCoarseY(value)
  %5172 = call float @dx.op.unary.f32(i32 84, float %5135)  ; DerivCoarseY(value)
  %5173 = call float @dx.op.unary.f32(i32 84, float %5136)  ; DerivCoarseY(value)
  %5174 = fcmp fast ole float %261, %5152
  %5175 = fmul fast float %5151, %5149
  %5176 = fcmp fast ole float %261, %5175
  %5177 = select i1 %5176, float %5136, float %5134
  %5178 = select i1 %5176, float %5134, float %5135
  %5179 = select i1 %5174, float %5135, float %5177
  %5180 = select i1 %5174, float %5136, float %5178
  %5181 = select i1 %5176, float %5170, float %5168
  %5182 = select i1 %5176, float %5168, float %5169
  %5183 = select i1 %5174, float %5169, float %5181
  %5184 = select i1 %5174, float %5170, float %5182
  %5185 = select i1 %5176, float %5173, float %5171
  %5186 = select i1 %5176, float %5171, float %5172
  %5187 = select i1 %5174, float %5172, float %5185
  %5188 = select i1 %5174, float %5173, float %5186
  %5189 = call float @dx.op.unary.f32(i32 27, float %5179)  ; Round_ni(value)
  %5190 = call float @dx.op.unary.f32(i32 27, float %5180)  ; Round_ni(value)
  %5191 = fptosi float %5189 to i32
  %5192 = fptosi float %5190 to i32
  %5193 = xor i32 %5192, %5191
  %5194 = sitofp i32 %5193 to float
  %5195 = fptosi float %5194 to i32
  %5196 = sitofp i32 %5195 to float
  %5197 = fmul fast float %5196, 0x3FE3C6EF40000000
  %5198 = frem fast float %5189, 2.560000e+02
  %5199 = frem fast float %5190, 2.560000e+02
  %5200 = fptoui float %5198 to i32
  %5201 = fptoui float %5199 to i32
  %5202 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5200, i32 %5201, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5203 = extractvalue %dx.types.ResRet.f32 %5202, 0
  %5204 = extractvalue %dx.types.ResRet.f32 %5202, 1
  %5205 = extractvalue %dx.types.ResRet.f32 %5202, 2
  %5206 = fadd fast float %5203, %5197
  %5207 = fadd fast float %5204, %5197
  %5208 = fadd fast float %5205, %5197
  %5209 = call float @dx.op.unary.f32(i32 22, float %5206)  ; Frc(value)
  %5210 = call float @dx.op.unary.f32(i32 22, float %5207)  ; Frc(value)
  %5211 = call float @dx.op.unary.f32(i32 22, float %5208)  ; Frc(value)
  %5212 = fmul fast float %5211, 0x401921FB60000000
  %5213 = call float @dx.op.unary.f32(i32 13, float %5212)  ; Sin(value)
  %5214 = call float @dx.op.unary.f32(i32 12, float %5212)  ; Cos(value)
  %5215 = fsub fast float -0.000000e+00, %5214
  %5216 = fmul fast float %5214, %5179
  %5217 = call float @dx.op.tertiary.f32(i32 46, float %5213, float %5180, float %5216)  ; FMad(a,b,c)
  %5218 = fmul fast float %5213, %5179
  %5219 = call float @dx.op.tertiary.f32(i32 46, float %5215, float %5180, float %5218)  ; FMad(a,b,c)
  %5220 = fadd fast float %5217, %5209
  %5221 = fadd fast float %5219, %5210
  %5222 = extractvalue %dx.types.CBufRet.f32 %5132, 3
  %5223 = bitcast float %5222 to i32
  %5224 = icmp eq i32 %5223, 0
  br i1 %5224, label %5263, label %5225

; <label>:5225                                    ; preds = %5128
  %5226 = add i32 %5223, 0
  %5227 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5226, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5228 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5227, %dx.types.Handle %101, float %5220, float %5221, float undef, float undef, i32 0, i32 0, i32 undef, float %5183, float %5184, float undef, float %5187, float %5188, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5229 = extractvalue %dx.types.ResRet.f32 %5228, 0
  %5230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5231 = extractvalue %dx.types.CBufRet.f32 %5230, 1
  %5232 = extractvalue %dx.types.CBufRet.f32 %5230, 2
  %5233 = fsub fast float 1.000000e+00, %4838
  %5234 = call float @dx.op.binary.f32(i32 35, float %5233, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5235 = bitcast float %4838 to i32
  %5236 = sitofp i32 %5235 to float
  %5237 = fadd fast float %5236, 0xC1CFBF8940000000
  %5238 = fmul fast float %5232, %5237
  %5239 = fadd fast float %5238, 0x41CFBF8940000000
  %5240 = fptosi float %5239 to i32
  %5241 = bitcast i32 %5240 to float
  %5242 = bitcast float %5234 to i32
  %5243 = sitofp i32 %5242 to float
  %5244 = fadd fast float %5243, 0xC1CFBF8940000000
  %5245 = fmul fast float %5244, %5232
  %5246 = fadd fast float %5245, 0x41CFBF8940000000
  %5247 = fptosi float %5246 to i32
  %5248 = bitcast i32 %5247 to float
  %5249 = fmul fast float %5241, %5231
  %5250 = fmul fast float %5248, %5231
  %5251 = fsub fast float %5234, %5249
  %5252 = fadd fast float %5250, %5234
  %5253 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  %5254 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5255 = fsub fast float %5229, %5253
  %5256 = fsub fast float %5254, %5253
  %5257 = bitcast float %5256 to i32
  %5258 = sub nsw i32 2129859010, %5257
  %5259 = bitcast i32 %5258 to float
  %5260 = fmul fast float %5259, %5255
  %5261 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5262 = fcmp fast olt float %5261, 0x3F70101020000000
  br i1 %5262, label %5401, label %5263

; <label>:5263                                    ; preds = %5225, %5128
  %5264 = phi float [ %5261, %5225 ], [ %4838, %5128 ]
  %5265 = fmul fast float %5264, %5131
  %5266 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.i32 %5266, 1
  %5268 = extractvalue %dx.types.CBufRet.i32 %5266, 0
  %5269 = add i32 %5268, 0
  %5270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5269, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5271 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5270, %dx.types.Handle %100, float %5220, float %5221, float undef, float undef, i32 0, i32 0, i32 undef, float %5183, float %5184, float undef, float %5187, float %5188, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5272 = extractvalue %dx.types.ResRet.f32 %5271, 0
  %5273 = extractvalue %dx.types.ResRet.f32 %5271, 1
  %5274 = extractvalue %dx.types.ResRet.f32 %5271, 2
  %5275 = extractvalue %dx.types.ResRet.f32 %5271, 3
  %5276 = and i32 %5267, 255
  %5277 = uitofp i32 %5276 to float
  %5278 = lshr i32 %5267, 8
  %5279 = and i32 %5278, 255
  %5280 = uitofp i32 %5279 to float
  %5281 = fmul fast float %5275, %5277
  %5282 = fadd fast float %5281, %5280
  %5283 = fmul fast float %5282, 0x3F70101000000000
  %5284 = fadd fast float %5283, 0xBFB99999A0000000
  %5285 = call float @dx.op.unary.f32(i32 7, float %5284)  ; Saturate(value)
  %5286 = fmul fast float %5285, 0x3FF1C71C80000000
  %5287 = call float @dx.op.binary.f32(i32 36, float %5283, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5288 = fsub fast float 1.000000e+00, %5286
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = fmul fast float %5289, %5272
  %5291 = fmul fast float %5289, %5273
  %5292 = fmul fast float %5289, %5274
  %5293 = call float @dx.op.unary.f32(i32 7, float %5290)  ; Saturate(value)
  %5294 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5295 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5296 = fmul fast float %5286, %5272
  %5297 = fmul fast float %5286, %5273
  %5298 = fmul fast float %5286, %5274
  %5299 = fadd fast float %5296, %5287
  %5300 = fadd fast float %5297, %5287
  %5301 = fadd fast float %5298, %5287
  %5302 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5303 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5304 = call float @dx.op.unary.f32(i32 7, float %5301)  ; Saturate(value)
  %5305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5306 = extractvalue %dx.types.CBufRet.i32 %5305, 3
  %5307 = extractvalue %dx.types.CBufRet.i32 %5305, 2
  %5308 = add i32 %5307, 0
  %5309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5308, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5310 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5309, %dx.types.Handle %100, float %5220, float %5221, float undef, float undef, i32 0, i32 0, i32 undef, float %5183, float %5184, float undef, float %5187, float %5188, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5311 = extractvalue %dx.types.ResRet.f32 %5310, 0
  %5312 = extractvalue %dx.types.ResRet.f32 %5310, 1
  %5313 = extractvalue %dx.types.ResRet.f32 %5310, 2
  %5314 = extractvalue %dx.types.ResRet.f32 %5310, 3
  %5315 = and i32 %5306, 255
  %5316 = uitofp i32 %5315 to float
  %5317 = lshr i32 %5306, 8
  %5318 = and i32 %5317, 255
  %5319 = uitofp i32 %5318 to float
  %5320 = lshr i32 %5306, 16
  %5321 = and i32 %5320, 255
  %5322 = uitofp i32 %5321 to float
  %5323 = fmul fast float %5322, 0x3F70101000000000
  %5324 = fmul fast float %5311, %5316
  %5325 = fadd fast float %5324, %5319
  %5326 = fmul fast float %5325, 0x3F70101000000000
  %5327 = fadd fast float %5312, -5.000000e-01
  %5328 = fadd fast float %5314, -5.000000e-01
  %5329 = fmul fast float %5327, %5323
  %5330 = fmul fast float %5328, %5323
  %5331 = fadd fast float %5329, 5.000000e-01
  %5332 = fadd fast float %5330, 5.000000e-01
  %5333 = fmul fast float %5331, 2.000000e+00
  %5334 = fadd fast float %5333, -1.000000e+00
  %5335 = fmul fast float %5332, 2.000000e+00
  %5336 = fadd fast float %5335, -1.000000e+00
  %5337 = fadd fast float %5334, %5336
  %5338 = fmul fast float %5337, 5.000000e-01
  %5339 = fsub fast float %5334, %5336
  %5340 = fmul fast float %5339, 5.000000e-01
  %5341 = call float @dx.op.unary.f32(i32 6, float %5338)  ; FAbs(value)
  %5342 = fsub fast float 1.000000e+00, %5341
  %5343 = call float @dx.op.unary.f32(i32 6, float %5340)  ; FAbs(value)
  %5344 = fsub fast float %5342, %5343
  %5345 = call float @dx.op.dot3.f32(i32 55, float %5338, float %5340, float %5344, float %5338, float %5340, float %5344)  ; Dot3(ax,ay,az,bx,by,bz)
  %5346 = call float @dx.op.unary.f32(i32 25, float %5345)  ; Rsqrt(value)
  %5347 = fmul fast float %5338, %5346
  %5348 = fmul fast float %5340, %5346
  %5349 = select i1 %5176, i32 %5166, i32 %5167
  %5350 = select i1 %5174, i32 %5165, i32 %5349
  %5351 = sitofp i32 %5350 to float
  %5352 = fmul fast float %5344, %5351
  %5353 = fmul fast float %5352, %5346
  %5354 = select i1 %5176, float %5353, float %5348
  %5355 = select i1 %5176, float %5348, float %5353
  %5356 = select i1 %5174, float %5353, float %5347
  %5357 = select i1 %5174, float %5348, float %5354
  %5358 = select i1 %5174, float %5347, float %5355
  %5359 = fsub fast float %5293, %5120
  %5360 = fsub fast float %5294, %5121
  %5361 = fsub fast float %5295, %5122
  %5362 = fmul fast float %5359, %5265
  %5363 = fmul fast float %5360, %5265
  %5364 = fmul fast float %5361, %5265
  %5365 = fadd fast float %5362, %5120
  %5366 = fadd fast float %5363, %5121
  %5367 = fadd fast float %5364, %5122
  %5368 = fsub fast float %5302, %5117
  %5369 = fsub fast float %5303, %5118
  %5370 = fsub fast float %5304, %5119
  %5371 = fmul fast float %5368, %5265
  %5372 = fmul fast float %5369, %5265
  %5373 = fmul fast float %5370, %5265
  %5374 = fadd fast float %5371, %5117
  %5375 = fadd fast float %5372, %5118
  %5376 = fadd fast float %5373, %5119
  %5377 = fadd fast float %5356, %5123
  %5378 = fadd fast float %5357, %5124
  %5379 = fadd fast float %5358, %5125
  %5380 = call float @dx.op.dot3.f32(i32 55, float %5377, float %5378, float %5379, float %5377, float %5378, float %5379)  ; Dot3(ax,ay,az,bx,by,bz)
  %5381 = call float @dx.op.unary.f32(i32 25, float %5380)  ; Rsqrt(value)
  %5382 = fmul fast float %5377, %5381
  %5383 = fmul fast float %5378, %5381
  %5384 = fmul fast float %5379, %5381
  %5385 = fsub fast float %5382, %5123
  %5386 = fsub fast float %5383, %5124
  %5387 = fsub fast float %5384, %5125
  %5388 = fmul fast float %5385, %5265
  %5389 = fmul fast float %5386, %5265
  %5390 = fmul fast float %5387, %5265
  %5391 = fadd fast float %5388, %5123
  %5392 = fadd fast float %5389, %5124
  %5393 = fadd fast float %5390, %5125
  %5394 = call float @dx.op.binary.f32(i32 36, float %5127, float %5313)  ; FMin(a,b)
  %5395 = fsub fast float %5394, %5127
  %5396 = fmul fast float %5395, %5265
  %5397 = fadd fast float %5396, %5127
  %5398 = fsub fast float %5326, %5126
  %5399 = fmul fast float %5398, %5265
  %5400 = fadd fast float %5399, %5126
  br label %5401

; <label>:5401                                    ; preds = %5263, %5225, %5116, %4832
  %5402 = phi float [ %5374, %5263 ], [ %5117, %5225 ], [ %5117, %5116 ], [ %4423, %4832 ]
  %5403 = phi float [ %5375, %5263 ], [ %5118, %5225 ], [ %5118, %5116 ], [ %4424, %4832 ]
  %5404 = phi float [ %5376, %5263 ], [ %5119, %5225 ], [ %5119, %5116 ], [ %4425, %4832 ]
  %5405 = phi float [ %5365, %5263 ], [ %5120, %5225 ], [ %5120, %5116 ], [ %4441, %4832 ]
  %5406 = phi float [ %5366, %5263 ], [ %5121, %5225 ], [ %5121, %5116 ], [ %4442, %4832 ]
  %5407 = phi float [ %5367, %5263 ], [ %5122, %5225 ], [ %5122, %5116 ], [ %4443, %4832 ]
  %5408 = phi float [ %5391, %5263 ], [ %5123, %5225 ], [ %5123, %5116 ], [ %4384, %4832 ]
  %5409 = phi float [ %5392, %5263 ], [ %5124, %5225 ], [ %5124, %5116 ], [ %4385, %4832 ]
  %5410 = phi float [ %5393, %5263 ], [ %5125, %5225 ], [ %5125, %5116 ], [ %4386, %4832 ]
  %5411 = phi float [ %5400, %5263 ], [ %5126, %5225 ], [ %5126, %5116 ], [ %4426, %4832 ]
  %5412 = phi float [ %5397, %5263 ], [ %5127, %5225 ], [ %5127, %5116 ], [ %4399, %4832 ]
  %5413 = fcmp fast une float %4836, 0.000000e+00
  %5414 = call float @dx.op.dot3.f32(i32 55, float %191, float %192, float %193, float %191, float %192, float %193)  ; Dot3(ax,ay,az,bx,by,bz)
  %5415 = call float @dx.op.unary.f32(i32 25, float %5414)  ; Rsqrt(value)
  br i1 %5413, label %5423, label %5416

; <label>:5416                                    ; preds = %5401
  %5417 = fmul fast float %5415, %191
  %5418 = fmul fast float %5415, %192
  %5419 = fmul fast float %5415, %193
  %5420 = fsub fast float -0.000000e+00, %5417
  %5421 = fsub fast float -0.000000e+00, %5418
  %5422 = fsub fast float -0.000000e+00, %5419
  br label %5590

; <label>:5423                                    ; preds = %5401
  %5424 = fmul fast float %191, %5415
  %5425 = fsub fast float -0.000000e+00, %5424
  %5426 = fmul fast float %192, %5415
  %5427 = fsub fast float -0.000000e+00, %5426
  %5428 = fmul fast float %193, %5415
  %5429 = fsub fast float -0.000000e+00, %5428
  %5430 = call float @dx.op.dot3.f32(i32 55, float %5425, float %5427, float %5429, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5431 = fmul fast float %4836, 2.500000e+00
  %5432 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5433 = fmul fast float %4836, 0x4013FFFFE0000000
  %5434 = fadd fast float %5433, 0xBFFFFFFFE0000000
  %5435 = call float @dx.op.unary.f32(i32 7, float %5434)  ; Saturate(value)
  %5436 = fmul fast float %4836, 0x4004000020000000
  %5437 = fadd fast float %5436, 0xBFF8000040000000
  %5438 = call float @dx.op.unary.f32(i32 7, float %5437)  ; Saturate(value)
  %5439 = fmul fast float %4405, 1.000000e+01
  %5440 = call float @dx.op.unary.f32(i32 7, float %5439)  ; Saturate(value)
  %5441 = fmul fast float %5440, 2.000000e+00
  %5442 = fsub fast float 3.000000e+00, %5441
  %5443 = fmul fast float %5440, %5440
  %5444 = fmul fast float %5443, %5442
  %5445 = fsub fast float 1.000000e+00, %5444
  %5446 = fsub fast float 0x3FE3333340000000, %5411
  %5447 = fmul fast float %5446, 0x400AAAAAA0000000
  %5448 = call float @dx.op.unary.f32(i32 7, float %5447)  ; Saturate(value)
  %5449 = fmul fast float %5445, %5448
  %5450 = fmul fast float %5405, 0x3FEA2B8620000000
  %5451 = fmul fast float %5406, 0x3FEA2B8620000000
  %5452 = fmul fast float %5407, 0x3FEA2B8620000000
  %5453 = fadd fast float %5450, 0x3FC81DFBA0000000
  %5454 = fmul fast float %5453, %5405
  %5455 = fadd fast float %5454, 0x3F910E6020000000
  %5456 = fadd fast float %5451, 0x3FC81DFBA0000000
  %5457 = fmul fast float %5456, %5406
  %5458 = fadd fast float %5457, 0x3F910E6020000000
  %5459 = fadd fast float %5452, 0x3FC81DFBA0000000
  %5460 = fmul fast float %5459, %5407
  %5461 = fadd fast float %5460, 0x3F910E6020000000
  %5462 = call float @dx.op.unary.f32(i32 7, float %5455)  ; Saturate(value)
  %5463 = call float @dx.op.unary.f32(i32 7, float %5458)  ; Saturate(value)
  %5464 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5465 = fsub fast float %5462, %5405
  %5466 = fsub fast float %5463, %5406
  %5467 = fsub fast float %5464, %5407
  %5468 = fmul fast float %5465, %5432
  %5469 = fmul fast float %5468, %5449
  %5470 = fmul fast float %5466, %5432
  %5471 = fmul fast float %5470, %5449
  %5472 = fmul fast float %5467, %5432
  %5473 = fmul fast float %5472, %5449
  %5474 = fadd fast float %5469, %5405
  %5475 = fadd fast float %5471, %5406
  %5476 = fadd fast float %5473, %5407
  %5477 = fmul fast float %5412, %5412
  %5478 = fmul fast float %5477, %5477
  %5479 = fadd fast float %5435, 1.000000e+00
  %5480 = fsub fast float %5479, %5449
  %5481 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  %5482 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5483 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  %5484 = fsub fast float 1.000000e+00, %5478
  %5485 = call float @dx.op.binary.f32(i32 36, float %5481, float %5484)  ; FMin(a,b)
  %5486 = call float @dx.op.unary.f32(i32 7, float %5438)  ; Saturate(value)
  %5487 = call float @dx.op.binary.f32(i32 35, float %5485, float %5486)  ; FMax(a,b)
  %5488 = fadd fast float %5483, 0xBFE4CCCCC0000000
  %5489 = fmul fast float %5488, 0x4006DB6DA0000000
  %5490 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5491 = fmul fast float %5490, 2.000000e+00
  %5492 = fsub fast float 3.000000e+00, %5491
  %5493 = bitcast float %5402 to i32
  %5494 = ashr i32 %5493, 1
  %5495 = add nsw i32 %5494, 532487669
  %5496 = bitcast i32 %5495 to float
  %5497 = fsub fast float 1.000000e+00, %5496
  %5498 = bitcast float %5497 to i32
  %5499 = sub nsw i32 2129859010, %5498
  %5500 = bitcast i32 %5499 to float
  %5501 = fmul fast float %5500, 2.000000e+00
  %5502 = bitcast float %5403 to i32
  %5503 = ashr i32 %5502, 1
  %5504 = add nsw i32 %5503, 532487669
  %5505 = bitcast i32 %5504 to float
  %5506 = fsub fast float 1.000000e+00, %5505
  %5507 = bitcast float %5506 to i32
  %5508 = sub nsw i32 2129859010, %5507
  %5509 = bitcast i32 %5508 to float
  %5510 = fmul fast float %5509, 2.000000e+00
  %5511 = bitcast float %5404 to i32
  %5512 = ashr i32 %5511, 1
  %5513 = add nsw i32 %5512, 532487669
  %5514 = bitcast i32 %5513 to float
  %5515 = fsub fast float 1.000000e+00, %5514
  %5516 = bitcast float %5515 to i32
  %5517 = sub nsw i32 2129859010, %5516
  %5518 = bitcast i32 %5517 to float
  %5519 = fmul fast float %5518, 2.000000e+00
  %5520 = fsub fast float 0x4002A9FBE0000000, %5501
  %5521 = fadd fast float %5501, 0x3FD54FDF00000000
  %5522 = bitcast float %5521 to i32
  %5523 = sub nsw i32 2129859010, %5522
  %5524 = bitcast i32 %5523 to float
  %5525 = fmul fast float %5524, %5520
  %5526 = fmul fast float %5525, %5525
  %5527 = fsub fast float 0x4002A9FBE0000000, %5510
  %5528 = fadd fast float %5510, 0x3FD54FDF00000000
  %5529 = bitcast float %5528 to i32
  %5530 = sub nsw i32 2129859010, %5529
  %5531 = bitcast i32 %5530 to float
  %5532 = fmul fast float %5531, %5527
  %5533 = fmul fast float %5532, %5532
  %5534 = fsub fast float 0x4002A9FBE0000000, %5519
  %5535 = fadd fast float %5519, 0x3FD54FDF00000000
  %5536 = bitcast float %5535 to i32
  %5537 = sub nsw i32 2129859010, %5536
  %5538 = bitcast i32 %5537 to float
  %5539 = fmul fast float %5538, %5534
  %5540 = fmul fast float %5539, %5539
  %5541 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5526)  ; FMax(a,b)
  %5542 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5533)  ; FMax(a,b)
  %5543 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5540)  ; FMax(a,b)
  %5544 = fsub fast float 1.000000e+00, %5430
  %5545 = fadd fast float %5544, %5445
  %5546 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5547 = fsub fast float 1.000000e+00, %4817
  %5548 = fmul fast float %5487, %5547
  %5549 = fmul fast float %5490, %5490
  %5550 = fmul fast float %5549, %5548
  %5551 = fmul fast float %5550, %5492
  %5552 = fmul fast float %5547, 0xBFE99999A0000000
  %5553 = fmul fast float %5552, %5432
  %5554 = fmul fast float %5553, %5449
  %5555 = fadd fast float %5554, 1.000000e+00
  %5556 = fadd fast float %5411, -1.000000e+00
  %5557 = fmul fast float %5555, %5556
  %5558 = fadd fast float %5557, 1.000000e+00
  %5559 = fsub fast float %5541, %5402
  %5560 = fsub fast float %5542, %5403
  %5561 = fsub fast float %5543, %5404
  %5562 = fmul fast float %5551, %5559
  %5563 = fmul fast float %5551, %5560
  %5564 = fmul fast float %5551, %5561
  %5565 = fadd fast float %5562, %5402
  %5566 = fadd fast float %5563, %5403
  %5567 = fadd fast float %5564, %5404
  %5568 = fsub fast float %111, %5408
  %5569 = fsub fast float %112, %5409
  %5570 = fsub fast float %113, %5410
  %5571 = fmul fast float %5551, %5568
  %5572 = fmul fast float %5551, %5569
  %5573 = fmul fast float %5551, %5570
  %5574 = fadd fast float %5571, %5408
  %5575 = fadd fast float %5572, %5409
  %5576 = fadd fast float %5573, %5410
  %5577 = fmul fast float %5551, %5546
  %5578 = call float @dx.op.unary.f32(i32 7, float %5558)  ; Saturate(value)
  %5579 = fsub fast float 1.000000e+00, %5578
  %5580 = fmul fast float %5577, %5579
  %5581 = fadd fast float %5580, %5578
  %5582 = fsub fast float 1.000000e+00, %5412
  %5583 = fmul fast float %5551, %5582
  %5584 = fadd fast float %5583, %5412
  %5585 = call float @dx.op.dot3.f32(i32 55, float %5574, float %5575, float %5576, float %5574, float %5575, float %5576)  ; Dot3(ax,ay,az,bx,by,bz)
  %5586 = call float @dx.op.unary.f32(i32 25, float %5585)  ; Rsqrt(value)
  %5587 = fmul fast float %5574, %5586
  %5588 = fmul fast float %5575, %5586
  %5589 = fmul fast float %5576, %5586
  br label %5590

; <label>:5590                                    ; preds = %5423, %5416
  %5591 = phi float [ %5422, %5416 ], [ %5429, %5423 ]
  %5592 = phi float [ %5421, %5416 ], [ %5427, %5423 ]
  %5593 = phi float [ %5420, %5416 ], [ %5425, %5423 ]
  %5594 = phi float [ %5419, %5416 ], [ %5428, %5423 ]
  %5595 = phi float [ %5418, %5416 ], [ %5426, %5423 ]
  %5596 = phi float [ %5417, %5416 ], [ %5424, %5423 ]
  %5597 = phi float [ %5402, %5416 ], [ %5565, %5423 ]
  %5598 = phi float [ %5403, %5416 ], [ %5566, %5423 ]
  %5599 = phi float [ %5404, %5416 ], [ %5567, %5423 ]
  %5600 = phi float [ %5405, %5416 ], [ %5474, %5423 ]
  %5601 = phi float [ %5406, %5416 ], [ %5475, %5423 ]
  %5602 = phi float [ %5407, %5416 ], [ %5476, %5423 ]
  %5603 = phi float [ %5408, %5416 ], [ %5587, %5423 ]
  %5604 = phi float [ %5409, %5416 ], [ %5588, %5423 ]
  %5605 = phi float [ %5410, %5416 ], [ %5589, %5423 ]
  %5606 = phi float [ %5411, %5416 ], [ %5581, %5423 ]
  %5607 = phi float [ %5412, %5416 ], [ %5584, %5423 ]
  %5608 = fsub fast float -0.000000e+00, %193
  %5609 = select i1 %250, float 0.000000e+00, float %5599
  %5610 = call float @dx.op.dot3.f32(i32 55, float %5603, float %5604, float %5605, float %5593, float %5592, float %5591)  ; Dot3(ax,ay,az,bx,by,bz)
  %5611 = call float @dx.op.unary.f32(i32 7, float %5610)  ; Saturate(value)
  %5612 = call float @dx.op.dot3.f32(i32 55, float %5596, float %5595, float %5594, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5613 = fmul fast float %5612, 2.000000e+00
  %5614 = fmul fast float %5613, %5603
  %5615 = fmul fast float %5613, %5604
  %5616 = fmul fast float %5613, %5605
  %5617 = fsub fast float %5596, %5614
  %5618 = fsub fast float %5595, %5615
  %5619 = fsub fast float %5594, %5616
  %5620 = call float @dx.op.binary.f32(i32 36, float %5607, float 1.000000e+00)  ; FMin(a,b)
  %5621 = fsub fast float 1.000000e+00, %5607
  %5622 = bitcast float %5621 to i32
  %5623 = sub nsw i32 2129859010, %5622
  %5624 = bitcast i32 %5623 to float
  %5625 = fsub fast float 1.000000e+00, %75
  %5626 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5627 = call float @dx.op.binary.f32(i32 35, float %5626, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5628 = fdiv fast float %5625, %5627
  %5629 = call float @dx.op.dot3.f32(i32 55, float %5603, float %5604, float %5605, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = call float @dx.op.unary.f32(i32 7, float %5629)  ; Saturate(value)
  %5631 = fmul fast float %5630, 5.000000e-01
  %5632 = fadd fast float %5631, 5.000000e-01
  %5633 = fmul fast float %5632, %75
  %5634 = call float @dx.op.dot3.f32(i32 55, float %5603, float %5604, float %5605, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5635 = call float @dx.op.unary.f32(i32 7, float %5634)  ; Saturate(value)
  %5636 = fmul fast float %5635, %5628
  %5637 = fadd fast float %5633, %5636
  %5638 = fsub fast float 5.000000e-01, %5631
  %5639 = fmul fast float %5638, %5600
  %5640 = fmul fast float %5638, %5601
  %5641 = fmul fast float %5638, %5602
  %5642 = fadd fast float %5637, %5639
  %5643 = fadd fast float %5637, %5640
  %5644 = fadd fast float %5637, %5641
  %5645 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5646 = call float @dx.op.unary.f32(i32 7, float %5645)  ; Saturate(value)
  %5647 = fmul fast float %5646, 5.000000e-01
  %5648 = fadd fast float %5647, 5.000000e-01
  %5649 = fmul fast float %5648, %75
  %5650 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5651 = call float @dx.op.unary.f32(i32 7, float %5650)  ; Saturate(value)
  %5652 = fmul fast float %5651, %5628
  %5653 = fadd fast float %5649, %5652
  %5654 = fsub fast float 5.000000e-01, %5647
  %5655 = fmul fast float %5654, %5600
  %5656 = fmul fast float %5654, %5601
  %5657 = fmul fast float %5654, %5602
  %5658 = fadd fast float %5653, %5655
  %5659 = fadd fast float %5653, %5656
  %5660 = fadd fast float %5653, %5657
  %5661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5662 = extractvalue %dx.types.CBufRet.f32 %5661, 0
  %5663 = call float @dx.op.binary.f32(i32 36, float %5600, float %5662)  ; FMin(a,b)
  %5664 = fsub fast float 1.000000e+00, %5620
  %5665 = fmul fast float %5663, %5664
  %5666 = fsub fast float 1.000000e+00, %5665
  %5667 = bitcast float %5666 to i32
  %5668 = sub nsw i32 2129859010, %5667
  %5669 = bitcast i32 %5668 to float
  %5670 = call float @dx.op.binary.f32(i32 36, float %5601, float %5662)  ; FMin(a,b)
  %5671 = fmul fast float %5670, %5664
  %5672 = fsub fast float 1.000000e+00, %5671
  %5673 = bitcast float %5672 to i32
  %5674 = sub nsw i32 2129859010, %5673
  %5675 = bitcast i32 %5674 to float
  %5676 = call float @dx.op.binary.f32(i32 36, float %5602, float %5662)  ; FMin(a,b)
  %5677 = fmul fast float %5676, %5664
  %5678 = fsub fast float 1.000000e+00, %5677
  %5679 = bitcast float %5678 to i32
  %5680 = sub nsw i32 2129859010, %5679
  %5681 = bitcast i32 %5680 to float
  %5682 = fmul fast float %5620, %76
  %5683 = fmul fast float %5682, %5642
  %5684 = fmul fast float %5683, %5669
  %5685 = fmul fast float %5620, %77
  %5686 = fmul fast float %5685, %5643
  %5687 = fmul fast float %5686, %5675
  %5688 = fmul fast float %5620, %78
  %5689 = fmul fast float %5688, %5644
  %5690 = fmul fast float %5689, %5681
  %5691 = call float @dx.op.binary.f32(i32 36, float %5597, float %5662)  ; FMin(a,b)
  %5692 = fmul fast float %5691, %5664
  %5693 = fsub fast float 1.000000e+00, %5692
  %5694 = bitcast float %5693 to i32
  %5695 = sub nsw i32 2129859010, %5694
  %5696 = bitcast i32 %5695 to float
  %5697 = call float @dx.op.binary.f32(i32 36, float %5598, float %5662)  ; FMin(a,b)
  %5698 = fmul fast float %5697, %5664
  %5699 = fsub fast float 1.000000e+00, %5698
  %5700 = bitcast float %5699 to i32
  %5701 = sub nsw i32 2129859010, %5700
  %5702 = bitcast i32 %5701 to float
  %5703 = call float @dx.op.binary.f32(i32 36, float %5609, float %5662)  ; FMin(a,b)
  %5704 = fmul fast float %5703, %5664
  %5705 = fsub fast float 1.000000e+00, %5704
  %5706 = bitcast float %5705 to i32
  %5707 = sub nsw i32 2129859010, %5706
  %5708 = bitcast i32 %5707 to float
  %5709 = fmul fast float %5682, %5658
  %5710 = fmul fast float %5709, %5696
  %5711 = fmul fast float %5685, %5659
  %5712 = fmul fast float %5711, %5702
  %5713 = fmul fast float %5688, %5660
  %5714 = fmul fast float %5713, %5708
  %5715 = call float @dx.op.dot3.f32(i32 55, float %5684, float %5687, float %5690, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5716 = select i1 %250, float 0.000000e+00, float %5684
  %5717 = select i1 %250, float %5715, float %5687
  %5718 = select i1 %250, float 0.000000e+00, float %5690
  %5719 = call float @dx.op.dot3.f32(i32 55, float %5710, float %5712, float %5714, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5720 = select i1 %250, float 0.000000e+00, float %5710
  %5721 = select i1 %250, float %5719, float %5712
  %5722 = select i1 %250, float 0.000000e+00, float %5714
  %5723 = fmul fast float %3799, %3799
  %5724 = call float @dx.op.unary.f32(i32 7, float %5723)  ; Saturate(value)
  %5725 = fmul fast float %5611, 9.843750e-01
  %5726 = fmul fast float %5606, 9.843750e-01
  %5727 = fadd fast float %5725, 7.812500e-03
  %5728 = fadd fast float %5726, 7.812500e-03
  %5729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %5727, float %5728, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5730 = extractvalue %dx.types.ResRet.f32 %5729, 0
  %5731 = extractvalue %dx.types.ResRet.f32 %5729, 1
  %5732 = extractvalue %dx.types.ResRet.f32 %5729, 2
  %5733 = extractvalue %dx.types.ResRet.f32 %5729, 3
  %5734 = fsub fast float 1.000000e+00, %5724
  %5735 = fsub fast float %5732, %5730
  %5736 = fsub fast float %5733, %5731
  %5737 = fmul fast float %5735, %5734
  %5738 = fmul fast float %5736, %5734
  %5739 = fadd fast float %5737, %5730
  %5740 = fadd fast float %5738, %5731
  %5741 = fmul fast float %5739, %5597
  %5742 = fmul fast float %5739, %5598
  %5743 = fmul fast float %5739, %5609
  %5744 = fadd fast float %5741, %5740
  %5745 = fadd fast float %5742, %5740
  %5746 = fadd fast float %5743, %5740
  %5747 = fcmp fast ogt float %4400, 0.000000e+00
  br i1 %5747, label %5748, label %5774

; <label>:5748                                    ; preds = %5590
  %5749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %4400, float %5611, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5750 = extractvalue %dx.types.ResRet.f32 %5749, 0
  %5751 = extractvalue %dx.types.ResRet.f32 %5749, 1
  %5752 = extractvalue %dx.types.ResRet.f32 %5749, 2
  %5753 = fadd fast float %5750, -5.000000e-01
  %5754 = fadd fast float %5751, -5.000000e-01
  %5755 = fadd fast float %5752, -5.000000e-01
  %5756 = fsub fast float 1.000000e+00, %5597
  %5757 = fsub fast float 1.000000e+00, %5598
  %5758 = fsub fast float 1.000000e+00, %5609
  %5759 = fmul fast float %5597, 4.000000e+00
  %5760 = fmul fast float %5759, %5756
  %5761 = fmul fast float %5760, %5753
  %5762 = fmul fast float %5598, 4.000000e+00
  %5763 = fmul fast float %5762, %5757
  %5764 = fmul fast float %5763, %5754
  %5765 = fmul fast float %5609, 4.000000e+00
  %5766 = fmul fast float %5765, %5758
  %5767 = fmul fast float %5766, %5755
  %5768 = fadd fast float %5761, %5744
  %5769 = fadd fast float %5764, %5745
  %5770 = fadd fast float %5767, %5746
  %5771 = call float @dx.op.unary.f32(i32 7, float %5768)  ; Saturate(value)
  %5772 = call float @dx.op.unary.f32(i32 7, float %5769)  ; Saturate(value)
  %5773 = call float @dx.op.unary.f32(i32 7, float %5770)  ; Saturate(value)
  br label %5774

; <label>:5774                                    ; preds = %5748, %5590
  %5775 = phi float [ %5771, %5748 ], [ %5744, %5590 ]
  %5776 = phi float [ %5772, %5748 ], [ %5745, %5590 ]
  %5777 = phi float [ %5773, %5748 ], [ %5746, %5590 ]
  %5778 = call float @dx.op.binary.f32(i32 35, float %5776, float %5777)  ; FMax(a,b)
  %5779 = call float @dx.op.binary.f32(i32 35, float %5775, float %5778)  ; FMax(a,b)
  %5780 = fsub fast float 1.000000e+00, %5779
  %5781 = fmul fast float %5780, %5716
  %5782 = fmul fast float %5780, %5717
  %5783 = fmul fast float %5780, %5718
  %5784 = call float @dx.op.dot3.f32(i32 55, float %5600, float %5601, float %5602, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5785 = fcmp fast ogt float %5784, 0x3E7FF19E20000000
  %5786 = fdiv fast float 1.000000e+00, %5784
  %5787 = select i1 %5785, float %5786, float 0.000000e+00
  %5788 = fmul fast float %5787, %5600
  %5789 = fmul fast float %5787, %5601
  %5790 = fmul fast float %5787, %5602
  %5791 = fadd fast float %5788, -1.000000e+00
  %5792 = fadd fast float %5789, -1.000000e+00
  %5793 = fadd fast float %5790, -1.000000e+00
  %5794 = fmul fast float %5791, 5.000000e-01
  %5795 = fmul fast float %5792, 5.000000e-01
  %5796 = fmul fast float %5793, 5.000000e-01
  %5797 = fadd fast float %5794, 1.000000e+00
  %5798 = fadd fast float %5795, 1.000000e+00
  %5799 = fadd fast float %5796, 1.000000e+00
  %5800 = call float @dx.op.binary.f32(i32 35, float %5611, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5801 = fdiv fast float %3799, %5800
  %5802 = fcmp fast olt float %4427, 1.270000e+02
  %5803 = fcmp fast olt float %4428, 1.270000e+02
  %5804 = fcmp fast olt float %4429, 1.270000e+02
  %5805 = fmul fast float %4427, 0xBFF7154760000000
  %5806 = fmul fast float %5805, %5801
  %5807 = fmul fast float %4428, 0xBFF7154760000000
  %5808 = fmul fast float %5807, %5801
  %5809 = fmul fast float %4429, 0xBFF7154760000000
  %5810 = fmul fast float %5809, %5801
  %5811 = call float @dx.op.unary.f32(i32 21, float %5806)  ; Exp(value)
  %5812 = call float @dx.op.unary.f32(i32 21, float %5808)  ; Exp(value)
  %5813 = call float @dx.op.unary.f32(i32 21, float %5810)  ; Exp(value)
  %5814 = call float @dx.op.unary.f32(i32 7, float %5811)  ; Saturate(value)
  %5815 = call float @dx.op.unary.f32(i32 7, float %5812)  ; Saturate(value)
  %5816 = call float @dx.op.unary.f32(i32 7, float %5813)  ; Saturate(value)
  %5817 = select i1 %5802, float %5814, float 0.000000e+00
  %5818 = select i1 %5803, float %5815, float 0.000000e+00
  %5819 = select i1 %5804, float %5816, float 0.000000e+00
  %5820 = fmul fast float %5817, %5780
  %5821 = fmul fast float %5818, %5780
  %5822 = fmul fast float %5819, %5780
  %5823 = fadd fast float %5820, -1.000000e+00
  %5824 = fadd fast float %5821, -1.000000e+00
  %5825 = fadd fast float %5822, -1.000000e+00
  %5826 = fmul fast float %5775, %5720
  %5827 = fmul fast float %5776, %5721
  %5828 = fmul fast float %5777, %5722
  %5829 = fsub fast float 1.000000e+00, %5611
  %5830 = bitcast float %5829 to i32
  %5831 = sitofp i32 %5830 to float
  %5832 = fmul fast float %5831, 5.000000e+00
  %5833 = fadd fast float %5832, 0xC1EFBF8940000000
  %5834 = fptosi float %5833 to i32
  %5835 = bitcast i32 %5834 to float
  %5836 = fmul fast float %5835, %4401
  %5837 = fmul fast float %5716, %5836
  %5838 = fmul fast float %5837, %5780
  %5839 = fmul fast float %5838, %5797
  %5840 = fmul fast float %5717, %5836
  %5841 = fmul fast float %5840, %5780
  %5842 = fmul fast float %5841, %5798
  %5843 = fmul fast float %5718, %5836
  %5844 = fmul fast float %5843, %5780
  %5845 = fmul fast float %5844, %5799
  %5846 = fmul fast float %5781, %4397
  %5847 = fmul fast float %5782, %4397
  %5848 = fmul fast float %5783, %4397
  %5849 = fadd fast float %5826, %4390
  %5850 = fadd fast float %5849, %5839
  %5851 = fmul fast float %5850, %4397
  %5852 = fadd fast float %5827, %4391
  %5853 = fadd fast float %5852, %5842
  %5854 = fmul fast float %5853, %4397
  %5855 = fadd fast float %5828, %4392
  %5856 = fadd fast float %5855, %5845
  %5857 = fmul fast float %5856, %4397
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 3
  %5860 = fcmp fast oeq float %5859, 0.000000e+00
  br i1 %5860, label %6957, label %5861

; <label>:5861                                    ; preds = %5774
  %5862 = extractvalue %dx.types.CBufRet.f32 %5858, 0
  %5863 = extractvalue %dx.types.CBufRet.f32 %5858, 1
  %5864 = extractvalue %dx.types.CBufRet.f32 %5858, 2
  %5865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5866 = extractvalue %dx.types.CBufRet.f32 %5865, 0
  %5867 = extractvalue %dx.types.CBufRet.f32 %5865, 1
  %5868 = extractvalue %dx.types.CBufRet.f32 %5865, 2
  %5869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5870 = extractvalue %dx.types.CBufRet.f32 %5869, 0
  %5871 = extractvalue %dx.types.CBufRet.f32 %5869, 1
  %5872 = call float @dx.op.dot3.f32(i32 55, float %5866, float %5867, float %5868, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = select i1 %250, float %5870, float %5866
  %5874 = select i1 %250, float %5872, float %5867
  %5875 = select i1 %250, float %5871, float %5868
  %5876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5876, 2
  %5878 = fmul fast float %5877, %111
  %5879 = fmul fast float %5877, %112
  %5880 = fmul fast float %5877, %113
  %5881 = fadd fast float %5878, %191
  %5882 = fadd fast float %5879, %192
  %5883 = fadd fast float %5880, %193
  %5884 = fcmp fast olt float %5859, 0.000000e+00
  br i1 %5884, label %6524, label %5885

; <label>:5885                                    ; preds = %5861
  %5886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5887 = extractvalue %dx.types.CBufRet.f32 %5886, 0
  %5888 = extractvalue %dx.types.CBufRet.f32 %5886, 1
  %5889 = extractvalue %dx.types.CBufRet.f32 %5886, 2
  %5890 = extractvalue %dx.types.CBufRet.f32 %5886, 3
  %5891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5892 = extractvalue %dx.types.CBufRet.f32 %5891, 0
  %5893 = extractvalue %dx.types.CBufRet.f32 %5891, 1
  %5894 = extractvalue %dx.types.CBufRet.f32 %5891, 2
  %5895 = extractvalue %dx.types.CBufRet.f32 %5891, 3
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.CBufRet.f32 %5896, 1
  %5899 = extractvalue %dx.types.CBufRet.f32 %5896, 2
  %5900 = extractvalue %dx.types.CBufRet.f32 %5896, 3
  %5901 = fmul fast float %5887, %5881
  %5902 = call float @dx.op.tertiary.f32(i32 46, float %5882, float %5888, float %5901)  ; FMad(a,b,c)
  %5903 = call float @dx.op.tertiary.f32(i32 46, float %5883, float %5889, float %5902)  ; FMad(a,b,c)
  %5904 = fadd fast float %5903, %5890
  %5905 = fmul fast float %5892, %5881
  %5906 = call float @dx.op.tertiary.f32(i32 46, float %5882, float %5893, float %5905)  ; FMad(a,b,c)
  %5907 = call float @dx.op.tertiary.f32(i32 46, float %5883, float %5894, float %5906)  ; FMad(a,b,c)
  %5908 = fadd fast float %5907, %5895
  %5909 = fmul fast float %5897, %5881
  %5910 = call float @dx.op.tertiary.f32(i32 46, float %5882, float %5898, float %5909)  ; FMad(a,b,c)
  %5911 = call float @dx.op.tertiary.f32(i32 46, float %5883, float %5899, float %5910)  ; FMad(a,b,c)
  %5912 = fadd fast float %5911, %5900
  %5913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5914 = extractvalue %dx.types.CBufRet.f32 %5913, 0
  %5915 = fcmp fast une float %5914, 0.000000e+00
  %5916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5917 = extractvalue %dx.types.CBufRet.f32 %5916, 0
  %5918 = extractvalue %dx.types.CBufRet.f32 %5916, 1
  %5919 = extractvalue %dx.types.CBufRet.f32 %5916, 3
  %5920 = fmul fast float %5919, %5904
  %5921 = fmul fast float %5919, %5908
  %5922 = fadd fast float %5920, %5917
  %5923 = fadd fast float %5921, %5918
  %5924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5925 = extractvalue %dx.types.CBufRet.f32 %5924, 0
  %5926 = extractvalue %dx.types.CBufRet.f32 %5924, 1
  %5927 = extractvalue %dx.types.CBufRet.f32 %5924, 3
  %5928 = fmul fast float %5927, %5904
  %5929 = fmul fast float %5927, %5908
  %5930 = fadd fast float %5928, %5925
  %5931 = fadd fast float %5929, %5926
  %5932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5933 = extractvalue %dx.types.CBufRet.f32 %5932, 1
  %5934 = fsub fast float %5933, %5912
  %5935 = extractvalue %dx.types.CBufRet.f32 %5932, 2
  %5936 = fmul fast float %5934, %5935
  %5937 = fsub fast float 1.000000e+00, %5936
  %5938 = call float @dx.op.unary.f32(i32 7, float %5937)  ; Saturate(value)
  br i1 %5915, label %5999, label %5939

; <label>:5939                                    ; preds = %5885
  %5940 = extractvalue %dx.types.CBufRet.f32 %5924, 2
  %5941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5942 = extractvalue %dx.types.CBufRet.f32 %5941, 2
  %5943 = fadd fast float %5942, %5940
  %5944 = fcmp fast ogt float %5943, 0.000000e+00
  br i1 %5944, label %5945, label %5969

; <label>:5945                                    ; preds = %5939
  %5946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5947 = extractvalue %dx.types.CBufRet.f32 %5946, 0
  %5948 = extractvalue %dx.types.CBufRet.f32 %5946, 1
  %5949 = fsub fast float %5930, %5947
  %5950 = fsub fast float %5931, %5948
  %5951 = fcmp fast olt float %5949, 0.000000e+00
  %5952 = fcmp fast olt float %5950, 0.000000e+00
  %5953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5954 = extractvalue %dx.types.CBufRet.f32 %5953, 0
  %5955 = extractvalue %dx.types.CBufRet.f32 %5953, 1
  %5956 = extractvalue %dx.types.CBufRet.f32 %5953, 2
  %5957 = extractvalue %dx.types.CBufRet.f32 %5953, 3
  %5958 = select i1 %5951, float %5954, float %5956
  %5959 = select i1 %5952, float %5955, float %5957
  %5960 = fmul fast float %5958, %5949
  %5961 = fmul fast float %5959, %5950
  %5962 = call float @dx.op.unary.f32(i32 6, float %5960)  ; FAbs(value)
  %5963 = call float @dx.op.unary.f32(i32 6, float %5961)  ; FAbs(value)
  %5964 = extractvalue %dx.types.CBufRet.f32 %5876, 0
  %5965 = call float @dx.op.binary.f32(i32 35, float %5962, float %5963)  ; FMax(a,b)
  %5966 = fsub fast float %5964, %5965
  %5967 = call float @dx.op.unary.f32(i32 7, float %5966)  ; Saturate(value)
  %5968 = fmul fast float %5967, %5938
  br label %5969

; <label>:5969                                    ; preds = %5945, %5939
  %5970 = phi float [ %5968, %5945 ], [ 0.000000e+00, %5939 ]
  %5971 = extractvalue %dx.types.CBufRet.f32 %5916, 2
  %5972 = extractvalue %dx.types.CBufRet.f32 %5941, 1
  %5973 = fadd fast float %5972, %5971
  %5974 = fcmp fast ogt float %5973, 0.000000e+00
  br i1 %5974, label %5975, label %5999

; <label>:5975                                    ; preds = %5969
  %5976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5977 = extractvalue %dx.types.CBufRet.f32 %5976, 0
  %5978 = extractvalue %dx.types.CBufRet.f32 %5976, 1
  %5979 = fsub fast float %5922, %5977
  %5980 = fsub fast float %5923, %5978
  %5981 = fcmp fast olt float %5979, 0.000000e+00
  %5982 = fcmp fast olt float %5980, 0.000000e+00
  %5983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.f32 %5983, 0
  %5985 = extractvalue %dx.types.CBufRet.f32 %5983, 1
  %5986 = extractvalue %dx.types.CBufRet.f32 %5983, 2
  %5987 = extractvalue %dx.types.CBufRet.f32 %5983, 3
  %5988 = select i1 %5981, float %5984, float %5986
  %5989 = select i1 %5982, float %5985, float %5987
  %5990 = fmul fast float %5988, %5979
  %5991 = fmul fast float %5989, %5980
  %5992 = call float @dx.op.unary.f32(i32 6, float %5990)  ; FAbs(value)
  %5993 = call float @dx.op.unary.f32(i32 6, float %5991)  ; FAbs(value)
  %5994 = extractvalue %dx.types.CBufRet.f32 %5876, 0
  %5995 = call float @dx.op.binary.f32(i32 35, float %5992, float %5993)  ; FMax(a,b)
  %5996 = fsub fast float %5994, %5995
  %5997 = call float @dx.op.unary.f32(i32 7, float %5996)  ; Saturate(value)
  %5998 = fmul fast float %5997, %5938
  br label %5999

; <label>:5999                                    ; preds = %5975, %5969, %5885
  %6000 = phi float [ 0.000000e+00, %5885 ], [ %5998, %5975 ], [ 0.000000e+00, %5969 ]
  %6001 = phi float [ 0.000000e+00, %5885 ], [ %5970, %5975 ], [ %5970, %5969 ]
  %6002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6003 = extractvalue %dx.types.CBufRet.f32 %6002, 1
  %6004 = call float @dx.op.unary.f32(i32 7, float %6003)  ; Saturate(value)
  %6005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6006 = extractvalue %dx.types.CBufRet.f32 %6005, 0
  %6007 = extractvalue %dx.types.CBufRet.f32 %6005, 1
  %6008 = fsub fast float %5904, %6006
  %6009 = fsub fast float %5908, %6007
  %6010 = fcmp fast olt float %6008, 0.000000e+00
  %6011 = fcmp fast olt float %6009, 0.000000e+00
  %6012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6013 = extractvalue %dx.types.CBufRet.f32 %6012, 0
  %6014 = extractvalue %dx.types.CBufRet.f32 %6012, 1
  %6015 = extractvalue %dx.types.CBufRet.f32 %6012, 2
  %6016 = extractvalue %dx.types.CBufRet.f32 %6012, 3
  %6017 = select i1 %6010, float %6013, float %6015
  %6018 = select i1 %6011, float %6014, float %6016
  %6019 = fmul fast float %6017, %6008
  %6020 = fmul fast float %6018, %6009
  %6021 = call float @dx.op.unary.f32(i32 6, float %6019)  ; FAbs(value)
  %6022 = call float @dx.op.unary.f32(i32 6, float %6020)  ; FAbs(value)
  %6023 = extractvalue %dx.types.CBufRet.f32 %5876, 0
  %6024 = call float @dx.op.binary.f32(i32 35, float %6021, float %6022)  ; FMax(a,b)
  %6025 = fsub fast float %6023, %6024
  %6026 = call float @dx.op.unary.f32(i32 7, float %6025)  ; Saturate(value)
  %6027 = call float @dx.op.binary.f32(i32 36, float %6026, float %6004)  ; FMin(a,b)
  %6028 = fmul fast float %6027, %5938
  %6029 = fsub fast float %6000, %6028
  %6030 = fsub fast float %6001, %6000
  %6031 = fsub fast float %6030, %6028
  %6032 = call float @dx.op.binary.f32(i32 35, float %6000, float %6001)  ; FMax(a,b)
  %6033 = call float @dx.op.binary.f32(i32 35, float %6028, float %6032)  ; FMax(a,b)
  %6034 = fcmp fast olt float %6033, 1.000000e+00
  br i1 %6034, label %6035, label %6433, !dx.controlflow.hints !94

; <label>:6035                                    ; preds = %5999
  %6036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6037 = extractvalue %dx.types.CBufRet.f32 %6036, 0
  %6038 = fcmp fast une float %6037, 0.000000e+00
  br i1 %6038, label %6039, label %6433, !dx.controlflow.hints !95

; <label>:6039                                    ; preds = %6035
  %6040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6041 = extractvalue %dx.types.CBufRet.f32 %6040, 0
  %6042 = extractvalue %dx.types.CBufRet.f32 %6040, 1
  %6043 = extractvalue %dx.types.CBufRet.f32 %6040, 2
  %6044 = extractvalue %dx.types.CBufRet.f32 %6040, 3
  %6045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6046 = extractvalue %dx.types.CBufRet.f32 %6045, 0
  %6047 = extractvalue %dx.types.CBufRet.f32 %6045, 1
  %6048 = extractvalue %dx.types.CBufRet.f32 %6045, 2
  %6049 = extractvalue %dx.types.CBufRet.f32 %6045, 3
  %6050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6051 = extractvalue %dx.types.CBufRet.f32 %6050, 0
  %6052 = extractvalue %dx.types.CBufRet.f32 %6050, 1
  %6053 = extractvalue %dx.types.CBufRet.f32 %6050, 2
  %6054 = extractvalue %dx.types.CBufRet.f32 %6050, 3
  %6055 = fmul fast float %6041, %5881
  %6056 = call float @dx.op.tertiary.f32(i32 46, float %5882, float %6042, float %6055)  ; FMad(a,b,c)
  %6057 = call float @dx.op.tertiary.f32(i32 46, float %5883, float %6043, float %6056)  ; FMad(a,b,c)
  %6058 = fadd fast float %6057, %6044
  %6059 = fmul fast float %6046, %5881
  %6060 = call float @dx.op.tertiary.f32(i32 46, float %5882, float %6047, float %6059)  ; FMad(a,b,c)
  %6061 = call float @dx.op.tertiary.f32(i32 46, float %5883, float %6048, float %6060)  ; FMad(a,b,c)
  %6062 = fadd fast float %6061, %6049
  %6063 = fmul fast float %6051, %5881
  %6064 = call float @dx.op.tertiary.f32(i32 46, float %5882, float %6052, float %6063)  ; FMad(a,b,c)
  %6065 = call float @dx.op.tertiary.f32(i32 46, float %5883, float %6053, float %6064)  ; FMad(a,b,c)
  %6066 = fadd fast float %6065, %6054
  %6067 = fcmp fast oge float %6058, 1.000000e+00
  %6068 = fcmp fast oge float %6062, 1.000000e+00
  %6069 = or i1 %6067, %6068
  %6070 = fcmp fast olt float %6058, 0.000000e+00
  %6071 = fcmp fast olt float %6062, 0.000000e+00
  %6072 = or i1 %6070, %6071
  %6073 = or i1 %6069, %6072
  br i1 %6073, label %6433, label %6074, !dx.controlflow.hints !96

; <label>:6074                                    ; preds = %6039
  %6075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6076 = extractvalue %dx.types.CBufRet.f32 %6075, 0
  %6077 = extractvalue %dx.types.CBufRet.f32 %6075, 1
  %6078 = extractvalue %dx.types.CBufRet.f32 %6075, 2
  %6079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6080 = extractvalue %dx.types.CBufRet.i32 %6079, 2
  %6081 = uitofp i32 %6080 to float
  %6082 = extractvalue %dx.types.CBufRet.i32 %6079, 3
  %6083 = uitofp i32 %6082 to float
  %6084 = extractvalue %dx.types.CBufRet.f32 %6075, 3
  %6085 = fmul fast float %6084, 2.000000e+00
  %6086 = fsub fast float %6058, %6076
  %6087 = fsub fast float %6062, %6077
  %6088 = fmul fast float %6085, %6086
  %6089 = fmul fast float %6085, %6087
  %6090 = fdiv fast float 1.000000e+00, %5864
  %6091 = fmul fast float %6089, %6090
  %6092 = call float @dx.op.unary.f32(i32 6, float %6091)  ; FAbs(value)
  %6093 = fmul fast float %6078, %5883
  %6094 = fmul fast float %6093, %6085
  %6095 = call float @dx.op.unary.f32(i32 6, float %6094)  ; FAbs(value)
  %6096 = call float @dx.op.unary.f32(i32 6, float %6088)  ; FAbs(value)
  %6097 = call float @dx.op.binary.f32(i32 35, float %6095, float %6092)  ; FMax(a,b)
  %6098 = call float @dx.op.binary.f32(i32 35, float %6096, float %6097)  ; FMax(a,b)
  %6099 = fmul fast float %6098, 2.000000e+00
  %6100 = call float @dx.op.unary.f32(i32 23, float %6099)  ; Log(value)
  %6101 = call float @dx.op.binary.f32(i32 35, float %6100, float %6081)  ; FMax(a,b)
  %6102 = call float @dx.op.unary.f32(i32 22, float %6101)  ; Frc(value)
  %6103 = fadd fast float %6102, 0xBFEA666660000000
  %6104 = fmul fast float %6103, 8.000000e+00
  %6105 = call float @dx.op.unary.f32(i32 7, float %6104)  ; Saturate(value)
  %6106 = call float @dx.op.unary.f32(i32 27, float %6101)  ; Round_ni(value)
  %6107 = fadd fast float %6106, %6105
  %6108 = call float @dx.op.binary.f32(i32 36, float %6107, float %6083)  ; FMin(a,b)
  %6109 = call float @dx.op.unary.f32(i32 27, float %6108)  ; Round_ni(value)
  %6110 = fsub fast float -0.000000e+00, %6109
  %6111 = call float @dx.op.unary.f32(i32 21, float %6110)  ; Exp(value)
  %6112 = fmul fast float %6111, %6085
  %6113 = fmul fast float %6112, %6058
  %6114 = fmul fast float %6112, %6062
  %6115 = fmul fast float %6113, 2.500000e-01
  %6116 = fmul fast float %6114, 2.500000e-01
  %6117 = fadd fast float %6115, 5.000000e-01
  %6118 = fadd fast float %6116, 5.000000e-01
  %6119 = fsub fast float %6083, %6081
  %6120 = fptoui float %6119 to i32
  %6121 = add i32 %6120, 320
  %6122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %6121)  ; CBufferLoadLegacy(handle,regIndex)
  %6123 = extractvalue %dx.types.CBufRet.f32 %6122, 0
  %6124 = extractvalue %dx.types.CBufRet.f32 %6122, 1
  %6125 = fcmp fast une float %6108, %6083
  %6126 = fsub fast float %6058, %6123
  %6127 = fsub fast float %6062, %6124
  %6128 = call float @dx.op.unary.f32(i32 6, float %6126)  ; FAbs(value)
  %6129 = call float @dx.op.unary.f32(i32 6, float %6127)  ; FAbs(value)
  %6130 = fmul fast float %6128, %6112
  %6131 = fmul fast float %6129, %6112
  %6132 = fcmp fast olt float %6130, 1.000000e+00
  %6133 = fcmp fast olt float %6131, 1.000000e+00
  %6134 = and i1 %6132, %6133
  %6135 = or i1 %6125, %6134
  br i1 %6135, label %6136, label %6433, !dx.controlflow.hints !97

; <label>:6136                                    ; preds = %6074
  %6137 = fmul fast float %6114, 5.000000e-01
  %6138 = fmul fast float %6113, 5.000000e-01
  %6139 = fadd fast float %6137, 5.000000e-01
  %6140 = fadd fast float %6138, 5.000000e-01
  %6141 = sitofp i32 %6080 to float
  %6142 = fsub fast float %6108, %6141
  %6143 = call float @dx.op.unary.f32(i32 27, float %6142)  ; Round_ni(value)
  %6144 = call float @dx.op.unary.f32(i32 22, float %6108)  ; Frc(value)
  %6145 = call float @dx.op.unary.f32(i32 22, float %6140)  ; Frc(value)
  %6146 = call float @dx.op.unary.f32(i32 22, float %6139)  ; Frc(value)
  %6147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6145, float %6146, float %6143, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6148 = extractvalue %dx.types.ResRet.f32 %6147, 0
  %6149 = extractvalue %dx.types.ResRet.f32 %6147, 1
  %6150 = extractvalue %dx.types.ResRet.f32 %6147, 2
  %6151 = extractvalue %dx.types.ResRet.f32 %6147, 3
  %6152 = fcmp fast ogt float %6144, 0.000000e+00
  br i1 %6152, label %6153, label %6174, !dx.controlflow.hints !98

; <label>:6153                                    ; preds = %6136
  %6154 = fadd fast float %6143, 1.000000e+00
  %6155 = call float @dx.op.unary.f32(i32 22, float %6117)  ; Frc(value)
  %6156 = call float @dx.op.unary.f32(i32 22, float %6118)  ; Frc(value)
  %6157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6155, float %6156, float %6154, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6158 = extractvalue %dx.types.ResRet.f32 %6157, 0
  %6159 = extractvalue %dx.types.ResRet.f32 %6157, 1
  %6160 = extractvalue %dx.types.ResRet.f32 %6157, 2
  %6161 = extractvalue %dx.types.ResRet.f32 %6157, 3
  %6162 = fsub fast float %6158, %6148
  %6163 = fsub fast float %6159, %6149
  %6164 = fsub fast float %6160, %6150
  %6165 = fsub fast float %6161, %6151
  %6166 = fmul fast float %6162, %6144
  %6167 = fmul fast float %6163, %6144
  %6168 = fmul fast float %6164, %6144
  %6169 = fmul fast float %6165, %6144
  %6170 = fadd fast float %6166, %6148
  %6171 = fadd fast float %6167, %6149
  %6172 = fadd fast float %6168, %6150
  %6173 = fadd fast float %6169, %6151
  br label %6174

; <label>:6174                                    ; preds = %6153, %6136
  %6175 = phi float [ %6170, %6153 ], [ %6148, %6136 ]
  %6176 = phi float [ %6171, %6153 ], [ %6149, %6136 ]
  %6177 = phi float [ %6172, %6153 ], [ %6150, %6136 ]
  %6178 = phi float [ %6173, %6153 ], [ %6151, %6136 ]
  %6179 = fadd fast float %6175, -5.000000e-01
  %6180 = fadd fast float %6177, -5.000000e-01
  %6181 = fmul fast float %6179, 0xBFD5555560000000
  %6182 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6180, float %6181)  ; FMad(a,b,c)
  %6183 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6176, float 0.000000e+00)  ; FMad(a,b,c)
  %6184 = fadd fast float %6183, %6178
  %6185 = fmul fast float %6179, -7.500000e-01
  %6186 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6180, float %6185)  ; FMad(a,b,c)
  %6187 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6176, float 0.000000e+00)  ; FMad(a,b,c)
  %6188 = fadd fast float %6187, %6178
  %6189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6190 = extractvalue %dx.types.CBufRet.f32 %6189, 0
  %6191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6192 = extractvalue %dx.types.CBufRet.f32 %6191, 0
  %6193 = extractvalue %dx.types.CBufRet.f32 %6191, 1
  %6194 = extractvalue %dx.types.CBufRet.f32 %6191, 2
  %6195 = extractvalue %dx.types.CBufRet.f32 %6191, 3
  %6196 = fsub fast float %6192, %6182
  %6197 = fsub fast float %6193, %6184
  %6198 = fsub fast float %6194, %6186
  %6199 = fsub fast float %6195, %6188
  %6200 = fmul fast float %6196, %6190
  %6201 = fmul fast float %6197, %6190
  %6202 = fmul fast float %6198, %6190
  %6203 = fmul fast float %6199, %6190
  %6204 = fadd fast float %6200, %6182
  %6205 = fadd fast float %6201, %6184
  %6206 = fadd fast float %6202, %6186
  %6207 = fadd fast float %6203, %6188
  %6208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6209 = extractvalue %dx.types.ResRet.i32 %6208, 0
  %6210 = and i32 %6209, 536870911
  %6211 = uitofp i32 %6210 to float
  %6212 = fmul fast float %6211, %6058
  %6213 = fmul fast float %6211, %6062
  %6214 = fptoui float %6212 to i32
  %6215 = fptoui float %6213 to i32
  %6216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6217 = extractvalue %dx.types.ResRet.i32 %6216, 0
  %6218 = and i32 %6217, 31
  %6219 = lshr i32 %6214, %6218
  %6220 = lshr i32 %6215, %6218
  %6221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6222 = extractvalue %dx.types.ResRet.i32 %6221, 0
  %6223 = and i32 %6222, 31
  %6224 = shl i32 1, %6223
  %6225 = call i32 @dx.op.binary.i32(i32 40, i32 %6224, i32 4)  ; UMin(a,b)
  %6226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6227 = extractvalue %dx.types.ResRet.i32 %6226, 0
  %6228 = extractvalue %dx.types.ResRet.i32 %6226, 1
  %6229 = icmp eq i32 %6225, 0
  br i1 %6229, label %6271, label %6230

; <label>:6230                                    ; preds = %6174
  br label %6231

; <label>:6231                                    ; preds = %6259, %6230
  %6232 = phi i32 [ %6262, %6259 ], [ 0, %6230 ]
  %6233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6234 = extractvalue %dx.types.ResRet.i32 %6233, 0
  %6235 = lshr i32 %6234, 16
  %6236 = and i32 %6235, 31
  %6237 = shl i32 %6220, %6236
  %6238 = add i32 %6237, %6219
  %6239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6240 = extractvalue %dx.types.ResRet.i32 %6239, 0
  %6241 = and i32 %6240, 31
  %6242 = shl i32 %6238, %6241
  %6243 = add i32 %6242, %6232
  %6244 = shl i32 %6243, 2
  %6245 = add i32 %6244, 32
  %6246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6245, i32 undef)  ; BufferLoad(srv,index,wot)
  %6247 = extractvalue %dx.types.ResRet.i32 %6246, 0
  %6248 = icmp slt i32 %6247, 0
  %6249 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6232
  %6250 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6232
  %6251 = bitcast float* %6249 to i32*
  %6252 = bitcast float* %6250 to i32*
  br i1 %6248, label %6253, label %6259

; <label>:6253                                    ; preds = %6231
  %6254 = and i32 %6247, 1073741823
  %6255 = add nuw nsw i32 %6254, 20
  %6256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6255, i32 undef)  ; BufferLoad(srv,index,wot)
  %6257 = extractvalue %dx.types.ResRet.i32 %6256, 0
  %6258 = extractvalue %dx.types.ResRet.i32 %6256, 1
  br label %6259

; <label>:6259                                    ; preds = %6253, %6231
  %6260 = phi i32 [ %6257, %6253 ], [ %6227, %6231 ]
  %6261 = phi i32 [ %6258, %6253 ], [ %6228, %6231 ]
  store i32 %6260, i32* %6251, align 4
  store i32 %6261, i32* %6252, align 4
  %6262 = add nuw i32 %6232, 1
  %6263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6264 = extractvalue %dx.types.CBufRet.i32 %6263, 2
  %6265 = icmp eq i32 %6264, 0
  %6266 = icmp ugt i32 %6247, -1073741825
  %6267 = and i1 %6266, %6265
  %6268 = icmp ult i32 %6262, %6225
  %6269 = and i1 %6267, %6268
  br i1 %6269, label %6231, label %6270

; <label>:6270                                    ; preds = %6259
  br label %6271

; <label>:6271                                    ; preds = %6270, %6174
  %6272 = phi i32 [ 0, %6174 ], [ %6262, %6270 ]
  %6273 = extractvalue %dx.types.CBufRet.f32 %6036, 2
  %6274 = fptoui float %6273 to i32
  %6275 = icmp eq i32 %6274, 0
  br i1 %6275, label %6327, label %6276

; <label>:6276                                    ; preds = %6271
  br label %6277

; <label>:6277                                    ; preds = %6322, %6276
  %6278 = phi i32 [ %6323, %6322 ], [ %6272, %6276 ]
  %6279 = phi i32 [ %6324, %6322 ], [ 0, %6276 ]
  %6280 = lshr i32 %6279, 2
  %6281 = and i32 %6279, 3
  %6282 = add nuw nsw i32 %6280, 83
  %6283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6282)  ; CBufferLoadLegacy(handle,regIndex)
  %6284 = extractvalue %dx.types.CBufRet.i32 %6283, 0
  %6285 = extractvalue %dx.types.CBufRet.i32 %6283, 1
  %6286 = extractvalue %dx.types.CBufRet.i32 %6283, 2
  %6287 = extractvalue %dx.types.CBufRet.i32 %6283, 3
  %6288 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6284, i32* %6288, align 4
  %6289 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6285, i32* %6289, align 4
  %6290 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6286, i32* %6290, align 4
  %6291 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6287, i32* %6291, align 4
  %6292 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6281
  %6293 = load i32, i32* %6292, align 4, !tbaa !99, !noalias !103
  %6294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6295 = extractvalue %dx.types.ResRet.i32 %6294, 0
  %6296 = lshr i32 %6295, 16
  %6297 = and i32 %6296, 31
  %6298 = shl i32 %6220, %6297
  %6299 = add i32 %6298, %6219
  %6300 = shl i32 %6299, 2
  %6301 = add i32 %6300, %6293
  %6302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6301, i32 undef)  ; BufferLoad(srv,index,wot)
  %6303 = extractvalue %dx.types.ResRet.i32 %6302, 0
  %6304 = icmp eq i32 %6303, 0
  br i1 %6304, label %6322, label %6305

; <label>:6305                                    ; preds = %6277
  %6306 = icmp slt i32 %6303, 0
  %6307 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6278
  %6308 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6278
  %6309 = bitcast float* %6307 to i32*
  %6310 = bitcast float* %6308 to i32*
  br i1 %6306, label %6311, label %6318

; <label>:6311                                    ; preds = %6305
  %6312 = and i32 %6303, 1073741823
  %6313 = add i32 %6293, 20
  %6314 = add i32 %6313, %6312
  %6315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6314, i32 undef)  ; BufferLoad(srv,index,wot)
  %6316 = extractvalue %dx.types.ResRet.i32 %6315, 0
  %6317 = extractvalue %dx.types.ResRet.i32 %6315, 1
  br label %6318

; <label>:6318                                    ; preds = %6311, %6305
  %6319 = phi i32 [ %6316, %6311 ], [ %6227, %6305 ]
  %6320 = phi i32 [ %6317, %6311 ], [ %6228, %6305 ]
  store i32 %6319, i32* %6309, align 4
  store i32 %6320, i32* %6310, align 4
  %6321 = add i32 %6278, 1
  br label %6322

; <label>:6322                                    ; preds = %6318, %6277
  %6323 = phi i32 [ %6278, %6277 ], [ %6321, %6318 ]
  %6324 = add nuw i32 %6279, 1
  %6325 = icmp eq i32 %6324, %6274
  br i1 %6325, label %6326, label %6277

; <label>:6326                                    ; preds = %6322
  br label %6327

; <label>:6327                                    ; preds = %6326, %6271
  %6328 = phi i32 [ %6272, %6271 ], [ %6323, %6326 ]
  %6329 = icmp eq i32 %6328, 1
  %6330 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 0
  %6331 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  br i1 %6329, label %6332, label %6335

; <label>:6332                                    ; preds = %6327
  %6333 = load float, float* %6330, align 4
  %6334 = load float, float* %6331, align 4
  br label %6362

; <label>:6335                                    ; preds = %6327
  %6336 = load float, float* %6330, align 4
  %6337 = load float, float* %6331, align 4
  %6338 = fdiv fast float 1.000000e+00, %6337
  %6339 = fsub fast float %6336, %6338
  %6340 = icmp ugt i32 %6328, 1
  br i1 %6340, label %6341, label %6357

; <label>:6341                                    ; preds = %6335
  br label %6342

; <label>:6342                                    ; preds = %6342, %6341
  %6343 = phi float [ %6352, %6342 ], [ %6339, %6341 ]
  %6344 = phi float [ %6353, %6342 ], [ %6336, %6341 ]
  %6345 = phi i32 [ %6354, %6342 ], [ 1, %6341 ]
  %6346 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6345
  %6347 = load float, float* %6346, align 4
  %6348 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6345
  %6349 = load float, float* %6348, align 4
  %6350 = fdiv fast float 1.000000e+00, %6349
  %6351 = fsub fast float %6347, %6350
  %6352 = call float @dx.op.binary.f32(i32 36, float %6343, float %6351)  ; FMin(a,b)
  %6353 = call float @dx.op.binary.f32(i32 35, float %6344, float %6347)  ; FMax(a,b)
  %6354 = add nuw i32 %6345, 1
  %6355 = icmp eq i32 %6354, %6328
  br i1 %6355, label %6356, label %6342

; <label>:6356                                    ; preds = %6342
  br label %6357

; <label>:6357                                    ; preds = %6356, %6335
  %6358 = phi float [ %6339, %6335 ], [ %6352, %6356 ]
  %6359 = phi float [ %6336, %6335 ], [ %6353, %6356 ]
  %6360 = fsub fast float %6359, %6358
  %6361 = fdiv fast float 1.000000e+00, %6360
  br label %6362

; <label>:6362                                    ; preds = %6357, %6332
  %6363 = phi float [ %6333, %6332 ], [ %6359, %6357 ]
  %6364 = phi float [ %6334, %6332 ], [ %6361, %6357 ]
  %6365 = fadd fast float %6066, %6363
  %6366 = fmul fast float %6365, %6364
  %6367 = call float @dx.op.unary.f32(i32 7, float %6366)  ; Saturate(value)
  %6368 = fmul fast float %6367, 2.000000e+00
  %6369 = fsub fast float 1.000000e+00, %6368
  %6370 = fmul fast float %6204, %6204
  %6371 = fsub fast float %6205, %6370
  %6372 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6371)  ; FMax(a,b)
  %6373 = fdiv fast float 1.000000e+00, %6372
  %6374 = fmul fast float %6205, %6204
  %6375 = fsub fast float %6206, %6374
  %6376 = fsub fast float %6369, %6204
  %6377 = fmul fast float %6369, %6369
  %6378 = fsub fast float %6377, %6205
  %6379 = fmul fast float %6373, %6375
  %6380 = fmul fast float %6379, %6376
  %6381 = fsub fast float %6378, %6380
  %6382 = fmul fast float %6205, %6205
  %6383 = fsub fast float %6207, %6382
  %6384 = fmul fast float %6375, %6375
  %6385 = fmul fast float %6384, %6373
  %6386 = fsub fast float %6383, %6385
  %6387 = fdiv fast float %6381, %6386
  %6388 = fmul fast float %6387, %6375
  %6389 = fsub fast float %6376, %6388
  %6390 = fmul fast float %6389, %6373
  %6391 = fmul fast float %6390, %6204
  %6392 = fsub fast float 1.000000e+00, %6391
  %6393 = fmul fast float %6387, %6205
  %6394 = fsub fast float %6392, %6393
  %6395 = fmul fast float %6390, %6390
  %6396 = fmul fast float %6387, 4.000000e+00
  %6397 = fmul fast float %6396, %6394
  %6398 = fsub fast float %6395, %6397
  %6399 = call float @dx.op.unary.f32(i32 24, float %6398)  ; Sqrt(value)
  %6400 = fcmp fast oge float %6390, 0.000000e+00
  %6401 = fsub fast float -0.000000e+00, %6399
  %6402 = select i1 %6400, float %6401, float %6399
  %6403 = fsub fast float %6402, %6390
  %6404 = fdiv fast float %6403, %6387
  %6405 = fdiv fast float %6394, %6403
  %6406 = fmul fast float %6404, 5.000000e-01
  %6407 = fmul fast float %6405, 2.000000e+00
  %6408 = select i1 %6400, float %6406, float %6407
  %6409 = select i1 %6400, float %6407, float %6406
  %6410 = call float @dx.op.binary.f32(i32 35, float %6408, float %6409)  ; FMax(a,b)
  %6411 = call float @dx.op.binary.f32(i32 36, float %6408, float %6409)  ; FMin(a,b)
  %6412 = fcmp fast ogt float %6369, %6410
  %6413 = fsub fast float %6369, %6411
  %6414 = fsub fast float %6369, %6410
  %6415 = fsub fast float %6410, %6411
  %6416 = select i1 %6412, float %6414, float %6415
  %6417 = fmul float %6413, %6416
  %6418 = select i1 %6412, float %6411, float %6369
  %6419 = fcmp fast ogt float %6369, %6411
  %6420 = fmul fast float %6418, %6410
  %6421 = fadd fast float %6418, %6410
  %6422 = fmul fast float %6421, %6204
  %6423 = fadd fast float %6420, %6205
  %6424 = fsub fast float %6423, %6422
  %6425 = fdiv fast float %6424, %6417
  %6426 = select i1 %6419, float %6425, float 0.000000e+00
  %6427 = fsub fast float 1.000000e+00, %6426
  %6428 = select i1 %6412, float %6427, float %6426
  %6429 = call float @dx.op.unary.f32(i32 7, float %6428)  ; Saturate(value)
  %6430 = extractvalue %dx.types.CBufRet.f32 %6189, 3
  %6431 = fmul fast float %6430, %6429
  %6432 = fsub fast float 1.000000e+00, %6431
  br label %6433

; <label>:6433                                    ; preds = %6362, %6074, %6039, %6035, %5999
  %6434 = phi float [ 1.000000e+00, %5999 ], [ %6432, %6362 ], [ 1.000000e+00, %6039 ], [ 1.000000e+00, %6074 ], [ 1.000000e+00, %6035 ]
  %6435 = fcmp fast ogt float %6031, 0.000000e+00
  br i1 %6435, label %6436, label %6444, !dx.controlflow.hints !112

; <label>:6436                                    ; preds = %6433
  %6437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6438 = extractvalue %dx.types.CBufRet.f32 %6437, 2
  %6439 = fadd fast float %6438, %5912
  %6440 = call float @dx.op.binary.f32(i32 35, float %6439, float 0.000000e+00)  ; FMax(a,b)
  %6441 = fadd fast float %6440, 0x3F10000000000000
  %6442 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5930, float %5931, float undef, float undef, i32 0, i32 0, i32 undef, float %6441)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6443 = extractvalue %dx.types.ResRet.f32 %6442, 0
  br label %6444

; <label>:6444                                    ; preds = %6436, %6433
  %6445 = phi float [ %6443, %6436 ], [ 1.000000e+00, %6433 ]
  %6446 = fcmp fast ogt float %6029, 0.000000e+00
  br i1 %6446, label %6447, label %6455, !dx.controlflow.hints !113

; <label>:6447                                    ; preds = %6444
  %6448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6449 = extractvalue %dx.types.CBufRet.f32 %6448, 1
  %6450 = fadd fast float %6449, %5912
  %6451 = call float @dx.op.binary.f32(i32 35, float %6450, float 0.000000e+00)  ; FMax(a,b)
  %6452 = fadd fast float %6451, 0x3F10000000000000
  %6453 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5922, float %5923, float undef, float undef, i32 0, i32 0, i32 undef, float %6452)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6454 = extractvalue %dx.types.ResRet.f32 %6453, 0
  br label %6455

; <label>:6455                                    ; preds = %6447, %6444
  %6456 = phi float [ %6454, %6447 ], [ 1.000000e+00, %6444 ]
  %6457 = fcmp fast ogt float %6028, 0.000000e+00
  br i1 %6457, label %6458, label %6470, !dx.controlflow.hints !114

; <label>:6458                                    ; preds = %6455
  %6459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6459, 0
  %6461 = fadd fast float %6460, %5912
  %6462 = call float @dx.op.binary.f32(i32 35, float %6461, float 0.000000e+00)  ; FMax(a,b)
  %6463 = fadd fast float %6462, 0x3F10000000000000
  br i1 %5915, label %6464, label %6467, !dx.controlflow.hints !115

; <label>:6464                                    ; preds = %6458
  %6465 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %5904, float %5908, float undef, float undef, i32 0, i32 0, i32 undef, float %6463)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6466 = extractvalue %dx.types.ResRet.f32 %6465, 0
  br label %6470

; <label>:6467                                    ; preds = %6458
  %6468 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5904, float %5908, float undef, float undef, i32 0, i32 0, i32 undef, float %6463)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6469 = extractvalue %dx.types.ResRet.f32 %6468, 0
  br label %6470

; <label>:6470                                    ; preds = %6467, %6464, %6455
  %6471 = phi float [ %6466, %6464 ], [ %6469, %6467 ], [ 1.000000e+00, %6455 ]
  %6472 = fsub fast float %6445, %6434
  %6473 = fmul fast float %6472, %6001
  %6474 = fadd fast float %6473, %6434
  %6475 = fsub fast float %6456, %6474
  %6476 = fmul fast float %6475, %6000
  %6477 = fadd fast float %6476, %6474
  %6478 = fsub fast float %6471, %6477
  %6479 = fmul fast float %6478, %6028
  %6480 = fadd fast float %6479, %6477
  %6481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6482 = extractvalue %dx.types.CBufRet.f32 %6481, 2
  %6483 = fcmp fast ogt float %6482, 0.000000e+00
  br i1 %6483, label %6484, label %6524, !dx.controlflow.hints !116

; <label>:6484                                    ; preds = %6470
  %6485 = fcmp fast ugt float %6482, 0.000000e+00
  br i1 %6485, label %6486, label %6521

; <label>:6486                                    ; preds = %6484
  %6487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6488 = extractvalue %dx.types.CBufRet.f32 %6487, 0
  %6489 = extractvalue %dx.types.CBufRet.f32 %6487, 1
  %6490 = extractvalue %dx.types.CBufRet.f32 %6487, 2
  %6491 = extractvalue %dx.types.CBufRet.f32 %6487, 3
  %6492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6493 = extractvalue %dx.types.CBufRet.f32 %6492, 0
  %6494 = extractvalue %dx.types.CBufRet.f32 %6492, 1
  %6495 = extractvalue %dx.types.CBufRet.f32 %6492, 2
  %6496 = extractvalue %dx.types.CBufRet.f32 %6492, 3
  %6497 = extractvalue %dx.types.CBufRet.f32 %6481, 0
  %6498 = extractvalue %dx.types.CBufRet.f32 %6481, 1
  %6499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6500 = extractvalue %dx.types.CBufRet.f32 %6499, 0
  %6501 = extractvalue %dx.types.CBufRet.f32 %6499, 1
  %6502 = extractvalue %dx.types.CBufRet.f32 %6499, 2
  %6503 = fadd fast float %6500, %5881
  %6504 = fadd fast float %6501, %5882
  %6505 = fadd fast float %6502, %5883
  %6506 = fmul fast float %6503, %6488
  %6507 = call float @dx.op.tertiary.f32(i32 46, float %6489, float %6504, float %6506)  ; FMad(a,b,c)
  %6508 = call float @dx.op.tertiary.f32(i32 46, float %6490, float %6505, float %6507)  ; FMad(a,b,c)
  %6509 = fadd fast float %6508, %6491
  %6510 = fmul fast float %6503, %6493
  %6511 = call float @dx.op.tertiary.f32(i32 46, float %6494, float %6504, float %6510)  ; FMad(a,b,c)
  %6512 = call float @dx.op.tertiary.f32(i32 46, float %6495, float %6505, float %6511)  ; FMad(a,b,c)
  %6513 = fadd fast float %6512, %6496
  %6514 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6509, float %6513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6515 = extractvalue %dx.types.ResRet.f32 %6514, 0
  %6516 = fmul fast float %6515, %6498
  %6517 = fadd fast float %6516, %6497
  %6518 = call float @dx.op.unary.f32(i32 7, float %6517)  ; Saturate(value)
  %6519 = fmul fast float %6518, %6482
  %6520 = fsub fast float 1.000000e+00, %6519
  br label %6521

; <label>:6521                                    ; preds = %6486, %6484
  %6522 = phi float [ %6520, %6486 ], [ 1.000000e+00, %6484 ]
  %6523 = fmul fast float %6522, %6480
  br label %6524

; <label>:6524                                    ; preds = %6521, %6470, %5861
  %6525 = phi float [ 1.000000e+00, %5861 ], [ %6523, %6521 ], [ %6480, %6470 ]
  %6526 = call float @dx.op.binary.f32(i32 36, float %6525, float %6525)  ; FMin(a,b)
  %6527 = call float @dx.op.binary.f32(i32 36, float %6525, float %6526)  ; FMin(a,b)
  %6528 = fcmp fast ogt float %6527, 0.000000e+00
  br i1 %6528, label %6529, label %6689, !dx.controlflow.hints !117

; <label>:6529                                    ; preds = %6524
  %6530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6531 = extractvalue %dx.types.CBufRet.f32 %6530, 0
  %6532 = extractvalue %dx.types.CBufRet.f32 %6530, 1
  %6533 = extractvalue %dx.types.CBufRet.f32 %6530, 2
  %6534 = extractvalue %dx.types.CBufRet.f32 %6530, 3
  %6535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6536 = extractvalue %dx.types.CBufRet.f32 %6535, 0
  %6537 = extractvalue %dx.types.CBufRet.f32 %6535, 1
  %6538 = extractvalue %dx.types.CBufRet.f32 %6535, 2
  %6539 = extractvalue %dx.types.CBufRet.f32 %6535, 3
  %6540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6541 = extractvalue %dx.types.CBufRet.f32 %6540, 0
  %6542 = extractvalue %dx.types.CBufRet.f32 %6540, 1
  %6543 = extractvalue %dx.types.CBufRet.f32 %6540, 2
  %6544 = extractvalue %dx.types.CBufRet.f32 %6540, 3
  %6545 = fmul fast float %6531, %5881
  %6546 = call float @dx.op.tertiary.f32(i32 46, float %5882, float %6532, float %6545)  ; FMad(a,b,c)
  %6547 = call float @dx.op.tertiary.f32(i32 46, float %5883, float %6533, float %6546)  ; FMad(a,b,c)
  %6548 = fadd fast float %6547, %6534
  %6549 = fmul fast float %6536, %5881
  %6550 = call float @dx.op.tertiary.f32(i32 46, float %5882, float %6537, float %6549)  ; FMad(a,b,c)
  %6551 = call float @dx.op.tertiary.f32(i32 46, float %5883, float %6538, float %6550)  ; FMad(a,b,c)
  %6552 = fadd fast float %6551, %6539
  %6553 = fmul fast float %6541, %5881
  %6554 = call float @dx.op.tertiary.f32(i32 46, float %5882, float %6542, float %6553)  ; FMad(a,b,c)
  %6555 = call float @dx.op.tertiary.f32(i32 46, float %5883, float %6543, float %6554)  ; FMad(a,b,c)
  %6556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6557 = extractvalue %dx.types.CBufRet.f32 %6556, 0
  %6558 = extractvalue %dx.types.CBufRet.f32 %6556, 1
  %6559 = extractvalue %dx.types.CBufRet.f32 %6556, 3
  %6560 = fmul fast float %6559, %6548
  %6561 = fmul fast float %6559, %6552
  %6562 = fadd fast float %6560, %6557
  %6563 = fadd fast float %6561, %6558
  %6564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6565 = extractvalue %dx.types.CBufRet.f32 %6564, 0
  %6566 = extractvalue %dx.types.CBufRet.f32 %6564, 1
  %6567 = fsub fast float %6562, %6565
  %6568 = fsub fast float %6563, %6566
  %6569 = fcmp fast olt float %6567, 0.000000e+00
  %6570 = fcmp fast olt float %6568, 0.000000e+00
  %6571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6572 = extractvalue %dx.types.CBufRet.f32 %6571, 0
  %6573 = extractvalue %dx.types.CBufRet.f32 %6571, 1
  %6574 = extractvalue %dx.types.CBufRet.f32 %6571, 2
  %6575 = extractvalue %dx.types.CBufRet.f32 %6571, 3
  %6576 = select i1 %6569, float %6572, float %6574
  %6577 = select i1 %6570, float %6573, float %6575
  %6578 = fmul fast float %6576, %6567
  %6579 = fmul fast float %6577, %6568
  %6580 = call float @dx.op.unary.f32(i32 6, float %6578)  ; FAbs(value)
  %6581 = call float @dx.op.unary.f32(i32 6, float %6579)  ; FAbs(value)
  %6582 = extractvalue %dx.types.CBufRet.f32 %5876, 0
  %6583 = call float @dx.op.binary.f32(i32 35, float %6580, float %6581)  ; FMax(a,b)
  %6584 = fsub fast float %6582, %6583
  %6585 = call float @dx.op.unary.f32(i32 7, float %6584)  ; Saturate(value)
  %6586 = fcmp fast ogt float %6585, 0.000000e+00
  br i1 %6586, label %6587, label %6628, !dx.controlflow.hints !118

; <label>:6587                                    ; preds = %6529
  %6588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6562, float %6563, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6589 = extractvalue %dx.types.ResRet.f32 %6588, 1
  %6590 = fcmp fast ogt float %6589, 0.000000e+00
  br i1 %6590, label %6591, label %6623

; <label>:6591                                    ; preds = %6587
  %6592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6562, float %6563, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6593 = extractvalue %dx.types.ResRet.f32 %6592, 0
  %6594 = extractvalue %dx.types.ResRet.f32 %6592, 1
  %6595 = extractvalue %dx.types.ResRet.f32 %6592, 2
  %6596 = extractvalue %dx.types.ResRet.f32 %6592, 3
  %6597 = fsub fast float 1.000000e+00, %6544
  %6598 = fsub fast float %6597, %6555
  %6599 = fmul fast float %6598, 0x400921FB60000000
  %6600 = fadd fast float %6599, 0x3FF921FB60000000
  %6601 = call float @dx.op.unary.f32(i32 13, float %6600)  ; Sin(value)
  %6602 = fadd fast float %6601, -1.000000e+00
  %6603 = fmul fast float %6602, 0x3FD45F3060000000
  %6604 = fmul fast float %6598, 0x401921FB60000000
  %6605 = fadd fast float %6604, 0x400921FB60000000
  %6606 = call float @dx.op.unary.f32(i32 13, float %6605)  ; Sin(value)
  %6607 = fadd fast float %6606, 0x3E7777A5C0000000
  %6608 = fmul fast float %6607, 0x3FC45F3060000000
  %6609 = fmul fast float %6598, 0x4022D97C80000000
  %6610 = fadd fast float %6609, 0x4012D97C80000000
  %6611 = call float @dx.op.unary.f32(i32 13, float %6610)  ; Sin(value)
  %6612 = fadd fast float %6611, 1.000000e+00
  %6613 = fmul fast float %6612, 0x3FBB2995E0000000
  %6614 = fmul fast float %6598, 0x402921FB60000000
  %6615 = fadd fast float %6614, 0x401921FB60000000
  %6616 = call float @dx.op.unary.f32(i32 13, float %6615)  ; Sin(value)
  %6617 = fadd fast float %6616, 0xBE8777A5C0000000
  %6618 = fmul fast float %6617, 0x3FB45F3060000000
  %6619 = call float @dx.op.dot4.f32(i32 56, float %6593, float %6594, float %6595, float %6596, float %6603, float %6608, float %6613, float %6618)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6620 = fmul fast float %6619, 0xBFF7154760000000
  %6621 = call float @dx.op.unary.f32(i32 21, float %6620)  ; Exp(value)
  %6622 = call float @dx.op.unary.f32(i32 7, float %6621)  ; Saturate(value)
  br label %6623

; <label>:6623                                    ; preds = %6591, %6587
  %6624 = phi float [ %6622, %6591 ], [ 1.000000e+00, %6587 ]
  %6625 = fadd fast float %6624, -1.000000e+00
  %6626 = fmul fast float %6625, %6585
  %6627 = fadd fast float %6626, 1.000000e+00
  br label %6628

; <label>:6628                                    ; preds = %6623, %6529
  %6629 = phi float [ %6627, %6623 ], [ 1.000000e+00, %6529 ]
  %6630 = fmul fast float %6629, %6525
  %6631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6632 = extractvalue %dx.types.CBufRet.f32 %6631, 0
  %6633 = extractvalue %dx.types.CBufRet.f32 %6631, 1
  %6634 = extractvalue %dx.types.CBufRet.f32 %6631, 2
  %6635 = fadd fast float %6632, %191
  %6636 = fadd fast float %6633, %192
  %6637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6638 = extractvalue %dx.types.CBufRet.f32 %6637, 1
  %6639 = fsub fast float -0.000000e+00, %6635
  %6640 = fsub fast float -0.000000e+00, %6636
  %6641 = fsub fast float %5608, %6634
  %6642 = fadd fast float %6641, %6638
  %6643 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6639, float %6640, float %6642)  ; Dot3(ax,ay,az,bx,by,bz)
  %6644 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5862, float %5863, float %5864)  ; Dot3(ax,ay,az,bx,by,bz)
  %6645 = fdiv fast float 1.000000e+00, %6644
  %6646 = fmul fast float %6645, %6643
  %6647 = fmul fast float %5862, %6646
  %6648 = fmul fast float %5863, %6646
  %6649 = fadd fast float %6647, %6635
  %6650 = fadd fast float %6648, %6636
  %6651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6652 = extractvalue %dx.types.CBufRet.f32 %6651, 0
  %6653 = extractvalue %dx.types.CBufRet.f32 %6651, 1
  %6654 = fsub fast float %6649, %6652
  %6655 = fsub fast float %6650, %6653
  %6656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6657 = extractvalue %dx.types.CBufRet.f32 %6656, 2
  %6658 = extractvalue %dx.types.CBufRet.f32 %6656, 3
  %6659 = fmul fast float %6654, %6657
  %6660 = fmul fast float %6655, %6658
  %6661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6662 = extractvalue %dx.types.CBufRet.i32 %6661, 3
  %6663 = icmp eq i32 %6662, 0
  br i1 %6663, label %6669, label %6664

; <label>:6664                                    ; preds = %6628
  %6665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6659, float %6660, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6666 = extractvalue %dx.types.ResRet.f32 %6665, 0
  %6667 = extractvalue %dx.types.ResRet.f32 %6665, 1
  %6668 = extractvalue %dx.types.ResRet.f32 %6665, 2
  br label %6674

; <label>:6669                                    ; preds = %6628
  %6670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6659, float %6660, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6671 = extractvalue %dx.types.ResRet.f32 %6670, 0
  %6672 = extractvalue %dx.types.ResRet.f32 %6670, 1
  %6673 = extractvalue %dx.types.ResRet.f32 %6670, 2
  br label %6674

; <label>:6674                                    ; preds = %6669, %6664
  %6675 = phi float [ %6666, %6664 ], [ %6671, %6669 ]
  %6676 = phi float [ %6667, %6664 ], [ %6672, %6669 ]
  %6677 = phi float [ %6668, %6664 ], [ %6673, %6669 ]
  %6678 = extractvalue %dx.types.CBufRet.f32 %6637, 2
  %6679 = fmul fast float %6678, %6675
  %6680 = extractvalue %dx.types.CBufRet.f32 %6637, 0
  %6681 = fsub fast float %6646, %6680
  %6682 = fsub fast float %6681, %6679
  %6683 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6682)  ; FMax(a,b)
  %6684 = fmul fast float %6683, %6676
  %6685 = call float @dx.op.binary.f32(i32 36, float %6677, float %6684)  ; FMin(a,b)
  %6686 = fmul fast float %6685, 0xBFF7154760000000
  %6687 = call float @dx.op.unary.f32(i32 21, float %6686)  ; Exp(value)
  %6688 = fmul fast float %6630, %6687
  br label %6689

; <label>:6689                                    ; preds = %6674, %6524
  %6690 = phi float [ %6688, %6674 ], [ %6525, %6524 ]
  %6691 = call float @dx.op.binary.f32(i32 36, float %6690, float %6690)  ; FMin(a,b)
  %6692 = call float @dx.op.binary.f32(i32 36, float %6690, float %6691)  ; FMin(a,b)
  %6693 = fcmp fast ogt float %6692, 0.000000e+00
  br i1 %6693, label %6694, label %6957, !dx.controlflow.hints !119

; <label>:6694                                    ; preds = %6689
  %6695 = fmul fast float %6690, %5873
  %6696 = fmul fast float %6690, %5874
  %6697 = fmul fast float %6690, %5875
  %6698 = fsub fast float %193, %4804
  %6699 = fcmp fast ogt float %6698, 0.000000e+00
  %6700 = fmul fast float %5862, 5.120000e+02
  %6701 = fmul fast float %5863, 5.120000e+02
  %6702 = fmul fast float %5864, 5.120000e+02
  %6703 = fadd fast float %6702, %193
  %6704 = fsub fast float %4804, %6703
  %6705 = fmul fast float %6704, 2.000000e+00
  %6706 = fadd fast float %6705, %6703
  %6707 = select i1 %6699, float %6706, float %6703
  %6708 = fsub fast float %6707, %193
  %6709 = call float @dx.op.dot3.f32(i32 55, float %6700, float %6701, float %6708, float %6700, float %6701, float %6708)  ; Dot3(ax,ay,az,bx,by,bz)
  %6710 = call float @dx.op.unary.f32(i32 25, float %6709)  ; Rsqrt(value)
  %6711 = fmul fast float %6710, %6700
  %6712 = fmul fast float %6710, %6701
  %6713 = fmul fast float %6710, %6708
  %6714 = fsub fast float %4804, %193
  %6715 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6714)  ; Dot3(ax,ay,az,bx,by,bz)
  %6716 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6711, float %6712, float %6713)  ; Dot3(ax,ay,az,bx,by,bz)
  %6717 = fdiv fast float 1.000000e+00, %6716
  %6718 = fmul fast float %6717, %6715
  %6719 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6698, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6720 = fcmp fast ogt float %6719, 0.000000e+00
  %6721 = fcmp fast olt float %6719, 0.000000e+00
  %6722 = zext i1 %6720 to i32
  %6723 = zext i1 %6721 to i32
  %6724 = sub nsw i32 %6722, %6723
  %6725 = sitofp i32 %6724 to float
  %6726 = fsub fast float %6707, %4804
  %6727 = call float @dx.op.dot3.f32(i32 55, float %6700, float %6701, float %6726, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6728 = fcmp fast ogt float %6727, 0.000000e+00
  %6729 = fcmp fast olt float %6727, 0.000000e+00
  %6730 = zext i1 %6728 to i32
  %6731 = zext i1 %6729 to i32
  %6732 = sub nsw i32 %6730, %6731
  %6733 = sitofp i32 %6732 to float
  %6734 = fcmp fast une float %6725, %6733
  br i1 %6734, label %6735, label %6745

; <label>:6735                                    ; preds = %6694
  %6736 = fmul fast float %6718, %6713
  %6737 = fmul fast float %6718, %6712
  %6738 = fmul fast float %6718, %6711
  %6739 = fmul fast float %6738, %6738
  %6740 = fmul fast float %6737, %6737
  %6741 = fadd fast float %6739, %6740
  %6742 = fmul fast float %6736, %6736
  %6743 = fadd fast float %6741, %6742
  %6744 = call float @dx.op.unary.f32(i32 24, float %6743)  ; Sqrt(value)
  br label %6755

; <label>:6745                                    ; preds = %6694
  %6746 = icmp slt i32 %6724, 0
  br i1 %6746, label %6747, label %6755

; <label>:6747                                    ; preds = %6745
  %6748 = fsub fast float %193, %6707
  %6749 = fmul fast float %6700, %6700
  %6750 = fmul fast float %6701, %6701
  %6751 = fadd fast float %6749, %6750
  %6752 = fmul fast float %6748, %6748
  %6753 = fadd fast float %6751, %6752
  %6754 = call float @dx.op.unary.f32(i32 24, float %6753)  ; Sqrt(value)
  br label %6755

; <label>:6755                                    ; preds = %6747, %6745, %6735
  %6756 = phi float [ %6744, %6735 ], [ %6754, %6747 ], [ 0.000000e+00, %6745 ]
  %6757 = fsub fast float -0.000000e+00, %6756
  %6758 = select i1 %6699, float -0.000000e+00, float %6757
  %6759 = fmul fast float %4805, 0x3FF7154760000000
  %6760 = fmul fast float %6759, %6758
  %6761 = fmul fast float %4806, 0x3FF7154760000000
  %6762 = fmul fast float %6761, %6758
  %6763 = fmul fast float %4807, 0x3FF7154760000000
  %6764 = fmul fast float %6763, %6758
  %6765 = call float @dx.op.unary.f32(i32 21, float %6760)  ; Exp(value)
  %6766 = call float @dx.op.unary.f32(i32 21, float %6762)  ; Exp(value)
  %6767 = call float @dx.op.unary.f32(i32 21, float %6764)  ; Exp(value)
  %6768 = call float @dx.op.unary.f32(i32 7, float %6765)  ; Saturate(value)
  %6769 = call float @dx.op.unary.f32(i32 7, float %6766)  ; Saturate(value)
  %6770 = call float @dx.op.unary.f32(i32 7, float %6767)  ; Saturate(value)
  %6771 = fmul fast float %6695, %6768
  %6772 = fmul fast float %6696, %6769
  %6773 = fmul fast float %6697, %6770
  %6774 = fsub fast float %5862, %5596
  %6775 = fsub fast float %5863, %5595
  %6776 = fsub fast float %5864, %5594
  %6777 = call float @dx.op.dot3.f32(i32 55, float %6774, float %6775, float %6776, float %6774, float %6775, float %6776)  ; Dot3(ax,ay,az,bx,by,bz)
  %6778 = call float @dx.op.unary.f32(i32 25, float %6777)  ; Rsqrt(value)
  %6779 = fmul fast float %6778, %6774
  %6780 = fmul fast float %6778, %6775
  %6781 = fmul fast float %6778, %6776
  %6782 = call float @dx.op.dot3.f32(i32 55, float %5862, float %5863, float %5864, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %6783 = call float @dx.op.dot3.f32(i32 55, float %5593, float %5592, float %5591, float %6779, float %6780, float %6781)  ; Dot3(ax,ay,az,bx,by,bz)
  %6784 = call float @dx.op.unary.f32(i32 7, float %6782)  ; Saturate(value)
  %6785 = fmul fast float %6784, %6784
  %6786 = fmul fast float %6785, %5624
  %6787 = call float @dx.op.unary.f32(i32 7, float %6786)  ; Saturate(value)
  %6788 = fmul fast float %6787, %6784
  %6789 = call float @dx.op.dot3.f32(i32 55, float %5603, float %5604, float %5605, float %6779, float %6780, float %6781)  ; Dot3(ax,ay,az,bx,by,bz)
  %6790 = fmul fast float %6789, %6789
  %6791 = call float @dx.op.unary.f32(i32 6, float %6782)  ; FAbs(value)
  %6792 = fsub fast float 1.000000e+00, %5606
  %6793 = call float @dx.op.binary.f32(i32 35, float %6792, float 0x3F847AE140000000)  ; FMax(a,b)
  %6794 = fmul fast float %6793, %6793
  %6795 = fmul fast float %6794, %6794
  %6796 = fsub fast float 1.000000e+00, %6795
  %6797 = fmul fast float %5611, %5611
  %6798 = fmul fast float %6797, %6796
  %6799 = fadd fast float %6798, %6795
  %6800 = bitcast float %6799 to i32
  %6801 = ashr i32 %6800, 1
  %6802 = add nsw i32 %6801, 532487669
  %6803 = bitcast i32 %6802 to float
  %6804 = fadd fast float %6803, %5611
  %6805 = fmul fast float %6795, %6790
  %6806 = fsub fast float 1.000000e+00, %6790
  %6807 = fadd fast float %6806, %6805
  %6808 = fmul fast float %6791, %6791
  %6809 = fmul fast float %6808, %6796
  %6810 = fadd fast float %6809, %6795
  %6811 = bitcast float %6810 to i32
  %6812 = ashr i32 %6811, 1
  %6813 = add nsw i32 %6812, 532487669
  %6814 = bitcast i32 %6813 to float
  %6815 = fadd fast float %6814, %6791
  %6816 = fmul fast float %6807, %6807
  %6817 = fmul fast float %6816, %6804
  %6818 = fmul fast float %6817, %6815
  %6819 = fdiv fast float 0x3FF0A00000000000, %6818
  %6820 = fmul fast float %6819, %6795
  %6821 = fmul fast float %5724, 0x3FF9999980000000
  %6822 = fsub fast float 5.000000e+00, %6821
  %6823 = call float @dx.op.unary.f32(i32 6, float %6783)  ; FAbs(value)
  %6824 = fsub fast float 1.000000e+00, %6823
  %6825 = fmul fast float %5724, 0x41D9660740000000
  %6826 = fadd fast float %6825, 0xC1EFBF8940000000
  %6827 = bitcast float %6824 to i32
  %6828 = sitofp i32 %6827 to float
  %6829 = fmul fast float %6828, %6822
  %6830 = fadd fast float %6826, %6829
  %6831 = fptosi float %6830 to i32
  %6832 = bitcast i32 %6831 to float
  %6833 = fsub fast float 1.000000e+00, %5597
  %6834 = fsub fast float 1.000000e+00, %5598
  %6835 = fsub fast float 1.000000e+00, %5609
  %6836 = fmul fast float %6832, %6833
  %6837 = fmul fast float %6832, %6834
  %6838 = fmul fast float %6832, %6835
  %6839 = fadd fast float %6836, %5597
  %6840 = fadd fast float %6837, %5598
  %6841 = fadd fast float %6838, %5609
  br i1 %5747, label %6842, label %6865

; <label>:6842                                    ; preds = %6755
  %6843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %4400, float %6823, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6844 = extractvalue %dx.types.ResRet.f32 %6843, 0
  %6845 = extractvalue %dx.types.ResRet.f32 %6843, 1
  %6846 = extractvalue %dx.types.ResRet.f32 %6843, 2
  %6847 = fadd fast float %6844, -5.000000e-01
  %6848 = fadd fast float %6845, -5.000000e-01
  %6849 = fadd fast float %6846, -5.000000e-01
  %6850 = fmul fast float %5597, 4.000000e+00
  %6851 = fmul fast float %6850, %6833
  %6852 = fmul fast float %6851, %6847
  %6853 = fmul fast float %5598, 4.000000e+00
  %6854 = fmul fast float %6853, %6834
  %6855 = fmul fast float %6854, %6848
  %6856 = fmul fast float %5609, 4.000000e+00
  %6857 = fmul fast float %6856, %6835
  %6858 = fmul fast float %6857, %6849
  %6859 = fadd fast float %6852, %6839
  %6860 = fadd fast float %6855, %6840
  %6861 = fadd fast float %6858, %6841
  %6862 = call float @dx.op.unary.f32(i32 7, float %6859)  ; Saturate(value)
  %6863 = call float @dx.op.unary.f32(i32 7, float %6860)  ; Saturate(value)
  %6864 = call float @dx.op.unary.f32(i32 7, float %6861)  ; Saturate(value)
  br label %6865

; <label>:6865                                    ; preds = %6842, %6755
  %6866 = phi float [ %6862, %6842 ], [ %6839, %6755 ]
  %6867 = phi float [ %6863, %6842 ], [ %6840, %6755 ]
  %6868 = phi float [ %6864, %6842 ], [ %6841, %6755 ]
  %6869 = fmul fast float %6782, 9.843750e-01
  %6870 = fadd fast float %6869, 7.812500e-03
  %6871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6870, float %5728, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6872 = extractvalue %dx.types.ResRet.f32 %6871, 0
  %6873 = extractvalue %dx.types.ResRet.f32 %6871, 1
  %6874 = extractvalue %dx.types.ResRet.f32 %6871, 2
  %6875 = extractvalue %dx.types.ResRet.f32 %6871, 3
  %6876 = fsub fast float %6874, %6872
  %6877 = fsub fast float %6875, %6873
  %6878 = fmul fast float %6876, %5734
  %6879 = fmul fast float %6877, %5734
  %6880 = fadd fast float %6878, %6872
  %6881 = fadd fast float %6879, %6873
  %6882 = fmul fast float %6880, %5597
  %6883 = fmul fast float %6880, %5598
  %6884 = fmul fast float %6880, %5609
  %6885 = fadd fast float %6882, %6881
  %6886 = fadd fast float %6883, %6881
  %6887 = fadd fast float %6884, %6881
  br i1 %5747, label %6888, label %6911

; <label>:6888                                    ; preds = %6865
  %6889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %4400, float %6782, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6890 = extractvalue %dx.types.ResRet.f32 %6889, 0
  %6891 = extractvalue %dx.types.ResRet.f32 %6889, 1
  %6892 = extractvalue %dx.types.ResRet.f32 %6889, 2
  %6893 = fadd fast float %6890, -5.000000e-01
  %6894 = fadd fast float %6891, -5.000000e-01
  %6895 = fadd fast float %6892, -5.000000e-01
  %6896 = fmul fast float %5597, 4.000000e+00
  %6897 = fmul fast float %6896, %6833
  %6898 = fmul fast float %6897, %6893
  %6899 = fmul fast float %5598, 4.000000e+00
  %6900 = fmul fast float %6899, %6834
  %6901 = fmul fast float %6900, %6894
  %6902 = fmul fast float %5609, 4.000000e+00
  %6903 = fmul fast float %6902, %6835
  %6904 = fmul fast float %6903, %6895
  %6905 = fadd fast float %6898, %6885
  %6906 = fadd fast float %6901, %6886
  %6907 = fadd fast float %6904, %6887
  %6908 = call float @dx.op.unary.f32(i32 7, float %6905)  ; Saturate(value)
  %6909 = call float @dx.op.unary.f32(i32 7, float %6906)  ; Saturate(value)
  %6910 = call float @dx.op.unary.f32(i32 7, float %6907)  ; Saturate(value)
  br label %6911

; <label>:6911                                    ; preds = %6888, %6865
  %6912 = phi float [ %6908, %6888 ], [ %6885, %6865 ]
  %6913 = phi float [ %6909, %6888 ], [ %6886, %6865 ]
  %6914 = phi float [ %6910, %6888 ], [ %6887, %6865 ]
  %6915 = call float @dx.op.binary.f32(i32 35, float %6913, float %6914)  ; FMax(a,b)
  %6916 = call float @dx.op.binary.f32(i32 35, float %6912, float %6915)  ; FMax(a,b)
  %6917 = fsub fast float 1.000000e+00, %6916
  %6918 = fmul fast float %6866, %6820
  %6919 = fmul fast float %6867, %6820
  %6920 = fmul fast float %6868, %6820
  %6921 = fsub fast float 1.000000e+00, %6783
  %6922 = bitcast float %6921 to i32
  %6923 = sitofp i32 %6922 to float
  %6924 = fmul fast float %6923, 5.000000e+00
  %6925 = fadd fast float %6924, 0xC1EFBF8940000000
  %6926 = fptosi float %6925 to i32
  %6927 = bitcast i32 %6926 to float
  %6928 = fmul fast float %6927, %4401
  %6929 = fmul fast float %6917, %6928
  %6930 = fmul fast float %6929, %5797
  %6931 = fmul fast float %6929, %5798
  %6932 = fmul fast float %6929, %5799
  %6933 = fadd fast float %6930, %6918
  %6934 = fadd fast float %6931, %6919
  %6935 = fadd fast float %6932, %6920
  %6936 = fmul fast float %6788, %6771
  %6937 = fmul fast float %6936, %6917
  %6938 = fmul fast float %6788, %6772
  %6939 = fmul fast float %6938, %6917
  %6940 = fmul fast float %6788, %6773
  %6941 = fmul fast float %6940, %6917
  %6942 = fmul fast float %6936, %6933
  %6943 = fmul fast float %6938, %6934
  %6944 = fmul fast float %6940, %6935
  %6945 = fadd fast float %6937, %5781
  %6946 = fmul fast float %6945, %4397
  %6947 = fadd fast float %6939, %5782
  %6948 = fmul fast float %6947, %4397
  %6949 = fadd fast float %6941, %5783
  %6950 = fmul fast float %6949, %4397
  %6951 = fadd fast float %6942, %5850
  %6952 = fmul fast float %6951, %4397
  %6953 = fadd fast float %6943, %5853
  %6954 = fmul fast float %6953, %4397
  %6955 = fadd fast float %6944, %5856
  %6956 = fmul fast float %6955, %4397
  br label %6957

; <label>:6957                                    ; preds = %6911, %6689, %5774
  %6958 = phi float [ %5851, %5774 ], [ %5851, %6689 ], [ %6952, %6911 ]
  %6959 = phi float [ %5854, %5774 ], [ %5854, %6689 ], [ %6954, %6911 ]
  %6960 = phi float [ %5857, %5774 ], [ %5857, %6689 ], [ %6956, %6911 ]
  %6961 = phi float [ %5846, %5774 ], [ %5846, %6689 ], [ %6946, %6911 ]
  %6962 = phi float [ %5847, %5774 ], [ %5847, %6689 ], [ %6948, %6911 ]
  %6963 = phi float [ %5848, %5774 ], [ %5848, %6689 ], [ %6950, %6911 ]
  %6964 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6965 = extractvalue %dx.types.CBufRet.i32 %6964, 0
  %6966 = icmp eq i32 %6965, 0
  br i1 %6966, label %7599, label %6967

; <label>:6967                                    ; preds = %6957
  %6968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6969 = extractvalue %dx.types.CBufRet.f32 %6968, 2
  %6970 = extractvalue %dx.types.CBufRet.f32 %6968, 3
  %6971 = fmul fast float %6969, %104
  %6972 = fmul fast float %6970, %105
  %6973 = fptoui float %6971 to i32
  %6974 = fptoui float %6972 to i32
  %6975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6976 = extractvalue %dx.types.CBufRet.f32 %6975, 0
  %6977 = extractvalue %dx.types.CBufRet.f32 %6975, 2
  %6978 = extractvalue %dx.types.CBufRet.f32 %6975, 3
  %6979 = fadd fast float %95, -4.000000e+00
  %6980 = call float @dx.op.binary.f32(i32 35, float %6979, float 0.000000e+00)  ; FMax(a,b)
  %6981 = fadd fast float %6980, %6976
  %6982 = fmul fast float %6981, %6977
  %6983 = call float @dx.op.unary.f32(i32 23, float %6982)  ; Log(value)
  %6984 = fmul fast float %6983, %6978
  %6985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6986 = extractvalue %dx.types.CBufRet.f32 %6985, 2
  %6987 = fmul fast float %6984, %6986
  %6988 = call float @dx.op.unary.f32(i32 7, float %6987)  ; Saturate(value)
  %6989 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6990 = extractvalue %dx.types.CBufRet.i32 %6989, 1
  %6991 = add i32 %6990, -1
  %6992 = uitofp i32 %6990 to float
  %6993 = fmul fast float %6992, %6988
  %6994 = fptoui float %6993 to i32
  %6995 = call i32 @dx.op.binary.i32(i32 40, i32 %6994, i32 %6991)  ; UMin(a,b)
  %6996 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6997 = extractvalue %dx.types.CBufRet.i32 %6996, 2
  %6998 = extractvalue %dx.types.CBufRet.i32 %6996, 3
  %6999 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6974, i32 %6997, i32 %6973)  ; UMad(a,b,c)
  %7000 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6995, i32 %6998, i32 %6999)  ; UMad(a,b,c)
  %7001 = add nsw i32 %6965, -1
  %7002 = call i32 @dx.op.binary.i32(i32 37, i32 %7001, i32 0)  ; IMax(a,b)
  %7003 = call float @dx.op.binary.f32(i32 35, float %95, float 0.000000e+00)  ; FMax(a,b)
  %7004 = fptoui float %7003 to i32
  %7005 = lshr i32 %7004, 5
  %7006 = call i32 @dx.op.binary.i32(i32 40, i32 %7005, i32 8191)  ; UMin(a,b)
  %7007 = shl i32 %7006, 2
  %7008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7007, i32 undef)  ; BufferLoad(srv,index,wot)
  %7009 = extractvalue %dx.types.ResRet.i32 %7008, 0
  %7010 = lshr i32 %7009, 16
  %7011 = and i32 %7009, 65535
  %7012 = lshr i32 %7009, 21
  %7013 = lshr i32 %7011, 5
  %7014 = call i32 @dx.op.binary.i32(i32 40, i32 %7013, i32 %7002)  ; UMin(a,b)
  %7015 = icmp ugt i32 %7012, %7014
  br i1 %7015, label %7599, label %7016

; <label>:7016                                    ; preds = %6967
  br label %7017

; <label>:7017                                    ; preds = %7589, %7016
  %7018 = phi i32 [ %7596, %7589 ], [ %7012, %7016 ]
  %7019 = phi float [ %7590, %7589 ], [ %6958, %7016 ]
  %7020 = phi float [ %7591, %7589 ], [ %6959, %7016 ]
  %7021 = phi float [ %7592, %7589 ], [ %6960, %7016 ]
  %7022 = phi float [ %7593, %7589 ], [ %6961, %7016 ]
  %7023 = phi float [ %7594, %7589 ], [ %6962, %7016 ]
  %7024 = phi float [ %7595, %7589 ], [ %6963, %7016 ]
  %7025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7026 = extractvalue %dx.types.CBufRet.i32 %7025, 0
  %7027 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7000, i32 %7026, i32 %7018)  ; UMad(a,b,c)
  %7028 = shl i32 %7027, 2
  %7029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7028, i32 undef)  ; BufferLoad(srv,index,wot)
  %7030 = extractvalue %dx.types.ResRet.i32 %7029, 0
  %7031 = shl i32 %7018, 5
  %7032 = sub nsw i32 %7010, %7031
  %7033 = call i32 @dx.op.binary.i32(i32 37, i32 %7032, i32 0)  ; IMax(a,b)
  %7034 = call i32 @dx.op.binary.i32(i32 38, i32 %7033, i32 31)  ; IMin(a,b)
  %7035 = sub nsw i32 1, %7010
  %7036 = add nsw i32 %7035, %7011
  %7037 = call i32 @dx.op.binary.i32(i32 37, i32 %7036, i32 0)  ; IMax(a,b)
  %7038 = call i32 @dx.op.binary.i32(i32 38, i32 %7037, i32 32)  ; IMin(a,b)
  %7039 = and i32 %7038, 31
  %7040 = shl i32 -1, %7039
  %7041 = xor i32 %7040, -1
  %7042 = and i32 %7034, 31
  %7043 = shl i32 %7041, %7042
  %7044 = icmp eq i32 %7038, 32
  %7045 = select i1 %7044, i32 -1, i32 %7043
  %7046 = and i32 %7045, %7030
  %7047 = icmp eq i32 %7046, 0
  br i1 %7047, label %7589, label %7048

; <label>:7048                                    ; preds = %7017
  br label %7049

; <label>:7049                                    ; preds = %7183, %7048
  %7050 = phi i32 [ %7061, %7183 ], [ %7046, %7048 ]
  %7051 = phi float [ %7184, %7183 ], [ %7019, %7048 ]
  %7052 = phi float [ %7185, %7183 ], [ %7020, %7048 ]
  %7053 = phi float [ %7186, %7183 ], [ %7021, %7048 ]
  %7054 = phi float [ %7187, %7183 ], [ %7022, %7048 ]
  %7055 = phi float [ %7188, %7183 ], [ %7023, %7048 ]
  %7056 = phi float [ %7189, %7183 ], [ %7024, %7048 ]
  %7057 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7050)  ; FirstbitLo(value)
  %7058 = add i32 %7057, %7031
  %7059 = and i32 %7057, 31
  %7060 = shl i32 1, %7059
  %7061 = xor i32 %7060, %7050
  %7062 = mul i32 %7058, 112
  %7063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7062, i32 undef)  ; BufferLoad(srv,index,wot)
  %7064 = extractvalue %dx.types.ResRet.f32 %7063, 0
  %7065 = extractvalue %dx.types.ResRet.f32 %7063, 1
  %7066 = extractvalue %dx.types.ResRet.f32 %7063, 2
  %7067 = or i32 %7062, 12
  %7068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7067, i32 undef)  ; BufferLoad(srv,index,wot)
  %7069 = extractvalue %dx.types.ResRet.f32 %7068, 0
  %7070 = add i32 %7062, 16
  %7071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7070, i32 undef)  ; BufferLoad(srv,index,wot)
  %7072 = extractvalue %dx.types.ResRet.f32 %7071, 0
  %7073 = extractvalue %dx.types.ResRet.f32 %7071, 1
  %7074 = extractvalue %dx.types.ResRet.f32 %7071, 2
  %7075 = add i32 %7062, 28
  %7076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7075, i32 undef)  ; BufferLoad(srv,index,wot)
  %7077 = extractvalue %dx.types.ResRet.i32 %7076, 0
  %7078 = add i32 %7062, 44
  %7079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7078, i32 undef)  ; BufferLoad(srv,index,wot)
  %7080 = extractvalue %dx.types.ResRet.f32 %7079, 0
  %7081 = add i32 %7062, 48
  %7082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7081, i32 undef)  ; BufferLoad(srv,index,wot)
  %7083 = extractvalue %dx.types.ResRet.f32 %7082, 0
  %7084 = extractvalue %dx.types.ResRet.f32 %7082, 1
  %7085 = extractvalue %dx.types.ResRet.f32 %7082, 2
  %7086 = extractvalue %dx.types.ResRet.f32 %7082, 3
  %7087 = add i32 %7062, 64
  %7088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7087, i32 undef)  ; BufferLoad(srv,index,wot)
  %7089 = extractvalue %dx.types.ResRet.f32 %7088, 0
  %7090 = extractvalue %dx.types.ResRet.f32 %7088, 1
  %7091 = extractvalue %dx.types.ResRet.f32 %7088, 2
  %7092 = extractvalue %dx.types.ResRet.f32 %7088, 3
  %7093 = add i32 %7062, 80
  %7094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7093, i32 undef)  ; BufferLoad(srv,index,wot)
  %7095 = extractvalue %dx.types.ResRet.f32 %7094, 1
  %7096 = extractvalue %dx.types.ResRet.f32 %7094, 2
  %7097 = add i32 %7062, 92
  %7098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7097, i32 undef)  ; BufferLoad(srv,index,wot)
  %7099 = extractvalue %dx.types.ResRet.i32 %7098, 0
  %7100 = call float @dx.op.dot3.f32(i32 55, float %7064, float %7065, float %7066, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7101 = select i1 %250, float %7095, float %7064
  %7102 = select i1 %250, float %7100, float %7065
  %7103 = select i1 %250, float %7096, float %7066
  %7104 = and i32 %7099, 65535
  %7105 = uitofp i32 %7104 to float
  %7106 = lshr i32 %7099, 16
  %7107 = uitofp i32 %7106 to float
  %7108 = and i32 %7077, 65535
  %7109 = and i32 %7077, 50331648
  %7110 = icmp eq i32 %7109, 33554432
  %7111 = fsub fast float %7083, %191
  %7112 = fsub fast float %7084, %192
  %7113 = fsub fast float %7085, %193
  %7114 = call float @dx.op.dot3.f32(i32 55, float %7111, float %7112, float %7113, float %7111, float %7112, float %7113)  ; Dot3(ax,ay,az,bx,by,bz)
  %7115 = call float @dx.op.unary.f32(i32 24, float %7114)  ; Sqrt(value)
  %7116 = fdiv fast float 1.000000e+00, %7115
  %7117 = fmul fast float %7116, %7111
  %7118 = fmul fast float %7116, %7112
  %7119 = fmul fast float %7116, %7113
  %7120 = fadd fast float %7115, %7069
  %7121 = fdiv fast float 1.000000e+00, %7120
  %7122 = fmul float %7080, %7121
  %7123 = fmul float %7122, %7122
  %7124 = call float @dx.op.unary.f32(i32 7, float %7123)  ; Saturate(value)
  br i1 %7110, label %7125, label %7146

; <label>:7125                                    ; preds = %7049
  %7126 = fmul fast float %7091, %7072
  %7127 = fmul fast float %7091, %7073
  %7128 = fmul fast float %7091, %7074
  %7129 = fadd fast float %7111, %7126
  %7130 = fadd fast float %7112, %7127
  %7131 = fadd fast float %7113, %7128
  %7132 = call float @dx.op.dot3.f32(i32 55, float %7129, float %7130, float %7131, float %7129, float %7130, float %7131)  ; Dot3(ax,ay,az,bx,by,bz)
  %7133 = call float @dx.op.unary.f32(i32 25, float %7132)  ; Rsqrt(value)
  %7134 = fmul fast float %7133, %7129
  %7135 = fmul fast float %7133, %7130
  %7136 = fmul fast float %7133, %7131
  %7137 = fsub fast float %191, %7083
  %7138 = fsub fast float %192, %7084
  %7139 = fsub fast float %193, %7085
  %7140 = fsub fast float -0.000000e+00, %7137
  %7141 = fsub fast float -0.000000e+00, %7138
  %7142 = fsub fast float -0.000000e+00, %7139
  %7143 = call float @dx.op.dot3.f32(i32 55, float %7140, float %7141, float %7142, float %7072, float %7073, float %7074)  ; Dot3(ax,ay,az,bx,by,bz)
  %7144 = fcmp fast ogt float %7143, 0.000000e+00
  %7145 = uitofp i1 %7144 to float
  br label %7146

; <label>:7146                                    ; preds = %7125, %7049
  %7147 = phi float [ %7145, %7125 ], [ 1.000000e+00, %7049 ]
  %7148 = phi float [ %7134, %7125 ], [ %7117, %7049 ]
  %7149 = phi float [ %7135, %7125 ], [ %7118, %7049 ]
  %7150 = phi float [ %7136, %7125 ], [ %7119, %7049 ]
  %7151 = call float @dx.op.dot3.f32(i32 55, float %7072, float %7073, float %7074, float %7148, float %7149, float %7150)  ; Dot3(ax,ay,az,bx,by,bz)
  %7152 = fmul fast float %7151, %7151
  %7153 = call float @dx.op.unary.f32(i32 7, float %7152)  ; Saturate(value)
  %7154 = fsub fast float 1.000000e+00, %7153
  %7155 = fmul fast float %7154, 5.000000e-01
  %7156 = fcmp fast ogt float %7151, 0.000000e+00
  %7157 = fsub fast float 1.000000e+00, %7155
  %7158 = select i1 %7156, float %7155, float %7157
  %7159 = fmul fast float %7158, %7107
  %7160 = fadd fast float %7159, %7105
  %7161 = fmul fast float %7160, 0x3EF0001000000000
  %7162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %48, float %7161, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7163 = extractvalue %dx.types.ResRet.f32 %7162, 0
  %7164 = fmul fast float %7151, %7089
  %7165 = fadd fast float %7164, %7090
  %7166 = call float @dx.op.unary.f32(i32 7, float %7165)  ; Saturate(value)
  %7167 = select i1 %7110, float 1.000000e+00, float %7166
  %7168 = select i1 %7110, float %7166, float 1.000000e+00
  %7169 = fmul fast float %7115, %7086
  %7170 = fsub fast float 1.000000e+00, %7169
  %7171 = fmul fast float %7170, %7092
  %7172 = call float @dx.op.unary.f32(i32 7, float %7171)  ; Saturate(value)
  %7173 = fmul fast float %7172, %7168
  %7174 = fmul fast float %7173, 2.000000e+00
  %7175 = fsub fast float 3.000000e+00, %7174
  %7176 = fmul fast float %7163, %7147
  %7177 = fmul fast float %7173, %7173
  %7178 = fmul fast float %7177, %7176
  %7179 = fmul fast float %7178, %7175
  %7180 = call float @dx.op.binary.f32(i32 36, float %7179, float %7179)  ; FMin(a,b)
  %7181 = call float @dx.op.binary.f32(i32 36, float %7179, float %7180)  ; FMin(a,b)
  %7182 = fcmp fast ogt float %7181, 0.000000e+00
  br i1 %7182, label %7191, label %7183, !dx.controlflow.hints !120

; <label>:7183                                    ; preds = %7545, %7291, %7146
  %7184 = phi float [ %7051, %7291 ], [ %7051, %7146 ], [ %7585, %7545 ]
  %7185 = phi float [ %7052, %7291 ], [ %7052, %7146 ], [ %7586, %7545 ]
  %7186 = phi float [ %7053, %7291 ], [ %7053, %7146 ], [ %7587, %7545 ]
  %7187 = phi float [ %7054, %7291 ], [ %7054, %7146 ], [ %7579, %7545 ]
  %7188 = phi float [ %7055, %7291 ], [ %7055, %7146 ], [ %7580, %7545 ]
  %7189 = phi float [ %7056, %7291 ], [ %7056, %7146 ], [ %7581, %7545 ]
  %7190 = icmp eq i32 %7050, %7060
  br i1 %7190, label %7588, label %7049

; <label>:7191                                    ; preds = %7146
  %7192 = icmp eq i32 %7108, 255
  br i1 %7192, label %7291, label %7193, !dx.controlflow.hints !121

; <label>:7193                                    ; preds = %7191
  %7194 = mul nuw nsw i32 %7108, 176
  %7195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7194, i32 undef)  ; BufferLoad(srv,index,wot)
  %7196 = extractvalue %dx.types.ResRet.f32 %7195, 0
  %7197 = extractvalue %dx.types.ResRet.f32 %7195, 1
  %7198 = extractvalue %dx.types.ResRet.f32 %7195, 2
  %7199 = extractvalue %dx.types.ResRet.f32 %7195, 3
  %7200 = add nuw nsw i32 %7194, 16
  %7201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7200, i32 undef)  ; BufferLoad(srv,index,wot)
  %7202 = extractvalue %dx.types.ResRet.f32 %7201, 0
  %7203 = extractvalue %dx.types.ResRet.f32 %7201, 1
  %7204 = add nuw nsw i32 %7194, 32
  %7205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7204, i32 undef)  ; BufferLoad(srv,index,wot)
  %7206 = extractvalue %dx.types.ResRet.f32 %7205, 0
  %7207 = extractvalue %dx.types.ResRet.f32 %7205, 1
  %7208 = extractvalue %dx.types.ResRet.f32 %7205, 2
  %7209 = add nuw nsw i32 %7194, 48
  %7210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7209, i32 undef)  ; BufferLoad(srv,index,wot)
  %7211 = extractvalue %dx.types.ResRet.f32 %7210, 0
  %7212 = extractvalue %dx.types.ResRet.f32 %7210, 1
  %7213 = extractvalue %dx.types.ResRet.f32 %7210, 2
  %7214 = extractvalue %dx.types.ResRet.f32 %7210, 3
  %7215 = add nuw nsw i32 %7194, 64
  %7216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7215, i32 undef)  ; BufferLoad(srv,index,wot)
  %7217 = extractvalue %dx.types.ResRet.f32 %7216, 0
  %7218 = extractvalue %dx.types.ResRet.f32 %7216, 1
  %7219 = extractvalue %dx.types.ResRet.f32 %7216, 2
  %7220 = extractvalue %dx.types.ResRet.f32 %7216, 3
  %7221 = add nuw nsw i32 %7194, 80
  %7222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7221, i32 undef)  ; BufferLoad(srv,index,wot)
  %7223 = extractvalue %dx.types.ResRet.f32 %7222, 0
  %7224 = extractvalue %dx.types.ResRet.f32 %7222, 1
  %7225 = extractvalue %dx.types.ResRet.f32 %7222, 2
  %7226 = extractvalue %dx.types.ResRet.f32 %7222, 3
  %7227 = add nuw nsw i32 %7194, 96
  %7228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7227, i32 undef)  ; BufferLoad(srv,index,wot)
  %7229 = extractvalue %dx.types.ResRet.f32 %7228, 0
  %7230 = extractvalue %dx.types.ResRet.f32 %7228, 1
  %7231 = extractvalue %dx.types.ResRet.f32 %7228, 2
  %7232 = extractvalue %dx.types.ResRet.f32 %7228, 3
  %7233 = bitcast float %7203 to i32
  %7234 = fmul fast float %7208, %111
  %7235 = fmul fast float %7208, %112
  %7236 = fmul fast float %7208, %113
  %7237 = fadd fast float %7234, %191
  %7238 = fadd fast float %7235, %192
  %7239 = fadd fast float %7236, %193
  %7240 = fmul fast float %7237, %7211
  %7241 = call float @dx.op.tertiary.f32(i32 46, float %7238, float %7217, float %7240)  ; FMad(a,b,c)
  %7242 = call float @dx.op.tertiary.f32(i32 46, float %7239, float %7223, float %7241)  ; FMad(a,b,c)
  %7243 = fadd fast float %7242, %7229
  %7244 = fmul fast float %7237, %7212
  %7245 = call float @dx.op.tertiary.f32(i32 46, float %7238, float %7218, float %7244)  ; FMad(a,b,c)
  %7246 = call float @dx.op.tertiary.f32(i32 46, float %7239, float %7224, float %7245)  ; FMad(a,b,c)
  %7247 = fadd fast float %7246, %7230
  %7248 = fmul fast float %7237, %7213
  %7249 = call float @dx.op.tertiary.f32(i32 46, float %7238, float %7219, float %7248)  ; FMad(a,b,c)
  %7250 = call float @dx.op.tertiary.f32(i32 46, float %7239, float %7225, float %7249)  ; FMad(a,b,c)
  %7251 = fadd fast float %7250, %7231
  %7252 = fmul fast float %7237, %7214
  %7253 = call float @dx.op.tertiary.f32(i32 46, float %7238, float %7220, float %7252)  ; FMad(a,b,c)
  %7254 = call float @dx.op.tertiary.f32(i32 46, float %7239, float %7226, float %7253)  ; FMad(a,b,c)
  %7255 = fadd fast float %7254, %7232
  %7256 = fdiv fast float %7243, %7255
  %7257 = fdiv fast float %7247, %7255
  %7258 = fdiv fast float %7251, %7255
  %7259 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7258)  ; FMax(a,b)
  %7260 = fmul fast float %261, 0x401921FB60000000
  %7261 = call float @dx.op.unary.f32(i32 13, float %7260)  ; Sin(value)
  %7262 = call float @dx.op.unary.f32(i32 12, float %7260)  ; Cos(value)
  %7263 = fsub fast float -0.000000e+00, %7261
  %7264 = fmul fast float %7198, 5.000000e-01
  %7265 = call float @dx.op.dot2.f32(i32 54, float %261, float %261, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7266 = call float @dx.op.unary.f32(i32 22, float %7265)  ; Frc(value)
  %7267 = fmul fast float %7266, 0x404A7DD040000000
  %7268 = call float @dx.op.unary.f32(i32 22, float %7267)  ; Frc(value)
  %7269 = fmul fast float %7268, %7207
  %7270 = fadd fast float %7269, %7264
  %7271 = call float @dx.op.tertiary.f32(i32 46, float %7270, float %7263, float 0.000000e+00)  ; FMad(a,b,c)
  %7272 = call float @dx.op.tertiary.f32(i32 46, float %7270, float %7262, float 0.000000e+00)  ; FMad(a,b,c)
  %7273 = fadd fast float %7271, %7256
  %7274 = fadd fast float %7272, %7257
  %7275 = fmul fast float %7273, %7202
  %7276 = fmul fast float %7274, %7202
  %7277 = call float @dx.op.binary.f32(i32 35, float %7275, float %7198)  ; FMax(a,b)
  %7278 = call float @dx.op.binary.f32(i32 35, float %7276, float %7198)  ; FMax(a,b)
  %7279 = call float @dx.op.binary.f32(i32 36, float %7277, float %7199)  ; FMin(a,b)
  %7280 = call float @dx.op.binary.f32(i32 36, float %7278, float %7199)  ; FMin(a,b)
  %7281 = fadd fast float %7279, %7196
  %7282 = fadd fast float %7280, %7197
  %7283 = uitofp i32 %7233 to float
  %7284 = fadd fast float %7259, %7206
  %7285 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %50, float %7281, float %7282, float %7283, float undef, i32 0, i32 0, i32 undef, float %7284)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7286 = extractvalue %dx.types.ResRet.f32 %7285, 0
  %7287 = fadd fast float %7286, -1.000000e+00
  %7288 = fmul fast float %7287, %7167
  %7289 = fadd fast float %7288, 1.000000e+00
  %7290 = fmul fast float %7289, %7179
  br label %7291

; <label>:7291                                    ; preds = %7193, %7191
  %7292 = phi float [ %7290, %7193 ], [ %7179, %7191 ]
  %7293 = call float @dx.op.binary.f32(i32 36, float %7292, float %7292)  ; FMin(a,b)
  %7294 = call float @dx.op.binary.f32(i32 36, float %7292, float %7293)  ; FMin(a,b)
  %7295 = fcmp fast ogt float %7294, 0.000000e+00
  br i1 %7295, label %7296, label %7183, !dx.controlflow.hints !122

; <label>:7296                                    ; preds = %7291
  %7297 = fmul fast float %7292, %7101
  %7298 = fmul fast float %7292, %7102
  %7299 = fmul fast float %7292, %7103
  %7300 = fsub fast float %7085, %4804
  %7301 = fcmp fast ogt float %7300, 0.000000e+00
  %7302 = fsub fast float %193, %4804
  %7303 = fcmp fast ogt float %7302, 0.000000e+00
  %7304 = xor i1 %7303, %7301
  %7305 = fsub fast float %4804, %7085
  %7306 = fmul fast float %7305, 2.000000e+00
  %7307 = fadd fast float %7306, %7085
  %7308 = select i1 %7304, float %7085, float %7307
  %7309 = fsub fast float %7308, %193
  %7310 = call float @dx.op.dot3.f32(i32 55, float %7111, float %7112, float %7309, float %7111, float %7112, float %7309)  ; Dot3(ax,ay,az,bx,by,bz)
  %7311 = call float @dx.op.unary.f32(i32 25, float %7310)  ; Rsqrt(value)
  %7312 = fmul fast float %7311, %7111
  %7313 = fmul fast float %7311, %7112
  %7314 = fmul fast float %7311, %7309
  %7315 = fsub fast float %4804, %193
  %7316 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7315)  ; Dot3(ax,ay,az,bx,by,bz)
  %7317 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7312, float %7313, float %7314)  ; Dot3(ax,ay,az,bx,by,bz)
  %7318 = fdiv fast float 1.000000e+00, %7317
  %7319 = fmul fast float %7318, %7316
  %7320 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7302, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7321 = fcmp fast ogt float %7320, 0.000000e+00
  %7322 = fcmp fast olt float %7320, 0.000000e+00
  %7323 = zext i1 %7321 to i32
  %7324 = zext i1 %7322 to i32
  %7325 = sub nsw i32 %7323, %7324
  %7326 = sitofp i32 %7325 to float
  %7327 = fsub fast float %7308, %4804
  %7328 = call float @dx.op.dot3.f32(i32 55, float %7111, float %7112, float %7327, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7329 = fcmp fast ogt float %7328, 0.000000e+00
  %7330 = fcmp fast olt float %7328, 0.000000e+00
  %7331 = zext i1 %7329 to i32
  %7332 = zext i1 %7330 to i32
  %7333 = sub nsw i32 %7331, %7332
  %7334 = sitofp i32 %7333 to float
  %7335 = fcmp fast une float %7326, %7334
  br i1 %7335, label %7336, label %7346

; <label>:7336                                    ; preds = %7296
  %7337 = fmul fast float %7319, %7314
  %7338 = fmul fast float %7319, %7313
  %7339 = fmul fast float %7319, %7312
  %7340 = fmul fast float %7339, %7339
  %7341 = fmul fast float %7338, %7338
  %7342 = fadd fast float %7340, %7341
  %7343 = fmul fast float %7337, %7337
  %7344 = fadd fast float %7342, %7343
  %7345 = call float @dx.op.unary.f32(i32 24, float %7344)  ; Sqrt(value)
  br label %7358

; <label>:7346                                    ; preds = %7296
  %7347 = icmp slt i32 %7325, 0
  br i1 %7347, label %7348, label %7358

; <label>:7348                                    ; preds = %7346
  %7349 = fsub fast float %191, %7083
  %7350 = fsub fast float %192, %7084
  %7351 = fsub fast float %193, %7308
  %7352 = fmul fast float %7349, %7349
  %7353 = fmul fast float %7350, %7350
  %7354 = fadd fast float %7352, %7353
  %7355 = fmul fast float %7351, %7351
  %7356 = fadd fast float %7354, %7355
  %7357 = call float @dx.op.unary.f32(i32 24, float %7356)  ; Sqrt(value)
  br label %7358

; <label>:7358                                    ; preds = %7348, %7346, %7336
  %7359 = phi float [ %7345, %7336 ], [ %7357, %7348 ], [ 0.000000e+00, %7346 ]
  %7360 = and i1 %7303, %7301
  %7361 = fsub fast float -0.000000e+00, %7359
  %7362 = select i1 %7360, float -0.000000e+00, float %7361
  %7363 = fmul fast float %4805, 0x3FF7154760000000
  %7364 = fmul fast float %7363, %7362
  %7365 = fmul fast float %4806, 0x3FF7154760000000
  %7366 = fmul fast float %7365, %7362
  %7367 = fmul fast float %4807, 0x3FF7154760000000
  %7368 = fmul fast float %7367, %7362
  %7369 = call float @dx.op.unary.f32(i32 21, float %7364)  ; Exp(value)
  %7370 = call float @dx.op.unary.f32(i32 21, float %7366)  ; Exp(value)
  %7371 = call float @dx.op.unary.f32(i32 21, float %7368)  ; Exp(value)
  %7372 = call float @dx.op.unary.f32(i32 7, float %7369)  ; Saturate(value)
  %7373 = call float @dx.op.unary.f32(i32 7, float %7370)  ; Saturate(value)
  %7374 = call float @dx.op.unary.f32(i32 7, float %7371)  ; Saturate(value)
  %7375 = fmul fast float %7297, %7372
  %7376 = fmul fast float %7298, %7373
  %7377 = fmul fast float %7299, %7374
  %7378 = fsub fast float %7117, %5596
  %7379 = fsub fast float %7118, %5595
  %7380 = fsub fast float %7119, %5594
  %7381 = call float @dx.op.dot3.f32(i32 55, float %7378, float %7379, float %7380, float %7378, float %7379, float %7380)  ; Dot3(ax,ay,az,bx,by,bz)
  %7382 = call float @dx.op.unary.f32(i32 25, float %7381)  ; Rsqrt(value)
  %7383 = fmul fast float %7382, %7378
  %7384 = fmul fast float %7382, %7379
  %7385 = fmul fast float %7382, %7380
  %7386 = call float @dx.op.dot3.f32(i32 55, float %7117, float %7118, float %7119, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %7387 = call float @dx.op.dot3.f32(i32 55, float %5593, float %5592, float %5591, float %7383, float %7384, float %7385)  ; Dot3(ax,ay,az,bx,by,bz)
  %7388 = call float @dx.op.unary.f32(i32 7, float %7386)  ; Saturate(value)
  %7389 = fmul fast float %7388, %7124
  %7390 = fmul fast float %7388, %7388
  %7391 = fmul fast float %7390, %5624
  %7392 = call float @dx.op.unary.f32(i32 7, float %7391)  ; Saturate(value)
  %7393 = fmul fast float %7389, %7392
  %7394 = bitcast float %7114 to i32
  %7395 = ashr i32 %7394, 1
  %7396 = sub nsw i32 1597463007, %7395
  %7397 = bitcast i32 %7396 to float
  %7398 = fmul fast float %7397, %7111
  %7399 = fmul fast float %7397, %7112
  %7400 = fmul fast float %7397, %7113
  %7401 = fsub fast float %7398, %5596
  %7402 = fsub fast float %7399, %5595
  %7403 = fsub fast float %7400, %5594
  %7404 = call float @dx.op.dot3.f32(i32 55, float %7401, float %7402, float %7403, float %7401, float %7402, float %7403)  ; Dot3(ax,ay,az,bx,by,bz)
  %7405 = call float @dx.op.unary.f32(i32 25, float %7404)  ; Rsqrt(value)
  %7406 = fmul fast float %7401, %7405
  %7407 = fmul fast float %7402, %7405
  %7408 = fmul fast float %7403, %7405
  %7409 = call float @dx.op.dot3.f32(i32 55, float %5603, float %5604, float %5605, float %7406, float %7407, float %7408)  ; Dot3(ax,ay,az,bx,by,bz)
  %7410 = fmul fast float %7409, %7409
  %7411 = call float @dx.op.unary.f32(i32 6, float %7386)  ; FAbs(value)
  %7412 = fsub fast float 1.000000e+00, %5606
  %7413 = call float @dx.op.binary.f32(i32 35, float %7412, float 0x3F847AE140000000)  ; FMax(a,b)
  %7414 = fmul fast float %7413, %7413
  %7415 = fmul fast float %7414, %7414
  %7416 = fsub fast float 1.000000e+00, %7415
  %7417 = fmul fast float %5611, %5611
  %7418 = fmul fast float %7417, %7416
  %7419 = fadd fast float %7418, %7415
  %7420 = bitcast float %7419 to i32
  %7421 = ashr i32 %7420, 1
  %7422 = add nsw i32 %7421, 532487669
  %7423 = bitcast i32 %7422 to float
  %7424 = fadd fast float %7423, %5611
  %7425 = fmul fast float %7415, %7410
  %7426 = fsub fast float 1.000000e+00, %7410
  %7427 = fadd fast float %7426, %7425
  %7428 = fmul fast float %7411, %7411
  %7429 = fmul fast float %7428, %7416
  %7430 = fadd fast float %7429, %7415
  %7431 = bitcast float %7430 to i32
  %7432 = ashr i32 %7431, 1
  %7433 = add nsw i32 %7432, 532487669
  %7434 = bitcast i32 %7433 to float
  %7435 = fadd fast float %7434, %7411
  %7436 = fmul fast float %7427, %7427
  %7437 = fmul fast float %7436, %7424
  %7438 = fmul fast float %7437, %7435
  %7439 = fdiv fast float 1.000000e+00, %7438
  %7440 = bitcast float %7415 to i32
  %7441 = sitofp i32 %7440 to float
  %7442 = fmul fast float %7441, 0x3FE7F73180000000
  %7443 = fadd fast float %7442, 0x41AFE27C40000000
  %7444 = fptosi float %7443 to i32
  %7445 = bitcast i32 %7444 to float
  %7446 = fmul fast float %7080, 0x3FD80E9D60000000
  %7447 = fmul fast float %7446, %7397
  %7448 = fadd fast float %7445, %7447
  %7449 = bitcast float %7448 to i32
  %7450 = sub nsw i32 2129859010, %7449
  %7451 = bitcast i32 %7450 to float
  %7452 = fmul fast float %7415, %7439
  %7453 = fmul fast float %7452, %7445
  %7454 = fmul fast float %7453, %7451
  %7455 = fmul fast float %5724, 0x3FF9999980000000
  %7456 = fsub fast float 5.000000e+00, %7455
  %7457 = call float @dx.op.unary.f32(i32 6, float %7387)  ; FAbs(value)
  %7458 = fsub fast float 1.000000e+00, %7457
  %7459 = fmul fast float %5724, 0x41D9660740000000
  %7460 = fadd fast float %7459, 0xC1EFBF8940000000
  %7461 = bitcast float %7458 to i32
  %7462 = sitofp i32 %7461 to float
  %7463 = fmul fast float %7462, %7456
  %7464 = fadd fast float %7460, %7463
  %7465 = fptosi float %7464 to i32
  %7466 = bitcast i32 %7465 to float
  %7467 = fsub fast float 1.000000e+00, %5597
  %7468 = fsub fast float 1.000000e+00, %5598
  %7469 = fsub fast float 1.000000e+00, %5609
  %7470 = fmul fast float %7466, %7467
  %7471 = fmul fast float %7466, %7468
  %7472 = fmul fast float %7466, %7469
  %7473 = fadd fast float %7470, %5597
  %7474 = fadd fast float %7471, %5598
  %7475 = fadd fast float %7472, %5609
  br i1 %5747, label %7476, label %7499

; <label>:7476                                    ; preds = %7358
  %7477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %4400, float %7457, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7478 = extractvalue %dx.types.ResRet.f32 %7477, 0
  %7479 = extractvalue %dx.types.ResRet.f32 %7477, 1
  %7480 = extractvalue %dx.types.ResRet.f32 %7477, 2
  %7481 = fadd fast float %7478, -5.000000e-01
  %7482 = fadd fast float %7479, -5.000000e-01
  %7483 = fadd fast float %7480, -5.000000e-01
  %7484 = fmul fast float %5597, 4.000000e+00
  %7485 = fmul fast float %7484, %7467
  %7486 = fmul fast float %7485, %7481
  %7487 = fmul fast float %5598, 4.000000e+00
  %7488 = fmul fast float %7487, %7468
  %7489 = fmul fast float %7488, %7482
  %7490 = fmul fast float %5609, 4.000000e+00
  %7491 = fmul fast float %7490, %7469
  %7492 = fmul fast float %7491, %7483
  %7493 = fadd fast float %7486, %7473
  %7494 = fadd fast float %7489, %7474
  %7495 = fadd fast float %7492, %7475
  %7496 = call float @dx.op.unary.f32(i32 7, float %7493)  ; Saturate(value)
  %7497 = call float @dx.op.unary.f32(i32 7, float %7494)  ; Saturate(value)
  %7498 = call float @dx.op.unary.f32(i32 7, float %7495)  ; Saturate(value)
  br label %7499

; <label>:7499                                    ; preds = %7476, %7358
  %7500 = phi float [ %7496, %7476 ], [ %7473, %7358 ]
  %7501 = phi float [ %7497, %7476 ], [ %7474, %7358 ]
  %7502 = phi float [ %7498, %7476 ], [ %7475, %7358 ]
  %7503 = fmul fast float %7386, 9.843750e-01
  %7504 = fadd fast float %7503, 7.812500e-03
  %7505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %7504, float %5728, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7506 = extractvalue %dx.types.ResRet.f32 %7505, 0
  %7507 = extractvalue %dx.types.ResRet.f32 %7505, 1
  %7508 = extractvalue %dx.types.ResRet.f32 %7505, 2
  %7509 = extractvalue %dx.types.ResRet.f32 %7505, 3
  %7510 = fsub fast float %7508, %7506
  %7511 = fsub fast float %7509, %7507
  %7512 = fmul fast float %7510, %5734
  %7513 = fmul fast float %7511, %5734
  %7514 = fadd fast float %7512, %7506
  %7515 = fadd fast float %7513, %7507
  %7516 = fmul fast float %7514, %5597
  %7517 = fmul fast float %7514, %5598
  %7518 = fmul fast float %7514, %5609
  %7519 = fadd fast float %7516, %7515
  %7520 = fadd fast float %7517, %7515
  %7521 = fadd fast float %7518, %7515
  br i1 %5747, label %7522, label %7545

; <label>:7522                                    ; preds = %7499
  %7523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %4400, float %7386, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7524 = extractvalue %dx.types.ResRet.f32 %7523, 0
  %7525 = extractvalue %dx.types.ResRet.f32 %7523, 1
  %7526 = extractvalue %dx.types.ResRet.f32 %7523, 2
  %7527 = fadd fast float %7524, -5.000000e-01
  %7528 = fadd fast float %7525, -5.000000e-01
  %7529 = fadd fast float %7526, -5.000000e-01
  %7530 = fmul fast float %5597, 4.000000e+00
  %7531 = fmul fast float %7530, %7467
  %7532 = fmul fast float %7531, %7527
  %7533 = fmul fast float %5598, 4.000000e+00
  %7534 = fmul fast float %7533, %7468
  %7535 = fmul fast float %7534, %7528
  %7536 = fmul fast float %5609, 4.000000e+00
  %7537 = fmul fast float %7536, %7469
  %7538 = fmul fast float %7537, %7529
  %7539 = fadd fast float %7532, %7519
  %7540 = fadd fast float %7535, %7520
  %7541 = fadd fast float %7538, %7521
  %7542 = call float @dx.op.unary.f32(i32 7, float %7539)  ; Saturate(value)
  %7543 = call float @dx.op.unary.f32(i32 7, float %7540)  ; Saturate(value)
  %7544 = call float @dx.op.unary.f32(i32 7, float %7541)  ; Saturate(value)
  br label %7545

; <label>:7545                                    ; preds = %7522, %7499
  %7546 = phi float [ %7542, %7522 ], [ %7519, %7499 ]
  %7547 = phi float [ %7543, %7522 ], [ %7520, %7499 ]
  %7548 = phi float [ %7544, %7522 ], [ %7521, %7499 ]
  %7549 = call float @dx.op.binary.f32(i32 35, float %7547, float %7548)  ; FMax(a,b)
  %7550 = call float @dx.op.binary.f32(i32 35, float %7546, float %7549)  ; FMax(a,b)
  %7551 = fsub fast float 1.000000e+00, %7550
  %7552 = fmul fast float %7500, %7454
  %7553 = fmul fast float %7501, %7454
  %7554 = fmul fast float %7502, %7454
  %7555 = fsub fast float 1.000000e+00, %7387
  %7556 = bitcast float %7555 to i32
  %7557 = sitofp i32 %7556 to float
  %7558 = fmul fast float %7557, 5.000000e+00
  %7559 = fadd fast float %7558, 0xC1EFBF8940000000
  %7560 = fptosi float %7559 to i32
  %7561 = bitcast i32 %7560 to float
  %7562 = fmul fast float %7561, %4401
  %7563 = fmul fast float %7551, %7562
  %7564 = fmul fast float %7563, %5797
  %7565 = fmul fast float %7563, %5798
  %7566 = fmul fast float %7563, %5799
  %7567 = fadd fast float %7564, %7552
  %7568 = fadd fast float %7565, %7553
  %7569 = fadd fast float %7566, %7554
  %7570 = fmul fast float %7375, %4397
  %7571 = fmul fast float %7570, %7393
  %7572 = fmul fast float %7571, %7551
  %7573 = fmul fast float %7376, %4397
  %7574 = fmul fast float %7573, %7393
  %7575 = fmul fast float %7574, %7551
  %7576 = fmul fast float %7377, %4397
  %7577 = fmul fast float %7576, %7393
  %7578 = fmul fast float %7577, %7551
  %7579 = fadd fast float %7572, %7054
  %7580 = fadd fast float %7575, %7055
  %7581 = fadd fast float %7578, %7056
  %7582 = fmul fast float %7571, %7567
  %7583 = fmul fast float %7574, %7568
  %7584 = fmul fast float %7577, %7569
  %7585 = fadd fast float %7582, %7051
  %7586 = fadd fast float %7583, %7052
  %7587 = fadd fast float %7584, %7053
  br label %7183

; <label>:7588                                    ; preds = %7183
  br label %7589

; <label>:7589                                    ; preds = %7588, %7017
  %7590 = phi float [ %7019, %7017 ], [ %7184, %7588 ]
  %7591 = phi float [ %7020, %7017 ], [ %7185, %7588 ]
  %7592 = phi float [ %7021, %7017 ], [ %7186, %7588 ]
  %7593 = phi float [ %7022, %7017 ], [ %7187, %7588 ]
  %7594 = phi float [ %7023, %7017 ], [ %7188, %7588 ]
  %7595 = phi float [ %7024, %7017 ], [ %7189, %7588 ]
  %7596 = add i32 %7018, 1
  %7597 = icmp ugt i32 %7596, %7014
  br i1 %7597, label %7598, label %7017

; <label>:7598                                    ; preds = %7589
  br label %7599

; <label>:7599                                    ; preds = %7598, %6967, %6957
  %7600 = phi float [ %6958, %6957 ], [ %6958, %6967 ], [ %7590, %7598 ]
  %7601 = phi float [ %6959, %6957 ], [ %6959, %6967 ], [ %7591, %7598 ]
  %7602 = phi float [ %6960, %6957 ], [ %6960, %6967 ], [ %7592, %7598 ]
  %7603 = phi float [ %6961, %6957 ], [ %6961, %6967 ], [ %7593, %7598 ]
  %7604 = phi float [ %6962, %6957 ], [ %6962, %6967 ], [ %7594, %7598 ]
  %7605 = phi float [ %6963, %6957 ], [ %6963, %6967 ], [ %7595, %7598 ]
  %7606 = fmul fast float %4397, %4397
  %7607 = fmul fast float %7606, %5823
  %7608 = fmul fast float %7606, %5824
  %7609 = fmul fast float %7606, %5825
  %7610 = fadd fast float %7607, 1.000000e+00
  %7611 = fadd fast float %7608, 1.000000e+00
  %7612 = fadd fast float %7609, 1.000000e+00
  %7613 = call float @dx.op.dot3.f32(i32 55, float %7610, float %7611, float %7612, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7614 = fsub fast float 1.000000e+00, %7613
  %7615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7616 = extractvalue %dx.types.CBufRet.f32 %7615, 0
  %7617 = fmul fast float %7616, %5829
  %7618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7619 = extractvalue %dx.types.CBufRet.f32 %7618, 3
  %7620 = fsub fast float 1.000000e+00, %4404
  %7621 = call float @dx.op.unary.f32(i32 7, float %7620)  ; Saturate(value)
  %7622 = fadd fast float %7605, %4403
  %7623 = fmul fast float %7622, %4404
  %7624 = fmul fast float %7621, %7619
  %7625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7626 = extractvalue %dx.types.CBufRet.f32 %7625, 3
  %7627 = fmul fast float %7603, %5600
  %7628 = fmul fast float %7604, %5601
  %7629 = fmul fast float %7605, %5602
  %7630 = fcmp fast ogt float %95, %213
  %7631 = and i1 %7630, %4810
  %7632 = or i1 %4816, %7631
  %7633 = icmp eq i32 %4809, 2
  %7634 = fcmp fast ole float %95, %213
  %7635 = and i1 %7634, %7633
  %7636 = or i1 %7635, %7632
  br i1 %7631, label %7637, label %7894

; <label>:7637                                    ; preds = %7599
  %7638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7639 = extractvalue %dx.types.CBufRet.f32 %7638, 2
  %7640 = extractvalue %dx.types.CBufRet.f32 %7638, 3
  %7641 = fmul fast float %7639, %104
  %7642 = fmul fast float %7640, %105
  %7643 = call float @dx.op.unary.f32(i32 7, float %7641)  ; Saturate(value)
  %7644 = call float @dx.op.unary.f32(i32 7, float %7642)  ; Saturate(value)
  %7645 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7643, float %7644, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7646 = extractvalue %dx.types.ResRet.f32 %7645, 0
  %7647 = extractvalue %dx.types.ResRet.f32 %7645, 1
  %7648 = extractvalue %dx.types.ResRet.f32 %7645, 2
  %7649 = extractvalue %dx.types.ResRet.f32 %7645, 3
  %7650 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7643, float %7644, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7651 = extractvalue %dx.types.ResRet.f32 %7650, 0
  %7652 = extractvalue %dx.types.ResRet.f32 %7650, 1
  %7653 = extractvalue %dx.types.ResRet.f32 %7650, 2
  %7654 = extractvalue %dx.types.ResRet.f32 %7650, 3
  %7655 = call float @dx.op.binary.f32(i32 35, float %7647, float %7648)  ; FMax(a,b)
  %7656 = call float @dx.op.binary.f32(i32 35, float %7646, float %7655)  ; FMax(a,b)
  %7657 = call float @dx.op.binary.f32(i32 35, float %7656, float %7649)  ; FMax(a,b)
  %7658 = call float @dx.op.binary.f32(i32 36, float %7652, float %7653)  ; FMin(a,b)
  %7659 = call float @dx.op.binary.f32(i32 36, float %7651, float %7658)  ; FMin(a,b)
  %7660 = call float @dx.op.binary.f32(i32 36, float %7659, float %7654)  ; FMin(a,b)
  %7661 = fmul fast float %7657, 2.550000e+02
  %7662 = fadd fast float %7661, 0x3F70101020000000
  %7663 = fptoui float %7662 to i32
  %7664 = fmul fast float %7660, 2.550000e+02
  %7665 = fadd fast float %7664, 0x3F70101020000000
  %7666 = fptoui float %7665 to i32
  %7667 = icmp ult i32 %7663, %7666
  br i1 %7667, label %7668, label %7836

; <label>:7668                                    ; preds = %7637
  %7669 = fcmp fast ogt float %94, 9.843750e-01
  %7670 = fadd fast float %95, -4.000000e+00
  %7671 = select i1 %7669, float -4.000000e+00, float %7670
  %7672 = call float @dx.op.binary.f32(i32 35, float %7671, float 0.000000e+00)  ; FMax(a,b)
  %7673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7674 = extractvalue %dx.types.CBufRet.f32 %7673, 0
  %7675 = fadd fast float %7674, %7672
  %7676 = extractvalue %dx.types.CBufRet.f32 %7673, 2
  %7677 = fmul fast float %7675, %7676
  %7678 = call float @dx.op.unary.f32(i32 23, float %7677)  ; Log(value)
  %7679 = extractvalue %dx.types.CBufRet.f32 %7673, 3
  %7680 = fmul fast float %7679, %7678
  %7681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7682 = extractvalue %dx.types.CBufRet.f32 %7681, 2
  %7683 = fmul fast float %7680, %7682
  %7684 = call float @dx.op.unary.f32(i32 7, float %7683)  ; Saturate(value)
  %7685 = uitofp i32 %7663 to float
  %7686 = uitofp i32 %7666 to float
  %7687 = fadd fast float %7685, 5.000000e-01
  %7688 = fadd fast float %7686, 5.000000e-01
  %7689 = fmul fast float %7682, %7687
  %7690 = fmul fast float %7682, %7688
  %7691 = fadd fast float %7689, 0x3F0FFB4800000000
  %7692 = fadd fast float %7690, 0xBF0FFB4800000000
  %7693 = call float @dx.op.binary.f32(i32 35, float %7684, float %7691)  ; FMax(a,b)
  %7694 = call float @dx.op.binary.f32(i32 36, float %7693, float %7692)  ; FMin(a,b)
  %7695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7696 = extractvalue %dx.types.CBufRet.f32 %7695, 1
  %7697 = extractvalue %dx.types.CBufRet.f32 %7695, 2
  %7698 = extractvalue %dx.types.CBufRet.f32 %7695, 0
  %7699 = fmul fast float %7696, %7694
  %7700 = fadd fast float %7698, %7699
  %7701 = fadd fast float %7698, %7697
  %7702 = fsub fast float %7696, %7697
  %7703 = fadd fast float %7702, %7698
  %7704 = call float @dx.op.binary.f32(i32 35, float %7700, float %7701)  ; FMax(a,b)
  %7705 = call float @dx.op.binary.f32(i32 36, float %7704, float %7703)  ; FMin(a,b)
  %7706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7643, float %7644, float %7705, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7707 = extractvalue %dx.types.ResRet.f32 %7706, 0
  %7708 = extractvalue %dx.types.ResRet.f32 %7706, 1
  %7709 = extractvalue %dx.types.ResRet.f32 %7706, 2
  %7710 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7711 = extractvalue %dx.types.CBufRet.i32 %7710, 0
  %7712 = extractvalue %dx.types.CBufRet.i32 %7710, 1
  %7713 = uitofp i32 %7711 to float
  %7714 = uitofp i32 %7712 to float
  %7715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7716 = extractvalue %dx.types.CBufRet.f32 %7715, 0
  %7717 = extractvalue %dx.types.CBufRet.f32 %7715, 1
  %7718 = fmul fast float %7713, %7643
  %7719 = fmul fast float %7714, %7644
  %7720 = fadd fast float %7718, -5.000000e-01
  %7721 = fadd fast float %7719, -5.000000e-01
  %7722 = call float @dx.op.unary.f32(i32 22, float %7720)  ; Frc(value)
  %7723 = call float @dx.op.unary.f32(i32 22, float %7721)  ; Frc(value)
  %7724 = fmul fast float %7722, %7722
  %7725 = fmul fast float %7724, %7722
  %7726 = fsub fast float 3.000000e+00, %7722
  %7727 = fmul fast float %7724, %7726
  %7728 = fmul fast float %7722, 3.000000e+00
  %7729 = fmul fast float %7725, 3.000000e+00
  %7730 = fmul fast float %7724, 6.000000e+00
  %7731 = fsub fast float %7729, %7730
  %7732 = fadd fast float %7731, 4.000000e+00
  %7733 = fmul fast float %7732, 0x3FC5555560000000
  %7734 = fmul fast float %7725, -3.000000e+00
  %7735 = fadd fast float %7724, %7722
  %7736 = fmul fast float %7735, 3.000000e+00
  %7737 = fadd fast float %7734, 1.000000e+00
  %7738 = fadd fast float %7737, %7736
  %7739 = fmul fast float %7725, 0x3FC5555560000000
  %7740 = fmul fast float %7723, %7723
  %7741 = fmul fast float %7740, %7723
  %7742 = fsub fast float 3.000000e+00, %7723
  %7743 = fmul fast float %7740, %7742
  %7744 = fmul fast float %7723, 3.000000e+00
  %7745 = fmul fast float %7741, 3.000000e+00
  %7746 = fmul fast float %7740, 6.000000e+00
  %7747 = fsub fast float %7745, %7746
  %7748 = fadd fast float %7747, 4.000000e+00
  %7749 = fmul fast float %7748, 0x3FC5555560000000
  %7750 = fmul fast float %7741, -3.000000e+00
  %7751 = fadd fast float %7740, %7723
  %7752 = fmul fast float %7751, 3.000000e+00
  %7753 = fadd fast float %7750, 1.000000e+00
  %7754 = fadd fast float %7753, %7752
  %7755 = fmul fast float %7741, 0x3FC5555560000000
  %7756 = fadd fast float %7722, 1.000000e+00
  %7757 = fsub fast float 1.000000e+00, %7728
  %7758 = fadd fast float %7757, %7727
  %7759 = fadd fast float %7758, %7732
  %7760 = fmul fast float %7759, 0x3FC5555560000000
  %7761 = fdiv fast float %7733, %7760
  %7762 = fsub fast float %7756, %7761
  %7763 = fsub fast float 1.000000e+00, %7722
  %7764 = fadd fast float %7738, %7725
  %7765 = fmul fast float %7764, 0x3FC5555560000000
  %7766 = fdiv fast float %7739, %7765
  %7767 = fadd fast float %7763, %7766
  %7768 = fadd fast float %7723, 1.000000e+00
  %7769 = fsub fast float 1.000000e+00, %7744
  %7770 = fadd fast float %7769, %7743
  %7771 = fadd fast float %7770, %7748
  %7772 = fmul fast float %7771, 0x3FC5555560000000
  %7773 = fdiv fast float %7749, %7772
  %7774 = fsub fast float %7768, %7773
  %7775 = fsub fast float 1.000000e+00, %7723
  %7776 = fadd fast float %7754, %7741
  %7777 = fmul fast float %7776, 0x3FC5555560000000
  %7778 = fdiv fast float %7755, %7777
  %7779 = fadd fast float %7778, %7775
  %7780 = fmul fast float %7762, %7716
  %7781 = fsub fast float %7643, %7780
  %7782 = fmul fast float %7767, %7716
  %7783 = fadd fast float %7782, %7643
  %7784 = fmul fast float %7779, %7717
  %7785 = fadd fast float %7784, %7644
  %7786 = fmul fast float %7774, %7717
  %7787 = fsub fast float %7644, %7786
  %7788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7781, float %7787, float %7705, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7789 = extractvalue %dx.types.ResRet.f32 %7788, 0
  %7790 = extractvalue %dx.types.ResRet.f32 %7788, 1
  %7791 = extractvalue %dx.types.ResRet.f32 %7788, 2
  %7792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7783, float %7787, float %7705, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7793 = extractvalue %dx.types.ResRet.f32 %7792, 0
  %7794 = extractvalue %dx.types.ResRet.f32 %7792, 1
  %7795 = extractvalue %dx.types.ResRet.f32 %7792, 2
  %7796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7781, float %7785, float %7705, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7797 = extractvalue %dx.types.ResRet.f32 %7796, 0
  %7798 = extractvalue %dx.types.ResRet.f32 %7796, 1
  %7799 = extractvalue %dx.types.ResRet.f32 %7796, 2
  %7800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7783, float %7785, float %7705, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7801 = extractvalue %dx.types.ResRet.f32 %7800, 0
  %7802 = extractvalue %dx.types.ResRet.f32 %7800, 1
  %7803 = extractvalue %dx.types.ResRet.f32 %7800, 2
  %7804 = fsub fast float %7797, %7789
  %7805 = fsub fast float %7798, %7790
  %7806 = fsub fast float %7799, %7791
  %7807 = fmul fast float %7804, %7777
  %7808 = fmul fast float %7805, %7777
  %7809 = fmul fast float %7806, %7777
  %7810 = fadd fast float %7807, %7789
  %7811 = fadd fast float %7808, %7790
  %7812 = fadd fast float %7809, %7791
  %7813 = fsub fast float %7801, %7793
  %7814 = fsub fast float %7802, %7794
  %7815 = fsub fast float %7803, %7795
  %7816 = fmul fast float %7813, %7777
  %7817 = fmul fast float %7814, %7777
  %7818 = fmul fast float %7815, %7777
  %7819 = fsub fast float %7793, %7810
  %7820 = fadd fast float %7819, %7816
  %7821 = fsub fast float %7794, %7811
  %7822 = fadd fast float %7821, %7817
  %7823 = fsub fast float %7795, %7812
  %7824 = fadd fast float %7823, %7818
  %7825 = fmul fast float %7820, %7765
  %7826 = fmul fast float %7822, %7765
  %7827 = fmul fast float %7824, %7765
  %7828 = fadd fast float %7825, %7810
  %7829 = fadd fast float %7826, %7811
  %7830 = fadd fast float %7827, %7812
  %7831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7832 = extractvalue %dx.types.CBufRet.f32 %7831, 1
  %7833 = fmul fast float %7828, %7832
  %7834 = fmul fast float %7829, %7832
  %7835 = fmul fast float %7830, %7832
  br label %7836

; <label>:7836                                    ; preds = %7668, %7637
  %7837 = phi float [ %7707, %7668 ], [ 1.000000e+00, %7637 ]
  %7838 = phi float [ %7708, %7668 ], [ 1.000000e+00, %7637 ]
  %7839 = phi float [ %7709, %7668 ], [ 1.000000e+00, %7637 ]
  %7840 = phi float [ %7833, %7668 ], [ 0.000000e+00, %7637 ]
  %7841 = phi float [ %7834, %7668 ], [ 0.000000e+00, %7637 ]
  %7842 = phi float [ %7835, %7668 ], [ 0.000000e+00, %7637 ]
  %7843 = fmul fast float %7840, %7614
  %7844 = fmul fast float %7841, %7614
  %7845 = fmul fast float %7842, %7614
  %7846 = call float @dx.op.dot3.f32(i32 55, float %7837, float %7838, float %7839, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7847 = call float @dx.op.dot3.f32(i32 55, float %7843, float %7844, float %7845, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7848 = select i1 %250, float %7846, float %7837
  %7849 = select i1 %250, float %7846, float %7838
  %7850 = select i1 %250, float 1.000000e+00, float %7839
  %7851 = select i1 %250, float %7847, float %7843
  %7852 = select i1 %250, float 0.000000e+00, float %7844
  %7853 = select i1 %250, float 0.000000e+00, float %7845
  %7854 = fmul fast float %7848, %7627
  %7855 = fmul fast float %7849, %7628
  %7856 = fmul fast float %7850, %7629
  %7857 = fadd fast float %7854, %7851
  %7858 = fadd fast float %7855, %7852
  %7859 = fadd fast float %7853, %7856
  %7860 = fmul fast float %7848, %7600
  %7861 = fmul fast float %7849, %7601
  %7862 = fmul fast float %7850, %7602
  %7863 = fmul fast float %140, %7639
  %7864 = fmul fast float %142, %7640
  %7865 = fsub fast float 1.000000e+00, %7863
  %7866 = fsub fast float 1.000000e+00, %7864
  %7867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7868 = extractvalue %dx.types.CBufRet.f32 %7867, 0
  %7869 = extractvalue %dx.types.CBufRet.f32 %7867, 1
  %7870 = extractvalue %dx.types.CBufRet.f32 %7867, 2
  %7871 = fmul fast float %7865, %7868
  %7872 = fmul fast float %7865, %7869
  %7873 = fmul fast float %7865, %7870
  %7874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7875 = extractvalue %dx.types.CBufRet.f32 %7874, 0
  %7876 = extractvalue %dx.types.CBufRet.f32 %7874, 1
  %7877 = extractvalue %dx.types.CBufRet.f32 %7874, 2
  %7878 = fmul fast float %7866, %7875
  %7879 = fmul fast float %7866, %7876
  %7880 = fmul fast float %7866, %7877
  %7881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7882 = extractvalue %dx.types.CBufRet.f32 %7881, 0
  %7883 = extractvalue %dx.types.CBufRet.f32 %7881, 1
  %7884 = extractvalue %dx.types.CBufRet.f32 %7881, 2
  %7885 = fadd fast float %7878, %7882
  %7886 = fadd fast float %7885, %7871
  %7887 = fadd fast float %7879, %7883
  %7888 = fadd fast float %7887, %7872
  %7889 = fadd fast float %7880, %7884
  %7890 = fadd fast float %7889, %7873
  %7891 = fmul fast float %7886, %213
  %7892 = fmul fast float %7888, %213
  %7893 = fmul fast float %7890, %213
  br label %7894

; <label>:7894                                    ; preds = %7836, %7599
  %7895 = phi float [ %7891, %7836 ], [ %191, %7599 ]
  %7896 = phi float [ %7892, %7836 ], [ %192, %7599 ]
  %7897 = phi float [ %7893, %7836 ], [ %193, %7599 ]
  %7898 = phi float [ %213, %7836 ], [ %95, %7599 ]
  %7899 = phi float [ %7857, %7836 ], [ %7627, %7599 ]
  %7900 = phi float [ %7858, %7836 ], [ %7628, %7599 ]
  %7901 = phi float [ %7859, %7836 ], [ %7629, %7599 ]
  %7902 = phi float [ %7860, %7836 ], [ %7600, %7599 ]
  %7903 = phi float [ %7861, %7836 ], [ %7601, %7599 ]
  %7904 = phi float [ %7862, %7836 ], [ %7602, %7599 ]
  %7905 = phi float [ %7837, %7836 ], [ 1.000000e+00, %7599 ]
  br i1 %7636, label %9060, label %7906

; <label>:7906                                    ; preds = %7894
  %7907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7908 = extractvalue %dx.types.CBufRet.f32 %7907, 0
  %7909 = extractvalue %dx.types.CBufRet.f32 %7907, 1
  %7910 = extractvalue %dx.types.CBufRet.f32 %7907, 2
  %7911 = extractvalue %dx.types.CBufRet.f32 %7907, 3
  %7912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7913 = extractvalue %dx.types.CBufRet.f32 %7912, 0
  %7914 = extractvalue %dx.types.CBufRet.f32 %7912, 1
  %7915 = extractvalue %dx.types.CBufRet.f32 %7912, 2
  %7916 = extractvalue %dx.types.CBufRet.f32 %7912, 3
  %7917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7918 = extractvalue %dx.types.CBufRet.f32 %7917, 0
  %7919 = extractvalue %dx.types.CBufRet.f32 %7917, 1
  %7920 = extractvalue %dx.types.CBufRet.f32 %7917, 2
  %7921 = extractvalue %dx.types.CBufRet.f32 %7917, 3
  %7922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7923 = extractvalue %dx.types.CBufRet.f32 %7922, 0
  %7924 = extractvalue %dx.types.CBufRet.f32 %7922, 1
  %7925 = extractvalue %dx.types.CBufRet.f32 %7922, 2
  %7926 = extractvalue %dx.types.CBufRet.f32 %7922, 3
  %7927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7928 = extractvalue %dx.types.CBufRet.f32 %7927, 3
  %7929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7930 = extractvalue %dx.types.CBufRet.f32 %7929, 3
  %7931 = extractvalue %dx.types.CBufRet.f32 %7929, 0
  %7932 = extractvalue %dx.types.CBufRet.f32 %7929, 1
  %7933 = extractvalue %dx.types.CBufRet.f32 %7929, 2
  %7934 = fcmp fast olt float %7933, -5.000000e-01
  %7935 = call float @dx.op.dot3.f32(i32 55, float %7895, float %7896, float %7897, float %7895, float %7896, float %7897)  ; Dot3(ax,ay,az,bx,by,bz)
  %7936 = call float @dx.op.unary.f32(i32 25, float %7935)  ; Rsqrt(value)
  %7937 = fmul fast float %7936, %7935
  %7938 = fmul fast float %7936, %7895
  %7939 = fmul fast float %7936, %7896
  %7940 = fmul fast float %7936, %7897
  %7941 = fadd fast float %7937, %7911
  %7942 = call float @dx.op.dot3.f32(i32 55, float %7938, float %7939, float %7940, float %7908, float %7909, float %7910)  ; Dot3(ax,ay,az,bx,by,bz)
  %7943 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7944 = extractvalue %dx.types.CBufRet.i32 %7943, 1
  %7945 = and i32 %7944, 1
  %7946 = icmp ne i32 %7945, 0
  %7947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7948 = extractvalue %dx.types.CBufRet.f32 %7947, 2
  %7949 = fcmp fast ogt float %7948, 0.000000e+00
  %7950 = and i1 %7946, %7949
  br i1 %7950, label %7951, label %8357, !dx.controlflow.hints !123

; <label>:7951                                    ; preds = %7906
  %7952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7953 = extractvalue %dx.types.CBufRet.f32 %7952, 3
  %7954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7955 = extractvalue %dx.types.CBufRet.f32 %7954, 2
  %7956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7957 = extractvalue %dx.types.CBufRet.f32 %7956, 2
  %7958 = fsub fast float %7955, %7957
  %7959 = and i32 %7944, 2
  %7960 = extractvalue %dx.types.CBufRet.i32 %7943, 0
  %7961 = call i32 @dx.op.binary.i32(i32 40, i32 %7960, i32 3)  ; UMin(a,b)
  %7962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7963 = extractvalue %dx.types.CBufRet.f32 %7962, 0
  %7964 = extractvalue %dx.types.CBufRet.f32 %7962, 1
  %7965 = extractvalue %dx.types.CBufRet.f32 %7956, 0
  %7966 = extractvalue %dx.types.CBufRet.f32 %7956, 1
  %7967 = fsub fast float %7963, %7965
  %7968 = fsub fast float %7964, %7966
  %7969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7970 = extractvalue %dx.types.CBufRet.f32 %7969, 0
  %7971 = fcmp fast ogt float %7970, 0.000000e+00
  %7972 = fsub fast float -0.000000e+00, %7967
  %7973 = fsub fast float -0.000000e+00, %7968
  %7974 = call float @dx.op.dot2.f32(i32 54, float %7938, float %7939, float %7938, float %7939)  ; Dot2(ax,ay,bx,by)
  %7975 = call float @dx.op.dot2.f32(i32 54, float %7938, float %7939, float %7972, float %7973)  ; Dot2(ax,ay,bx,by)
  %7976 = fmul fast float %7975, 2.000000e+00
  %7977 = call float @dx.op.dot2.f32(i32 54, float %7972, float %7973, float %7972, float %7973)  ; Dot2(ax,ay,bx,by)
  %7978 = fmul fast float %7970, %7970
  %7979 = fsub fast float %7977, %7978
  %7980 = fmul fast float %7976, %7976
  %7981 = fmul fast float %7974, 4.000000e+00
  %7982 = fmul fast float %7981, %7979
  %7983 = fsub fast float %7980, %7982
  %7984 = fcmp fast ogt float %7983, 0.000000e+00
  br i1 %7984, label %7985, label %8000

; <label>:7985                                    ; preds = %7951
  %7986 = fcmp fast ogt float %7976, 0.000000e+00
  %7987 = call float @dx.op.unary.f32(i32 24, float %7983)  ; Sqrt(value)
  %7988 = fsub fast float -0.000000e+00, %7987
  %7989 = select i1 %7986, float %7987, float %7988
  %7990 = fadd fast float %7989, %7976
  %7991 = fmul float %7990, -5.000000e-01
  %7992 = fdiv fast float %7991, %7974
  %7993 = call float @dx.op.binary.f32(i32 35, float %7992, float 0.000000e+00)  ; FMax(a,b)
  %7994 = call float @dx.op.binary.f32(i32 36, float %7937, float %7993)  ; FMin(a,b)
  %7995 = fdiv fast float %7979, %7991
  %7996 = call float @dx.op.binary.f32(i32 35, float %7995, float 0.000000e+00)  ; FMax(a,b)
  %7997 = call float @dx.op.binary.f32(i32 36, float %7937, float %7996)  ; FMin(a,b)
  %7998 = call float @dx.op.binary.f32(i32 36, float %7994, float %7997)  ; FMin(a,b)
  %7999 = call float @dx.op.binary.f32(i32 35, float %7994, float %7997)  ; FMax(a,b)
  br label %8000

; <label>:8000                                    ; preds = %7985, %7951
  %8001 = phi float [ %7999, %7985 ], [ -1.000000e+00, %7951 ]
  %8002 = phi float [ %7998, %7985 ], [ -1.000000e+00, %7951 ]
  %8003 = phi i1 [ true, %7985 ], [ false, %7951 ]
  %8004 = and i1 %7971, %8003
  br i1 %8004, label %8005, label %8007

; <label>:8005                                    ; preds = %8000
  %8006 = fcmp fast oeq float %8002, %8001
  br i1 %8006, label %8310, label %8008

; <label>:8007                                    ; preds = %8000
  br i1 %7971, label %8310, label %8008

; <label>:8008                                    ; preds = %8007, %8005
  %8009 = phi float [ %7937, %8007 ], [ %8001, %8005 ]
  %8010 = phi float [ 0.000000e+00, %8007 ], [ %8002, %8005 ]
  %8011 = icmp ne i32 %7959, 0
  %8012 = fmul fast float %8009, %7940
  %8013 = fadd fast float %8012, %7953
  %8014 = fmul fast float %8013, %8009
  %8015 = select i1 %8011, float 0.000000e+00, float %8014
  %8016 = fcmp fast oeq float %7940, 0.000000e+00
  %8017 = fdiv fast float %7958, %7940
  %8018 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8017)  ; FMax(a,b)
  %8019 = select i1 %8016, float %8009, float %8018
  %8020 = call float @dx.op.binary.f32(i32 36, float %8009, float %8019)  ; FMin(a,b)
  %8021 = fcmp fast ogt float %7940, 0.000000e+00
  %8022 = fcmp fast olt float %7958, 0.000000e+00
  br i1 %8021, label %8023, label %8080

; <label>:8023                                    ; preds = %8008
  %8024 = icmp eq i32 %7959, 0
  br i1 %8022, label %8025, label %8069

; <label>:8025                                    ; preds = %8023
  %8026 = select i1 %8024, float %8009, float 0.000000e+00
  %8027 = fsub fast float -0.000000e+00, %8026
  %8028 = call float @dx.op.unary.f32(i32 6, float %8027)  ; FAbs(value)
  %8029 = fmul fast float %8026, %7940
  %8030 = fadd fast float %8029, %7953
  %8031 = fmul fast float %8028, %8030
  %8032 = fsub fast float %8015, %8031
  %8033 = fsub fast float %8009, %8028
  %8034 = select i1 %8024, float %8033, float 0.000000e+00
  %8035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8036 = extractvalue %dx.types.CBufRet.f32 %8035, 0
  %8037 = extractvalue %dx.types.CBufRet.f32 %8035, 1
  %8038 = extractvalue %dx.types.CBufRet.f32 %8035, 2
  %8039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8040 = extractvalue %dx.types.CBufRet.f32 %8039, 0
  %8041 = extractvalue %dx.types.CBufRet.f32 %8039, 1
  %8042 = extractvalue %dx.types.CBufRet.f32 %8039, 2
  %8043 = extractvalue %dx.types.CBufRet.f32 %8039, 3
  %8044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8045 = extractvalue %dx.types.CBufRet.f32 %8044, 3
  %8046 = call float @dx.op.binary.f32(i32 36, float %8032, float %8045)  ; FMin(a,b)
  %8047 = fmul fast float %8043, %8034
  %8048 = call float @dx.op.unary.f32(i32 7, float %8047)  ; Saturate(value)
  %8049 = fsub fast float %8040, %8036
  %8050 = fsub fast float %8041, %8037
  %8051 = fsub fast float %8042, %8038
  %8052 = fmul fast float %8048, %8049
  %8053 = fmul fast float %8048, %8050
  %8054 = fmul fast float %8048, %8051
  %8055 = fadd fast float %8052, %8036
  %8056 = fadd fast float %8053, %8037
  %8057 = fadd fast float %8054, %8038
  %8058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8059 = extractvalue %dx.types.CBufRet.f32 %8058, 0
  %8060 = extractvalue %dx.types.CBufRet.f32 %8058, 1
  %8061 = fadd fast float %8060, %8059
  %8062 = call float @dx.op.unary.f32(i32 7, float %8061)  ; Saturate(value)
  %8063 = extractvalue %dx.types.CBufRet.f32 %8058, 2
  %8064 = extractvalue %dx.types.CBufRet.f32 %8058, 3
  %8065 = fadd fast float %8064, %8063
  %8066 = call float @dx.op.unary.f32(i32 7, float %8065)  ; Saturate(value)
  %8067 = fmul fast float %8062, %8046
  %8068 = fmul fast float %8067, %8066
  br label %8310

; <label>:8069                                    ; preds = %8023
  br i1 %8024, label %8070, label %8091

; <label>:8070                                    ; preds = %8069
  %8071 = call float @dx.op.binary.f32(i32 36, float %8020, float %8010)  ; FMin(a,b)
  %8072 = fsub fast float %8020, %8071
  %8073 = fsub fast float %8072, %8009
  %8074 = call float @dx.op.unary.f32(i32 6, float %8073)  ; FAbs(value)
  %8075 = fadd fast float %8072, %8009
  %8076 = fmul fast float %8075, %7940
  %8077 = fadd fast float %8076, %7953
  %8078 = fmul fast float %8077, %8074
  %8079 = fsub fast float %8015, %8078
  br label %8091

; <label>:8080                                    ; preds = %8008
  br i1 %8022, label %8081, label %8091

; <label>:8081                                    ; preds = %8080
  %8082 = call float @dx.op.binary.f32(i32 35, float %8010, float %8020)  ; FMax(a,b)
  %8083 = icmp eq i32 %7959, 0
  %8084 = select i1 %8083, float %8020, float 0.000000e+00
  %8085 = fsub fast float -0.000000e+00, %8084
  %8086 = call float @dx.op.unary.f32(i32 6, float %8085)  ; FAbs(value)
  %8087 = fmul fast float %8084, %7940
  %8088 = fadd fast float %8087, %7953
  %8089 = fmul fast float %8086, %8088
  %8090 = fsub fast float %8015, %8089
  br label %8091

; <label>:8091                                    ; preds = %8081, %8080, %8070, %8069
  %8092 = phi float [ %8010, %8069 ], [ %8010, %8070 ], [ %8082, %8081 ], [ %8010, %8080 ]
  %8093 = phi float [ 0.000000e+00, %8069 ], [ %8074, %8070 ], [ %8086, %8081 ], [ 0.000000e+00, %8080 ]
  %8094 = phi float [ %8015, %8069 ], [ %8079, %8070 ], [ %8090, %8081 ], [ %8015, %8080 ]
  %8095 = phi float [ %8020, %8069 ], [ %8020, %8070 ], [ %8009, %8081 ], [ %8009, %8080 ]
  %8096 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %8096, align 4, !tbaa !124, !noalias !126
  %8097 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %8097, align 4, !tbaa !124, !noalias !126
  %8098 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %8098, align 4, !tbaa !124, !noalias !126
  %8099 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %8099, align 4, !tbaa !124, !noalias !126
  %8100 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %8100, align 4, !tbaa !124, !noalias !126
  %8101 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %8101, align 4, !tbaa !124, !noalias !126
  %8102 = icmp sgt i32 %7961, 0
  br i1 %8102, label %8103, label %8164

; <label>:8103                                    ; preds = %8091
  br label %8104

; <label>:8104                                    ; preds = %8153, %8103
  %8105 = phi i32 [ %8154, %8153 ], [ 0, %8103 ]
  %8106 = phi i32 [ %8155, %8153 ], [ 0, %8103 ]
  %8107 = add nuw i32 %8106, 171
  %8108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %8107)  ; CBufferLoadLegacy(handle,regIndex)
  %8109 = extractvalue %dx.types.CBufRet.f32 %8108, 0
  %8110 = extractvalue %dx.types.CBufRet.f32 %8108, 1
  %8111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8112 = extractvalue %dx.types.CBufRet.f32 %8111, 0
  %8113 = extractvalue %dx.types.CBufRet.f32 %8111, 1
  %8114 = fsub fast float %8109, %8112
  %8115 = fsub fast float %8110, %8113
  %8116 = extractvalue %dx.types.CBufRet.f32 %8108, 2
  %8117 = fsub fast float -0.000000e+00, %8114
  %8118 = fsub fast float -0.000000e+00, %8115
  %8119 = call float @dx.op.dot2.f32(i32 54, float %7938, float %7939, float %8117, float %8118)  ; Dot2(ax,ay,bx,by)
  %8120 = fmul fast float %8119, 2.000000e+00
  %8121 = call float @dx.op.dot2.f32(i32 54, float %8117, float %8118, float %8117, float %8118)  ; Dot2(ax,ay,bx,by)
  %8122 = fmul fast float %8116, %8116
  %8123 = fsub fast float %8121, %8122
  %8124 = fmul fast float %8120, %8120
  %8125 = fmul fast float %7981, %8123
  %8126 = fsub fast float %8124, %8125
  %8127 = fcmp fast ogt float %8126, 0.000000e+00
  br i1 %8127, label %8128, label %8143

; <label>:8128                                    ; preds = %8104
  %8129 = fcmp fast ogt float %8120, 0.000000e+00
  %8130 = call float @dx.op.unary.f32(i32 24, float %8126)  ; Sqrt(value)
  %8131 = fsub fast float -0.000000e+00, %8130
  %8132 = select i1 %8129, float %8130, float %8131
  %8133 = fadd fast float %8132, %8120
  %8134 = fmul float %8133, -5.000000e-01
  %8135 = fdiv fast float %8134, %7974
  %8136 = call float @dx.op.binary.f32(i32 35, float %8135, float 0.000000e+00)  ; FMax(a,b)
  %8137 = call float @dx.op.binary.f32(i32 36, float %8009, float %8136)  ; FMin(a,b)
  %8138 = fdiv fast float %8123, %8134
  %8139 = call float @dx.op.binary.f32(i32 35, float %8138, float 0.000000e+00)  ; FMax(a,b)
  %8140 = call float @dx.op.binary.f32(i32 36, float %8009, float %8139)  ; FMin(a,b)
  %8141 = call float @dx.op.binary.f32(i32 36, float %8137, float %8140)  ; FMin(a,b)
  %8142 = call float @dx.op.binary.f32(i32 35, float %8137, float %8140)  ; FMax(a,b)
  br label %8143

; <label>:8143                                    ; preds = %8128, %8104
  %8144 = phi float [ %8142, %8128 ], [ -1.000000e+00, %8104 ]
  %8145 = phi float [ %8141, %8128 ], [ -1.000000e+00, %8104 ]
  %8146 = phi i1 [ true, %8128 ], [ false, %8104 ]
  br i1 %8146, label %8147, label %8153

; <label>:8147                                    ; preds = %8143
  %8148 = call float @dx.op.binary.f32(i32 35, float %8092, float %8145)  ; FMax(a,b)
  %8149 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8106
  store float %8148, float* %8149, align 4, !tbaa !124, !noalias !126
  %8150 = call float @dx.op.binary.f32(i32 35, float %8092, float %8144)  ; FMax(a,b)
  %8151 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8106
  store float %8150, float* %8151, align 4, !tbaa !124, !noalias !126
  %8152 = add nsw i32 %8105, 1
  br label %8153

; <label>:8153                                    ; preds = %8147, %8143
  %8154 = phi i32 [ %8152, %8147 ], [ %8105, %8143 ]
  %8155 = add nuw nsw i32 %8106, 1
  %8156 = icmp eq i32 %8155, %7961
  br i1 %8156, label %8157, label %8104

; <label>:8157                                    ; preds = %8153
  %8158 = load float, float* %8098, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %8159 = load float, float* %8097, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  %8160 = load float, float* %8096, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  %8161 = load float, float* %8101, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %8162 = load float, float* %8100, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  %8163 = load float, float* %8099, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  br label %8164

; <label>:8164                                    ; preds = %8157, %8091
  %8165 = phi float [ -1.000000e+00, %8091 ], [ %8163, %8157 ]
  %8166 = phi float [ -1.000000e+00, %8091 ], [ %8162, %8157 ]
  %8167 = phi float [ -1.000000e+00, %8091 ], [ %8161, %8157 ]
  %8168 = phi float [ -1.000000e+00, %8091 ], [ %8160, %8157 ]
  %8169 = phi float [ -1.000000e+00, %8091 ], [ %8159, %8157 ]
  %8170 = phi float [ -1.000000e+00, %8091 ], [ %8158, %8157 ]
  %8171 = phi i32 [ 0, %8091 ], [ %8154, %8157 ]
  %8172 = call float @dx.op.binary.f32(i32 36, float %8169, float %8170)  ; FMin(a,b)
  %8173 = call float @dx.op.binary.f32(i32 36, float %8168, float %8172)  ; FMin(a,b)
  %8174 = call float @dx.op.binary.f32(i32 35, float %8168, float %8169)  ; FMax(a,b)
  %8175 = call float @dx.op.binary.f32(i32 36, float %8174, float %8170)  ; FMin(a,b)
  %8176 = call float @dx.op.binary.f32(i32 36, float %8168, float %8169)  ; FMin(a,b)
  %8177 = call float @dx.op.binary.f32(i32 35, float %8176, float %8175)  ; FMax(a,b)
  %8178 = call float @dx.op.binary.f32(i32 35, float %8169, float %8170)  ; FMax(a,b)
  %8179 = call float @dx.op.binary.f32(i32 35, float %8168, float %8178)  ; FMax(a,b)
  store float %8173, float* %8096, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  store float %8177, float* %8097, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  store float %8179, float* %8098, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %8180 = call float @dx.op.binary.f32(i32 36, float %8166, float %8167)  ; FMin(a,b)
  %8181 = call float @dx.op.binary.f32(i32 36, float %8165, float %8180)  ; FMin(a,b)
  %8182 = call float @dx.op.binary.f32(i32 35, float %8165, float %8166)  ; FMax(a,b)
  %8183 = call float @dx.op.binary.f32(i32 36, float %8182, float %8167)  ; FMin(a,b)
  %8184 = call float @dx.op.binary.f32(i32 36, float %8165, float %8166)  ; FMin(a,b)
  %8185 = call float @dx.op.binary.f32(i32 35, float %8184, float %8183)  ; FMax(a,b)
  %8186 = call float @dx.op.binary.f32(i32 35, float %8166, float %8167)  ; FMax(a,b)
  %8187 = call float @dx.op.binary.f32(i32 35, float %8165, float %8186)  ; FMax(a,b)
  store float %8181, float* %8099, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  store float %8185, float* %8100, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  store float %8187, float* %8101, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %8188 = sub nsw i32 3, %8171
  %8189 = icmp sgt i32 %8188, 2
  br i1 %8189, label %8190, label %8228

; <label>:8190                                    ; preds = %8164
  %8191 = icmp eq i32 %7959, 0
  %8192 = fsub fast float %8009, %8093
  %8193 = select i1 %8191, float %8192, float %8093
  %8194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8195 = extractvalue %dx.types.CBufRet.f32 %8194, 0
  %8196 = extractvalue %dx.types.CBufRet.f32 %8194, 1
  %8197 = extractvalue %dx.types.CBufRet.f32 %8194, 2
  %8198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8199 = extractvalue %dx.types.CBufRet.f32 %8198, 0
  %8200 = extractvalue %dx.types.CBufRet.f32 %8198, 1
  %8201 = extractvalue %dx.types.CBufRet.f32 %8198, 2
  %8202 = extractvalue %dx.types.CBufRet.f32 %8198, 3
  %8203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8204 = extractvalue %dx.types.CBufRet.f32 %8203, 3
  %8205 = call float @dx.op.binary.f32(i32 36, float %8094, float %8204)  ; FMin(a,b)
  %8206 = fmul fast float %8202, %8193
  %8207 = call float @dx.op.unary.f32(i32 7, float %8206)  ; Saturate(value)
  %8208 = fsub fast float %8199, %8195
  %8209 = fsub fast float %8200, %8196
  %8210 = fsub fast float %8201, %8197
  %8211 = fmul fast float %8207, %8208
  %8212 = fmul fast float %8207, %8209
  %8213 = fmul fast float %8207, %8210
  %8214 = fadd fast float %8211, %8195
  %8215 = fadd fast float %8212, %8196
  %8216 = fadd fast float %8213, %8197
  %8217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8218 = extractvalue %dx.types.CBufRet.f32 %8217, 0
  %8219 = extractvalue %dx.types.CBufRet.f32 %8217, 1
  %8220 = fadd fast float %8219, %8218
  %8221 = call float @dx.op.unary.f32(i32 7, float %8220)  ; Saturate(value)
  %8222 = extractvalue %dx.types.CBufRet.f32 %8217, 2
  %8223 = extractvalue %dx.types.CBufRet.f32 %8217, 3
  %8224 = fadd fast float %8223, %8222
  %8225 = call float @dx.op.unary.f32(i32 7, float %8224)  ; Saturate(value)
  %8226 = fmul fast float %8221, %8205
  %8227 = fmul fast float %8226, %8225
  br label %8310

; <label>:8228                                    ; preds = %8164
  %8229 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8188
  %8230 = load float, float* %8229, align 4, !tbaa !124, !noalias !126
  %8231 = fcmp fast olt float %8230, %8095
  %8232 = icmp sgt i32 %8171, 0
  %8233 = and i1 %8232, %8231
  br i1 %8233, label %8234, label %8271

; <label>:8234                                    ; preds = %8228
  br label %8235

; <label>:8235                                    ; preds = %8264, %8234
  %8236 = phi float [ %8265, %8264 ], [ %8093, %8234 ]
  %8237 = phi float [ %8266, %8264 ], [ %8094, %8234 ]
  %8238 = phi float [ %8246, %8264 ], [ %8230, %8234 ]
  %8239 = phi i32 [ %8243, %8264 ], [ %8188, %8234 ]
  %8240 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8239
  %8241 = load float, float* %8240, align 4, !tbaa !124, !noalias !126
  %8242 = icmp slt i32 %8239, 2
  %8243 = add nsw i32 %8239, 1
  %8244 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8243
  %8245 = load float, float* %8244, align 4, !tbaa !124, !noalias !126
  %8246 = select i1 %8242, float %8245, float %8009
  %8247 = call float @dx.op.binary.f32(i32 36, float %8246, float %8241)  ; FMin(a,b)
  %8248 = call float @dx.op.binary.f32(i32 36, float %8095, float %8247)  ; FMin(a,b)
  %8249 = icmp eq i32 %7959, 0
  %8250 = fadd fast float %8248, %8238
  %8251 = fmul fast float %8250, %7940
  %8252 = fadd fast float %8251, %7953
  br i1 %8249, label %8258, label %8253

; <label>:8253                                    ; preds = %8235
  %8254 = fsub fast float %8248, %8238
  %8255 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8254)  ; FMax(a,b)
  %8256 = fmul fast float %8255, %8252
  %8257 = fadd fast float %8256, %8237
  br label %8264

; <label>:8258                                    ; preds = %8235
  %8259 = fsub fast float %8238, %8248
  %8260 = call float @dx.op.unary.f32(i32 6, float %8259)  ; FAbs(value)
  %8261 = fadd fast float %8260, %8236
  %8262 = fmul fast float %8260, %8252
  %8263 = fsub fast float %8237, %8262
  br label %8264

; <label>:8264                                    ; preds = %8258, %8253
  %8265 = phi float [ %8255, %8253 ], [ %8261, %8258 ]
  %8266 = phi float [ %8257, %8253 ], [ %8263, %8258 ]
  %8267 = fcmp fast olt float %8246, %8095
  %8268 = icmp slt i32 %8243, 3
  %8269 = and i1 %8268, %8267
  br i1 %8269, label %8235, label %8270

; <label>:8270                                    ; preds = %8264
  br label %8271

; <label>:8271                                    ; preds = %8270, %8228
  %8272 = phi float [ %8093, %8228 ], [ %8265, %8270 ]
  %8273 = phi float [ %8094, %8228 ], [ %8266, %8270 ]
  %8274 = fsub fast float %8009, %8272
  %8275 = select i1 %8011, float %8272, float %8274
  %8276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8277 = extractvalue %dx.types.CBufRet.f32 %8276, 0
  %8278 = extractvalue %dx.types.CBufRet.f32 %8276, 1
  %8279 = extractvalue %dx.types.CBufRet.f32 %8276, 2
  %8280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8281 = extractvalue %dx.types.CBufRet.f32 %8280, 0
  %8282 = extractvalue %dx.types.CBufRet.f32 %8280, 1
  %8283 = extractvalue %dx.types.CBufRet.f32 %8280, 2
  %8284 = extractvalue %dx.types.CBufRet.f32 %8280, 3
  %8285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8286 = extractvalue %dx.types.CBufRet.f32 %8285, 3
  %8287 = call float @dx.op.binary.f32(i32 36, float %8273, float %8286)  ; FMin(a,b)
  %8288 = fmul fast float %8284, %8275
  %8289 = call float @dx.op.unary.f32(i32 7, float %8288)  ; Saturate(value)
  %8290 = fsub fast float %8281, %8277
  %8291 = fsub fast float %8282, %8278
  %8292 = fsub fast float %8283, %8279
  %8293 = fmul fast float %8289, %8290
  %8294 = fmul fast float %8289, %8291
  %8295 = fmul fast float %8289, %8292
  %8296 = fadd fast float %8293, %8277
  %8297 = fadd fast float %8294, %8278
  %8298 = fadd fast float %8295, %8279
  %8299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8300 = extractvalue %dx.types.CBufRet.f32 %8299, 0
  %8301 = extractvalue %dx.types.CBufRet.f32 %8299, 1
  %8302 = fadd fast float %8301, %8300
  %8303 = call float @dx.op.unary.f32(i32 7, float %8302)  ; Saturate(value)
  %8304 = extractvalue %dx.types.CBufRet.f32 %8299, 2
  %8305 = extractvalue %dx.types.CBufRet.f32 %8299, 3
  %8306 = fadd fast float %8305, %8304
  %8307 = call float @dx.op.unary.f32(i32 7, float %8306)  ; Saturate(value)
  %8308 = fmul fast float %8303, %8287
  %8309 = fmul fast float %8308, %8307
  br label %8310

; <label>:8310                                    ; preds = %8271, %8190, %8025, %8007, %8005
  %8311 = phi float [ %8034, %8025 ], [ %8193, %8190 ], [ %8275, %8271 ], [ 0.000000e+00, %8005 ], [ 0.000000e+00, %8007 ]
  %8312 = phi float [ %8068, %8025 ], [ %8227, %8190 ], [ %8309, %8271 ], [ 0.000000e+00, %8005 ], [ 0.000000e+00, %8007 ]
  %8313 = phi float [ %8055, %8025 ], [ %8214, %8190 ], [ %8296, %8271 ], [ 0.000000e+00, %8005 ], [ 0.000000e+00, %8007 ]
  %8314 = phi float [ %8056, %8025 ], [ %8215, %8190 ], [ %8297, %8271 ], [ 0.000000e+00, %8005 ], [ 0.000000e+00, %8007 ]
  %8315 = phi float [ %8057, %8025 ], [ %8216, %8190 ], [ %8298, %8271 ], [ 0.000000e+00, %8005 ], [ 0.000000e+00, %8007 ]
  %8316 = fmul fast float %7948, %8312
  %8317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8318 = extractvalue %dx.types.CBufRet.f32 %8317, 2
  %8319 = fsub fast float %7955, %8318
  %8320 = fcmp fast olt float %8316, -2.000000e+01
  %8321 = call float @dx.op.unary.f32(i32 21, float %8316)  ; Exp(value)
  %8322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8323 = extractvalue %dx.types.CBufRet.f32 %8322, 2
  %8324 = extractvalue %dx.types.CBufRet.f32 %8322, 3
  %8325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8326 = extractvalue %dx.types.CBufRet.f32 %8325, 2
  %8327 = fmul fast float %8324, %8319
  %8328 = call float @dx.op.unary.f32(i32 7, float %8327)  ; Saturate(value)
  %8329 = fsub fast float 1.000000e+00, %8328
  %8330 = fmul fast float %7940, 5.000000e-01
  %8331 = fadd fast float %8330, 5.000000e-01
  %8332 = call float @dx.op.unary.f32(i32 7, float %8331)  ; Saturate(value)
  %8333 = fsub fast float 1.000000e+00, %8332
  %8334 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8329)  ; FMax(a,b)
  %8335 = fdiv fast float %8333, %8334
  %8336 = fsub fast float %8319, %7897
  %8337 = call float @dx.op.unary.f32(i32 6, float %8336)  ; FAbs(value)
  %8338 = fmul fast float %8337, %8323
  %8339 = call float @dx.op.unary.f32(i32 7, float %8335)  ; Saturate(value)
  %8340 = fsub fast float 1.000000e+00, %8338
  %8341 = fmul fast float %8340, %8339
  %8342 = fadd fast float %8341, %8338
  %8343 = fmul fast float %8326, %8319
  %8344 = call float @dx.op.unary.f32(i32 7, float %8343)  ; Saturate(value)
  %8345 = fsub fast float 1.000000e+00, %8342
  %8346 = fmul fast float %8345, %8344
  %8347 = fadd fast float %8346, %8342
  %8348 = call float @dx.op.unary.f32(i32 7, float %8347)  ; Saturate(value)
  %8349 = fadd fast float %8321, -1.000000e+00
  %8350 = select i1 %8320, float -1.000000e+00, float %8349
  %8351 = fmul fast float %8348, %8350
  %8352 = fadd fast float %8351, 1.000000e+00
  %8353 = fsub fast float -0.000000e+00, %8351
  %8354 = fmul fast float %8313, %8353
  %8355 = fmul fast float %8314, %8353
  %8356 = fmul fast float %8315, %8353
  br label %8357

; <label>:8357                                    ; preds = %8310, %7906
  %8358 = phi float [ %8311, %8310 ], [ 0.000000e+00, %7906 ]
  %8359 = phi float [ %8352, %8310 ], [ 1.000000e+00, %7906 ]
  %8360 = phi float [ %8354, %8310 ], [ 0.000000e+00, %7906 ]
  %8361 = phi float [ %8355, %8310 ], [ 0.000000e+00, %7906 ]
  %8362 = phi float [ %8356, %8310 ], [ 0.000000e+00, %7906 ]
  %8363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8364 = extractvalue %dx.types.CBufRet.f32 %8363, 1
  %8365 = fsub fast float 1.000000e+00, %8359
  %8366 = fmul fast float %8365, %7941
  %8367 = fmul fast float %8366, %8364
  %8368 = fsub fast float %7941, %8367
  br i1 %7934, label %8369, label %8398, !dx.controlflow.hints !162

; <label>:8369                                    ; preds = %8357
  %8370 = fmul fast float %7942, %7931
  %8371 = fadd fast float %8370, %7932
  %8372 = call float @dx.op.unary.f32(i32 7, float %8371)  ; Saturate(value)
  %8373 = fmul fast float %7913, %8368
  %8374 = fsub fast float -0.000000e+00, %8373
  %8375 = fmul fast float %7914, %8368
  %8376 = fsub fast float -0.000000e+00, %8375
  %8377 = call float @dx.op.unary.f32(i32 21, float %8374)  ; Exp(value)
  %8378 = call float @dx.op.unary.f32(i32 21, float %8376)  ; Exp(value)
  %8379 = call float @dx.op.binary.f32(i32 35, float %7921, float %8377)  ; FMax(a,b)
  %8380 = call float @dx.op.binary.f32(i32 35, float %7921, float %8378)  ; FMax(a,b)
  %8381 = fsub fast float %8380, %8379
  %8382 = fmul fast float %8381, %8372
  %8383 = fadd fast float %8382, %8379
  %8384 = call float @dx.op.unary.f32(i32 7, float %8383)  ; Saturate(value)
  %8385 = fsub fast float %7918, %7923
  %8386 = fsub fast float %7919, %7924
  %8387 = fsub fast float %7920, %7925
  %8388 = fmul fast float %8372, %8385
  %8389 = fmul fast float %8372, %8386
  %8390 = fmul fast float %8372, %8387
  %8391 = fadd fast float %8388, %7923
  %8392 = fadd fast float %8389, %7924
  %8393 = fadd fast float %8390, %7925
  %8394 = fsub fast float 1.000000e+00, %8384
  %8395 = fmul fast float %8394, %8391
  %8396 = fmul fast float %8394, %8392
  %8397 = fmul fast float %8394, %8393
  br label %8457

; <label>:8398                                    ; preds = %8357
  %8399 = fmul fast float %8368, %7930
  %8400 = call float @dx.op.unary.f32(i32 7, float %8399)  ; Saturate(value)
  %8401 = fsub fast float 2.000000e+00, %8400
  %8402 = fmul fast float %8400, 9.921875e-01
  %8403 = fmul fast float %8402, %8401
  %8404 = fadd fast float %8403, 3.906250e-03
  %8405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %8404, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8406 = extractvalue %dx.types.ResRet.f32 %8405, 0
  %8407 = fsub fast float %8400, %8406
  %8408 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8407)  ; FMax(a,b)
  %8409 = fmul fast float %7916, %7897
  %8410 = call float @dx.op.unary.f32(i32 6, float %8409)  ; FAbs(value)
  %8411 = fcmp fast ogt float %8410, 0x3EB0C6F7A0000000
  br i1 %8411, label %8412, label %8418, !dx.controlflow.hints !163

; <label>:8412                                    ; preds = %8398
  %8413 = fmul fast float %8409, 0xBFF7154760000000
  %8414 = call float @dx.op.unary.f32(i32 21, float %8413)  ; Exp(value)
  %8415 = fsub fast float 1.000000e+00, %8414
  %8416 = fdiv fast float %8415, %8409
  %8417 = fmul fast float %8416, %7926
  br label %8418

; <label>:8418                                    ; preds = %8412, %8398
  %8419 = phi float [ %8417, %8412 ], [ %7926, %8398 ]
  %8420 = fadd fast float %8419, %7928
  %8421 = fmul fast float %8420, %8408
  %8422 = fmul fast float %7913, %8421
  %8423 = fsub fast float -0.000000e+00, %8422
  %8424 = fmul fast float %7914, %8421
  %8425 = fsub fast float -0.000000e+00, %8424
  %8426 = fmul fast float %7915, %8421
  %8427 = fsub fast float -0.000000e+00, %8426
  %8428 = call float @dx.op.unary.f32(i32 21, float %8423)  ; Exp(value)
  %8429 = call float @dx.op.unary.f32(i32 21, float %8425)  ; Exp(value)
  %8430 = call float @dx.op.unary.f32(i32 21, float %8427)  ; Exp(value)
  %8431 = fmul fast float %7942, %7942
  %8432 = fadd fast float %8431, 1.000000e+00
  %8433 = fmul fast float %8432, 0x3FAE8EC8A0000000
  %8434 = fmul fast float %8433, %7923
  %8435 = fmul fast float %8433, %7924
  %8436 = fmul fast float %8433, %7925
  %8437 = fmul fast float %7942, %7921
  %8438 = fsub fast float 1.000000e+00, %8437
  %8439 = fmul fast float %7921, %7921
  %8440 = fsub fast float 1.000000e+00, %8439
  %8441 = fmul fast float %8440, 0x3FB45F3060000000
  %8442 = fmul fast float %8438, %8438
  %8443 = fdiv fast float 1.000000e+00, %8442
  %8444 = fmul fast float %8441, %8443
  %8445 = fmul fast float %8444, %7918
  %8446 = fmul fast float %8444, %7919
  %8447 = fmul fast float %8444, %7920
  %8448 = fadd fast float %8445, %8434
  %8449 = fadd fast float %8446, %8435
  %8450 = fadd fast float %8447, %8436
  %8451 = fsub fast float 1.000000e+00, %8428
  %8452 = fsub fast float 1.000000e+00, %8429
  %8453 = fsub fast float 1.000000e+00, %8430
  %8454 = fmul fast float %8448, %8451
  %8455 = fmul fast float %8449, %8452
  %8456 = fmul fast float %8450, %8453
  br label %8457

; <label>:8457                                    ; preds = %8418, %8369
  %8458 = phi float [ %8395, %8369 ], [ %8454, %8418 ]
  %8459 = phi float [ %8396, %8369 ], [ %8455, %8418 ]
  %8460 = phi float [ %8397, %8369 ], [ %8456, %8418 ]
  %8461 = phi float [ %8384, %8369 ], [ %8428, %8418 ]
  %8462 = phi float [ %8384, %8369 ], [ %8429, %8418 ]
  %8463 = phi float [ %8384, %8369 ], [ %8430, %8418 ]
  br i1 %7950, label %8464, label %8662, !dx.controlflow.hints !164

; <label>:8464                                    ; preds = %8457
  %8465 = extractvalue %dx.types.CBufRet.f32 %8363, 0
  %8466 = fmul fast float %8465, %8365
  %8467 = fsub fast float %8360, %8458
  %8468 = fsub fast float %8361, %8459
  %8469 = fsub fast float %8362, %8460
  %8470 = fmul fast float %8466, %8467
  %8471 = fmul fast float %8466, %8468
  %8472 = fmul fast float %8466, %8469
  %8473 = fadd fast float %8470, %8458
  %8474 = fadd fast float %8471, %8459
  %8475 = fadd fast float %8472, %8460
  %8476 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8461)  ; FMax(a,b)
  %8477 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8462)  ; FMax(a,b)
  %8478 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8463)  ; FMax(a,b)
  %8479 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8359)  ; FMax(a,b)
  %8480 = call float @dx.op.binary.f32(i32 35, float %8358, float %8368)  ; FMax(a,b)
  %8481 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8480)  ; FMax(a,b)
  %8482 = fdiv fast float %8358, %8481
  %8483 = call float @dx.op.unary.f32(i32 7, float %8482)  ; Saturate(value)
  %8484 = fdiv fast float %8368, %8481
  %8485 = call float @dx.op.unary.f32(i32 7, float %8484)  ; Saturate(value)
  %8486 = fcmp fast une float %8479, 1.000000e+00
  br i1 %8486, label %8487, label %8500, !dx.controlflow.hints !165

; <label>:8487                                    ; preds = %8464
  %8488 = call float @dx.op.unary.f32(i32 23, float %8479)  ; Log(value)
  %8489 = fmul fast float %8488, 0x3FE62E4300000000
  %8490 = fmul fast float %8360, %8489
  %8491 = fsub fast float -0.000000e+00, %8490
  %8492 = fmul fast float %8361, %8489
  %8493 = fsub fast float -0.000000e+00, %8492
  %8494 = fmul fast float %8362, %8489
  %8495 = fsub fast float -0.000000e+00, %8494
  %8496 = fsub fast float 1.000000e+00, %8479
  %8497 = fdiv fast float %8491, %8496
  %8498 = fdiv fast float %8493, %8496
  %8499 = fdiv fast float %8495, %8496
  br label %8500

; <label>:8500                                    ; preds = %8487, %8464
  %8501 = phi float [ %8497, %8487 ], [ %8360, %8464 ]
  %8502 = phi float [ %8498, %8487 ], [ %8361, %8464 ]
  %8503 = phi float [ %8499, %8487 ], [ %8362, %8464 ]
  %8504 = phi float [ %8489, %8487 ], [ 0.000000e+00, %8464 ]
  %8505 = fcmp fast une float %8476, 1.000000e+00
  br i1 %8505, label %8506, label %8513, !dx.controlflow.hints !166

; <label>:8506                                    ; preds = %8500
  %8507 = call float @dx.op.unary.f32(i32 23, float %8476)  ; Log(value)
  %8508 = fmul fast float %8507, 0x3FE62E4300000000
  %8509 = fmul fast float %8473, %8508
  %8510 = fsub fast float -0.000000e+00, %8509
  %8511 = fsub fast float 1.000000e+00, %8476
  %8512 = fdiv fast float %8510, %8511
  br label %8513

; <label>:8513                                    ; preds = %8506, %8500
  %8514 = phi float [ %8512, %8506 ], [ %8473, %8500 ]
  %8515 = phi float [ %8508, %8506 ], [ 0.000000e+00, %8500 ]
  %8516 = fcmp fast une float %8477, 1.000000e+00
  br i1 %8516, label %8517, label %8524, !dx.controlflow.hints !166

; <label>:8517                                    ; preds = %8513
  %8518 = call float @dx.op.unary.f32(i32 23, float %8477)  ; Log(value)
  %8519 = fmul fast float %8518, 0x3FE62E4300000000
  %8520 = fmul fast float %8474, %8519
  %8521 = fsub fast float -0.000000e+00, %8520
  %8522 = fsub fast float 1.000000e+00, %8477
  %8523 = fdiv fast float %8521, %8522
  br label %8524

; <label>:8524                                    ; preds = %8517, %8513
  %8525 = phi float [ %8523, %8517 ], [ %8474, %8513 ]
  %8526 = phi float [ %8519, %8517 ], [ 0.000000e+00, %8513 ]
  %8527 = fcmp fast une float %8478, 1.000000e+00
  br i1 %8527, label %8528, label %8535, !dx.controlflow.hints !166

; <label>:8528                                    ; preds = %8524
  %8529 = call float @dx.op.unary.f32(i32 23, float %8478)  ; Log(value)
  %8530 = fmul fast float %8529, 0x3FE62E4300000000
  %8531 = fmul fast float %8475, %8530
  %8532 = fsub fast float -0.000000e+00, %8531
  %8533 = fsub fast float 1.000000e+00, %8478
  %8534 = fdiv fast float %8532, %8533
  br label %8535

; <label>:8535                                    ; preds = %8528, %8524
  %8536 = phi float [ %8534, %8528 ], [ %8475, %8524 ]
  %8537 = phi float [ %8530, %8528 ], [ 0.000000e+00, %8524 ]
  %8538 = fmul fast float %8501, %8485
  %8539 = fmul fast float %8502, %8485
  %8540 = fmul fast float %8503, %8485
  %8541 = fmul fast float %8504, %8485
  %8542 = fmul fast float %8514, %8483
  %8543 = fmul fast float %8525, %8483
  %8544 = fmul fast float %8536, %8483
  %8545 = fmul fast float %8515, %8483
  %8546 = fmul fast float %8526, %8483
  %8547 = fmul fast float %8537, %8483
  %8548 = fadd fast float %8542, %8538
  %8549 = fadd fast float %8543, %8539
  %8550 = fadd fast float %8544, %8540
  %8551 = fadd fast float %8545, %8541
  %8552 = fadd fast float %8546, %8541
  %8553 = fadd fast float %8547, %8541
  %8554 = fcmp fast une float %8551, 0.000000e+00
  br i1 %8554, label %8555, label %8562, !dx.controlflow.hints !167

; <label>:8555                                    ; preds = %8535
  %8556 = fmul fast float %8551, 0x3FF7154760000000
  %8557 = call float @dx.op.unary.f32(i32 21, float %8556)  ; Exp(value)
  %8558 = fsub fast float 1.000000e+00, %8557
  %8559 = fmul fast float %8548, %8558
  %8560 = fsub fast float -0.000000e+00, %8559
  %8561 = fdiv fast float %8560, %8551
  br label %8562

; <label>:8562                                    ; preds = %8555, %8535
  %8563 = phi float [ %8557, %8555 ], [ 1.000000e+00, %8535 ]
  %8564 = phi float [ %8561, %8555 ], [ %8548, %8535 ]
  %8565 = fcmp fast une float %8552, 0.000000e+00
  br i1 %8565, label %8566, label %8573, !dx.controlflow.hints !167

; <label>:8566                                    ; preds = %8562
  %8567 = fmul fast float %8552, 0x3FF7154760000000
  %8568 = call float @dx.op.unary.f32(i32 21, float %8567)  ; Exp(value)
  %8569 = fsub fast float 1.000000e+00, %8568
  %8570 = fmul fast float %8549, %8569
  %8571 = fsub fast float -0.000000e+00, %8570
  %8572 = fdiv fast float %8571, %8552
  br label %8573

; <label>:8573                                    ; preds = %8566, %8562
  %8574 = phi float [ %8568, %8566 ], [ 1.000000e+00, %8562 ]
  %8575 = phi float [ %8572, %8566 ], [ %8549, %8562 ]
  %8576 = fcmp fast une float %8553, 0.000000e+00
  br i1 %8576, label %8577, label %8584, !dx.controlflow.hints !167

; <label>:8577                                    ; preds = %8573
  %8578 = fmul fast float %8553, 0x3FF7154760000000
  %8579 = call float @dx.op.unary.f32(i32 21, float %8578)  ; Exp(value)
  %8580 = fsub fast float 1.000000e+00, %8579
  %8581 = fmul fast float %8550, %8580
  %8582 = fsub fast float -0.000000e+00, %8581
  %8583 = fdiv fast float %8582, %8553
  br label %8584

; <label>:8584                                    ; preds = %8577, %8573
  %8585 = phi float [ %8579, %8577 ], [ 1.000000e+00, %8573 ]
  %8586 = phi float [ %8583, %8577 ], [ %8550, %8573 ]
  %8587 = fcmp fast ogt float %8483, %8485
  br i1 %8587, label %8588, label %8608

; <label>:8588                                    ; preds = %8584
  %8589 = fsub fast float 1.000000e+00, %8485
  %8590 = fmul fast float %8501, %8589
  %8591 = fmul fast float %8502, %8589
  %8592 = fmul fast float %8503, %8589
  %8593 = fmul fast float %8504, %8589
  %8594 = fcmp fast une float %8593, 0.000000e+00
  br i1 %8594, label %8595, label %8646, !dx.controlflow.hints !168

; <label>:8595                                    ; preds = %8588
  %8596 = fmul fast float %8593, 0x3FF7154760000000
  %8597 = call float @dx.op.unary.f32(i32 21, float %8596)  ; Exp(value)
  %8598 = fsub fast float 1.000000e+00, %8597
  %8599 = fmul fast float %8590, %8598
  %8600 = fsub fast float -0.000000e+00, %8599
  %8601 = fmul fast float %8591, %8598
  %8602 = fsub fast float -0.000000e+00, %8601
  %8603 = fmul fast float %8592, %8598
  %8604 = fsub fast float -0.000000e+00, %8603
  %8605 = fdiv fast float %8600, %8593
  %8606 = fdiv fast float %8602, %8593
  %8607 = fdiv fast float %8604, %8593
  br label %8646

; <label>:8608                                    ; preds = %8584
  %8609 = fsub fast float 1.000000e+00, %8483
  %8610 = fmul fast float %8514, %8609
  %8611 = fmul fast float %8525, %8609
  %8612 = fmul fast float %8536, %8609
  %8613 = fmul fast float %8515, %8609
  %8614 = fmul fast float %8526, %8609
  %8615 = fmul fast float %8537, %8609
  %8616 = fcmp fast une float %8613, 0.000000e+00
  br i1 %8616, label %8617, label %8624, !dx.controlflow.hints !167

; <label>:8617                                    ; preds = %8608
  %8618 = fmul fast float %8613, 0x3FF7154760000000
  %8619 = call float @dx.op.unary.f32(i32 21, float %8618)  ; Exp(value)
  %8620 = fsub fast float 1.000000e+00, %8619
  %8621 = fmul fast float %8610, %8620
  %8622 = fsub fast float -0.000000e+00, %8621
  %8623 = fdiv fast float %8622, %8613
  br label %8624

; <label>:8624                                    ; preds = %8617, %8608
  %8625 = phi float [ %8623, %8617 ], [ %8610, %8608 ]
  %8626 = phi float [ %8619, %8617 ], [ 1.000000e+00, %8608 ]
  %8627 = fcmp fast une float %8614, 0.000000e+00
  br i1 %8627, label %8628, label %8635, !dx.controlflow.hints !167

; <label>:8628                                    ; preds = %8624
  %8629 = fmul fast float %8614, 0x3FF7154760000000
  %8630 = call float @dx.op.unary.f32(i32 21, float %8629)  ; Exp(value)
  %8631 = fsub fast float 1.000000e+00, %8630
  %8632 = fmul fast float %8611, %8631
  %8633 = fsub fast float -0.000000e+00, %8632
  %8634 = fdiv fast float %8633, %8614
  br label %8635

; <label>:8635                                    ; preds = %8628, %8624
  %8636 = phi float [ %8634, %8628 ], [ %8611, %8624 ]
  %8637 = phi float [ %8630, %8628 ], [ 1.000000e+00, %8624 ]
  %8638 = fcmp fast une float %8615, 0.000000e+00
  br i1 %8638, label %8639, label %8646, !dx.controlflow.hints !167

; <label>:8639                                    ; preds = %8635
  %8640 = fmul fast float %8615, 0x3FF7154760000000
  %8641 = call float @dx.op.unary.f32(i32 21, float %8640)  ; Exp(value)
  %8642 = fsub fast float 1.000000e+00, %8641
  %8643 = fmul fast float %8612, %8642
  %8644 = fsub fast float -0.000000e+00, %8643
  %8645 = fdiv fast float %8644, %8615
  br label %8646

; <label>:8646                                    ; preds = %8639, %8635, %8595, %8588
  %8647 = phi float [ %8645, %8639 ], [ %8607, %8595 ], [ %8592, %8588 ], [ %8612, %8635 ]
  %8648 = phi float [ %8636, %8639 ], [ %8606, %8595 ], [ %8591, %8588 ], [ %8636, %8635 ]
  %8649 = phi float [ %8625, %8639 ], [ %8605, %8595 ], [ %8590, %8588 ], [ %8625, %8635 ]
  %8650 = phi float [ %8641, %8639 ], [ %8597, %8595 ], [ 1.000000e+00, %8588 ], [ 1.000000e+00, %8635 ]
  %8651 = phi float [ %8637, %8639 ], [ %8597, %8595 ], [ 1.000000e+00, %8588 ], [ %8637, %8635 ]
  %8652 = phi float [ %8626, %8639 ], [ %8597, %8595 ], [ 1.000000e+00, %8588 ], [ %8626, %8635 ]
  %8653 = fmul fast float %8652, %8564
  %8654 = fmul fast float %8651, %8575
  %8655 = fmul fast float %8650, %8586
  %8656 = fadd fast float %8653, %8649
  %8657 = fadd fast float %8654, %8648
  %8658 = fadd fast float %8655, %8647
  %8659 = fmul fast float %8652, %8563
  %8660 = fmul fast float %8651, %8574
  %8661 = fmul fast float %8650, %8585
  br label %8662

; <label>:8662                                    ; preds = %8646, %8457
  %8663 = phi float [ %8661, %8646 ], [ %8463, %8457 ]
  %8664 = phi float [ %8660, %8646 ], [ %8462, %8457 ]
  %8665 = phi float [ %8659, %8646 ], [ %8461, %8457 ]
  %8666 = phi float [ %8658, %8646 ], [ %8460, %8457 ]
  %8667 = phi float [ %8657, %8646 ], [ %8459, %8457 ]
  %8668 = phi float [ %8656, %8646 ], [ %8458, %8457 ]
  %8669 = fmul fast float %8668, %7614
  %8670 = fmul fast float %8667, %7614
  %8671 = fmul fast float %8666, %7614
  %8672 = fmul fast float %8665, %7905
  %8673 = call float @dx.op.dot3.f32(i32 55, float %8665, float %8664, float %8663, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8674 = call float @dx.op.dot3.f32(i32 55, float %8669, float %8670, float %8671, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8675 = select i1 %250, float %8673, float %8665
  %8676 = select i1 %250, float %8673, float %8664
  %8677 = select i1 %250, float 1.000000e+00, float %8663
  %8678 = select i1 %250, float %8674, float %8669
  %8679 = select i1 %250, float 0.000000e+00, float %8670
  %8680 = select i1 %250, float 0.000000e+00, float %8671
  %8681 = fmul fast float %8675, %7899
  %8682 = fmul fast float %8676, %7900
  %8683 = fmul fast float %8677, %7901
  %8684 = fadd fast float %8681, %8678
  %8685 = fadd fast float %8682, %8679
  %8686 = fadd fast float %8680, %8683
  %8687 = fmul fast float %8675, %7902
  %8688 = fmul fast float %8676, %7903
  %8689 = fmul fast float %8677, %7904
  %8690 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8691 = extractvalue %dx.types.CBufRet.i32 %8690, 0
  %8692 = icmp eq i32 %8691, 0
  br i1 %8692, label %9060, label %8693, !dx.controlflow.hints !169

; <label>:8693                                    ; preds = %8662
  %8694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8695 = extractvalue %dx.types.CBufRet.f32 %8694, 2
  %8696 = extractvalue %dx.types.CBufRet.f32 %8694, 3
  %8697 = fmul fast float %8695, %104
  %8698 = fmul fast float %8696, %105
  %8699 = fmul fast float %8697, 2.000000e+00
  %8700 = fmul fast float %8698, 2.000000e+00
  %8701 = fsub fast float 1.000000e+00, %8699
  %8702 = fsub fast float 1.000000e+00, %8700
  %8703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8704 = extractvalue %dx.types.CBufRet.f32 %8703, 0
  %8705 = extractvalue %dx.types.CBufRet.f32 %8703, 1
  %8706 = extractvalue %dx.types.CBufRet.f32 %8703, 2
  %8707 = fmul fast float %8701, %8704
  %8708 = fmul fast float %8701, %8705
  %8709 = fmul fast float %8701, %8706
  %8710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8711 = extractvalue %dx.types.CBufRet.f32 %8710, 0
  %8712 = extractvalue %dx.types.CBufRet.f32 %8710, 1
  %8713 = extractvalue %dx.types.CBufRet.f32 %8710, 2
  %8714 = fmul fast float %8702, %8711
  %8715 = fmul fast float %8702, %8712
  %8716 = fmul fast float %8702, %8713
  %8717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8718 = extractvalue %dx.types.CBufRet.f32 %8717, 0
  %8719 = extractvalue %dx.types.CBufRet.f32 %8717, 1
  %8720 = extractvalue %dx.types.CBufRet.f32 %8717, 2
  %8721 = fadd fast float %8714, %8718
  %8722 = fadd fast float %8721, %8707
  %8723 = fadd fast float %8715, %8719
  %8724 = fadd fast float %8723, %8708
  %8725 = fadd fast float %8716, %8720
  %8726 = fadd fast float %8725, %8709
  %8727 = fmul fast float %8722, %7898
  %8728 = fmul fast float %8724, %7898
  %8729 = fmul fast float %8726, %7898
  %8730 = fmul fast float %8727, %8727
  %8731 = fmul fast float %8728, %8728
  %8732 = fadd fast float %8730, %8731
  %8733 = fmul fast float %8729, %8729
  %8734 = fadd fast float %8732, %8733
  %8735 = call float @dx.op.unary.f32(i32 24, float %8734)  ; Sqrt(value)
  %8736 = extractvalue %dx.types.CBufRet.f32 %7625, 0
  %8737 = fsub fast float %8735, %8736
  %8738 = extractvalue %dx.types.CBufRet.f32 %7625, 2
  %8739 = fmul fast float %8737, %8738
  %8740 = call float @dx.op.unary.f32(i32 7, float %8739)  ; Saturate(value)
  %8741 = fadd fast float %8740, -5.000000e-01
  %8742 = fmul fast float %8741, 2.000000e+00
  %8743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8744 = extractvalue %dx.types.CBufRet.f32 %8743, 2
  %8745 = call float @dx.op.binary.f32(i32 36, float %8744, float %8742)  ; FMin(a,b)
  %8746 = fsub fast float -0.000000e+00, %8744
  %8747 = fcmp fast ogt float %8745, %8746
  br i1 %8747, label %8748, label %9060, !dx.controlflow.hints !170

; <label>:8748                                    ; preds = %8693
  %8749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8750 = extractvalue %dx.types.CBufRet.f32 %8749, 3
  %8751 = fcmp fast ogt float %8750, 0.000000e+00
  br i1 %8751, label %8752, label %8827, !dx.controlflow.hints !171

; <label>:8752                                    ; preds = %8748
  %8753 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8754 = extractvalue %dx.types.Dimensions %8753, 0
  %8755 = sitofp i32 %8754 to float
  %8756 = extractvalue %dx.types.Dimensions %8753, 1
  %8757 = sitofp i32 %8756 to float
  %8758 = fmul fast float %8697, %8755
  %8759 = fmul fast float %8698, %8757
  %8760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8761 = extractvalue %dx.types.CBufRet.f32 %8760, 1
  %8762 = fsub fast float -0.000000e+00, %8761
  %8763 = fptoui float %8762 to i32
  %8764 = fptoui float %8758 to i32
  %8765 = fptoui float %8759 to i32
  %8766 = and i32 %8763, 31
  %8767 = lshr i32 %8764, %8766
  %8768 = lshr i32 %8765, %8766
  %8769 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8763, i32 %8767, i32 %8768, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8770 = extractvalue %dx.types.ResRet.f32 %8769, 0
  %8771 = fcmp fast olt float %8770, -1.000000e+00
  %8772 = fcmp fast ogt float %8770, -1.000000e+00
  %8773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8774 = extractvalue %dx.types.CBufRet.f32 %8773, 1
  %8775 = select i1 %8772, float %8774, float 1.000000e+00
  %8776 = fadd fast float %8770, 1.000000e+00
  %8777 = fmul fast float %8775, %8776
  %8778 = call float @dx.op.unary.f32(i32 6, float %8777)  ; FAbs(value)
  %8779 = extractvalue %dx.types.CBufRet.f32 %8773, 3
  %8780 = fcmp fast oge float %8778, %8779
  %8781 = select i1 %8780, float 0x4197782600000000, float %8778
  %8782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8783 = extractvalue %dx.types.CBufRet.f32 %8782, 0
  %8784 = extractvalue %dx.types.CBufRet.f32 %8782, 1
  %8785 = extractvalue %dx.types.CBufRet.f32 %8782, 2
  %8786 = select i1 %8771, float %8783, float %8704
  %8787 = select i1 %8771, float %8784, float %8705
  %8788 = select i1 %8771, float %8785, float %8706
  %8789 = fmul fast float %8786, %8701
  %8790 = fmul fast float %8787, %8701
  %8791 = fmul fast float %8788, %8701
  %8792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8793 = extractvalue %dx.types.CBufRet.f32 %8792, 0
  %8794 = extractvalue %dx.types.CBufRet.f32 %8792, 1
  %8795 = extractvalue %dx.types.CBufRet.f32 %8792, 2
  %8796 = select i1 %8771, float %8793, float %8711
  %8797 = select i1 %8771, float %8794, float %8712
  %8798 = select i1 %8771, float %8795, float %8713
  %8799 = fmul fast float %8796, %8702
  %8800 = fmul fast float %8797, %8702
  %8801 = fmul fast float %8798, %8702
  %8802 = fadd fast float %8799, %8789
  %8803 = fadd fast float %8800, %8790
  %8804 = fadd fast float %8801, %8791
  %8805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8806 = extractvalue %dx.types.CBufRet.f32 %8805, 0
  %8807 = extractvalue %dx.types.CBufRet.f32 %8805, 1
  %8808 = extractvalue %dx.types.CBufRet.f32 %8805, 2
  %8809 = select i1 %8771, float %8806, float %8718
  %8810 = select i1 %8771, float %8807, float %8719
  %8811 = select i1 %8771, float %8808, float %8720
  %8812 = fadd fast float %8802, %8809
  %8813 = fadd fast float %8803, %8810
  %8814 = fadd fast float %8804, %8811
  %8815 = fmul fast float %8812, %8781
  %8816 = fmul fast float %8813, %8781
  %8817 = fmul fast float %8814, %8781
  %8818 = fmul fast float %8815, %8815
  %8819 = fmul fast float %8816, %8816
  %8820 = fadd fast float %8818, %8819
  %8821 = fmul fast float %8817, %8817
  %8822 = fadd fast float %8820, %8821
  %8823 = call float @dx.op.unary.f32(i32 24, float %8822)  ; Sqrt(value)
  %8824 = fsub fast float %8823, %8736
  %8825 = fmul fast float %8824, %8738
  %8826 = call float @dx.op.unary.f32(i32 7, float %8825)  ; Saturate(value)
  br label %8827

; <label>:8827                                    ; preds = %8752, %8748
  %8828 = phi float [ %8826, %8752 ], [ 1.000000e+00, %8748 ]
  %8829 = fmul fast float %8745, 5.000000e-01
  %8830 = fadd fast float %8829, 5.000000e-01
  %8831 = call float @dx.op.unary.f32(i32 22, float %8830)  ; Frc(value)
  %8832 = call float @dx.op.unary.f32(i32 27, float %8831)  ; Round_ni(value)
  %8833 = call float @dx.op.unary.f32(i32 22, float %8831)  ; Frc(value)
  %8834 = fmul fast float %8833, 2.000000e+00
  %8835 = fadd fast float %8834, -1.000000e+00
  %8836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8697, float %8698, float %8832, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8837 = extractvalue %dx.types.ResRet.f32 %8836, 0
  %8838 = extractvalue %dx.types.ResRet.f32 %8836, 1
  %8839 = extractvalue %dx.types.ResRet.f32 %8836, 2
  %8840 = extractvalue %dx.types.ResRet.f32 %8836, 3
  %8841 = fadd fast float %8837, -5.000000e-01
  %8842 = fadd fast float %8839, -5.000000e-01
  %8843 = fmul fast float %8841, 0xBFD5555560000000
  %8844 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8842, float %8843)  ; FMad(a,b,c)
  %8845 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8838, float 0.000000e+00)  ; FMad(a,b,c)
  %8846 = fadd fast float %8845, %8840
  %8847 = fmul fast float %8841, -7.500000e-01
  %8848 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8842, float %8847)  ; FMad(a,b,c)
  %8849 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8838, float 0.000000e+00)  ; FMad(a,b,c)
  %8850 = fadd fast float %8849, %8840
  %8851 = call float @dx.op.binary.f32(i32 35, float %8844, float -1.000000e+00)  ; FMax(a,b)
  %8852 = call float @dx.op.binary.f32(i32 35, float %8846, float -1.000000e+00)  ; FMax(a,b)
  %8853 = call float @dx.op.binary.f32(i32 35, float %8848, float -1.000000e+00)  ; FMax(a,b)
  %8854 = call float @dx.op.binary.f32(i32 35, float %8850, float -1.000000e+00)  ; FMax(a,b)
  %8855 = call float @dx.op.binary.f32(i32 36, float %8851, float 1.000000e+00)  ; FMin(a,b)
  %8856 = call float @dx.op.binary.f32(i32 36, float %8852, float 1.000000e+00)  ; FMin(a,b)
  %8857 = call float @dx.op.binary.f32(i32 36, float %8853, float 1.000000e+00)  ; FMin(a,b)
  %8858 = call float @dx.op.binary.f32(i32 36, float %8854, float 1.000000e+00)  ; FMin(a,b)
  %8859 = fcmp fast olt float %8855, 0x3FEFFF8020000000
  br i1 %8859, label %8860, label %8975, !dx.controlflow.hints !172

; <label>:8860                                    ; preds = %8827
  %8861 = extractvalue %dx.types.CBufRet.f32 %8743, 3
  %8862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8863 = extractvalue %dx.types.CBufRet.f32 %8862, 0
  %8864 = extractvalue %dx.types.CBufRet.f32 %8862, 1
  %8865 = extractvalue %dx.types.CBufRet.f32 %8862, 2
  %8866 = extractvalue %dx.types.CBufRet.f32 %8862, 3
  %8867 = fsub fast float %8863, %8855
  %8868 = fsub fast float %8864, %8856
  %8869 = fsub fast float %8865, %8857
  %8870 = fsub fast float %8866, %8858
  %8871 = fmul fast float %8867, %8861
  %8872 = fmul fast float %8868, %8861
  %8873 = fmul fast float %8869, %8861
  %8874 = fmul fast float %8870, %8861
  %8875 = fadd fast float %8871, %8855
  %8876 = fadd fast float %8872, %8856
  %8877 = fsub fast float -0.000000e+00, %8876
  %8878 = fadd fast float %8873, %8857
  %8879 = fadd fast float %8874, %8858
  %8880 = fmul fast float %8875, %8875
  %8881 = fsub fast float %8876, %8880
  %8882 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8881)  ; FMax(a,b)
  %8883 = fdiv fast float 1.000000e+00, %8882
  %8884 = fmul fast float %8876, %8875
  %8885 = fsub fast float %8878, %8884
  %8886 = fsub fast float %8835, %8875
  %8887 = fmul fast float %8835, %8835
  %8888 = fsub fast float %8887, %8876
  %8889 = fmul fast float %8886, %8883
  %8890 = fmul fast float %8889, %8885
  %8891 = fsub fast float %8888, %8890
  %8892 = fmul fast float %8876, %8876
  %8893 = fsub fast float %8879, %8892
  %8894 = fmul fast float %8885, %8885
  %8895 = fmul fast float %8894, %8883
  %8896 = fsub fast float %8893, %8895
  %8897 = fdiv fast float %8891, %8896
  %8898 = fmul fast float %8885, %8897
  %8899 = fsub fast float %8886, %8898
  %8900 = fmul fast float %8899, %8883
  %8901 = fmul fast float %8900, %8875
  %8902 = fsub fast float 1.000000e+00, %8901
  %8903 = fmul fast float %8876, %8897
  %8904 = fsub fast float %8902, %8903
  %8905 = fmul fast float %8900, %8900
  %8906 = fmul fast float %8897, 4.000000e+00
  %8907 = fmul fast float %8906, %8904
  %8908 = fsub fast float %8905, %8907
  %8909 = call float @dx.op.unary.f32(i32 24, float %8908)  ; Sqrt(value)
  %8910 = fcmp fast oge float %8900, 0.000000e+00
  %8911 = fsub fast float -0.000000e+00, %8909
  %8912 = select i1 %8910, float %8911, float %8909
  %8913 = fsub fast float %8912, %8900
  %8914 = fdiv fast float %8913, %8897
  %8915 = fdiv fast float %8904, %8913
  %8916 = fmul fast float %8914, 5.000000e-01
  %8917 = fmul fast float %8915, 2.000000e+00
  %8918 = select i1 %8910, float %8916, float %8917
  %8919 = select i1 %8910, float %8917, float %8916
  %8920 = call float @dx.op.binary.f32(i32 35, float %8918, float %8919)  ; FMax(a,b)
  %8921 = call float @dx.op.binary.f32(i32 36, float %8918, float %8919)  ; FMin(a,b)
  %8922 = fcmp fast ogt float %8835, %8921
  br i1 %8922, label %8923, label %8933

; <label>:8923                                    ; preds = %8860
  %8924 = fsub fast float %8835, %8921
  %8925 = fsub fast float %8920, %8921
  %8926 = fmul fast float %8924, %8925
  %8927 = fmul fast float %8920, %8835
  %8928 = fadd fast float %8920, %8835
  %8929 = fmul fast float %8928, %8875
  %8930 = fadd fast float %8927, %8876
  %8931 = fsub fast float %8930, %8929
  %8932 = fdiv fast float %8931, %8926
  br label %8933

; <label>:8933                                    ; preds = %8923, %8860
  %8934 = phi float [ %8932, %8923 ], [ 0.000000e+00, %8860 ]
  %8935 = fcmp fast ogt float %8835, %8920
  %8936 = fsub fast float %8835, %8920
  br i1 %8935, label %8937, label %8947

; <label>:8937                                    ; preds = %8933
  %8938 = fsub fast float %8920, %8921
  %8939 = fmul fast float %8938, %8936
  %8940 = fmul fast float %8921, %8835
  %8941 = fadd fast float %8921, %8835
  %8942 = fmul fast float %8941, %8875
  %8943 = fsub fast float %8877, %8940
  %8944 = fadd fast float %8943, %8942
  %8945 = fdiv fast float %8944, %8939
  %8946 = fadd fast float %8945, %8934
  br label %8947

; <label>:8947                                    ; preds = %8937, %8933
  %8948 = phi float [ %8946, %8937 ], [ %8934, %8933 ]
  %8949 = fsub fast float %8835, %8921
  %8950 = fmul fast float %8949, %8936
  %8951 = fmul fast float %8921, %8920
  %8952 = fadd fast float %8921, %8920
  %8953 = fmul fast float %8952, %8875
  %8954 = fadd fast float %8951, %8876
  %8955 = fsub fast float %8954, %8953
  %8956 = fdiv fast float %8955, %8950
  %8957 = call float @dx.op.unary.f32(i32 7, float %8948)  ; Saturate(value)
  %8958 = fcmp fast oeq float %7626, 0.000000e+00
  %8959 = extractvalue %dx.types.CBufRet.f32 %8743, 0
  %8960 = fcmp fast oeq float %8959, 0.000000e+00
  %8961 = or i1 %8958, %8960
  %8962 = fmul fast float %8959, 2.000000e+00
  %8963 = fadd fast float %8744, %8745
  %8964 = fdiv fast float %8963, %8962
  %8965 = call float @dx.op.unary.f32(i32 7, float %8964)  ; Saturate(value)
  %8966 = fmul fast float %8965, 2.000000e+00
  %8967 = fsub fast float 3.000000e+00, %8966
  %8968 = fmul fast float %8965, %8965
  %8969 = fmul fast float %8968, %8967
  %8970 = select i1 %8961, float 1.000000e+00, float %8969
  %8971 = fmul fast float %8956, %7626
  %8972 = fadd fast float %8957, %8971
  %8973 = call float @dx.op.unary.f32(i32 7, float %8972)  ; Saturate(value)
  %8974 = fmul fast float %8970, %8973
  br label %8975

; <label>:8975                                    ; preds = %8947, %8827
  %8976 = phi float [ %8974, %8947 ], [ 0.000000e+00, %8827 ]
  %8977 = fsub fast float 1.000000e+00, %8976
  %8978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8697, float %8698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8979 = extractvalue %dx.types.ResRet.f32 %8978, 0
  %8980 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8981 = extractvalue %dx.types.CBufRet.i32 %8980, 2
  %8982 = icmp eq i32 %8981, 0
  br i1 %8982, label %8988, label %8983

; <label>:8983                                    ; preds = %8975
  %8984 = call float @dx.op.unary.f32(i32 7, float %8976)  ; Saturate(value)
  %8985 = fadd fast float %8979, -1.000000e+00
  %8986 = fmul fast float %8984, %8985
  %8987 = fadd fast float %8986, 1.000000e+00
  br label %8988

; <label>:8988                                    ; preds = %8983, %8975
  %8989 = phi float [ %8987, %8983 ], [ %8977, %8975 ]
  br i1 %8751, label %8990, label %9008

; <label>:8990                                    ; preds = %8988
  %8991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8992 = extractvalue %dx.types.CBufRet.f32 %8991, 1
  %8993 = fsub fast float %8828, %8992
  %8994 = call float @dx.op.unary.f32(i32 7, float %8993)  ; Saturate(value)
  %8995 = fsub fast float %8828, %8750
  %8996 = call float @dx.op.unary.f32(i32 7, float %8995)  ; Saturate(value)
  %8997 = fsub fast float %8994, %8996
  %8998 = fsub fast float %8830, %8996
  %8999 = fdiv fast float %8998, %8997
  %9000 = call float @dx.op.unary.f32(i32 7, float %8999)  ; Saturate(value)
  %9001 = fmul fast float %9000, 2.000000e+00
  %9002 = fsub fast float 3.000000e+00, %9001
  %9003 = fsub fast float %8979, %8989
  %9004 = fmul fast float %9000, %9000
  %9005 = fmul fast float %9004, %9003
  %9006 = fmul fast float %9005, %9002
  %9007 = fadd fast float %9006, %8989
  br label %9008

; <label>:9008                                    ; preds = %8990, %8988
  %9009 = phi float [ %9007, %8990 ], [ %8989, %8988 ]
  %9010 = call float @dx.op.binary.f32(i32 35, float %8979, float %9009)  ; FMax(a,b)
  %9011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9012 = extractvalue %dx.types.CBufRet.i32 %9011, 2
  %9013 = and i32 %9012, 1
  %9014 = icmp eq i32 %9013, 0
  %9015 = fcmp fast une float %9010, 1.000000e+00
  %9016 = and i1 %9015, %9014
  br i1 %9016, label %9017, label %9036

; <label>:9017                                    ; preds = %9008
  %9018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8697, float %8698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9019 = extractvalue %dx.types.ResRet.f32 %9018, 0
  %9020 = extractvalue %dx.types.ResRet.f32 %9018, 1
  %9021 = extractvalue %dx.types.ResRet.f32 %9018, 2
  %9022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9023 = extractvalue %dx.types.CBufRet.f32 %9022, 1
  %9024 = fmul fast float %9023, %9019
  %9025 = fmul fast float %9023, %9020
  %9026 = fmul fast float %9023, %9021
  %9027 = fcmp fast ogt float %8979, 0x3FEFFF2E40000000
  %9028 = fsub fast float 1.000000e+00, %9010
  %9029 = fsub fast float 1.000000e+00, %8979
  %9030 = fdiv fast float %9028, %9029
  %9031 = call float @dx.op.unary.f32(i32 7, float %9030)  ; Saturate(value)
  %9032 = select i1 %9027, float 0.000000e+00, float %9031
  %9033 = fmul fast float %9024, %9032
  %9034 = fmul fast float %9025, %9032
  %9035 = fmul fast float %9026, %9032
  br label %9036

; <label>:9036                                    ; preds = %9017, %9008
  %9037 = phi float [ 0.000000e+00, %9008 ], [ %9033, %9017 ]
  %9038 = phi float [ 0.000000e+00, %9008 ], [ %9034, %9017 ]
  %9039 = phi float [ 0.000000e+00, %9008 ], [ %9035, %9017 ]
  %9040 = fmul fast float %9037, %7614
  %9041 = fmul fast float %9038, %7614
  %9042 = fmul fast float %9039, %7614
  %9043 = fmul fast float %9010, %8672
  %9044 = call float @dx.op.dot3.f32(i32 55, float %9010, float %9010, float %9010, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9045 = call float @dx.op.dot3.f32(i32 55, float %9040, float %9041, float %9042, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9046 = select i1 %250, float %9044, float %9010
  %9047 = select i1 %250, float 1.000000e+00, float %9010
  %9048 = select i1 %250, float %9045, float %9040
  %9049 = select i1 %250, float 0.000000e+00, float %9041
  %9050 = select i1 %250, float 0.000000e+00, float %9042
  %9051 = fmul fast float %9046, %8684
  %9052 = fmul fast float %9046, %8685
  %9053 = fmul fast float %9047, %8686
  %9054 = fadd fast float %9051, %9048
  %9055 = fadd fast float %9052, %9049
  %9056 = fadd fast float %9050, %9053
  %9057 = fmul fast float %9046, %8687
  %9058 = fmul fast float %9046, %8688
  %9059 = fmul fast float %9047, %8689
  br label %9060

; <label>:9060                                    ; preds = %9036, %8693, %8662, %7894
  %9061 = phi float [ %7899, %7894 ], [ %8684, %8662 ], [ %9054, %9036 ], [ %8684, %8693 ]
  %9062 = phi float [ %7900, %7894 ], [ %8685, %8662 ], [ %9055, %9036 ], [ %8685, %8693 ]
  %9063 = phi float [ %7901, %7894 ], [ %8686, %8662 ], [ %9056, %9036 ], [ %8686, %8693 ]
  %9064 = phi float [ %7902, %7894 ], [ %8687, %8662 ], [ %9057, %9036 ], [ %8687, %8693 ]
  %9065 = phi float [ %7903, %7894 ], [ %8688, %8662 ], [ %9058, %9036 ], [ %8688, %8693 ]
  %9066 = phi float [ %7904, %7894 ], [ %8689, %8662 ], [ %9059, %9036 ], [ %8689, %8693 ]
  %9067 = phi float [ %7905, %7894 ], [ %8672, %8662 ], [ %9043, %9036 ], [ %8672, %8693 ]
  %9068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9069 = extractvalue %dx.types.CBufRet.f32 %9068, 2
  %9070 = extractvalue %dx.types.CBufRet.f32 %9068, 3
  %9071 = fmul fast float %9069, %104
  %9072 = fmul fast float %9070, %105
  %9073 = call float @dx.op.unary.f32(i32 7, float %9071)  ; Saturate(value)
  %9074 = call float @dx.op.unary.f32(i32 7, float %9072)  ; Saturate(value)
  %9075 = select i1 %7636, i32 2, i32 0
  %9076 = or i32 %9075, 1
  %9077 = uitofp i32 %9076 to float
  %9078 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9073, float %9074, float %9077, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9079 = extractvalue %dx.types.ResRet.f32 %9078, 0
  %9080 = extractvalue %dx.types.ResRet.f32 %9078, 1
  %9081 = extractvalue %dx.types.ResRet.f32 %9078, 2
  %9082 = extractvalue %dx.types.ResRet.f32 %9078, 3
  %9083 = add nuw nsw i32 %9075, 2
  %9084 = uitofp i32 %9083 to float
  %9085 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9073, float %9074, float %9084, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9086 = extractvalue %dx.types.ResRet.f32 %9085, 0
  %9087 = extractvalue %dx.types.ResRet.f32 %9085, 1
  %9088 = extractvalue %dx.types.ResRet.f32 %9085, 2
  %9089 = extractvalue %dx.types.ResRet.f32 %9085, 3
  %9090 = call float @dx.op.binary.f32(i32 35, float %9080, float %9081)  ; FMax(a,b)
  %9091 = call float @dx.op.binary.f32(i32 35, float %9079, float %9090)  ; FMax(a,b)
  %9092 = call float @dx.op.binary.f32(i32 35, float %9091, float %9082)  ; FMax(a,b)
  %9093 = call float @dx.op.binary.f32(i32 36, float %9087, float %9088)  ; FMin(a,b)
  %9094 = call float @dx.op.binary.f32(i32 36, float %9086, float %9093)  ; FMin(a,b)
  %9095 = call float @dx.op.binary.f32(i32 36, float %9094, float %9089)  ; FMin(a,b)
  %9096 = fmul fast float %9092, 2.550000e+02
  %9097 = fadd fast float %9096, 0x3F70101020000000
  %9098 = fptoui float %9097 to i32
  %9099 = fmul fast float %9095, 2.550000e+02
  %9100 = fadd fast float %9099, 0x3F70101020000000
  %9101 = fptoui float %9100 to i32
  %9102 = icmp ult i32 %9098, %9101
  br i1 %9102, label %9103, label %9272

; <label>:9103                                    ; preds = %9060
  %9104 = fcmp fast ogt float %94, 9.843750e-01
  %9105 = fadd fast float %7898, -4.000000e+00
  %9106 = select i1 %9104, float -4.000000e+00, float %9105
  %9107 = call float @dx.op.binary.f32(i32 35, float %9106, float 0.000000e+00)  ; FMax(a,b)
  %9108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9109 = extractvalue %dx.types.CBufRet.f32 %9108, 0
  %9110 = fadd fast float %9109, %9107
  %9111 = extractvalue %dx.types.CBufRet.f32 %9108, 2
  %9112 = fmul fast float %9110, %9111
  %9113 = call float @dx.op.unary.f32(i32 23, float %9112)  ; Log(value)
  %9114 = extractvalue %dx.types.CBufRet.f32 %9108, 3
  %9115 = fmul fast float %9114, %9113
  %9116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9117 = extractvalue %dx.types.CBufRet.f32 %9116, 2
  %9118 = fmul fast float %9115, %9117
  %9119 = call float @dx.op.unary.f32(i32 7, float %9118)  ; Saturate(value)
  %9120 = uitofp i32 %9098 to float
  %9121 = uitofp i32 %9101 to float
  %9122 = fadd fast float %9120, 5.000000e-01
  %9123 = fadd fast float %9121, 5.000000e-01
  %9124 = fmul fast float %9117, %9122
  %9125 = fmul fast float %9117, %9123
  %9126 = fadd fast float %9124, 0x3F0FFB4800000000
  %9127 = fadd fast float %9125, 0xBF0FFB4800000000
  %9128 = call float @dx.op.binary.f32(i32 35, float %9119, float %9126)  ; FMax(a,b)
  %9129 = call float @dx.op.binary.f32(i32 36, float %9128, float %9127)  ; FMin(a,b)
  %9130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9131 = extractvalue %dx.types.CBufRet.f32 %9130, 1
  %9132 = extractvalue %dx.types.CBufRet.f32 %9130, 2
  %9133 = extractvalue %dx.types.CBufRet.f32 %9130, 0
  %9134 = select i1 %7636, float %9133, float 0.000000e+00
  %9135 = fmul fast float %9131, %9129
  %9136 = fadd fast float %9134, %9135
  %9137 = fadd fast float %9134, %9132
  %9138 = fsub fast float %9131, %9132
  %9139 = fadd fast float %9138, %9134
  %9140 = call float @dx.op.binary.f32(i32 35, float %9136, float %9137)  ; FMax(a,b)
  %9141 = call float @dx.op.binary.f32(i32 36, float %9140, float %9139)  ; FMin(a,b)
  %9142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9073, float %9074, float %9141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9143 = extractvalue %dx.types.ResRet.f32 %9142, 0
  %9144 = extractvalue %dx.types.ResRet.f32 %9142, 1
  %9145 = extractvalue %dx.types.ResRet.f32 %9142, 2
  %9146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9147 = extractvalue %dx.types.CBufRet.i32 %9146, 0
  %9148 = extractvalue %dx.types.CBufRet.i32 %9146, 1
  %9149 = uitofp i32 %9147 to float
  %9150 = uitofp i32 %9148 to float
  %9151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9152 = extractvalue %dx.types.CBufRet.f32 %9151, 0
  %9153 = extractvalue %dx.types.CBufRet.f32 %9151, 1
  %9154 = fmul fast float %9149, %9073
  %9155 = fmul fast float %9150, %9074
  %9156 = fadd fast float %9154, -5.000000e-01
  %9157 = fadd fast float %9155, -5.000000e-01
  %9158 = call float @dx.op.unary.f32(i32 22, float %9156)  ; Frc(value)
  %9159 = call float @dx.op.unary.f32(i32 22, float %9157)  ; Frc(value)
  %9160 = fmul fast float %9158, %9158
  %9161 = fmul fast float %9160, %9158
  %9162 = fsub fast float 3.000000e+00, %9158
  %9163 = fmul fast float %9160, %9162
  %9164 = fmul fast float %9158, 3.000000e+00
  %9165 = fmul fast float %9161, 3.000000e+00
  %9166 = fmul fast float %9160, 6.000000e+00
  %9167 = fsub fast float %9165, %9166
  %9168 = fadd fast float %9167, 4.000000e+00
  %9169 = fmul fast float %9168, 0x3FC5555560000000
  %9170 = fmul fast float %9161, -3.000000e+00
  %9171 = fadd fast float %9160, %9158
  %9172 = fmul fast float %9171, 3.000000e+00
  %9173 = fadd fast float %9170, 1.000000e+00
  %9174 = fadd fast float %9173, %9172
  %9175 = fmul fast float %9161, 0x3FC5555560000000
  %9176 = fmul fast float %9159, %9159
  %9177 = fmul fast float %9176, %9159
  %9178 = fsub fast float 3.000000e+00, %9159
  %9179 = fmul fast float %9176, %9178
  %9180 = fmul fast float %9159, 3.000000e+00
  %9181 = fmul fast float %9177, 3.000000e+00
  %9182 = fmul fast float %9176, 6.000000e+00
  %9183 = fsub fast float %9181, %9182
  %9184 = fadd fast float %9183, 4.000000e+00
  %9185 = fmul fast float %9184, 0x3FC5555560000000
  %9186 = fmul fast float %9177, -3.000000e+00
  %9187 = fadd fast float %9176, %9159
  %9188 = fmul fast float %9187, 3.000000e+00
  %9189 = fadd fast float %9186, 1.000000e+00
  %9190 = fadd fast float %9189, %9188
  %9191 = fmul fast float %9177, 0x3FC5555560000000
  %9192 = fadd fast float %9158, 1.000000e+00
  %9193 = fsub fast float 1.000000e+00, %9164
  %9194 = fadd fast float %9193, %9163
  %9195 = fadd fast float %9194, %9168
  %9196 = fmul fast float %9195, 0x3FC5555560000000
  %9197 = fdiv fast float %9169, %9196
  %9198 = fsub fast float %9192, %9197
  %9199 = fsub fast float 1.000000e+00, %9158
  %9200 = fadd fast float %9174, %9161
  %9201 = fmul fast float %9200, 0x3FC5555560000000
  %9202 = fdiv fast float %9175, %9201
  %9203 = fadd fast float %9199, %9202
  %9204 = fadd fast float %9159, 1.000000e+00
  %9205 = fsub fast float 1.000000e+00, %9180
  %9206 = fadd fast float %9205, %9179
  %9207 = fadd fast float %9206, %9184
  %9208 = fmul fast float %9207, 0x3FC5555560000000
  %9209 = fdiv fast float %9185, %9208
  %9210 = fsub fast float %9204, %9209
  %9211 = fsub fast float 1.000000e+00, %9159
  %9212 = fadd fast float %9190, %9177
  %9213 = fmul fast float %9212, 0x3FC5555560000000
  %9214 = fdiv fast float %9191, %9213
  %9215 = fadd fast float %9214, %9211
  %9216 = fmul fast float %9198, %9152
  %9217 = fsub fast float %9073, %9216
  %9218 = fmul fast float %9203, %9152
  %9219 = fadd fast float %9218, %9073
  %9220 = fmul fast float %9215, %9153
  %9221 = fadd fast float %9220, %9074
  %9222 = fmul fast float %9210, %9153
  %9223 = fsub fast float %9074, %9222
  %9224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9217, float %9223, float %9141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9225 = extractvalue %dx.types.ResRet.f32 %9224, 0
  %9226 = extractvalue %dx.types.ResRet.f32 %9224, 1
  %9227 = extractvalue %dx.types.ResRet.f32 %9224, 2
  %9228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9219, float %9223, float %9141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9229 = extractvalue %dx.types.ResRet.f32 %9228, 0
  %9230 = extractvalue %dx.types.ResRet.f32 %9228, 1
  %9231 = extractvalue %dx.types.ResRet.f32 %9228, 2
  %9232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9217, float %9221, float %9141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9233 = extractvalue %dx.types.ResRet.f32 %9232, 0
  %9234 = extractvalue %dx.types.ResRet.f32 %9232, 1
  %9235 = extractvalue %dx.types.ResRet.f32 %9232, 2
  %9236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9219, float %9221, float %9141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9237 = extractvalue %dx.types.ResRet.f32 %9236, 0
  %9238 = extractvalue %dx.types.ResRet.f32 %9236, 1
  %9239 = extractvalue %dx.types.ResRet.f32 %9236, 2
  %9240 = fsub fast float %9233, %9225
  %9241 = fsub fast float %9234, %9226
  %9242 = fsub fast float %9235, %9227
  %9243 = fmul fast float %9240, %9213
  %9244 = fmul fast float %9241, %9213
  %9245 = fmul fast float %9242, %9213
  %9246 = fadd fast float %9243, %9225
  %9247 = fadd fast float %9244, %9226
  %9248 = fadd fast float %9245, %9227
  %9249 = fsub fast float %9237, %9229
  %9250 = fsub fast float %9238, %9230
  %9251 = fsub fast float %9239, %9231
  %9252 = fmul fast float %9249, %9213
  %9253 = fmul fast float %9250, %9213
  %9254 = fmul fast float %9251, %9213
  %9255 = fsub fast float %9229, %9246
  %9256 = fadd fast float %9255, %9252
  %9257 = fsub fast float %9230, %9247
  %9258 = fadd fast float %9257, %9253
  %9259 = fsub fast float %9231, %9248
  %9260 = fadd fast float %9259, %9254
  %9261 = fmul fast float %9256, %9201
  %9262 = fmul fast float %9258, %9201
  %9263 = fmul fast float %9260, %9201
  %9264 = fadd fast float %9261, %9246
  %9265 = fadd fast float %9262, %9247
  %9266 = fadd fast float %9263, %9248
  %9267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9268 = extractvalue %dx.types.CBufRet.f32 %9267, 1
  %9269 = fmul fast float %9264, %9268
  %9270 = fmul fast float %9265, %9268
  %9271 = fmul fast float %9266, %9268
  br label %9272

; <label>:9272                                    ; preds = %9103, %9060
  %9273 = phi float [ %9143, %9103 ], [ 1.000000e+00, %9060 ]
  %9274 = phi float [ %9144, %9103 ], [ 1.000000e+00, %9060 ]
  %9275 = phi float [ %9145, %9103 ], [ 1.000000e+00, %9060 ]
  %9276 = phi float [ %9269, %9103 ], [ 0.000000e+00, %9060 ]
  %9277 = phi float [ %9270, %9103 ], [ 0.000000e+00, %9060 ]
  %9278 = phi float [ %9271, %9103 ], [ 0.000000e+00, %9060 ]
  %9279 = fmul fast float %9276, %7614
  %9280 = fmul fast float %9277, %7614
  %9281 = fmul fast float %9278, %7614
  %9282 = fmul fast float %9273, %9067
  %9283 = call float @dx.op.dot3.f32(i32 55, float %9273, float %9274, float %9275, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9284 = call float @dx.op.dot3.f32(i32 55, float %9279, float %9280, float %9281, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9285 = select i1 %250, float %9283, float %9273
  %9286 = select i1 %250, float %9283, float %9274
  %9287 = select i1 %250, float 1.000000e+00, float %9275
  %9288 = select i1 %250, float %9284, float %9279
  %9289 = select i1 %250, float 0.000000e+00, float %9280
  %9290 = select i1 %250, float 0.000000e+00, float %9281
  %9291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9292 = extractvalue %dx.types.CBufRet.i32 %9291, 3
  %9293 = and i32 %9292, 3
  %9294 = icmp ne i32 %9293, 0
  %9295 = and i32 %9292, 4
  %9296 = icmp ne i32 %9295, 0
  %9297 = and i1 %9294, %9296
  %9298 = and i1 %250, %9297
  br i1 %9298, label %9299, label %9305

; <label>:9299                                    ; preds = %9272
  %9300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9301 = extractvalue %dx.types.CBufRet.f32 %9300, 1
  %9302 = fadd fast float %9282, -1.000000e+00
  %9303 = fmul fast float %9301, %9302
  %9304 = fadd fast float %9303, 1.000000e+00
  br label %9305

; <label>:9305                                    ; preds = %9299, %9272
  %9306 = phi float [ %9304, %9299 ], [ %9282, %9272 ]
  %9307 = fadd fast float %9064, %9061
  %9308 = fmul fast float %9285, %9307
  %9309 = fadd fast float %9308, %9288
  %9310 = fadd fast float %9065, %9062
  %9311 = fmul fast float %9286, %9310
  %9312 = fadd fast float %9311, %9289
  %9313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9314 = extractvalue %dx.types.CBufRet.f32 %9313, 0
  br i1 %250, label %9315, label %9338

; <label>:9315                                    ; preds = %9305
  %9316 = fadd fast float %9309, %9312
  %9317 = fmul fast float %9314, %9316
  %9318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9319 = extractvalue %dx.types.CBufRet.f32 %9318, 3
  %9320 = extractvalue %dx.types.CBufRet.f32 %7618, 1
  %9321 = fsub fast float %7623, %7617
  %9322 = fadd fast float %9321, %7624
  %9323 = fsub fast float %9322, %9320
  %9324 = extractvalue %dx.types.CBufRet.f32 %7618, 2
  %9325 = fmul fast float %9323, %9324
  %9326 = call float @dx.op.unary.f32(i32 7, float %9325)  ; Saturate(value)
  %9327 = fsub fast float %9326, %9319
  %9328 = fmul fast float %9327, %9306
  %9329 = fadd fast float %9328, %9319
  %9330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9331 = extractvalue %dx.types.CBufRet.f32 %9330, 0
  %9332 = fsub fast float %9329, %9331
  %9333 = fmul fast float %9332, 1.000000e+01
  %9334 = call float @dx.op.unary.f32(i32 7, float %9333)  ; Saturate(value)
  %9335 = fmul fast float %9334, %7613
  %9336 = fadd fast float %9335, %7614
  %9337 = fmul fast float %9336, %9329
  br label %9362

; <label>:9338                                    ; preds = %9305
  %9339 = fadd fast float %9066, %9063
  %9340 = fmul fast float %9287, %9339
  %9341 = fadd fast float %9340, %9290
  %9342 = fmul fast float %9314, %9309
  %9343 = fmul fast float %9314, %9312
  %9344 = fmul fast float %9314, %9341
  %9345 = call float @dx.op.binary.f32(i32 35, float %9343, float %9344)  ; FMax(a,b)
  %9346 = call float @dx.op.binary.f32(i32 35, float %9342, float %9345)  ; FMax(a,b)
  %9347 = call float @dx.op.binary.f32(i32 35, float %9346, float %7614)  ; FMax(a,b)
  %9348 = fcmp fast ugt float %9347, 0x3F10000000000000
  br i1 %9348, label %9350, label %9349

; <label>:9349                                    ; preds = %9338
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9350

; <label>:9350                                    ; preds = %9349, %9338
  %9351 = add i32 %54, 356
  %9352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9351, i32 undef)  ; BufferLoad(srv,index,wot)
  %9353 = extractvalue %dx.types.ResRet.i32 %9352, 0
  %9354 = and i32 %9353, 32
  %9355 = icmp eq i32 %9354, 0
  br i1 %9355, label %9362, label %9356

; <label>:9356                                    ; preds = %9350
  %9357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9358 = extractvalue %dx.types.CBufRet.f32 %9357, 0
  %9359 = fmul fast float %9358, 0x3FE99999A0000000
  %9360 = fadd fast float %9358, %9342
  %9361 = fadd fast float %9359, %9344
  br label %9362

; <label>:9362                                    ; preds = %9356, %9350, %9315
  %9363 = phi float [ %9317, %9315 ], [ %9360, %9356 ], [ %9342, %9350 ]
  %9364 = phi float [ %9337, %9315 ], [ %9343, %9356 ], [ %9343, %9350 ]
  %9365 = phi float [ %9336, %9315 ], [ %9361, %9356 ], [ %9344, %9350 ]
  %9366 = phi float [ %9336, %9315 ], [ %7614, %9356 ], [ %7614, %9350 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9367 = call float @dx.op.binary.f32(i32 36, float %9363, float 3.225500e+04)  ; FMin(a,b)
  %9368 = call float @dx.op.binary.f32(i32 36, float %9364, float 3.225500e+04)  ; FMin(a,b)
  %9369 = call float @dx.op.binary.f32(i32 36, float %9365, float 3.225500e+04)  ; FMin(a,b)
  %9370 = call float @dx.op.binary.f32(i32 36, float %9366, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9367)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9368)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9369)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9370)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

