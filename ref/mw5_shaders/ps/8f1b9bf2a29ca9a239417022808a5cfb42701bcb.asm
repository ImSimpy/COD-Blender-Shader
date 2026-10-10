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
; shader hash: d51b62d380e56b4dd5a4cc2c5c0926f1
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
  %444 = add i32 %54, 492
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
  %704 = add i32 %54, 460
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
  %1264 = add i32 %54, 464
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
  %1445 = add i32 %54, 356
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
  %2003 = add i32 %54, 468
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
  %2184 = add i32 %54, 356
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
  %2742 = add i32 %54, 472
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
  %2923 = add i32 %54, 356
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
  %3266 = add i32 %54, 360
  %3267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3266, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.i32 %3267, 0
  %3269 = extractvalue %dx.types.ResRet.i32 %3267, 1
  %3270 = bitcast i32 %3268 to float
  %3271 = bitcast i32 %3269 to float
  %3272 = fcmp fast oge float %3270, 0.000000e+00
  %3273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3274 = extractvalue %dx.types.CBufRet.f32 %3273, 0
  %3275 = select i1 %3272, float %3270, float %3274
  %3276 = add i32 %54, 456
  %3277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3276, i32 undef)  ; BufferLoad(srv,index,wot)
  %3278 = extractvalue %dx.types.ResRet.i32 %3277, 0
  %3279 = add i32 %3278, 0
  %3280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3279, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3281 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3280, %dx.types.Handle %101, float %86, float %87, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3282 = extractvalue %dx.types.ResRet.f32 %3281, 0
  %3283 = fmul fast float %3282, %3271
  %3284 = fadd fast float %3283, %3275
  %3285 = call float @dx.op.dot2.f32(i32 54, float %3254, float %3255, float %3254, float %3255)  ; Dot2(ax,ay,bx,by)
  %3286 = fmul fast float %3285, 0x3FE3333340000000
  %3287 = fsub fast float 1.000000e+00, %3286
  %3288 = call float @dx.op.dot3.f32(i32 55, float %3254, float %3255, float %3287, float %3254, float %3255, float %3287)  ; Dot3(ax,ay,az,bx,by,bz)
  %3289 = call float @dx.op.unary.f32(i32 25, float %3288)  ; Rsqrt(value)
  %3290 = fmul fast float %3289, %3254
  %3291 = fmul fast float %3289, %3255
  %3292 = fmul fast float %3287, %3289
  %3293 = fmul fast float %3292, %111
  %3294 = fmul fast float %3292, %112
  %3295 = fmul fast float %3292, %113
  %3296 = fmul fast float %3290, %79
  %3297 = fmul fast float %3290, %80
  %3298 = fmul fast float %3290, %81
  %3299 = fadd fast float %3293, %3296
  %3300 = fadd fast float %3294, %3297
  %3301 = fadd fast float %3295, %3298
  %3302 = fmul fast float %123, %3291
  %3303 = fmul fast float %124, %3291
  %3304 = fmul fast float %125, %3291
  %3305 = fadd fast float %3299, %3302
  %3306 = fadd fast float %3300, %3303
  %3307 = fadd fast float %3301, %3304
  %3308 = call float @dx.op.dot3.f32(i32 55, float %3305, float %3306, float %3307, float %3305, float %3306, float %3307)  ; Dot3(ax,ay,az,bx,by,bz)
  %3309 = call float @dx.op.unary.f32(i32 25, float %3308)  ; Rsqrt(value)
  %3310 = fmul fast float %3305, %3309
  %3311 = fmul fast float %3306, %3309
  %3312 = fmul fast float %3307, %3309
  %3313 = icmp eq i32 %55, 65535
  br i1 %3313, label %3832, label %3314

; <label>:3314                                    ; preds = %3253
  %3315 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %3316 = call float @dx.op.unary.f32(i32 83, float %57)  ; DerivCoarseX(value)
  %3317 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3318 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %3319 = call float @dx.op.unary.f32(i32 84, float %57)  ; DerivCoarseY(value)
  %3320 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3321 = fadd fast float %3315, %56
  %3322 = fadd fast float %3316, %57
  %3323 = fadd fast float %3317, %58
  %3324 = fadd fast float %3318, %56
  %3325 = fadd fast float %3319, %57
  %3326 = fadd fast float %3320, %58
  %3327 = mul i32 %55, 48
  %3328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3327, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.f32 %3328, 0
  %3330 = extractvalue %dx.types.ResRet.f32 %3328, 1
  %3331 = extractvalue %dx.types.ResRet.f32 %3328, 2
  %3332 = add i32 %3327, 16
  %3333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3332, i32 undef)  ; BufferLoad(srv,index,wot)
  %3334 = extractvalue %dx.types.ResRet.f32 %3333, 0
  %3335 = extractvalue %dx.types.ResRet.f32 %3333, 1
  %3336 = extractvalue %dx.types.ResRet.f32 %3333, 2
  %3337 = add i32 %3327, 32
  %3338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3337, i32 undef)  ; BufferLoad(srv,index,wot)
  %3339 = extractvalue %dx.types.ResRet.f32 %3338, 0
  %3340 = extractvalue %dx.types.ResRet.f32 %3338, 1
  %3341 = extractvalue %dx.types.ResRet.f32 %3338, 2
  %3342 = extractvalue %dx.types.ResRet.f32 %3338, 3
  %3343 = bitcast float %3342 to i32
  %3344 = fmul fast float %3329, %56
  %3345 = fmul fast float %3330, %57
  %3346 = fmul fast float %3331, %58
  %3347 = fsub fast float %3344, %3334
  %3348 = fsub fast float %3345, %3335
  %3349 = fsub fast float %3346, %3336
  %3350 = call float @dx.op.unary.f32(i32 7, float %3347)  ; Saturate(value)
  %3351 = call float @dx.op.unary.f32(i32 7, float %3348)  ; Saturate(value)
  %3352 = call float @dx.op.unary.f32(i32 7, float %3349)  ; Saturate(value)
  %3353 = fmul fast float %3350, %3339
  %3354 = fmul fast float %3351, %3340
  %3355 = fmul fast float %3352, %3341
  %3356 = fadd fast float %3339, -1.000000e+00
  %3357 = fadd fast float %3340, -1.000000e+00
  %3358 = fadd fast float %3341, -1.000000e+00
  %3359 = call float @dx.op.unary.f32(i32 27, float %3353)  ; Round_ni(value)
  %3360 = call float @dx.op.unary.f32(i32 27, float %3354)  ; Round_ni(value)
  %3361 = call float @dx.op.unary.f32(i32 27, float %3355)  ; Round_ni(value)
  %3362 = call float @dx.op.binary.f32(i32 36, float %3359, float %3356)  ; FMin(a,b)
  %3363 = call float @dx.op.binary.f32(i32 36, float %3360, float %3357)  ; FMin(a,b)
  %3364 = call float @dx.op.binary.f32(i32 36, float %3361, float %3358)  ; FMin(a,b)
  %3365 = fmul fast float %3364, %3340
  %3366 = fadd fast float %3365, %3363
  %3367 = fmul fast float %3366, %3339
  %3368 = fadd fast float %3367, %3362
  %3369 = fptosi float %3368 to i32
  %3370 = add nsw i32 %3369, %3343
  %3371 = shl nsw i32 %3370, 2
  %3372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3373 = extractvalue %dx.types.ResRet.i32 %3372, 0
  %3374 = lshr i32 %3373, 16
  %3375 = icmp eq i32 %3374, 0
  br i1 %3375, label %3800, label %3376

; <label>:3376                                    ; preds = %3314
  br label %3377

; <label>:3377                                    ; preds = %3499, %3376
  %3378 = phi i32 [ %3401, %3499 ], [ %3374, %3376 ]
  %3379 = phi float [ %3500, %3499 ], [ 0.000000e+00, %3376 ]
  %3380 = phi float [ %3501, %3499 ], [ %1045, %3376 ]
  %3381 = phi float [ %3502, %3499 ], [ %3284, %3376 ]
  %3382 = phi float [ %3503, %3499 ], [ %3265, %3376 ]
  %3383 = phi float [ %3504, %3499 ], [ 0.000000e+00, %3376 ]
  %3384 = phi float [ %3505, %3499 ], [ 0.000000e+00, %3376 ]
  %3385 = phi float [ %3506, %3499 ], [ %3259, %3376 ]
  %3386 = phi float [ %3507, %3499 ], [ %3260, %3376 ]
  %3387 = phi float [ %3508, %3499 ], [ %3261, %3376 ]
  %3388 = phi float [ %3509, %3499 ], [ %3310, %3376 ]
  %3389 = phi float [ %3510, %3499 ], [ %3311, %3376 ]
  %3390 = phi float [ %3511, %3499 ], [ %3312, %3376 ]
  %3391 = phi float [ %3512, %3499 ], [ %3264, %3376 ]
  %3392 = phi float [ %3513, %3499 ], [ %3263, %3376 ]
  %3393 = phi float [ %3514, %3499 ], [ 0.000000e+00, %3376 ]
  %3394 = phi float [ %3515, %3499 ], [ %3262, %3376 ]
  %3395 = phi float [ %3516, %3499 ], [ %3256, %3376 ]
  %3396 = phi float [ %3517, %3499 ], [ %3257, %3376 ]
  %3397 = phi float [ %3518, %3499 ], [ %3258, %3376 ]
  %3398 = shl nuw nsw i32 %3378, 2
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = lshr i32 %3400, 16
  %3402 = shl i32 %3400, 8
  %3403 = and i32 %3402, 16776960
  %3404 = or i32 %3403, 48
  %3405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3404, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.f32 %3405, 0
  %3407 = extractvalue %dx.types.ResRet.f32 %3405, 1
  %3408 = extractvalue %dx.types.ResRet.f32 %3405, 2
  %3409 = or i32 %3403, 64
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = extractvalue %dx.types.ResRet.i32 %3410, 1
  %3413 = or i32 %3403, 80
  %3414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3413, i32 undef)  ; BufferLoad(srv,index,wot)
  %3415 = extractvalue %dx.types.ResRet.f32 %3414, 2
  %3416 = extractvalue %dx.types.ResRet.f32 %3414, 3
  %3417 = or i32 %3403, 96
  %3418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3417, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.f32 %3418, 0
  %3420 = extractvalue %dx.types.ResRet.f32 %3418, 1
  %3421 = extractvalue %dx.types.ResRet.f32 %3418, 2
  %3422 = extractvalue %dx.types.ResRet.f32 %3418, 3
  %3423 = or i32 %3403, 112
  %3424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3423, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.f32 %3424, 2
  %3426 = or i32 %3403, 128
  %3427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3426, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.f32 %3427, 0
  %3429 = extractvalue %dx.types.ResRet.f32 %3427, 1
  %3430 = extractvalue %dx.types.ResRet.f32 %3427, 2
  %3431 = extractvalue %dx.types.ResRet.f32 %3427, 3
  %3432 = or i32 %3403, 144
  %3433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.f32 %3433, 0
  %3435 = extractvalue %dx.types.ResRet.f32 %3433, 1
  %3436 = extractvalue %dx.types.ResRet.f32 %3433, 2
  %3437 = extractvalue %dx.types.ResRet.f32 %3433, 3
  %3438 = or i32 %3403, 160
  %3439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3438, i32 undef)  ; BufferLoad(srv,index,wot)
  %3440 = extractvalue %dx.types.ResRet.f32 %3439, 0
  %3441 = extractvalue %dx.types.ResRet.f32 %3439, 1
  %3442 = extractvalue %dx.types.ResRet.f32 %3439, 2
  %3443 = extractvalue %dx.types.ResRet.f32 %3439, 3
  %3444 = or i32 %3403, 192
  %3445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3444, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.i32 %3445, 0
  %3447 = or i32 %3403, 208
  %3448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3447, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.f32 %3448, 0
  %3450 = or i32 %3403, 248
  %3451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.f32 %3451, 0
  %3453 = extractvalue %dx.types.ResRet.f32 %3451, 1
  %3454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.f32 %3454, 0
  %3456 = extractvalue %dx.types.ResRet.f32 %3454, 1
  %3457 = extractvalue %dx.types.ResRet.f32 %3454, 2
  %3458 = extractvalue %dx.types.ResRet.f32 %3454, 3
  %3459 = call float @dx.op.dot4.f32(i32 56, float %3455, float %3456, float %3457, float %3458, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3460 = or i32 %3403, 16
  %3461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.f32 %3461, 0
  %3463 = extractvalue %dx.types.ResRet.f32 %3461, 1
  %3464 = extractvalue %dx.types.ResRet.f32 %3461, 2
  %3465 = extractvalue %dx.types.ResRet.f32 %3461, 3
  %3466 = call float @dx.op.dot4.f32(i32 56, float %3462, float %3463, float %3464, float %3465, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3467 = or i32 %3403, 32
  %3468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.f32 %3468, 0
  %3470 = extractvalue %dx.types.ResRet.f32 %3468, 1
  %3471 = extractvalue %dx.types.ResRet.f32 %3468, 2
  %3472 = extractvalue %dx.types.ResRet.f32 %3468, 3
  %3473 = call float @dx.op.dot4.f32(i32 56, float %3469, float %3470, float %3471, float %3472, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3474 = call float @dx.op.unary.f32(i32 27, float %3459)  ; Round_ni(value)
  %3475 = call float @dx.op.unary.f32(i32 6, float %3474)  ; FAbs(value)
  %3476 = call float @dx.op.unary.f32(i32 27, float %3466)  ; Round_ni(value)
  %3477 = call float @dx.op.unary.f32(i32 6, float %3476)  ; FAbs(value)
  %3478 = call float @dx.op.unary.f32(i32 6, float %3473)  ; FAbs(value)
  %3479 = call float @dx.op.unary.f32(i32 27, float %3478)  ; Round_ni(value)
  %3480 = fadd fast float %3477, %3475
  %3481 = fadd fast float %3480, %3479
  %3482 = fcmp fast oeq float %3481, 0.000000e+00
  %3483 = call float @dx.op.dot4.f32(i32 56, float %3455, float %3456, float %3457, float %3458, float %3321, float %3322, float %3323, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3484 = call float @dx.op.dot4.f32(i32 56, float %3462, float %3463, float %3464, float %3465, float %3321, float %3322, float %3323, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3485 = call float @dx.op.dot4.f32(i32 56, float %3455, float %3456, float %3457, float %3458, float %3324, float %3325, float %3326, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3486 = call float @dx.op.dot4.f32(i32 56, float %3462, float %3463, float %3464, float %3465, float %3324, float %3325, float %3326, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3487 = fsub fast float %3483, %3459
  %3488 = fsub fast float %3485, %3459
  %3489 = fsub fast float %3484, %3466
  %3490 = fsub fast float %3486, %3466
  %3491 = call float @dx.op.dot3.f32(i32 55, float %3406, float %3407, float %3408, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3493 = extractvalue %dx.types.CBufRet.f32 %3492, 2
  %3494 = fadd fast float %3493, %3491
  %3495 = call float @dx.op.unary.f32(i32 7, float %3494)  ; Saturate(value)
  %3496 = extractvalue %dx.types.CBufRet.f32 %3492, 0
  %3497 = fcmp fast ogt float %3495, %3496
  %3498 = and i1 %3482, %3497
  br i1 %3498, label %3520, label %3499

; <label>:3499                                    ; preds = %3786, %3603, %3520, %3377
  %3500 = phi float [ %3379, %3520 ], [ %3606, %3603 ], [ %3606, %3786 ], [ %3379, %3377 ]
  %3501 = phi float [ %3380, %3520 ], [ %3380, %3603 ], [ %3761, %3786 ], [ %3380, %3377 ]
  %3502 = phi float [ %3381, %3520 ], [ %3381, %3603 ], [ %3760, %3786 ], [ %3381, %3377 ]
  %3503 = phi float [ %3382, %3520 ], [ %3382, %3603 ], [ %3758, %3786 ], [ %3382, %3377 ]
  %3504 = phi float [ %3383, %3520 ], [ %3383, %3603 ], [ %3730, %3786 ], [ %3383, %3377 ]
  %3505 = phi float [ %3384, %3520 ], [ %3384, %3603 ], [ %3728, %3786 ], [ %3384, %3377 ]
  %3506 = phi float [ %3385, %3520 ], [ %3385, %3603 ], [ %3796, %3786 ], [ %3385, %3377 ]
  %3507 = phi float [ %3386, %3520 ], [ %3386, %3603 ], [ %3797, %3786 ], [ %3386, %3377 ]
  %3508 = phi float [ %3387, %3520 ], [ %3387, %3603 ], [ %3798, %3786 ], [ %3387, %3377 ]
  %3509 = phi float [ %3388, %3520 ], [ %3388, %3603 ], [ %3709, %3786 ], [ %3388, %3377 ]
  %3510 = phi float [ %3389, %3520 ], [ %3389, %3603 ], [ %3710, %3786 ], [ %3389, %3377 ]
  %3511 = phi float [ %3390, %3520 ], [ %3390, %3603 ], [ %3711, %3786 ], [ %3390, %3377 ]
  %3512 = phi float [ %3391, %3520 ], [ %3391, %3603 ], [ %3738, %3786 ], [ %3391, %3377 ]
  %3513 = phi float [ %3392, %3520 ], [ %3392, %3603 ], [ %3735, %3786 ], [ %3392, %3377 ]
  %3514 = phi float [ %3393, %3520 ], [ %3393, %3603 ], [ %3732, %3786 ], [ %3393, %3377 ]
  %3515 = phi float [ %3394, %3520 ], [ %3394, %3603 ], [ %3726, %3786 ], [ %3394, %3377 ]
  %3516 = phi float [ %3395, %3520 ], [ %3395, %3603 ], [ %3721, %3786 ], [ %3395, %3377 ]
  %3517 = phi float [ %3396, %3520 ], [ %3396, %3603 ], [ %3722, %3786 ], [ %3396, %3377 ]
  %3518 = phi float [ %3397, %3520 ], [ %3397, %3603 ], [ %3723, %3786 ], [ %3397, %3377 ]
  %3519 = icmp eq i32 %3401, 0
  br i1 %3519, label %3799, label %3377

; <label>:3520                                    ; preds = %3377
  %3521 = extractvalue %dx.types.ResRet.f32 %3405, 3
  %3522 = extractvalue %dx.types.ResRet.f32 %3424, 3
  %3523 = extractvalue %dx.types.ResRet.f32 %3424, 1
  %3524 = extractvalue %dx.types.ResRet.f32 %3424, 0
  %3525 = extractvalue %dx.types.ResRet.f32 %3414, 1
  %3526 = extractvalue %dx.types.ResRet.f32 %3414, 0
  %3527 = extractvalue %dx.types.ResRet.i32 %3410, 3
  %3528 = extractvalue %dx.types.ResRet.i32 %3410, 2
  %3529 = bitcast float %3521 to i32
  %3530 = add i32 %3527, 0
  %3531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3530, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3532 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3533 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3531, %dx.types.Handle %3532, float %3459, float %3466, float undef, float undef, i32 0, i32 0, i32 undef, float %3487, float %3489, float undef, float %3488, float %3490, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3534 = extractvalue %dx.types.ResRet.f32 %3533, 0
  %3535 = fmul fast float %3534, %3526
  %3536 = fadd fast float %3535, %3525
  %3537 = call float @dx.op.unary.f32(i32 7, float %3536)  ; Saturate(value)
  %3538 = fmul fast float %3459, %3419
  %3539 = call float @dx.op.tertiary.f32(i32 46, float %3420, float %3466, float %3538)  ; FMad(a,b,c)
  %3540 = fadd fast float %3539, %3524
  %3541 = fmul fast float %3459, %3421
  %3542 = call float @dx.op.tertiary.f32(i32 46, float %3422, float %3466, float %3541)  ; FMad(a,b,c)
  %3543 = fadd fast float %3542, %3523
  %3544 = fmul fast float %3487, %3419
  %3545 = call float @dx.op.tertiary.f32(i32 46, float %3420, float %3489, float %3544)  ; FMad(a,b,c)
  %3546 = fmul fast float %3487, %3421
  %3547 = call float @dx.op.tertiary.f32(i32 46, float %3422, float %3489, float %3546)  ; FMad(a,b,c)
  %3548 = fmul fast float %3488, %3419
  %3549 = call float @dx.op.tertiary.f32(i32 46, float %3420, float %3490, float %3548)  ; FMad(a,b,c)
  %3550 = fmul fast float %3488, %3421
  %3551 = call float @dx.op.tertiary.f32(i32 46, float %3422, float %3490, float %3550)  ; FMad(a,b,c)
  %3552 = add i32 %3528, 0
  %3553 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3552, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3554 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3553, %dx.types.Handle %3532, float %3540, float %3543, float undef, float undef, i32 0, i32 0, i32 undef, float %3545, float %3547, float undef, float %3549, float %3551, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3555 = extractvalue %dx.types.ResRet.f32 %3554, 0
  %3556 = and i32 %3529, 1024
  %3557 = icmp ne i32 %3556, 0
  %3558 = fcmp fast ogt float %3555, 0x3FE0101020000000
  %3559 = uitofp i1 %3558 to float
  %3560 = select i1 %3557, float %3559, float %3555
  %3561 = and i32 %3529, 8192
  %3562 = icmp ne i32 %3561, 0
  %3563 = select i1 %3562, float %3522, float 1.000000e+00
  %3564 = fmul fast float %3459, 2.000000e+00
  %3565 = fadd fast float %3564, -1.000000e+00
  %3566 = call float @dx.op.unary.f32(i32 6, float %3565)  ; FAbs(value)
  %3567 = fmul fast float %3566, %3452
  %3568 = fsub fast float %3567, %3452
  %3569 = call float @dx.op.unary.f32(i32 7, float %3568)  ; Saturate(value)
  %3570 = fmul fast float %3466, 2.000000e+00
  %3571 = fadd fast float %3570, -1.000000e+00
  %3572 = call float @dx.op.unary.f32(i32 6, float %3571)  ; FAbs(value)
  %3573 = fmul fast float %3572, %3453
  %3574 = fsub fast float %3573, %3453
  %3575 = call float @dx.op.unary.f32(i32 7, float %3574)  ; Saturate(value)
  %3576 = fmul fast float %3478, %3415
  %3577 = fsub fast float %3576, %3415
  %3578 = call float @dx.op.unary.f32(i32 7, float %3577)  ; Saturate(value)
  %3579 = fmul fast float %3537, %3563
  %3580 = fmul fast float %3579, %3534
  %3581 = fmul fast float %3580, %3569
  %3582 = fmul fast float %3581, %3560
  %3583 = fmul fast float %3582, %3575
  %3584 = fmul fast float %3583, %3578
  %3585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3586 = extractvalue %dx.types.CBufRet.f32 %3585, 1
  %3587 = extractvalue %dx.types.CBufRet.f32 %3585, 0
  %3588 = fsub fast float %3495, %3587
  %3589 = fmul fast float %3588, %3586
  %3590 = call float @dx.op.unary.f32(i32 7, float %3589)  ; Saturate(value)
  %3591 = fmul fast float %3584, %3416
  %3592 = fadd fast float %3584, %3416
  %3593 = fmul fast float %3592, %3425
  %3594 = fsub fast float %3593, %3425
  %3595 = call float @dx.op.unary.f32(i32 7, float %3594)  ; Saturate(value)
  %3596 = and i32 %3529, 128
  %3597 = icmp ne i32 %3596, 0
  %3598 = select i1 %3597, float %3595, float %3591
  %3599 = fmul fast float %3598, %3590
  %3600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3601 = extractvalue %dx.types.CBufRet.f32 %3600, 0
  %3602 = fcmp fast ugt float %3599, %3601
  br i1 %3602, label %3603, label %3499

; <label>:3603                                    ; preds = %3520
  %3604 = select i1 %3562, float %3599, float 0.000000e+00
  %3605 = fadd fast float %3604, %3379
  %3606 = call float @dx.op.unary.f32(i32 7, float %3605)  ; Saturate(value)
  br i1 %3562, label %3499, label %3607

; <label>:3607                                    ; preds = %3603
  %3608 = and i32 %3529, 4
  %3609 = and i32 %3529, 8
  %3610 = add i32 %3411, 0
  %3611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3610, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3613 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3611, %dx.types.Handle %3612, float %3540, float %3543, float undef, float undef, i32 0, i32 0, i32 undef, float %3545, float %3547, float undef, float %3549, float %3551, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.ResRet.f32 %3613, 1
  %3616 = extractvalue %dx.types.ResRet.f32 %3613, 2
  %3617 = extractvalue %dx.types.ResRet.f32 %3613, 3
  %3618 = bitcast float %3437 to i32
  %3619 = and i32 %3618, 255
  %3620 = uitofp i32 %3619 to float
  %3621 = lshr i32 %3618, 8
  %3622 = and i32 %3621, 255
  %3623 = uitofp i32 %3622 to float
  %3624 = fmul fast float %3617, %3620
  %3625 = fadd fast float %3624, %3623
  %3626 = fmul fast float %3625, 0x3F70101000000000
  %3627 = add i32 %3412, 0
  %3628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3627, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3629 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3628, %dx.types.Handle %3612, float %3540, float %3543, float undef, float undef, i32 0, i32 0, i32 undef, float %3545, float %3547, float undef, float %3549, float %3551, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3630 = extractvalue %dx.types.ResRet.f32 %3629, 0
  %3631 = extractvalue %dx.types.ResRet.f32 %3629, 1
  %3632 = extractvalue %dx.types.ResRet.f32 %3629, 2
  %3633 = extractvalue %dx.types.ResRet.f32 %3629, 3
  %3634 = bitcast float %3431 to i32
  %3635 = and i32 %3634, 255
  %3636 = uitofp i32 %3635 to float
  %3637 = lshr i32 %3634, 8
  %3638 = and i32 %3637, 255
  %3639 = uitofp i32 %3638 to float
  %3640 = lshr i32 %3634, 16
  %3641 = and i32 %3640, 255
  %3642 = uitofp i32 %3641 to float
  %3643 = fmul fast float %3642, 0x3F70101000000000
  %3644 = fmul fast float %3630, %3636
  %3645 = fadd fast float %3644, %3639
  %3646 = fmul fast float %3645, 0x3F70101000000000
  %3647 = fadd fast float %3631, -5.000000e-01
  %3648 = fadd fast float %3633, -5.000000e-01
  %3649 = fmul fast float %3647, %3643
  %3650 = fmul fast float %3648, %3643
  %3651 = fadd fast float %3649, 5.000000e-01
  %3652 = fadd fast float %3650, 5.000000e-01
  %3653 = fmul fast float %3614, %3440
  %3654 = fmul fast float %3615, %3441
  %3655 = fmul fast float %3616, %3442
  %3656 = fmul fast float %3651, 2.000000e+00
  %3657 = fadd fast float %3656, -1.000000e+00
  %3658 = fmul fast float %3652, 2.000000e+00
  %3659 = fadd fast float %3658, -1.000000e+00
  %3660 = fadd fast float %3657, %3659
  %3661 = fmul fast float %3660, 5.000000e-01
  %3662 = fsub fast float %3657, %3659
  %3663 = fmul fast float %3662, 5.000000e-01
  %3664 = call float @dx.op.unary.f32(i32 6, float %3661)  ; FAbs(value)
  %3665 = fsub fast float 1.000000e+00, %3664
  %3666 = call float @dx.op.unary.f32(i32 6, float %3663)  ; FAbs(value)
  %3667 = fsub fast float %3665, %3666
  %3668 = call float @dx.op.dot3.f32(i32 55, float %3661, float %3663, float %3667, float %3661, float %3663, float %3667)  ; Dot3(ax,ay,az,bx,by,bz)
  %3669 = call float @dx.op.unary.f32(i32 25, float %3668)  ; Rsqrt(value)
  %3670 = fmul fast float %3661, %3669
  %3671 = fmul fast float %3663, %3669
  %3672 = fmul fast float %3669, %3667
  %3673 = fmul fast float %3672, %3406
  %3674 = fmul fast float %3672, %3407
  %3675 = fmul fast float %3672, %3408
  %3676 = fmul fast float %3670, %3428
  %3677 = fmul fast float %3670, %3429
  %3678 = fmul fast float %3670, %3430
  %3679 = fadd fast float %3676, %3673
  %3680 = fadd fast float %3677, %3674
  %3681 = fadd fast float %3678, %3675
  %3682 = fmul fast float %3671, %3434
  %3683 = fmul fast float %3671, %3435
  %3684 = fmul fast float %3671, %3436
  %3685 = fadd fast float %3679, %3682
  %3686 = fadd fast float %3680, %3683
  %3687 = fadd fast float %3681, %3684
  %3688 = call float @dx.op.dot3.f32(i32 55, float %3685, float %3686, float %3687, float %3685, float %3686, float %3687)  ; Dot3(ax,ay,az,bx,by,bz)
  %3689 = call float @dx.op.unary.f32(i32 25, float %3688)  ; Rsqrt(value)
  %3690 = fmul fast float %3685, %3689
  %3691 = fmul fast float %3686, %3689
  %3692 = fmul fast float %3687, %3689
  %3693 = icmp ne i32 %3609, 0
  %3694 = select i1 %3693, float 1.000000e+00, float 0.000000e+00
  %3695 = fmul fast float %3599, %3694
  %3696 = and i32 %3529, 1
  %3697 = icmp eq i32 %3696, 0
  br i1 %3697, label %3698, label %3702

; <label>:3698                                    ; preds = %3607
  %3699 = fsub fast float %3690, %3388
  %3700 = fsub fast float %3691, %3389
  %3701 = fsub fast float %3692, %3390
  br label %3702

; <label>:3702                                    ; preds = %3698, %3607
  %3703 = phi float [ %3699, %3698 ], [ %3690, %3607 ]
  %3704 = phi float [ %3700, %3698 ], [ %3691, %3607 ]
  %3705 = phi float [ %3701, %3698 ], [ %3692, %3607 ]
  %3706 = fmul float %3705, %3695
  %3707 = fmul float %3704, %3695
  %3708 = fmul float %3703, %3695
  %3709 = fadd fast float %3708, %3388
  %3710 = fadd fast float %3707, %3389
  %3711 = fadd fast float %3706, %3390
  %3712 = icmp ne i32 %3608, 0
  %3713 = select i1 %3712, float 1.000000e+00, float 0.000000e+00
  %3714 = fmul fast float %3599, %3713
  %3715 = fsub fast float %3653, %3395
  %3716 = fsub fast float %3654, %3396
  %3717 = fsub fast float %3655, %3397
  %3718 = fmul fast float %3715, %3714
  %3719 = fmul fast float %3716, %3714
  %3720 = fmul fast float %3717, %3714
  %3721 = fadd fast float %3718, %3395
  %3722 = fadd fast float %3719, %3396
  %3723 = fadd fast float %3720, %3397
  %3724 = fsub fast float %3626, %3394
  %3725 = fmul fast float %3724, %3714
  %3726 = fadd fast float %3725, %3394
  %3727 = fmul fast float %3714, %3384
  %3728 = fsub fast float %3384, %3727
  %3729 = fmul fast float %3714, %3383
  %3730 = fsub fast float %3383, %3729
  %3731 = fadd fast float %3599, %3393
  %3732 = call float @dx.op.unary.f32(i32 7, float %3731)  ; Saturate(value)
  %3733 = fsub fast float %3646, %3392
  %3734 = fmul fast float %3733, %3695
  %3735 = fadd fast float %3734, %3392
  %3736 = fsub fast float %3632, %3391
  %3737 = fmul fast float %3736, %3695
  %3738 = fadd fast float %3737, %3391
  %3739 = call float @dx.op.dot3.f32(i32 55, float %3653, float %3654, float %3655, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3741 = extractvalue %dx.types.CBufRet.f32 %3740, 0
  %3742 = extractvalue %dx.types.CBufRet.f32 %3740, 1
  %3743 = fmul fast float %3742, %3739
  %3744 = fadd fast float %3743, %3741
  %3745 = call float @dx.op.unary.f32(i32 7, float %3744)  ; Saturate(value)
  %3746 = bitcast float %3443 to i32
  %3747 = and i32 %3746, 65535
  %3748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3747)  ; LegacyF16ToF32(value)
  %3749 = lshr i32 %3746, 16
  %3750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3749)  ; LegacyF16ToF32(value)
  %3751 = fcmp fast oge float %3748, 0.000000e+00
  %3752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3753 = extractvalue %dx.types.CBufRet.f32 %3752, 0
  %3754 = select i1 %3751, float %3748, float %3753
  %3755 = fadd fast float %3754, %3750
  %3756 = fsub fast float %3745, %3382
  %3757 = fmul fast float %3756, %3599
  %3758 = fadd fast float %3757, %3382
  %3759 = fmul fast float %3755, %3599
  %3760 = call float @dx.op.binary.f32(i32 35, float %3381, float %3759)  ; FMax(a,b)
  %3761 = call float @dx.op.binary.f32(i32 35, float %3380, float %3599)  ; FMax(a,b)
  %3762 = and i32 %3529, 16
  %3763 = icmp eq i32 %3762, 0
  br i1 %3763, label %3786, label %3764

; <label>:3764                                    ; preds = %3702
  %3765 = bitcast float %3449 to i32
  %3766 = add i32 %3446, 0
  %3767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3766, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3768 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3767, %dx.types.Handle %3612, float %3540, float %3543, float undef, float undef, i32 0, i32 0, i32 undef, float %3545, float %3547, float undef, float %3549, float %3551, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3769 = extractvalue %dx.types.ResRet.f32 %3768, 0
  %3770 = extractvalue %dx.types.ResRet.f32 %3768, 1
  %3771 = extractvalue %dx.types.ResRet.f32 %3768, 2
  %3772 = and i32 %3765, 65535
  %3773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3772)  ; LegacyF16ToF32(value)
  %3774 = fmul fast float %3769, %3440
  %3775 = fmul fast float %3770, %3441
  %3776 = fmul fast float %3771, %3442
  %3777 = and i32 %3529, 16384
  %3778 = icmp ne i32 %3777, 0
  %3779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3780 = extractvalue %dx.types.CBufRet.f32 %3779, 0
  %3781 = select i1 %3778, float %3780, float 1.000000e+00
  %3782 = fmul fast float %3781, %3773
  %3783 = fmul fast float %3774, %3782
  %3784 = fmul fast float %3775, %3782
  %3785 = fmul fast float %3776, %3782
  br label %3786

; <label>:3786                                    ; preds = %3764, %3702
  %3787 = phi float [ %3783, %3764 ], [ 0.000000e+00, %3702 ]
  %3788 = phi float [ %3784, %3764 ], [ 0.000000e+00, %3702 ]
  %3789 = phi float [ %3785, %3764 ], [ 0.000000e+00, %3702 ]
  %3790 = fsub fast float %3787, %3385
  %3791 = fsub fast float %3788, %3386
  %3792 = fsub fast float %3789, %3387
  %3793 = fmul fast float %3790, %3599
  %3794 = fmul fast float %3791, %3599
  %3795 = fmul fast float %3792, %3599
  %3796 = fadd fast float %3793, %3385
  %3797 = fadd fast float %3794, %3386
  %3798 = fadd fast float %3795, %3387
  br label %3499

; <label>:3799                                    ; preds = %3499
  br label %3800

; <label>:3800                                    ; preds = %3799, %3314
  %3801 = phi float [ 0.000000e+00, %3314 ], [ %3500, %3799 ]
  %3802 = phi float [ %1045, %3314 ], [ %3501, %3799 ]
  %3803 = phi float [ %3284, %3314 ], [ %3502, %3799 ]
  %3804 = phi float [ %3265, %3314 ], [ %3503, %3799 ]
  %3805 = phi float [ 0.000000e+00, %3314 ], [ %3504, %3799 ]
  %3806 = phi float [ 0.000000e+00, %3314 ], [ %3505, %3799 ]
  %3807 = phi float [ %3259, %3314 ], [ %3506, %3799 ]
  %3808 = phi float [ %3260, %3314 ], [ %3507, %3799 ]
  %3809 = phi float [ %3261, %3314 ], [ %3508, %3799 ]
  %3810 = phi float [ %3310, %3314 ], [ %3509, %3799 ]
  %3811 = phi float [ %3311, %3314 ], [ %3510, %3799 ]
  %3812 = phi float [ %3312, %3314 ], [ %3511, %3799 ]
  %3813 = phi float [ %3264, %3314 ], [ %3512, %3799 ]
  %3814 = phi float [ %3263, %3314 ], [ %3513, %3799 ]
  %3815 = phi float [ 0.000000e+00, %3314 ], [ %3514, %3799 ]
  %3816 = phi float [ %3262, %3314 ], [ %3515, %3799 ]
  %3817 = phi float [ %3256, %3314 ], [ %3516, %3799 ]
  %3818 = phi float [ %3257, %3314 ], [ %3517, %3799 ]
  %3819 = phi float [ %3258, %3314 ], [ %3518, %3799 ]
  %3820 = call float @dx.op.dot3.f32(i32 55, float %3810, float %3811, float %3812, float %3810, float %3811, float %3812)  ; Dot3(ax,ay,az,bx,by,bz)
  %3821 = call float @dx.op.unary.f32(i32 25, float %3820)  ; Rsqrt(value)
  %3822 = fmul fast float %3821, %3810
  %3823 = fmul fast float %3821, %3811
  %3824 = fmul fast float %3821, %3812
  %3825 = fadd fast float %3815, %1045
  %3826 = call float @dx.op.unary.f32(i32 7, float %3825)  ; Saturate(value)
  %3827 = call float @dx.op.dot3.f32(i32 55, float %3822, float %3823, float %3824, float %3822, float %3823, float %3824)  ; Dot3(ax,ay,az,bx,by,bz)
  %3828 = call float @dx.op.unary.f32(i32 25, float %3827)  ; Rsqrt(value)
  %3829 = fmul fast float %3828, %3822
  %3830 = fmul fast float %3828, %3823
  %3831 = fmul fast float %3828, %3824
  br label %3832

; <label>:3832                                    ; preds = %3800, %3253
  %3833 = phi float [ %3829, %3800 ], [ %3310, %3253 ]
  %3834 = phi float [ %3830, %3800 ], [ %3311, %3253 ]
  %3835 = phi float [ %3831, %3800 ], [ %3312, %3253 ]
  %3836 = phi float [ %3817, %3800 ], [ %3256, %3253 ]
  %3837 = phi float [ %3818, %3800 ], [ %3257, %3253 ]
  %3838 = phi float [ %3819, %3800 ], [ %3258, %3253 ]
  %3839 = phi float [ %3807, %3800 ], [ %3259, %3253 ]
  %3840 = phi float [ %3808, %3800 ], [ %3260, %3253 ]
  %3841 = phi float [ %3809, %3800 ], [ %3261, %3253 ]
  %3842 = phi float [ %3816, %3800 ], [ %3262, %3253 ]
  %3843 = phi float [ %3826, %3800 ], [ %1045, %3253 ]
  %3844 = phi float [ %3814, %3800 ], [ %3263, %3253 ]
  %3845 = phi float [ %3813, %3800 ], [ %3264, %3253 ]
  %3846 = phi float [ %3806, %3800 ], [ 0.000000e+00, %3253 ]
  %3847 = phi float [ %3805, %3800 ], [ 0.000000e+00, %3253 ]
  %3848 = phi float [ %3801, %3800 ], [ 0.000000e+00, %3253 ]
  %3849 = phi float [ %3803, %3800 ], [ %3284, %3253 ]
  %3850 = phi float [ %3802, %3800 ], [ %1045, %3253 ]
  %3851 = phi float [ %3804, %3800 ], [ %3265, %3253 ]
  %3852 = fadd fast float %3842, 0xBFB99999A0000000
  %3853 = call float @dx.op.unary.f32(i32 7, float %3852)  ; Saturate(value)
  %3854 = fmul fast float %3853, 0x3FF1C71C80000000
  %3855 = call float @dx.op.binary.f32(i32 36, float %3842, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3856 = fsub fast float 1.000000e+00, %3854
  %3857 = call float @dx.op.unary.f32(i32 7, float %3856)  ; Saturate(value)
  %3858 = fmul fast float %3857, %3836
  %3859 = fmul fast float %3857, %3837
  %3860 = fmul fast float %3857, %3838
  %3861 = call float @dx.op.unary.f32(i32 7, float %3858)  ; Saturate(value)
  %3862 = call float @dx.op.unary.f32(i32 7, float %3859)  ; Saturate(value)
  %3863 = call float @dx.op.unary.f32(i32 7, float %3860)  ; Saturate(value)
  %3864 = fmul fast float %3854, %3836
  %3865 = fmul fast float %3854, %3837
  %3866 = fmul fast float %3854, %3838
  %3867 = fadd fast float %3864, %3855
  %3868 = fadd fast float %3865, %3855
  %3869 = fadd fast float %3866, %3855
  %3870 = call float @dx.op.unary.f32(i32 7, float %3867)  ; Saturate(value)
  %3871 = call float @dx.op.unary.f32(i32 7, float %3868)  ; Saturate(value)
  %3872 = call float @dx.op.unary.f32(i32 7, float %3869)  ; Saturate(value)
  %3873 = call float @dx.op.unary.f32(i32 7, float %3844)  ; Saturate(value)
  %3874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3875 = extractvalue %dx.types.CBufRet.i32 %3874, 3
  %3876 = and i32 %3875, 8
  %3877 = icmp ne i32 %3876, 0
  %3878 = call float @dx.op.binary.f32(i32 35, float %3861, float %3836)  ; FMax(a,b)
  %3879 = call float @dx.op.binary.f32(i32 35, float %3862, float %3836)  ; FMax(a,b)
  %3880 = call float @dx.op.binary.f32(i32 35, float %3863, float %3836)  ; FMax(a,b)
  %3881 = call float @dx.op.dot3.f32(i32 55, float %3861, float %3862, float %3863, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3882 = select i1 %250, float %3836, float %3861
  %3883 = select i1 %250, float %3881, float %3862
  %3884 = select i1 %250, float 1.000000e+00, float %3863
  %3885 = select i1 %3877, float %3878, float %3882
  %3886 = select i1 %3877, float %3879, float %3883
  %3887 = select i1 %3877, float %3880, float %3884
  %3888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3889 = extractvalue %dx.types.CBufRet.f32 %3888, 0
  %3890 = extractvalue %dx.types.CBufRet.f32 %3888, 1
  %3891 = extractvalue %dx.types.CBufRet.f32 %3888, 2
  %3892 = fadd fast float %3889, %191
  %3893 = fadd fast float %3890, %192
  %3894 = fadd fast float %3891, %193
  %3895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3896 = extractvalue %dx.types.CBufRet.f32 %3895, 0
  %3897 = extractvalue %dx.types.CBufRet.f32 %3895, 1
  %3898 = fsub fast float %3892, %3896
  %3899 = fsub fast float %3893, %3897
  %3900 = fmul fast float %3898, %3898
  %3901 = fmul fast float %3899, %3899
  %3902 = fadd fast float %3900, %3901
  %3903 = call float @dx.op.unary.f32(i32 24, float %3902)  ; Sqrt(value)
  %3904 = extractvalue %dx.types.CBufRet.f32 %3895, 2
  %3905 = fcmp fast olt float %3903, %3904
  br i1 %3905, label %3906, label %3973

; <label>:3906                                    ; preds = %3832
  %3907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3908 = extractvalue %dx.types.CBufRet.f32 %3907, 0
  %3909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3910 = extractvalue %dx.types.CBufRet.f32 %3909, 0
  %3911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3912 = extractvalue %dx.types.CBufRet.f32 %3911, 0
  %3913 = extractvalue %dx.types.CBufRet.f32 %3907, 1
  %3914 = extractvalue %dx.types.CBufRet.f32 %3909, 1
  %3915 = extractvalue %dx.types.CBufRet.f32 %3911, 1
  %3916 = extractvalue %dx.types.CBufRet.f32 %3907, 3
  %3917 = extractvalue %dx.types.CBufRet.f32 %3909, 3
  %3918 = extractvalue %dx.types.CBufRet.f32 %3911, 3
  %3919 = fadd fast float %3916, %3892
  %3920 = fadd fast float %3917, %3893
  %3921 = fadd fast float %3918, %3894
  %3922 = fmul fast float %3919, %3908
  %3923 = call float @dx.op.tertiary.f32(i32 46, float %3920, float %3910, float %3922)  ; FMad(a,b,c)
  %3924 = call float @dx.op.tertiary.f32(i32 46, float %3921, float %3912, float %3923)  ; FMad(a,b,c)
  %3925 = fmul fast float %3919, %3913
  %3926 = call float @dx.op.tertiary.f32(i32 46, float %3920, float %3914, float %3925)  ; FMad(a,b,c)
  %3927 = call float @dx.op.tertiary.f32(i32 46, float %3921, float %3915, float %3926)  ; FMad(a,b,c)
  %3928 = fsub fast float %3924, %3916
  %3929 = fsub fast float %3927, %3917
  %3930 = fsub fast float %3928, %3896
  %3931 = fadd fast float %3930, %3904
  %3932 = fsub fast float %3929, %3897
  %3933 = fadd fast float %3932, %3904
  %3934 = extractvalue %dx.types.CBufRet.f32 %3895, 3
  %3935 = fmul fast float %3931, %3934
  %3936 = fmul fast float %3933, %3934
  %3937 = call float @dx.op.unary.f32(i32 7, float %3935)  ; Saturate(value)
  %3938 = call float @dx.op.unary.f32(i32 7, float %3936)  ; Saturate(value)
  %3939 = fsub fast float 1.000000e+00, %3937
  %3940 = fsub fast float 1.000000e+00, %3938
  %3941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %3939, float %3940, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3942 = extractvalue %dx.types.ResRet.f32 %3941, 0
  %3943 = fcmp fast ugt float %3942, 0.000000e+00
  br i1 %3943, label %3944, label %4247

; <label>:3944                                    ; preds = %3906
  %3945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3946 = extractvalue %dx.types.CBufRet.f32 %3945, 2
  %3947 = fmul fast float %3946, %3942
  %3948 = extractvalue %dx.types.CBufRet.f32 %3945, 3
  %3949 = fadd fast float %3948, %3947
  %3950 = extractvalue %dx.types.CBufRet.f32 %3911, 2
  %3951 = fadd fast float %3949, %3918
  %3952 = fmul fast float %3924, %3912
  %3953 = call float @dx.op.tertiary.f32(i32 46, float %3927, float %3915, float %3952)  ; FMad(a,b,c)
  %3954 = call float @dx.op.tertiary.f32(i32 46, float %3951, float %3950, float %3953)  ; FMad(a,b,c)
  %3955 = fsub fast float %3954, %3918
  %3956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3957 = extractvalue %dx.types.CBufRet.f32 %3956, 2
  %3958 = fsub fast float %3955, %3957
  %3959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %3939, float %3940, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = extractvalue %dx.types.ResRet.f32 %3959, 1
  %3962 = extractvalue %dx.types.ResRet.f32 %3959, 2
  %3963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %3939, float %3940, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3964 = extractvalue %dx.types.ResRet.f32 %3963, 0
  %3965 = extractvalue %dx.types.ResRet.f32 %3963, 1
  %3966 = extractvalue %dx.types.ResRet.f32 %3963, 2
  %3967 = fadd fast float %3964, %3960
  %3968 = fmul fast float %3967, 0x3F847AE140000000
  %3969 = fadd fast float %3965, %3961
  %3970 = fmul fast float %3969, 0x3F847AE140000000
  %3971 = fadd fast float %3966, %3962
  %3972 = fmul fast float %3971, 0x3F847AE140000000
  br label %4247

; <label>:3973                                    ; preds = %3832
  %3974 = and i32 %229, 1
  %3975 = icmp eq i32 %3974, 0
  br i1 %3975, label %4247, label %3976

; <label>:3976                                    ; preds = %3973
  %3977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3977, 0
  %3979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3980 = extractvalue %dx.types.CBufRet.f32 %3979, 0
  %3981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3982 = extractvalue %dx.types.CBufRet.f32 %3981, 0
  %3983 = extractvalue %dx.types.CBufRet.f32 %3977, 1
  %3984 = extractvalue %dx.types.CBufRet.f32 %3979, 1
  %3985 = extractvalue %dx.types.CBufRet.f32 %3981, 1
  %3986 = extractvalue %dx.types.CBufRet.f32 %3977, 3
  %3987 = extractvalue %dx.types.CBufRet.f32 %3979, 3
  %3988 = extractvalue %dx.types.CBufRet.f32 %3981, 3
  %3989 = fadd fast float %3986, %3892
  %3990 = fadd fast float %3987, %3893
  %3991 = fadd fast float %3988, %3894
  %3992 = fmul fast float %3989, %3978
  %3993 = call float @dx.op.tertiary.f32(i32 46, float %3990, float %3980, float %3992)  ; FMad(a,b,c)
  %3994 = call float @dx.op.tertiary.f32(i32 46, float %3991, float %3982, float %3993)  ; FMad(a,b,c)
  %3995 = fmul fast float %3989, %3983
  %3996 = call float @dx.op.tertiary.f32(i32 46, float %3990, float %3984, float %3995)  ; FMad(a,b,c)
  %3997 = call float @dx.op.tertiary.f32(i32 46, float %3991, float %3985, float %3996)  ; FMad(a,b,c)
  %3998 = fsub fast float %3994, %3986
  %3999 = fsub fast float %3997, %3987
  %4000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4001 = extractvalue %dx.types.CBufRet.f32 %4000, 0
  %4002 = extractvalue %dx.types.CBufRet.f32 %4000, 1
  %4003 = extractvalue %dx.types.CBufRet.f32 %4000, 2
  %4004 = extractvalue %dx.types.CBufRet.f32 %4000, 3
  %4005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4006 = extractvalue %dx.types.CBufRet.f32 %4005, 3
  %4007 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4008 = extractvalue %dx.types.CBufRet.i32 %4007, 0
  %4009 = extractvalue %dx.types.CBufRet.i32 %4007, 1
  %4010 = udiv i32 %4009, %4008
  %4011 = fsub fast float %3998, %4001
  %4012 = fsub fast float %3999, %4002
  %4013 = call float @dx.op.binary.f32(i32 35, float %4011, float 0.000000e+00)  ; FMax(a,b)
  %4014 = call float @dx.op.binary.f32(i32 35, float %4012, float 0.000000e+00)  ; FMax(a,b)
  %4015 = call float @dx.op.binary.f32(i32 36, float %4013, float %4003)  ; FMin(a,b)
  %4016 = call float @dx.op.binary.f32(i32 36, float %4014, float %4004)  ; FMin(a,b)
  %4017 = add i32 %4008, -1
  %4018 = add i32 %4010, -1
  %4019 = fmul fast float %4015, %4006
  %4020 = fmul fast float %4016, %4006
  %4021 = fptoui float %4019 to i32
  %4022 = fptoui float %4020 to i32
  %4023 = call i32 @dx.op.binary.i32(i32 40, i32 %4021, i32 %4017)  ; UMin(a,b)
  %4024 = call i32 @dx.op.binary.i32(i32 40, i32 %4022, i32 %4018)  ; UMin(a,b)
  %4025 = mul i32 %4024, %4008
  %4026 = add i32 %4025, %4023
  %4027 = shl i32 %4026, 2
  %4028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4027, i32 undef)  ; BufferLoad(srv,index,wot)
  %4029 = extractvalue %dx.types.ResRet.i32 %4028, 0
  %4030 = icmp eq i32 %4029, -1
  br i1 %4030, label %4247, label %4031

; <label>:4031                                    ; preds = %3976
  %4032 = mul i32 %4029, 148
  %4033 = add i32 %4032, 4
  %4034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4033, i32 undef)  ; BufferLoad(srv,index,wot)
  %4035 = extractvalue %dx.types.ResRet.f32 %4034, 0
  %4036 = add i32 %4032, 8
  %4037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4036, i32 undef)  ; BufferLoad(srv,index,wot)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4039 = add i32 %4032, 36
  %4040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4039, i32 undef)  ; BufferLoad(srv,index,wot)
  %4041 = extractvalue %dx.types.ResRet.f32 %4040, 0
  %4042 = add i32 %4032, 60
  %4043 = add i32 %4032, 92
  %4044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4043, i32 undef)  ; BufferLoad(srv,index,wot)
  %4045 = extractvalue %dx.types.ResRet.i32 %4044, 0
  %4046 = add i32 %4032, 116
  %4047 = fsub fast float %3998, %4035
  %4048 = fsub fast float %3999, %4038
  %4049 = fmul fast float %4006, %4047
  %4050 = fmul fast float %4006, %4048
  %4051 = call float @dx.op.unary.f32(i32 7, float %4049)  ; Saturate(value)
  %4052 = call float @dx.op.unary.f32(i32 7, float %4050)  ; Saturate(value)
  %4053 = fsub fast float 1.000000e+00, %4052
  %4054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4055 = extractvalue %dx.types.CBufRet.f32 %4054, 2
  %4056 = call float @dx.op.unary.f32(i32 83, float %4051)  ; DerivCoarseX(value)
  %4057 = call float @dx.op.unary.f32(i32 83, float %4053)  ; DerivCoarseX(value)
  %4058 = call float @dx.op.unary.f32(i32 84, float %4051)  ; DerivCoarseY(value)
  %4059 = call float @dx.op.unary.f32(i32 84, float %4053)  ; DerivCoarseY(value)
  %4060 = fmul fast float %4056, %4055
  %4061 = fmul fast float %4057, %4055
  %4062 = fmul fast float %4058, %4055
  %4063 = fmul fast float %4059, %4055
  %4064 = call float @dx.op.dot2.f32(i32 54, float %4062, float %4063, float %4062, float %4063)  ; Dot2(ax,ay,bx,by)
  %4065 = call float @dx.op.dot2.f32(i32 54, float %4060, float %4061, float %4060, float %4061)  ; Dot2(ax,ay,bx,by)
  %4066 = call float @dx.op.binary.f32(i32 35, float %4065, float %4064)  ; FMax(a,b)
  %4067 = call float @dx.op.unary.f32(i32 23, float %4066)  ; Log(value)
  %4068 = fmul fast float %4067, 5.000000e-01
  %4069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4070 = extractvalue %dx.types.CBufRet.f32 %4069, 1
  %4071 = fadd fast float %4070, %4068
  %4072 = call float @dx.op.binary.f32(i32 35, float %4071, float 0.000000e+00)  ; FMax(a,b)
  %4073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4074 = extractvalue %dx.types.CBufRet.f32 %4073, 3
  %4075 = fadd fast float %4074, %4072
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 3
  %4078 = fadd fast float %4075, %4077
  %4079 = add i32 %4045, 0
  %4080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4079, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4081 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4080, i32 0)  ; GetDimensions(handle,mipLevel)
  %4082 = extractvalue %dx.types.Dimensions %4081, 0
  %4083 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4082)  ; FirstbitLo(value)
  %4084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.i32 %4084, 1
  %4086 = sub nsw i32 %4085, %4083
  %4087 = sitofp i32 %4086 to float
  %4088 = fsub fast float %4078, %4087
  %4089 = call float @dx.op.binary.f32(i32 35, float %4088, float 0.000000e+00)  ; FMax(a,b)
  %4090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4080, %dx.types.Handle %46, float %4051, float %4053, float %4041, float undef, i32 0, i32 0, i32 undef, float %4089)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4091 = extractvalue %dx.types.ResRet.f32 %4090, 0
  %4092 = fcmp ule float %4091, 0x3FE0101020000000
  %4093 = extractvalue %dx.types.CBufRet.i32 %4084, 0
  %4094 = and i32 %4093, 128
  %4095 = icmp ne i32 %4094, 0
  %4096 = and i1 %4092, %4095
  br i1 %4096, label %4247, label %4097

; <label>:4097                                    ; preds = %4031
  %4098 = add i32 %4032, 20
  %4099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4098, i32 undef)  ; BufferLoad(srv,index,wot)
  %4100 = extractvalue %dx.types.ResRet.f32 %4099, 0
  %4101 = add i32 %4032, 24
  %4102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4101, i32 undef)  ; BufferLoad(srv,index,wot)
  %4103 = extractvalue %dx.types.ResRet.f32 %4102, 0
  %4104 = add i32 %4032, 40
  %4105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4104, i32 undef)  ; BufferLoad(srv,index,wot)
  %4106 = extractvalue %dx.types.ResRet.f32 %4105, 0
  %4107 = add i32 %4032, 96
  %4108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4107, i32 undef)  ; BufferLoad(srv,index,wot)
  %4109 = extractvalue %dx.types.ResRet.i32 %4108, 0
  %4110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.f32 %4110, 2
  %4112 = fmul fast float %4111, %4051
  %4113 = fmul fast float %4111, %4053
  %4114 = extractvalue %dx.types.CBufRet.f32 %4110, 3
  %4115 = fadd fast float %4112, %4114
  %4116 = fadd fast float %4113, %4114
  %4117 = add i32 %4109, 0
  %4118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4117, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4119 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4118, i32 0)  ; GetDimensions(handle,mipLevel)
  %4120 = extractvalue %dx.types.Dimensions %4119, 0
  %4121 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4120)  ; FirstbitLo(value)
  %4122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.i32 %4122, 1
  %4124 = sub nsw i32 %4123, %4121
  %4125 = sitofp i32 %4124 to float
  %4126 = fsub fast float %4075, %4125
  %4127 = call float @dx.op.binary.f32(i32 35, float %4126, float 0.000000e+00)  ; FMax(a,b)
  %4128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4118, %dx.types.Handle %46, float %4115, float %4116, float %4106, float undef, i32 0, i32 0, i32 undef, float %4127)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4129 = extractvalue %dx.types.ResRet.f32 %4128, 0
  %4130 = fmul fast float %4129, %4100
  %4131 = fadd fast float %4130, %4103
  %4132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.f32 %4132, 0
  %4134 = extractvalue %dx.types.CBufRet.f32 %4132, 1
  %4135 = extractvalue %dx.types.CBufRet.f32 %4132, 2
  %4136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4137 = extractvalue %dx.types.CBufRet.f32 %4136, 3
  %4138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4139 = extractvalue %dx.types.CBufRet.f32 %4138, 3
  %4140 = extractvalue %dx.types.CBufRet.f32 %4132, 3
  %4141 = fadd fast float %4137, %3998
  %4142 = fadd fast float %4139, %3999
  %4143 = fadd fast float %4131, %4140
  %4144 = fmul fast float %4141, %4133
  %4145 = call float @dx.op.tertiary.f32(i32 46, float %4142, float %4134, float %4144)  ; FMad(a,b,c)
  %4146 = call float @dx.op.tertiary.f32(i32 46, float %4143, float %4135, float %4145)  ; FMad(a,b,c)
  %4147 = fsub fast float %4146, %4140
  %4148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4149 = extractvalue %dx.types.CBufRet.f32 %4148, 2
  %4150 = fsub fast float %4147, %4149
  %4151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.i32 %4151, 0
  %4153 = call i32 @dx.op.binary.i32(i32 40, i32 %4029, i32 %4152)  ; UMin(a,b)
  %4154 = mul i32 %4153, 36
  %4155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4154, i32 undef)  ; BufferLoad(srv,index,wot)
  %4156 = extractvalue %dx.types.ResRet.i32 %4155, 0
  %4157 = add i32 %4154, 4
  %4158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4159 = extractvalue %dx.types.CBufRet.f32 %4158, 0
  %4160 = fmul fast float %4159, %4051
  %4161 = fmul fast float %4159, %4053
  %4162 = extractvalue %dx.types.CBufRet.f32 %4158, 1
  %4163 = fadd fast float %4160, %4162
  %4164 = fadd fast float %4161, %4162
  %4165 = icmp eq i32 %4156, 0
  br i1 %4165, label %4234, label %4166

; <label>:4166                                    ; preds = %4097
  br label %4167

; <label>:4167                                    ; preds = %4224, %4166
  %4168 = phi float [ %4225, %4224 ], [ 0.000000e+00, %4166 ]
  %4169 = phi float [ %4226, %4224 ], [ 0.000000e+00, %4166 ]
  %4170 = phi float [ %4227, %4224 ], [ 0.000000e+00, %4166 ]
  %4171 = phi float [ %4228, %4224 ], [ 0.000000e+00, %4166 ]
  %4172 = phi float [ %4229, %4224 ], [ 0.000000e+00, %4166 ]
  %4173 = phi float [ %4230, %4224 ], [ 0.000000e+00, %4166 ]
  %4174 = phi i32 [ %4231, %4224 ], [ 0, %4166 ]
  %4175 = shl i32 %4174, 2
  %4176 = add i32 %4042, %4175
  %4177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4176, i32 undef)  ; BufferLoad(srv,index,wot)
  %4178 = extractvalue %dx.types.ResRet.f32 %4177, 0
  %4179 = add i32 %4046, %4175
  %4180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4179, i32 undef)  ; BufferLoad(srv,index,wot)
  %4181 = extractvalue %dx.types.ResRet.i32 %4180, 0
  %4182 = add i32 %4181, 0
  %4183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4182, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4184 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4183, i32 0)  ; GetDimensions(handle,mipLevel)
  %4185 = extractvalue %dx.types.Dimensions %4184, 0
  %4186 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4185)  ; FirstbitLo(value)
  %4187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4188 = extractvalue %dx.types.CBufRet.i32 %4187, 1
  %4189 = sub nsw i32 %4188, %4186
  %4190 = sitofp i32 %4189 to float
  %4191 = fsub fast float %4075, %4190
  %4192 = call float @dx.op.binary.f32(i32 35, float %4191, float 0.000000e+00)  ; FMax(a,b)
  %4193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4183, %dx.types.Handle %46, float %4163, float %4164, float %4178, float undef, i32 0, i32 0, i32 undef, float %4192)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4194 = extractvalue %dx.types.ResRet.f32 %4193, 0
  %4195 = fcmp fast ogt float %4194, 0.000000e+00
  br i1 %4195, label %4196, label %4224

; <label>:4196                                    ; preds = %4167
  %4197 = add i32 %4157, %4175
  %4198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4197, i32 undef)  ; BufferLoad(srv,index,wot)
  %4199 = extractvalue %dx.types.ResRet.i32 %4198, 0
  %4200 = and i32 %4199, 32767
  %4201 = mul nuw nsw i32 %4200, 928
  %4202 = add nuw nsw i32 %4201, 48
  %4203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4202, i32 undef)  ; BufferLoad(srv,index,wot)
  %4204 = extractvalue %dx.types.ResRet.f32 %4203, 0
  %4205 = extractvalue %dx.types.ResRet.f32 %4203, 1
  %4206 = extractvalue %dx.types.ResRet.f32 %4203, 2
  %4207 = add nuw nsw i32 %4201, 60
  %4208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4207, i32 undef)  ; BufferLoad(srv,index,wot)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 0
  %4210 = extractvalue %dx.types.ResRet.f32 %4208, 1
  %4211 = extractvalue %dx.types.ResRet.f32 %4208, 2
  %4212 = fmul fast float %4204, %4194
  %4213 = fmul fast float %4205, %4194
  %4214 = fmul fast float %4206, %4194
  %4215 = fadd fast float %4212, %4168
  %4216 = fadd fast float %4213, %4169
  %4217 = fadd fast float %4214, %4170
  %4218 = fmul fast float %4209, %4194
  %4219 = fmul fast float %4210, %4194
  %4220 = fmul fast float %4211, %4194
  %4221 = fadd fast float %4218, %4171
  %4222 = fadd fast float %4219, %4172
  %4223 = fadd fast float %4220, %4173
  br label %4224

; <label>:4224                                    ; preds = %4196, %4167
  %4225 = phi float [ %4215, %4196 ], [ %4168, %4167 ]
  %4226 = phi float [ %4216, %4196 ], [ %4169, %4167 ]
  %4227 = phi float [ %4217, %4196 ], [ %4170, %4167 ]
  %4228 = phi float [ %4221, %4196 ], [ %4171, %4167 ]
  %4229 = phi float [ %4222, %4196 ], [ %4172, %4167 ]
  %4230 = phi float [ %4223, %4196 ], [ %4173, %4167 ]
  %4231 = add nuw i32 %4174, 1
  %4232 = icmp eq i32 %4231, %4156
  br i1 %4232, label %4233, label %4167

; <label>:4233                                    ; preds = %4224
  br label %4234

; <label>:4234                                    ; preds = %4233, %4097
  %4235 = phi float [ 0.000000e+00, %4097 ], [ %4225, %4233 ]
  %4236 = phi float [ 0.000000e+00, %4097 ], [ %4226, %4233 ]
  %4237 = phi float [ 0.000000e+00, %4097 ], [ %4227, %4233 ]
  %4238 = phi float [ 0.000000e+00, %4097 ], [ %4228, %4233 ]
  %4239 = phi float [ 0.000000e+00, %4097 ], [ %4229, %4233 ]
  %4240 = phi float [ 0.000000e+00, %4097 ], [ %4230, %4233 ]
  %4241 = fadd fast float %4238, %4235
  %4242 = fmul fast float %4241, 0x3F847AE140000000
  %4243 = fadd fast float %4239, %4236
  %4244 = fmul fast float %4243, 0x3F847AE140000000
  %4245 = fadd fast float %4240, %4237
  %4246 = fmul fast float %4245, 0x3F847AE140000000
  br label %4247

; <label>:4247                                    ; preds = %4234, %4031, %3976, %3973, %3944, %3906
  %4248 = phi float [ %3958, %3944 ], [ -1.310720e+05, %3906 ], [ %4150, %4234 ], [ -1.310720e+05, %3976 ], [ -1.310720e+05, %4031 ], [ -1.310720e+05, %3973 ]
  %4249 = phi float [ %3968, %3944 ], [ 0.000000e+00, %3906 ], [ %4242, %4234 ], [ 0.000000e+00, %3976 ], [ 0.000000e+00, %4031 ], [ 0.000000e+00, %3973 ]
  %4250 = phi float [ %3970, %3944 ], [ 0.000000e+00, %3906 ], [ %4244, %4234 ], [ 0.000000e+00, %3976 ], [ 0.000000e+00, %4031 ], [ 0.000000e+00, %3973 ]
  %4251 = phi float [ %3972, %3944 ], [ 0.000000e+00, %3906 ], [ %4246, %4234 ], [ 0.000000e+00, %3976 ], [ 0.000000e+00, %4031 ], [ 0.000000e+00, %3973 ]
  %4252 = phi i1 [ true, %3944 ], [ false, %3906 ], [ true, %4234 ], [ false, %3976 ], [ false, %4031 ], [ false, %3973 ]
  %4253 = and i32 %229, 3
  %4254 = icmp eq i32 %4253, 1
  %4255 = select i1 %4254, float 1.000000e+00, float 0.000000e+00
  %4256 = fsub fast float %4248, %193
  %4257 = call float @dx.op.unary.f32(i32 7, float %4256)  ; Saturate(value)
  %4258 = select i1 %4252, float %4257, float 1.000000e+00
  %4259 = fmul fast float %4258, %4255
  %4260 = icmp eq i32 %4253, 3
  %4261 = select i1 %4260, float 1.000000e+00, float %4259
  %4262 = call float @dx.op.binary.f32(i32 35, float %3848, float %4261)  ; FMax(a,b)
  %4263 = fcmp fast olt float %4261, 1.000000e+00
  %4264 = fcmp uge float %69, 0.000000e+00
  %4265 = and i1 %4264, %4263
  br i1 %4265, label %4266, label %4276

; <label>:4266                                    ; preds = %4247
  %4267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %46, float %69, float %70, float %71, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4268 = extractvalue %dx.types.ResRet.f32 %4267, 0
  %4269 = extractvalue %dx.types.ResRet.f32 %4267, 1
  %4270 = extractvalue %dx.types.ResRet.f32 %4267, 2
  %4271 = fadd fast float %4268, %4262
  %4272 = fcmp ule float %68, 0.000000e+00
  %4273 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4274 = select i1 %4272, float %4273, float 1.000000e+00
  %4275 = fmul fast float %4274, %4270
  br label %4276

; <label>:4276                                    ; preds = %4266, %4247
  %4277 = phi float [ %4271, %4266 ], [ %4262, %4247 ]
  %4278 = phi float [ %4269, %4266 ], [ 0.000000e+00, %4247 ]
  %4279 = phi float [ %4275, %4266 ], [ 0.000000e+00, %4247 ]
  %4280 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4281 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4282 = call float @dx.op.unary.f32(i32 7, float %4279)  ; Saturate(value)
  %4283 = fcmp fast une float %4281, 0.000000e+00
  %4284 = fcmp fast une float %4282, 0.000000e+00
  %4285 = or i1 %4283, %4284
  br i1 %4285, label %4286, label %4845

; <label>:4286                                    ; preds = %4276
  br i1 %4283, label %4287, label %4560

; <label>:4287                                    ; preds = %4286
  %4288 = call float @dx.op.unary.f32(i32 23, float %3845)  ; Log(value)
  %4289 = fmul fast float %4288, 4.000000e+00
  %4290 = call float @dx.op.unary.f32(i32 21, float %4289)  ; Exp(value)
  %4291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.f32 %4291, 0
  %4293 = fmul fast float %4292, %56
  %4294 = fmul fast float %4292, %57
  %4295 = fmul fast float %4292, %58
  %4296 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4297 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4298 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4299 = call float @dx.op.unary.f32(i32 23, float %4296)  ; Log(value)
  %4300 = call float @dx.op.unary.f32(i32 23, float %4297)  ; Log(value)
  %4301 = call float @dx.op.unary.f32(i32 23, float %4298)  ; Log(value)
  %4302 = fmul fast float %4299, 4.000000e+00
  %4303 = fmul fast float %4300, 4.000000e+00
  %4304 = fmul fast float %4301, 4.000000e+00
  %4305 = call float @dx.op.unary.f32(i32 21, float %4302)  ; Exp(value)
  %4306 = call float @dx.op.unary.f32(i32 21, float %4303)  ; Exp(value)
  %4307 = call float @dx.op.unary.f32(i32 21, float %4304)  ; Exp(value)
  %4308 = fadd fast float %4306, %4305
  %4309 = fadd fast float %4308, %4307
  %4310 = fdiv fast float 1.000000e+00, %4309
  %4311 = fmul fast float %4310, %4305
  %4312 = fcmp fast ogt float %65, 0.000000e+00
  %4313 = fcmp fast ogt float %66, 0.000000e+00
  %4314 = fcmp fast ogt float %67, 0.000000e+00
  %4315 = fcmp fast olt float %65, 0.000000e+00
  %4316 = fcmp fast olt float %66, 0.000000e+00
  %4317 = fcmp fast olt float %67, 0.000000e+00
  %4318 = zext i1 %4312 to i32
  %4319 = zext i1 %4313 to i32
  %4320 = zext i1 %4314 to i32
  %4321 = zext i1 %4315 to i32
  %4322 = zext i1 %4316 to i32
  %4323 = zext i1 %4317 to i32
  %4324 = sub nsw i32 %4318, %4321
  %4325 = sub nsw i32 %4319, %4322
  %4326 = sub nsw i32 %4320, %4323
  %4327 = call float @dx.op.unary.f32(i32 83, float %4293)  ; DerivCoarseX(value)
  %4328 = call float @dx.op.unary.f32(i32 83, float %4294)  ; DerivCoarseX(value)
  %4329 = call float @dx.op.unary.f32(i32 83, float %4295)  ; DerivCoarseX(value)
  %4330 = call float @dx.op.unary.f32(i32 84, float %4293)  ; DerivCoarseY(value)
  %4331 = call float @dx.op.unary.f32(i32 84, float %4294)  ; DerivCoarseY(value)
  %4332 = call float @dx.op.unary.f32(i32 84, float %4295)  ; DerivCoarseY(value)
  %4333 = fcmp fast ole float %261, %4311
  %4334 = fmul fast float %4310, %4308
  %4335 = fcmp fast ole float %261, %4334
  %4336 = select i1 %4335, float %4295, float %4293
  %4337 = select i1 %4335, float %4293, float %4294
  %4338 = select i1 %4333, float %4294, float %4336
  %4339 = select i1 %4333, float %4295, float %4337
  %4340 = select i1 %4335, float %4329, float %4327
  %4341 = select i1 %4335, float %4327, float %4328
  %4342 = select i1 %4333, float %4328, float %4340
  %4343 = select i1 %4333, float %4329, float %4341
  %4344 = select i1 %4335, float %4332, float %4330
  %4345 = select i1 %4335, float %4330, float %4331
  %4346 = select i1 %4333, float %4331, float %4344
  %4347 = select i1 %4333, float %4332, float %4345
  %4348 = call float @dx.op.unary.f32(i32 27, float %4338)  ; Round_ni(value)
  %4349 = call float @dx.op.unary.f32(i32 27, float %4339)  ; Round_ni(value)
  %4350 = fptosi float %4348 to i32
  %4351 = fptosi float %4349 to i32
  %4352 = xor i32 %4351, %4350
  %4353 = sitofp i32 %4352 to float
  %4354 = fptosi float %4353 to i32
  %4355 = sitofp i32 %4354 to float
  %4356 = fmul fast float %4355, 0x3FE3C6EF40000000
  %4357 = frem fast float %4348, 2.560000e+02
  %4358 = frem fast float %4349, 2.560000e+02
  %4359 = fptoui float %4357 to i32
  %4360 = fptoui float %4358 to i32
  %4361 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4359, i32 %4360, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4362 = extractvalue %dx.types.ResRet.f32 %4361, 0
  %4363 = extractvalue %dx.types.ResRet.f32 %4361, 1
  %4364 = extractvalue %dx.types.ResRet.f32 %4361, 2
  %4365 = fadd fast float %4362, %4356
  %4366 = fadd fast float %4363, %4356
  %4367 = fadd fast float %4364, %4356
  %4368 = call float @dx.op.unary.f32(i32 22, float %4365)  ; Frc(value)
  %4369 = call float @dx.op.unary.f32(i32 22, float %4366)  ; Frc(value)
  %4370 = call float @dx.op.unary.f32(i32 22, float %4367)  ; Frc(value)
  %4371 = fmul fast float %4370, 0x401921FB60000000
  %4372 = call float @dx.op.unary.f32(i32 13, float %4371)  ; Sin(value)
  %4373 = call float @dx.op.unary.f32(i32 12, float %4371)  ; Cos(value)
  %4374 = fsub fast float -0.000000e+00, %4373
  %4375 = fmul fast float %4373, %4338
  %4376 = call float @dx.op.tertiary.f32(i32 46, float %4372, float %4339, float %4375)  ; FMad(a,b,c)
  %4377 = fmul fast float %4372, %4338
  %4378 = call float @dx.op.tertiary.f32(i32 46, float %4374, float %4339, float %4377)  ; FMad(a,b,c)
  %4379 = fadd fast float %4376, %4368
  %4380 = fadd fast float %4378, %4369
  %4381 = extractvalue %dx.types.CBufRet.f32 %4291, 3
  %4382 = bitcast float %4381 to i32
  %4383 = icmp eq i32 %4382, 0
  br i1 %4383, label %4422, label %4384

; <label>:4384                                    ; preds = %4287
  %4385 = add i32 %4382, 0
  %4386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4387 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4386, %dx.types.Handle %101, float %4379, float %4380, float undef, float undef, i32 0, i32 0, i32 undef, float %4342, float %4343, float undef, float %4346, float %4347, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4388 = extractvalue %dx.types.ResRet.f32 %4387, 0
  %4389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4390 = extractvalue %dx.types.CBufRet.f32 %4389, 1
  %4391 = extractvalue %dx.types.CBufRet.f32 %4389, 2
  %4392 = fsub fast float 1.000000e+00, %4281
  %4393 = call float @dx.op.binary.f32(i32 35, float %4392, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4394 = bitcast float %4281 to i32
  %4395 = sitofp i32 %4394 to float
  %4396 = fadd fast float %4395, 0xC1CFBF8940000000
  %4397 = fmul fast float %4391, %4396
  %4398 = fadd fast float %4397, 0x41CFBF8940000000
  %4399 = fptosi float %4398 to i32
  %4400 = bitcast i32 %4399 to float
  %4401 = bitcast float %4393 to i32
  %4402 = sitofp i32 %4401 to float
  %4403 = fadd fast float %4402, 0xC1CFBF8940000000
  %4404 = fmul fast float %4403, %4391
  %4405 = fadd fast float %4404, 0x41CFBF8940000000
  %4406 = fptosi float %4405 to i32
  %4407 = bitcast i32 %4406 to float
  %4408 = fmul fast float %4400, %4390
  %4409 = fmul fast float %4407, %4390
  %4410 = fsub fast float %4393, %4408
  %4411 = fadd fast float %4409, %4393
  %4412 = call float @dx.op.unary.f32(i32 7, float %4410)  ; Saturate(value)
  %4413 = call float @dx.op.unary.f32(i32 7, float %4411)  ; Saturate(value)
  %4414 = fsub fast float %4388, %4412
  %4415 = fsub fast float %4413, %4412
  %4416 = bitcast float %4415 to i32
  %4417 = sub nsw i32 2129859010, %4416
  %4418 = bitcast i32 %4417 to float
  %4419 = fmul fast float %4418, %4414
  %4420 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4421 = fcmp fast olt float %4420, 0x3F70101020000000
  br i1 %4421, label %4560, label %4422

; <label>:4422                                    ; preds = %4384, %4287
  %4423 = phi float [ %4420, %4384 ], [ %4281, %4287 ]
  %4424 = fmul fast float %4423, %4290
  %4425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4426 = extractvalue %dx.types.CBufRet.i32 %4425, 1
  %4427 = extractvalue %dx.types.CBufRet.i32 %4425, 0
  %4428 = add i32 %4427, 0
  %4429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4430 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4429, %dx.types.Handle %100, float %4379, float %4380, float undef, float undef, i32 0, i32 0, i32 undef, float %4342, float %4343, float undef, float %4346, float %4347, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4431 = extractvalue %dx.types.ResRet.f32 %4430, 0
  %4432 = extractvalue %dx.types.ResRet.f32 %4430, 1
  %4433 = extractvalue %dx.types.ResRet.f32 %4430, 2
  %4434 = extractvalue %dx.types.ResRet.f32 %4430, 3
  %4435 = and i32 %4426, 255
  %4436 = uitofp i32 %4435 to float
  %4437 = lshr i32 %4426, 8
  %4438 = and i32 %4437, 255
  %4439 = uitofp i32 %4438 to float
  %4440 = fmul fast float %4434, %4436
  %4441 = fadd fast float %4440, %4439
  %4442 = fmul fast float %4441, 0x3F70101000000000
  %4443 = fadd fast float %4442, 0xBFB99999A0000000
  %4444 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4445 = fmul fast float %4444, 0x3FF1C71C80000000
  %4446 = call float @dx.op.binary.f32(i32 36, float %4442, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4447 = fsub fast float 1.000000e+00, %4445
  %4448 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4449 = fmul fast float %4448, %4431
  %4450 = fmul fast float %4448, %4432
  %4451 = fmul fast float %4448, %4433
  %4452 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  %4453 = call float @dx.op.unary.f32(i32 7, float %4450)  ; Saturate(value)
  %4454 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4455 = fmul fast float %4445, %4431
  %4456 = fmul fast float %4445, %4432
  %4457 = fmul fast float %4445, %4433
  %4458 = fadd fast float %4455, %4446
  %4459 = fadd fast float %4456, %4446
  %4460 = fadd fast float %4457, %4446
  %4461 = call float @dx.op.unary.f32(i32 7, float %4458)  ; Saturate(value)
  %4462 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4463 = call float @dx.op.unary.f32(i32 7, float %4460)  ; Saturate(value)
  %4464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4465 = extractvalue %dx.types.CBufRet.i32 %4464, 3
  %4466 = extractvalue %dx.types.CBufRet.i32 %4464, 2
  %4467 = add i32 %4466, 0
  %4468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4469 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4468, %dx.types.Handle %100, float %4379, float %4380, float undef, float undef, i32 0, i32 0, i32 undef, float %4342, float %4343, float undef, float %4346, float %4347, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4470 = extractvalue %dx.types.ResRet.f32 %4469, 0
  %4471 = extractvalue %dx.types.ResRet.f32 %4469, 1
  %4472 = extractvalue %dx.types.ResRet.f32 %4469, 2
  %4473 = extractvalue %dx.types.ResRet.f32 %4469, 3
  %4474 = and i32 %4465, 255
  %4475 = uitofp i32 %4474 to float
  %4476 = lshr i32 %4465, 8
  %4477 = and i32 %4476, 255
  %4478 = uitofp i32 %4477 to float
  %4479 = lshr i32 %4465, 16
  %4480 = and i32 %4479, 255
  %4481 = uitofp i32 %4480 to float
  %4482 = fmul fast float %4481, 0x3F70101000000000
  %4483 = fmul fast float %4470, %4475
  %4484 = fadd fast float %4483, %4478
  %4485 = fmul fast float %4484, 0x3F70101000000000
  %4486 = fadd fast float %4471, -5.000000e-01
  %4487 = fadd fast float %4473, -5.000000e-01
  %4488 = fmul fast float %4486, %4482
  %4489 = fmul fast float %4487, %4482
  %4490 = fadd fast float %4488, 5.000000e-01
  %4491 = fadd fast float %4489, 5.000000e-01
  %4492 = fmul fast float %4490, 2.000000e+00
  %4493 = fadd fast float %4492, -1.000000e+00
  %4494 = fmul fast float %4491, 2.000000e+00
  %4495 = fadd fast float %4494, -1.000000e+00
  %4496 = fadd fast float %4493, %4495
  %4497 = fmul fast float %4496, 5.000000e-01
  %4498 = fsub fast float %4493, %4495
  %4499 = fmul fast float %4498, 5.000000e-01
  %4500 = call float @dx.op.unary.f32(i32 6, float %4497)  ; FAbs(value)
  %4501 = fsub fast float 1.000000e+00, %4500
  %4502 = call float @dx.op.unary.f32(i32 6, float %4499)  ; FAbs(value)
  %4503 = fsub fast float %4501, %4502
  %4504 = call float @dx.op.dot3.f32(i32 55, float %4497, float %4499, float %4503, float %4497, float %4499, float %4503)  ; Dot3(ax,ay,az,bx,by,bz)
  %4505 = call float @dx.op.unary.f32(i32 25, float %4504)  ; Rsqrt(value)
  %4506 = fmul fast float %4497, %4505
  %4507 = fmul fast float %4499, %4505
  %4508 = select i1 %4335, i32 %4325, i32 %4326
  %4509 = select i1 %4333, i32 %4324, i32 %4508
  %4510 = sitofp i32 %4509 to float
  %4511 = fmul fast float %4503, %4510
  %4512 = fmul fast float %4511, %4505
  %4513 = select i1 %4335, float %4512, float %4507
  %4514 = select i1 %4335, float %4507, float %4512
  %4515 = select i1 %4333, float %4512, float %4506
  %4516 = select i1 %4333, float %4507, float %4513
  %4517 = select i1 %4333, float %4506, float %4514
  %4518 = fsub fast float %4452, %3885
  %4519 = fsub fast float %4453, %3886
  %4520 = fsub fast float %4454, %3887
  %4521 = fmul fast float %4518, %4424
  %4522 = fmul fast float %4519, %4424
  %4523 = fmul fast float %4520, %4424
  %4524 = fadd fast float %4521, %3885
  %4525 = fadd fast float %4522, %3886
  %4526 = fadd fast float %4523, %3887
  %4527 = fsub fast float %4461, %3870
  %4528 = fsub fast float %4462, %3871
  %4529 = fsub fast float %4463, %3872
  %4530 = fmul fast float %4527, %4424
  %4531 = fmul fast float %4528, %4424
  %4532 = fmul fast float %4529, %4424
  %4533 = fadd fast float %4530, %3870
  %4534 = fadd fast float %4531, %3871
  %4535 = fadd fast float %4532, %3872
  %4536 = fadd fast float %4515, %3833
  %4537 = fadd fast float %4516, %3834
  %4538 = fadd fast float %4517, %3835
  %4539 = call float @dx.op.dot3.f32(i32 55, float %4536, float %4537, float %4538, float %4536, float %4537, float %4538)  ; Dot3(ax,ay,az,bx,by,bz)
  %4540 = call float @dx.op.unary.f32(i32 25, float %4539)  ; Rsqrt(value)
  %4541 = fmul fast float %4536, %4540
  %4542 = fmul fast float %4537, %4540
  %4543 = fmul fast float %4538, %4540
  %4544 = fsub fast float %4541, %3833
  %4545 = fsub fast float %4542, %3834
  %4546 = fsub fast float %4543, %3835
  %4547 = fmul fast float %4544, %4424
  %4548 = fmul fast float %4545, %4424
  %4549 = fmul fast float %4546, %4424
  %4550 = fadd fast float %4547, %3833
  %4551 = fadd fast float %4548, %3834
  %4552 = fadd fast float %4549, %3835
  %4553 = call float @dx.op.binary.f32(i32 36, float %3845, float %4472)  ; FMin(a,b)
  %4554 = fsub fast float %4553, %3845
  %4555 = fmul fast float %4554, %4424
  %4556 = fadd fast float %4555, %3845
  %4557 = fsub fast float %4485, %3873
  %4558 = fmul fast float %4557, %4424
  %4559 = fadd fast float %4558, %3873
  br label %4560

; <label>:4560                                    ; preds = %4422, %4384, %4286
  %4561 = phi float [ %4524, %4422 ], [ %3885, %4384 ], [ %3885, %4286 ]
  %4562 = phi float [ %4525, %4422 ], [ %3886, %4384 ], [ %3886, %4286 ]
  %4563 = phi float [ %4526, %4422 ], [ %3887, %4384 ], [ %3887, %4286 ]
  %4564 = phi float [ %4533, %4422 ], [ %3870, %4384 ], [ %3870, %4286 ]
  %4565 = phi float [ %4534, %4422 ], [ %3871, %4384 ], [ %3871, %4286 ]
  %4566 = phi float [ %4535, %4422 ], [ %3872, %4384 ], [ %3872, %4286 ]
  %4567 = phi float [ %4550, %4422 ], [ %3833, %4384 ], [ %3833, %4286 ]
  %4568 = phi float [ %4551, %4422 ], [ %3834, %4384 ], [ %3834, %4286 ]
  %4569 = phi float [ %4552, %4422 ], [ %3835, %4384 ], [ %3835, %4286 ]
  %4570 = phi float [ %4559, %4422 ], [ %3873, %4384 ], [ %3873, %4286 ]
  %4571 = phi float [ %4556, %4422 ], [ %3845, %4384 ], [ %3845, %4286 ]
  br i1 %4284, label %4572, label %4845

; <label>:4572                                    ; preds = %4560
  %4573 = call float @dx.op.unary.f32(i32 23, float %4571)  ; Log(value)
  %4574 = fmul fast float %4573, 4.000000e+00
  %4575 = call float @dx.op.unary.f32(i32 21, float %4574)  ; Exp(value)
  %4576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4577 = extractvalue %dx.types.CBufRet.f32 %4576, 0
  %4578 = fmul fast float %4577, %56
  %4579 = fmul fast float %4577, %57
  %4580 = fmul fast float %4577, %58
  %4581 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4582 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4583 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4584 = call float @dx.op.unary.f32(i32 23, float %4581)  ; Log(value)
  %4585 = call float @dx.op.unary.f32(i32 23, float %4582)  ; Log(value)
  %4586 = call float @dx.op.unary.f32(i32 23, float %4583)  ; Log(value)
  %4587 = fmul fast float %4584, 4.000000e+00
  %4588 = fmul fast float %4585, 4.000000e+00
  %4589 = fmul fast float %4586, 4.000000e+00
  %4590 = call float @dx.op.unary.f32(i32 21, float %4587)  ; Exp(value)
  %4591 = call float @dx.op.unary.f32(i32 21, float %4588)  ; Exp(value)
  %4592 = call float @dx.op.unary.f32(i32 21, float %4589)  ; Exp(value)
  %4593 = fadd fast float %4591, %4590
  %4594 = fadd fast float %4593, %4592
  %4595 = fdiv fast float 1.000000e+00, %4594
  %4596 = fmul fast float %4595, %4590
  %4597 = fcmp fast ogt float %65, 0.000000e+00
  %4598 = fcmp fast ogt float %66, 0.000000e+00
  %4599 = fcmp fast ogt float %67, 0.000000e+00
  %4600 = fcmp fast olt float %65, 0.000000e+00
  %4601 = fcmp fast olt float %66, 0.000000e+00
  %4602 = fcmp fast olt float %67, 0.000000e+00
  %4603 = zext i1 %4597 to i32
  %4604 = zext i1 %4598 to i32
  %4605 = zext i1 %4599 to i32
  %4606 = zext i1 %4600 to i32
  %4607 = zext i1 %4601 to i32
  %4608 = zext i1 %4602 to i32
  %4609 = sub nsw i32 %4603, %4606
  %4610 = sub nsw i32 %4604, %4607
  %4611 = sub nsw i32 %4605, %4608
  %4612 = call float @dx.op.unary.f32(i32 83, float %4578)  ; DerivCoarseX(value)
  %4613 = call float @dx.op.unary.f32(i32 83, float %4579)  ; DerivCoarseX(value)
  %4614 = call float @dx.op.unary.f32(i32 83, float %4580)  ; DerivCoarseX(value)
  %4615 = call float @dx.op.unary.f32(i32 84, float %4578)  ; DerivCoarseY(value)
  %4616 = call float @dx.op.unary.f32(i32 84, float %4579)  ; DerivCoarseY(value)
  %4617 = call float @dx.op.unary.f32(i32 84, float %4580)  ; DerivCoarseY(value)
  %4618 = fcmp fast ole float %261, %4596
  %4619 = fmul fast float %4595, %4593
  %4620 = fcmp fast ole float %261, %4619
  %4621 = select i1 %4620, float %4580, float %4578
  %4622 = select i1 %4620, float %4578, float %4579
  %4623 = select i1 %4618, float %4579, float %4621
  %4624 = select i1 %4618, float %4580, float %4622
  %4625 = select i1 %4620, float %4614, float %4612
  %4626 = select i1 %4620, float %4612, float %4613
  %4627 = select i1 %4618, float %4613, float %4625
  %4628 = select i1 %4618, float %4614, float %4626
  %4629 = select i1 %4620, float %4617, float %4615
  %4630 = select i1 %4620, float %4615, float %4616
  %4631 = select i1 %4618, float %4616, float %4629
  %4632 = select i1 %4618, float %4617, float %4630
  %4633 = call float @dx.op.unary.f32(i32 27, float %4623)  ; Round_ni(value)
  %4634 = call float @dx.op.unary.f32(i32 27, float %4624)  ; Round_ni(value)
  %4635 = fptosi float %4633 to i32
  %4636 = fptosi float %4634 to i32
  %4637 = xor i32 %4636, %4635
  %4638 = sitofp i32 %4637 to float
  %4639 = fptosi float %4638 to i32
  %4640 = sitofp i32 %4639 to float
  %4641 = fmul fast float %4640, 0x3FE3C6EF40000000
  %4642 = frem fast float %4633, 2.560000e+02
  %4643 = frem fast float %4634, 2.560000e+02
  %4644 = fptoui float %4642 to i32
  %4645 = fptoui float %4643 to i32
  %4646 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4644, i32 %4645, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4647 = extractvalue %dx.types.ResRet.f32 %4646, 0
  %4648 = extractvalue %dx.types.ResRet.f32 %4646, 1
  %4649 = extractvalue %dx.types.ResRet.f32 %4646, 2
  %4650 = fadd fast float %4647, %4641
  %4651 = fadd fast float %4648, %4641
  %4652 = fadd fast float %4649, %4641
  %4653 = call float @dx.op.unary.f32(i32 22, float %4650)  ; Frc(value)
  %4654 = call float @dx.op.unary.f32(i32 22, float %4651)  ; Frc(value)
  %4655 = call float @dx.op.unary.f32(i32 22, float %4652)  ; Frc(value)
  %4656 = fmul fast float %4655, 0x401921FB60000000
  %4657 = call float @dx.op.unary.f32(i32 13, float %4656)  ; Sin(value)
  %4658 = call float @dx.op.unary.f32(i32 12, float %4656)  ; Cos(value)
  %4659 = fsub fast float -0.000000e+00, %4658
  %4660 = fmul fast float %4658, %4623
  %4661 = call float @dx.op.tertiary.f32(i32 46, float %4657, float %4624, float %4660)  ; FMad(a,b,c)
  %4662 = fmul fast float %4657, %4623
  %4663 = call float @dx.op.tertiary.f32(i32 46, float %4659, float %4624, float %4662)  ; FMad(a,b,c)
  %4664 = fadd fast float %4661, %4653
  %4665 = fadd fast float %4663, %4654
  %4666 = extractvalue %dx.types.CBufRet.f32 %4576, 3
  %4667 = bitcast float %4666 to i32
  %4668 = icmp eq i32 %4667, 0
  br i1 %4668, label %4707, label %4669

; <label>:4669                                    ; preds = %4572
  %4670 = add i32 %4667, 0
  %4671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4670, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4672 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4671, %dx.types.Handle %101, float %4664, float %4665, float undef, float undef, i32 0, i32 0, i32 undef, float %4627, float %4628, float undef, float %4631, float %4632, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4673 = extractvalue %dx.types.ResRet.f32 %4672, 0
  %4674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4675 = extractvalue %dx.types.CBufRet.f32 %4674, 1
  %4676 = extractvalue %dx.types.CBufRet.f32 %4674, 2
  %4677 = fsub fast float 1.000000e+00, %4282
  %4678 = call float @dx.op.binary.f32(i32 35, float %4677, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4679 = bitcast float %4282 to i32
  %4680 = sitofp i32 %4679 to float
  %4681 = fadd fast float %4680, 0xC1CFBF8940000000
  %4682 = fmul fast float %4676, %4681
  %4683 = fadd fast float %4682, 0x41CFBF8940000000
  %4684 = fptosi float %4683 to i32
  %4685 = bitcast i32 %4684 to float
  %4686 = bitcast float %4678 to i32
  %4687 = sitofp i32 %4686 to float
  %4688 = fadd fast float %4687, 0xC1CFBF8940000000
  %4689 = fmul fast float %4688, %4676
  %4690 = fadd fast float %4689, 0x41CFBF8940000000
  %4691 = fptosi float %4690 to i32
  %4692 = bitcast i32 %4691 to float
  %4693 = fmul fast float %4685, %4675
  %4694 = fmul fast float %4692, %4675
  %4695 = fsub fast float %4678, %4693
  %4696 = fadd fast float %4694, %4678
  %4697 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4698 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4699 = fsub fast float %4673, %4697
  %4700 = fsub fast float %4698, %4697
  %4701 = bitcast float %4700 to i32
  %4702 = sub nsw i32 2129859010, %4701
  %4703 = bitcast i32 %4702 to float
  %4704 = fmul fast float %4703, %4699
  %4705 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4706 = fcmp fast olt float %4705, 0x3F70101020000000
  br i1 %4706, label %4845, label %4707

; <label>:4707                                    ; preds = %4669, %4572
  %4708 = phi float [ %4705, %4669 ], [ %4282, %4572 ]
  %4709 = fmul fast float %4708, %4575
  %4710 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4711 = extractvalue %dx.types.CBufRet.i32 %4710, 1
  %4712 = extractvalue %dx.types.CBufRet.i32 %4710, 0
  %4713 = add i32 %4712, 0
  %4714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4713, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4715 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4714, %dx.types.Handle %100, float %4664, float %4665, float undef, float undef, i32 0, i32 0, i32 undef, float %4627, float %4628, float undef, float %4631, float %4632, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4716 = extractvalue %dx.types.ResRet.f32 %4715, 0
  %4717 = extractvalue %dx.types.ResRet.f32 %4715, 1
  %4718 = extractvalue %dx.types.ResRet.f32 %4715, 2
  %4719 = extractvalue %dx.types.ResRet.f32 %4715, 3
  %4720 = and i32 %4711, 255
  %4721 = uitofp i32 %4720 to float
  %4722 = lshr i32 %4711, 8
  %4723 = and i32 %4722, 255
  %4724 = uitofp i32 %4723 to float
  %4725 = fmul fast float %4719, %4721
  %4726 = fadd fast float %4725, %4724
  %4727 = fmul fast float %4726, 0x3F70101000000000
  %4728 = fadd fast float %4727, 0xBFB99999A0000000
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = fmul fast float %4729, 0x3FF1C71C80000000
  %4731 = call float @dx.op.binary.f32(i32 36, float %4727, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4732 = fsub fast float 1.000000e+00, %4730
  %4733 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4734 = fmul fast float %4733, %4716
  %4735 = fmul fast float %4733, %4717
  %4736 = fmul fast float %4733, %4718
  %4737 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4738 = call float @dx.op.unary.f32(i32 7, float %4735)  ; Saturate(value)
  %4739 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4740 = fmul fast float %4730, %4716
  %4741 = fmul fast float %4730, %4717
  %4742 = fmul fast float %4730, %4718
  %4743 = fadd fast float %4740, %4731
  %4744 = fadd fast float %4741, %4731
  %4745 = fadd fast float %4742, %4731
  %4746 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4747 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4748 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4749 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4750 = extractvalue %dx.types.CBufRet.i32 %4749, 3
  %4751 = extractvalue %dx.types.CBufRet.i32 %4749, 2
  %4752 = add i32 %4751, 0
  %4753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4752, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4754 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4753, %dx.types.Handle %100, float %4664, float %4665, float undef, float undef, i32 0, i32 0, i32 undef, float %4627, float %4628, float undef, float %4631, float %4632, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4755 = extractvalue %dx.types.ResRet.f32 %4754, 0
  %4756 = extractvalue %dx.types.ResRet.f32 %4754, 1
  %4757 = extractvalue %dx.types.ResRet.f32 %4754, 2
  %4758 = extractvalue %dx.types.ResRet.f32 %4754, 3
  %4759 = and i32 %4750, 255
  %4760 = uitofp i32 %4759 to float
  %4761 = lshr i32 %4750, 8
  %4762 = and i32 %4761, 255
  %4763 = uitofp i32 %4762 to float
  %4764 = lshr i32 %4750, 16
  %4765 = and i32 %4764, 255
  %4766 = uitofp i32 %4765 to float
  %4767 = fmul fast float %4766, 0x3F70101000000000
  %4768 = fmul fast float %4755, %4760
  %4769 = fadd fast float %4768, %4763
  %4770 = fmul fast float %4769, 0x3F70101000000000
  %4771 = fadd fast float %4756, -5.000000e-01
  %4772 = fadd fast float %4758, -5.000000e-01
  %4773 = fmul fast float %4771, %4767
  %4774 = fmul fast float %4772, %4767
  %4775 = fadd fast float %4773, 5.000000e-01
  %4776 = fadd fast float %4774, 5.000000e-01
  %4777 = fmul fast float %4775, 2.000000e+00
  %4778 = fadd fast float %4777, -1.000000e+00
  %4779 = fmul fast float %4776, 2.000000e+00
  %4780 = fadd fast float %4779, -1.000000e+00
  %4781 = fadd fast float %4778, %4780
  %4782 = fmul fast float %4781, 5.000000e-01
  %4783 = fsub fast float %4778, %4780
  %4784 = fmul fast float %4783, 5.000000e-01
  %4785 = call float @dx.op.unary.f32(i32 6, float %4782)  ; FAbs(value)
  %4786 = fsub fast float 1.000000e+00, %4785
  %4787 = call float @dx.op.unary.f32(i32 6, float %4784)  ; FAbs(value)
  %4788 = fsub fast float %4786, %4787
  %4789 = call float @dx.op.dot3.f32(i32 55, float %4782, float %4784, float %4788, float %4782, float %4784, float %4788)  ; Dot3(ax,ay,az,bx,by,bz)
  %4790 = call float @dx.op.unary.f32(i32 25, float %4789)  ; Rsqrt(value)
  %4791 = fmul fast float %4782, %4790
  %4792 = fmul fast float %4784, %4790
  %4793 = select i1 %4620, i32 %4610, i32 %4611
  %4794 = select i1 %4618, i32 %4609, i32 %4793
  %4795 = sitofp i32 %4794 to float
  %4796 = fmul fast float %4788, %4795
  %4797 = fmul fast float %4796, %4790
  %4798 = select i1 %4620, float %4797, float %4792
  %4799 = select i1 %4620, float %4792, float %4797
  %4800 = select i1 %4618, float %4797, float %4791
  %4801 = select i1 %4618, float %4792, float %4798
  %4802 = select i1 %4618, float %4791, float %4799
  %4803 = fsub fast float %4737, %4561
  %4804 = fsub fast float %4738, %4562
  %4805 = fsub fast float %4739, %4563
  %4806 = fmul fast float %4803, %4709
  %4807 = fmul fast float %4804, %4709
  %4808 = fmul fast float %4805, %4709
  %4809 = fadd fast float %4806, %4561
  %4810 = fadd fast float %4807, %4562
  %4811 = fadd fast float %4808, %4563
  %4812 = fsub fast float %4746, %4564
  %4813 = fsub fast float %4747, %4565
  %4814 = fsub fast float %4748, %4566
  %4815 = fmul fast float %4812, %4709
  %4816 = fmul fast float %4813, %4709
  %4817 = fmul fast float %4814, %4709
  %4818 = fadd fast float %4815, %4564
  %4819 = fadd fast float %4816, %4565
  %4820 = fadd fast float %4817, %4566
  %4821 = fadd fast float %4800, %4567
  %4822 = fadd fast float %4801, %4568
  %4823 = fadd fast float %4802, %4569
  %4824 = call float @dx.op.dot3.f32(i32 55, float %4821, float %4822, float %4823, float %4821, float %4822, float %4823)  ; Dot3(ax,ay,az,bx,by,bz)
  %4825 = call float @dx.op.unary.f32(i32 25, float %4824)  ; Rsqrt(value)
  %4826 = fmul fast float %4821, %4825
  %4827 = fmul fast float %4822, %4825
  %4828 = fmul fast float %4823, %4825
  %4829 = fsub fast float %4826, %4567
  %4830 = fsub fast float %4827, %4568
  %4831 = fsub fast float %4828, %4569
  %4832 = fmul fast float %4829, %4709
  %4833 = fmul fast float %4830, %4709
  %4834 = fmul fast float %4831, %4709
  %4835 = fadd fast float %4832, %4567
  %4836 = fadd fast float %4833, %4568
  %4837 = fadd fast float %4834, %4569
  %4838 = call float @dx.op.binary.f32(i32 36, float %4571, float %4757)  ; FMin(a,b)
  %4839 = fsub fast float %4838, %4571
  %4840 = fmul fast float %4839, %4709
  %4841 = fadd fast float %4840, %4571
  %4842 = fsub fast float %4770, %4570
  %4843 = fmul fast float %4842, %4709
  %4844 = fadd fast float %4843, %4570
  br label %4845

; <label>:4845                                    ; preds = %4707, %4669, %4560, %4276
  %4846 = phi float [ %4809, %4707 ], [ %4561, %4669 ], [ %4561, %4560 ], [ %3885, %4276 ]
  %4847 = phi float [ %4810, %4707 ], [ %4562, %4669 ], [ %4562, %4560 ], [ %3886, %4276 ]
  %4848 = phi float [ %4811, %4707 ], [ %4563, %4669 ], [ %4563, %4560 ], [ %3887, %4276 ]
  %4849 = phi float [ %4818, %4707 ], [ %4564, %4669 ], [ %4564, %4560 ], [ %3870, %4276 ]
  %4850 = phi float [ %4819, %4707 ], [ %4565, %4669 ], [ %4565, %4560 ], [ %3871, %4276 ]
  %4851 = phi float [ %4820, %4707 ], [ %4566, %4669 ], [ %4566, %4560 ], [ %3872, %4276 ]
  %4852 = phi float [ %4835, %4707 ], [ %4567, %4669 ], [ %4567, %4560 ], [ %3833, %4276 ]
  %4853 = phi float [ %4836, %4707 ], [ %4568, %4669 ], [ %4568, %4560 ], [ %3834, %4276 ]
  %4854 = phi float [ %4837, %4707 ], [ %4569, %4669 ], [ %4569, %4560 ], [ %3835, %4276 ]
  %4855 = phi float [ %4844, %4707 ], [ %4570, %4669 ], [ %4570, %4560 ], [ %3873, %4276 ]
  %4856 = phi float [ %4841, %4707 ], [ %4571, %4669 ], [ %4571, %4560 ], [ %3845, %4276 ]
  %4857 = fcmp fast une float %4280, 0.000000e+00
  %4858 = call float @dx.op.dot3.f32(i32 55, float %191, float %192, float %193, float %191, float %192, float %193)  ; Dot3(ax,ay,az,bx,by,bz)
  %4859 = call float @dx.op.unary.f32(i32 25, float %4858)  ; Rsqrt(value)
  br i1 %4857, label %4867, label %4860

; <label>:4860                                    ; preds = %4845
  %4861 = fmul fast float %4859, %191
  %4862 = fmul fast float %4859, %192
  %4863 = fmul fast float %4859, %193
  %4864 = fsub fast float -0.000000e+00, %4861
  %4865 = fsub fast float -0.000000e+00, %4862
  %4866 = fsub fast float -0.000000e+00, %4863
  br label %5034

; <label>:4867                                    ; preds = %4845
  %4868 = fmul fast float %191, %4859
  %4869 = fsub fast float -0.000000e+00, %4868
  %4870 = fmul fast float %192, %4859
  %4871 = fsub fast float -0.000000e+00, %4870
  %4872 = fmul fast float %193, %4859
  %4873 = fsub fast float -0.000000e+00, %4872
  %4874 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4871, float %4873, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4875 = fmul fast float %4280, 2.500000e+00
  %4876 = call float @dx.op.unary.f32(i32 7, float %4875)  ; Saturate(value)
  %4877 = fmul fast float %4280, 0x4013FFFFE0000000
  %4878 = fadd fast float %4877, 0xBFFFFFFFE0000000
  %4879 = call float @dx.op.unary.f32(i32 7, float %4878)  ; Saturate(value)
  %4880 = fmul fast float %4280, 0x4004000020000000
  %4881 = fadd fast float %4880, 0xBFF8000040000000
  %4882 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4883 = fmul fast float %3852, 1.000000e+01
  %4884 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4885 = fmul fast float %4884, 2.000000e+00
  %4886 = fsub fast float 3.000000e+00, %4885
  %4887 = fmul fast float %4884, %4884
  %4888 = fmul fast float %4887, %4886
  %4889 = fsub fast float 1.000000e+00, %4888
  %4890 = fsub fast float 0x3FE3333340000000, %4855
  %4891 = fmul fast float %4890, 0x400AAAAAA0000000
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = fmul fast float %4889, %4892
  %4894 = fmul fast float %4846, 0x3FEA2B8620000000
  %4895 = fmul fast float %4847, 0x3FEA2B8620000000
  %4896 = fmul fast float %4848, 0x3FEA2B8620000000
  %4897 = fadd fast float %4894, 0x3FC81DFBA0000000
  %4898 = fmul fast float %4897, %4846
  %4899 = fadd fast float %4898, 0x3F910E6020000000
  %4900 = fadd fast float %4895, 0x3FC81DFBA0000000
  %4901 = fmul fast float %4900, %4847
  %4902 = fadd fast float %4901, 0x3F910E6020000000
  %4903 = fadd fast float %4896, 0x3FC81DFBA0000000
  %4904 = fmul fast float %4903, %4848
  %4905 = fadd fast float %4904, 0x3F910E6020000000
  %4906 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4907 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  %4908 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4909 = fsub fast float %4906, %4846
  %4910 = fsub fast float %4907, %4847
  %4911 = fsub fast float %4908, %4848
  %4912 = fmul fast float %4909, %4876
  %4913 = fmul fast float %4912, %4893
  %4914 = fmul fast float %4910, %4876
  %4915 = fmul fast float %4914, %4893
  %4916 = fmul fast float %4911, %4876
  %4917 = fmul fast float %4916, %4893
  %4918 = fadd fast float %4913, %4846
  %4919 = fadd fast float %4915, %4847
  %4920 = fadd fast float %4917, %4848
  %4921 = fmul fast float %4856, %4856
  %4922 = fmul fast float %4921, %4921
  %4923 = fadd fast float %4879, 1.000000e+00
  %4924 = fsub fast float %4923, %4893
  %4925 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4926 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4928 = fsub fast float 1.000000e+00, %4922
  %4929 = call float @dx.op.binary.f32(i32 36, float %4925, float %4928)  ; FMin(a,b)
  %4930 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4931 = call float @dx.op.binary.f32(i32 35, float %4929, float %4930)  ; FMax(a,b)
  %4932 = fadd fast float %4927, 0xBFE4CCCCC0000000
  %4933 = fmul fast float %4932, 0x4006DB6DA0000000
  %4934 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4935 = fmul fast float %4934, 2.000000e+00
  %4936 = fsub fast float 3.000000e+00, %4935
  %4937 = bitcast float %4849 to i32
  %4938 = ashr i32 %4937, 1
  %4939 = add nsw i32 %4938, 532487669
  %4940 = bitcast i32 %4939 to float
  %4941 = fsub fast float 1.000000e+00, %4940
  %4942 = bitcast float %4941 to i32
  %4943 = sub nsw i32 2129859010, %4942
  %4944 = bitcast i32 %4943 to float
  %4945 = fmul fast float %4944, 2.000000e+00
  %4946 = bitcast float %4850 to i32
  %4947 = ashr i32 %4946, 1
  %4948 = add nsw i32 %4947, 532487669
  %4949 = bitcast i32 %4948 to float
  %4950 = fsub fast float 1.000000e+00, %4949
  %4951 = bitcast float %4950 to i32
  %4952 = sub nsw i32 2129859010, %4951
  %4953 = bitcast i32 %4952 to float
  %4954 = fmul fast float %4953, 2.000000e+00
  %4955 = bitcast float %4851 to i32
  %4956 = ashr i32 %4955, 1
  %4957 = add nsw i32 %4956, 532487669
  %4958 = bitcast i32 %4957 to float
  %4959 = fsub fast float 1.000000e+00, %4958
  %4960 = bitcast float %4959 to i32
  %4961 = sub nsw i32 2129859010, %4960
  %4962 = bitcast i32 %4961 to float
  %4963 = fmul fast float %4962, 2.000000e+00
  %4964 = fsub fast float 0x4002A9FBE0000000, %4945
  %4965 = fadd fast float %4945, 0x3FD54FDF00000000
  %4966 = bitcast float %4965 to i32
  %4967 = sub nsw i32 2129859010, %4966
  %4968 = bitcast i32 %4967 to float
  %4969 = fmul fast float %4968, %4964
  %4970 = fmul fast float %4969, %4969
  %4971 = fsub fast float 0x4002A9FBE0000000, %4954
  %4972 = fadd fast float %4954, 0x3FD54FDF00000000
  %4973 = bitcast float %4972 to i32
  %4974 = sub nsw i32 2129859010, %4973
  %4975 = bitcast i32 %4974 to float
  %4976 = fmul fast float %4975, %4971
  %4977 = fmul fast float %4976, %4976
  %4978 = fsub fast float 0x4002A9FBE0000000, %4963
  %4979 = fadd fast float %4963, 0x3FD54FDF00000000
  %4980 = bitcast float %4979 to i32
  %4981 = sub nsw i32 2129859010, %4980
  %4982 = bitcast i32 %4981 to float
  %4983 = fmul fast float %4982, %4978
  %4984 = fmul fast float %4983, %4983
  %4985 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4970)  ; FMax(a,b)
  %4986 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4977)  ; FMax(a,b)
  %4987 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4984)  ; FMax(a,b)
  %4988 = fsub fast float 1.000000e+00, %4874
  %4989 = fadd fast float %4988, %4889
  %4990 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4991 = fsub fast float 1.000000e+00, %4261
  %4992 = fmul fast float %4931, %4991
  %4993 = fmul fast float %4934, %4934
  %4994 = fmul fast float %4993, %4992
  %4995 = fmul fast float %4994, %4936
  %4996 = fmul fast float %4991, 0xBFE99999A0000000
  %4997 = fmul fast float %4996, %4876
  %4998 = fmul fast float %4997, %4893
  %4999 = fadd fast float %4998, 1.000000e+00
  %5000 = fadd fast float %4855, -1.000000e+00
  %5001 = fmul fast float %4999, %5000
  %5002 = fadd fast float %5001, 1.000000e+00
  %5003 = fsub fast float %4985, %4849
  %5004 = fsub fast float %4986, %4850
  %5005 = fsub fast float %4987, %4851
  %5006 = fmul fast float %4995, %5003
  %5007 = fmul fast float %4995, %5004
  %5008 = fmul fast float %4995, %5005
  %5009 = fadd fast float %5006, %4849
  %5010 = fadd fast float %5007, %4850
  %5011 = fadd fast float %5008, %4851
  %5012 = fsub fast float %111, %4852
  %5013 = fsub fast float %112, %4853
  %5014 = fsub fast float %113, %4854
  %5015 = fmul fast float %4995, %5012
  %5016 = fmul fast float %4995, %5013
  %5017 = fmul fast float %4995, %5014
  %5018 = fadd fast float %5015, %4852
  %5019 = fadd fast float %5016, %4853
  %5020 = fadd fast float %5017, %4854
  %5021 = fmul fast float %4995, %4990
  %5022 = call float @dx.op.unary.f32(i32 7, float %5002)  ; Saturate(value)
  %5023 = fsub fast float 1.000000e+00, %5022
  %5024 = fmul fast float %5021, %5023
  %5025 = fadd fast float %5024, %5022
  %5026 = fsub fast float 1.000000e+00, %4856
  %5027 = fmul fast float %4995, %5026
  %5028 = fadd fast float %5027, %4856
  %5029 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5019, float %5020, float %5018, float %5019, float %5020)  ; Dot3(ax,ay,az,bx,by,bz)
  %5030 = call float @dx.op.unary.f32(i32 25, float %5029)  ; Rsqrt(value)
  %5031 = fmul fast float %5018, %5030
  %5032 = fmul fast float %5019, %5030
  %5033 = fmul fast float %5020, %5030
  br label %5034

; <label>:5034                                    ; preds = %4867, %4860
  %5035 = phi float [ %4866, %4860 ], [ %4873, %4867 ]
  %5036 = phi float [ %4865, %4860 ], [ %4871, %4867 ]
  %5037 = phi float [ %4864, %4860 ], [ %4869, %4867 ]
  %5038 = phi float [ %4863, %4860 ], [ %4872, %4867 ]
  %5039 = phi float [ %4862, %4860 ], [ %4870, %4867 ]
  %5040 = phi float [ %4861, %4860 ], [ %4868, %4867 ]
  %5041 = phi float [ %4846, %4860 ], [ %4918, %4867 ]
  %5042 = phi float [ %4847, %4860 ], [ %4919, %4867 ]
  %5043 = phi float [ %4848, %4860 ], [ %4920, %4867 ]
  %5044 = phi float [ %4849, %4860 ], [ %5009, %4867 ]
  %5045 = phi float [ %4850, %4860 ], [ %5010, %4867 ]
  %5046 = phi float [ %4851, %4860 ], [ %5011, %4867 ]
  %5047 = phi float [ %4852, %4860 ], [ %5031, %4867 ]
  %5048 = phi float [ %4853, %4860 ], [ %5032, %4867 ]
  %5049 = phi float [ %4854, %4860 ], [ %5033, %4867 ]
  %5050 = phi float [ %4855, %4860 ], [ %5025, %4867 ]
  %5051 = phi float [ %4856, %4860 ], [ %5028, %4867 ]
  %5052 = fsub fast float -0.000000e+00, %193
  %5053 = select i1 %250, float 0.000000e+00, float %5046
  %5054 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5048, float %5049, float %5037, float %5036, float %5035)  ; Dot3(ax,ay,az,bx,by,bz)
  %5055 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5056 = call float @dx.op.dot3.f32(i32 55, float %5040, float %5039, float %5038, float %5047, float %5048, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5057 = fmul fast float %5056, 2.000000e+00
  %5058 = fmul fast float %5057, %5047
  %5059 = fmul fast float %5057, %5048
  %5060 = fmul fast float %5057, %5049
  %5061 = fsub fast float %5040, %5058
  %5062 = fsub fast float %5039, %5059
  %5063 = fsub fast float %5038, %5060
  %5064 = call float @dx.op.binary.f32(i32 36, float %5051, float 1.000000e+00)  ; FMin(a,b)
  %5065 = fsub fast float 1.000000e+00, %5051
  %5066 = bitcast float %5065 to i32
  %5067 = sub nsw i32 2129859010, %5066
  %5068 = bitcast i32 %5067 to float
  %5069 = fsub fast float 1.000000e+00, %75
  %5070 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5071 = call float @dx.op.binary.f32(i32 35, float %5070, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5072 = fdiv fast float %5069, %5071
  %5073 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5048, float %5049, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5074 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5075 = fmul fast float %5074, 5.000000e-01
  %5076 = fadd fast float %5075, 5.000000e-01
  %5077 = fmul fast float %5076, %75
  %5078 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5048, float %5049, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5079 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5080 = fmul fast float %5079, %5072
  %5081 = fadd fast float %5077, %5080
  %5082 = fsub fast float 5.000000e-01, %5075
  %5083 = fmul fast float %5082, %5041
  %5084 = fmul fast float %5082, %5042
  %5085 = fmul fast float %5082, %5043
  %5086 = fadd fast float %5081, %5083
  %5087 = fadd fast float %5081, %5084
  %5088 = fadd fast float %5081, %5085
  %5089 = call float @dx.op.dot3.f32(i32 55, float %5061, float %5062, float %5063, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5090 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5091 = fmul fast float %5090, 5.000000e-01
  %5092 = fadd fast float %5091, 5.000000e-01
  %5093 = fmul fast float %5092, %75
  %5094 = call float @dx.op.dot3.f32(i32 55, float %5061, float %5062, float %5063, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5096 = fmul fast float %5095, %5072
  %5097 = fadd fast float %5093, %5096
  %5098 = fsub fast float 5.000000e-01, %5091
  %5099 = fmul fast float %5098, %5041
  %5100 = fmul fast float %5098, %5042
  %5101 = fmul fast float %5098, %5043
  %5102 = fadd fast float %5097, %5099
  %5103 = fadd fast float %5097, %5100
  %5104 = fadd fast float %5097, %5101
  %5105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5106 = extractvalue %dx.types.CBufRet.f32 %5105, 0
  %5107 = call float @dx.op.binary.f32(i32 36, float %5041, float %5106)  ; FMin(a,b)
  %5108 = fsub fast float 1.000000e+00, %5064
  %5109 = fmul fast float %5107, %5108
  %5110 = fsub fast float 1.000000e+00, %5109
  %5111 = bitcast float %5110 to i32
  %5112 = sub nsw i32 2129859010, %5111
  %5113 = bitcast i32 %5112 to float
  %5114 = call float @dx.op.binary.f32(i32 36, float %5042, float %5106)  ; FMin(a,b)
  %5115 = fmul fast float %5114, %5108
  %5116 = fsub fast float 1.000000e+00, %5115
  %5117 = bitcast float %5116 to i32
  %5118 = sub nsw i32 2129859010, %5117
  %5119 = bitcast i32 %5118 to float
  %5120 = call float @dx.op.binary.f32(i32 36, float %5043, float %5106)  ; FMin(a,b)
  %5121 = fmul fast float %5120, %5108
  %5122 = fsub fast float 1.000000e+00, %5121
  %5123 = bitcast float %5122 to i32
  %5124 = sub nsw i32 2129859010, %5123
  %5125 = bitcast i32 %5124 to float
  %5126 = fmul fast float %5064, %76
  %5127 = fmul fast float %5126, %5086
  %5128 = fmul fast float %5127, %5113
  %5129 = fmul fast float %5064, %77
  %5130 = fmul fast float %5129, %5087
  %5131 = fmul fast float %5130, %5119
  %5132 = fmul fast float %5064, %78
  %5133 = fmul fast float %5132, %5088
  %5134 = fmul fast float %5133, %5125
  %5135 = call float @dx.op.binary.f32(i32 36, float %5044, float %5106)  ; FMin(a,b)
  %5136 = fmul fast float %5135, %5108
  %5137 = fsub fast float 1.000000e+00, %5136
  %5138 = bitcast float %5137 to i32
  %5139 = sub nsw i32 2129859010, %5138
  %5140 = bitcast i32 %5139 to float
  %5141 = call float @dx.op.binary.f32(i32 36, float %5045, float %5106)  ; FMin(a,b)
  %5142 = fmul fast float %5141, %5108
  %5143 = fsub fast float 1.000000e+00, %5142
  %5144 = bitcast float %5143 to i32
  %5145 = sub nsw i32 2129859010, %5144
  %5146 = bitcast i32 %5145 to float
  %5147 = call float @dx.op.binary.f32(i32 36, float %5053, float %5106)  ; FMin(a,b)
  %5148 = fmul fast float %5147, %5108
  %5149 = fsub fast float 1.000000e+00, %5148
  %5150 = bitcast float %5149 to i32
  %5151 = sub nsw i32 2129859010, %5150
  %5152 = bitcast i32 %5151 to float
  %5153 = fmul fast float %5126, %5102
  %5154 = fmul fast float %5153, %5140
  %5155 = fmul fast float %5129, %5103
  %5156 = fmul fast float %5155, %5146
  %5157 = fmul fast float %5132, %5104
  %5158 = fmul fast float %5157, %5152
  %5159 = call float @dx.op.dot3.f32(i32 55, float %5128, float %5131, float %5134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5160 = select i1 %250, float 0.000000e+00, float %5128
  %5161 = select i1 %250, float %5159, float %5131
  %5162 = select i1 %250, float 0.000000e+00, float %5134
  %5163 = call float @dx.op.dot3.f32(i32 55, float %5154, float %5156, float %5158, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5164 = select i1 %250, float 0.000000e+00, float %5154
  %5165 = select i1 %250, float %5163, float %5156
  %5166 = select i1 %250, float 0.000000e+00, float %5158
  %5167 = fmul fast float %5055, 9.843750e-01
  %5168 = fmul fast float %5050, 9.843750e-01
  %5169 = fadd fast float %5167, 7.812500e-03
  %5170 = fadd fast float %5168, 7.812500e-03
  %5171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %5169, float %5170, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5172 = extractvalue %dx.types.ResRet.f32 %5171, 2
  %5173 = extractvalue %dx.types.ResRet.f32 %5171, 3
  %5174 = fmul fast float %5172, %5044
  %5175 = fmul fast float %5172, %5045
  %5176 = fmul fast float %5172, %5053
  %5177 = fadd fast float %5174, %5173
  %5178 = fadd fast float %5175, %5173
  %5179 = fadd fast float %5176, %5173
  %5180 = fcmp fast ogt float %3846, 0.000000e+00
  br i1 %5180, label %5181, label %5207

; <label>:5181                                    ; preds = %5034
  %5182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3846, float %5055, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5183 = extractvalue %dx.types.ResRet.f32 %5182, 0
  %5184 = extractvalue %dx.types.ResRet.f32 %5182, 1
  %5185 = extractvalue %dx.types.ResRet.f32 %5182, 2
  %5186 = fadd fast float %5183, -5.000000e-01
  %5187 = fadd fast float %5184, -5.000000e-01
  %5188 = fadd fast float %5185, -5.000000e-01
  %5189 = fsub fast float 1.000000e+00, %5044
  %5190 = fsub fast float 1.000000e+00, %5045
  %5191 = fsub fast float 1.000000e+00, %5053
  %5192 = fmul fast float %5044, 4.000000e+00
  %5193 = fmul fast float %5192, %5189
  %5194 = fmul fast float %5193, %5186
  %5195 = fmul fast float %5045, 4.000000e+00
  %5196 = fmul fast float %5195, %5190
  %5197 = fmul fast float %5196, %5187
  %5198 = fmul fast float %5053, 4.000000e+00
  %5199 = fmul fast float %5198, %5191
  %5200 = fmul fast float %5199, %5188
  %5201 = fadd fast float %5194, %5177
  %5202 = fadd fast float %5197, %5178
  %5203 = fadd fast float %5200, %5179
  %5204 = call float @dx.op.unary.f32(i32 7, float %5201)  ; Saturate(value)
  %5205 = call float @dx.op.unary.f32(i32 7, float %5202)  ; Saturate(value)
  %5206 = call float @dx.op.unary.f32(i32 7, float %5203)  ; Saturate(value)
  br label %5207

; <label>:5207                                    ; preds = %5181, %5034
  %5208 = phi float [ %5204, %5181 ], [ %5177, %5034 ]
  %5209 = phi float [ %5205, %5181 ], [ %5178, %5034 ]
  %5210 = phi float [ %5206, %5181 ], [ %5179, %5034 ]
  %5211 = call float @dx.op.binary.f32(i32 35, float %5209, float %5210)  ; FMax(a,b)
  %5212 = call float @dx.op.binary.f32(i32 35, float %5208, float %5211)  ; FMax(a,b)
  %5213 = fsub fast float 1.000000e+00, %5212
  %5214 = fmul fast float %5213, %5160
  %5215 = fmul fast float %5213, %5161
  %5216 = fmul fast float %5213, %5162
  %5217 = call float @dx.op.dot3.f32(i32 55, float %5041, float %5042, float %5043, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5218 = fcmp fast ogt float %5217, 0x3E7FF19E20000000
  %5219 = fdiv fast float 1.000000e+00, %5217
  %5220 = select i1 %5218, float %5219, float 0.000000e+00
  %5221 = fmul fast float %5220, %5041
  %5222 = fmul fast float %5220, %5042
  %5223 = fmul fast float %5220, %5043
  %5224 = fadd fast float %5221, -1.000000e+00
  %5225 = fadd fast float %5222, -1.000000e+00
  %5226 = fadd fast float %5223, -1.000000e+00
  %5227 = fmul fast float %5224, 5.000000e-01
  %5228 = fmul fast float %5225, 5.000000e-01
  %5229 = fmul fast float %5226, 5.000000e-01
  %5230 = fadd fast float %5227, 1.000000e+00
  %5231 = fadd fast float %5228, 1.000000e+00
  %5232 = fadd fast float %5229, 1.000000e+00
  %5233 = fmul fast float %5208, %5164
  %5234 = fmul fast float %5209, %5165
  %5235 = fmul fast float %5210, %5166
  %5236 = fsub fast float 1.000000e+00, %5055
  %5237 = bitcast float %5236 to i32
  %5238 = sitofp i32 %5237 to float
  %5239 = fmul fast float %5238, 5.000000e+00
  %5240 = fadd fast float %5239, 0xC1EFBF8940000000
  %5241 = fptosi float %5240 to i32
  %5242 = bitcast i32 %5241 to float
  %5243 = fmul fast float %5242, %3847
  %5244 = fmul fast float %5160, %5243
  %5245 = fmul fast float %5244, %5213
  %5246 = fmul fast float %5245, %5230
  %5247 = fmul fast float %5161, %5243
  %5248 = fmul fast float %5247, %5213
  %5249 = fmul fast float %5248, %5231
  %5250 = fmul fast float %5162, %5243
  %5251 = fmul fast float %5250, %5213
  %5252 = fmul fast float %5251, %5232
  %5253 = fmul fast float %5214, %3843
  %5254 = fmul fast float %5215, %3843
  %5255 = fmul fast float %5216, %3843
  %5256 = fadd fast float %5233, %3839
  %5257 = fadd fast float %5256, %5246
  %5258 = fmul fast float %5257, %3843
  %5259 = fadd fast float %5234, %3840
  %5260 = fadd fast float %5259, %5249
  %5261 = fmul fast float %5260, %3843
  %5262 = fadd fast float %5235, %3841
  %5263 = fadd fast float %5262, %5252
  %5264 = fmul fast float %5263, %3843
  %5265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.f32 %5265, 3
  %5267 = fcmp fast oeq float %5266, 0.000000e+00
  br i1 %5267, label %6352, label %5268

; <label>:5268                                    ; preds = %5207
  %5269 = extractvalue %dx.types.CBufRet.f32 %5265, 0
  %5270 = extractvalue %dx.types.CBufRet.f32 %5265, 1
  %5271 = extractvalue %dx.types.CBufRet.f32 %5265, 2
  %5272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5273 = extractvalue %dx.types.CBufRet.f32 %5272, 0
  %5274 = extractvalue %dx.types.CBufRet.f32 %5272, 1
  %5275 = extractvalue %dx.types.CBufRet.f32 %5272, 2
  %5276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5277 = extractvalue %dx.types.CBufRet.f32 %5276, 0
  %5278 = extractvalue %dx.types.CBufRet.f32 %5276, 1
  %5279 = call float @dx.op.dot3.f32(i32 55, float %5273, float %5274, float %5275, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5280 = select i1 %250, float %5277, float %5273
  %5281 = select i1 %250, float %5279, float %5274
  %5282 = select i1 %250, float %5278, float %5275
  %5283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5284 = extractvalue %dx.types.CBufRet.f32 %5283, 2
  %5285 = fmul fast float %5284, %111
  %5286 = fmul fast float %5284, %112
  %5287 = fmul fast float %5284, %113
  %5288 = fadd fast float %5285, %191
  %5289 = fadd fast float %5286, %192
  %5290 = fadd fast float %5287, %193
  %5291 = fcmp fast olt float %5266, 0.000000e+00
  br i1 %5291, label %5931, label %5292

; <label>:5292                                    ; preds = %5268
  %5293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5294 = extractvalue %dx.types.CBufRet.f32 %5293, 0
  %5295 = extractvalue %dx.types.CBufRet.f32 %5293, 1
  %5296 = extractvalue %dx.types.CBufRet.f32 %5293, 2
  %5297 = extractvalue %dx.types.CBufRet.f32 %5293, 3
  %5298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5299 = extractvalue %dx.types.CBufRet.f32 %5298, 0
  %5300 = extractvalue %dx.types.CBufRet.f32 %5298, 1
  %5301 = extractvalue %dx.types.CBufRet.f32 %5298, 2
  %5302 = extractvalue %dx.types.CBufRet.f32 %5298, 3
  %5303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5304 = extractvalue %dx.types.CBufRet.f32 %5303, 0
  %5305 = extractvalue %dx.types.CBufRet.f32 %5303, 1
  %5306 = extractvalue %dx.types.CBufRet.f32 %5303, 2
  %5307 = extractvalue %dx.types.CBufRet.f32 %5303, 3
  %5308 = fmul fast float %5294, %5288
  %5309 = call float @dx.op.tertiary.f32(i32 46, float %5289, float %5295, float %5308)  ; FMad(a,b,c)
  %5310 = call float @dx.op.tertiary.f32(i32 46, float %5290, float %5296, float %5309)  ; FMad(a,b,c)
  %5311 = fadd fast float %5310, %5297
  %5312 = fmul fast float %5299, %5288
  %5313 = call float @dx.op.tertiary.f32(i32 46, float %5289, float %5300, float %5312)  ; FMad(a,b,c)
  %5314 = call float @dx.op.tertiary.f32(i32 46, float %5290, float %5301, float %5313)  ; FMad(a,b,c)
  %5315 = fadd fast float %5314, %5302
  %5316 = fmul fast float %5304, %5288
  %5317 = call float @dx.op.tertiary.f32(i32 46, float %5289, float %5305, float %5316)  ; FMad(a,b,c)
  %5318 = call float @dx.op.tertiary.f32(i32 46, float %5290, float %5306, float %5317)  ; FMad(a,b,c)
  %5319 = fadd fast float %5318, %5307
  %5320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5321 = extractvalue %dx.types.CBufRet.f32 %5320, 0
  %5322 = fcmp fast une float %5321, 0.000000e+00
  %5323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5324 = extractvalue %dx.types.CBufRet.f32 %5323, 0
  %5325 = extractvalue %dx.types.CBufRet.f32 %5323, 1
  %5326 = extractvalue %dx.types.CBufRet.f32 %5323, 3
  %5327 = fmul fast float %5326, %5311
  %5328 = fmul fast float %5326, %5315
  %5329 = fadd fast float %5327, %5324
  %5330 = fadd fast float %5328, %5325
  %5331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5332 = extractvalue %dx.types.CBufRet.f32 %5331, 0
  %5333 = extractvalue %dx.types.CBufRet.f32 %5331, 1
  %5334 = extractvalue %dx.types.CBufRet.f32 %5331, 3
  %5335 = fmul fast float %5334, %5311
  %5336 = fmul fast float %5334, %5315
  %5337 = fadd fast float %5335, %5332
  %5338 = fadd fast float %5336, %5333
  %5339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5340 = extractvalue %dx.types.CBufRet.f32 %5339, 1
  %5341 = fsub fast float %5340, %5319
  %5342 = extractvalue %dx.types.CBufRet.f32 %5339, 2
  %5343 = fmul fast float %5341, %5342
  %5344 = fsub fast float 1.000000e+00, %5343
  %5345 = call float @dx.op.unary.f32(i32 7, float %5344)  ; Saturate(value)
  br i1 %5322, label %5406, label %5346

; <label>:5346                                    ; preds = %5292
  %5347 = extractvalue %dx.types.CBufRet.f32 %5331, 2
  %5348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5349 = extractvalue %dx.types.CBufRet.f32 %5348, 2
  %5350 = fadd fast float %5349, %5347
  %5351 = fcmp fast ogt float %5350, 0.000000e+00
  br i1 %5351, label %5352, label %5376

; <label>:5352                                    ; preds = %5346
  %5353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5354 = extractvalue %dx.types.CBufRet.f32 %5353, 0
  %5355 = extractvalue %dx.types.CBufRet.f32 %5353, 1
  %5356 = fsub fast float %5337, %5354
  %5357 = fsub fast float %5338, %5355
  %5358 = fcmp fast olt float %5356, 0.000000e+00
  %5359 = fcmp fast olt float %5357, 0.000000e+00
  %5360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5361 = extractvalue %dx.types.CBufRet.f32 %5360, 0
  %5362 = extractvalue %dx.types.CBufRet.f32 %5360, 1
  %5363 = extractvalue %dx.types.CBufRet.f32 %5360, 2
  %5364 = extractvalue %dx.types.CBufRet.f32 %5360, 3
  %5365 = select i1 %5358, float %5361, float %5363
  %5366 = select i1 %5359, float %5362, float %5364
  %5367 = fmul fast float %5365, %5356
  %5368 = fmul fast float %5366, %5357
  %5369 = call float @dx.op.unary.f32(i32 6, float %5367)  ; FAbs(value)
  %5370 = call float @dx.op.unary.f32(i32 6, float %5368)  ; FAbs(value)
  %5371 = extractvalue %dx.types.CBufRet.f32 %5283, 0
  %5372 = call float @dx.op.binary.f32(i32 35, float %5369, float %5370)  ; FMax(a,b)
  %5373 = fsub fast float %5371, %5372
  %5374 = call float @dx.op.unary.f32(i32 7, float %5373)  ; Saturate(value)
  %5375 = fmul fast float %5374, %5345
  br label %5376

; <label>:5376                                    ; preds = %5352, %5346
  %5377 = phi float [ %5375, %5352 ], [ 0.000000e+00, %5346 ]
  %5378 = extractvalue %dx.types.CBufRet.f32 %5323, 2
  %5379 = extractvalue %dx.types.CBufRet.f32 %5348, 1
  %5380 = fadd fast float %5379, %5378
  %5381 = fcmp fast ogt float %5380, 0.000000e+00
  br i1 %5381, label %5382, label %5406

; <label>:5382                                    ; preds = %5376
  %5383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5384 = extractvalue %dx.types.CBufRet.f32 %5383, 0
  %5385 = extractvalue %dx.types.CBufRet.f32 %5383, 1
  %5386 = fsub fast float %5329, %5384
  %5387 = fsub fast float %5330, %5385
  %5388 = fcmp fast olt float %5386, 0.000000e+00
  %5389 = fcmp fast olt float %5387, 0.000000e+00
  %5390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5391 = extractvalue %dx.types.CBufRet.f32 %5390, 0
  %5392 = extractvalue %dx.types.CBufRet.f32 %5390, 1
  %5393 = extractvalue %dx.types.CBufRet.f32 %5390, 2
  %5394 = extractvalue %dx.types.CBufRet.f32 %5390, 3
  %5395 = select i1 %5388, float %5391, float %5393
  %5396 = select i1 %5389, float %5392, float %5394
  %5397 = fmul fast float %5395, %5386
  %5398 = fmul fast float %5396, %5387
  %5399 = call float @dx.op.unary.f32(i32 6, float %5397)  ; FAbs(value)
  %5400 = call float @dx.op.unary.f32(i32 6, float %5398)  ; FAbs(value)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5283, 0
  %5402 = call float @dx.op.binary.f32(i32 35, float %5399, float %5400)  ; FMax(a,b)
  %5403 = fsub fast float %5401, %5402
  %5404 = call float @dx.op.unary.f32(i32 7, float %5403)  ; Saturate(value)
  %5405 = fmul fast float %5404, %5345
  br label %5406

; <label>:5406                                    ; preds = %5382, %5376, %5292
  %5407 = phi float [ 0.000000e+00, %5292 ], [ %5405, %5382 ], [ 0.000000e+00, %5376 ]
  %5408 = phi float [ 0.000000e+00, %5292 ], [ %5377, %5382 ], [ %5377, %5376 ]
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 1
  %5411 = call float @dx.op.unary.f32(i32 7, float %5410)  ; Saturate(value)
  %5412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5413 = extractvalue %dx.types.CBufRet.f32 %5412, 0
  %5414 = extractvalue %dx.types.CBufRet.f32 %5412, 1
  %5415 = fsub fast float %5311, %5413
  %5416 = fsub fast float %5315, %5414
  %5417 = fcmp fast olt float %5415, 0.000000e+00
  %5418 = fcmp fast olt float %5416, 0.000000e+00
  %5419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5420 = extractvalue %dx.types.CBufRet.f32 %5419, 0
  %5421 = extractvalue %dx.types.CBufRet.f32 %5419, 1
  %5422 = extractvalue %dx.types.CBufRet.f32 %5419, 2
  %5423 = extractvalue %dx.types.CBufRet.f32 %5419, 3
  %5424 = select i1 %5417, float %5420, float %5422
  %5425 = select i1 %5418, float %5421, float %5423
  %5426 = fmul fast float %5424, %5415
  %5427 = fmul fast float %5425, %5416
  %5428 = call float @dx.op.unary.f32(i32 6, float %5426)  ; FAbs(value)
  %5429 = call float @dx.op.unary.f32(i32 6, float %5427)  ; FAbs(value)
  %5430 = extractvalue %dx.types.CBufRet.f32 %5283, 0
  %5431 = call float @dx.op.binary.f32(i32 35, float %5428, float %5429)  ; FMax(a,b)
  %5432 = fsub fast float %5430, %5431
  %5433 = call float @dx.op.unary.f32(i32 7, float %5432)  ; Saturate(value)
  %5434 = call float @dx.op.binary.f32(i32 36, float %5433, float %5411)  ; FMin(a,b)
  %5435 = fmul fast float %5434, %5345
  %5436 = fsub fast float %5407, %5435
  %5437 = fsub fast float %5408, %5407
  %5438 = fsub fast float %5437, %5435
  %5439 = call float @dx.op.binary.f32(i32 35, float %5407, float %5408)  ; FMax(a,b)
  %5440 = call float @dx.op.binary.f32(i32 35, float %5435, float %5439)  ; FMax(a,b)
  %5441 = fcmp fast olt float %5440, 1.000000e+00
  br i1 %5441, label %5442, label %5840, !dx.controlflow.hints !94

; <label>:5442                                    ; preds = %5406
  %5443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5444 = extractvalue %dx.types.CBufRet.f32 %5443, 0
  %5445 = fcmp fast une float %5444, 0.000000e+00
  br i1 %5445, label %5446, label %5840, !dx.controlflow.hints !95

; <label>:5446                                    ; preds = %5442
  %5447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5448 = extractvalue %dx.types.CBufRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.CBufRet.f32 %5447, 1
  %5450 = extractvalue %dx.types.CBufRet.f32 %5447, 2
  %5451 = extractvalue %dx.types.CBufRet.f32 %5447, 3
  %5452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.f32 %5452, 0
  %5454 = extractvalue %dx.types.CBufRet.f32 %5452, 1
  %5455 = extractvalue %dx.types.CBufRet.f32 %5452, 2
  %5456 = extractvalue %dx.types.CBufRet.f32 %5452, 3
  %5457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5458 = extractvalue %dx.types.CBufRet.f32 %5457, 0
  %5459 = extractvalue %dx.types.CBufRet.f32 %5457, 1
  %5460 = extractvalue %dx.types.CBufRet.f32 %5457, 2
  %5461 = extractvalue %dx.types.CBufRet.f32 %5457, 3
  %5462 = fmul fast float %5448, %5288
  %5463 = call float @dx.op.tertiary.f32(i32 46, float %5289, float %5449, float %5462)  ; FMad(a,b,c)
  %5464 = call float @dx.op.tertiary.f32(i32 46, float %5290, float %5450, float %5463)  ; FMad(a,b,c)
  %5465 = fadd fast float %5464, %5451
  %5466 = fmul fast float %5453, %5288
  %5467 = call float @dx.op.tertiary.f32(i32 46, float %5289, float %5454, float %5466)  ; FMad(a,b,c)
  %5468 = call float @dx.op.tertiary.f32(i32 46, float %5290, float %5455, float %5467)  ; FMad(a,b,c)
  %5469 = fadd fast float %5468, %5456
  %5470 = fmul fast float %5458, %5288
  %5471 = call float @dx.op.tertiary.f32(i32 46, float %5289, float %5459, float %5470)  ; FMad(a,b,c)
  %5472 = call float @dx.op.tertiary.f32(i32 46, float %5290, float %5460, float %5471)  ; FMad(a,b,c)
  %5473 = fadd fast float %5472, %5461
  %5474 = fcmp fast oge float %5465, 1.000000e+00
  %5475 = fcmp fast oge float %5469, 1.000000e+00
  %5476 = or i1 %5474, %5475
  %5477 = fcmp fast olt float %5465, 0.000000e+00
  %5478 = fcmp fast olt float %5469, 0.000000e+00
  %5479 = or i1 %5477, %5478
  %5480 = or i1 %5476, %5479
  br i1 %5480, label %5840, label %5481, !dx.controlflow.hints !96

; <label>:5481                                    ; preds = %5446
  %5482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5483 = extractvalue %dx.types.CBufRet.f32 %5482, 0
  %5484 = extractvalue %dx.types.CBufRet.f32 %5482, 1
  %5485 = extractvalue %dx.types.CBufRet.f32 %5482, 2
  %5486 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.i32 %5486, 2
  %5488 = uitofp i32 %5487 to float
  %5489 = extractvalue %dx.types.CBufRet.i32 %5486, 3
  %5490 = uitofp i32 %5489 to float
  %5491 = extractvalue %dx.types.CBufRet.f32 %5482, 3
  %5492 = fmul fast float %5491, 2.000000e+00
  %5493 = fsub fast float %5465, %5483
  %5494 = fsub fast float %5469, %5484
  %5495 = fmul fast float %5492, %5493
  %5496 = fmul fast float %5492, %5494
  %5497 = fdiv fast float 1.000000e+00, %5271
  %5498 = fmul fast float %5496, %5497
  %5499 = call float @dx.op.unary.f32(i32 6, float %5498)  ; FAbs(value)
  %5500 = fmul fast float %5485, %5290
  %5501 = fmul fast float %5500, %5492
  %5502 = call float @dx.op.unary.f32(i32 6, float %5501)  ; FAbs(value)
  %5503 = call float @dx.op.unary.f32(i32 6, float %5495)  ; FAbs(value)
  %5504 = call float @dx.op.binary.f32(i32 35, float %5502, float %5499)  ; FMax(a,b)
  %5505 = call float @dx.op.binary.f32(i32 35, float %5503, float %5504)  ; FMax(a,b)
  %5506 = fmul fast float %5505, 2.000000e+00
  %5507 = call float @dx.op.unary.f32(i32 23, float %5506)  ; Log(value)
  %5508 = call float @dx.op.binary.f32(i32 35, float %5507, float %5488)  ; FMax(a,b)
  %5509 = call float @dx.op.unary.f32(i32 22, float %5508)  ; Frc(value)
  %5510 = fadd fast float %5509, 0xBFEA666660000000
  %5511 = fmul fast float %5510, 8.000000e+00
  %5512 = call float @dx.op.unary.f32(i32 7, float %5511)  ; Saturate(value)
  %5513 = call float @dx.op.unary.f32(i32 27, float %5508)  ; Round_ni(value)
  %5514 = fadd fast float %5513, %5512
  %5515 = call float @dx.op.binary.f32(i32 36, float %5514, float %5490)  ; FMin(a,b)
  %5516 = call float @dx.op.unary.f32(i32 27, float %5515)  ; Round_ni(value)
  %5517 = fsub fast float -0.000000e+00, %5516
  %5518 = call float @dx.op.unary.f32(i32 21, float %5517)  ; Exp(value)
  %5519 = fmul fast float %5518, %5492
  %5520 = fmul fast float %5519, %5465
  %5521 = fmul fast float %5519, %5469
  %5522 = fmul fast float %5520, 2.500000e-01
  %5523 = fmul fast float %5521, 2.500000e-01
  %5524 = fadd fast float %5522, 5.000000e-01
  %5525 = fadd fast float %5523, 5.000000e-01
  %5526 = fsub fast float %5490, %5488
  %5527 = fptoui float %5526 to i32
  %5528 = add i32 %5527, 320
  %5529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5528)  ; CBufferLoadLegacy(handle,regIndex)
  %5530 = extractvalue %dx.types.CBufRet.f32 %5529, 0
  %5531 = extractvalue %dx.types.CBufRet.f32 %5529, 1
  %5532 = fcmp fast une float %5515, %5490
  %5533 = fsub fast float %5465, %5530
  %5534 = fsub fast float %5469, %5531
  %5535 = call float @dx.op.unary.f32(i32 6, float %5533)  ; FAbs(value)
  %5536 = call float @dx.op.unary.f32(i32 6, float %5534)  ; FAbs(value)
  %5537 = fmul fast float %5535, %5519
  %5538 = fmul fast float %5536, %5519
  %5539 = fcmp fast olt float %5537, 1.000000e+00
  %5540 = fcmp fast olt float %5538, 1.000000e+00
  %5541 = and i1 %5539, %5540
  %5542 = or i1 %5532, %5541
  br i1 %5542, label %5543, label %5840, !dx.controlflow.hints !97

; <label>:5543                                    ; preds = %5481
  %5544 = fmul fast float %5521, 5.000000e-01
  %5545 = fmul fast float %5520, 5.000000e-01
  %5546 = fadd fast float %5544, 5.000000e-01
  %5547 = fadd fast float %5545, 5.000000e-01
  %5548 = sitofp i32 %5487 to float
  %5549 = fsub fast float %5515, %5548
  %5550 = call float @dx.op.unary.f32(i32 27, float %5549)  ; Round_ni(value)
  %5551 = call float @dx.op.unary.f32(i32 22, float %5515)  ; Frc(value)
  %5552 = call float @dx.op.unary.f32(i32 22, float %5547)  ; Frc(value)
  %5553 = call float @dx.op.unary.f32(i32 22, float %5546)  ; Frc(value)
  %5554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5552, float %5553, float %5550, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5555 = extractvalue %dx.types.ResRet.f32 %5554, 0
  %5556 = extractvalue %dx.types.ResRet.f32 %5554, 1
  %5557 = extractvalue %dx.types.ResRet.f32 %5554, 2
  %5558 = extractvalue %dx.types.ResRet.f32 %5554, 3
  %5559 = fcmp fast ogt float %5551, 0.000000e+00
  br i1 %5559, label %5560, label %5581, !dx.controlflow.hints !98

; <label>:5560                                    ; preds = %5543
  %5561 = fadd fast float %5550, 1.000000e+00
  %5562 = call float @dx.op.unary.f32(i32 22, float %5524)  ; Frc(value)
  %5563 = call float @dx.op.unary.f32(i32 22, float %5525)  ; Frc(value)
  %5564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5562, float %5563, float %5561, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5565 = extractvalue %dx.types.ResRet.f32 %5564, 0
  %5566 = extractvalue %dx.types.ResRet.f32 %5564, 1
  %5567 = extractvalue %dx.types.ResRet.f32 %5564, 2
  %5568 = extractvalue %dx.types.ResRet.f32 %5564, 3
  %5569 = fsub fast float %5565, %5555
  %5570 = fsub fast float %5566, %5556
  %5571 = fsub fast float %5567, %5557
  %5572 = fsub fast float %5568, %5558
  %5573 = fmul fast float %5569, %5551
  %5574 = fmul fast float %5570, %5551
  %5575 = fmul fast float %5571, %5551
  %5576 = fmul fast float %5572, %5551
  %5577 = fadd fast float %5573, %5555
  %5578 = fadd fast float %5574, %5556
  %5579 = fadd fast float %5575, %5557
  %5580 = fadd fast float %5576, %5558
  br label %5581

; <label>:5581                                    ; preds = %5560, %5543
  %5582 = phi float [ %5577, %5560 ], [ %5555, %5543 ]
  %5583 = phi float [ %5578, %5560 ], [ %5556, %5543 ]
  %5584 = phi float [ %5579, %5560 ], [ %5557, %5543 ]
  %5585 = phi float [ %5580, %5560 ], [ %5558, %5543 ]
  %5586 = fadd fast float %5582, -5.000000e-01
  %5587 = fadd fast float %5584, -5.000000e-01
  %5588 = fmul fast float %5586, 0xBFD5555560000000
  %5589 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5587, float %5588)  ; FMad(a,b,c)
  %5590 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5583, float 0.000000e+00)  ; FMad(a,b,c)
  %5591 = fadd fast float %5590, %5585
  %5592 = fmul fast float %5586, -7.500000e-01
  %5593 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5587, float %5592)  ; FMad(a,b,c)
  %5594 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5583, float 0.000000e+00)  ; FMad(a,b,c)
  %5595 = fadd fast float %5594, %5585
  %5596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5597 = extractvalue %dx.types.CBufRet.f32 %5596, 0
  %5598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5599 = extractvalue %dx.types.CBufRet.f32 %5598, 0
  %5600 = extractvalue %dx.types.CBufRet.f32 %5598, 1
  %5601 = extractvalue %dx.types.CBufRet.f32 %5598, 2
  %5602 = extractvalue %dx.types.CBufRet.f32 %5598, 3
  %5603 = fsub fast float %5599, %5589
  %5604 = fsub fast float %5600, %5591
  %5605 = fsub fast float %5601, %5593
  %5606 = fsub fast float %5602, %5595
  %5607 = fmul fast float %5603, %5597
  %5608 = fmul fast float %5604, %5597
  %5609 = fmul fast float %5605, %5597
  %5610 = fmul fast float %5606, %5597
  %5611 = fadd fast float %5607, %5589
  %5612 = fadd fast float %5608, %5591
  %5613 = fadd fast float %5609, %5593
  %5614 = fadd fast float %5610, %5595
  %5615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5616 = extractvalue %dx.types.ResRet.i32 %5615, 0
  %5617 = and i32 %5616, 536870911
  %5618 = uitofp i32 %5617 to float
  %5619 = fmul fast float %5618, %5465
  %5620 = fmul fast float %5618, %5469
  %5621 = fptoui float %5619 to i32
  %5622 = fptoui float %5620 to i32
  %5623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5624 = extractvalue %dx.types.ResRet.i32 %5623, 0
  %5625 = and i32 %5624, 31
  %5626 = lshr i32 %5621, %5625
  %5627 = lshr i32 %5622, %5625
  %5628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5629 = extractvalue %dx.types.ResRet.i32 %5628, 0
  %5630 = and i32 %5629, 31
  %5631 = shl i32 1, %5630
  %5632 = call i32 @dx.op.binary.i32(i32 40, i32 %5631, i32 4)  ; UMin(a,b)
  %5633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5634 = extractvalue %dx.types.ResRet.i32 %5633, 0
  %5635 = extractvalue %dx.types.ResRet.i32 %5633, 1
  %5636 = icmp eq i32 %5632, 0
  br i1 %5636, label %5678, label %5637

; <label>:5637                                    ; preds = %5581
  br label %5638

; <label>:5638                                    ; preds = %5666, %5637
  %5639 = phi i32 [ %5669, %5666 ], [ 0, %5637 ]
  %5640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5641 = extractvalue %dx.types.ResRet.i32 %5640, 0
  %5642 = lshr i32 %5641, 16
  %5643 = and i32 %5642, 31
  %5644 = shl i32 %5627, %5643
  %5645 = add i32 %5644, %5626
  %5646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5647 = extractvalue %dx.types.ResRet.i32 %5646, 0
  %5648 = and i32 %5647, 31
  %5649 = shl i32 %5645, %5648
  %5650 = add i32 %5649, %5639
  %5651 = shl i32 %5650, 2
  %5652 = add i32 %5651, 32
  %5653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5652, i32 undef)  ; BufferLoad(srv,index,wot)
  %5654 = extractvalue %dx.types.ResRet.i32 %5653, 0
  %5655 = icmp slt i32 %5654, 0
  %5656 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5639
  %5657 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5639
  %5658 = bitcast float* %5656 to i32*
  %5659 = bitcast float* %5657 to i32*
  br i1 %5655, label %5660, label %5666

; <label>:5660                                    ; preds = %5638
  %5661 = and i32 %5654, 1073741823
  %5662 = add nuw nsw i32 %5661, 20
  %5663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5662, i32 undef)  ; BufferLoad(srv,index,wot)
  %5664 = extractvalue %dx.types.ResRet.i32 %5663, 0
  %5665 = extractvalue %dx.types.ResRet.i32 %5663, 1
  br label %5666

; <label>:5666                                    ; preds = %5660, %5638
  %5667 = phi i32 [ %5664, %5660 ], [ %5634, %5638 ]
  %5668 = phi i32 [ %5665, %5660 ], [ %5635, %5638 ]
  store i32 %5667, i32* %5658, align 4
  store i32 %5668, i32* %5659, align 4
  %5669 = add nuw i32 %5639, 1
  %5670 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5671 = extractvalue %dx.types.CBufRet.i32 %5670, 2
  %5672 = icmp eq i32 %5671, 0
  %5673 = icmp ugt i32 %5654, -1073741825
  %5674 = and i1 %5673, %5672
  %5675 = icmp ult i32 %5669, %5632
  %5676 = and i1 %5674, %5675
  br i1 %5676, label %5638, label %5677

; <label>:5677                                    ; preds = %5666
  br label %5678

; <label>:5678                                    ; preds = %5677, %5581
  %5679 = phi i32 [ 0, %5581 ], [ %5669, %5677 ]
  %5680 = extractvalue %dx.types.CBufRet.f32 %5443, 2
  %5681 = fptoui float %5680 to i32
  %5682 = icmp eq i32 %5681, 0
  br i1 %5682, label %5734, label %5683

; <label>:5683                                    ; preds = %5678
  br label %5684

; <label>:5684                                    ; preds = %5729, %5683
  %5685 = phi i32 [ %5730, %5729 ], [ %5679, %5683 ]
  %5686 = phi i32 [ %5731, %5729 ], [ 0, %5683 ]
  %5687 = lshr i32 %5686, 2
  %5688 = and i32 %5686, 3
  %5689 = add nuw nsw i32 %5687, 83
  %5690 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5689)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.i32 %5690, 0
  %5692 = extractvalue %dx.types.CBufRet.i32 %5690, 1
  %5693 = extractvalue %dx.types.CBufRet.i32 %5690, 2
  %5694 = extractvalue %dx.types.CBufRet.i32 %5690, 3
  %5695 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5691, i32* %5695, align 4
  %5696 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5692, i32* %5696, align 4
  %5697 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5693, i32* %5697, align 4
  %5698 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5694, i32* %5698, align 4
  %5699 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5688
  %5700 = load i32, i32* %5699, align 4, !tbaa !99, !noalias !103
  %5701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5702 = extractvalue %dx.types.ResRet.i32 %5701, 0
  %5703 = lshr i32 %5702, 16
  %5704 = and i32 %5703, 31
  %5705 = shl i32 %5627, %5704
  %5706 = add i32 %5705, %5626
  %5707 = shl i32 %5706, 2
  %5708 = add i32 %5707, %5700
  %5709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5708, i32 undef)  ; BufferLoad(srv,index,wot)
  %5710 = extractvalue %dx.types.ResRet.i32 %5709, 0
  %5711 = icmp eq i32 %5710, 0
  br i1 %5711, label %5729, label %5712

; <label>:5712                                    ; preds = %5684
  %5713 = icmp slt i32 %5710, 0
  %5714 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5685
  %5715 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5685
  %5716 = bitcast float* %5714 to i32*
  %5717 = bitcast float* %5715 to i32*
  br i1 %5713, label %5718, label %5725

; <label>:5718                                    ; preds = %5712
  %5719 = and i32 %5710, 1073741823
  %5720 = add i32 %5700, 20
  %5721 = add i32 %5720, %5719
  %5722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5721, i32 undef)  ; BufferLoad(srv,index,wot)
  %5723 = extractvalue %dx.types.ResRet.i32 %5722, 0
  %5724 = extractvalue %dx.types.ResRet.i32 %5722, 1
  br label %5725

; <label>:5725                                    ; preds = %5718, %5712
  %5726 = phi i32 [ %5723, %5718 ], [ %5634, %5712 ]
  %5727 = phi i32 [ %5724, %5718 ], [ %5635, %5712 ]
  store i32 %5726, i32* %5716, align 4
  store i32 %5727, i32* %5717, align 4
  %5728 = add i32 %5685, 1
  br label %5729

; <label>:5729                                    ; preds = %5725, %5684
  %5730 = phi i32 [ %5685, %5684 ], [ %5728, %5725 ]
  %5731 = add nuw i32 %5686, 1
  %5732 = icmp eq i32 %5731, %5681
  br i1 %5732, label %5733, label %5684

; <label>:5733                                    ; preds = %5729
  br label %5734

; <label>:5734                                    ; preds = %5733, %5678
  %5735 = phi i32 [ %5679, %5678 ], [ %5730, %5733 ]
  %5736 = icmp eq i32 %5735, 1
  %5737 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 0
  %5738 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  br i1 %5736, label %5739, label %5742

; <label>:5739                                    ; preds = %5734
  %5740 = load float, float* %5737, align 4
  %5741 = load float, float* %5738, align 4
  br label %5769

; <label>:5742                                    ; preds = %5734
  %5743 = load float, float* %5737, align 4
  %5744 = load float, float* %5738, align 4
  %5745 = fdiv fast float 1.000000e+00, %5744
  %5746 = fsub fast float %5743, %5745
  %5747 = icmp ugt i32 %5735, 1
  br i1 %5747, label %5748, label %5764

; <label>:5748                                    ; preds = %5742
  br label %5749

; <label>:5749                                    ; preds = %5749, %5748
  %5750 = phi float [ %5759, %5749 ], [ %5746, %5748 ]
  %5751 = phi float [ %5760, %5749 ], [ %5743, %5748 ]
  %5752 = phi i32 [ %5761, %5749 ], [ 1, %5748 ]
  %5753 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5752
  %5754 = load float, float* %5753, align 4
  %5755 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5752
  %5756 = load float, float* %5755, align 4
  %5757 = fdiv fast float 1.000000e+00, %5756
  %5758 = fsub fast float %5754, %5757
  %5759 = call float @dx.op.binary.f32(i32 36, float %5750, float %5758)  ; FMin(a,b)
  %5760 = call float @dx.op.binary.f32(i32 35, float %5751, float %5754)  ; FMax(a,b)
  %5761 = add nuw i32 %5752, 1
  %5762 = icmp eq i32 %5761, %5735
  br i1 %5762, label %5763, label %5749

; <label>:5763                                    ; preds = %5749
  br label %5764

; <label>:5764                                    ; preds = %5763, %5742
  %5765 = phi float [ %5746, %5742 ], [ %5759, %5763 ]
  %5766 = phi float [ %5743, %5742 ], [ %5760, %5763 ]
  %5767 = fsub fast float %5766, %5765
  %5768 = fdiv fast float 1.000000e+00, %5767
  br label %5769

; <label>:5769                                    ; preds = %5764, %5739
  %5770 = phi float [ %5740, %5739 ], [ %5766, %5764 ]
  %5771 = phi float [ %5741, %5739 ], [ %5768, %5764 ]
  %5772 = fadd fast float %5473, %5770
  %5773 = fmul fast float %5772, %5771
  %5774 = call float @dx.op.unary.f32(i32 7, float %5773)  ; Saturate(value)
  %5775 = fmul fast float %5774, 2.000000e+00
  %5776 = fsub fast float 1.000000e+00, %5775
  %5777 = fmul fast float %5611, %5611
  %5778 = fsub fast float %5612, %5777
  %5779 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5778)  ; FMax(a,b)
  %5780 = fdiv fast float 1.000000e+00, %5779
  %5781 = fmul fast float %5612, %5611
  %5782 = fsub fast float %5613, %5781
  %5783 = fsub fast float %5776, %5611
  %5784 = fmul fast float %5776, %5776
  %5785 = fsub fast float %5784, %5612
  %5786 = fmul fast float %5780, %5782
  %5787 = fmul fast float %5786, %5783
  %5788 = fsub fast float %5785, %5787
  %5789 = fmul fast float %5612, %5612
  %5790 = fsub fast float %5614, %5789
  %5791 = fmul fast float %5782, %5782
  %5792 = fmul fast float %5791, %5780
  %5793 = fsub fast float %5790, %5792
  %5794 = fdiv fast float %5788, %5793
  %5795 = fmul fast float %5794, %5782
  %5796 = fsub fast float %5783, %5795
  %5797 = fmul fast float %5796, %5780
  %5798 = fmul fast float %5797, %5611
  %5799 = fsub fast float 1.000000e+00, %5798
  %5800 = fmul fast float %5794, %5612
  %5801 = fsub fast float %5799, %5800
  %5802 = fmul fast float %5797, %5797
  %5803 = fmul fast float %5794, 4.000000e+00
  %5804 = fmul fast float %5803, %5801
  %5805 = fsub fast float %5802, %5804
  %5806 = call float @dx.op.unary.f32(i32 24, float %5805)  ; Sqrt(value)
  %5807 = fcmp fast oge float %5797, 0.000000e+00
  %5808 = fsub fast float -0.000000e+00, %5806
  %5809 = select i1 %5807, float %5808, float %5806
  %5810 = fsub fast float %5809, %5797
  %5811 = fdiv fast float %5810, %5794
  %5812 = fdiv fast float %5801, %5810
  %5813 = fmul fast float %5811, 5.000000e-01
  %5814 = fmul fast float %5812, 2.000000e+00
  %5815 = select i1 %5807, float %5813, float %5814
  %5816 = select i1 %5807, float %5814, float %5813
  %5817 = call float @dx.op.binary.f32(i32 35, float %5815, float %5816)  ; FMax(a,b)
  %5818 = call float @dx.op.binary.f32(i32 36, float %5815, float %5816)  ; FMin(a,b)
  %5819 = fcmp fast ogt float %5776, %5817
  %5820 = fsub fast float %5776, %5818
  %5821 = fsub fast float %5776, %5817
  %5822 = fsub fast float %5817, %5818
  %5823 = select i1 %5819, float %5821, float %5822
  %5824 = fmul float %5820, %5823
  %5825 = select i1 %5819, float %5818, float %5776
  %5826 = fcmp fast ogt float %5776, %5818
  %5827 = fmul fast float %5825, %5817
  %5828 = fadd fast float %5825, %5817
  %5829 = fmul fast float %5828, %5611
  %5830 = fadd fast float %5827, %5612
  %5831 = fsub fast float %5830, %5829
  %5832 = fdiv fast float %5831, %5824
  %5833 = select i1 %5826, float %5832, float 0.000000e+00
  %5834 = fsub fast float 1.000000e+00, %5833
  %5835 = select i1 %5819, float %5834, float %5833
  %5836 = call float @dx.op.unary.f32(i32 7, float %5835)  ; Saturate(value)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5596, 3
  %5838 = fmul fast float %5837, %5836
  %5839 = fsub fast float 1.000000e+00, %5838
  br label %5840

; <label>:5840                                    ; preds = %5769, %5481, %5446, %5442, %5406
  %5841 = phi float [ 1.000000e+00, %5406 ], [ %5839, %5769 ], [ 1.000000e+00, %5446 ], [ 1.000000e+00, %5481 ], [ 1.000000e+00, %5442 ]
  %5842 = fcmp fast ogt float %5438, 0.000000e+00
  br i1 %5842, label %5843, label %5851, !dx.controlflow.hints !112

; <label>:5843                                    ; preds = %5840
  %5844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5845 = extractvalue %dx.types.CBufRet.f32 %5844, 2
  %5846 = fadd fast float %5845, %5319
  %5847 = call float @dx.op.binary.f32(i32 35, float %5846, float 0.000000e+00)  ; FMax(a,b)
  %5848 = fadd fast float %5847, 0x3F10000000000000
  %5849 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5337, float %5338, float undef, float undef, i32 0, i32 0, i32 undef, float %5848)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5850 = extractvalue %dx.types.ResRet.f32 %5849, 0
  br label %5851

; <label>:5851                                    ; preds = %5843, %5840
  %5852 = phi float [ %5850, %5843 ], [ 1.000000e+00, %5840 ]
  %5853 = fcmp fast ogt float %5436, 0.000000e+00
  br i1 %5853, label %5854, label %5862, !dx.controlflow.hints !113

; <label>:5854                                    ; preds = %5851
  %5855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5856 = extractvalue %dx.types.CBufRet.f32 %5855, 1
  %5857 = fadd fast float %5856, %5319
  %5858 = call float @dx.op.binary.f32(i32 35, float %5857, float 0.000000e+00)  ; FMax(a,b)
  %5859 = fadd fast float %5858, 0x3F10000000000000
  %5860 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5329, float %5330, float undef, float undef, i32 0, i32 0, i32 undef, float %5859)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5861 = extractvalue %dx.types.ResRet.f32 %5860, 0
  br label %5862

; <label>:5862                                    ; preds = %5854, %5851
  %5863 = phi float [ %5861, %5854 ], [ 1.000000e+00, %5851 ]
  %5864 = fcmp fast ogt float %5435, 0.000000e+00
  br i1 %5864, label %5865, label %5877, !dx.controlflow.hints !114

; <label>:5865                                    ; preds = %5862
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 0
  %5868 = fadd fast float %5867, %5319
  %5869 = call float @dx.op.binary.f32(i32 35, float %5868, float 0.000000e+00)  ; FMax(a,b)
  %5870 = fadd fast float %5869, 0x3F10000000000000
  br i1 %5322, label %5871, label %5874, !dx.controlflow.hints !115

; <label>:5871                                    ; preds = %5865
  %5872 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %5311, float %5315, float undef, float undef, i32 0, i32 0, i32 undef, float %5870)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5873 = extractvalue %dx.types.ResRet.f32 %5872, 0
  br label %5877

; <label>:5874                                    ; preds = %5865
  %5875 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5311, float %5315, float undef, float undef, i32 0, i32 0, i32 undef, float %5870)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5876 = extractvalue %dx.types.ResRet.f32 %5875, 0
  br label %5877

; <label>:5877                                    ; preds = %5874, %5871, %5862
  %5878 = phi float [ %5873, %5871 ], [ %5876, %5874 ], [ 1.000000e+00, %5862 ]
  %5879 = fsub fast float %5852, %5841
  %5880 = fmul fast float %5879, %5408
  %5881 = fadd fast float %5880, %5841
  %5882 = fsub fast float %5863, %5881
  %5883 = fmul fast float %5882, %5407
  %5884 = fadd fast float %5883, %5881
  %5885 = fsub fast float %5878, %5884
  %5886 = fmul fast float %5885, %5435
  %5887 = fadd fast float %5886, %5884
  %5888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5889 = extractvalue %dx.types.CBufRet.f32 %5888, 2
  %5890 = fcmp fast ogt float %5889, 0.000000e+00
  br i1 %5890, label %5891, label %5931, !dx.controlflow.hints !116

; <label>:5891                                    ; preds = %5877
  %5892 = fcmp fast ugt float %5889, 0.000000e+00
  br i1 %5892, label %5893, label %5928

; <label>:5893                                    ; preds = %5891
  %5894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5895 = extractvalue %dx.types.CBufRet.f32 %5894, 0
  %5896 = extractvalue %dx.types.CBufRet.f32 %5894, 1
  %5897 = extractvalue %dx.types.CBufRet.f32 %5894, 2
  %5898 = extractvalue %dx.types.CBufRet.f32 %5894, 3
  %5899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5900 = extractvalue %dx.types.CBufRet.f32 %5899, 0
  %5901 = extractvalue %dx.types.CBufRet.f32 %5899, 1
  %5902 = extractvalue %dx.types.CBufRet.f32 %5899, 2
  %5903 = extractvalue %dx.types.CBufRet.f32 %5899, 3
  %5904 = extractvalue %dx.types.CBufRet.f32 %5888, 0
  %5905 = extractvalue %dx.types.CBufRet.f32 %5888, 1
  %5906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5907 = extractvalue %dx.types.CBufRet.f32 %5906, 0
  %5908 = extractvalue %dx.types.CBufRet.f32 %5906, 1
  %5909 = extractvalue %dx.types.CBufRet.f32 %5906, 2
  %5910 = fadd fast float %5907, %5288
  %5911 = fadd fast float %5908, %5289
  %5912 = fadd fast float %5909, %5290
  %5913 = fmul fast float %5910, %5895
  %5914 = call float @dx.op.tertiary.f32(i32 46, float %5896, float %5911, float %5913)  ; FMad(a,b,c)
  %5915 = call float @dx.op.tertiary.f32(i32 46, float %5897, float %5912, float %5914)  ; FMad(a,b,c)
  %5916 = fadd fast float %5915, %5898
  %5917 = fmul fast float %5910, %5900
  %5918 = call float @dx.op.tertiary.f32(i32 46, float %5901, float %5911, float %5917)  ; FMad(a,b,c)
  %5919 = call float @dx.op.tertiary.f32(i32 46, float %5902, float %5912, float %5918)  ; FMad(a,b,c)
  %5920 = fadd fast float %5919, %5903
  %5921 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5916, float %5920, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5922 = extractvalue %dx.types.ResRet.f32 %5921, 0
  %5923 = fmul fast float %5922, %5905
  %5924 = fadd fast float %5923, %5904
  %5925 = call float @dx.op.unary.f32(i32 7, float %5924)  ; Saturate(value)
  %5926 = fmul fast float %5925, %5889
  %5927 = fsub fast float 1.000000e+00, %5926
  br label %5928

; <label>:5928                                    ; preds = %5893, %5891
  %5929 = phi float [ %5927, %5893 ], [ 1.000000e+00, %5891 ]
  %5930 = fmul fast float %5929, %5887
  br label %5931

; <label>:5931                                    ; preds = %5928, %5877, %5268
  %5932 = phi float [ 1.000000e+00, %5268 ], [ %5930, %5928 ], [ %5887, %5877 ]
  %5933 = call float @dx.op.binary.f32(i32 36, float %5932, float %5932)  ; FMin(a,b)
  %5934 = call float @dx.op.binary.f32(i32 36, float %5932, float %5933)  ; FMin(a,b)
  %5935 = fcmp fast ogt float %5934, 0.000000e+00
  br i1 %5935, label %5936, label %6096, !dx.controlflow.hints !117

; <label>:5936                                    ; preds = %5931
  %5937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5938 = extractvalue %dx.types.CBufRet.f32 %5937, 0
  %5939 = extractvalue %dx.types.CBufRet.f32 %5937, 1
  %5940 = extractvalue %dx.types.CBufRet.f32 %5937, 2
  %5941 = extractvalue %dx.types.CBufRet.f32 %5937, 3
  %5942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5943 = extractvalue %dx.types.CBufRet.f32 %5942, 0
  %5944 = extractvalue %dx.types.CBufRet.f32 %5942, 1
  %5945 = extractvalue %dx.types.CBufRet.f32 %5942, 2
  %5946 = extractvalue %dx.types.CBufRet.f32 %5942, 3
  %5947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5948 = extractvalue %dx.types.CBufRet.f32 %5947, 0
  %5949 = extractvalue %dx.types.CBufRet.f32 %5947, 1
  %5950 = extractvalue %dx.types.CBufRet.f32 %5947, 2
  %5951 = extractvalue %dx.types.CBufRet.f32 %5947, 3
  %5952 = fmul fast float %5938, %5288
  %5953 = call float @dx.op.tertiary.f32(i32 46, float %5289, float %5939, float %5952)  ; FMad(a,b,c)
  %5954 = call float @dx.op.tertiary.f32(i32 46, float %5290, float %5940, float %5953)  ; FMad(a,b,c)
  %5955 = fadd fast float %5954, %5941
  %5956 = fmul fast float %5943, %5288
  %5957 = call float @dx.op.tertiary.f32(i32 46, float %5289, float %5944, float %5956)  ; FMad(a,b,c)
  %5958 = call float @dx.op.tertiary.f32(i32 46, float %5290, float %5945, float %5957)  ; FMad(a,b,c)
  %5959 = fadd fast float %5958, %5946
  %5960 = fmul fast float %5948, %5288
  %5961 = call float @dx.op.tertiary.f32(i32 46, float %5289, float %5949, float %5960)  ; FMad(a,b,c)
  %5962 = call float @dx.op.tertiary.f32(i32 46, float %5290, float %5950, float %5961)  ; FMad(a,b,c)
  %5963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5964 = extractvalue %dx.types.CBufRet.f32 %5963, 0
  %5965 = extractvalue %dx.types.CBufRet.f32 %5963, 1
  %5966 = extractvalue %dx.types.CBufRet.f32 %5963, 3
  %5967 = fmul fast float %5966, %5955
  %5968 = fmul fast float %5966, %5959
  %5969 = fadd fast float %5967, %5964
  %5970 = fadd fast float %5968, %5965
  %5971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5972 = extractvalue %dx.types.CBufRet.f32 %5971, 0
  %5973 = extractvalue %dx.types.CBufRet.f32 %5971, 1
  %5974 = fsub fast float %5969, %5972
  %5975 = fsub fast float %5970, %5973
  %5976 = fcmp fast olt float %5974, 0.000000e+00
  %5977 = fcmp fast olt float %5975, 0.000000e+00
  %5978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.f32 %5978, 0
  %5980 = extractvalue %dx.types.CBufRet.f32 %5978, 1
  %5981 = extractvalue %dx.types.CBufRet.f32 %5978, 2
  %5982 = extractvalue %dx.types.CBufRet.f32 %5978, 3
  %5983 = select i1 %5976, float %5979, float %5981
  %5984 = select i1 %5977, float %5980, float %5982
  %5985 = fmul fast float %5983, %5974
  %5986 = fmul fast float %5984, %5975
  %5987 = call float @dx.op.unary.f32(i32 6, float %5985)  ; FAbs(value)
  %5988 = call float @dx.op.unary.f32(i32 6, float %5986)  ; FAbs(value)
  %5989 = extractvalue %dx.types.CBufRet.f32 %5283, 0
  %5990 = call float @dx.op.binary.f32(i32 35, float %5987, float %5988)  ; FMax(a,b)
  %5991 = fsub fast float %5989, %5990
  %5992 = call float @dx.op.unary.f32(i32 7, float %5991)  ; Saturate(value)
  %5993 = fcmp fast ogt float %5992, 0.000000e+00
  br i1 %5993, label %5994, label %6035, !dx.controlflow.hints !118

; <label>:5994                                    ; preds = %5936
  %5995 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %5969, float %5970, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5996 = extractvalue %dx.types.ResRet.f32 %5995, 1
  %5997 = fcmp fast ogt float %5996, 0.000000e+00
  br i1 %5997, label %5998, label %6030

; <label>:5998                                    ; preds = %5994
  %5999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %5969, float %5970, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6000 = extractvalue %dx.types.ResRet.f32 %5999, 0
  %6001 = extractvalue %dx.types.ResRet.f32 %5999, 1
  %6002 = extractvalue %dx.types.ResRet.f32 %5999, 2
  %6003 = extractvalue %dx.types.ResRet.f32 %5999, 3
  %6004 = fsub fast float 1.000000e+00, %5951
  %6005 = fsub fast float %6004, %5962
  %6006 = fmul fast float %6005, 0x400921FB60000000
  %6007 = fadd fast float %6006, 0x3FF921FB60000000
  %6008 = call float @dx.op.unary.f32(i32 13, float %6007)  ; Sin(value)
  %6009 = fadd fast float %6008, -1.000000e+00
  %6010 = fmul fast float %6009, 0x3FD45F3060000000
  %6011 = fmul fast float %6005, 0x401921FB60000000
  %6012 = fadd fast float %6011, 0x400921FB60000000
  %6013 = call float @dx.op.unary.f32(i32 13, float %6012)  ; Sin(value)
  %6014 = fadd fast float %6013, 0x3E7777A5C0000000
  %6015 = fmul fast float %6014, 0x3FC45F3060000000
  %6016 = fmul fast float %6005, 0x4022D97C80000000
  %6017 = fadd fast float %6016, 0x4012D97C80000000
  %6018 = call float @dx.op.unary.f32(i32 13, float %6017)  ; Sin(value)
  %6019 = fadd fast float %6018, 1.000000e+00
  %6020 = fmul fast float %6019, 0x3FBB2995E0000000
  %6021 = fmul fast float %6005, 0x402921FB60000000
  %6022 = fadd fast float %6021, 0x401921FB60000000
  %6023 = call float @dx.op.unary.f32(i32 13, float %6022)  ; Sin(value)
  %6024 = fadd fast float %6023, 0xBE8777A5C0000000
  %6025 = fmul fast float %6024, 0x3FB45F3060000000
  %6026 = call float @dx.op.dot4.f32(i32 56, float %6000, float %6001, float %6002, float %6003, float %6010, float %6015, float %6020, float %6025)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6027 = fmul fast float %6026, 0xBFF7154760000000
  %6028 = call float @dx.op.unary.f32(i32 21, float %6027)  ; Exp(value)
  %6029 = call float @dx.op.unary.f32(i32 7, float %6028)  ; Saturate(value)
  br label %6030

; <label>:6030                                    ; preds = %5998, %5994
  %6031 = phi float [ %6029, %5998 ], [ 1.000000e+00, %5994 ]
  %6032 = fadd fast float %6031, -1.000000e+00
  %6033 = fmul fast float %6032, %5992
  %6034 = fadd fast float %6033, 1.000000e+00
  br label %6035

; <label>:6035                                    ; preds = %6030, %5936
  %6036 = phi float [ %6034, %6030 ], [ 1.000000e+00, %5936 ]
  %6037 = fmul fast float %6036, %5932
  %6038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6039 = extractvalue %dx.types.CBufRet.f32 %6038, 0
  %6040 = extractvalue %dx.types.CBufRet.f32 %6038, 1
  %6041 = extractvalue %dx.types.CBufRet.f32 %6038, 2
  %6042 = fadd fast float %6039, %191
  %6043 = fadd fast float %6040, %192
  %6044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6045 = extractvalue %dx.types.CBufRet.f32 %6044, 1
  %6046 = fsub fast float -0.000000e+00, %6042
  %6047 = fsub fast float -0.000000e+00, %6043
  %6048 = fsub fast float %5052, %6041
  %6049 = fadd fast float %6048, %6045
  %6050 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6046, float %6047, float %6049)  ; Dot3(ax,ay,az,bx,by,bz)
  %6051 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5269, float %5270, float %5271)  ; Dot3(ax,ay,az,bx,by,bz)
  %6052 = fdiv fast float 1.000000e+00, %6051
  %6053 = fmul fast float %6052, %6050
  %6054 = fmul fast float %5269, %6053
  %6055 = fmul fast float %5270, %6053
  %6056 = fadd fast float %6054, %6042
  %6057 = fadd fast float %6055, %6043
  %6058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6059 = extractvalue %dx.types.CBufRet.f32 %6058, 0
  %6060 = extractvalue %dx.types.CBufRet.f32 %6058, 1
  %6061 = fsub fast float %6056, %6059
  %6062 = fsub fast float %6057, %6060
  %6063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6064 = extractvalue %dx.types.CBufRet.f32 %6063, 2
  %6065 = extractvalue %dx.types.CBufRet.f32 %6063, 3
  %6066 = fmul fast float %6061, %6064
  %6067 = fmul fast float %6062, %6065
  %6068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6069 = extractvalue %dx.types.CBufRet.i32 %6068, 3
  %6070 = icmp eq i32 %6069, 0
  br i1 %6070, label %6076, label %6071

; <label>:6071                                    ; preds = %6035
  %6072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6066, float %6067, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6073 = extractvalue %dx.types.ResRet.f32 %6072, 0
  %6074 = extractvalue %dx.types.ResRet.f32 %6072, 1
  %6075 = extractvalue %dx.types.ResRet.f32 %6072, 2
  br label %6081

; <label>:6076                                    ; preds = %6035
  %6077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6066, float %6067, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6078 = extractvalue %dx.types.ResRet.f32 %6077, 0
  %6079 = extractvalue %dx.types.ResRet.f32 %6077, 1
  %6080 = extractvalue %dx.types.ResRet.f32 %6077, 2
  br label %6081

; <label>:6081                                    ; preds = %6076, %6071
  %6082 = phi float [ %6073, %6071 ], [ %6078, %6076 ]
  %6083 = phi float [ %6074, %6071 ], [ %6079, %6076 ]
  %6084 = phi float [ %6075, %6071 ], [ %6080, %6076 ]
  %6085 = extractvalue %dx.types.CBufRet.f32 %6044, 2
  %6086 = fmul fast float %6085, %6082
  %6087 = extractvalue %dx.types.CBufRet.f32 %6044, 0
  %6088 = fsub fast float %6053, %6087
  %6089 = fsub fast float %6088, %6086
  %6090 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6089)  ; FMax(a,b)
  %6091 = fmul fast float %6090, %6083
  %6092 = call float @dx.op.binary.f32(i32 36, float %6084, float %6091)  ; FMin(a,b)
  %6093 = fmul fast float %6092, 0xBFF7154760000000
  %6094 = call float @dx.op.unary.f32(i32 21, float %6093)  ; Exp(value)
  %6095 = fmul fast float %6037, %6094
  br label %6096

; <label>:6096                                    ; preds = %6081, %5931
  %6097 = phi float [ %6095, %6081 ], [ %5932, %5931 ]
  %6098 = call float @dx.op.binary.f32(i32 36, float %6097, float %6097)  ; FMin(a,b)
  %6099 = call float @dx.op.binary.f32(i32 36, float %6097, float %6098)  ; FMin(a,b)
  %6100 = fcmp fast ogt float %6099, 0.000000e+00
  br i1 %6100, label %6101, label %6352, !dx.controlflow.hints !119

; <label>:6101                                    ; preds = %6096
  %6102 = fmul fast float %6097, %5280
  %6103 = fmul fast float %6097, %5281
  %6104 = fmul fast float %6097, %5282
  %6105 = fsub fast float %193, %4248
  %6106 = fcmp fast ogt float %6105, 0.000000e+00
  %6107 = fmul fast float %5269, 5.120000e+02
  %6108 = fmul fast float %5270, 5.120000e+02
  %6109 = fmul fast float %5271, 5.120000e+02
  %6110 = fadd fast float %6109, %193
  %6111 = fsub fast float %4248, %6110
  %6112 = fmul fast float %6111, 2.000000e+00
  %6113 = fadd fast float %6112, %6110
  %6114 = select i1 %6106, float %6113, float %6110
  %6115 = fsub fast float %6114, %193
  %6116 = call float @dx.op.dot3.f32(i32 55, float %6107, float %6108, float %6115, float %6107, float %6108, float %6115)  ; Dot3(ax,ay,az,bx,by,bz)
  %6117 = call float @dx.op.unary.f32(i32 25, float %6116)  ; Rsqrt(value)
  %6118 = fmul fast float %6117, %6107
  %6119 = fmul fast float %6117, %6108
  %6120 = fmul fast float %6117, %6115
  %6121 = fsub fast float %4248, %193
  %6122 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6121)  ; Dot3(ax,ay,az,bx,by,bz)
  %6123 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6118, float %6119, float %6120)  ; Dot3(ax,ay,az,bx,by,bz)
  %6124 = fdiv fast float 1.000000e+00, %6123
  %6125 = fmul fast float %6124, %6122
  %6126 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6105, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6127 = fcmp fast ogt float %6126, 0.000000e+00
  %6128 = fcmp fast olt float %6126, 0.000000e+00
  %6129 = zext i1 %6127 to i32
  %6130 = zext i1 %6128 to i32
  %6131 = sub nsw i32 %6129, %6130
  %6132 = sitofp i32 %6131 to float
  %6133 = fsub fast float %6114, %4248
  %6134 = call float @dx.op.dot3.f32(i32 55, float %6107, float %6108, float %6133, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6135 = fcmp fast ogt float %6134, 0.000000e+00
  %6136 = fcmp fast olt float %6134, 0.000000e+00
  %6137 = zext i1 %6135 to i32
  %6138 = zext i1 %6136 to i32
  %6139 = sub nsw i32 %6137, %6138
  %6140 = sitofp i32 %6139 to float
  %6141 = fcmp fast une float %6132, %6140
  br i1 %6141, label %6142, label %6152

; <label>:6142                                    ; preds = %6101
  %6143 = fmul fast float %6125, %6120
  %6144 = fmul fast float %6125, %6119
  %6145 = fmul fast float %6125, %6118
  %6146 = fmul fast float %6145, %6145
  %6147 = fmul fast float %6144, %6144
  %6148 = fadd fast float %6146, %6147
  %6149 = fmul fast float %6143, %6143
  %6150 = fadd fast float %6148, %6149
  %6151 = call float @dx.op.unary.f32(i32 24, float %6150)  ; Sqrt(value)
  br label %6162

; <label>:6152                                    ; preds = %6101
  %6153 = icmp slt i32 %6131, 0
  br i1 %6153, label %6154, label %6162

; <label>:6154                                    ; preds = %6152
  %6155 = fsub fast float %193, %6114
  %6156 = fmul fast float %6107, %6107
  %6157 = fmul fast float %6108, %6108
  %6158 = fadd fast float %6156, %6157
  %6159 = fmul fast float %6155, %6155
  %6160 = fadd fast float %6158, %6159
  %6161 = call float @dx.op.unary.f32(i32 24, float %6160)  ; Sqrt(value)
  br label %6162

; <label>:6162                                    ; preds = %6154, %6152, %6142
  %6163 = phi float [ %6151, %6142 ], [ %6161, %6154 ], [ 0.000000e+00, %6152 ]
  %6164 = fsub fast float -0.000000e+00, %6163
  %6165 = select i1 %6106, float -0.000000e+00, float %6164
  %6166 = fmul fast float %4249, 0x3FF7154760000000
  %6167 = fmul fast float %6166, %6165
  %6168 = fmul fast float %4250, 0x3FF7154760000000
  %6169 = fmul fast float %6168, %6165
  %6170 = fmul fast float %4251, 0x3FF7154760000000
  %6171 = fmul fast float %6170, %6165
  %6172 = call float @dx.op.unary.f32(i32 21, float %6167)  ; Exp(value)
  %6173 = call float @dx.op.unary.f32(i32 21, float %6169)  ; Exp(value)
  %6174 = call float @dx.op.unary.f32(i32 21, float %6171)  ; Exp(value)
  %6175 = call float @dx.op.unary.f32(i32 7, float %6172)  ; Saturate(value)
  %6176 = call float @dx.op.unary.f32(i32 7, float %6173)  ; Saturate(value)
  %6177 = call float @dx.op.unary.f32(i32 7, float %6174)  ; Saturate(value)
  %6178 = fmul fast float %6102, %6175
  %6179 = fmul fast float %6103, %6176
  %6180 = fmul fast float %6104, %6177
  %6181 = fsub fast float %5269, %5040
  %6182 = fsub fast float %5270, %5039
  %6183 = fsub fast float %5271, %5038
  %6184 = call float @dx.op.dot3.f32(i32 55, float %6181, float %6182, float %6183, float %6181, float %6182, float %6183)  ; Dot3(ax,ay,az,bx,by,bz)
  %6185 = call float @dx.op.unary.f32(i32 25, float %6184)  ; Rsqrt(value)
  %6186 = fmul fast float %6185, %6181
  %6187 = fmul fast float %6185, %6182
  %6188 = fmul fast float %6185, %6183
  %6189 = call float @dx.op.dot3.f32(i32 55, float %5269, float %5270, float %5271, float %5047, float %5048, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %6190 = call float @dx.op.dot3.f32(i32 55, float %5037, float %5036, float %5035, float %6186, float %6187, float %6188)  ; Dot3(ax,ay,az,bx,by,bz)
  %6191 = call float @dx.op.unary.f32(i32 7, float %6189)  ; Saturate(value)
  %6192 = fmul fast float %6191, %6191
  %6193 = fmul fast float %6192, %5068
  %6194 = call float @dx.op.unary.f32(i32 7, float %6193)  ; Saturate(value)
  %6195 = fmul fast float %6194, %6191
  %6196 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5048, float %5049, float %6186, float %6187, float %6188)  ; Dot3(ax,ay,az,bx,by,bz)
  %6197 = fmul fast float %6196, %6196
  %6198 = call float @dx.op.unary.f32(i32 6, float %6189)  ; FAbs(value)
  %6199 = fsub fast float 1.000000e+00, %5050
  %6200 = call float @dx.op.binary.f32(i32 35, float %6199, float 0x3F847AE140000000)  ; FMax(a,b)
  %6201 = fmul fast float %6200, %6200
  %6202 = fmul fast float %6201, %6201
  %6203 = fsub fast float 1.000000e+00, %6202
  %6204 = fmul fast float %5055, %5055
  %6205 = fmul fast float %6204, %6203
  %6206 = fadd fast float %6205, %6202
  %6207 = bitcast float %6206 to i32
  %6208 = ashr i32 %6207, 1
  %6209 = add nsw i32 %6208, 532487669
  %6210 = bitcast i32 %6209 to float
  %6211 = fadd fast float %6210, %5055
  %6212 = fmul fast float %6202, %6197
  %6213 = fsub fast float 1.000000e+00, %6197
  %6214 = fadd fast float %6213, %6212
  %6215 = fmul fast float %6198, %6198
  %6216 = fmul fast float %6215, %6203
  %6217 = fadd fast float %6216, %6202
  %6218 = bitcast float %6217 to i32
  %6219 = ashr i32 %6218, 1
  %6220 = add nsw i32 %6219, 532487669
  %6221 = bitcast i32 %6220 to float
  %6222 = fadd fast float %6221, %6198
  %6223 = fmul fast float %6214, %6214
  %6224 = fmul fast float %6223, %6211
  %6225 = fmul fast float %6224, %6222
  %6226 = fdiv fast float 0x3FF0A00000000000, %6225
  %6227 = fmul fast float %6226, %6202
  %6228 = call float @dx.op.unary.f32(i32 6, float %6190)  ; FAbs(value)
  %6229 = fsub fast float 1.000000e+00, %6228
  %6230 = bitcast float %6229 to i32
  %6231 = sitofp i32 %6230 to float
  %6232 = fmul fast float %6231, 5.000000e+00
  %6233 = fadd fast float %6232, 0xC1EFBF8940000000
  %6234 = fptosi float %6233 to i32
  %6235 = bitcast i32 %6234 to float
  %6236 = fsub fast float 1.000000e+00, %5044
  %6237 = fsub fast float 1.000000e+00, %5045
  %6238 = fsub fast float 1.000000e+00, %5053
  %6239 = fmul fast float %6235, %6236
  %6240 = fmul fast float %6235, %6237
  %6241 = fmul fast float %6235, %6238
  %6242 = fadd fast float %6239, %5044
  %6243 = fadd fast float %6240, %5045
  %6244 = fadd fast float %6241, %5053
  br i1 %5180, label %6245, label %6268

; <label>:6245                                    ; preds = %6162
  %6246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3846, float %6228, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6247 = extractvalue %dx.types.ResRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.ResRet.f32 %6246, 1
  %6249 = extractvalue %dx.types.ResRet.f32 %6246, 2
  %6250 = fadd fast float %6247, -5.000000e-01
  %6251 = fadd fast float %6248, -5.000000e-01
  %6252 = fadd fast float %6249, -5.000000e-01
  %6253 = fmul fast float %5044, 4.000000e+00
  %6254 = fmul fast float %6253, %6236
  %6255 = fmul fast float %6254, %6250
  %6256 = fmul fast float %5045, 4.000000e+00
  %6257 = fmul fast float %6256, %6237
  %6258 = fmul fast float %6257, %6251
  %6259 = fmul fast float %5053, 4.000000e+00
  %6260 = fmul fast float %6259, %6238
  %6261 = fmul fast float %6260, %6252
  %6262 = fadd fast float %6255, %6242
  %6263 = fadd fast float %6258, %6243
  %6264 = fadd fast float %6261, %6244
  %6265 = call float @dx.op.unary.f32(i32 7, float %6262)  ; Saturate(value)
  %6266 = call float @dx.op.unary.f32(i32 7, float %6263)  ; Saturate(value)
  %6267 = call float @dx.op.unary.f32(i32 7, float %6264)  ; Saturate(value)
  br label %6268

; <label>:6268                                    ; preds = %6245, %6162
  %6269 = phi float [ %6265, %6245 ], [ %6242, %6162 ]
  %6270 = phi float [ %6266, %6245 ], [ %6243, %6162 ]
  %6271 = phi float [ %6267, %6245 ], [ %6244, %6162 ]
  %6272 = fmul fast float %6189, 9.843750e-01
  %6273 = fadd fast float %6272, 7.812500e-03
  %6274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6273, float %5170, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6275 = extractvalue %dx.types.ResRet.f32 %6274, 2
  %6276 = extractvalue %dx.types.ResRet.f32 %6274, 3
  %6277 = fmul fast float %6275, %5044
  %6278 = fmul fast float %6275, %5045
  %6279 = fmul fast float %6275, %5053
  %6280 = fadd fast float %6277, %6276
  %6281 = fadd fast float %6278, %6276
  %6282 = fadd fast float %6279, %6276
  br i1 %5180, label %6283, label %6306

; <label>:6283                                    ; preds = %6268
  %6284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3846, float %6189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6285 = extractvalue %dx.types.ResRet.f32 %6284, 0
  %6286 = extractvalue %dx.types.ResRet.f32 %6284, 1
  %6287 = extractvalue %dx.types.ResRet.f32 %6284, 2
  %6288 = fadd fast float %6285, -5.000000e-01
  %6289 = fadd fast float %6286, -5.000000e-01
  %6290 = fadd fast float %6287, -5.000000e-01
  %6291 = fmul fast float %5044, 4.000000e+00
  %6292 = fmul fast float %6291, %6236
  %6293 = fmul fast float %6292, %6288
  %6294 = fmul fast float %5045, 4.000000e+00
  %6295 = fmul fast float %6294, %6237
  %6296 = fmul fast float %6295, %6289
  %6297 = fmul fast float %5053, 4.000000e+00
  %6298 = fmul fast float %6297, %6238
  %6299 = fmul fast float %6298, %6290
  %6300 = fadd fast float %6293, %6280
  %6301 = fadd fast float %6296, %6281
  %6302 = fadd fast float %6299, %6282
  %6303 = call float @dx.op.unary.f32(i32 7, float %6300)  ; Saturate(value)
  %6304 = call float @dx.op.unary.f32(i32 7, float %6301)  ; Saturate(value)
  %6305 = call float @dx.op.unary.f32(i32 7, float %6302)  ; Saturate(value)
  br label %6306

; <label>:6306                                    ; preds = %6283, %6268
  %6307 = phi float [ %6303, %6283 ], [ %6280, %6268 ]
  %6308 = phi float [ %6304, %6283 ], [ %6281, %6268 ]
  %6309 = phi float [ %6305, %6283 ], [ %6282, %6268 ]
  %6310 = call float @dx.op.binary.f32(i32 35, float %6308, float %6309)  ; FMax(a,b)
  %6311 = call float @dx.op.binary.f32(i32 35, float %6307, float %6310)  ; FMax(a,b)
  %6312 = fsub fast float 1.000000e+00, %6311
  %6313 = fmul fast float %6269, %6227
  %6314 = fmul fast float %6270, %6227
  %6315 = fmul fast float %6271, %6227
  %6316 = fsub fast float 1.000000e+00, %6190
  %6317 = bitcast float %6316 to i32
  %6318 = sitofp i32 %6317 to float
  %6319 = fmul fast float %6318, 5.000000e+00
  %6320 = fadd fast float %6319, 0xC1EFBF8940000000
  %6321 = fptosi float %6320 to i32
  %6322 = bitcast i32 %6321 to float
  %6323 = fmul fast float %6322, %3847
  %6324 = fmul fast float %6312, %6323
  %6325 = fmul fast float %6324, %5230
  %6326 = fmul fast float %6324, %5231
  %6327 = fmul fast float %6324, %5232
  %6328 = fadd fast float %6325, %6313
  %6329 = fadd fast float %6326, %6314
  %6330 = fadd fast float %6327, %6315
  %6331 = fmul fast float %6195, %6178
  %6332 = fmul fast float %6331, %6312
  %6333 = fmul fast float %6195, %6179
  %6334 = fmul fast float %6333, %6312
  %6335 = fmul fast float %6195, %6180
  %6336 = fmul fast float %6335, %6312
  %6337 = fmul fast float %6331, %6328
  %6338 = fmul fast float %6333, %6329
  %6339 = fmul fast float %6335, %6330
  %6340 = fadd fast float %6332, %5214
  %6341 = fmul fast float %6340, %3843
  %6342 = fadd fast float %6334, %5215
  %6343 = fmul fast float %6342, %3843
  %6344 = fadd fast float %6336, %5216
  %6345 = fmul fast float %6344, %3843
  %6346 = fadd fast float %6337, %5257
  %6347 = fmul fast float %6346, %3843
  %6348 = fadd fast float %6338, %5260
  %6349 = fmul fast float %6348, %3843
  %6350 = fadd fast float %6339, %5263
  %6351 = fmul fast float %6350, %3843
  br label %6352

; <label>:6352                                    ; preds = %6306, %6096, %5207
  %6353 = phi float [ %5258, %5207 ], [ %5258, %6096 ], [ %6347, %6306 ]
  %6354 = phi float [ %5261, %5207 ], [ %5261, %6096 ], [ %6349, %6306 ]
  %6355 = phi float [ %5264, %5207 ], [ %5264, %6096 ], [ %6351, %6306 ]
  %6356 = phi float [ %5253, %5207 ], [ %5253, %6096 ], [ %6341, %6306 ]
  %6357 = phi float [ %5254, %5207 ], [ %5254, %6096 ], [ %6343, %6306 ]
  %6358 = phi float [ %5255, %5207 ], [ %5255, %6096 ], [ %6345, %6306 ]
  %6359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6360 = extractvalue %dx.types.CBufRet.i32 %6359, 0
  %6361 = icmp eq i32 %6360, 0
  br i1 %6361, label %6982, label %6362

; <label>:6362                                    ; preds = %6352
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 2
  %6365 = extractvalue %dx.types.CBufRet.f32 %6363, 3
  %6366 = fmul fast float %6364, %104
  %6367 = fmul fast float %6365, %105
  %6368 = fptoui float %6366 to i32
  %6369 = fptoui float %6367 to i32
  %6370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6371 = extractvalue %dx.types.CBufRet.f32 %6370, 0
  %6372 = extractvalue %dx.types.CBufRet.f32 %6370, 2
  %6373 = extractvalue %dx.types.CBufRet.f32 %6370, 3
  %6374 = fadd fast float %95, -4.000000e+00
  %6375 = call float @dx.op.binary.f32(i32 35, float %6374, float 0.000000e+00)  ; FMax(a,b)
  %6376 = fadd fast float %6375, %6371
  %6377 = fmul fast float %6376, %6372
  %6378 = call float @dx.op.unary.f32(i32 23, float %6377)  ; Log(value)
  %6379 = fmul fast float %6378, %6373
  %6380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6381 = extractvalue %dx.types.CBufRet.f32 %6380, 2
  %6382 = fmul fast float %6379, %6381
  %6383 = call float @dx.op.unary.f32(i32 7, float %6382)  ; Saturate(value)
  %6384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.i32 %6384, 1
  %6386 = add i32 %6385, -1
  %6387 = uitofp i32 %6385 to float
  %6388 = fmul fast float %6387, %6383
  %6389 = fptoui float %6388 to i32
  %6390 = call i32 @dx.op.binary.i32(i32 40, i32 %6389, i32 %6386)  ; UMin(a,b)
  %6391 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6392 = extractvalue %dx.types.CBufRet.i32 %6391, 2
  %6393 = extractvalue %dx.types.CBufRet.i32 %6391, 3
  %6394 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6369, i32 %6392, i32 %6368)  ; UMad(a,b,c)
  %6395 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6390, i32 %6393, i32 %6394)  ; UMad(a,b,c)
  %6396 = add nsw i32 %6360, -1
  %6397 = call i32 @dx.op.binary.i32(i32 37, i32 %6396, i32 0)  ; IMax(a,b)
  %6398 = call float @dx.op.binary.f32(i32 35, float %95, float 0.000000e+00)  ; FMax(a,b)
  %6399 = fptoui float %6398 to i32
  %6400 = lshr i32 %6399, 5
  %6401 = call i32 @dx.op.binary.i32(i32 40, i32 %6400, i32 8191)  ; UMin(a,b)
  %6402 = shl i32 %6401, 2
  %6403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6402, i32 undef)  ; BufferLoad(srv,index,wot)
  %6404 = extractvalue %dx.types.ResRet.i32 %6403, 0
  %6405 = lshr i32 %6404, 16
  %6406 = and i32 %6404, 65535
  %6407 = lshr i32 %6404, 21
  %6408 = lshr i32 %6406, 5
  %6409 = call i32 @dx.op.binary.i32(i32 40, i32 %6408, i32 %6397)  ; UMin(a,b)
  %6410 = icmp ugt i32 %6407, %6409
  br i1 %6410, label %6982, label %6411

; <label>:6411                                    ; preds = %6362
  br label %6412

; <label>:6412                                    ; preds = %6972, %6411
  %6413 = phi i32 [ %6979, %6972 ], [ %6407, %6411 ]
  %6414 = phi float [ %6973, %6972 ], [ %6353, %6411 ]
  %6415 = phi float [ %6974, %6972 ], [ %6354, %6411 ]
  %6416 = phi float [ %6975, %6972 ], [ %6355, %6411 ]
  %6417 = phi float [ %6976, %6972 ], [ %6356, %6411 ]
  %6418 = phi float [ %6977, %6972 ], [ %6357, %6411 ]
  %6419 = phi float [ %6978, %6972 ], [ %6358, %6411 ]
  %6420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6421 = extractvalue %dx.types.CBufRet.i32 %6420, 0
  %6422 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6395, i32 %6421, i32 %6413)  ; UMad(a,b,c)
  %6423 = shl i32 %6422, 2
  %6424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6423, i32 undef)  ; BufferLoad(srv,index,wot)
  %6425 = extractvalue %dx.types.ResRet.i32 %6424, 0
  %6426 = shl i32 %6413, 5
  %6427 = sub nsw i32 %6405, %6426
  %6428 = call i32 @dx.op.binary.i32(i32 37, i32 %6427, i32 0)  ; IMax(a,b)
  %6429 = call i32 @dx.op.binary.i32(i32 38, i32 %6428, i32 31)  ; IMin(a,b)
  %6430 = sub nsw i32 1, %6405
  %6431 = add nsw i32 %6430, %6406
  %6432 = call i32 @dx.op.binary.i32(i32 37, i32 %6431, i32 0)  ; IMax(a,b)
  %6433 = call i32 @dx.op.binary.i32(i32 38, i32 %6432, i32 32)  ; IMin(a,b)
  %6434 = and i32 %6433, 31
  %6435 = shl i32 -1, %6434
  %6436 = xor i32 %6435, -1
  %6437 = and i32 %6429, 31
  %6438 = shl i32 %6436, %6437
  %6439 = icmp eq i32 %6433, 32
  %6440 = select i1 %6439, i32 -1, i32 %6438
  %6441 = and i32 %6440, %6425
  %6442 = icmp eq i32 %6441, 0
  br i1 %6442, label %6972, label %6443

; <label>:6443                                    ; preds = %6412
  br label %6444

; <label>:6444                                    ; preds = %6578, %6443
  %6445 = phi i32 [ %6456, %6578 ], [ %6441, %6443 ]
  %6446 = phi float [ %6579, %6578 ], [ %6414, %6443 ]
  %6447 = phi float [ %6580, %6578 ], [ %6415, %6443 ]
  %6448 = phi float [ %6581, %6578 ], [ %6416, %6443 ]
  %6449 = phi float [ %6582, %6578 ], [ %6417, %6443 ]
  %6450 = phi float [ %6583, %6578 ], [ %6418, %6443 ]
  %6451 = phi float [ %6584, %6578 ], [ %6419, %6443 ]
  %6452 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6445)  ; FirstbitLo(value)
  %6453 = add i32 %6452, %6426
  %6454 = and i32 %6452, 31
  %6455 = shl i32 1, %6454
  %6456 = xor i32 %6455, %6445
  %6457 = mul i32 %6453, 112
  %6458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6457, i32 undef)  ; BufferLoad(srv,index,wot)
  %6459 = extractvalue %dx.types.ResRet.f32 %6458, 0
  %6460 = extractvalue %dx.types.ResRet.f32 %6458, 1
  %6461 = extractvalue %dx.types.ResRet.f32 %6458, 2
  %6462 = or i32 %6457, 12
  %6463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6462, i32 undef)  ; BufferLoad(srv,index,wot)
  %6464 = extractvalue %dx.types.ResRet.f32 %6463, 0
  %6465 = add i32 %6457, 16
  %6466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6465, i32 undef)  ; BufferLoad(srv,index,wot)
  %6467 = extractvalue %dx.types.ResRet.f32 %6466, 0
  %6468 = extractvalue %dx.types.ResRet.f32 %6466, 1
  %6469 = extractvalue %dx.types.ResRet.f32 %6466, 2
  %6470 = add i32 %6457, 28
  %6471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6470, i32 undef)  ; BufferLoad(srv,index,wot)
  %6472 = extractvalue %dx.types.ResRet.i32 %6471, 0
  %6473 = add i32 %6457, 44
  %6474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6473, i32 undef)  ; BufferLoad(srv,index,wot)
  %6475 = extractvalue %dx.types.ResRet.f32 %6474, 0
  %6476 = add i32 %6457, 48
  %6477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6476, i32 undef)  ; BufferLoad(srv,index,wot)
  %6478 = extractvalue %dx.types.ResRet.f32 %6477, 0
  %6479 = extractvalue %dx.types.ResRet.f32 %6477, 1
  %6480 = extractvalue %dx.types.ResRet.f32 %6477, 2
  %6481 = extractvalue %dx.types.ResRet.f32 %6477, 3
  %6482 = add i32 %6457, 64
  %6483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6482, i32 undef)  ; BufferLoad(srv,index,wot)
  %6484 = extractvalue %dx.types.ResRet.f32 %6483, 0
  %6485 = extractvalue %dx.types.ResRet.f32 %6483, 1
  %6486 = extractvalue %dx.types.ResRet.f32 %6483, 2
  %6487 = extractvalue %dx.types.ResRet.f32 %6483, 3
  %6488 = add i32 %6457, 80
  %6489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6488, i32 undef)  ; BufferLoad(srv,index,wot)
  %6490 = extractvalue %dx.types.ResRet.f32 %6489, 1
  %6491 = extractvalue %dx.types.ResRet.f32 %6489, 2
  %6492 = add i32 %6457, 92
  %6493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6492, i32 undef)  ; BufferLoad(srv,index,wot)
  %6494 = extractvalue %dx.types.ResRet.i32 %6493, 0
  %6495 = call float @dx.op.dot3.f32(i32 55, float %6459, float %6460, float %6461, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6496 = select i1 %250, float %6490, float %6459
  %6497 = select i1 %250, float %6495, float %6460
  %6498 = select i1 %250, float %6491, float %6461
  %6499 = and i32 %6494, 65535
  %6500 = uitofp i32 %6499 to float
  %6501 = lshr i32 %6494, 16
  %6502 = uitofp i32 %6501 to float
  %6503 = and i32 %6472, 65535
  %6504 = and i32 %6472, 50331648
  %6505 = icmp eq i32 %6504, 33554432
  %6506 = fsub fast float %6478, %191
  %6507 = fsub fast float %6479, %192
  %6508 = fsub fast float %6480, %193
  %6509 = call float @dx.op.dot3.f32(i32 55, float %6506, float %6507, float %6508, float %6506, float %6507, float %6508)  ; Dot3(ax,ay,az,bx,by,bz)
  %6510 = call float @dx.op.unary.f32(i32 24, float %6509)  ; Sqrt(value)
  %6511 = fdiv fast float 1.000000e+00, %6510
  %6512 = fmul fast float %6511, %6506
  %6513 = fmul fast float %6511, %6507
  %6514 = fmul fast float %6511, %6508
  %6515 = fadd fast float %6510, %6464
  %6516 = fdiv fast float 1.000000e+00, %6515
  %6517 = fmul float %6475, %6516
  %6518 = fmul float %6517, %6517
  %6519 = call float @dx.op.unary.f32(i32 7, float %6518)  ; Saturate(value)
  br i1 %6505, label %6520, label %6541

; <label>:6520                                    ; preds = %6444
  %6521 = fmul fast float %6486, %6467
  %6522 = fmul fast float %6486, %6468
  %6523 = fmul fast float %6486, %6469
  %6524 = fadd fast float %6506, %6521
  %6525 = fadd fast float %6507, %6522
  %6526 = fadd fast float %6508, %6523
  %6527 = call float @dx.op.dot3.f32(i32 55, float %6524, float %6525, float %6526, float %6524, float %6525, float %6526)  ; Dot3(ax,ay,az,bx,by,bz)
  %6528 = call float @dx.op.unary.f32(i32 25, float %6527)  ; Rsqrt(value)
  %6529 = fmul fast float %6528, %6524
  %6530 = fmul fast float %6528, %6525
  %6531 = fmul fast float %6528, %6526
  %6532 = fsub fast float %191, %6478
  %6533 = fsub fast float %192, %6479
  %6534 = fsub fast float %193, %6480
  %6535 = fsub fast float -0.000000e+00, %6532
  %6536 = fsub fast float -0.000000e+00, %6533
  %6537 = fsub fast float -0.000000e+00, %6534
  %6538 = call float @dx.op.dot3.f32(i32 55, float %6535, float %6536, float %6537, float %6467, float %6468, float %6469)  ; Dot3(ax,ay,az,bx,by,bz)
  %6539 = fcmp fast ogt float %6538, 0.000000e+00
  %6540 = uitofp i1 %6539 to float
  br label %6541

; <label>:6541                                    ; preds = %6520, %6444
  %6542 = phi float [ %6540, %6520 ], [ 1.000000e+00, %6444 ]
  %6543 = phi float [ %6529, %6520 ], [ %6512, %6444 ]
  %6544 = phi float [ %6530, %6520 ], [ %6513, %6444 ]
  %6545 = phi float [ %6531, %6520 ], [ %6514, %6444 ]
  %6546 = call float @dx.op.dot3.f32(i32 55, float %6467, float %6468, float %6469, float %6543, float %6544, float %6545)  ; Dot3(ax,ay,az,bx,by,bz)
  %6547 = fmul fast float %6546, %6546
  %6548 = call float @dx.op.unary.f32(i32 7, float %6547)  ; Saturate(value)
  %6549 = fsub fast float 1.000000e+00, %6548
  %6550 = fmul fast float %6549, 5.000000e-01
  %6551 = fcmp fast ogt float %6546, 0.000000e+00
  %6552 = fsub fast float 1.000000e+00, %6550
  %6553 = select i1 %6551, float %6550, float %6552
  %6554 = fmul fast float %6553, %6502
  %6555 = fadd fast float %6554, %6500
  %6556 = fmul fast float %6555, 0x3EF0001000000000
  %6557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %48, float %6556, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6558 = extractvalue %dx.types.ResRet.f32 %6557, 0
  %6559 = fmul fast float %6546, %6484
  %6560 = fadd fast float %6559, %6485
  %6561 = call float @dx.op.unary.f32(i32 7, float %6560)  ; Saturate(value)
  %6562 = select i1 %6505, float 1.000000e+00, float %6561
  %6563 = select i1 %6505, float %6561, float 1.000000e+00
  %6564 = fmul fast float %6510, %6481
  %6565 = fsub fast float 1.000000e+00, %6564
  %6566 = fmul fast float %6565, %6487
  %6567 = call float @dx.op.unary.f32(i32 7, float %6566)  ; Saturate(value)
  %6568 = fmul fast float %6567, %6563
  %6569 = fmul fast float %6568, 2.000000e+00
  %6570 = fsub fast float 3.000000e+00, %6569
  %6571 = fmul fast float %6558, %6542
  %6572 = fmul fast float %6568, %6568
  %6573 = fmul fast float %6572, %6571
  %6574 = fmul fast float %6573, %6570
  %6575 = call float @dx.op.binary.f32(i32 36, float %6574, float %6574)  ; FMin(a,b)
  %6576 = call float @dx.op.binary.f32(i32 36, float %6574, float %6575)  ; FMin(a,b)
  %6577 = fcmp fast ogt float %6576, 0.000000e+00
  br i1 %6577, label %6586, label %6578, !dx.controlflow.hints !120

; <label>:6578                                    ; preds = %6928, %6686, %6541
  %6579 = phi float [ %6446, %6686 ], [ %6446, %6541 ], [ %6968, %6928 ]
  %6580 = phi float [ %6447, %6686 ], [ %6447, %6541 ], [ %6969, %6928 ]
  %6581 = phi float [ %6448, %6686 ], [ %6448, %6541 ], [ %6970, %6928 ]
  %6582 = phi float [ %6449, %6686 ], [ %6449, %6541 ], [ %6962, %6928 ]
  %6583 = phi float [ %6450, %6686 ], [ %6450, %6541 ], [ %6963, %6928 ]
  %6584 = phi float [ %6451, %6686 ], [ %6451, %6541 ], [ %6964, %6928 ]
  %6585 = icmp eq i32 %6445, %6455
  br i1 %6585, label %6971, label %6444

; <label>:6586                                    ; preds = %6541
  %6587 = icmp eq i32 %6503, 255
  br i1 %6587, label %6686, label %6588, !dx.controlflow.hints !121

; <label>:6588                                    ; preds = %6586
  %6589 = mul nuw nsw i32 %6503, 176
  %6590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6589, i32 undef)  ; BufferLoad(srv,index,wot)
  %6591 = extractvalue %dx.types.ResRet.f32 %6590, 0
  %6592 = extractvalue %dx.types.ResRet.f32 %6590, 1
  %6593 = extractvalue %dx.types.ResRet.f32 %6590, 2
  %6594 = extractvalue %dx.types.ResRet.f32 %6590, 3
  %6595 = add nuw nsw i32 %6589, 16
  %6596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6595, i32 undef)  ; BufferLoad(srv,index,wot)
  %6597 = extractvalue %dx.types.ResRet.f32 %6596, 0
  %6598 = extractvalue %dx.types.ResRet.f32 %6596, 1
  %6599 = add nuw nsw i32 %6589, 32
  %6600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6599, i32 undef)  ; BufferLoad(srv,index,wot)
  %6601 = extractvalue %dx.types.ResRet.f32 %6600, 0
  %6602 = extractvalue %dx.types.ResRet.f32 %6600, 1
  %6603 = extractvalue %dx.types.ResRet.f32 %6600, 2
  %6604 = add nuw nsw i32 %6589, 48
  %6605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6604, i32 undef)  ; BufferLoad(srv,index,wot)
  %6606 = extractvalue %dx.types.ResRet.f32 %6605, 0
  %6607 = extractvalue %dx.types.ResRet.f32 %6605, 1
  %6608 = extractvalue %dx.types.ResRet.f32 %6605, 2
  %6609 = extractvalue %dx.types.ResRet.f32 %6605, 3
  %6610 = add nuw nsw i32 %6589, 64
  %6611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6610, i32 undef)  ; BufferLoad(srv,index,wot)
  %6612 = extractvalue %dx.types.ResRet.f32 %6611, 0
  %6613 = extractvalue %dx.types.ResRet.f32 %6611, 1
  %6614 = extractvalue %dx.types.ResRet.f32 %6611, 2
  %6615 = extractvalue %dx.types.ResRet.f32 %6611, 3
  %6616 = add nuw nsw i32 %6589, 80
  %6617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6616, i32 undef)  ; BufferLoad(srv,index,wot)
  %6618 = extractvalue %dx.types.ResRet.f32 %6617, 0
  %6619 = extractvalue %dx.types.ResRet.f32 %6617, 1
  %6620 = extractvalue %dx.types.ResRet.f32 %6617, 2
  %6621 = extractvalue %dx.types.ResRet.f32 %6617, 3
  %6622 = add nuw nsw i32 %6589, 96
  %6623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6622, i32 undef)  ; BufferLoad(srv,index,wot)
  %6624 = extractvalue %dx.types.ResRet.f32 %6623, 0
  %6625 = extractvalue %dx.types.ResRet.f32 %6623, 1
  %6626 = extractvalue %dx.types.ResRet.f32 %6623, 2
  %6627 = extractvalue %dx.types.ResRet.f32 %6623, 3
  %6628 = bitcast float %6598 to i32
  %6629 = fmul fast float %6603, %111
  %6630 = fmul fast float %6603, %112
  %6631 = fmul fast float %6603, %113
  %6632 = fadd fast float %6629, %191
  %6633 = fadd fast float %6630, %192
  %6634 = fadd fast float %6631, %193
  %6635 = fmul fast float %6632, %6606
  %6636 = call float @dx.op.tertiary.f32(i32 46, float %6633, float %6612, float %6635)  ; FMad(a,b,c)
  %6637 = call float @dx.op.tertiary.f32(i32 46, float %6634, float %6618, float %6636)  ; FMad(a,b,c)
  %6638 = fadd fast float %6637, %6624
  %6639 = fmul fast float %6632, %6607
  %6640 = call float @dx.op.tertiary.f32(i32 46, float %6633, float %6613, float %6639)  ; FMad(a,b,c)
  %6641 = call float @dx.op.tertiary.f32(i32 46, float %6634, float %6619, float %6640)  ; FMad(a,b,c)
  %6642 = fadd fast float %6641, %6625
  %6643 = fmul fast float %6632, %6608
  %6644 = call float @dx.op.tertiary.f32(i32 46, float %6633, float %6614, float %6643)  ; FMad(a,b,c)
  %6645 = call float @dx.op.tertiary.f32(i32 46, float %6634, float %6620, float %6644)  ; FMad(a,b,c)
  %6646 = fadd fast float %6645, %6626
  %6647 = fmul fast float %6632, %6609
  %6648 = call float @dx.op.tertiary.f32(i32 46, float %6633, float %6615, float %6647)  ; FMad(a,b,c)
  %6649 = call float @dx.op.tertiary.f32(i32 46, float %6634, float %6621, float %6648)  ; FMad(a,b,c)
  %6650 = fadd fast float %6649, %6627
  %6651 = fdiv fast float %6638, %6650
  %6652 = fdiv fast float %6642, %6650
  %6653 = fdiv fast float %6646, %6650
  %6654 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6653)  ; FMax(a,b)
  %6655 = fmul fast float %261, 0x401921FB60000000
  %6656 = call float @dx.op.unary.f32(i32 13, float %6655)  ; Sin(value)
  %6657 = call float @dx.op.unary.f32(i32 12, float %6655)  ; Cos(value)
  %6658 = fsub fast float -0.000000e+00, %6656
  %6659 = fmul fast float %6593, 5.000000e-01
  %6660 = call float @dx.op.dot2.f32(i32 54, float %261, float %261, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6661 = call float @dx.op.unary.f32(i32 22, float %6660)  ; Frc(value)
  %6662 = fmul fast float %6661, 0x404A7DD040000000
  %6663 = call float @dx.op.unary.f32(i32 22, float %6662)  ; Frc(value)
  %6664 = fmul fast float %6663, %6602
  %6665 = fadd fast float %6664, %6659
  %6666 = call float @dx.op.tertiary.f32(i32 46, float %6665, float %6658, float 0.000000e+00)  ; FMad(a,b,c)
  %6667 = call float @dx.op.tertiary.f32(i32 46, float %6665, float %6657, float 0.000000e+00)  ; FMad(a,b,c)
  %6668 = fadd fast float %6666, %6651
  %6669 = fadd fast float %6667, %6652
  %6670 = fmul fast float %6668, %6597
  %6671 = fmul fast float %6669, %6597
  %6672 = call float @dx.op.binary.f32(i32 35, float %6670, float %6593)  ; FMax(a,b)
  %6673 = call float @dx.op.binary.f32(i32 35, float %6671, float %6593)  ; FMax(a,b)
  %6674 = call float @dx.op.binary.f32(i32 36, float %6672, float %6594)  ; FMin(a,b)
  %6675 = call float @dx.op.binary.f32(i32 36, float %6673, float %6594)  ; FMin(a,b)
  %6676 = fadd fast float %6674, %6591
  %6677 = fadd fast float %6675, %6592
  %6678 = uitofp i32 %6628 to float
  %6679 = fadd fast float %6654, %6601
  %6680 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %50, float %6676, float %6677, float %6678, float undef, i32 0, i32 0, i32 undef, float %6679)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6681 = extractvalue %dx.types.ResRet.f32 %6680, 0
  %6682 = fadd fast float %6681, -1.000000e+00
  %6683 = fmul fast float %6682, %6562
  %6684 = fadd fast float %6683, 1.000000e+00
  %6685 = fmul fast float %6684, %6574
  br label %6686

; <label>:6686                                    ; preds = %6588, %6586
  %6687 = phi float [ %6685, %6588 ], [ %6574, %6586 ]
  %6688 = call float @dx.op.binary.f32(i32 36, float %6687, float %6687)  ; FMin(a,b)
  %6689 = call float @dx.op.binary.f32(i32 36, float %6687, float %6688)  ; FMin(a,b)
  %6690 = fcmp fast ogt float %6689, 0.000000e+00
  br i1 %6690, label %6691, label %6578, !dx.controlflow.hints !122

; <label>:6691                                    ; preds = %6686
  %6692 = fmul fast float %6687, %6496
  %6693 = fmul fast float %6687, %6497
  %6694 = fmul fast float %6687, %6498
  %6695 = fsub fast float %6480, %4248
  %6696 = fcmp fast ogt float %6695, 0.000000e+00
  %6697 = fsub fast float %193, %4248
  %6698 = fcmp fast ogt float %6697, 0.000000e+00
  %6699 = xor i1 %6698, %6696
  %6700 = fsub fast float %4248, %6480
  %6701 = fmul fast float %6700, 2.000000e+00
  %6702 = fadd fast float %6701, %6480
  %6703 = select i1 %6699, float %6480, float %6702
  %6704 = fsub fast float %6703, %193
  %6705 = call float @dx.op.dot3.f32(i32 55, float %6506, float %6507, float %6704, float %6506, float %6507, float %6704)  ; Dot3(ax,ay,az,bx,by,bz)
  %6706 = call float @dx.op.unary.f32(i32 25, float %6705)  ; Rsqrt(value)
  %6707 = fmul fast float %6706, %6506
  %6708 = fmul fast float %6706, %6507
  %6709 = fmul fast float %6706, %6704
  %6710 = fsub fast float %4248, %193
  %6711 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6710)  ; Dot3(ax,ay,az,bx,by,bz)
  %6712 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6707, float %6708, float %6709)  ; Dot3(ax,ay,az,bx,by,bz)
  %6713 = fdiv fast float 1.000000e+00, %6712
  %6714 = fmul fast float %6713, %6711
  %6715 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6697, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6716 = fcmp fast ogt float %6715, 0.000000e+00
  %6717 = fcmp fast olt float %6715, 0.000000e+00
  %6718 = zext i1 %6716 to i32
  %6719 = zext i1 %6717 to i32
  %6720 = sub nsw i32 %6718, %6719
  %6721 = sitofp i32 %6720 to float
  %6722 = fsub fast float %6703, %4248
  %6723 = call float @dx.op.dot3.f32(i32 55, float %6506, float %6507, float %6722, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6724 = fcmp fast ogt float %6723, 0.000000e+00
  %6725 = fcmp fast olt float %6723, 0.000000e+00
  %6726 = zext i1 %6724 to i32
  %6727 = zext i1 %6725 to i32
  %6728 = sub nsw i32 %6726, %6727
  %6729 = sitofp i32 %6728 to float
  %6730 = fcmp fast une float %6721, %6729
  br i1 %6730, label %6731, label %6741

; <label>:6731                                    ; preds = %6691
  %6732 = fmul fast float %6714, %6709
  %6733 = fmul fast float %6714, %6708
  %6734 = fmul fast float %6714, %6707
  %6735 = fmul fast float %6734, %6734
  %6736 = fmul fast float %6733, %6733
  %6737 = fadd fast float %6735, %6736
  %6738 = fmul fast float %6732, %6732
  %6739 = fadd fast float %6737, %6738
  %6740 = call float @dx.op.unary.f32(i32 24, float %6739)  ; Sqrt(value)
  br label %6753

; <label>:6741                                    ; preds = %6691
  %6742 = icmp slt i32 %6720, 0
  br i1 %6742, label %6743, label %6753

; <label>:6743                                    ; preds = %6741
  %6744 = fsub fast float %191, %6478
  %6745 = fsub fast float %192, %6479
  %6746 = fsub fast float %193, %6703
  %6747 = fmul fast float %6744, %6744
  %6748 = fmul fast float %6745, %6745
  %6749 = fadd fast float %6747, %6748
  %6750 = fmul fast float %6746, %6746
  %6751 = fadd fast float %6749, %6750
  %6752 = call float @dx.op.unary.f32(i32 24, float %6751)  ; Sqrt(value)
  br label %6753

; <label>:6753                                    ; preds = %6743, %6741, %6731
  %6754 = phi float [ %6740, %6731 ], [ %6752, %6743 ], [ 0.000000e+00, %6741 ]
  %6755 = and i1 %6698, %6696
  %6756 = fsub fast float -0.000000e+00, %6754
  %6757 = select i1 %6755, float -0.000000e+00, float %6756
  %6758 = fmul fast float %4249, 0x3FF7154760000000
  %6759 = fmul fast float %6758, %6757
  %6760 = fmul fast float %4250, 0x3FF7154760000000
  %6761 = fmul fast float %6760, %6757
  %6762 = fmul fast float %4251, 0x3FF7154760000000
  %6763 = fmul fast float %6762, %6757
  %6764 = call float @dx.op.unary.f32(i32 21, float %6759)  ; Exp(value)
  %6765 = call float @dx.op.unary.f32(i32 21, float %6761)  ; Exp(value)
  %6766 = call float @dx.op.unary.f32(i32 21, float %6763)  ; Exp(value)
  %6767 = call float @dx.op.unary.f32(i32 7, float %6764)  ; Saturate(value)
  %6768 = call float @dx.op.unary.f32(i32 7, float %6765)  ; Saturate(value)
  %6769 = call float @dx.op.unary.f32(i32 7, float %6766)  ; Saturate(value)
  %6770 = fmul fast float %6692, %6767
  %6771 = fmul fast float %6693, %6768
  %6772 = fmul fast float %6694, %6769
  %6773 = fsub fast float %6512, %5040
  %6774 = fsub fast float %6513, %5039
  %6775 = fsub fast float %6514, %5038
  %6776 = call float @dx.op.dot3.f32(i32 55, float %6773, float %6774, float %6775, float %6773, float %6774, float %6775)  ; Dot3(ax,ay,az,bx,by,bz)
  %6777 = call float @dx.op.unary.f32(i32 25, float %6776)  ; Rsqrt(value)
  %6778 = fmul fast float %6777, %6773
  %6779 = fmul fast float %6777, %6774
  %6780 = fmul fast float %6777, %6775
  %6781 = call float @dx.op.dot3.f32(i32 55, float %6512, float %6513, float %6514, float %5047, float %5048, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %6782 = call float @dx.op.dot3.f32(i32 55, float %5037, float %5036, float %5035, float %6778, float %6779, float %6780)  ; Dot3(ax,ay,az,bx,by,bz)
  %6783 = call float @dx.op.unary.f32(i32 7, float %6781)  ; Saturate(value)
  %6784 = fmul fast float %6783, %6519
  %6785 = fmul fast float %6783, %6783
  %6786 = fmul fast float %6785, %5068
  %6787 = call float @dx.op.unary.f32(i32 7, float %6786)  ; Saturate(value)
  %6788 = fmul fast float %6784, %6787
  %6789 = bitcast float %6509 to i32
  %6790 = ashr i32 %6789, 1
  %6791 = sub nsw i32 1597463007, %6790
  %6792 = bitcast i32 %6791 to float
  %6793 = fmul fast float %6792, %6506
  %6794 = fmul fast float %6792, %6507
  %6795 = fmul fast float %6792, %6508
  %6796 = fsub fast float %6793, %5040
  %6797 = fsub fast float %6794, %5039
  %6798 = fsub fast float %6795, %5038
  %6799 = call float @dx.op.dot3.f32(i32 55, float %6796, float %6797, float %6798, float %6796, float %6797, float %6798)  ; Dot3(ax,ay,az,bx,by,bz)
  %6800 = call float @dx.op.unary.f32(i32 25, float %6799)  ; Rsqrt(value)
  %6801 = fmul fast float %6796, %6800
  %6802 = fmul fast float %6797, %6800
  %6803 = fmul fast float %6798, %6800
  %6804 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5048, float %5049, float %6801, float %6802, float %6803)  ; Dot3(ax,ay,az,bx,by,bz)
  %6805 = fmul fast float %6804, %6804
  %6806 = call float @dx.op.unary.f32(i32 6, float %6781)  ; FAbs(value)
  %6807 = fsub fast float 1.000000e+00, %5050
  %6808 = call float @dx.op.binary.f32(i32 35, float %6807, float 0x3F847AE140000000)  ; FMax(a,b)
  %6809 = fmul fast float %6808, %6808
  %6810 = fmul fast float %6809, %6809
  %6811 = fsub fast float 1.000000e+00, %6810
  %6812 = fmul fast float %5055, %5055
  %6813 = fmul fast float %6812, %6811
  %6814 = fadd fast float %6813, %6810
  %6815 = bitcast float %6814 to i32
  %6816 = ashr i32 %6815, 1
  %6817 = add nsw i32 %6816, 532487669
  %6818 = bitcast i32 %6817 to float
  %6819 = fadd fast float %6818, %5055
  %6820 = fmul fast float %6810, %6805
  %6821 = fsub fast float 1.000000e+00, %6805
  %6822 = fadd fast float %6821, %6820
  %6823 = fmul fast float %6806, %6806
  %6824 = fmul fast float %6823, %6811
  %6825 = fadd fast float %6824, %6810
  %6826 = bitcast float %6825 to i32
  %6827 = ashr i32 %6826, 1
  %6828 = add nsw i32 %6827, 532487669
  %6829 = bitcast i32 %6828 to float
  %6830 = fadd fast float %6829, %6806
  %6831 = fmul fast float %6822, %6822
  %6832 = fmul fast float %6831, %6819
  %6833 = fmul fast float %6832, %6830
  %6834 = fdiv fast float 1.000000e+00, %6833
  %6835 = bitcast float %6810 to i32
  %6836 = sitofp i32 %6835 to float
  %6837 = fmul fast float %6836, 0x3FE7F73180000000
  %6838 = fadd fast float %6837, 0x41AFE27C40000000
  %6839 = fptosi float %6838 to i32
  %6840 = bitcast i32 %6839 to float
  %6841 = fmul fast float %6475, 0x3FD80E9D60000000
  %6842 = fmul fast float %6841, %6792
  %6843 = fadd fast float %6840, %6842
  %6844 = bitcast float %6843 to i32
  %6845 = sub nsw i32 2129859010, %6844
  %6846 = bitcast i32 %6845 to float
  %6847 = fmul fast float %6810, %6834
  %6848 = fmul fast float %6847, %6840
  %6849 = fmul fast float %6848, %6846
  %6850 = call float @dx.op.unary.f32(i32 6, float %6782)  ; FAbs(value)
  %6851 = fsub fast float 1.000000e+00, %6850
  %6852 = bitcast float %6851 to i32
  %6853 = sitofp i32 %6852 to float
  %6854 = fmul fast float %6853, 5.000000e+00
  %6855 = fadd fast float %6854, 0xC1EFBF8940000000
  %6856 = fptosi float %6855 to i32
  %6857 = bitcast i32 %6856 to float
  %6858 = fsub fast float 1.000000e+00, %5044
  %6859 = fsub fast float 1.000000e+00, %5045
  %6860 = fsub fast float 1.000000e+00, %5053
  %6861 = fmul fast float %6857, %6858
  %6862 = fmul fast float %6857, %6859
  %6863 = fmul fast float %6857, %6860
  %6864 = fadd fast float %6861, %5044
  %6865 = fadd fast float %6862, %5045
  %6866 = fadd fast float %6863, %5053
  br i1 %5180, label %6867, label %6890

; <label>:6867                                    ; preds = %6753
  %6868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3846, float %6850, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6869 = extractvalue %dx.types.ResRet.f32 %6868, 0
  %6870 = extractvalue %dx.types.ResRet.f32 %6868, 1
  %6871 = extractvalue %dx.types.ResRet.f32 %6868, 2
  %6872 = fadd fast float %6869, -5.000000e-01
  %6873 = fadd fast float %6870, -5.000000e-01
  %6874 = fadd fast float %6871, -5.000000e-01
  %6875 = fmul fast float %5044, 4.000000e+00
  %6876 = fmul fast float %6875, %6858
  %6877 = fmul fast float %6876, %6872
  %6878 = fmul fast float %5045, 4.000000e+00
  %6879 = fmul fast float %6878, %6859
  %6880 = fmul fast float %6879, %6873
  %6881 = fmul fast float %5053, 4.000000e+00
  %6882 = fmul fast float %6881, %6860
  %6883 = fmul fast float %6882, %6874
  %6884 = fadd fast float %6877, %6864
  %6885 = fadd fast float %6880, %6865
  %6886 = fadd fast float %6883, %6866
  %6887 = call float @dx.op.unary.f32(i32 7, float %6884)  ; Saturate(value)
  %6888 = call float @dx.op.unary.f32(i32 7, float %6885)  ; Saturate(value)
  %6889 = call float @dx.op.unary.f32(i32 7, float %6886)  ; Saturate(value)
  br label %6890

; <label>:6890                                    ; preds = %6867, %6753
  %6891 = phi float [ %6887, %6867 ], [ %6864, %6753 ]
  %6892 = phi float [ %6888, %6867 ], [ %6865, %6753 ]
  %6893 = phi float [ %6889, %6867 ], [ %6866, %6753 ]
  %6894 = fmul fast float %6781, 9.843750e-01
  %6895 = fadd fast float %6894, 7.812500e-03
  %6896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6895, float %5170, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6897 = extractvalue %dx.types.ResRet.f32 %6896, 2
  %6898 = extractvalue %dx.types.ResRet.f32 %6896, 3
  %6899 = fmul fast float %6897, %5044
  %6900 = fmul fast float %6897, %5045
  %6901 = fmul fast float %6897, %5053
  %6902 = fadd fast float %6899, %6898
  %6903 = fadd fast float %6900, %6898
  %6904 = fadd fast float %6901, %6898
  br i1 %5180, label %6905, label %6928

; <label>:6905                                    ; preds = %6890
  %6906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3846, float %6781, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6907 = extractvalue %dx.types.ResRet.f32 %6906, 0
  %6908 = extractvalue %dx.types.ResRet.f32 %6906, 1
  %6909 = extractvalue %dx.types.ResRet.f32 %6906, 2
  %6910 = fadd fast float %6907, -5.000000e-01
  %6911 = fadd fast float %6908, -5.000000e-01
  %6912 = fadd fast float %6909, -5.000000e-01
  %6913 = fmul fast float %5044, 4.000000e+00
  %6914 = fmul fast float %6913, %6858
  %6915 = fmul fast float %6914, %6910
  %6916 = fmul fast float %5045, 4.000000e+00
  %6917 = fmul fast float %6916, %6859
  %6918 = fmul fast float %6917, %6911
  %6919 = fmul fast float %5053, 4.000000e+00
  %6920 = fmul fast float %6919, %6860
  %6921 = fmul fast float %6920, %6912
  %6922 = fadd fast float %6915, %6902
  %6923 = fadd fast float %6918, %6903
  %6924 = fadd fast float %6921, %6904
  %6925 = call float @dx.op.unary.f32(i32 7, float %6922)  ; Saturate(value)
  %6926 = call float @dx.op.unary.f32(i32 7, float %6923)  ; Saturate(value)
  %6927 = call float @dx.op.unary.f32(i32 7, float %6924)  ; Saturate(value)
  br label %6928

; <label>:6928                                    ; preds = %6905, %6890
  %6929 = phi float [ %6925, %6905 ], [ %6902, %6890 ]
  %6930 = phi float [ %6926, %6905 ], [ %6903, %6890 ]
  %6931 = phi float [ %6927, %6905 ], [ %6904, %6890 ]
  %6932 = call float @dx.op.binary.f32(i32 35, float %6930, float %6931)  ; FMax(a,b)
  %6933 = call float @dx.op.binary.f32(i32 35, float %6929, float %6932)  ; FMax(a,b)
  %6934 = fsub fast float 1.000000e+00, %6933
  %6935 = fmul fast float %6891, %6849
  %6936 = fmul fast float %6892, %6849
  %6937 = fmul fast float %6893, %6849
  %6938 = fsub fast float 1.000000e+00, %6782
  %6939 = bitcast float %6938 to i32
  %6940 = sitofp i32 %6939 to float
  %6941 = fmul fast float %6940, 5.000000e+00
  %6942 = fadd fast float %6941, 0xC1EFBF8940000000
  %6943 = fptosi float %6942 to i32
  %6944 = bitcast i32 %6943 to float
  %6945 = fmul fast float %6944, %3847
  %6946 = fmul fast float %6934, %6945
  %6947 = fmul fast float %6946, %5230
  %6948 = fmul fast float %6946, %5231
  %6949 = fmul fast float %6946, %5232
  %6950 = fadd fast float %6947, %6935
  %6951 = fadd fast float %6948, %6936
  %6952 = fadd fast float %6949, %6937
  %6953 = fmul fast float %6770, %3843
  %6954 = fmul fast float %6953, %6788
  %6955 = fmul fast float %6954, %6934
  %6956 = fmul fast float %6771, %3843
  %6957 = fmul fast float %6956, %6788
  %6958 = fmul fast float %6957, %6934
  %6959 = fmul fast float %6772, %3843
  %6960 = fmul fast float %6959, %6788
  %6961 = fmul fast float %6960, %6934
  %6962 = fadd fast float %6955, %6449
  %6963 = fadd fast float %6958, %6450
  %6964 = fadd fast float %6961, %6451
  %6965 = fmul fast float %6954, %6950
  %6966 = fmul fast float %6957, %6951
  %6967 = fmul fast float %6960, %6952
  %6968 = fadd fast float %6965, %6446
  %6969 = fadd fast float %6966, %6447
  %6970 = fadd fast float %6967, %6448
  br label %6578

; <label>:6971                                    ; preds = %6578
  br label %6972

; <label>:6972                                    ; preds = %6971, %6412
  %6973 = phi float [ %6414, %6412 ], [ %6579, %6971 ]
  %6974 = phi float [ %6415, %6412 ], [ %6580, %6971 ]
  %6975 = phi float [ %6416, %6412 ], [ %6581, %6971 ]
  %6976 = phi float [ %6417, %6412 ], [ %6582, %6971 ]
  %6977 = phi float [ %6418, %6412 ], [ %6583, %6971 ]
  %6978 = phi float [ %6419, %6412 ], [ %6584, %6971 ]
  %6979 = add i32 %6413, 1
  %6980 = icmp ugt i32 %6979, %6409
  br i1 %6980, label %6981, label %6412

; <label>:6981                                    ; preds = %6972
  br label %6982

; <label>:6982                                    ; preds = %6981, %6362, %6352
  %6983 = phi float [ %6353, %6352 ], [ %6353, %6362 ], [ %6973, %6981 ]
  %6984 = phi float [ %6354, %6352 ], [ %6354, %6362 ], [ %6974, %6981 ]
  %6985 = phi float [ %6355, %6352 ], [ %6355, %6362 ], [ %6975, %6981 ]
  %6986 = phi float [ %6356, %6352 ], [ %6356, %6362 ], [ %6976, %6981 ]
  %6987 = phi float [ %6357, %6352 ], [ %6357, %6362 ], [ %6977, %6981 ]
  %6988 = phi float [ %6358, %6352 ], [ %6358, %6362 ], [ %6978, %6981 ]
  %6989 = fmul fast float %3843, %3843
  %6990 = fsub fast float 1.000000e+00, %6989
  %6991 = call float @dx.op.dot3.f32(i32 55, float %6990, float %6990, float %6990, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6992 = fsub fast float 1.000000e+00, %6991
  %6993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6994 = extractvalue %dx.types.CBufRet.f32 %6993, 0
  %6995 = fmul fast float %6994, %5236
  %6996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6997 = extractvalue %dx.types.CBufRet.f32 %6996, 3
  %6998 = fsub fast float 1.000000e+00, %3851
  %6999 = call float @dx.op.unary.f32(i32 7, float %6998)  ; Saturate(value)
  %7000 = fadd fast float %6988, %3849
  %7001 = fmul fast float %7000, %3851
  %7002 = fmul fast float %6999, %6997
  %7003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7004 = extractvalue %dx.types.CBufRet.f32 %7003, 3
  %7005 = fmul fast float %6986, %5041
  %7006 = fmul fast float %6987, %5042
  %7007 = fmul fast float %6988, %5043
  %7008 = fcmp fast ogt float %95, %213
  %7009 = and i1 %7008, %4254
  %7010 = or i1 %4260, %7009
  %7011 = icmp eq i32 %4253, 2
  %7012 = fcmp fast ole float %95, %213
  %7013 = and i1 %7012, %7011
  %7014 = or i1 %7013, %7010
  br i1 %7009, label %7015, label %7272

; <label>:7015                                    ; preds = %6982
  %7016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7017 = extractvalue %dx.types.CBufRet.f32 %7016, 2
  %7018 = extractvalue %dx.types.CBufRet.f32 %7016, 3
  %7019 = fmul fast float %7017, %104
  %7020 = fmul fast float %7018, %105
  %7021 = call float @dx.op.unary.f32(i32 7, float %7019)  ; Saturate(value)
  %7022 = call float @dx.op.unary.f32(i32 7, float %7020)  ; Saturate(value)
  %7023 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7021, float %7022, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7024 = extractvalue %dx.types.ResRet.f32 %7023, 0
  %7025 = extractvalue %dx.types.ResRet.f32 %7023, 1
  %7026 = extractvalue %dx.types.ResRet.f32 %7023, 2
  %7027 = extractvalue %dx.types.ResRet.f32 %7023, 3
  %7028 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7021, float %7022, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7029 = extractvalue %dx.types.ResRet.f32 %7028, 0
  %7030 = extractvalue %dx.types.ResRet.f32 %7028, 1
  %7031 = extractvalue %dx.types.ResRet.f32 %7028, 2
  %7032 = extractvalue %dx.types.ResRet.f32 %7028, 3
  %7033 = call float @dx.op.binary.f32(i32 35, float %7025, float %7026)  ; FMax(a,b)
  %7034 = call float @dx.op.binary.f32(i32 35, float %7024, float %7033)  ; FMax(a,b)
  %7035 = call float @dx.op.binary.f32(i32 35, float %7034, float %7027)  ; FMax(a,b)
  %7036 = call float @dx.op.binary.f32(i32 36, float %7030, float %7031)  ; FMin(a,b)
  %7037 = call float @dx.op.binary.f32(i32 36, float %7029, float %7036)  ; FMin(a,b)
  %7038 = call float @dx.op.binary.f32(i32 36, float %7037, float %7032)  ; FMin(a,b)
  %7039 = fmul fast float %7035, 2.550000e+02
  %7040 = fadd fast float %7039, 0x3F70101020000000
  %7041 = fptoui float %7040 to i32
  %7042 = fmul fast float %7038, 2.550000e+02
  %7043 = fadd fast float %7042, 0x3F70101020000000
  %7044 = fptoui float %7043 to i32
  %7045 = icmp ult i32 %7041, %7044
  br i1 %7045, label %7046, label %7214

; <label>:7046                                    ; preds = %7015
  %7047 = fcmp fast ogt float %94, 9.843750e-01
  %7048 = fadd fast float %95, -4.000000e+00
  %7049 = select i1 %7047, float -4.000000e+00, float %7048
  %7050 = call float @dx.op.binary.f32(i32 35, float %7049, float 0.000000e+00)  ; FMax(a,b)
  %7051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7052 = extractvalue %dx.types.CBufRet.f32 %7051, 0
  %7053 = fadd fast float %7052, %7050
  %7054 = extractvalue %dx.types.CBufRet.f32 %7051, 2
  %7055 = fmul fast float %7053, %7054
  %7056 = call float @dx.op.unary.f32(i32 23, float %7055)  ; Log(value)
  %7057 = extractvalue %dx.types.CBufRet.f32 %7051, 3
  %7058 = fmul fast float %7057, %7056
  %7059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7060 = extractvalue %dx.types.CBufRet.f32 %7059, 2
  %7061 = fmul fast float %7058, %7060
  %7062 = call float @dx.op.unary.f32(i32 7, float %7061)  ; Saturate(value)
  %7063 = uitofp i32 %7041 to float
  %7064 = uitofp i32 %7044 to float
  %7065 = fadd fast float %7063, 5.000000e-01
  %7066 = fadd fast float %7064, 5.000000e-01
  %7067 = fmul fast float %7060, %7065
  %7068 = fmul fast float %7060, %7066
  %7069 = fadd fast float %7067, 0x3F0FFB4800000000
  %7070 = fadd fast float %7068, 0xBF0FFB4800000000
  %7071 = call float @dx.op.binary.f32(i32 35, float %7062, float %7069)  ; FMax(a,b)
  %7072 = call float @dx.op.binary.f32(i32 36, float %7071, float %7070)  ; FMin(a,b)
  %7073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7074 = extractvalue %dx.types.CBufRet.f32 %7073, 1
  %7075 = extractvalue %dx.types.CBufRet.f32 %7073, 2
  %7076 = extractvalue %dx.types.CBufRet.f32 %7073, 0
  %7077 = fmul fast float %7074, %7072
  %7078 = fadd fast float %7076, %7077
  %7079 = fadd fast float %7076, %7075
  %7080 = fsub fast float %7074, %7075
  %7081 = fadd fast float %7080, %7076
  %7082 = call float @dx.op.binary.f32(i32 35, float %7078, float %7079)  ; FMax(a,b)
  %7083 = call float @dx.op.binary.f32(i32 36, float %7082, float %7081)  ; FMin(a,b)
  %7084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7021, float %7022, float %7083, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7085 = extractvalue %dx.types.ResRet.f32 %7084, 0
  %7086 = extractvalue %dx.types.ResRet.f32 %7084, 1
  %7087 = extractvalue %dx.types.ResRet.f32 %7084, 2
  %7088 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7089 = extractvalue %dx.types.CBufRet.i32 %7088, 0
  %7090 = extractvalue %dx.types.CBufRet.i32 %7088, 1
  %7091 = uitofp i32 %7089 to float
  %7092 = uitofp i32 %7090 to float
  %7093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7094 = extractvalue %dx.types.CBufRet.f32 %7093, 0
  %7095 = extractvalue %dx.types.CBufRet.f32 %7093, 1
  %7096 = fmul fast float %7091, %7021
  %7097 = fmul fast float %7092, %7022
  %7098 = fadd fast float %7096, -5.000000e-01
  %7099 = fadd fast float %7097, -5.000000e-01
  %7100 = call float @dx.op.unary.f32(i32 22, float %7098)  ; Frc(value)
  %7101 = call float @dx.op.unary.f32(i32 22, float %7099)  ; Frc(value)
  %7102 = fmul fast float %7100, %7100
  %7103 = fmul fast float %7102, %7100
  %7104 = fsub fast float 3.000000e+00, %7100
  %7105 = fmul fast float %7102, %7104
  %7106 = fmul fast float %7100, 3.000000e+00
  %7107 = fmul fast float %7103, 3.000000e+00
  %7108 = fmul fast float %7102, 6.000000e+00
  %7109 = fsub fast float %7107, %7108
  %7110 = fadd fast float %7109, 4.000000e+00
  %7111 = fmul fast float %7110, 0x3FC5555560000000
  %7112 = fmul fast float %7103, -3.000000e+00
  %7113 = fadd fast float %7102, %7100
  %7114 = fmul fast float %7113, 3.000000e+00
  %7115 = fadd fast float %7112, 1.000000e+00
  %7116 = fadd fast float %7115, %7114
  %7117 = fmul fast float %7103, 0x3FC5555560000000
  %7118 = fmul fast float %7101, %7101
  %7119 = fmul fast float %7118, %7101
  %7120 = fsub fast float 3.000000e+00, %7101
  %7121 = fmul fast float %7118, %7120
  %7122 = fmul fast float %7101, 3.000000e+00
  %7123 = fmul fast float %7119, 3.000000e+00
  %7124 = fmul fast float %7118, 6.000000e+00
  %7125 = fsub fast float %7123, %7124
  %7126 = fadd fast float %7125, 4.000000e+00
  %7127 = fmul fast float %7126, 0x3FC5555560000000
  %7128 = fmul fast float %7119, -3.000000e+00
  %7129 = fadd fast float %7118, %7101
  %7130 = fmul fast float %7129, 3.000000e+00
  %7131 = fadd fast float %7128, 1.000000e+00
  %7132 = fadd fast float %7131, %7130
  %7133 = fmul fast float %7119, 0x3FC5555560000000
  %7134 = fadd fast float %7100, 1.000000e+00
  %7135 = fsub fast float 1.000000e+00, %7106
  %7136 = fadd fast float %7135, %7105
  %7137 = fadd fast float %7136, %7110
  %7138 = fmul fast float %7137, 0x3FC5555560000000
  %7139 = fdiv fast float %7111, %7138
  %7140 = fsub fast float %7134, %7139
  %7141 = fsub fast float 1.000000e+00, %7100
  %7142 = fadd fast float %7116, %7103
  %7143 = fmul fast float %7142, 0x3FC5555560000000
  %7144 = fdiv fast float %7117, %7143
  %7145 = fadd fast float %7141, %7144
  %7146 = fadd fast float %7101, 1.000000e+00
  %7147 = fsub fast float 1.000000e+00, %7122
  %7148 = fadd fast float %7147, %7121
  %7149 = fadd fast float %7148, %7126
  %7150 = fmul fast float %7149, 0x3FC5555560000000
  %7151 = fdiv fast float %7127, %7150
  %7152 = fsub fast float %7146, %7151
  %7153 = fsub fast float 1.000000e+00, %7101
  %7154 = fadd fast float %7132, %7119
  %7155 = fmul fast float %7154, 0x3FC5555560000000
  %7156 = fdiv fast float %7133, %7155
  %7157 = fadd fast float %7156, %7153
  %7158 = fmul fast float %7140, %7094
  %7159 = fsub fast float %7021, %7158
  %7160 = fmul fast float %7145, %7094
  %7161 = fadd fast float %7160, %7021
  %7162 = fmul fast float %7157, %7095
  %7163 = fadd fast float %7162, %7022
  %7164 = fmul fast float %7152, %7095
  %7165 = fsub fast float %7022, %7164
  %7166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7159, float %7165, float %7083, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7167 = extractvalue %dx.types.ResRet.f32 %7166, 0
  %7168 = extractvalue %dx.types.ResRet.f32 %7166, 1
  %7169 = extractvalue %dx.types.ResRet.f32 %7166, 2
  %7170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7161, float %7165, float %7083, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7171 = extractvalue %dx.types.ResRet.f32 %7170, 0
  %7172 = extractvalue %dx.types.ResRet.f32 %7170, 1
  %7173 = extractvalue %dx.types.ResRet.f32 %7170, 2
  %7174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7159, float %7163, float %7083, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7175 = extractvalue %dx.types.ResRet.f32 %7174, 0
  %7176 = extractvalue %dx.types.ResRet.f32 %7174, 1
  %7177 = extractvalue %dx.types.ResRet.f32 %7174, 2
  %7178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7161, float %7163, float %7083, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7179 = extractvalue %dx.types.ResRet.f32 %7178, 0
  %7180 = extractvalue %dx.types.ResRet.f32 %7178, 1
  %7181 = extractvalue %dx.types.ResRet.f32 %7178, 2
  %7182 = fsub fast float %7175, %7167
  %7183 = fsub fast float %7176, %7168
  %7184 = fsub fast float %7177, %7169
  %7185 = fmul fast float %7182, %7155
  %7186 = fmul fast float %7183, %7155
  %7187 = fmul fast float %7184, %7155
  %7188 = fadd fast float %7185, %7167
  %7189 = fadd fast float %7186, %7168
  %7190 = fadd fast float %7187, %7169
  %7191 = fsub fast float %7179, %7171
  %7192 = fsub fast float %7180, %7172
  %7193 = fsub fast float %7181, %7173
  %7194 = fmul fast float %7191, %7155
  %7195 = fmul fast float %7192, %7155
  %7196 = fmul fast float %7193, %7155
  %7197 = fsub fast float %7171, %7188
  %7198 = fadd fast float %7197, %7194
  %7199 = fsub fast float %7172, %7189
  %7200 = fadd fast float %7199, %7195
  %7201 = fsub fast float %7173, %7190
  %7202 = fadd fast float %7201, %7196
  %7203 = fmul fast float %7198, %7143
  %7204 = fmul fast float %7200, %7143
  %7205 = fmul fast float %7202, %7143
  %7206 = fadd fast float %7203, %7188
  %7207 = fadd fast float %7204, %7189
  %7208 = fadd fast float %7205, %7190
  %7209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7210 = extractvalue %dx.types.CBufRet.f32 %7209, 1
  %7211 = fmul fast float %7206, %7210
  %7212 = fmul fast float %7207, %7210
  %7213 = fmul fast float %7208, %7210
  br label %7214

; <label>:7214                                    ; preds = %7046, %7015
  %7215 = phi float [ %7085, %7046 ], [ 1.000000e+00, %7015 ]
  %7216 = phi float [ %7086, %7046 ], [ 1.000000e+00, %7015 ]
  %7217 = phi float [ %7087, %7046 ], [ 1.000000e+00, %7015 ]
  %7218 = phi float [ %7211, %7046 ], [ 0.000000e+00, %7015 ]
  %7219 = phi float [ %7212, %7046 ], [ 0.000000e+00, %7015 ]
  %7220 = phi float [ %7213, %7046 ], [ 0.000000e+00, %7015 ]
  %7221 = fmul fast float %7218, %6992
  %7222 = fmul fast float %7219, %6992
  %7223 = fmul fast float %7220, %6992
  %7224 = call float @dx.op.dot3.f32(i32 55, float %7215, float %7216, float %7217, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7225 = call float @dx.op.dot3.f32(i32 55, float %7221, float %7222, float %7223, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7226 = select i1 %250, float %7224, float %7215
  %7227 = select i1 %250, float %7224, float %7216
  %7228 = select i1 %250, float 1.000000e+00, float %7217
  %7229 = select i1 %250, float %7225, float %7221
  %7230 = select i1 %250, float 0.000000e+00, float %7222
  %7231 = select i1 %250, float 0.000000e+00, float %7223
  %7232 = fmul fast float %7226, %7005
  %7233 = fmul fast float %7227, %7006
  %7234 = fmul fast float %7228, %7007
  %7235 = fadd fast float %7232, %7229
  %7236 = fadd fast float %7233, %7230
  %7237 = fadd fast float %7231, %7234
  %7238 = fmul fast float %7226, %6983
  %7239 = fmul fast float %7227, %6984
  %7240 = fmul fast float %7228, %6985
  %7241 = fmul fast float %140, %7017
  %7242 = fmul fast float %142, %7018
  %7243 = fsub fast float 1.000000e+00, %7241
  %7244 = fsub fast float 1.000000e+00, %7242
  %7245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7246 = extractvalue %dx.types.CBufRet.f32 %7245, 0
  %7247 = extractvalue %dx.types.CBufRet.f32 %7245, 1
  %7248 = extractvalue %dx.types.CBufRet.f32 %7245, 2
  %7249 = fmul fast float %7243, %7246
  %7250 = fmul fast float %7243, %7247
  %7251 = fmul fast float %7243, %7248
  %7252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7253 = extractvalue %dx.types.CBufRet.f32 %7252, 0
  %7254 = extractvalue %dx.types.CBufRet.f32 %7252, 1
  %7255 = extractvalue %dx.types.CBufRet.f32 %7252, 2
  %7256 = fmul fast float %7244, %7253
  %7257 = fmul fast float %7244, %7254
  %7258 = fmul fast float %7244, %7255
  %7259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7260 = extractvalue %dx.types.CBufRet.f32 %7259, 0
  %7261 = extractvalue %dx.types.CBufRet.f32 %7259, 1
  %7262 = extractvalue %dx.types.CBufRet.f32 %7259, 2
  %7263 = fadd fast float %7256, %7260
  %7264 = fadd fast float %7263, %7249
  %7265 = fadd fast float %7257, %7261
  %7266 = fadd fast float %7265, %7250
  %7267 = fadd fast float %7258, %7262
  %7268 = fadd fast float %7267, %7251
  %7269 = fmul fast float %7264, %213
  %7270 = fmul fast float %7266, %213
  %7271 = fmul fast float %7268, %213
  br label %7272

; <label>:7272                                    ; preds = %7214, %6982
  %7273 = phi float [ %7269, %7214 ], [ %191, %6982 ]
  %7274 = phi float [ %7270, %7214 ], [ %192, %6982 ]
  %7275 = phi float [ %7271, %7214 ], [ %193, %6982 ]
  %7276 = phi float [ %213, %7214 ], [ %95, %6982 ]
  %7277 = phi float [ %7235, %7214 ], [ %7005, %6982 ]
  %7278 = phi float [ %7236, %7214 ], [ %7006, %6982 ]
  %7279 = phi float [ %7237, %7214 ], [ %7007, %6982 ]
  %7280 = phi float [ %7238, %7214 ], [ %6983, %6982 ]
  %7281 = phi float [ %7239, %7214 ], [ %6984, %6982 ]
  %7282 = phi float [ %7240, %7214 ], [ %6985, %6982 ]
  %7283 = phi float [ %7215, %7214 ], [ 1.000000e+00, %6982 ]
  br i1 %7014, label %8438, label %7284

; <label>:7284                                    ; preds = %7272
  %7285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7286 = extractvalue %dx.types.CBufRet.f32 %7285, 0
  %7287 = extractvalue %dx.types.CBufRet.f32 %7285, 1
  %7288 = extractvalue %dx.types.CBufRet.f32 %7285, 2
  %7289 = extractvalue %dx.types.CBufRet.f32 %7285, 3
  %7290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7291 = extractvalue %dx.types.CBufRet.f32 %7290, 0
  %7292 = extractvalue %dx.types.CBufRet.f32 %7290, 1
  %7293 = extractvalue %dx.types.CBufRet.f32 %7290, 2
  %7294 = extractvalue %dx.types.CBufRet.f32 %7290, 3
  %7295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7296 = extractvalue %dx.types.CBufRet.f32 %7295, 0
  %7297 = extractvalue %dx.types.CBufRet.f32 %7295, 1
  %7298 = extractvalue %dx.types.CBufRet.f32 %7295, 2
  %7299 = extractvalue %dx.types.CBufRet.f32 %7295, 3
  %7300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7301 = extractvalue %dx.types.CBufRet.f32 %7300, 0
  %7302 = extractvalue %dx.types.CBufRet.f32 %7300, 1
  %7303 = extractvalue %dx.types.CBufRet.f32 %7300, 2
  %7304 = extractvalue %dx.types.CBufRet.f32 %7300, 3
  %7305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7306 = extractvalue %dx.types.CBufRet.f32 %7305, 3
  %7307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7308 = extractvalue %dx.types.CBufRet.f32 %7307, 3
  %7309 = extractvalue %dx.types.CBufRet.f32 %7307, 0
  %7310 = extractvalue %dx.types.CBufRet.f32 %7307, 1
  %7311 = extractvalue %dx.types.CBufRet.f32 %7307, 2
  %7312 = fcmp fast olt float %7311, -5.000000e-01
  %7313 = call float @dx.op.dot3.f32(i32 55, float %7273, float %7274, float %7275, float %7273, float %7274, float %7275)  ; Dot3(ax,ay,az,bx,by,bz)
  %7314 = call float @dx.op.unary.f32(i32 25, float %7313)  ; Rsqrt(value)
  %7315 = fmul fast float %7314, %7313
  %7316 = fmul fast float %7314, %7273
  %7317 = fmul fast float %7314, %7274
  %7318 = fmul fast float %7314, %7275
  %7319 = fadd fast float %7315, %7289
  %7320 = call float @dx.op.dot3.f32(i32 55, float %7316, float %7317, float %7318, float %7286, float %7287, float %7288)  ; Dot3(ax,ay,az,bx,by,bz)
  %7321 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7322 = extractvalue %dx.types.CBufRet.i32 %7321, 1
  %7323 = and i32 %7322, 1
  %7324 = icmp ne i32 %7323, 0
  %7325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7326 = extractvalue %dx.types.CBufRet.f32 %7325, 2
  %7327 = fcmp fast ogt float %7326, 0.000000e+00
  %7328 = and i1 %7324, %7327
  br i1 %7328, label %7329, label %7735, !dx.controlflow.hints !123

; <label>:7329                                    ; preds = %7284
  %7330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7331 = extractvalue %dx.types.CBufRet.f32 %7330, 3
  %7332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7333 = extractvalue %dx.types.CBufRet.f32 %7332, 2
  %7334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7335 = extractvalue %dx.types.CBufRet.f32 %7334, 2
  %7336 = fsub fast float %7333, %7335
  %7337 = and i32 %7322, 2
  %7338 = extractvalue %dx.types.CBufRet.i32 %7321, 0
  %7339 = call i32 @dx.op.binary.i32(i32 40, i32 %7338, i32 3)  ; UMin(a,b)
  %7340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7341 = extractvalue %dx.types.CBufRet.f32 %7340, 0
  %7342 = extractvalue %dx.types.CBufRet.f32 %7340, 1
  %7343 = extractvalue %dx.types.CBufRet.f32 %7334, 0
  %7344 = extractvalue %dx.types.CBufRet.f32 %7334, 1
  %7345 = fsub fast float %7341, %7343
  %7346 = fsub fast float %7342, %7344
  %7347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7348 = extractvalue %dx.types.CBufRet.f32 %7347, 0
  %7349 = fcmp fast ogt float %7348, 0.000000e+00
  %7350 = fsub fast float -0.000000e+00, %7345
  %7351 = fsub fast float -0.000000e+00, %7346
  %7352 = call float @dx.op.dot2.f32(i32 54, float %7316, float %7317, float %7316, float %7317)  ; Dot2(ax,ay,bx,by)
  %7353 = call float @dx.op.dot2.f32(i32 54, float %7316, float %7317, float %7350, float %7351)  ; Dot2(ax,ay,bx,by)
  %7354 = fmul fast float %7353, 2.000000e+00
  %7355 = call float @dx.op.dot2.f32(i32 54, float %7350, float %7351, float %7350, float %7351)  ; Dot2(ax,ay,bx,by)
  %7356 = fmul fast float %7348, %7348
  %7357 = fsub fast float %7355, %7356
  %7358 = fmul fast float %7354, %7354
  %7359 = fmul fast float %7352, 4.000000e+00
  %7360 = fmul fast float %7359, %7357
  %7361 = fsub fast float %7358, %7360
  %7362 = fcmp fast ogt float %7361, 0.000000e+00
  br i1 %7362, label %7363, label %7378

; <label>:7363                                    ; preds = %7329
  %7364 = fcmp fast ogt float %7354, 0.000000e+00
  %7365 = call float @dx.op.unary.f32(i32 24, float %7361)  ; Sqrt(value)
  %7366 = fsub fast float -0.000000e+00, %7365
  %7367 = select i1 %7364, float %7365, float %7366
  %7368 = fadd fast float %7367, %7354
  %7369 = fmul float %7368, -5.000000e-01
  %7370 = fdiv fast float %7369, %7352
  %7371 = call float @dx.op.binary.f32(i32 35, float %7370, float 0.000000e+00)  ; FMax(a,b)
  %7372 = call float @dx.op.binary.f32(i32 36, float %7315, float %7371)  ; FMin(a,b)
  %7373 = fdiv fast float %7357, %7369
  %7374 = call float @dx.op.binary.f32(i32 35, float %7373, float 0.000000e+00)  ; FMax(a,b)
  %7375 = call float @dx.op.binary.f32(i32 36, float %7315, float %7374)  ; FMin(a,b)
  %7376 = call float @dx.op.binary.f32(i32 36, float %7372, float %7375)  ; FMin(a,b)
  %7377 = call float @dx.op.binary.f32(i32 35, float %7372, float %7375)  ; FMax(a,b)
  br label %7378

; <label>:7378                                    ; preds = %7363, %7329
  %7379 = phi float [ %7377, %7363 ], [ -1.000000e+00, %7329 ]
  %7380 = phi float [ %7376, %7363 ], [ -1.000000e+00, %7329 ]
  %7381 = phi i1 [ true, %7363 ], [ false, %7329 ]
  %7382 = and i1 %7349, %7381
  br i1 %7382, label %7383, label %7385

; <label>:7383                                    ; preds = %7378
  %7384 = fcmp fast oeq float %7380, %7379
  br i1 %7384, label %7688, label %7386

; <label>:7385                                    ; preds = %7378
  br i1 %7349, label %7688, label %7386

; <label>:7386                                    ; preds = %7385, %7383
  %7387 = phi float [ %7315, %7385 ], [ %7379, %7383 ]
  %7388 = phi float [ 0.000000e+00, %7385 ], [ %7380, %7383 ]
  %7389 = icmp ne i32 %7337, 0
  %7390 = fmul fast float %7387, %7318
  %7391 = fadd fast float %7390, %7331
  %7392 = fmul fast float %7391, %7387
  %7393 = select i1 %7389, float 0.000000e+00, float %7392
  %7394 = fcmp fast oeq float %7318, 0.000000e+00
  %7395 = fdiv fast float %7336, %7318
  %7396 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7395)  ; FMax(a,b)
  %7397 = select i1 %7394, float %7387, float %7396
  %7398 = call float @dx.op.binary.f32(i32 36, float %7387, float %7397)  ; FMin(a,b)
  %7399 = fcmp fast ogt float %7318, 0.000000e+00
  %7400 = fcmp fast olt float %7336, 0.000000e+00
  br i1 %7399, label %7401, label %7458

; <label>:7401                                    ; preds = %7386
  %7402 = icmp eq i32 %7337, 0
  br i1 %7400, label %7403, label %7447

; <label>:7403                                    ; preds = %7401
  %7404 = select i1 %7402, float %7387, float 0.000000e+00
  %7405 = fsub fast float -0.000000e+00, %7404
  %7406 = call float @dx.op.unary.f32(i32 6, float %7405)  ; FAbs(value)
  %7407 = fmul fast float %7404, %7318
  %7408 = fadd fast float %7407, %7331
  %7409 = fmul fast float %7406, %7408
  %7410 = fsub fast float %7393, %7409
  %7411 = fsub fast float %7387, %7406
  %7412 = select i1 %7402, float %7411, float 0.000000e+00
  %7413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7414 = extractvalue %dx.types.CBufRet.f32 %7413, 0
  %7415 = extractvalue %dx.types.CBufRet.f32 %7413, 1
  %7416 = extractvalue %dx.types.CBufRet.f32 %7413, 2
  %7417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7418 = extractvalue %dx.types.CBufRet.f32 %7417, 0
  %7419 = extractvalue %dx.types.CBufRet.f32 %7417, 1
  %7420 = extractvalue %dx.types.CBufRet.f32 %7417, 2
  %7421 = extractvalue %dx.types.CBufRet.f32 %7417, 3
  %7422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7423 = extractvalue %dx.types.CBufRet.f32 %7422, 3
  %7424 = call float @dx.op.binary.f32(i32 36, float %7410, float %7423)  ; FMin(a,b)
  %7425 = fmul fast float %7421, %7412
  %7426 = call float @dx.op.unary.f32(i32 7, float %7425)  ; Saturate(value)
  %7427 = fsub fast float %7418, %7414
  %7428 = fsub fast float %7419, %7415
  %7429 = fsub fast float %7420, %7416
  %7430 = fmul fast float %7426, %7427
  %7431 = fmul fast float %7426, %7428
  %7432 = fmul fast float %7426, %7429
  %7433 = fadd fast float %7430, %7414
  %7434 = fadd fast float %7431, %7415
  %7435 = fadd fast float %7432, %7416
  %7436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7437 = extractvalue %dx.types.CBufRet.f32 %7436, 0
  %7438 = extractvalue %dx.types.CBufRet.f32 %7436, 1
  %7439 = fadd fast float %7438, %7437
  %7440 = call float @dx.op.unary.f32(i32 7, float %7439)  ; Saturate(value)
  %7441 = extractvalue %dx.types.CBufRet.f32 %7436, 2
  %7442 = extractvalue %dx.types.CBufRet.f32 %7436, 3
  %7443 = fadd fast float %7442, %7441
  %7444 = call float @dx.op.unary.f32(i32 7, float %7443)  ; Saturate(value)
  %7445 = fmul fast float %7440, %7424
  %7446 = fmul fast float %7445, %7444
  br label %7688

; <label>:7447                                    ; preds = %7401
  br i1 %7402, label %7448, label %7469

; <label>:7448                                    ; preds = %7447
  %7449 = call float @dx.op.binary.f32(i32 36, float %7398, float %7388)  ; FMin(a,b)
  %7450 = fsub fast float %7398, %7449
  %7451 = fsub fast float %7450, %7387
  %7452 = call float @dx.op.unary.f32(i32 6, float %7451)  ; FAbs(value)
  %7453 = fadd fast float %7450, %7387
  %7454 = fmul fast float %7453, %7318
  %7455 = fadd fast float %7454, %7331
  %7456 = fmul fast float %7455, %7452
  %7457 = fsub fast float %7393, %7456
  br label %7469

; <label>:7458                                    ; preds = %7386
  br i1 %7400, label %7459, label %7469

; <label>:7459                                    ; preds = %7458
  %7460 = call float @dx.op.binary.f32(i32 35, float %7388, float %7398)  ; FMax(a,b)
  %7461 = icmp eq i32 %7337, 0
  %7462 = select i1 %7461, float %7398, float 0.000000e+00
  %7463 = fsub fast float -0.000000e+00, %7462
  %7464 = call float @dx.op.unary.f32(i32 6, float %7463)  ; FAbs(value)
  %7465 = fmul fast float %7462, %7318
  %7466 = fadd fast float %7465, %7331
  %7467 = fmul fast float %7464, %7466
  %7468 = fsub fast float %7393, %7467
  br label %7469

; <label>:7469                                    ; preds = %7459, %7458, %7448, %7447
  %7470 = phi float [ %7388, %7447 ], [ %7388, %7448 ], [ %7460, %7459 ], [ %7388, %7458 ]
  %7471 = phi float [ 0.000000e+00, %7447 ], [ %7452, %7448 ], [ %7464, %7459 ], [ 0.000000e+00, %7458 ]
  %7472 = phi float [ %7393, %7447 ], [ %7457, %7448 ], [ %7468, %7459 ], [ %7393, %7458 ]
  %7473 = phi float [ %7398, %7447 ], [ %7398, %7448 ], [ %7387, %7459 ], [ %7387, %7458 ]
  %7474 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %7474, align 4, !tbaa !124, !noalias !126
  %7475 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %7475, align 4, !tbaa !124, !noalias !126
  %7476 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %7476, align 4, !tbaa !124, !noalias !126
  %7477 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %7477, align 4, !tbaa !124, !noalias !126
  %7478 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %7478, align 4, !tbaa !124, !noalias !126
  %7479 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %7479, align 4, !tbaa !124, !noalias !126
  %7480 = icmp sgt i32 %7339, 0
  br i1 %7480, label %7481, label %7542

; <label>:7481                                    ; preds = %7469
  br label %7482

; <label>:7482                                    ; preds = %7531, %7481
  %7483 = phi i32 [ %7532, %7531 ], [ 0, %7481 ]
  %7484 = phi i32 [ %7533, %7531 ], [ 0, %7481 ]
  %7485 = add nuw i32 %7484, 171
  %7486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7485)  ; CBufferLoadLegacy(handle,regIndex)
  %7487 = extractvalue %dx.types.CBufRet.f32 %7486, 0
  %7488 = extractvalue %dx.types.CBufRet.f32 %7486, 1
  %7489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7490 = extractvalue %dx.types.CBufRet.f32 %7489, 0
  %7491 = extractvalue %dx.types.CBufRet.f32 %7489, 1
  %7492 = fsub fast float %7487, %7490
  %7493 = fsub fast float %7488, %7491
  %7494 = extractvalue %dx.types.CBufRet.f32 %7486, 2
  %7495 = fsub fast float -0.000000e+00, %7492
  %7496 = fsub fast float -0.000000e+00, %7493
  %7497 = call float @dx.op.dot2.f32(i32 54, float %7316, float %7317, float %7495, float %7496)  ; Dot2(ax,ay,bx,by)
  %7498 = fmul fast float %7497, 2.000000e+00
  %7499 = call float @dx.op.dot2.f32(i32 54, float %7495, float %7496, float %7495, float %7496)  ; Dot2(ax,ay,bx,by)
  %7500 = fmul fast float %7494, %7494
  %7501 = fsub fast float %7499, %7500
  %7502 = fmul fast float %7498, %7498
  %7503 = fmul fast float %7359, %7501
  %7504 = fsub fast float %7502, %7503
  %7505 = fcmp fast ogt float %7504, 0.000000e+00
  br i1 %7505, label %7506, label %7521

; <label>:7506                                    ; preds = %7482
  %7507 = fcmp fast ogt float %7498, 0.000000e+00
  %7508 = call float @dx.op.unary.f32(i32 24, float %7504)  ; Sqrt(value)
  %7509 = fsub fast float -0.000000e+00, %7508
  %7510 = select i1 %7507, float %7508, float %7509
  %7511 = fadd fast float %7510, %7498
  %7512 = fmul float %7511, -5.000000e-01
  %7513 = fdiv fast float %7512, %7352
  %7514 = call float @dx.op.binary.f32(i32 35, float %7513, float 0.000000e+00)  ; FMax(a,b)
  %7515 = call float @dx.op.binary.f32(i32 36, float %7387, float %7514)  ; FMin(a,b)
  %7516 = fdiv fast float %7501, %7512
  %7517 = call float @dx.op.binary.f32(i32 35, float %7516, float 0.000000e+00)  ; FMax(a,b)
  %7518 = call float @dx.op.binary.f32(i32 36, float %7387, float %7517)  ; FMin(a,b)
  %7519 = call float @dx.op.binary.f32(i32 36, float %7515, float %7518)  ; FMin(a,b)
  %7520 = call float @dx.op.binary.f32(i32 35, float %7515, float %7518)  ; FMax(a,b)
  br label %7521

; <label>:7521                                    ; preds = %7506, %7482
  %7522 = phi float [ %7520, %7506 ], [ -1.000000e+00, %7482 ]
  %7523 = phi float [ %7519, %7506 ], [ -1.000000e+00, %7482 ]
  %7524 = phi i1 [ true, %7506 ], [ false, %7482 ]
  br i1 %7524, label %7525, label %7531

; <label>:7525                                    ; preds = %7521
  %7526 = call float @dx.op.binary.f32(i32 35, float %7470, float %7523)  ; FMax(a,b)
  %7527 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7484
  store float %7526, float* %7527, align 4, !tbaa !124, !noalias !126
  %7528 = call float @dx.op.binary.f32(i32 35, float %7470, float %7522)  ; FMax(a,b)
  %7529 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7484
  store float %7528, float* %7529, align 4, !tbaa !124, !noalias !126
  %7530 = add nsw i32 %7483, 1
  br label %7531

; <label>:7531                                    ; preds = %7525, %7521
  %7532 = phi i32 [ %7530, %7525 ], [ %7483, %7521 ]
  %7533 = add nuw nsw i32 %7484, 1
  %7534 = icmp eq i32 %7533, %7339
  br i1 %7534, label %7535, label %7482

; <label>:7535                                    ; preds = %7531
  %7536 = load float, float* %7476, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %7537 = load float, float* %7475, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  %7538 = load float, float* %7474, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  %7539 = load float, float* %7479, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %7540 = load float, float* %7478, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  %7541 = load float, float* %7477, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  br label %7542

; <label>:7542                                    ; preds = %7535, %7469
  %7543 = phi float [ -1.000000e+00, %7469 ], [ %7541, %7535 ]
  %7544 = phi float [ -1.000000e+00, %7469 ], [ %7540, %7535 ]
  %7545 = phi float [ -1.000000e+00, %7469 ], [ %7539, %7535 ]
  %7546 = phi float [ -1.000000e+00, %7469 ], [ %7538, %7535 ]
  %7547 = phi float [ -1.000000e+00, %7469 ], [ %7537, %7535 ]
  %7548 = phi float [ -1.000000e+00, %7469 ], [ %7536, %7535 ]
  %7549 = phi i32 [ 0, %7469 ], [ %7532, %7535 ]
  %7550 = call float @dx.op.binary.f32(i32 36, float %7547, float %7548)  ; FMin(a,b)
  %7551 = call float @dx.op.binary.f32(i32 36, float %7546, float %7550)  ; FMin(a,b)
  %7552 = call float @dx.op.binary.f32(i32 35, float %7546, float %7547)  ; FMax(a,b)
  %7553 = call float @dx.op.binary.f32(i32 36, float %7552, float %7548)  ; FMin(a,b)
  %7554 = call float @dx.op.binary.f32(i32 36, float %7546, float %7547)  ; FMin(a,b)
  %7555 = call float @dx.op.binary.f32(i32 35, float %7554, float %7553)  ; FMax(a,b)
  %7556 = call float @dx.op.binary.f32(i32 35, float %7547, float %7548)  ; FMax(a,b)
  %7557 = call float @dx.op.binary.f32(i32 35, float %7546, float %7556)  ; FMax(a,b)
  store float %7551, float* %7474, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  store float %7555, float* %7475, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  store float %7557, float* %7476, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %7558 = call float @dx.op.binary.f32(i32 36, float %7544, float %7545)  ; FMin(a,b)
  %7559 = call float @dx.op.binary.f32(i32 36, float %7543, float %7558)  ; FMin(a,b)
  %7560 = call float @dx.op.binary.f32(i32 35, float %7543, float %7544)  ; FMax(a,b)
  %7561 = call float @dx.op.binary.f32(i32 36, float %7560, float %7545)  ; FMin(a,b)
  %7562 = call float @dx.op.binary.f32(i32 36, float %7543, float %7544)  ; FMin(a,b)
  %7563 = call float @dx.op.binary.f32(i32 35, float %7562, float %7561)  ; FMax(a,b)
  %7564 = call float @dx.op.binary.f32(i32 35, float %7544, float %7545)  ; FMax(a,b)
  %7565 = call float @dx.op.binary.f32(i32 35, float %7543, float %7564)  ; FMax(a,b)
  store float %7559, float* %7477, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  store float %7563, float* %7478, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  store float %7565, float* %7479, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %7566 = sub nsw i32 3, %7549
  %7567 = icmp sgt i32 %7566, 2
  br i1 %7567, label %7568, label %7606

; <label>:7568                                    ; preds = %7542
  %7569 = icmp eq i32 %7337, 0
  %7570 = fsub fast float %7387, %7471
  %7571 = select i1 %7569, float %7570, float %7471
  %7572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7573 = extractvalue %dx.types.CBufRet.f32 %7572, 0
  %7574 = extractvalue %dx.types.CBufRet.f32 %7572, 1
  %7575 = extractvalue %dx.types.CBufRet.f32 %7572, 2
  %7576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7577 = extractvalue %dx.types.CBufRet.f32 %7576, 0
  %7578 = extractvalue %dx.types.CBufRet.f32 %7576, 1
  %7579 = extractvalue %dx.types.CBufRet.f32 %7576, 2
  %7580 = extractvalue %dx.types.CBufRet.f32 %7576, 3
  %7581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7582 = extractvalue %dx.types.CBufRet.f32 %7581, 3
  %7583 = call float @dx.op.binary.f32(i32 36, float %7472, float %7582)  ; FMin(a,b)
  %7584 = fmul fast float %7580, %7571
  %7585 = call float @dx.op.unary.f32(i32 7, float %7584)  ; Saturate(value)
  %7586 = fsub fast float %7577, %7573
  %7587 = fsub fast float %7578, %7574
  %7588 = fsub fast float %7579, %7575
  %7589 = fmul fast float %7585, %7586
  %7590 = fmul fast float %7585, %7587
  %7591 = fmul fast float %7585, %7588
  %7592 = fadd fast float %7589, %7573
  %7593 = fadd fast float %7590, %7574
  %7594 = fadd fast float %7591, %7575
  %7595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7596 = extractvalue %dx.types.CBufRet.f32 %7595, 0
  %7597 = extractvalue %dx.types.CBufRet.f32 %7595, 1
  %7598 = fadd fast float %7597, %7596
  %7599 = call float @dx.op.unary.f32(i32 7, float %7598)  ; Saturate(value)
  %7600 = extractvalue %dx.types.CBufRet.f32 %7595, 2
  %7601 = extractvalue %dx.types.CBufRet.f32 %7595, 3
  %7602 = fadd fast float %7601, %7600
  %7603 = call float @dx.op.unary.f32(i32 7, float %7602)  ; Saturate(value)
  %7604 = fmul fast float %7599, %7583
  %7605 = fmul fast float %7604, %7603
  br label %7688

; <label>:7606                                    ; preds = %7542
  %7607 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7566
  %7608 = load float, float* %7607, align 4, !tbaa !124, !noalias !126
  %7609 = fcmp fast olt float %7608, %7473
  %7610 = icmp sgt i32 %7549, 0
  %7611 = and i1 %7610, %7609
  br i1 %7611, label %7612, label %7649

; <label>:7612                                    ; preds = %7606
  br label %7613

; <label>:7613                                    ; preds = %7642, %7612
  %7614 = phi float [ %7643, %7642 ], [ %7471, %7612 ]
  %7615 = phi float [ %7644, %7642 ], [ %7472, %7612 ]
  %7616 = phi float [ %7624, %7642 ], [ %7608, %7612 ]
  %7617 = phi i32 [ %7621, %7642 ], [ %7566, %7612 ]
  %7618 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7617
  %7619 = load float, float* %7618, align 4, !tbaa !124, !noalias !126
  %7620 = icmp slt i32 %7617, 2
  %7621 = add nsw i32 %7617, 1
  %7622 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7621
  %7623 = load float, float* %7622, align 4, !tbaa !124, !noalias !126
  %7624 = select i1 %7620, float %7623, float %7387
  %7625 = call float @dx.op.binary.f32(i32 36, float %7624, float %7619)  ; FMin(a,b)
  %7626 = call float @dx.op.binary.f32(i32 36, float %7473, float %7625)  ; FMin(a,b)
  %7627 = icmp eq i32 %7337, 0
  %7628 = fadd fast float %7626, %7616
  %7629 = fmul fast float %7628, %7318
  %7630 = fadd fast float %7629, %7331
  br i1 %7627, label %7636, label %7631

; <label>:7631                                    ; preds = %7613
  %7632 = fsub fast float %7626, %7616
  %7633 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7632)  ; FMax(a,b)
  %7634 = fmul fast float %7633, %7630
  %7635 = fadd fast float %7634, %7615
  br label %7642

; <label>:7636                                    ; preds = %7613
  %7637 = fsub fast float %7616, %7626
  %7638 = call float @dx.op.unary.f32(i32 6, float %7637)  ; FAbs(value)
  %7639 = fadd fast float %7638, %7614
  %7640 = fmul fast float %7638, %7630
  %7641 = fsub fast float %7615, %7640
  br label %7642

; <label>:7642                                    ; preds = %7636, %7631
  %7643 = phi float [ %7633, %7631 ], [ %7639, %7636 ]
  %7644 = phi float [ %7635, %7631 ], [ %7641, %7636 ]
  %7645 = fcmp fast olt float %7624, %7473
  %7646 = icmp slt i32 %7621, 3
  %7647 = and i1 %7646, %7645
  br i1 %7647, label %7613, label %7648

; <label>:7648                                    ; preds = %7642
  br label %7649

; <label>:7649                                    ; preds = %7648, %7606
  %7650 = phi float [ %7471, %7606 ], [ %7643, %7648 ]
  %7651 = phi float [ %7472, %7606 ], [ %7644, %7648 ]
  %7652 = fsub fast float %7387, %7650
  %7653 = select i1 %7389, float %7650, float %7652
  %7654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7655 = extractvalue %dx.types.CBufRet.f32 %7654, 0
  %7656 = extractvalue %dx.types.CBufRet.f32 %7654, 1
  %7657 = extractvalue %dx.types.CBufRet.f32 %7654, 2
  %7658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7659 = extractvalue %dx.types.CBufRet.f32 %7658, 0
  %7660 = extractvalue %dx.types.CBufRet.f32 %7658, 1
  %7661 = extractvalue %dx.types.CBufRet.f32 %7658, 2
  %7662 = extractvalue %dx.types.CBufRet.f32 %7658, 3
  %7663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7664 = extractvalue %dx.types.CBufRet.f32 %7663, 3
  %7665 = call float @dx.op.binary.f32(i32 36, float %7651, float %7664)  ; FMin(a,b)
  %7666 = fmul fast float %7662, %7653
  %7667 = call float @dx.op.unary.f32(i32 7, float %7666)  ; Saturate(value)
  %7668 = fsub fast float %7659, %7655
  %7669 = fsub fast float %7660, %7656
  %7670 = fsub fast float %7661, %7657
  %7671 = fmul fast float %7667, %7668
  %7672 = fmul fast float %7667, %7669
  %7673 = fmul fast float %7667, %7670
  %7674 = fadd fast float %7671, %7655
  %7675 = fadd fast float %7672, %7656
  %7676 = fadd fast float %7673, %7657
  %7677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7678 = extractvalue %dx.types.CBufRet.f32 %7677, 0
  %7679 = extractvalue %dx.types.CBufRet.f32 %7677, 1
  %7680 = fadd fast float %7679, %7678
  %7681 = call float @dx.op.unary.f32(i32 7, float %7680)  ; Saturate(value)
  %7682 = extractvalue %dx.types.CBufRet.f32 %7677, 2
  %7683 = extractvalue %dx.types.CBufRet.f32 %7677, 3
  %7684 = fadd fast float %7683, %7682
  %7685 = call float @dx.op.unary.f32(i32 7, float %7684)  ; Saturate(value)
  %7686 = fmul fast float %7681, %7665
  %7687 = fmul fast float %7686, %7685
  br label %7688

; <label>:7688                                    ; preds = %7649, %7568, %7403, %7385, %7383
  %7689 = phi float [ %7412, %7403 ], [ %7571, %7568 ], [ %7653, %7649 ], [ 0.000000e+00, %7383 ], [ 0.000000e+00, %7385 ]
  %7690 = phi float [ %7446, %7403 ], [ %7605, %7568 ], [ %7687, %7649 ], [ 0.000000e+00, %7383 ], [ 0.000000e+00, %7385 ]
  %7691 = phi float [ %7433, %7403 ], [ %7592, %7568 ], [ %7674, %7649 ], [ 0.000000e+00, %7383 ], [ 0.000000e+00, %7385 ]
  %7692 = phi float [ %7434, %7403 ], [ %7593, %7568 ], [ %7675, %7649 ], [ 0.000000e+00, %7383 ], [ 0.000000e+00, %7385 ]
  %7693 = phi float [ %7435, %7403 ], [ %7594, %7568 ], [ %7676, %7649 ], [ 0.000000e+00, %7383 ], [ 0.000000e+00, %7385 ]
  %7694 = fmul fast float %7326, %7690
  %7695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7696 = extractvalue %dx.types.CBufRet.f32 %7695, 2
  %7697 = fsub fast float %7333, %7696
  %7698 = fcmp fast olt float %7694, -2.000000e+01
  %7699 = call float @dx.op.unary.f32(i32 21, float %7694)  ; Exp(value)
  %7700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7701 = extractvalue %dx.types.CBufRet.f32 %7700, 2
  %7702 = extractvalue %dx.types.CBufRet.f32 %7700, 3
  %7703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7704 = extractvalue %dx.types.CBufRet.f32 %7703, 2
  %7705 = fmul fast float %7702, %7697
  %7706 = call float @dx.op.unary.f32(i32 7, float %7705)  ; Saturate(value)
  %7707 = fsub fast float 1.000000e+00, %7706
  %7708 = fmul fast float %7318, 5.000000e-01
  %7709 = fadd fast float %7708, 5.000000e-01
  %7710 = call float @dx.op.unary.f32(i32 7, float %7709)  ; Saturate(value)
  %7711 = fsub fast float 1.000000e+00, %7710
  %7712 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7707)  ; FMax(a,b)
  %7713 = fdiv fast float %7711, %7712
  %7714 = fsub fast float %7697, %7275
  %7715 = call float @dx.op.unary.f32(i32 6, float %7714)  ; FAbs(value)
  %7716 = fmul fast float %7715, %7701
  %7717 = call float @dx.op.unary.f32(i32 7, float %7713)  ; Saturate(value)
  %7718 = fsub fast float 1.000000e+00, %7716
  %7719 = fmul fast float %7718, %7717
  %7720 = fadd fast float %7719, %7716
  %7721 = fmul fast float %7704, %7697
  %7722 = call float @dx.op.unary.f32(i32 7, float %7721)  ; Saturate(value)
  %7723 = fsub fast float 1.000000e+00, %7720
  %7724 = fmul fast float %7723, %7722
  %7725 = fadd fast float %7724, %7720
  %7726 = call float @dx.op.unary.f32(i32 7, float %7725)  ; Saturate(value)
  %7727 = fadd fast float %7699, -1.000000e+00
  %7728 = select i1 %7698, float -1.000000e+00, float %7727
  %7729 = fmul fast float %7726, %7728
  %7730 = fadd fast float %7729, 1.000000e+00
  %7731 = fsub fast float -0.000000e+00, %7729
  %7732 = fmul fast float %7691, %7731
  %7733 = fmul fast float %7692, %7731
  %7734 = fmul fast float %7693, %7731
  br label %7735

; <label>:7735                                    ; preds = %7688, %7284
  %7736 = phi float [ %7689, %7688 ], [ 0.000000e+00, %7284 ]
  %7737 = phi float [ %7730, %7688 ], [ 1.000000e+00, %7284 ]
  %7738 = phi float [ %7732, %7688 ], [ 0.000000e+00, %7284 ]
  %7739 = phi float [ %7733, %7688 ], [ 0.000000e+00, %7284 ]
  %7740 = phi float [ %7734, %7688 ], [ 0.000000e+00, %7284 ]
  %7741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7742 = extractvalue %dx.types.CBufRet.f32 %7741, 1
  %7743 = fsub fast float 1.000000e+00, %7737
  %7744 = fmul fast float %7743, %7319
  %7745 = fmul fast float %7744, %7742
  %7746 = fsub fast float %7319, %7745
  br i1 %7312, label %7747, label %7776, !dx.controlflow.hints !162

; <label>:7747                                    ; preds = %7735
  %7748 = fmul fast float %7320, %7309
  %7749 = fadd fast float %7748, %7310
  %7750 = call float @dx.op.unary.f32(i32 7, float %7749)  ; Saturate(value)
  %7751 = fmul fast float %7291, %7746
  %7752 = fsub fast float -0.000000e+00, %7751
  %7753 = fmul fast float %7292, %7746
  %7754 = fsub fast float -0.000000e+00, %7753
  %7755 = call float @dx.op.unary.f32(i32 21, float %7752)  ; Exp(value)
  %7756 = call float @dx.op.unary.f32(i32 21, float %7754)  ; Exp(value)
  %7757 = call float @dx.op.binary.f32(i32 35, float %7299, float %7755)  ; FMax(a,b)
  %7758 = call float @dx.op.binary.f32(i32 35, float %7299, float %7756)  ; FMax(a,b)
  %7759 = fsub fast float %7758, %7757
  %7760 = fmul fast float %7759, %7750
  %7761 = fadd fast float %7760, %7757
  %7762 = call float @dx.op.unary.f32(i32 7, float %7761)  ; Saturate(value)
  %7763 = fsub fast float %7296, %7301
  %7764 = fsub fast float %7297, %7302
  %7765 = fsub fast float %7298, %7303
  %7766 = fmul fast float %7750, %7763
  %7767 = fmul fast float %7750, %7764
  %7768 = fmul fast float %7750, %7765
  %7769 = fadd fast float %7766, %7301
  %7770 = fadd fast float %7767, %7302
  %7771 = fadd fast float %7768, %7303
  %7772 = fsub fast float 1.000000e+00, %7762
  %7773 = fmul fast float %7772, %7769
  %7774 = fmul fast float %7772, %7770
  %7775 = fmul fast float %7772, %7771
  br label %7835

; <label>:7776                                    ; preds = %7735
  %7777 = fmul fast float %7746, %7308
  %7778 = call float @dx.op.unary.f32(i32 7, float %7777)  ; Saturate(value)
  %7779 = fsub fast float 2.000000e+00, %7778
  %7780 = fmul fast float %7778, 9.921875e-01
  %7781 = fmul fast float %7780, %7779
  %7782 = fadd fast float %7781, 3.906250e-03
  %7783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7782, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7784 = extractvalue %dx.types.ResRet.f32 %7783, 0
  %7785 = fsub fast float %7778, %7784
  %7786 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7785)  ; FMax(a,b)
  %7787 = fmul fast float %7294, %7275
  %7788 = call float @dx.op.unary.f32(i32 6, float %7787)  ; FAbs(value)
  %7789 = fcmp fast ogt float %7788, 0x3EB0C6F7A0000000
  br i1 %7789, label %7790, label %7796, !dx.controlflow.hints !163

; <label>:7790                                    ; preds = %7776
  %7791 = fmul fast float %7787, 0xBFF7154760000000
  %7792 = call float @dx.op.unary.f32(i32 21, float %7791)  ; Exp(value)
  %7793 = fsub fast float 1.000000e+00, %7792
  %7794 = fdiv fast float %7793, %7787
  %7795 = fmul fast float %7794, %7304
  br label %7796

; <label>:7796                                    ; preds = %7790, %7776
  %7797 = phi float [ %7795, %7790 ], [ %7304, %7776 ]
  %7798 = fadd fast float %7797, %7306
  %7799 = fmul fast float %7798, %7786
  %7800 = fmul fast float %7291, %7799
  %7801 = fsub fast float -0.000000e+00, %7800
  %7802 = fmul fast float %7292, %7799
  %7803 = fsub fast float -0.000000e+00, %7802
  %7804 = fmul fast float %7293, %7799
  %7805 = fsub fast float -0.000000e+00, %7804
  %7806 = call float @dx.op.unary.f32(i32 21, float %7801)  ; Exp(value)
  %7807 = call float @dx.op.unary.f32(i32 21, float %7803)  ; Exp(value)
  %7808 = call float @dx.op.unary.f32(i32 21, float %7805)  ; Exp(value)
  %7809 = fmul fast float %7320, %7320
  %7810 = fadd fast float %7809, 1.000000e+00
  %7811 = fmul fast float %7810, 0x3FAE8EC8A0000000
  %7812 = fmul fast float %7811, %7301
  %7813 = fmul fast float %7811, %7302
  %7814 = fmul fast float %7811, %7303
  %7815 = fmul fast float %7320, %7299
  %7816 = fsub fast float 1.000000e+00, %7815
  %7817 = fmul fast float %7299, %7299
  %7818 = fsub fast float 1.000000e+00, %7817
  %7819 = fmul fast float %7818, 0x3FB45F3060000000
  %7820 = fmul fast float %7816, %7816
  %7821 = fdiv fast float 1.000000e+00, %7820
  %7822 = fmul fast float %7819, %7821
  %7823 = fmul fast float %7822, %7296
  %7824 = fmul fast float %7822, %7297
  %7825 = fmul fast float %7822, %7298
  %7826 = fadd fast float %7823, %7812
  %7827 = fadd fast float %7824, %7813
  %7828 = fadd fast float %7825, %7814
  %7829 = fsub fast float 1.000000e+00, %7806
  %7830 = fsub fast float 1.000000e+00, %7807
  %7831 = fsub fast float 1.000000e+00, %7808
  %7832 = fmul fast float %7826, %7829
  %7833 = fmul fast float %7827, %7830
  %7834 = fmul fast float %7828, %7831
  br label %7835

; <label>:7835                                    ; preds = %7796, %7747
  %7836 = phi float [ %7773, %7747 ], [ %7832, %7796 ]
  %7837 = phi float [ %7774, %7747 ], [ %7833, %7796 ]
  %7838 = phi float [ %7775, %7747 ], [ %7834, %7796 ]
  %7839 = phi float [ %7762, %7747 ], [ %7806, %7796 ]
  %7840 = phi float [ %7762, %7747 ], [ %7807, %7796 ]
  %7841 = phi float [ %7762, %7747 ], [ %7808, %7796 ]
  br i1 %7328, label %7842, label %8040, !dx.controlflow.hints !164

; <label>:7842                                    ; preds = %7835
  %7843 = extractvalue %dx.types.CBufRet.f32 %7741, 0
  %7844 = fmul fast float %7843, %7743
  %7845 = fsub fast float %7738, %7836
  %7846 = fsub fast float %7739, %7837
  %7847 = fsub fast float %7740, %7838
  %7848 = fmul fast float %7844, %7845
  %7849 = fmul fast float %7844, %7846
  %7850 = fmul fast float %7844, %7847
  %7851 = fadd fast float %7848, %7836
  %7852 = fadd fast float %7849, %7837
  %7853 = fadd fast float %7850, %7838
  %7854 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7839)  ; FMax(a,b)
  %7855 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7840)  ; FMax(a,b)
  %7856 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7841)  ; FMax(a,b)
  %7857 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7737)  ; FMax(a,b)
  %7858 = call float @dx.op.binary.f32(i32 35, float %7736, float %7746)  ; FMax(a,b)
  %7859 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7858)  ; FMax(a,b)
  %7860 = fdiv fast float %7736, %7859
  %7861 = call float @dx.op.unary.f32(i32 7, float %7860)  ; Saturate(value)
  %7862 = fdiv fast float %7746, %7859
  %7863 = call float @dx.op.unary.f32(i32 7, float %7862)  ; Saturate(value)
  %7864 = fcmp fast une float %7857, 1.000000e+00
  br i1 %7864, label %7865, label %7878, !dx.controlflow.hints !165

; <label>:7865                                    ; preds = %7842
  %7866 = call float @dx.op.unary.f32(i32 23, float %7857)  ; Log(value)
  %7867 = fmul fast float %7866, 0x3FE62E4300000000
  %7868 = fmul fast float %7738, %7867
  %7869 = fsub fast float -0.000000e+00, %7868
  %7870 = fmul fast float %7739, %7867
  %7871 = fsub fast float -0.000000e+00, %7870
  %7872 = fmul fast float %7740, %7867
  %7873 = fsub fast float -0.000000e+00, %7872
  %7874 = fsub fast float 1.000000e+00, %7857
  %7875 = fdiv fast float %7869, %7874
  %7876 = fdiv fast float %7871, %7874
  %7877 = fdiv fast float %7873, %7874
  br label %7878

; <label>:7878                                    ; preds = %7865, %7842
  %7879 = phi float [ %7875, %7865 ], [ %7738, %7842 ]
  %7880 = phi float [ %7876, %7865 ], [ %7739, %7842 ]
  %7881 = phi float [ %7877, %7865 ], [ %7740, %7842 ]
  %7882 = phi float [ %7867, %7865 ], [ 0.000000e+00, %7842 ]
  %7883 = fcmp fast une float %7854, 1.000000e+00
  br i1 %7883, label %7884, label %7891, !dx.controlflow.hints !166

; <label>:7884                                    ; preds = %7878
  %7885 = call float @dx.op.unary.f32(i32 23, float %7854)  ; Log(value)
  %7886 = fmul fast float %7885, 0x3FE62E4300000000
  %7887 = fmul fast float %7851, %7886
  %7888 = fsub fast float -0.000000e+00, %7887
  %7889 = fsub fast float 1.000000e+00, %7854
  %7890 = fdiv fast float %7888, %7889
  br label %7891

; <label>:7891                                    ; preds = %7884, %7878
  %7892 = phi float [ %7890, %7884 ], [ %7851, %7878 ]
  %7893 = phi float [ %7886, %7884 ], [ 0.000000e+00, %7878 ]
  %7894 = fcmp fast une float %7855, 1.000000e+00
  br i1 %7894, label %7895, label %7902, !dx.controlflow.hints !166

; <label>:7895                                    ; preds = %7891
  %7896 = call float @dx.op.unary.f32(i32 23, float %7855)  ; Log(value)
  %7897 = fmul fast float %7896, 0x3FE62E4300000000
  %7898 = fmul fast float %7852, %7897
  %7899 = fsub fast float -0.000000e+00, %7898
  %7900 = fsub fast float 1.000000e+00, %7855
  %7901 = fdiv fast float %7899, %7900
  br label %7902

; <label>:7902                                    ; preds = %7895, %7891
  %7903 = phi float [ %7901, %7895 ], [ %7852, %7891 ]
  %7904 = phi float [ %7897, %7895 ], [ 0.000000e+00, %7891 ]
  %7905 = fcmp fast une float %7856, 1.000000e+00
  br i1 %7905, label %7906, label %7913, !dx.controlflow.hints !166

; <label>:7906                                    ; preds = %7902
  %7907 = call float @dx.op.unary.f32(i32 23, float %7856)  ; Log(value)
  %7908 = fmul fast float %7907, 0x3FE62E4300000000
  %7909 = fmul fast float %7853, %7908
  %7910 = fsub fast float -0.000000e+00, %7909
  %7911 = fsub fast float 1.000000e+00, %7856
  %7912 = fdiv fast float %7910, %7911
  br label %7913

; <label>:7913                                    ; preds = %7906, %7902
  %7914 = phi float [ %7912, %7906 ], [ %7853, %7902 ]
  %7915 = phi float [ %7908, %7906 ], [ 0.000000e+00, %7902 ]
  %7916 = fmul fast float %7879, %7863
  %7917 = fmul fast float %7880, %7863
  %7918 = fmul fast float %7881, %7863
  %7919 = fmul fast float %7882, %7863
  %7920 = fmul fast float %7892, %7861
  %7921 = fmul fast float %7903, %7861
  %7922 = fmul fast float %7914, %7861
  %7923 = fmul fast float %7893, %7861
  %7924 = fmul fast float %7904, %7861
  %7925 = fmul fast float %7915, %7861
  %7926 = fadd fast float %7920, %7916
  %7927 = fadd fast float %7921, %7917
  %7928 = fadd fast float %7922, %7918
  %7929 = fadd fast float %7923, %7919
  %7930 = fadd fast float %7924, %7919
  %7931 = fadd fast float %7925, %7919
  %7932 = fcmp fast une float %7929, 0.000000e+00
  br i1 %7932, label %7933, label %7940, !dx.controlflow.hints !167

; <label>:7933                                    ; preds = %7913
  %7934 = fmul fast float %7929, 0x3FF7154760000000
  %7935 = call float @dx.op.unary.f32(i32 21, float %7934)  ; Exp(value)
  %7936 = fsub fast float 1.000000e+00, %7935
  %7937 = fmul fast float %7926, %7936
  %7938 = fsub fast float -0.000000e+00, %7937
  %7939 = fdiv fast float %7938, %7929
  br label %7940

; <label>:7940                                    ; preds = %7933, %7913
  %7941 = phi float [ %7935, %7933 ], [ 1.000000e+00, %7913 ]
  %7942 = phi float [ %7939, %7933 ], [ %7926, %7913 ]
  %7943 = fcmp fast une float %7930, 0.000000e+00
  br i1 %7943, label %7944, label %7951, !dx.controlflow.hints !167

; <label>:7944                                    ; preds = %7940
  %7945 = fmul fast float %7930, 0x3FF7154760000000
  %7946 = call float @dx.op.unary.f32(i32 21, float %7945)  ; Exp(value)
  %7947 = fsub fast float 1.000000e+00, %7946
  %7948 = fmul fast float %7927, %7947
  %7949 = fsub fast float -0.000000e+00, %7948
  %7950 = fdiv fast float %7949, %7930
  br label %7951

; <label>:7951                                    ; preds = %7944, %7940
  %7952 = phi float [ %7946, %7944 ], [ 1.000000e+00, %7940 ]
  %7953 = phi float [ %7950, %7944 ], [ %7927, %7940 ]
  %7954 = fcmp fast une float %7931, 0.000000e+00
  br i1 %7954, label %7955, label %7962, !dx.controlflow.hints !167

; <label>:7955                                    ; preds = %7951
  %7956 = fmul fast float %7931, 0x3FF7154760000000
  %7957 = call float @dx.op.unary.f32(i32 21, float %7956)  ; Exp(value)
  %7958 = fsub fast float 1.000000e+00, %7957
  %7959 = fmul fast float %7928, %7958
  %7960 = fsub fast float -0.000000e+00, %7959
  %7961 = fdiv fast float %7960, %7931
  br label %7962

; <label>:7962                                    ; preds = %7955, %7951
  %7963 = phi float [ %7957, %7955 ], [ 1.000000e+00, %7951 ]
  %7964 = phi float [ %7961, %7955 ], [ %7928, %7951 ]
  %7965 = fcmp fast ogt float %7861, %7863
  br i1 %7965, label %7966, label %7986

; <label>:7966                                    ; preds = %7962
  %7967 = fsub fast float 1.000000e+00, %7863
  %7968 = fmul fast float %7879, %7967
  %7969 = fmul fast float %7880, %7967
  %7970 = fmul fast float %7881, %7967
  %7971 = fmul fast float %7882, %7967
  %7972 = fcmp fast une float %7971, 0.000000e+00
  br i1 %7972, label %7973, label %8024, !dx.controlflow.hints !168

; <label>:7973                                    ; preds = %7966
  %7974 = fmul fast float %7971, 0x3FF7154760000000
  %7975 = call float @dx.op.unary.f32(i32 21, float %7974)  ; Exp(value)
  %7976 = fsub fast float 1.000000e+00, %7975
  %7977 = fmul fast float %7968, %7976
  %7978 = fsub fast float -0.000000e+00, %7977
  %7979 = fmul fast float %7969, %7976
  %7980 = fsub fast float -0.000000e+00, %7979
  %7981 = fmul fast float %7970, %7976
  %7982 = fsub fast float -0.000000e+00, %7981
  %7983 = fdiv fast float %7978, %7971
  %7984 = fdiv fast float %7980, %7971
  %7985 = fdiv fast float %7982, %7971
  br label %8024

; <label>:7986                                    ; preds = %7962
  %7987 = fsub fast float 1.000000e+00, %7861
  %7988 = fmul fast float %7892, %7987
  %7989 = fmul fast float %7903, %7987
  %7990 = fmul fast float %7914, %7987
  %7991 = fmul fast float %7893, %7987
  %7992 = fmul fast float %7904, %7987
  %7993 = fmul fast float %7915, %7987
  %7994 = fcmp fast une float %7991, 0.000000e+00
  br i1 %7994, label %7995, label %8002, !dx.controlflow.hints !167

; <label>:7995                                    ; preds = %7986
  %7996 = fmul fast float %7991, 0x3FF7154760000000
  %7997 = call float @dx.op.unary.f32(i32 21, float %7996)  ; Exp(value)
  %7998 = fsub fast float 1.000000e+00, %7997
  %7999 = fmul fast float %7988, %7998
  %8000 = fsub fast float -0.000000e+00, %7999
  %8001 = fdiv fast float %8000, %7991
  br label %8002

; <label>:8002                                    ; preds = %7995, %7986
  %8003 = phi float [ %8001, %7995 ], [ %7988, %7986 ]
  %8004 = phi float [ %7997, %7995 ], [ 1.000000e+00, %7986 ]
  %8005 = fcmp fast une float %7992, 0.000000e+00
  br i1 %8005, label %8006, label %8013, !dx.controlflow.hints !167

; <label>:8006                                    ; preds = %8002
  %8007 = fmul fast float %7992, 0x3FF7154760000000
  %8008 = call float @dx.op.unary.f32(i32 21, float %8007)  ; Exp(value)
  %8009 = fsub fast float 1.000000e+00, %8008
  %8010 = fmul fast float %7989, %8009
  %8011 = fsub fast float -0.000000e+00, %8010
  %8012 = fdiv fast float %8011, %7992
  br label %8013

; <label>:8013                                    ; preds = %8006, %8002
  %8014 = phi float [ %8012, %8006 ], [ %7989, %8002 ]
  %8015 = phi float [ %8008, %8006 ], [ 1.000000e+00, %8002 ]
  %8016 = fcmp fast une float %7993, 0.000000e+00
  br i1 %8016, label %8017, label %8024, !dx.controlflow.hints !167

; <label>:8017                                    ; preds = %8013
  %8018 = fmul fast float %7993, 0x3FF7154760000000
  %8019 = call float @dx.op.unary.f32(i32 21, float %8018)  ; Exp(value)
  %8020 = fsub fast float 1.000000e+00, %8019
  %8021 = fmul fast float %7990, %8020
  %8022 = fsub fast float -0.000000e+00, %8021
  %8023 = fdiv fast float %8022, %7993
  br label %8024

; <label>:8024                                    ; preds = %8017, %8013, %7973, %7966
  %8025 = phi float [ %8023, %8017 ], [ %7985, %7973 ], [ %7970, %7966 ], [ %7990, %8013 ]
  %8026 = phi float [ %8014, %8017 ], [ %7984, %7973 ], [ %7969, %7966 ], [ %8014, %8013 ]
  %8027 = phi float [ %8003, %8017 ], [ %7983, %7973 ], [ %7968, %7966 ], [ %8003, %8013 ]
  %8028 = phi float [ %8019, %8017 ], [ %7975, %7973 ], [ 1.000000e+00, %7966 ], [ 1.000000e+00, %8013 ]
  %8029 = phi float [ %8015, %8017 ], [ %7975, %7973 ], [ 1.000000e+00, %7966 ], [ %8015, %8013 ]
  %8030 = phi float [ %8004, %8017 ], [ %7975, %7973 ], [ 1.000000e+00, %7966 ], [ %8004, %8013 ]
  %8031 = fmul fast float %8030, %7942
  %8032 = fmul fast float %8029, %7953
  %8033 = fmul fast float %8028, %7964
  %8034 = fadd fast float %8031, %8027
  %8035 = fadd fast float %8032, %8026
  %8036 = fadd fast float %8033, %8025
  %8037 = fmul fast float %8030, %7941
  %8038 = fmul fast float %8029, %7952
  %8039 = fmul fast float %8028, %7963
  br label %8040

; <label>:8040                                    ; preds = %8024, %7835
  %8041 = phi float [ %8039, %8024 ], [ %7841, %7835 ]
  %8042 = phi float [ %8038, %8024 ], [ %7840, %7835 ]
  %8043 = phi float [ %8037, %8024 ], [ %7839, %7835 ]
  %8044 = phi float [ %8036, %8024 ], [ %7838, %7835 ]
  %8045 = phi float [ %8035, %8024 ], [ %7837, %7835 ]
  %8046 = phi float [ %8034, %8024 ], [ %7836, %7835 ]
  %8047 = fmul fast float %8046, %6992
  %8048 = fmul fast float %8045, %6992
  %8049 = fmul fast float %8044, %6992
  %8050 = fmul fast float %8043, %7283
  %8051 = call float @dx.op.dot3.f32(i32 55, float %8043, float %8042, float %8041, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8052 = call float @dx.op.dot3.f32(i32 55, float %8047, float %8048, float %8049, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8053 = select i1 %250, float %8051, float %8043
  %8054 = select i1 %250, float %8051, float %8042
  %8055 = select i1 %250, float 1.000000e+00, float %8041
  %8056 = select i1 %250, float %8052, float %8047
  %8057 = select i1 %250, float 0.000000e+00, float %8048
  %8058 = select i1 %250, float 0.000000e+00, float %8049
  %8059 = fmul fast float %8053, %7277
  %8060 = fmul fast float %8054, %7278
  %8061 = fmul fast float %8055, %7279
  %8062 = fadd fast float %8059, %8056
  %8063 = fadd fast float %8060, %8057
  %8064 = fadd fast float %8058, %8061
  %8065 = fmul fast float %8053, %7280
  %8066 = fmul fast float %8054, %7281
  %8067 = fmul fast float %8055, %7282
  %8068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8069 = extractvalue %dx.types.CBufRet.i32 %8068, 0
  %8070 = icmp eq i32 %8069, 0
  br i1 %8070, label %8438, label %8071, !dx.controlflow.hints !169

; <label>:8071                                    ; preds = %8040
  %8072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8073 = extractvalue %dx.types.CBufRet.f32 %8072, 2
  %8074 = extractvalue %dx.types.CBufRet.f32 %8072, 3
  %8075 = fmul fast float %8073, %104
  %8076 = fmul fast float %8074, %105
  %8077 = fmul fast float %8075, 2.000000e+00
  %8078 = fmul fast float %8076, 2.000000e+00
  %8079 = fsub fast float 1.000000e+00, %8077
  %8080 = fsub fast float 1.000000e+00, %8078
  %8081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8082 = extractvalue %dx.types.CBufRet.f32 %8081, 0
  %8083 = extractvalue %dx.types.CBufRet.f32 %8081, 1
  %8084 = extractvalue %dx.types.CBufRet.f32 %8081, 2
  %8085 = fmul fast float %8079, %8082
  %8086 = fmul fast float %8079, %8083
  %8087 = fmul fast float %8079, %8084
  %8088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8089 = extractvalue %dx.types.CBufRet.f32 %8088, 0
  %8090 = extractvalue %dx.types.CBufRet.f32 %8088, 1
  %8091 = extractvalue %dx.types.CBufRet.f32 %8088, 2
  %8092 = fmul fast float %8080, %8089
  %8093 = fmul fast float %8080, %8090
  %8094 = fmul fast float %8080, %8091
  %8095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8096 = extractvalue %dx.types.CBufRet.f32 %8095, 0
  %8097 = extractvalue %dx.types.CBufRet.f32 %8095, 1
  %8098 = extractvalue %dx.types.CBufRet.f32 %8095, 2
  %8099 = fadd fast float %8092, %8096
  %8100 = fadd fast float %8099, %8085
  %8101 = fadd fast float %8093, %8097
  %8102 = fadd fast float %8101, %8086
  %8103 = fadd fast float %8094, %8098
  %8104 = fadd fast float %8103, %8087
  %8105 = fmul fast float %8100, %7276
  %8106 = fmul fast float %8102, %7276
  %8107 = fmul fast float %8104, %7276
  %8108 = fmul fast float %8105, %8105
  %8109 = fmul fast float %8106, %8106
  %8110 = fadd fast float %8108, %8109
  %8111 = fmul fast float %8107, %8107
  %8112 = fadd fast float %8110, %8111
  %8113 = call float @dx.op.unary.f32(i32 24, float %8112)  ; Sqrt(value)
  %8114 = extractvalue %dx.types.CBufRet.f32 %7003, 0
  %8115 = fsub fast float %8113, %8114
  %8116 = extractvalue %dx.types.CBufRet.f32 %7003, 2
  %8117 = fmul fast float %8115, %8116
  %8118 = call float @dx.op.unary.f32(i32 7, float %8117)  ; Saturate(value)
  %8119 = fadd fast float %8118, -5.000000e-01
  %8120 = fmul fast float %8119, 2.000000e+00
  %8121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8122 = extractvalue %dx.types.CBufRet.f32 %8121, 2
  %8123 = call float @dx.op.binary.f32(i32 36, float %8122, float %8120)  ; FMin(a,b)
  %8124 = fsub fast float -0.000000e+00, %8122
  %8125 = fcmp fast ogt float %8123, %8124
  br i1 %8125, label %8126, label %8438, !dx.controlflow.hints !170

; <label>:8126                                    ; preds = %8071
  %8127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8128 = extractvalue %dx.types.CBufRet.f32 %8127, 3
  %8129 = fcmp fast ogt float %8128, 0.000000e+00
  br i1 %8129, label %8130, label %8205, !dx.controlflow.hints !171

; <label>:8130                                    ; preds = %8126
  %8131 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8132 = extractvalue %dx.types.Dimensions %8131, 0
  %8133 = sitofp i32 %8132 to float
  %8134 = extractvalue %dx.types.Dimensions %8131, 1
  %8135 = sitofp i32 %8134 to float
  %8136 = fmul fast float %8075, %8133
  %8137 = fmul fast float %8076, %8135
  %8138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8139 = extractvalue %dx.types.CBufRet.f32 %8138, 1
  %8140 = fsub fast float -0.000000e+00, %8139
  %8141 = fptoui float %8140 to i32
  %8142 = fptoui float %8136 to i32
  %8143 = fptoui float %8137 to i32
  %8144 = and i32 %8141, 31
  %8145 = lshr i32 %8142, %8144
  %8146 = lshr i32 %8143, %8144
  %8147 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8141, i32 %8145, i32 %8146, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8148 = extractvalue %dx.types.ResRet.f32 %8147, 0
  %8149 = fcmp fast olt float %8148, -1.000000e+00
  %8150 = fcmp fast ogt float %8148, -1.000000e+00
  %8151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8152 = extractvalue %dx.types.CBufRet.f32 %8151, 1
  %8153 = select i1 %8150, float %8152, float 1.000000e+00
  %8154 = fadd fast float %8148, 1.000000e+00
  %8155 = fmul fast float %8153, %8154
  %8156 = call float @dx.op.unary.f32(i32 6, float %8155)  ; FAbs(value)
  %8157 = extractvalue %dx.types.CBufRet.f32 %8151, 3
  %8158 = fcmp fast oge float %8156, %8157
  %8159 = select i1 %8158, float 0x4197782600000000, float %8156
  %8160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8161 = extractvalue %dx.types.CBufRet.f32 %8160, 0
  %8162 = extractvalue %dx.types.CBufRet.f32 %8160, 1
  %8163 = extractvalue %dx.types.CBufRet.f32 %8160, 2
  %8164 = select i1 %8149, float %8161, float %8082
  %8165 = select i1 %8149, float %8162, float %8083
  %8166 = select i1 %8149, float %8163, float %8084
  %8167 = fmul fast float %8164, %8079
  %8168 = fmul fast float %8165, %8079
  %8169 = fmul fast float %8166, %8079
  %8170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8171 = extractvalue %dx.types.CBufRet.f32 %8170, 0
  %8172 = extractvalue %dx.types.CBufRet.f32 %8170, 1
  %8173 = extractvalue %dx.types.CBufRet.f32 %8170, 2
  %8174 = select i1 %8149, float %8171, float %8089
  %8175 = select i1 %8149, float %8172, float %8090
  %8176 = select i1 %8149, float %8173, float %8091
  %8177 = fmul fast float %8174, %8080
  %8178 = fmul fast float %8175, %8080
  %8179 = fmul fast float %8176, %8080
  %8180 = fadd fast float %8177, %8167
  %8181 = fadd fast float %8178, %8168
  %8182 = fadd fast float %8179, %8169
  %8183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8184 = extractvalue %dx.types.CBufRet.f32 %8183, 0
  %8185 = extractvalue %dx.types.CBufRet.f32 %8183, 1
  %8186 = extractvalue %dx.types.CBufRet.f32 %8183, 2
  %8187 = select i1 %8149, float %8184, float %8096
  %8188 = select i1 %8149, float %8185, float %8097
  %8189 = select i1 %8149, float %8186, float %8098
  %8190 = fadd fast float %8180, %8187
  %8191 = fadd fast float %8181, %8188
  %8192 = fadd fast float %8182, %8189
  %8193 = fmul fast float %8190, %8159
  %8194 = fmul fast float %8191, %8159
  %8195 = fmul fast float %8192, %8159
  %8196 = fmul fast float %8193, %8193
  %8197 = fmul fast float %8194, %8194
  %8198 = fadd fast float %8196, %8197
  %8199 = fmul fast float %8195, %8195
  %8200 = fadd fast float %8198, %8199
  %8201 = call float @dx.op.unary.f32(i32 24, float %8200)  ; Sqrt(value)
  %8202 = fsub fast float %8201, %8114
  %8203 = fmul fast float %8202, %8116
  %8204 = call float @dx.op.unary.f32(i32 7, float %8203)  ; Saturate(value)
  br label %8205

; <label>:8205                                    ; preds = %8130, %8126
  %8206 = phi float [ %8204, %8130 ], [ 1.000000e+00, %8126 ]
  %8207 = fmul fast float %8123, 5.000000e-01
  %8208 = fadd fast float %8207, 5.000000e-01
  %8209 = call float @dx.op.unary.f32(i32 22, float %8208)  ; Frc(value)
  %8210 = call float @dx.op.unary.f32(i32 27, float %8209)  ; Round_ni(value)
  %8211 = call float @dx.op.unary.f32(i32 22, float %8209)  ; Frc(value)
  %8212 = fmul fast float %8211, 2.000000e+00
  %8213 = fadd fast float %8212, -1.000000e+00
  %8214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8075, float %8076, float %8210, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8215 = extractvalue %dx.types.ResRet.f32 %8214, 0
  %8216 = extractvalue %dx.types.ResRet.f32 %8214, 1
  %8217 = extractvalue %dx.types.ResRet.f32 %8214, 2
  %8218 = extractvalue %dx.types.ResRet.f32 %8214, 3
  %8219 = fadd fast float %8215, -5.000000e-01
  %8220 = fadd fast float %8217, -5.000000e-01
  %8221 = fmul fast float %8219, 0xBFD5555560000000
  %8222 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8220, float %8221)  ; FMad(a,b,c)
  %8223 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8216, float 0.000000e+00)  ; FMad(a,b,c)
  %8224 = fadd fast float %8223, %8218
  %8225 = fmul fast float %8219, -7.500000e-01
  %8226 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8220, float %8225)  ; FMad(a,b,c)
  %8227 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8216, float 0.000000e+00)  ; FMad(a,b,c)
  %8228 = fadd fast float %8227, %8218
  %8229 = call float @dx.op.binary.f32(i32 35, float %8222, float -1.000000e+00)  ; FMax(a,b)
  %8230 = call float @dx.op.binary.f32(i32 35, float %8224, float -1.000000e+00)  ; FMax(a,b)
  %8231 = call float @dx.op.binary.f32(i32 35, float %8226, float -1.000000e+00)  ; FMax(a,b)
  %8232 = call float @dx.op.binary.f32(i32 35, float %8228, float -1.000000e+00)  ; FMax(a,b)
  %8233 = call float @dx.op.binary.f32(i32 36, float %8229, float 1.000000e+00)  ; FMin(a,b)
  %8234 = call float @dx.op.binary.f32(i32 36, float %8230, float 1.000000e+00)  ; FMin(a,b)
  %8235 = call float @dx.op.binary.f32(i32 36, float %8231, float 1.000000e+00)  ; FMin(a,b)
  %8236 = call float @dx.op.binary.f32(i32 36, float %8232, float 1.000000e+00)  ; FMin(a,b)
  %8237 = fcmp fast olt float %8233, 0x3FEFFF8020000000
  br i1 %8237, label %8238, label %8353, !dx.controlflow.hints !172

; <label>:8238                                    ; preds = %8205
  %8239 = extractvalue %dx.types.CBufRet.f32 %8121, 3
  %8240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8241 = extractvalue %dx.types.CBufRet.f32 %8240, 0
  %8242 = extractvalue %dx.types.CBufRet.f32 %8240, 1
  %8243 = extractvalue %dx.types.CBufRet.f32 %8240, 2
  %8244 = extractvalue %dx.types.CBufRet.f32 %8240, 3
  %8245 = fsub fast float %8241, %8233
  %8246 = fsub fast float %8242, %8234
  %8247 = fsub fast float %8243, %8235
  %8248 = fsub fast float %8244, %8236
  %8249 = fmul fast float %8245, %8239
  %8250 = fmul fast float %8246, %8239
  %8251 = fmul fast float %8247, %8239
  %8252 = fmul fast float %8248, %8239
  %8253 = fadd fast float %8249, %8233
  %8254 = fadd fast float %8250, %8234
  %8255 = fsub fast float -0.000000e+00, %8254
  %8256 = fadd fast float %8251, %8235
  %8257 = fadd fast float %8252, %8236
  %8258 = fmul fast float %8253, %8253
  %8259 = fsub fast float %8254, %8258
  %8260 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8259)  ; FMax(a,b)
  %8261 = fdiv fast float 1.000000e+00, %8260
  %8262 = fmul fast float %8254, %8253
  %8263 = fsub fast float %8256, %8262
  %8264 = fsub fast float %8213, %8253
  %8265 = fmul fast float %8213, %8213
  %8266 = fsub fast float %8265, %8254
  %8267 = fmul fast float %8264, %8261
  %8268 = fmul fast float %8267, %8263
  %8269 = fsub fast float %8266, %8268
  %8270 = fmul fast float %8254, %8254
  %8271 = fsub fast float %8257, %8270
  %8272 = fmul fast float %8263, %8263
  %8273 = fmul fast float %8272, %8261
  %8274 = fsub fast float %8271, %8273
  %8275 = fdiv fast float %8269, %8274
  %8276 = fmul fast float %8263, %8275
  %8277 = fsub fast float %8264, %8276
  %8278 = fmul fast float %8277, %8261
  %8279 = fmul fast float %8278, %8253
  %8280 = fsub fast float 1.000000e+00, %8279
  %8281 = fmul fast float %8254, %8275
  %8282 = fsub fast float %8280, %8281
  %8283 = fmul fast float %8278, %8278
  %8284 = fmul fast float %8275, 4.000000e+00
  %8285 = fmul fast float %8284, %8282
  %8286 = fsub fast float %8283, %8285
  %8287 = call float @dx.op.unary.f32(i32 24, float %8286)  ; Sqrt(value)
  %8288 = fcmp fast oge float %8278, 0.000000e+00
  %8289 = fsub fast float -0.000000e+00, %8287
  %8290 = select i1 %8288, float %8289, float %8287
  %8291 = fsub fast float %8290, %8278
  %8292 = fdiv fast float %8291, %8275
  %8293 = fdiv fast float %8282, %8291
  %8294 = fmul fast float %8292, 5.000000e-01
  %8295 = fmul fast float %8293, 2.000000e+00
  %8296 = select i1 %8288, float %8294, float %8295
  %8297 = select i1 %8288, float %8295, float %8294
  %8298 = call float @dx.op.binary.f32(i32 35, float %8296, float %8297)  ; FMax(a,b)
  %8299 = call float @dx.op.binary.f32(i32 36, float %8296, float %8297)  ; FMin(a,b)
  %8300 = fcmp fast ogt float %8213, %8299
  br i1 %8300, label %8301, label %8311

; <label>:8301                                    ; preds = %8238
  %8302 = fsub fast float %8213, %8299
  %8303 = fsub fast float %8298, %8299
  %8304 = fmul fast float %8302, %8303
  %8305 = fmul fast float %8298, %8213
  %8306 = fadd fast float %8298, %8213
  %8307 = fmul fast float %8306, %8253
  %8308 = fadd fast float %8305, %8254
  %8309 = fsub fast float %8308, %8307
  %8310 = fdiv fast float %8309, %8304
  br label %8311

; <label>:8311                                    ; preds = %8301, %8238
  %8312 = phi float [ %8310, %8301 ], [ 0.000000e+00, %8238 ]
  %8313 = fcmp fast ogt float %8213, %8298
  %8314 = fsub fast float %8213, %8298
  br i1 %8313, label %8315, label %8325

; <label>:8315                                    ; preds = %8311
  %8316 = fsub fast float %8298, %8299
  %8317 = fmul fast float %8316, %8314
  %8318 = fmul fast float %8299, %8213
  %8319 = fadd fast float %8299, %8213
  %8320 = fmul fast float %8319, %8253
  %8321 = fsub fast float %8255, %8318
  %8322 = fadd fast float %8321, %8320
  %8323 = fdiv fast float %8322, %8317
  %8324 = fadd fast float %8323, %8312
  br label %8325

; <label>:8325                                    ; preds = %8315, %8311
  %8326 = phi float [ %8324, %8315 ], [ %8312, %8311 ]
  %8327 = fsub fast float %8213, %8299
  %8328 = fmul fast float %8327, %8314
  %8329 = fmul fast float %8299, %8298
  %8330 = fadd fast float %8299, %8298
  %8331 = fmul fast float %8330, %8253
  %8332 = fadd fast float %8329, %8254
  %8333 = fsub fast float %8332, %8331
  %8334 = fdiv fast float %8333, %8328
  %8335 = call float @dx.op.unary.f32(i32 7, float %8326)  ; Saturate(value)
  %8336 = fcmp fast oeq float %7004, 0.000000e+00
  %8337 = extractvalue %dx.types.CBufRet.f32 %8121, 0
  %8338 = fcmp fast oeq float %8337, 0.000000e+00
  %8339 = or i1 %8336, %8338
  %8340 = fmul fast float %8337, 2.000000e+00
  %8341 = fadd fast float %8122, %8123
  %8342 = fdiv fast float %8341, %8340
  %8343 = call float @dx.op.unary.f32(i32 7, float %8342)  ; Saturate(value)
  %8344 = fmul fast float %8343, 2.000000e+00
  %8345 = fsub fast float 3.000000e+00, %8344
  %8346 = fmul fast float %8343, %8343
  %8347 = fmul fast float %8346, %8345
  %8348 = select i1 %8339, float 1.000000e+00, float %8347
  %8349 = fmul fast float %8334, %7004
  %8350 = fadd fast float %8335, %8349
  %8351 = call float @dx.op.unary.f32(i32 7, float %8350)  ; Saturate(value)
  %8352 = fmul fast float %8348, %8351
  br label %8353

; <label>:8353                                    ; preds = %8325, %8205
  %8354 = phi float [ %8352, %8325 ], [ 0.000000e+00, %8205 ]
  %8355 = fsub fast float 1.000000e+00, %8354
  %8356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8075, float %8076, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8357 = extractvalue %dx.types.ResRet.f32 %8356, 0
  %8358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8359 = extractvalue %dx.types.CBufRet.i32 %8358, 2
  %8360 = icmp eq i32 %8359, 0
  br i1 %8360, label %8366, label %8361

; <label>:8361                                    ; preds = %8353
  %8362 = call float @dx.op.unary.f32(i32 7, float %8354)  ; Saturate(value)
  %8363 = fadd fast float %8357, -1.000000e+00
  %8364 = fmul fast float %8362, %8363
  %8365 = fadd fast float %8364, 1.000000e+00
  br label %8366

; <label>:8366                                    ; preds = %8361, %8353
  %8367 = phi float [ %8365, %8361 ], [ %8355, %8353 ]
  br i1 %8129, label %8368, label %8386

; <label>:8368                                    ; preds = %8366
  %8369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8370 = extractvalue %dx.types.CBufRet.f32 %8369, 1
  %8371 = fsub fast float %8206, %8370
  %8372 = call float @dx.op.unary.f32(i32 7, float %8371)  ; Saturate(value)
  %8373 = fsub fast float %8206, %8128
  %8374 = call float @dx.op.unary.f32(i32 7, float %8373)  ; Saturate(value)
  %8375 = fsub fast float %8372, %8374
  %8376 = fsub fast float %8208, %8374
  %8377 = fdiv fast float %8376, %8375
  %8378 = call float @dx.op.unary.f32(i32 7, float %8377)  ; Saturate(value)
  %8379 = fmul fast float %8378, 2.000000e+00
  %8380 = fsub fast float 3.000000e+00, %8379
  %8381 = fsub fast float %8357, %8367
  %8382 = fmul fast float %8378, %8378
  %8383 = fmul fast float %8382, %8381
  %8384 = fmul fast float %8383, %8380
  %8385 = fadd fast float %8384, %8367
  br label %8386

; <label>:8386                                    ; preds = %8368, %8366
  %8387 = phi float [ %8385, %8368 ], [ %8367, %8366 ]
  %8388 = call float @dx.op.binary.f32(i32 35, float %8357, float %8387)  ; FMax(a,b)
  %8389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8390 = extractvalue %dx.types.CBufRet.i32 %8389, 2
  %8391 = and i32 %8390, 1
  %8392 = icmp eq i32 %8391, 0
  %8393 = fcmp fast une float %8388, 1.000000e+00
  %8394 = and i1 %8393, %8392
  br i1 %8394, label %8395, label %8414

; <label>:8395                                    ; preds = %8386
  %8396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8075, float %8076, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8397 = extractvalue %dx.types.ResRet.f32 %8396, 0
  %8398 = extractvalue %dx.types.ResRet.f32 %8396, 1
  %8399 = extractvalue %dx.types.ResRet.f32 %8396, 2
  %8400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8401 = extractvalue %dx.types.CBufRet.f32 %8400, 1
  %8402 = fmul fast float %8401, %8397
  %8403 = fmul fast float %8401, %8398
  %8404 = fmul fast float %8401, %8399
  %8405 = fcmp fast ogt float %8357, 0x3FEFFF2E40000000
  %8406 = fsub fast float 1.000000e+00, %8388
  %8407 = fsub fast float 1.000000e+00, %8357
  %8408 = fdiv fast float %8406, %8407
  %8409 = call float @dx.op.unary.f32(i32 7, float %8408)  ; Saturate(value)
  %8410 = select i1 %8405, float 0.000000e+00, float %8409
  %8411 = fmul fast float %8402, %8410
  %8412 = fmul fast float %8403, %8410
  %8413 = fmul fast float %8404, %8410
  br label %8414

; <label>:8414                                    ; preds = %8395, %8386
  %8415 = phi float [ 0.000000e+00, %8386 ], [ %8411, %8395 ]
  %8416 = phi float [ 0.000000e+00, %8386 ], [ %8412, %8395 ]
  %8417 = phi float [ 0.000000e+00, %8386 ], [ %8413, %8395 ]
  %8418 = fmul fast float %8415, %6992
  %8419 = fmul fast float %8416, %6992
  %8420 = fmul fast float %8417, %6992
  %8421 = fmul fast float %8388, %8050
  %8422 = call float @dx.op.dot3.f32(i32 55, float %8388, float %8388, float %8388, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8423 = call float @dx.op.dot3.f32(i32 55, float %8418, float %8419, float %8420, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8424 = select i1 %250, float %8422, float %8388
  %8425 = select i1 %250, float 1.000000e+00, float %8388
  %8426 = select i1 %250, float %8423, float %8418
  %8427 = select i1 %250, float 0.000000e+00, float %8419
  %8428 = select i1 %250, float 0.000000e+00, float %8420
  %8429 = fmul fast float %8424, %8062
  %8430 = fmul fast float %8424, %8063
  %8431 = fmul fast float %8425, %8064
  %8432 = fadd fast float %8429, %8426
  %8433 = fadd fast float %8430, %8427
  %8434 = fadd fast float %8428, %8431
  %8435 = fmul fast float %8424, %8065
  %8436 = fmul fast float %8424, %8066
  %8437 = fmul fast float %8425, %8067
  br label %8438

; <label>:8438                                    ; preds = %8414, %8071, %8040, %7272
  %8439 = phi float [ %7277, %7272 ], [ %8062, %8040 ], [ %8432, %8414 ], [ %8062, %8071 ]
  %8440 = phi float [ %7278, %7272 ], [ %8063, %8040 ], [ %8433, %8414 ], [ %8063, %8071 ]
  %8441 = phi float [ %7279, %7272 ], [ %8064, %8040 ], [ %8434, %8414 ], [ %8064, %8071 ]
  %8442 = phi float [ %7280, %7272 ], [ %8065, %8040 ], [ %8435, %8414 ], [ %8065, %8071 ]
  %8443 = phi float [ %7281, %7272 ], [ %8066, %8040 ], [ %8436, %8414 ], [ %8066, %8071 ]
  %8444 = phi float [ %7282, %7272 ], [ %8067, %8040 ], [ %8437, %8414 ], [ %8067, %8071 ]
  %8445 = phi float [ %7283, %7272 ], [ %8050, %8040 ], [ %8421, %8414 ], [ %8050, %8071 ]
  %8446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8447 = extractvalue %dx.types.CBufRet.f32 %8446, 2
  %8448 = extractvalue %dx.types.CBufRet.f32 %8446, 3
  %8449 = fmul fast float %8447, %104
  %8450 = fmul fast float %8448, %105
  %8451 = call float @dx.op.unary.f32(i32 7, float %8449)  ; Saturate(value)
  %8452 = call float @dx.op.unary.f32(i32 7, float %8450)  ; Saturate(value)
  %8453 = select i1 %7014, i32 2, i32 0
  %8454 = or i32 %8453, 1
  %8455 = uitofp i32 %8454 to float
  %8456 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8451, float %8452, float %8455, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8457 = extractvalue %dx.types.ResRet.f32 %8456, 0
  %8458 = extractvalue %dx.types.ResRet.f32 %8456, 1
  %8459 = extractvalue %dx.types.ResRet.f32 %8456, 2
  %8460 = extractvalue %dx.types.ResRet.f32 %8456, 3
  %8461 = add nuw nsw i32 %8453, 2
  %8462 = uitofp i32 %8461 to float
  %8463 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8451, float %8452, float %8462, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8464 = extractvalue %dx.types.ResRet.f32 %8463, 0
  %8465 = extractvalue %dx.types.ResRet.f32 %8463, 1
  %8466 = extractvalue %dx.types.ResRet.f32 %8463, 2
  %8467 = extractvalue %dx.types.ResRet.f32 %8463, 3
  %8468 = call float @dx.op.binary.f32(i32 35, float %8458, float %8459)  ; FMax(a,b)
  %8469 = call float @dx.op.binary.f32(i32 35, float %8457, float %8468)  ; FMax(a,b)
  %8470 = call float @dx.op.binary.f32(i32 35, float %8469, float %8460)  ; FMax(a,b)
  %8471 = call float @dx.op.binary.f32(i32 36, float %8465, float %8466)  ; FMin(a,b)
  %8472 = call float @dx.op.binary.f32(i32 36, float %8464, float %8471)  ; FMin(a,b)
  %8473 = call float @dx.op.binary.f32(i32 36, float %8472, float %8467)  ; FMin(a,b)
  %8474 = fmul fast float %8470, 2.550000e+02
  %8475 = fadd fast float %8474, 0x3F70101020000000
  %8476 = fptoui float %8475 to i32
  %8477 = fmul fast float %8473, 2.550000e+02
  %8478 = fadd fast float %8477, 0x3F70101020000000
  %8479 = fptoui float %8478 to i32
  %8480 = icmp ult i32 %8476, %8479
  br i1 %8480, label %8481, label %8650

; <label>:8481                                    ; preds = %8438
  %8482 = fcmp fast ogt float %94, 9.843750e-01
  %8483 = fadd fast float %7276, -4.000000e+00
  %8484 = select i1 %8482, float -4.000000e+00, float %8483
  %8485 = call float @dx.op.binary.f32(i32 35, float %8484, float 0.000000e+00)  ; FMax(a,b)
  %8486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8487 = extractvalue %dx.types.CBufRet.f32 %8486, 0
  %8488 = fadd fast float %8487, %8485
  %8489 = extractvalue %dx.types.CBufRet.f32 %8486, 2
  %8490 = fmul fast float %8488, %8489
  %8491 = call float @dx.op.unary.f32(i32 23, float %8490)  ; Log(value)
  %8492 = extractvalue %dx.types.CBufRet.f32 %8486, 3
  %8493 = fmul fast float %8492, %8491
  %8494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8495 = extractvalue %dx.types.CBufRet.f32 %8494, 2
  %8496 = fmul fast float %8493, %8495
  %8497 = call float @dx.op.unary.f32(i32 7, float %8496)  ; Saturate(value)
  %8498 = uitofp i32 %8476 to float
  %8499 = uitofp i32 %8479 to float
  %8500 = fadd fast float %8498, 5.000000e-01
  %8501 = fadd fast float %8499, 5.000000e-01
  %8502 = fmul fast float %8495, %8500
  %8503 = fmul fast float %8495, %8501
  %8504 = fadd fast float %8502, 0x3F0FFB4800000000
  %8505 = fadd fast float %8503, 0xBF0FFB4800000000
  %8506 = call float @dx.op.binary.f32(i32 35, float %8497, float %8504)  ; FMax(a,b)
  %8507 = call float @dx.op.binary.f32(i32 36, float %8506, float %8505)  ; FMin(a,b)
  %8508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8509 = extractvalue %dx.types.CBufRet.f32 %8508, 1
  %8510 = extractvalue %dx.types.CBufRet.f32 %8508, 2
  %8511 = extractvalue %dx.types.CBufRet.f32 %8508, 0
  %8512 = select i1 %7014, float %8511, float 0.000000e+00
  %8513 = fmul fast float %8509, %8507
  %8514 = fadd fast float %8512, %8513
  %8515 = fadd fast float %8512, %8510
  %8516 = fsub fast float %8509, %8510
  %8517 = fadd fast float %8516, %8512
  %8518 = call float @dx.op.binary.f32(i32 35, float %8514, float %8515)  ; FMax(a,b)
  %8519 = call float @dx.op.binary.f32(i32 36, float %8518, float %8517)  ; FMin(a,b)
  %8520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8451, float %8452, float %8519, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8521 = extractvalue %dx.types.ResRet.f32 %8520, 0
  %8522 = extractvalue %dx.types.ResRet.f32 %8520, 1
  %8523 = extractvalue %dx.types.ResRet.f32 %8520, 2
  %8524 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8525 = extractvalue %dx.types.CBufRet.i32 %8524, 0
  %8526 = extractvalue %dx.types.CBufRet.i32 %8524, 1
  %8527 = uitofp i32 %8525 to float
  %8528 = uitofp i32 %8526 to float
  %8529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8530 = extractvalue %dx.types.CBufRet.f32 %8529, 0
  %8531 = extractvalue %dx.types.CBufRet.f32 %8529, 1
  %8532 = fmul fast float %8527, %8451
  %8533 = fmul fast float %8528, %8452
  %8534 = fadd fast float %8532, -5.000000e-01
  %8535 = fadd fast float %8533, -5.000000e-01
  %8536 = call float @dx.op.unary.f32(i32 22, float %8534)  ; Frc(value)
  %8537 = call float @dx.op.unary.f32(i32 22, float %8535)  ; Frc(value)
  %8538 = fmul fast float %8536, %8536
  %8539 = fmul fast float %8538, %8536
  %8540 = fsub fast float 3.000000e+00, %8536
  %8541 = fmul fast float %8538, %8540
  %8542 = fmul fast float %8536, 3.000000e+00
  %8543 = fmul fast float %8539, 3.000000e+00
  %8544 = fmul fast float %8538, 6.000000e+00
  %8545 = fsub fast float %8543, %8544
  %8546 = fadd fast float %8545, 4.000000e+00
  %8547 = fmul fast float %8546, 0x3FC5555560000000
  %8548 = fmul fast float %8539, -3.000000e+00
  %8549 = fadd fast float %8538, %8536
  %8550 = fmul fast float %8549, 3.000000e+00
  %8551 = fadd fast float %8548, 1.000000e+00
  %8552 = fadd fast float %8551, %8550
  %8553 = fmul fast float %8539, 0x3FC5555560000000
  %8554 = fmul fast float %8537, %8537
  %8555 = fmul fast float %8554, %8537
  %8556 = fsub fast float 3.000000e+00, %8537
  %8557 = fmul fast float %8554, %8556
  %8558 = fmul fast float %8537, 3.000000e+00
  %8559 = fmul fast float %8555, 3.000000e+00
  %8560 = fmul fast float %8554, 6.000000e+00
  %8561 = fsub fast float %8559, %8560
  %8562 = fadd fast float %8561, 4.000000e+00
  %8563 = fmul fast float %8562, 0x3FC5555560000000
  %8564 = fmul fast float %8555, -3.000000e+00
  %8565 = fadd fast float %8554, %8537
  %8566 = fmul fast float %8565, 3.000000e+00
  %8567 = fadd fast float %8564, 1.000000e+00
  %8568 = fadd fast float %8567, %8566
  %8569 = fmul fast float %8555, 0x3FC5555560000000
  %8570 = fadd fast float %8536, 1.000000e+00
  %8571 = fsub fast float 1.000000e+00, %8542
  %8572 = fadd fast float %8571, %8541
  %8573 = fadd fast float %8572, %8546
  %8574 = fmul fast float %8573, 0x3FC5555560000000
  %8575 = fdiv fast float %8547, %8574
  %8576 = fsub fast float %8570, %8575
  %8577 = fsub fast float 1.000000e+00, %8536
  %8578 = fadd fast float %8552, %8539
  %8579 = fmul fast float %8578, 0x3FC5555560000000
  %8580 = fdiv fast float %8553, %8579
  %8581 = fadd fast float %8577, %8580
  %8582 = fadd fast float %8537, 1.000000e+00
  %8583 = fsub fast float 1.000000e+00, %8558
  %8584 = fadd fast float %8583, %8557
  %8585 = fadd fast float %8584, %8562
  %8586 = fmul fast float %8585, 0x3FC5555560000000
  %8587 = fdiv fast float %8563, %8586
  %8588 = fsub fast float %8582, %8587
  %8589 = fsub fast float 1.000000e+00, %8537
  %8590 = fadd fast float %8568, %8555
  %8591 = fmul fast float %8590, 0x3FC5555560000000
  %8592 = fdiv fast float %8569, %8591
  %8593 = fadd fast float %8592, %8589
  %8594 = fmul fast float %8576, %8530
  %8595 = fsub fast float %8451, %8594
  %8596 = fmul fast float %8581, %8530
  %8597 = fadd fast float %8596, %8451
  %8598 = fmul fast float %8593, %8531
  %8599 = fadd fast float %8598, %8452
  %8600 = fmul fast float %8588, %8531
  %8601 = fsub fast float %8452, %8600
  %8602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8595, float %8601, float %8519, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8603 = extractvalue %dx.types.ResRet.f32 %8602, 0
  %8604 = extractvalue %dx.types.ResRet.f32 %8602, 1
  %8605 = extractvalue %dx.types.ResRet.f32 %8602, 2
  %8606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8597, float %8601, float %8519, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8607 = extractvalue %dx.types.ResRet.f32 %8606, 0
  %8608 = extractvalue %dx.types.ResRet.f32 %8606, 1
  %8609 = extractvalue %dx.types.ResRet.f32 %8606, 2
  %8610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8595, float %8599, float %8519, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8611 = extractvalue %dx.types.ResRet.f32 %8610, 0
  %8612 = extractvalue %dx.types.ResRet.f32 %8610, 1
  %8613 = extractvalue %dx.types.ResRet.f32 %8610, 2
  %8614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8597, float %8599, float %8519, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8615 = extractvalue %dx.types.ResRet.f32 %8614, 0
  %8616 = extractvalue %dx.types.ResRet.f32 %8614, 1
  %8617 = extractvalue %dx.types.ResRet.f32 %8614, 2
  %8618 = fsub fast float %8611, %8603
  %8619 = fsub fast float %8612, %8604
  %8620 = fsub fast float %8613, %8605
  %8621 = fmul fast float %8618, %8591
  %8622 = fmul fast float %8619, %8591
  %8623 = fmul fast float %8620, %8591
  %8624 = fadd fast float %8621, %8603
  %8625 = fadd fast float %8622, %8604
  %8626 = fadd fast float %8623, %8605
  %8627 = fsub fast float %8615, %8607
  %8628 = fsub fast float %8616, %8608
  %8629 = fsub fast float %8617, %8609
  %8630 = fmul fast float %8627, %8591
  %8631 = fmul fast float %8628, %8591
  %8632 = fmul fast float %8629, %8591
  %8633 = fsub fast float %8607, %8624
  %8634 = fadd fast float %8633, %8630
  %8635 = fsub fast float %8608, %8625
  %8636 = fadd fast float %8635, %8631
  %8637 = fsub fast float %8609, %8626
  %8638 = fadd fast float %8637, %8632
  %8639 = fmul fast float %8634, %8579
  %8640 = fmul fast float %8636, %8579
  %8641 = fmul fast float %8638, %8579
  %8642 = fadd fast float %8639, %8624
  %8643 = fadd fast float %8640, %8625
  %8644 = fadd fast float %8641, %8626
  %8645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8646 = extractvalue %dx.types.CBufRet.f32 %8645, 1
  %8647 = fmul fast float %8642, %8646
  %8648 = fmul fast float %8643, %8646
  %8649 = fmul fast float %8644, %8646
  br label %8650

; <label>:8650                                    ; preds = %8481, %8438
  %8651 = phi float [ %8521, %8481 ], [ 1.000000e+00, %8438 ]
  %8652 = phi float [ %8522, %8481 ], [ 1.000000e+00, %8438 ]
  %8653 = phi float [ %8523, %8481 ], [ 1.000000e+00, %8438 ]
  %8654 = phi float [ %8647, %8481 ], [ 0.000000e+00, %8438 ]
  %8655 = phi float [ %8648, %8481 ], [ 0.000000e+00, %8438 ]
  %8656 = phi float [ %8649, %8481 ], [ 0.000000e+00, %8438 ]
  %8657 = fmul fast float %8654, %6992
  %8658 = fmul fast float %8655, %6992
  %8659 = fmul fast float %8656, %6992
  %8660 = fmul fast float %8651, %8445
  %8661 = call float @dx.op.dot3.f32(i32 55, float %8651, float %8652, float %8653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8662 = call float @dx.op.dot3.f32(i32 55, float %8657, float %8658, float %8659, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8663 = select i1 %250, float %8661, float %8651
  %8664 = select i1 %250, float %8661, float %8652
  %8665 = select i1 %250, float 1.000000e+00, float %8653
  %8666 = select i1 %250, float %8662, float %8657
  %8667 = select i1 %250, float 0.000000e+00, float %8658
  %8668 = select i1 %250, float 0.000000e+00, float %8659
  %8669 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8670 = extractvalue %dx.types.CBufRet.i32 %8669, 3
  %8671 = and i32 %8670, 3
  %8672 = icmp ne i32 %8671, 0
  %8673 = and i32 %8670, 4
  %8674 = icmp ne i32 %8673, 0
  %8675 = and i1 %8672, %8674
  %8676 = and i1 %250, %8675
  br i1 %8676, label %8677, label %8683

; <label>:8677                                    ; preds = %8650
  %8678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8679 = extractvalue %dx.types.CBufRet.f32 %8678, 1
  %8680 = fadd fast float %8660, -1.000000e+00
  %8681 = fmul fast float %8679, %8680
  %8682 = fadd fast float %8681, 1.000000e+00
  br label %8683

; <label>:8683                                    ; preds = %8677, %8650
  %8684 = phi float [ %8682, %8677 ], [ %8660, %8650 ]
  %8685 = fadd fast float %8442, %8439
  %8686 = fmul fast float %8663, %8685
  %8687 = fadd fast float %8686, %8666
  %8688 = fadd fast float %8443, %8440
  %8689 = fmul fast float %8664, %8688
  %8690 = fadd fast float %8689, %8667
  %8691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8692 = extractvalue %dx.types.CBufRet.f32 %8691, 0
  br i1 %250, label %8693, label %8717

; <label>:8693                                    ; preds = %8683
  %8694 = fadd fast float %8687, %8690
  %8695 = fmul fast float %8692, %8694
  %8696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8697 = extractvalue %dx.types.CBufRet.f32 %8696, 3
  %8698 = extractvalue %dx.types.CBufRet.f32 %6996, 1
  %8699 = fsub fast float %7001, %6995
  %8700 = fadd fast float %8699, %7002
  %8701 = fsub fast float %8700, %8698
  %8702 = extractvalue %dx.types.CBufRet.f32 %6996, 2
  %8703 = fmul fast float %8701, %8702
  %8704 = call float @dx.op.unary.f32(i32 7, float %8703)  ; Saturate(value)
  %8705 = fsub fast float %8704, %8697
  %8706 = fmul fast float %8705, %8684
  %8707 = fadd fast float %8706, %8697
  %8708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8709 = extractvalue %dx.types.CBufRet.f32 %8708, 0
  %8710 = fsub fast float %8707, %8709
  %8711 = fmul fast float %8710, 1.000000e+01
  %8712 = call float @dx.op.unary.f32(i32 7, float %8711)  ; Saturate(value)
  %8713 = fsub fast float %3850, %6992
  %8714 = fmul fast float %8712, %8713
  %8715 = fadd fast float %8714, %6992
  %8716 = fmul fast float %8715, %8707
  br label %8741

; <label>:8717                                    ; preds = %8683
  %8718 = fadd fast float %8444, %8441
  %8719 = fmul fast float %8665, %8718
  %8720 = fadd fast float %8719, %8668
  %8721 = fmul fast float %8692, %8687
  %8722 = fmul fast float %8692, %8690
  %8723 = fmul fast float %8692, %8720
  %8724 = call float @dx.op.binary.f32(i32 35, float %8722, float %8723)  ; FMax(a,b)
  %8725 = call float @dx.op.binary.f32(i32 35, float %8721, float %8724)  ; FMax(a,b)
  %8726 = call float @dx.op.binary.f32(i32 35, float %8725, float %6992)  ; FMax(a,b)
  %8727 = fcmp fast ugt float %8726, 0x3F10000000000000
  br i1 %8727, label %8729, label %8728

; <label>:8728                                    ; preds = %8717
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8729

; <label>:8729                                    ; preds = %8728, %8717
  %8730 = add i32 %54, 356
  %8731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8730, i32 undef)  ; BufferLoad(srv,index,wot)
  %8732 = extractvalue %dx.types.ResRet.i32 %8731, 0
  %8733 = and i32 %8732, 32
  %8734 = icmp eq i32 %8733, 0
  br i1 %8734, label %8741, label %8735

; <label>:8735                                    ; preds = %8729
  %8736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8737 = extractvalue %dx.types.CBufRet.f32 %8736, 0
  %8738 = fmul fast float %8737, 0x3FE99999A0000000
  %8739 = fadd fast float %8737, %8721
  %8740 = fadd fast float %8738, %8723
  br label %8741

; <label>:8741                                    ; preds = %8735, %8729, %8693
  %8742 = phi float [ %8695, %8693 ], [ %8739, %8735 ], [ %8721, %8729 ]
  %8743 = phi float [ %8716, %8693 ], [ %8722, %8735 ], [ %8722, %8729 ]
  %8744 = phi float [ %8715, %8693 ], [ %8740, %8735 ], [ %8723, %8729 ]
  %8745 = phi float [ %8715, %8693 ], [ %6992, %8735 ], [ %6992, %8729 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8746 = call float @dx.op.binary.f32(i32 36, float %8742, float 3.225500e+04)  ; FMin(a,b)
  %8747 = call float @dx.op.binary.f32(i32 36, float %8743, float 3.225500e+04)  ; FMin(a,b)
  %8748 = call float @dx.op.binary.f32(i32 36, float %8744, float 3.225500e+04)  ; FMin(a,b)
  %8749 = call float @dx.op.binary.f32(i32 36, float %8745, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8746)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8747)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8748)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8749)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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

