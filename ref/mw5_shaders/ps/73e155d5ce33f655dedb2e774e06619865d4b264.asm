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
; shader hash: 1b83465233fc950d43aef39cae234f86
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
  br i1 %3296, label %3811, label %3297

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
  br i1 %3358, label %3780, label %3359

; <label>:3359                                    ; preds = %3297
  br label %3360

; <label>:3360                                    ; preds = %3481, %3359
  %3361 = phi i32 [ %3383, %3481 ], [ %3357, %3359 ]
  %3362 = phi float [ %3482, %3481 ], [ 0.000000e+00, %3359 ]
  %3363 = phi float [ %3483, %3481 ], [ %3267, %3359 ]
  %3364 = phi float [ %3484, %3481 ], [ %3265, %3359 ]
  %3365 = phi float [ %3485, %3481 ], [ 0.000000e+00, %3359 ]
  %3366 = phi float [ %3486, %3481 ], [ 0.000000e+00, %3359 ]
  %3367 = phi float [ %3487, %3481 ], [ %3259, %3359 ]
  %3368 = phi float [ %3488, %3481 ], [ %3260, %3359 ]
  %3369 = phi float [ %3489, %3481 ], [ %3261, %3359 ]
  %3370 = phi float [ %3490, %3481 ], [ %3293, %3359 ]
  %3371 = phi float [ %3491, %3481 ], [ %3294, %3359 ]
  %3372 = phi float [ %3492, %3481 ], [ %3295, %3359 ]
  %3373 = phi float [ %3493, %3481 ], [ %3264, %3359 ]
  %3374 = phi float [ %3494, %3481 ], [ %3263, %3359 ]
  %3375 = phi float [ %3495, %3481 ], [ 0.000000e+00, %3359 ]
  %3376 = phi float [ %3496, %3481 ], [ %3262, %3359 ]
  %3377 = phi float [ %3497, %3481 ], [ %3256, %3359 ]
  %3378 = phi float [ %3498, %3481 ], [ %3257, %3359 ]
  %3379 = phi float [ %3499, %3481 ], [ %3258, %3359 ]
  %3380 = shl nuw nsw i32 %3361, 2
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = lshr i32 %3382, 16
  %3384 = shl i32 %3382, 8
  %3385 = and i32 %3384, 16776960
  %3386 = or i32 %3385, 48
  %3387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3386, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.f32 %3387, 0
  %3389 = extractvalue %dx.types.ResRet.f32 %3387, 1
  %3390 = extractvalue %dx.types.ResRet.f32 %3387, 2
  %3391 = or i32 %3385, 64
  %3392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.i32 %3392, 0
  %3394 = extractvalue %dx.types.ResRet.i32 %3392, 1
  %3395 = or i32 %3385, 80
  %3396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3395, i32 undef)  ; BufferLoad(srv,index,wot)
  %3397 = extractvalue %dx.types.ResRet.f32 %3396, 2
  %3398 = extractvalue %dx.types.ResRet.f32 %3396, 3
  %3399 = or i32 %3385, 96
  %3400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.f32 %3400, 0
  %3402 = extractvalue %dx.types.ResRet.f32 %3400, 1
  %3403 = extractvalue %dx.types.ResRet.f32 %3400, 2
  %3404 = extractvalue %dx.types.ResRet.f32 %3400, 3
  %3405 = or i32 %3385, 112
  %3406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3405, i32 undef)  ; BufferLoad(srv,index,wot)
  %3407 = extractvalue %dx.types.ResRet.f32 %3406, 2
  %3408 = or i32 %3385, 128
  %3409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.f32 %3409, 0
  %3411 = extractvalue %dx.types.ResRet.f32 %3409, 1
  %3412 = extractvalue %dx.types.ResRet.f32 %3409, 2
  %3413 = extractvalue %dx.types.ResRet.f32 %3409, 3
  %3414 = or i32 %3385, 144
  %3415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.f32 %3415, 0
  %3417 = extractvalue %dx.types.ResRet.f32 %3415, 1
  %3418 = extractvalue %dx.types.ResRet.f32 %3415, 2
  %3419 = extractvalue %dx.types.ResRet.f32 %3415, 3
  %3420 = or i32 %3385, 160
  %3421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3420, i32 undef)  ; BufferLoad(srv,index,wot)
  %3422 = extractvalue %dx.types.ResRet.f32 %3421, 0
  %3423 = extractvalue %dx.types.ResRet.f32 %3421, 1
  %3424 = extractvalue %dx.types.ResRet.f32 %3421, 2
  %3425 = extractvalue %dx.types.ResRet.f32 %3421, 3
  %3426 = or i32 %3385, 192
  %3427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3426, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.i32 %3427, 0
  %3429 = or i32 %3385, 208
  %3430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.f32 %3430, 0
  %3432 = or i32 %3385, 248
  %3433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.f32 %3433, 0
  %3435 = extractvalue %dx.types.ResRet.f32 %3433, 1
  %3436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.f32 %3436, 0
  %3438 = extractvalue %dx.types.ResRet.f32 %3436, 1
  %3439 = extractvalue %dx.types.ResRet.f32 %3436, 2
  %3440 = extractvalue %dx.types.ResRet.f32 %3436, 3
  %3441 = call float @dx.op.dot4.f32(i32 56, float %3437, float %3438, float %3439, float %3440, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3442 = or i32 %3385, 16
  %3443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3442, i32 undef)  ; BufferLoad(srv,index,wot)
  %3444 = extractvalue %dx.types.ResRet.f32 %3443, 0
  %3445 = extractvalue %dx.types.ResRet.f32 %3443, 1
  %3446 = extractvalue %dx.types.ResRet.f32 %3443, 2
  %3447 = extractvalue %dx.types.ResRet.f32 %3443, 3
  %3448 = call float @dx.op.dot4.f32(i32 56, float %3444, float %3445, float %3446, float %3447, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3449 = or i32 %3385, 32
  %3450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3449, i32 undef)  ; BufferLoad(srv,index,wot)
  %3451 = extractvalue %dx.types.ResRet.f32 %3450, 0
  %3452 = extractvalue %dx.types.ResRet.f32 %3450, 1
  %3453 = extractvalue %dx.types.ResRet.f32 %3450, 2
  %3454 = extractvalue %dx.types.ResRet.f32 %3450, 3
  %3455 = call float @dx.op.dot4.f32(i32 56, float %3451, float %3452, float %3453, float %3454, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3456 = call float @dx.op.unary.f32(i32 27, float %3441)  ; Round_ni(value)
  %3457 = call float @dx.op.unary.f32(i32 6, float %3456)  ; FAbs(value)
  %3458 = call float @dx.op.unary.f32(i32 27, float %3448)  ; Round_ni(value)
  %3459 = call float @dx.op.unary.f32(i32 6, float %3458)  ; FAbs(value)
  %3460 = call float @dx.op.unary.f32(i32 6, float %3455)  ; FAbs(value)
  %3461 = call float @dx.op.unary.f32(i32 27, float %3460)  ; Round_ni(value)
  %3462 = fadd fast float %3459, %3457
  %3463 = fadd fast float %3462, %3461
  %3464 = fcmp fast oeq float %3463, 0.000000e+00
  %3465 = call float @dx.op.dot4.f32(i32 56, float %3437, float %3438, float %3439, float %3440, float %3304, float %3305, float %3306, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3466 = call float @dx.op.dot4.f32(i32 56, float %3444, float %3445, float %3446, float %3447, float %3304, float %3305, float %3306, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3467 = call float @dx.op.dot4.f32(i32 56, float %3437, float %3438, float %3439, float %3440, float %3307, float %3308, float %3309, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3468 = call float @dx.op.dot4.f32(i32 56, float %3444, float %3445, float %3446, float %3447, float %3307, float %3308, float %3309, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3469 = fsub fast float %3465, %3441
  %3470 = fsub fast float %3467, %3441
  %3471 = fsub fast float %3466, %3448
  %3472 = fsub fast float %3468, %3448
  %3473 = call float @dx.op.dot3.f32(i32 55, float %3388, float %3389, float %3390, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3475 = extractvalue %dx.types.CBufRet.f32 %3474, 2
  %3476 = fadd fast float %3475, %3473
  %3477 = call float @dx.op.unary.f32(i32 7, float %3476)  ; Saturate(value)
  %3478 = extractvalue %dx.types.CBufRet.f32 %3474, 0
  %3479 = fcmp fast ogt float %3477, %3478
  %3480 = and i1 %3464, %3479
  br i1 %3480, label %3501, label %3481

; <label>:3481                                    ; preds = %3766, %3584, %3501, %3360
  %3482 = phi float [ %3362, %3501 ], [ %3587, %3584 ], [ %3587, %3766 ], [ %3362, %3360 ]
  %3483 = phi float [ %3363, %3501 ], [ %3363, %3584 ], [ %3741, %3766 ], [ %3363, %3360 ]
  %3484 = phi float [ %3364, %3501 ], [ %3364, %3584 ], [ %3739, %3766 ], [ %3364, %3360 ]
  %3485 = phi float [ %3365, %3501 ], [ %3365, %3584 ], [ %3711, %3766 ], [ %3365, %3360 ]
  %3486 = phi float [ %3366, %3501 ], [ %3366, %3584 ], [ %3709, %3766 ], [ %3366, %3360 ]
  %3487 = phi float [ %3367, %3501 ], [ %3367, %3584 ], [ %3776, %3766 ], [ %3367, %3360 ]
  %3488 = phi float [ %3368, %3501 ], [ %3368, %3584 ], [ %3777, %3766 ], [ %3368, %3360 ]
  %3489 = phi float [ %3369, %3501 ], [ %3369, %3584 ], [ %3778, %3766 ], [ %3369, %3360 ]
  %3490 = phi float [ %3370, %3501 ], [ %3370, %3584 ], [ %3690, %3766 ], [ %3370, %3360 ]
  %3491 = phi float [ %3371, %3501 ], [ %3371, %3584 ], [ %3691, %3766 ], [ %3371, %3360 ]
  %3492 = phi float [ %3372, %3501 ], [ %3372, %3584 ], [ %3692, %3766 ], [ %3372, %3360 ]
  %3493 = phi float [ %3373, %3501 ], [ %3373, %3584 ], [ %3719, %3766 ], [ %3373, %3360 ]
  %3494 = phi float [ %3374, %3501 ], [ %3374, %3584 ], [ %3716, %3766 ], [ %3374, %3360 ]
  %3495 = phi float [ %3375, %3501 ], [ %3375, %3584 ], [ %3713, %3766 ], [ %3375, %3360 ]
  %3496 = phi float [ %3376, %3501 ], [ %3376, %3584 ], [ %3707, %3766 ], [ %3376, %3360 ]
  %3497 = phi float [ %3377, %3501 ], [ %3377, %3584 ], [ %3702, %3766 ], [ %3377, %3360 ]
  %3498 = phi float [ %3378, %3501 ], [ %3378, %3584 ], [ %3703, %3766 ], [ %3378, %3360 ]
  %3499 = phi float [ %3379, %3501 ], [ %3379, %3584 ], [ %3704, %3766 ], [ %3379, %3360 ]
  %3500 = icmp eq i32 %3383, 0
  br i1 %3500, label %3779, label %3360

; <label>:3501                                    ; preds = %3360
  %3502 = extractvalue %dx.types.ResRet.f32 %3387, 3
  %3503 = extractvalue %dx.types.ResRet.f32 %3406, 3
  %3504 = extractvalue %dx.types.ResRet.f32 %3406, 1
  %3505 = extractvalue %dx.types.ResRet.f32 %3406, 0
  %3506 = extractvalue %dx.types.ResRet.f32 %3396, 1
  %3507 = extractvalue %dx.types.ResRet.f32 %3396, 0
  %3508 = extractvalue %dx.types.ResRet.i32 %3392, 3
  %3509 = extractvalue %dx.types.ResRet.i32 %3392, 2
  %3510 = bitcast float %3502 to i32
  %3511 = add i32 %3508, 0
  %3512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3511, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3514 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3512, %dx.types.Handle %3513, float %3441, float %3448, float undef, float undef, i32 0, i32 0, i32 undef, float %3469, float %3471, float undef, float %3470, float %3472, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3515 = extractvalue %dx.types.ResRet.f32 %3514, 0
  %3516 = fmul fast float %3515, %3507
  %3517 = fadd fast float %3516, %3506
  %3518 = call float @dx.op.unary.f32(i32 7, float %3517)  ; Saturate(value)
  %3519 = fmul fast float %3441, %3401
  %3520 = call float @dx.op.tertiary.f32(i32 46, float %3402, float %3448, float %3519)  ; FMad(a,b,c)
  %3521 = fadd fast float %3520, %3505
  %3522 = fmul fast float %3441, %3403
  %3523 = call float @dx.op.tertiary.f32(i32 46, float %3404, float %3448, float %3522)  ; FMad(a,b,c)
  %3524 = fadd fast float %3523, %3504
  %3525 = fmul fast float %3469, %3401
  %3526 = call float @dx.op.tertiary.f32(i32 46, float %3402, float %3471, float %3525)  ; FMad(a,b,c)
  %3527 = fmul fast float %3469, %3403
  %3528 = call float @dx.op.tertiary.f32(i32 46, float %3404, float %3471, float %3527)  ; FMad(a,b,c)
  %3529 = fmul fast float %3470, %3401
  %3530 = call float @dx.op.tertiary.f32(i32 46, float %3402, float %3472, float %3529)  ; FMad(a,b,c)
  %3531 = fmul fast float %3470, %3403
  %3532 = call float @dx.op.tertiary.f32(i32 46, float %3404, float %3472, float %3531)  ; FMad(a,b,c)
  %3533 = add i32 %3509, 0
  %3534 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3533, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3535 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3534, %dx.types.Handle %3513, float %3521, float %3524, float undef, float undef, i32 0, i32 0, i32 undef, float %3526, float %3528, float undef, float %3530, float %3532, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3536 = extractvalue %dx.types.ResRet.f32 %3535, 0
  %3537 = and i32 %3510, 1024
  %3538 = icmp ne i32 %3537, 0
  %3539 = fcmp fast ogt float %3536, 0x3FE0101020000000
  %3540 = uitofp i1 %3539 to float
  %3541 = select i1 %3538, float %3540, float %3536
  %3542 = and i32 %3510, 8192
  %3543 = icmp ne i32 %3542, 0
  %3544 = select i1 %3543, float %3503, float 1.000000e+00
  %3545 = fmul fast float %3441, 2.000000e+00
  %3546 = fadd fast float %3545, -1.000000e+00
  %3547 = call float @dx.op.unary.f32(i32 6, float %3546)  ; FAbs(value)
  %3548 = fmul fast float %3547, %3434
  %3549 = fsub fast float %3548, %3434
  %3550 = call float @dx.op.unary.f32(i32 7, float %3549)  ; Saturate(value)
  %3551 = fmul fast float %3448, 2.000000e+00
  %3552 = fadd fast float %3551, -1.000000e+00
  %3553 = call float @dx.op.unary.f32(i32 6, float %3552)  ; FAbs(value)
  %3554 = fmul fast float %3553, %3435
  %3555 = fsub fast float %3554, %3435
  %3556 = call float @dx.op.unary.f32(i32 7, float %3555)  ; Saturate(value)
  %3557 = fmul fast float %3460, %3397
  %3558 = fsub fast float %3557, %3397
  %3559 = call float @dx.op.unary.f32(i32 7, float %3558)  ; Saturate(value)
  %3560 = fmul fast float %3518, %3544
  %3561 = fmul fast float %3560, %3515
  %3562 = fmul fast float %3561, %3550
  %3563 = fmul fast float %3562, %3541
  %3564 = fmul fast float %3563, %3556
  %3565 = fmul fast float %3564, %3559
  %3566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3567 = extractvalue %dx.types.CBufRet.f32 %3566, 1
  %3568 = extractvalue %dx.types.CBufRet.f32 %3566, 0
  %3569 = fsub fast float %3477, %3568
  %3570 = fmul fast float %3569, %3567
  %3571 = call float @dx.op.unary.f32(i32 7, float %3570)  ; Saturate(value)
  %3572 = fmul fast float %3565, %3398
  %3573 = fadd fast float %3565, %3398
  %3574 = fmul fast float %3573, %3407
  %3575 = fsub fast float %3574, %3407
  %3576 = call float @dx.op.unary.f32(i32 7, float %3575)  ; Saturate(value)
  %3577 = and i32 %3510, 128
  %3578 = icmp ne i32 %3577, 0
  %3579 = select i1 %3578, float %3576, float %3572
  %3580 = fmul fast float %3579, %3571
  %3581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3582 = extractvalue %dx.types.CBufRet.f32 %3581, 0
  %3583 = fcmp fast ugt float %3580, %3582
  br i1 %3583, label %3584, label %3481

; <label>:3584                                    ; preds = %3501
  %3585 = select i1 %3543, float %3580, float 0.000000e+00
  %3586 = fadd fast float %3585, %3362
  %3587 = call float @dx.op.unary.f32(i32 7, float %3586)  ; Saturate(value)
  br i1 %3543, label %3481, label %3588

; <label>:3588                                    ; preds = %3584
  %3589 = and i32 %3510, 4
  %3590 = and i32 %3510, 8
  %3591 = add i32 %3393, 0
  %3592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3591, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3593 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3594 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3592, %dx.types.Handle %3593, float %3521, float %3524, float undef, float undef, i32 0, i32 0, i32 undef, float %3526, float %3528, float undef, float %3530, float %3532, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3595 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3596 = extractvalue %dx.types.ResRet.f32 %3594, 1
  %3597 = extractvalue %dx.types.ResRet.f32 %3594, 2
  %3598 = extractvalue %dx.types.ResRet.f32 %3594, 3
  %3599 = bitcast float %3419 to i32
  %3600 = and i32 %3599, 255
  %3601 = uitofp i32 %3600 to float
  %3602 = lshr i32 %3599, 8
  %3603 = and i32 %3602, 255
  %3604 = uitofp i32 %3603 to float
  %3605 = fmul fast float %3598, %3601
  %3606 = fadd fast float %3605, %3604
  %3607 = fmul fast float %3606, 0x3F70101000000000
  %3608 = add i32 %3394, 0
  %3609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3608, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3610 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3609, %dx.types.Handle %3593, float %3521, float %3524, float undef, float undef, i32 0, i32 0, i32 undef, float %3526, float %3528, float undef, float %3530, float %3532, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3611 = extractvalue %dx.types.ResRet.f32 %3610, 0
  %3612 = extractvalue %dx.types.ResRet.f32 %3610, 1
  %3613 = extractvalue %dx.types.ResRet.f32 %3610, 2
  %3614 = extractvalue %dx.types.ResRet.f32 %3610, 3
  %3615 = bitcast float %3413 to i32
  %3616 = and i32 %3615, 255
  %3617 = uitofp i32 %3616 to float
  %3618 = lshr i32 %3615, 8
  %3619 = and i32 %3618, 255
  %3620 = uitofp i32 %3619 to float
  %3621 = lshr i32 %3615, 16
  %3622 = and i32 %3621, 255
  %3623 = uitofp i32 %3622 to float
  %3624 = fmul fast float %3623, 0x3F70101000000000
  %3625 = fmul fast float %3611, %3617
  %3626 = fadd fast float %3625, %3620
  %3627 = fmul fast float %3626, 0x3F70101000000000
  %3628 = fadd fast float %3612, -5.000000e-01
  %3629 = fadd fast float %3614, -5.000000e-01
  %3630 = fmul fast float %3628, %3624
  %3631 = fmul fast float %3629, %3624
  %3632 = fadd fast float %3630, 5.000000e-01
  %3633 = fadd fast float %3631, 5.000000e-01
  %3634 = fmul fast float %3595, %3422
  %3635 = fmul fast float %3596, %3423
  %3636 = fmul fast float %3597, %3424
  %3637 = fmul fast float %3632, 2.000000e+00
  %3638 = fadd fast float %3637, -1.000000e+00
  %3639 = fmul fast float %3633, 2.000000e+00
  %3640 = fadd fast float %3639, -1.000000e+00
  %3641 = fadd fast float %3638, %3640
  %3642 = fmul fast float %3641, 5.000000e-01
  %3643 = fsub fast float %3638, %3640
  %3644 = fmul fast float %3643, 5.000000e-01
  %3645 = call float @dx.op.unary.f32(i32 6, float %3642)  ; FAbs(value)
  %3646 = fsub fast float 1.000000e+00, %3645
  %3647 = call float @dx.op.unary.f32(i32 6, float %3644)  ; FAbs(value)
  %3648 = fsub fast float %3646, %3647
  %3649 = call float @dx.op.dot3.f32(i32 55, float %3642, float %3644, float %3648, float %3642, float %3644, float %3648)  ; Dot3(ax,ay,az,bx,by,bz)
  %3650 = call float @dx.op.unary.f32(i32 25, float %3649)  ; Rsqrt(value)
  %3651 = fmul fast float %3642, %3650
  %3652 = fmul fast float %3644, %3650
  %3653 = fmul fast float %3650, %3648
  %3654 = fmul fast float %3653, %3388
  %3655 = fmul fast float %3653, %3389
  %3656 = fmul fast float %3653, %3390
  %3657 = fmul fast float %3651, %3410
  %3658 = fmul fast float %3651, %3411
  %3659 = fmul fast float %3651, %3412
  %3660 = fadd fast float %3657, %3654
  %3661 = fadd fast float %3658, %3655
  %3662 = fadd fast float %3659, %3656
  %3663 = fmul fast float %3652, %3416
  %3664 = fmul fast float %3652, %3417
  %3665 = fmul fast float %3652, %3418
  %3666 = fadd fast float %3660, %3663
  %3667 = fadd fast float %3661, %3664
  %3668 = fadd fast float %3662, %3665
  %3669 = call float @dx.op.dot3.f32(i32 55, float %3666, float %3667, float %3668, float %3666, float %3667, float %3668)  ; Dot3(ax,ay,az,bx,by,bz)
  %3670 = call float @dx.op.unary.f32(i32 25, float %3669)  ; Rsqrt(value)
  %3671 = fmul fast float %3666, %3670
  %3672 = fmul fast float %3667, %3670
  %3673 = fmul fast float %3668, %3670
  %3674 = icmp ne i32 %3590, 0
  %3675 = select i1 %3674, float 1.000000e+00, float 0.000000e+00
  %3676 = fmul fast float %3580, %3675
  %3677 = and i32 %3510, 1
  %3678 = icmp eq i32 %3677, 0
  br i1 %3678, label %3679, label %3683

; <label>:3679                                    ; preds = %3588
  %3680 = fsub fast float %3671, %3370
  %3681 = fsub fast float %3672, %3371
  %3682 = fsub fast float %3673, %3372
  br label %3683

; <label>:3683                                    ; preds = %3679, %3588
  %3684 = phi float [ %3680, %3679 ], [ %3671, %3588 ]
  %3685 = phi float [ %3681, %3679 ], [ %3672, %3588 ]
  %3686 = phi float [ %3682, %3679 ], [ %3673, %3588 ]
  %3687 = fmul float %3686, %3676
  %3688 = fmul float %3685, %3676
  %3689 = fmul float %3684, %3676
  %3690 = fadd fast float %3689, %3370
  %3691 = fadd fast float %3688, %3371
  %3692 = fadd fast float %3687, %3372
  %3693 = icmp ne i32 %3589, 0
  %3694 = select i1 %3693, float 1.000000e+00, float 0.000000e+00
  %3695 = fmul fast float %3580, %3694
  %3696 = fsub fast float %3634, %3377
  %3697 = fsub fast float %3635, %3378
  %3698 = fsub fast float %3636, %3379
  %3699 = fmul fast float %3696, %3695
  %3700 = fmul fast float %3697, %3695
  %3701 = fmul fast float %3698, %3695
  %3702 = fadd fast float %3699, %3377
  %3703 = fadd fast float %3700, %3378
  %3704 = fadd fast float %3701, %3379
  %3705 = fsub fast float %3607, %3376
  %3706 = fmul fast float %3705, %3695
  %3707 = fadd fast float %3706, %3376
  %3708 = fmul fast float %3695, %3366
  %3709 = fsub fast float %3366, %3708
  %3710 = fmul fast float %3695, %3365
  %3711 = fsub fast float %3365, %3710
  %3712 = fadd fast float %3580, %3375
  %3713 = call float @dx.op.unary.f32(i32 7, float %3712)  ; Saturate(value)
  %3714 = fsub fast float %3627, %3374
  %3715 = fmul fast float %3714, %3676
  %3716 = fadd fast float %3715, %3374
  %3717 = fsub fast float %3613, %3373
  %3718 = fmul fast float %3717, %3676
  %3719 = fadd fast float %3718, %3373
  %3720 = call float @dx.op.dot3.f32(i32 55, float %3634, float %3635, float %3636, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3722 = extractvalue %dx.types.CBufRet.f32 %3721, 0
  %3723 = extractvalue %dx.types.CBufRet.f32 %3721, 1
  %3724 = fmul fast float %3723, %3720
  %3725 = fadd fast float %3724, %3722
  %3726 = call float @dx.op.unary.f32(i32 7, float %3725)  ; Saturate(value)
  %3727 = bitcast float %3425 to i32
  %3728 = and i32 %3727, 65535
  %3729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3728)  ; LegacyF16ToF32(value)
  %3730 = lshr i32 %3727, 16
  %3731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3730)  ; LegacyF16ToF32(value)
  %3732 = fcmp fast oge float %3729, 0.000000e+00
  %3733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3734 = extractvalue %dx.types.CBufRet.f32 %3733, 0
  %3735 = select i1 %3732, float %3729, float %3734
  %3736 = fadd fast float %3735, %3731
  %3737 = fsub fast float %3726, %3364
  %3738 = fmul fast float %3737, %3580
  %3739 = fadd fast float %3738, %3364
  %3740 = fmul fast float %3736, %3580
  %3741 = call float @dx.op.binary.f32(i32 35, float %3363, float %3740)  ; FMax(a,b)
  %3742 = and i32 %3510, 16
  %3743 = icmp eq i32 %3742, 0
  br i1 %3743, label %3766, label %3744

; <label>:3744                                    ; preds = %3683
  %3745 = bitcast float %3431 to i32
  %3746 = add i32 %3428, 0
  %3747 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3746, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3748 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3747, %dx.types.Handle %3593, float %3521, float %3524, float undef, float undef, i32 0, i32 0, i32 undef, float %3526, float %3528, float undef, float %3530, float %3532, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3749 = extractvalue %dx.types.ResRet.f32 %3748, 0
  %3750 = extractvalue %dx.types.ResRet.f32 %3748, 1
  %3751 = extractvalue %dx.types.ResRet.f32 %3748, 2
  %3752 = and i32 %3745, 65535
  %3753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3752)  ; LegacyF16ToF32(value)
  %3754 = fmul fast float %3749, %3422
  %3755 = fmul fast float %3750, %3423
  %3756 = fmul fast float %3751, %3424
  %3757 = and i32 %3510, 16384
  %3758 = icmp ne i32 %3757, 0
  %3759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3760 = extractvalue %dx.types.CBufRet.f32 %3759, 0
  %3761 = select i1 %3758, float %3760, float 1.000000e+00
  %3762 = fmul fast float %3761, %3753
  %3763 = fmul fast float %3754, %3762
  %3764 = fmul fast float %3755, %3762
  %3765 = fmul fast float %3756, %3762
  br label %3766

; <label>:3766                                    ; preds = %3744, %3683
  %3767 = phi float [ %3763, %3744 ], [ 0.000000e+00, %3683 ]
  %3768 = phi float [ %3764, %3744 ], [ 0.000000e+00, %3683 ]
  %3769 = phi float [ %3765, %3744 ], [ 0.000000e+00, %3683 ]
  %3770 = fsub fast float %3767, %3367
  %3771 = fsub fast float %3768, %3368
  %3772 = fsub fast float %3769, %3369
  %3773 = fmul fast float %3770, %3580
  %3774 = fmul fast float %3771, %3580
  %3775 = fmul fast float %3772, %3580
  %3776 = fadd fast float %3773, %3367
  %3777 = fadd fast float %3774, %3368
  %3778 = fadd fast float %3775, %3369
  br label %3481

; <label>:3779                                    ; preds = %3481
  br label %3780

; <label>:3780                                    ; preds = %3779, %3297
  %3781 = phi float [ 0.000000e+00, %3297 ], [ %3482, %3779 ]
  %3782 = phi float [ %3267, %3297 ], [ %3483, %3779 ]
  %3783 = phi float [ %3265, %3297 ], [ %3484, %3779 ]
  %3784 = phi float [ 0.000000e+00, %3297 ], [ %3485, %3779 ]
  %3785 = phi float [ 0.000000e+00, %3297 ], [ %3486, %3779 ]
  %3786 = phi float [ %3259, %3297 ], [ %3487, %3779 ]
  %3787 = phi float [ %3260, %3297 ], [ %3488, %3779 ]
  %3788 = phi float [ %3261, %3297 ], [ %3489, %3779 ]
  %3789 = phi float [ %3293, %3297 ], [ %3490, %3779 ]
  %3790 = phi float [ %3294, %3297 ], [ %3491, %3779 ]
  %3791 = phi float [ %3295, %3297 ], [ %3492, %3779 ]
  %3792 = phi float [ %3264, %3297 ], [ %3493, %3779 ]
  %3793 = phi float [ %3263, %3297 ], [ %3494, %3779 ]
  %3794 = phi float [ 0.000000e+00, %3297 ], [ %3495, %3779 ]
  %3795 = phi float [ %3262, %3297 ], [ %3496, %3779 ]
  %3796 = phi float [ %3256, %3297 ], [ %3497, %3779 ]
  %3797 = phi float [ %3257, %3297 ], [ %3498, %3779 ]
  %3798 = phi float [ %3258, %3297 ], [ %3499, %3779 ]
  %3799 = call float @dx.op.dot3.f32(i32 55, float %3789, float %3790, float %3791, float %3789, float %3790, float %3791)  ; Dot3(ax,ay,az,bx,by,bz)
  %3800 = call float @dx.op.unary.f32(i32 25, float %3799)  ; Rsqrt(value)
  %3801 = fmul fast float %3800, %3789
  %3802 = fmul fast float %3800, %3790
  %3803 = fmul fast float %3800, %3791
  %3804 = fadd fast float %3794, %1045
  %3805 = call float @dx.op.unary.f32(i32 7, float %3804)  ; Saturate(value)
  %3806 = call float @dx.op.dot3.f32(i32 55, float %3801, float %3802, float %3803, float %3801, float %3802, float %3803)  ; Dot3(ax,ay,az,bx,by,bz)
  %3807 = call float @dx.op.unary.f32(i32 25, float %3806)  ; Rsqrt(value)
  %3808 = fmul fast float %3807, %3801
  %3809 = fmul fast float %3807, %3802
  %3810 = fmul fast float %3807, %3803
  br label %3811

; <label>:3811                                    ; preds = %3780, %3253
  %3812 = phi float [ %3808, %3780 ], [ %3293, %3253 ]
  %3813 = phi float [ %3809, %3780 ], [ %3294, %3253 ]
  %3814 = phi float [ %3810, %3780 ], [ %3295, %3253 ]
  %3815 = phi float [ %3796, %3780 ], [ %3256, %3253 ]
  %3816 = phi float [ %3797, %3780 ], [ %3257, %3253 ]
  %3817 = phi float [ %3798, %3780 ], [ %3258, %3253 ]
  %3818 = phi float [ %3786, %3780 ], [ %3259, %3253 ]
  %3819 = phi float [ %3787, %3780 ], [ %3260, %3253 ]
  %3820 = phi float [ %3788, %3780 ], [ %3261, %3253 ]
  %3821 = phi float [ %3795, %3780 ], [ %3262, %3253 ]
  %3822 = phi float [ %3805, %3780 ], [ %1045, %3253 ]
  %3823 = phi float [ %3793, %3780 ], [ %3263, %3253 ]
  %3824 = phi float [ %3792, %3780 ], [ %3264, %3253 ]
  %3825 = phi float [ %3785, %3780 ], [ 0.000000e+00, %3253 ]
  %3826 = phi float [ %3784, %3780 ], [ 0.000000e+00, %3253 ]
  %3827 = phi float [ %3781, %3780 ], [ 0.000000e+00, %3253 ]
  %3828 = phi float [ %3782, %3780 ], [ %3267, %3253 ]
  %3829 = phi float [ %3783, %3780 ], [ %3265, %3253 ]
  %3830 = fadd fast float %3821, 0xBFB99999A0000000
  %3831 = call float @dx.op.unary.f32(i32 7, float %3830)  ; Saturate(value)
  %3832 = fmul fast float %3831, 0x3FF1C71C80000000
  %3833 = call float @dx.op.binary.f32(i32 36, float %3821, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3834 = fsub fast float 1.000000e+00, %3832
  %3835 = call float @dx.op.unary.f32(i32 7, float %3834)  ; Saturate(value)
  %3836 = fmul fast float %3835, %3815
  %3837 = fmul fast float %3835, %3816
  %3838 = fmul fast float %3835, %3817
  %3839 = call float @dx.op.unary.f32(i32 7, float %3836)  ; Saturate(value)
  %3840 = call float @dx.op.unary.f32(i32 7, float %3837)  ; Saturate(value)
  %3841 = call float @dx.op.unary.f32(i32 7, float %3838)  ; Saturate(value)
  %3842 = fmul fast float %3832, %3815
  %3843 = fmul fast float %3832, %3816
  %3844 = fmul fast float %3832, %3817
  %3845 = fadd fast float %3842, %3833
  %3846 = fadd fast float %3843, %3833
  %3847 = fadd fast float %3844, %3833
  %3848 = call float @dx.op.unary.f32(i32 7, float %3845)  ; Saturate(value)
  %3849 = call float @dx.op.unary.f32(i32 7, float %3846)  ; Saturate(value)
  %3850 = call float @dx.op.unary.f32(i32 7, float %3847)  ; Saturate(value)
  %3851 = call float @dx.op.unary.f32(i32 7, float %3823)  ; Saturate(value)
  %3852 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3853 = extractvalue %dx.types.CBufRet.i32 %3852, 3
  %3854 = and i32 %3853, 8
  %3855 = icmp ne i32 %3854, 0
  %3856 = call float @dx.op.binary.f32(i32 35, float %3839, float %3815)  ; FMax(a,b)
  %3857 = call float @dx.op.binary.f32(i32 35, float %3840, float %3815)  ; FMax(a,b)
  %3858 = call float @dx.op.binary.f32(i32 35, float %3841, float %3815)  ; FMax(a,b)
  %3859 = call float @dx.op.dot3.f32(i32 55, float %3839, float %3840, float %3841, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3860 = select i1 %250, float %3815, float %3839
  %3861 = select i1 %250, float %3859, float %3840
  %3862 = select i1 %250, float 1.000000e+00, float %3841
  %3863 = select i1 %3855, float %3856, float %3860
  %3864 = select i1 %3855, float %3857, float %3861
  %3865 = select i1 %3855, float %3858, float %3862
  %3866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3867 = extractvalue %dx.types.CBufRet.f32 %3866, 0
  %3868 = extractvalue %dx.types.CBufRet.f32 %3866, 1
  %3869 = extractvalue %dx.types.CBufRet.f32 %3866, 2
  %3870 = fadd fast float %3867, %191
  %3871 = fadd fast float %3868, %192
  %3872 = fadd fast float %3869, %193
  %3873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3874 = extractvalue %dx.types.CBufRet.f32 %3873, 0
  %3875 = extractvalue %dx.types.CBufRet.f32 %3873, 1
  %3876 = fsub fast float %3870, %3874
  %3877 = fsub fast float %3871, %3875
  %3878 = fmul fast float %3876, %3876
  %3879 = fmul fast float %3877, %3877
  %3880 = fadd fast float %3878, %3879
  %3881 = call float @dx.op.unary.f32(i32 24, float %3880)  ; Sqrt(value)
  %3882 = extractvalue %dx.types.CBufRet.f32 %3873, 2
  %3883 = fcmp fast olt float %3881, %3882
  br i1 %3883, label %3884, label %3951

; <label>:3884                                    ; preds = %3811
  %3885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3886 = extractvalue %dx.types.CBufRet.f32 %3885, 0
  %3887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3888 = extractvalue %dx.types.CBufRet.f32 %3887, 0
  %3889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3890 = extractvalue %dx.types.CBufRet.f32 %3889, 0
  %3891 = extractvalue %dx.types.CBufRet.f32 %3885, 1
  %3892 = extractvalue %dx.types.CBufRet.f32 %3887, 1
  %3893 = extractvalue %dx.types.CBufRet.f32 %3889, 1
  %3894 = extractvalue %dx.types.CBufRet.f32 %3885, 3
  %3895 = extractvalue %dx.types.CBufRet.f32 %3887, 3
  %3896 = extractvalue %dx.types.CBufRet.f32 %3889, 3
  %3897 = fadd fast float %3894, %3870
  %3898 = fadd fast float %3895, %3871
  %3899 = fadd fast float %3896, %3872
  %3900 = fmul fast float %3897, %3886
  %3901 = call float @dx.op.tertiary.f32(i32 46, float %3898, float %3888, float %3900)  ; FMad(a,b,c)
  %3902 = call float @dx.op.tertiary.f32(i32 46, float %3899, float %3890, float %3901)  ; FMad(a,b,c)
  %3903 = fmul fast float %3897, %3891
  %3904 = call float @dx.op.tertiary.f32(i32 46, float %3898, float %3892, float %3903)  ; FMad(a,b,c)
  %3905 = call float @dx.op.tertiary.f32(i32 46, float %3899, float %3893, float %3904)  ; FMad(a,b,c)
  %3906 = fsub fast float %3902, %3894
  %3907 = fsub fast float %3905, %3895
  %3908 = fsub fast float %3906, %3874
  %3909 = fadd fast float %3908, %3882
  %3910 = fsub fast float %3907, %3875
  %3911 = fadd fast float %3910, %3882
  %3912 = extractvalue %dx.types.CBufRet.f32 %3873, 3
  %3913 = fmul fast float %3909, %3912
  %3914 = fmul fast float %3911, %3912
  %3915 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3916 = call float @dx.op.unary.f32(i32 7, float %3914)  ; Saturate(value)
  %3917 = fsub fast float 1.000000e+00, %3915
  %3918 = fsub fast float 1.000000e+00, %3916
  %3919 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %3917, float %3918, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3920 = extractvalue %dx.types.ResRet.f32 %3919, 0
  %3921 = fcmp fast ugt float %3920, 0.000000e+00
  br i1 %3921, label %3922, label %4225

; <label>:3922                                    ; preds = %3884
  %3923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3924 = extractvalue %dx.types.CBufRet.f32 %3923, 2
  %3925 = fmul fast float %3924, %3920
  %3926 = extractvalue %dx.types.CBufRet.f32 %3923, 3
  %3927 = fadd fast float %3926, %3925
  %3928 = extractvalue %dx.types.CBufRet.f32 %3889, 2
  %3929 = fadd fast float %3927, %3896
  %3930 = fmul fast float %3902, %3890
  %3931 = call float @dx.op.tertiary.f32(i32 46, float %3905, float %3893, float %3930)  ; FMad(a,b,c)
  %3932 = call float @dx.op.tertiary.f32(i32 46, float %3929, float %3928, float %3931)  ; FMad(a,b,c)
  %3933 = fsub fast float %3932, %3896
  %3934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3935 = extractvalue %dx.types.CBufRet.f32 %3934, 2
  %3936 = fsub fast float %3933, %3935
  %3937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %3917, float %3918, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3938 = extractvalue %dx.types.ResRet.f32 %3937, 0
  %3939 = extractvalue %dx.types.ResRet.f32 %3937, 1
  %3940 = extractvalue %dx.types.ResRet.f32 %3937, 2
  %3941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %3917, float %3918, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3942 = extractvalue %dx.types.ResRet.f32 %3941, 0
  %3943 = extractvalue %dx.types.ResRet.f32 %3941, 1
  %3944 = extractvalue %dx.types.ResRet.f32 %3941, 2
  %3945 = fadd fast float %3942, %3938
  %3946 = fmul fast float %3945, 0x3F847AE140000000
  %3947 = fadd fast float %3943, %3939
  %3948 = fmul fast float %3947, 0x3F847AE140000000
  %3949 = fadd fast float %3944, %3940
  %3950 = fmul fast float %3949, 0x3F847AE140000000
  br label %4225

; <label>:3951                                    ; preds = %3811
  %3952 = and i32 %229, 1
  %3953 = icmp eq i32 %3952, 0
  br i1 %3953, label %4225, label %3954

; <label>:3954                                    ; preds = %3951
  %3955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3956 = extractvalue %dx.types.CBufRet.f32 %3955, 0
  %3957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3958 = extractvalue %dx.types.CBufRet.f32 %3957, 0
  %3959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3960 = extractvalue %dx.types.CBufRet.f32 %3959, 0
  %3961 = extractvalue %dx.types.CBufRet.f32 %3955, 1
  %3962 = extractvalue %dx.types.CBufRet.f32 %3957, 1
  %3963 = extractvalue %dx.types.CBufRet.f32 %3959, 1
  %3964 = extractvalue %dx.types.CBufRet.f32 %3955, 3
  %3965 = extractvalue %dx.types.CBufRet.f32 %3957, 3
  %3966 = extractvalue %dx.types.CBufRet.f32 %3959, 3
  %3967 = fadd fast float %3964, %3870
  %3968 = fadd fast float %3965, %3871
  %3969 = fadd fast float %3966, %3872
  %3970 = fmul fast float %3967, %3956
  %3971 = call float @dx.op.tertiary.f32(i32 46, float %3968, float %3958, float %3970)  ; FMad(a,b,c)
  %3972 = call float @dx.op.tertiary.f32(i32 46, float %3969, float %3960, float %3971)  ; FMad(a,b,c)
  %3973 = fmul fast float %3967, %3961
  %3974 = call float @dx.op.tertiary.f32(i32 46, float %3968, float %3962, float %3973)  ; FMad(a,b,c)
  %3975 = call float @dx.op.tertiary.f32(i32 46, float %3969, float %3963, float %3974)  ; FMad(a,b,c)
  %3976 = fsub fast float %3972, %3964
  %3977 = fsub fast float %3975, %3965
  %3978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3979 = extractvalue %dx.types.CBufRet.f32 %3978, 0
  %3980 = extractvalue %dx.types.CBufRet.f32 %3978, 1
  %3981 = extractvalue %dx.types.CBufRet.f32 %3978, 2
  %3982 = extractvalue %dx.types.CBufRet.f32 %3978, 3
  %3983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3984 = extractvalue %dx.types.CBufRet.f32 %3983, 3
  %3985 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3986 = extractvalue %dx.types.CBufRet.i32 %3985, 0
  %3987 = extractvalue %dx.types.CBufRet.i32 %3985, 1
  %3988 = udiv i32 %3987, %3986
  %3989 = fsub fast float %3976, %3979
  %3990 = fsub fast float %3977, %3980
  %3991 = call float @dx.op.binary.f32(i32 35, float %3989, float 0.000000e+00)  ; FMax(a,b)
  %3992 = call float @dx.op.binary.f32(i32 35, float %3990, float 0.000000e+00)  ; FMax(a,b)
  %3993 = call float @dx.op.binary.f32(i32 36, float %3991, float %3981)  ; FMin(a,b)
  %3994 = call float @dx.op.binary.f32(i32 36, float %3992, float %3982)  ; FMin(a,b)
  %3995 = add i32 %3986, -1
  %3996 = add i32 %3988, -1
  %3997 = fmul fast float %3993, %3984
  %3998 = fmul fast float %3994, %3984
  %3999 = fptoui float %3997 to i32
  %4000 = fptoui float %3998 to i32
  %4001 = call i32 @dx.op.binary.i32(i32 40, i32 %3999, i32 %3995)  ; UMin(a,b)
  %4002 = call i32 @dx.op.binary.i32(i32 40, i32 %4000, i32 %3996)  ; UMin(a,b)
  %4003 = mul i32 %4002, %3986
  %4004 = add i32 %4003, %4001
  %4005 = shl i32 %4004, 2
  %4006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4005, i32 undef)  ; BufferLoad(srv,index,wot)
  %4007 = extractvalue %dx.types.ResRet.i32 %4006, 0
  %4008 = icmp eq i32 %4007, -1
  br i1 %4008, label %4225, label %4009

; <label>:4009                                    ; preds = %3954
  %4010 = mul i32 %4007, 148
  %4011 = add i32 %4010, 4
  %4012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4011, i32 undef)  ; BufferLoad(srv,index,wot)
  %4013 = extractvalue %dx.types.ResRet.f32 %4012, 0
  %4014 = add i32 %4010, 8
  %4015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4014, i32 undef)  ; BufferLoad(srv,index,wot)
  %4016 = extractvalue %dx.types.ResRet.f32 %4015, 0
  %4017 = add i32 %4010, 36
  %4018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4017, i32 undef)  ; BufferLoad(srv,index,wot)
  %4019 = extractvalue %dx.types.ResRet.f32 %4018, 0
  %4020 = add i32 %4010, 60
  %4021 = add i32 %4010, 92
  %4022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4021, i32 undef)  ; BufferLoad(srv,index,wot)
  %4023 = extractvalue %dx.types.ResRet.i32 %4022, 0
  %4024 = add i32 %4010, 116
  %4025 = fsub fast float %3976, %4013
  %4026 = fsub fast float %3977, %4016
  %4027 = fmul fast float %3984, %4025
  %4028 = fmul fast float %3984, %4026
  %4029 = call float @dx.op.unary.f32(i32 7, float %4027)  ; Saturate(value)
  %4030 = call float @dx.op.unary.f32(i32 7, float %4028)  ; Saturate(value)
  %4031 = fsub fast float 1.000000e+00, %4030
  %4032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4033 = extractvalue %dx.types.CBufRet.f32 %4032, 2
  %4034 = call float @dx.op.unary.f32(i32 83, float %4029)  ; DerivCoarseX(value)
  %4035 = call float @dx.op.unary.f32(i32 83, float %4031)  ; DerivCoarseX(value)
  %4036 = call float @dx.op.unary.f32(i32 84, float %4029)  ; DerivCoarseY(value)
  %4037 = call float @dx.op.unary.f32(i32 84, float %4031)  ; DerivCoarseY(value)
  %4038 = fmul fast float %4034, %4033
  %4039 = fmul fast float %4035, %4033
  %4040 = fmul fast float %4036, %4033
  %4041 = fmul fast float %4037, %4033
  %4042 = call float @dx.op.dot2.f32(i32 54, float %4040, float %4041, float %4040, float %4041)  ; Dot2(ax,ay,bx,by)
  %4043 = call float @dx.op.dot2.f32(i32 54, float %4038, float %4039, float %4038, float %4039)  ; Dot2(ax,ay,bx,by)
  %4044 = call float @dx.op.binary.f32(i32 35, float %4043, float %4042)  ; FMax(a,b)
  %4045 = call float @dx.op.unary.f32(i32 23, float %4044)  ; Log(value)
  %4046 = fmul fast float %4045, 5.000000e-01
  %4047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4048 = extractvalue %dx.types.CBufRet.f32 %4047, 1
  %4049 = fadd fast float %4048, %4046
  %4050 = call float @dx.op.binary.f32(i32 35, float %4049, float 0.000000e+00)  ; FMax(a,b)
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 3
  %4053 = fadd fast float %4052, %4050
  %4054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4055 = extractvalue %dx.types.CBufRet.f32 %4054, 3
  %4056 = fadd fast float %4053, %4055
  %4057 = add i32 %4023, 0
  %4058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4057, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4059 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4058, i32 0)  ; GetDimensions(handle,mipLevel)
  %4060 = extractvalue %dx.types.Dimensions %4059, 0
  %4061 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4060)  ; FirstbitLo(value)
  %4062 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4063 = extractvalue %dx.types.CBufRet.i32 %4062, 1
  %4064 = sub nsw i32 %4063, %4061
  %4065 = sitofp i32 %4064 to float
  %4066 = fsub fast float %4056, %4065
  %4067 = call float @dx.op.binary.f32(i32 35, float %4066, float 0.000000e+00)  ; FMax(a,b)
  %4068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4058, %dx.types.Handle %46, float %4029, float %4031, float %4019, float undef, i32 0, i32 0, i32 undef, float %4067)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4069 = extractvalue %dx.types.ResRet.f32 %4068, 0
  %4070 = fcmp ule float %4069, 0x3FE0101020000000
  %4071 = extractvalue %dx.types.CBufRet.i32 %4062, 0
  %4072 = and i32 %4071, 128
  %4073 = icmp ne i32 %4072, 0
  %4074 = and i1 %4070, %4073
  br i1 %4074, label %4225, label %4075

; <label>:4075                                    ; preds = %4009
  %4076 = add i32 %4010, 20
  %4077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4076, i32 undef)  ; BufferLoad(srv,index,wot)
  %4078 = extractvalue %dx.types.ResRet.f32 %4077, 0
  %4079 = add i32 %4010, 24
  %4080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4079, i32 undef)  ; BufferLoad(srv,index,wot)
  %4081 = extractvalue %dx.types.ResRet.f32 %4080, 0
  %4082 = add i32 %4010, 40
  %4083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4082, i32 undef)  ; BufferLoad(srv,index,wot)
  %4084 = extractvalue %dx.types.ResRet.f32 %4083, 0
  %4085 = add i32 %4010, 96
  %4086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4085, i32 undef)  ; BufferLoad(srv,index,wot)
  %4087 = extractvalue %dx.types.ResRet.i32 %4086, 0
  %4088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4089 = extractvalue %dx.types.CBufRet.f32 %4088, 2
  %4090 = fmul fast float %4089, %4029
  %4091 = fmul fast float %4089, %4031
  %4092 = extractvalue %dx.types.CBufRet.f32 %4088, 3
  %4093 = fadd fast float %4090, %4092
  %4094 = fadd fast float %4091, %4092
  %4095 = add i32 %4087, 0
  %4096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4095, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4097 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4096, i32 0)  ; GetDimensions(handle,mipLevel)
  %4098 = extractvalue %dx.types.Dimensions %4097, 0
  %4099 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4098)  ; FirstbitLo(value)
  %4100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4101 = extractvalue %dx.types.CBufRet.i32 %4100, 1
  %4102 = sub nsw i32 %4101, %4099
  %4103 = sitofp i32 %4102 to float
  %4104 = fsub fast float %4053, %4103
  %4105 = call float @dx.op.binary.f32(i32 35, float %4104, float 0.000000e+00)  ; FMax(a,b)
  %4106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4096, %dx.types.Handle %46, float %4093, float %4094, float %4084, float undef, i32 0, i32 0, i32 undef, float %4105)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4107 = extractvalue %dx.types.ResRet.f32 %4106, 0
  %4108 = fmul fast float %4107, %4078
  %4109 = fadd fast float %4108, %4081
  %4110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.f32 %4110, 0
  %4112 = extractvalue %dx.types.CBufRet.f32 %4110, 1
  %4113 = extractvalue %dx.types.CBufRet.f32 %4110, 2
  %4114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4115 = extractvalue %dx.types.CBufRet.f32 %4114, 3
  %4116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4117 = extractvalue %dx.types.CBufRet.f32 %4116, 3
  %4118 = extractvalue %dx.types.CBufRet.f32 %4110, 3
  %4119 = fadd fast float %4115, %3976
  %4120 = fadd fast float %4117, %3977
  %4121 = fadd fast float %4109, %4118
  %4122 = fmul fast float %4119, %4111
  %4123 = call float @dx.op.tertiary.f32(i32 46, float %4120, float %4112, float %4122)  ; FMad(a,b,c)
  %4124 = call float @dx.op.tertiary.f32(i32 46, float %4121, float %4113, float %4123)  ; FMad(a,b,c)
  %4125 = fsub fast float %4124, %4118
  %4126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4127 = extractvalue %dx.types.CBufRet.f32 %4126, 2
  %4128 = fsub fast float %4125, %4127
  %4129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.i32 %4129, 0
  %4131 = call i32 @dx.op.binary.i32(i32 40, i32 %4007, i32 %4130)  ; UMin(a,b)
  %4132 = mul i32 %4131, 36
  %4133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4132, i32 undef)  ; BufferLoad(srv,index,wot)
  %4134 = extractvalue %dx.types.ResRet.i32 %4133, 0
  %4135 = add i32 %4132, 4
  %4136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4137 = extractvalue %dx.types.CBufRet.f32 %4136, 0
  %4138 = fmul fast float %4137, %4029
  %4139 = fmul fast float %4137, %4031
  %4140 = extractvalue %dx.types.CBufRet.f32 %4136, 1
  %4141 = fadd fast float %4138, %4140
  %4142 = fadd fast float %4139, %4140
  %4143 = icmp eq i32 %4134, 0
  br i1 %4143, label %4212, label %4144

; <label>:4144                                    ; preds = %4075
  br label %4145

; <label>:4145                                    ; preds = %4202, %4144
  %4146 = phi float [ %4203, %4202 ], [ 0.000000e+00, %4144 ]
  %4147 = phi float [ %4204, %4202 ], [ 0.000000e+00, %4144 ]
  %4148 = phi float [ %4205, %4202 ], [ 0.000000e+00, %4144 ]
  %4149 = phi float [ %4206, %4202 ], [ 0.000000e+00, %4144 ]
  %4150 = phi float [ %4207, %4202 ], [ 0.000000e+00, %4144 ]
  %4151 = phi float [ %4208, %4202 ], [ 0.000000e+00, %4144 ]
  %4152 = phi i32 [ %4209, %4202 ], [ 0, %4144 ]
  %4153 = shl i32 %4152, 2
  %4154 = add i32 %4020, %4153
  %4155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4154, i32 undef)  ; BufferLoad(srv,index,wot)
  %4156 = extractvalue %dx.types.ResRet.f32 %4155, 0
  %4157 = add i32 %4024, %4153
  %4158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4157, i32 undef)  ; BufferLoad(srv,index,wot)
  %4159 = extractvalue %dx.types.ResRet.i32 %4158, 0
  %4160 = add i32 %4159, 0
  %4161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4160, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4162 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4161, i32 0)  ; GetDimensions(handle,mipLevel)
  %4163 = extractvalue %dx.types.Dimensions %4162, 0
  %4164 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4163)  ; FirstbitLo(value)
  %4165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4166 = extractvalue %dx.types.CBufRet.i32 %4165, 1
  %4167 = sub nsw i32 %4166, %4164
  %4168 = sitofp i32 %4167 to float
  %4169 = fsub fast float %4053, %4168
  %4170 = call float @dx.op.binary.f32(i32 35, float %4169, float 0.000000e+00)  ; FMax(a,b)
  %4171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4161, %dx.types.Handle %46, float %4141, float %4142, float %4156, float undef, i32 0, i32 0, i32 undef, float %4170)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4172 = extractvalue %dx.types.ResRet.f32 %4171, 0
  %4173 = fcmp fast ogt float %4172, 0.000000e+00
  br i1 %4173, label %4174, label %4202

; <label>:4174                                    ; preds = %4145
  %4175 = add i32 %4135, %4153
  %4176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4175, i32 undef)  ; BufferLoad(srv,index,wot)
  %4177 = extractvalue %dx.types.ResRet.i32 %4176, 0
  %4178 = and i32 %4177, 32767
  %4179 = mul nuw nsw i32 %4178, 928
  %4180 = add nuw nsw i32 %4179, 48
  %4181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4180, i32 undef)  ; BufferLoad(srv,index,wot)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 0
  %4183 = extractvalue %dx.types.ResRet.f32 %4181, 1
  %4184 = extractvalue %dx.types.ResRet.f32 %4181, 2
  %4185 = add nuw nsw i32 %4179, 60
  %4186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4185, i32 undef)  ; BufferLoad(srv,index,wot)
  %4187 = extractvalue %dx.types.ResRet.f32 %4186, 0
  %4188 = extractvalue %dx.types.ResRet.f32 %4186, 1
  %4189 = extractvalue %dx.types.ResRet.f32 %4186, 2
  %4190 = fmul fast float %4182, %4172
  %4191 = fmul fast float %4183, %4172
  %4192 = fmul fast float %4184, %4172
  %4193 = fadd fast float %4190, %4146
  %4194 = fadd fast float %4191, %4147
  %4195 = fadd fast float %4192, %4148
  %4196 = fmul fast float %4187, %4172
  %4197 = fmul fast float %4188, %4172
  %4198 = fmul fast float %4189, %4172
  %4199 = fadd fast float %4196, %4149
  %4200 = fadd fast float %4197, %4150
  %4201 = fadd fast float %4198, %4151
  br label %4202

; <label>:4202                                    ; preds = %4174, %4145
  %4203 = phi float [ %4193, %4174 ], [ %4146, %4145 ]
  %4204 = phi float [ %4194, %4174 ], [ %4147, %4145 ]
  %4205 = phi float [ %4195, %4174 ], [ %4148, %4145 ]
  %4206 = phi float [ %4199, %4174 ], [ %4149, %4145 ]
  %4207 = phi float [ %4200, %4174 ], [ %4150, %4145 ]
  %4208 = phi float [ %4201, %4174 ], [ %4151, %4145 ]
  %4209 = add nuw i32 %4152, 1
  %4210 = icmp eq i32 %4209, %4134
  br i1 %4210, label %4211, label %4145

; <label>:4211                                    ; preds = %4202
  br label %4212

; <label>:4212                                    ; preds = %4211, %4075
  %4213 = phi float [ 0.000000e+00, %4075 ], [ %4203, %4211 ]
  %4214 = phi float [ 0.000000e+00, %4075 ], [ %4204, %4211 ]
  %4215 = phi float [ 0.000000e+00, %4075 ], [ %4205, %4211 ]
  %4216 = phi float [ 0.000000e+00, %4075 ], [ %4206, %4211 ]
  %4217 = phi float [ 0.000000e+00, %4075 ], [ %4207, %4211 ]
  %4218 = phi float [ 0.000000e+00, %4075 ], [ %4208, %4211 ]
  %4219 = fadd fast float %4216, %4213
  %4220 = fmul fast float %4219, 0x3F847AE140000000
  %4221 = fadd fast float %4217, %4214
  %4222 = fmul fast float %4221, 0x3F847AE140000000
  %4223 = fadd fast float %4218, %4215
  %4224 = fmul fast float %4223, 0x3F847AE140000000
  br label %4225

; <label>:4225                                    ; preds = %4212, %4009, %3954, %3951, %3922, %3884
  %4226 = phi float [ %3936, %3922 ], [ -1.310720e+05, %3884 ], [ %4128, %4212 ], [ -1.310720e+05, %3954 ], [ -1.310720e+05, %4009 ], [ -1.310720e+05, %3951 ]
  %4227 = phi float [ %3946, %3922 ], [ 0.000000e+00, %3884 ], [ %4220, %4212 ], [ 0.000000e+00, %3954 ], [ 0.000000e+00, %4009 ], [ 0.000000e+00, %3951 ]
  %4228 = phi float [ %3948, %3922 ], [ 0.000000e+00, %3884 ], [ %4222, %4212 ], [ 0.000000e+00, %3954 ], [ 0.000000e+00, %4009 ], [ 0.000000e+00, %3951 ]
  %4229 = phi float [ %3950, %3922 ], [ 0.000000e+00, %3884 ], [ %4224, %4212 ], [ 0.000000e+00, %3954 ], [ 0.000000e+00, %4009 ], [ 0.000000e+00, %3951 ]
  %4230 = phi i1 [ true, %3922 ], [ false, %3884 ], [ true, %4212 ], [ false, %3954 ], [ false, %4009 ], [ false, %3951 ]
  %4231 = and i32 %229, 3
  %4232 = icmp eq i32 %4231, 1
  %4233 = select i1 %4232, float 1.000000e+00, float 0.000000e+00
  %4234 = fsub fast float %4226, %193
  %4235 = call float @dx.op.unary.f32(i32 7, float %4234)  ; Saturate(value)
  %4236 = select i1 %4230, float %4235, float 1.000000e+00
  %4237 = fmul fast float %4236, %4233
  %4238 = icmp eq i32 %4231, 3
  %4239 = select i1 %4238, float 1.000000e+00, float %4237
  %4240 = call float @dx.op.binary.f32(i32 35, float %3827, float %4239)  ; FMax(a,b)
  %4241 = fcmp fast olt float %4239, 1.000000e+00
  %4242 = fcmp uge float %69, 0.000000e+00
  %4243 = and i1 %4242, %4241
  br i1 %4243, label %4244, label %4254

; <label>:4244                                    ; preds = %4225
  %4245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %46, float %69, float %70, float %71, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4246 = extractvalue %dx.types.ResRet.f32 %4245, 0
  %4247 = extractvalue %dx.types.ResRet.f32 %4245, 1
  %4248 = extractvalue %dx.types.ResRet.f32 %4245, 2
  %4249 = fadd fast float %4246, %4240
  %4250 = fcmp ule float %68, 0.000000e+00
  %4251 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4252 = select i1 %4250, float %4251, float 1.000000e+00
  %4253 = fmul fast float %4252, %4248
  br label %4254

; <label>:4254                                    ; preds = %4244, %4225
  %4255 = phi float [ %4249, %4244 ], [ %4240, %4225 ]
  %4256 = phi float [ %4247, %4244 ], [ 0.000000e+00, %4225 ]
  %4257 = phi float [ %4253, %4244 ], [ 0.000000e+00, %4225 ]
  %4258 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4259 = call float @dx.op.unary.f32(i32 7, float %4256)  ; Saturate(value)
  %4260 = call float @dx.op.unary.f32(i32 7, float %4257)  ; Saturate(value)
  %4261 = fcmp fast une float %4259, 0.000000e+00
  %4262 = fcmp fast une float %4260, 0.000000e+00
  %4263 = or i1 %4261, %4262
  br i1 %4263, label %4264, label %4823

; <label>:4264                                    ; preds = %4254
  br i1 %4261, label %4265, label %4538

; <label>:4265                                    ; preds = %4264
  %4266 = call float @dx.op.unary.f32(i32 23, float %3824)  ; Log(value)
  %4267 = fmul fast float %4266, 4.000000e+00
  %4268 = call float @dx.op.unary.f32(i32 21, float %4267)  ; Exp(value)
  %4269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4270 = extractvalue %dx.types.CBufRet.f32 %4269, 0
  %4271 = fmul fast float %4270, %56
  %4272 = fmul fast float %4270, %57
  %4273 = fmul fast float %4270, %58
  %4274 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4275 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4276 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4277 = call float @dx.op.unary.f32(i32 23, float %4274)  ; Log(value)
  %4278 = call float @dx.op.unary.f32(i32 23, float %4275)  ; Log(value)
  %4279 = call float @dx.op.unary.f32(i32 23, float %4276)  ; Log(value)
  %4280 = fmul fast float %4277, 4.000000e+00
  %4281 = fmul fast float %4278, 4.000000e+00
  %4282 = fmul fast float %4279, 4.000000e+00
  %4283 = call float @dx.op.unary.f32(i32 21, float %4280)  ; Exp(value)
  %4284 = call float @dx.op.unary.f32(i32 21, float %4281)  ; Exp(value)
  %4285 = call float @dx.op.unary.f32(i32 21, float %4282)  ; Exp(value)
  %4286 = fadd fast float %4284, %4283
  %4287 = fadd fast float %4286, %4285
  %4288 = fdiv fast float 1.000000e+00, %4287
  %4289 = fmul fast float %4288, %4283
  %4290 = fcmp fast ogt float %65, 0.000000e+00
  %4291 = fcmp fast ogt float %66, 0.000000e+00
  %4292 = fcmp fast ogt float %67, 0.000000e+00
  %4293 = fcmp fast olt float %65, 0.000000e+00
  %4294 = fcmp fast olt float %66, 0.000000e+00
  %4295 = fcmp fast olt float %67, 0.000000e+00
  %4296 = zext i1 %4290 to i32
  %4297 = zext i1 %4291 to i32
  %4298 = zext i1 %4292 to i32
  %4299 = zext i1 %4293 to i32
  %4300 = zext i1 %4294 to i32
  %4301 = zext i1 %4295 to i32
  %4302 = sub nsw i32 %4296, %4299
  %4303 = sub nsw i32 %4297, %4300
  %4304 = sub nsw i32 %4298, %4301
  %4305 = call float @dx.op.unary.f32(i32 83, float %4271)  ; DerivCoarseX(value)
  %4306 = call float @dx.op.unary.f32(i32 83, float %4272)  ; DerivCoarseX(value)
  %4307 = call float @dx.op.unary.f32(i32 83, float %4273)  ; DerivCoarseX(value)
  %4308 = call float @dx.op.unary.f32(i32 84, float %4271)  ; DerivCoarseY(value)
  %4309 = call float @dx.op.unary.f32(i32 84, float %4272)  ; DerivCoarseY(value)
  %4310 = call float @dx.op.unary.f32(i32 84, float %4273)  ; DerivCoarseY(value)
  %4311 = fcmp fast ole float %261, %4289
  %4312 = fmul fast float %4288, %4286
  %4313 = fcmp fast ole float %261, %4312
  %4314 = select i1 %4313, float %4273, float %4271
  %4315 = select i1 %4313, float %4271, float %4272
  %4316 = select i1 %4311, float %4272, float %4314
  %4317 = select i1 %4311, float %4273, float %4315
  %4318 = select i1 %4313, float %4307, float %4305
  %4319 = select i1 %4313, float %4305, float %4306
  %4320 = select i1 %4311, float %4306, float %4318
  %4321 = select i1 %4311, float %4307, float %4319
  %4322 = select i1 %4313, float %4310, float %4308
  %4323 = select i1 %4313, float %4308, float %4309
  %4324 = select i1 %4311, float %4309, float %4322
  %4325 = select i1 %4311, float %4310, float %4323
  %4326 = call float @dx.op.unary.f32(i32 27, float %4316)  ; Round_ni(value)
  %4327 = call float @dx.op.unary.f32(i32 27, float %4317)  ; Round_ni(value)
  %4328 = fptosi float %4326 to i32
  %4329 = fptosi float %4327 to i32
  %4330 = xor i32 %4329, %4328
  %4331 = sitofp i32 %4330 to float
  %4332 = fptosi float %4331 to i32
  %4333 = sitofp i32 %4332 to float
  %4334 = fmul fast float %4333, 0x3FE3C6EF40000000
  %4335 = frem fast float %4326, 2.560000e+02
  %4336 = frem fast float %4327, 2.560000e+02
  %4337 = fptoui float %4335 to i32
  %4338 = fptoui float %4336 to i32
  %4339 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4337, i32 %4338, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4340 = extractvalue %dx.types.ResRet.f32 %4339, 0
  %4341 = extractvalue %dx.types.ResRet.f32 %4339, 1
  %4342 = extractvalue %dx.types.ResRet.f32 %4339, 2
  %4343 = fadd fast float %4340, %4334
  %4344 = fadd fast float %4341, %4334
  %4345 = fadd fast float %4342, %4334
  %4346 = call float @dx.op.unary.f32(i32 22, float %4343)  ; Frc(value)
  %4347 = call float @dx.op.unary.f32(i32 22, float %4344)  ; Frc(value)
  %4348 = call float @dx.op.unary.f32(i32 22, float %4345)  ; Frc(value)
  %4349 = fmul fast float %4348, 0x401921FB60000000
  %4350 = call float @dx.op.unary.f32(i32 13, float %4349)  ; Sin(value)
  %4351 = call float @dx.op.unary.f32(i32 12, float %4349)  ; Cos(value)
  %4352 = fsub fast float -0.000000e+00, %4351
  %4353 = fmul fast float %4351, %4316
  %4354 = call float @dx.op.tertiary.f32(i32 46, float %4350, float %4317, float %4353)  ; FMad(a,b,c)
  %4355 = fmul fast float %4350, %4316
  %4356 = call float @dx.op.tertiary.f32(i32 46, float %4352, float %4317, float %4355)  ; FMad(a,b,c)
  %4357 = fadd fast float %4354, %4346
  %4358 = fadd fast float %4356, %4347
  %4359 = extractvalue %dx.types.CBufRet.f32 %4269, 3
  %4360 = bitcast float %4359 to i32
  %4361 = icmp eq i32 %4360, 0
  br i1 %4361, label %4400, label %4362

; <label>:4362                                    ; preds = %4265
  %4363 = add i32 %4360, 0
  %4364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4365 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4364, %dx.types.Handle %101, float %4357, float %4358, float undef, float undef, i32 0, i32 0, i32 undef, float %4320, float %4321, float undef, float %4324, float %4325, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4366 = extractvalue %dx.types.ResRet.f32 %4365, 0
  %4367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.f32 %4367, 1
  %4369 = extractvalue %dx.types.CBufRet.f32 %4367, 2
  %4370 = fsub fast float 1.000000e+00, %4259
  %4371 = call float @dx.op.binary.f32(i32 35, float %4370, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4372 = bitcast float %4259 to i32
  %4373 = sitofp i32 %4372 to float
  %4374 = fadd fast float %4373, 0xC1CFBF8940000000
  %4375 = fmul fast float %4369, %4374
  %4376 = fadd fast float %4375, 0x41CFBF8940000000
  %4377 = fptosi float %4376 to i32
  %4378 = bitcast i32 %4377 to float
  %4379 = bitcast float %4371 to i32
  %4380 = sitofp i32 %4379 to float
  %4381 = fadd fast float %4380, 0xC1CFBF8940000000
  %4382 = fmul fast float %4381, %4369
  %4383 = fadd fast float %4382, 0x41CFBF8940000000
  %4384 = fptosi float %4383 to i32
  %4385 = bitcast i32 %4384 to float
  %4386 = fmul fast float %4378, %4368
  %4387 = fmul fast float %4385, %4368
  %4388 = fsub fast float %4371, %4386
  %4389 = fadd fast float %4387, %4371
  %4390 = call float @dx.op.unary.f32(i32 7, float %4388)  ; Saturate(value)
  %4391 = call float @dx.op.unary.f32(i32 7, float %4389)  ; Saturate(value)
  %4392 = fsub fast float %4366, %4390
  %4393 = fsub fast float %4391, %4390
  %4394 = bitcast float %4393 to i32
  %4395 = sub nsw i32 2129859010, %4394
  %4396 = bitcast i32 %4395 to float
  %4397 = fmul fast float %4396, %4392
  %4398 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4399 = fcmp fast olt float %4398, 0x3F70101020000000
  br i1 %4399, label %4538, label %4400

; <label>:4400                                    ; preds = %4362, %4265
  %4401 = phi float [ %4398, %4362 ], [ %4259, %4265 ]
  %4402 = fmul fast float %4401, %4268
  %4403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.i32 %4403, 1
  %4405 = extractvalue %dx.types.CBufRet.i32 %4403, 0
  %4406 = add i32 %4405, 0
  %4407 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4406, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4408 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4407, %dx.types.Handle %100, float %4357, float %4358, float undef, float undef, i32 0, i32 0, i32 undef, float %4320, float %4321, float undef, float %4324, float %4325, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4409 = extractvalue %dx.types.ResRet.f32 %4408, 0
  %4410 = extractvalue %dx.types.ResRet.f32 %4408, 1
  %4411 = extractvalue %dx.types.ResRet.f32 %4408, 2
  %4412 = extractvalue %dx.types.ResRet.f32 %4408, 3
  %4413 = and i32 %4404, 255
  %4414 = uitofp i32 %4413 to float
  %4415 = lshr i32 %4404, 8
  %4416 = and i32 %4415, 255
  %4417 = uitofp i32 %4416 to float
  %4418 = fmul fast float %4412, %4414
  %4419 = fadd fast float %4418, %4417
  %4420 = fmul fast float %4419, 0x3F70101000000000
  %4421 = fadd fast float %4420, 0xBFB99999A0000000
  %4422 = call float @dx.op.unary.f32(i32 7, float %4421)  ; Saturate(value)
  %4423 = fmul fast float %4422, 0x3FF1C71C80000000
  %4424 = call float @dx.op.binary.f32(i32 36, float %4420, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4425 = fsub fast float 1.000000e+00, %4423
  %4426 = call float @dx.op.unary.f32(i32 7, float %4425)  ; Saturate(value)
  %4427 = fmul fast float %4426, %4409
  %4428 = fmul fast float %4426, %4410
  %4429 = fmul fast float %4426, %4411
  %4430 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4431 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4432 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4433 = fmul fast float %4423, %4409
  %4434 = fmul fast float %4423, %4410
  %4435 = fmul fast float %4423, %4411
  %4436 = fadd fast float %4433, %4424
  %4437 = fadd fast float %4434, %4424
  %4438 = fadd fast float %4435, %4424
  %4439 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4440 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4441 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.i32 %4442, 3
  %4444 = extractvalue %dx.types.CBufRet.i32 %4442, 2
  %4445 = add i32 %4444, 0
  %4446 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4445, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4447 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4446, %dx.types.Handle %100, float %4357, float %4358, float undef, float undef, i32 0, i32 0, i32 undef, float %4320, float %4321, float undef, float %4324, float %4325, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4448 = extractvalue %dx.types.ResRet.f32 %4447, 0
  %4449 = extractvalue %dx.types.ResRet.f32 %4447, 1
  %4450 = extractvalue %dx.types.ResRet.f32 %4447, 2
  %4451 = extractvalue %dx.types.ResRet.f32 %4447, 3
  %4452 = and i32 %4443, 255
  %4453 = uitofp i32 %4452 to float
  %4454 = lshr i32 %4443, 8
  %4455 = and i32 %4454, 255
  %4456 = uitofp i32 %4455 to float
  %4457 = lshr i32 %4443, 16
  %4458 = and i32 %4457, 255
  %4459 = uitofp i32 %4458 to float
  %4460 = fmul fast float %4459, 0x3F70101000000000
  %4461 = fmul fast float %4448, %4453
  %4462 = fadd fast float %4461, %4456
  %4463 = fmul fast float %4462, 0x3F70101000000000
  %4464 = fadd fast float %4449, -5.000000e-01
  %4465 = fadd fast float %4451, -5.000000e-01
  %4466 = fmul fast float %4464, %4460
  %4467 = fmul fast float %4465, %4460
  %4468 = fadd fast float %4466, 5.000000e-01
  %4469 = fadd fast float %4467, 5.000000e-01
  %4470 = fmul fast float %4468, 2.000000e+00
  %4471 = fadd fast float %4470, -1.000000e+00
  %4472 = fmul fast float %4469, 2.000000e+00
  %4473 = fadd fast float %4472, -1.000000e+00
  %4474 = fadd fast float %4471, %4473
  %4475 = fmul fast float %4474, 5.000000e-01
  %4476 = fsub fast float %4471, %4473
  %4477 = fmul fast float %4476, 5.000000e-01
  %4478 = call float @dx.op.unary.f32(i32 6, float %4475)  ; FAbs(value)
  %4479 = fsub fast float 1.000000e+00, %4478
  %4480 = call float @dx.op.unary.f32(i32 6, float %4477)  ; FAbs(value)
  %4481 = fsub fast float %4479, %4480
  %4482 = call float @dx.op.dot3.f32(i32 55, float %4475, float %4477, float %4481, float %4475, float %4477, float %4481)  ; Dot3(ax,ay,az,bx,by,bz)
  %4483 = call float @dx.op.unary.f32(i32 25, float %4482)  ; Rsqrt(value)
  %4484 = fmul fast float %4475, %4483
  %4485 = fmul fast float %4477, %4483
  %4486 = select i1 %4313, i32 %4303, i32 %4304
  %4487 = select i1 %4311, i32 %4302, i32 %4486
  %4488 = sitofp i32 %4487 to float
  %4489 = fmul fast float %4481, %4488
  %4490 = fmul fast float %4489, %4483
  %4491 = select i1 %4313, float %4490, float %4485
  %4492 = select i1 %4313, float %4485, float %4490
  %4493 = select i1 %4311, float %4490, float %4484
  %4494 = select i1 %4311, float %4485, float %4491
  %4495 = select i1 %4311, float %4484, float %4492
  %4496 = fsub fast float %4430, %3863
  %4497 = fsub fast float %4431, %3864
  %4498 = fsub fast float %4432, %3865
  %4499 = fmul fast float %4496, %4402
  %4500 = fmul fast float %4497, %4402
  %4501 = fmul fast float %4498, %4402
  %4502 = fadd fast float %4499, %3863
  %4503 = fadd fast float %4500, %3864
  %4504 = fadd fast float %4501, %3865
  %4505 = fsub fast float %4439, %3848
  %4506 = fsub fast float %4440, %3849
  %4507 = fsub fast float %4441, %3850
  %4508 = fmul fast float %4505, %4402
  %4509 = fmul fast float %4506, %4402
  %4510 = fmul fast float %4507, %4402
  %4511 = fadd fast float %4508, %3848
  %4512 = fadd fast float %4509, %3849
  %4513 = fadd fast float %4510, %3850
  %4514 = fadd fast float %4493, %3812
  %4515 = fadd fast float %4494, %3813
  %4516 = fadd fast float %4495, %3814
  %4517 = call float @dx.op.dot3.f32(i32 55, float %4514, float %4515, float %4516, float %4514, float %4515, float %4516)  ; Dot3(ax,ay,az,bx,by,bz)
  %4518 = call float @dx.op.unary.f32(i32 25, float %4517)  ; Rsqrt(value)
  %4519 = fmul fast float %4514, %4518
  %4520 = fmul fast float %4515, %4518
  %4521 = fmul fast float %4516, %4518
  %4522 = fsub fast float %4519, %3812
  %4523 = fsub fast float %4520, %3813
  %4524 = fsub fast float %4521, %3814
  %4525 = fmul fast float %4522, %4402
  %4526 = fmul fast float %4523, %4402
  %4527 = fmul fast float %4524, %4402
  %4528 = fadd fast float %4525, %3812
  %4529 = fadd fast float %4526, %3813
  %4530 = fadd fast float %4527, %3814
  %4531 = call float @dx.op.binary.f32(i32 36, float %3824, float %4450)  ; FMin(a,b)
  %4532 = fsub fast float %4531, %3824
  %4533 = fmul fast float %4532, %4402
  %4534 = fadd fast float %4533, %3824
  %4535 = fsub fast float %4463, %3851
  %4536 = fmul fast float %4535, %4402
  %4537 = fadd fast float %4536, %3851
  br label %4538

; <label>:4538                                    ; preds = %4400, %4362, %4264
  %4539 = phi float [ %4502, %4400 ], [ %3863, %4362 ], [ %3863, %4264 ]
  %4540 = phi float [ %4503, %4400 ], [ %3864, %4362 ], [ %3864, %4264 ]
  %4541 = phi float [ %4504, %4400 ], [ %3865, %4362 ], [ %3865, %4264 ]
  %4542 = phi float [ %4511, %4400 ], [ %3848, %4362 ], [ %3848, %4264 ]
  %4543 = phi float [ %4512, %4400 ], [ %3849, %4362 ], [ %3849, %4264 ]
  %4544 = phi float [ %4513, %4400 ], [ %3850, %4362 ], [ %3850, %4264 ]
  %4545 = phi float [ %4528, %4400 ], [ %3812, %4362 ], [ %3812, %4264 ]
  %4546 = phi float [ %4529, %4400 ], [ %3813, %4362 ], [ %3813, %4264 ]
  %4547 = phi float [ %4530, %4400 ], [ %3814, %4362 ], [ %3814, %4264 ]
  %4548 = phi float [ %4537, %4400 ], [ %3851, %4362 ], [ %3851, %4264 ]
  %4549 = phi float [ %4534, %4400 ], [ %3824, %4362 ], [ %3824, %4264 ]
  br i1 %4262, label %4550, label %4823

; <label>:4550                                    ; preds = %4538
  %4551 = call float @dx.op.unary.f32(i32 23, float %4549)  ; Log(value)
  %4552 = fmul fast float %4551, 4.000000e+00
  %4553 = call float @dx.op.unary.f32(i32 21, float %4552)  ; Exp(value)
  %4554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4555 = extractvalue %dx.types.CBufRet.f32 %4554, 0
  %4556 = fmul fast float %4555, %56
  %4557 = fmul fast float %4555, %57
  %4558 = fmul fast float %4555, %58
  %4559 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4560 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4561 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4562 = call float @dx.op.unary.f32(i32 23, float %4559)  ; Log(value)
  %4563 = call float @dx.op.unary.f32(i32 23, float %4560)  ; Log(value)
  %4564 = call float @dx.op.unary.f32(i32 23, float %4561)  ; Log(value)
  %4565 = fmul fast float %4562, 4.000000e+00
  %4566 = fmul fast float %4563, 4.000000e+00
  %4567 = fmul fast float %4564, 4.000000e+00
  %4568 = call float @dx.op.unary.f32(i32 21, float %4565)  ; Exp(value)
  %4569 = call float @dx.op.unary.f32(i32 21, float %4566)  ; Exp(value)
  %4570 = call float @dx.op.unary.f32(i32 21, float %4567)  ; Exp(value)
  %4571 = fadd fast float %4569, %4568
  %4572 = fadd fast float %4571, %4570
  %4573 = fdiv fast float 1.000000e+00, %4572
  %4574 = fmul fast float %4573, %4568
  %4575 = fcmp fast ogt float %65, 0.000000e+00
  %4576 = fcmp fast ogt float %66, 0.000000e+00
  %4577 = fcmp fast ogt float %67, 0.000000e+00
  %4578 = fcmp fast olt float %65, 0.000000e+00
  %4579 = fcmp fast olt float %66, 0.000000e+00
  %4580 = fcmp fast olt float %67, 0.000000e+00
  %4581 = zext i1 %4575 to i32
  %4582 = zext i1 %4576 to i32
  %4583 = zext i1 %4577 to i32
  %4584 = zext i1 %4578 to i32
  %4585 = zext i1 %4579 to i32
  %4586 = zext i1 %4580 to i32
  %4587 = sub nsw i32 %4581, %4584
  %4588 = sub nsw i32 %4582, %4585
  %4589 = sub nsw i32 %4583, %4586
  %4590 = call float @dx.op.unary.f32(i32 83, float %4556)  ; DerivCoarseX(value)
  %4591 = call float @dx.op.unary.f32(i32 83, float %4557)  ; DerivCoarseX(value)
  %4592 = call float @dx.op.unary.f32(i32 83, float %4558)  ; DerivCoarseX(value)
  %4593 = call float @dx.op.unary.f32(i32 84, float %4556)  ; DerivCoarseY(value)
  %4594 = call float @dx.op.unary.f32(i32 84, float %4557)  ; DerivCoarseY(value)
  %4595 = call float @dx.op.unary.f32(i32 84, float %4558)  ; DerivCoarseY(value)
  %4596 = fcmp fast ole float %261, %4574
  %4597 = fmul fast float %4573, %4571
  %4598 = fcmp fast ole float %261, %4597
  %4599 = select i1 %4598, float %4558, float %4556
  %4600 = select i1 %4598, float %4556, float %4557
  %4601 = select i1 %4596, float %4557, float %4599
  %4602 = select i1 %4596, float %4558, float %4600
  %4603 = select i1 %4598, float %4592, float %4590
  %4604 = select i1 %4598, float %4590, float %4591
  %4605 = select i1 %4596, float %4591, float %4603
  %4606 = select i1 %4596, float %4592, float %4604
  %4607 = select i1 %4598, float %4595, float %4593
  %4608 = select i1 %4598, float %4593, float %4594
  %4609 = select i1 %4596, float %4594, float %4607
  %4610 = select i1 %4596, float %4595, float %4608
  %4611 = call float @dx.op.unary.f32(i32 27, float %4601)  ; Round_ni(value)
  %4612 = call float @dx.op.unary.f32(i32 27, float %4602)  ; Round_ni(value)
  %4613 = fptosi float %4611 to i32
  %4614 = fptosi float %4612 to i32
  %4615 = xor i32 %4614, %4613
  %4616 = sitofp i32 %4615 to float
  %4617 = fptosi float %4616 to i32
  %4618 = sitofp i32 %4617 to float
  %4619 = fmul fast float %4618, 0x3FE3C6EF40000000
  %4620 = frem fast float %4611, 2.560000e+02
  %4621 = frem fast float %4612, 2.560000e+02
  %4622 = fptoui float %4620 to i32
  %4623 = fptoui float %4621 to i32
  %4624 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4622, i32 %4623, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4625 = extractvalue %dx.types.ResRet.f32 %4624, 0
  %4626 = extractvalue %dx.types.ResRet.f32 %4624, 1
  %4627 = extractvalue %dx.types.ResRet.f32 %4624, 2
  %4628 = fadd fast float %4625, %4619
  %4629 = fadd fast float %4626, %4619
  %4630 = fadd fast float %4627, %4619
  %4631 = call float @dx.op.unary.f32(i32 22, float %4628)  ; Frc(value)
  %4632 = call float @dx.op.unary.f32(i32 22, float %4629)  ; Frc(value)
  %4633 = call float @dx.op.unary.f32(i32 22, float %4630)  ; Frc(value)
  %4634 = fmul fast float %4633, 0x401921FB60000000
  %4635 = call float @dx.op.unary.f32(i32 13, float %4634)  ; Sin(value)
  %4636 = call float @dx.op.unary.f32(i32 12, float %4634)  ; Cos(value)
  %4637 = fsub fast float -0.000000e+00, %4636
  %4638 = fmul fast float %4636, %4601
  %4639 = call float @dx.op.tertiary.f32(i32 46, float %4635, float %4602, float %4638)  ; FMad(a,b,c)
  %4640 = fmul fast float %4635, %4601
  %4641 = call float @dx.op.tertiary.f32(i32 46, float %4637, float %4602, float %4640)  ; FMad(a,b,c)
  %4642 = fadd fast float %4639, %4631
  %4643 = fadd fast float %4641, %4632
  %4644 = extractvalue %dx.types.CBufRet.f32 %4554, 3
  %4645 = bitcast float %4644 to i32
  %4646 = icmp eq i32 %4645, 0
  br i1 %4646, label %4685, label %4647

; <label>:4647                                    ; preds = %4550
  %4648 = add i32 %4645, 0
  %4649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4650 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4649, %dx.types.Handle %101, float %4642, float %4643, float undef, float undef, i32 0, i32 0, i32 undef, float %4605, float %4606, float undef, float %4609, float %4610, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4651 = extractvalue %dx.types.ResRet.f32 %4650, 0
  %4652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4653 = extractvalue %dx.types.CBufRet.f32 %4652, 1
  %4654 = extractvalue %dx.types.CBufRet.f32 %4652, 2
  %4655 = fsub fast float 1.000000e+00, %4260
  %4656 = call float @dx.op.binary.f32(i32 35, float %4655, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4657 = bitcast float %4260 to i32
  %4658 = sitofp i32 %4657 to float
  %4659 = fadd fast float %4658, 0xC1CFBF8940000000
  %4660 = fmul fast float %4654, %4659
  %4661 = fadd fast float %4660, 0x41CFBF8940000000
  %4662 = fptosi float %4661 to i32
  %4663 = bitcast i32 %4662 to float
  %4664 = bitcast float %4656 to i32
  %4665 = sitofp i32 %4664 to float
  %4666 = fadd fast float %4665, 0xC1CFBF8940000000
  %4667 = fmul fast float %4666, %4654
  %4668 = fadd fast float %4667, 0x41CFBF8940000000
  %4669 = fptosi float %4668 to i32
  %4670 = bitcast i32 %4669 to float
  %4671 = fmul fast float %4663, %4653
  %4672 = fmul fast float %4670, %4653
  %4673 = fsub fast float %4656, %4671
  %4674 = fadd fast float %4672, %4656
  %4675 = call float @dx.op.unary.f32(i32 7, float %4673)  ; Saturate(value)
  %4676 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4677 = fsub fast float %4651, %4675
  %4678 = fsub fast float %4676, %4675
  %4679 = bitcast float %4678 to i32
  %4680 = sub nsw i32 2129859010, %4679
  %4681 = bitcast i32 %4680 to float
  %4682 = fmul fast float %4681, %4677
  %4683 = call float @dx.op.unary.f32(i32 7, float %4682)  ; Saturate(value)
  %4684 = fcmp fast olt float %4683, 0x3F70101020000000
  br i1 %4684, label %4823, label %4685

; <label>:4685                                    ; preds = %4647, %4550
  %4686 = phi float [ %4683, %4647 ], [ %4260, %4550 ]
  %4687 = fmul fast float %4686, %4553
  %4688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4689 = extractvalue %dx.types.CBufRet.i32 %4688, 1
  %4690 = extractvalue %dx.types.CBufRet.i32 %4688, 0
  %4691 = add i32 %4690, 0
  %4692 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4691, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4693 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4692, %dx.types.Handle %100, float %4642, float %4643, float undef, float undef, i32 0, i32 0, i32 undef, float %4605, float %4606, float undef, float %4609, float %4610, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4694 = extractvalue %dx.types.ResRet.f32 %4693, 0
  %4695 = extractvalue %dx.types.ResRet.f32 %4693, 1
  %4696 = extractvalue %dx.types.ResRet.f32 %4693, 2
  %4697 = extractvalue %dx.types.ResRet.f32 %4693, 3
  %4698 = and i32 %4689, 255
  %4699 = uitofp i32 %4698 to float
  %4700 = lshr i32 %4689, 8
  %4701 = and i32 %4700, 255
  %4702 = uitofp i32 %4701 to float
  %4703 = fmul fast float %4697, %4699
  %4704 = fadd fast float %4703, %4702
  %4705 = fmul fast float %4704, 0x3F70101000000000
  %4706 = fadd fast float %4705, 0xBFB99999A0000000
  %4707 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4708 = fmul fast float %4707, 0x3FF1C71C80000000
  %4709 = call float @dx.op.binary.f32(i32 36, float %4705, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4710 = fsub fast float 1.000000e+00, %4708
  %4711 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4712 = fmul fast float %4711, %4694
  %4713 = fmul fast float %4711, %4695
  %4714 = fmul fast float %4711, %4696
  %4715 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4716 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4717 = call float @dx.op.unary.f32(i32 7, float %4714)  ; Saturate(value)
  %4718 = fmul fast float %4708, %4694
  %4719 = fmul fast float %4708, %4695
  %4720 = fmul fast float %4708, %4696
  %4721 = fadd fast float %4718, %4709
  %4722 = fadd fast float %4719, %4709
  %4723 = fadd fast float %4720, %4709
  %4724 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4725 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4726 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4728 = extractvalue %dx.types.CBufRet.i32 %4727, 3
  %4729 = extractvalue %dx.types.CBufRet.i32 %4727, 2
  %4730 = add i32 %4729, 0
  %4731 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4730, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4732 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4731, %dx.types.Handle %100, float %4642, float %4643, float undef, float undef, i32 0, i32 0, i32 undef, float %4605, float %4606, float undef, float %4609, float %4610, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4733 = extractvalue %dx.types.ResRet.f32 %4732, 0
  %4734 = extractvalue %dx.types.ResRet.f32 %4732, 1
  %4735 = extractvalue %dx.types.ResRet.f32 %4732, 2
  %4736 = extractvalue %dx.types.ResRet.f32 %4732, 3
  %4737 = and i32 %4728, 255
  %4738 = uitofp i32 %4737 to float
  %4739 = lshr i32 %4728, 8
  %4740 = and i32 %4739, 255
  %4741 = uitofp i32 %4740 to float
  %4742 = lshr i32 %4728, 16
  %4743 = and i32 %4742, 255
  %4744 = uitofp i32 %4743 to float
  %4745 = fmul fast float %4744, 0x3F70101000000000
  %4746 = fmul fast float %4733, %4738
  %4747 = fadd fast float %4746, %4741
  %4748 = fmul fast float %4747, 0x3F70101000000000
  %4749 = fadd fast float %4734, -5.000000e-01
  %4750 = fadd fast float %4736, -5.000000e-01
  %4751 = fmul fast float %4749, %4745
  %4752 = fmul fast float %4750, %4745
  %4753 = fadd fast float %4751, 5.000000e-01
  %4754 = fadd fast float %4752, 5.000000e-01
  %4755 = fmul fast float %4753, 2.000000e+00
  %4756 = fadd fast float %4755, -1.000000e+00
  %4757 = fmul fast float %4754, 2.000000e+00
  %4758 = fadd fast float %4757, -1.000000e+00
  %4759 = fadd fast float %4756, %4758
  %4760 = fmul fast float %4759, 5.000000e-01
  %4761 = fsub fast float %4756, %4758
  %4762 = fmul fast float %4761, 5.000000e-01
  %4763 = call float @dx.op.unary.f32(i32 6, float %4760)  ; FAbs(value)
  %4764 = fsub fast float 1.000000e+00, %4763
  %4765 = call float @dx.op.unary.f32(i32 6, float %4762)  ; FAbs(value)
  %4766 = fsub fast float %4764, %4765
  %4767 = call float @dx.op.dot3.f32(i32 55, float %4760, float %4762, float %4766, float %4760, float %4762, float %4766)  ; Dot3(ax,ay,az,bx,by,bz)
  %4768 = call float @dx.op.unary.f32(i32 25, float %4767)  ; Rsqrt(value)
  %4769 = fmul fast float %4760, %4768
  %4770 = fmul fast float %4762, %4768
  %4771 = select i1 %4598, i32 %4588, i32 %4589
  %4772 = select i1 %4596, i32 %4587, i32 %4771
  %4773 = sitofp i32 %4772 to float
  %4774 = fmul fast float %4766, %4773
  %4775 = fmul fast float %4774, %4768
  %4776 = select i1 %4598, float %4775, float %4770
  %4777 = select i1 %4598, float %4770, float %4775
  %4778 = select i1 %4596, float %4775, float %4769
  %4779 = select i1 %4596, float %4770, float %4776
  %4780 = select i1 %4596, float %4769, float %4777
  %4781 = fsub fast float %4715, %4539
  %4782 = fsub fast float %4716, %4540
  %4783 = fsub fast float %4717, %4541
  %4784 = fmul fast float %4781, %4687
  %4785 = fmul fast float %4782, %4687
  %4786 = fmul fast float %4783, %4687
  %4787 = fadd fast float %4784, %4539
  %4788 = fadd fast float %4785, %4540
  %4789 = fadd fast float %4786, %4541
  %4790 = fsub fast float %4724, %4542
  %4791 = fsub fast float %4725, %4543
  %4792 = fsub fast float %4726, %4544
  %4793 = fmul fast float %4790, %4687
  %4794 = fmul fast float %4791, %4687
  %4795 = fmul fast float %4792, %4687
  %4796 = fadd fast float %4793, %4542
  %4797 = fadd fast float %4794, %4543
  %4798 = fadd fast float %4795, %4544
  %4799 = fadd fast float %4778, %4545
  %4800 = fadd fast float %4779, %4546
  %4801 = fadd fast float %4780, %4547
  %4802 = call float @dx.op.dot3.f32(i32 55, float %4799, float %4800, float %4801, float %4799, float %4800, float %4801)  ; Dot3(ax,ay,az,bx,by,bz)
  %4803 = call float @dx.op.unary.f32(i32 25, float %4802)  ; Rsqrt(value)
  %4804 = fmul fast float %4799, %4803
  %4805 = fmul fast float %4800, %4803
  %4806 = fmul fast float %4801, %4803
  %4807 = fsub fast float %4804, %4545
  %4808 = fsub fast float %4805, %4546
  %4809 = fsub fast float %4806, %4547
  %4810 = fmul fast float %4807, %4687
  %4811 = fmul fast float %4808, %4687
  %4812 = fmul fast float %4809, %4687
  %4813 = fadd fast float %4810, %4545
  %4814 = fadd fast float %4811, %4546
  %4815 = fadd fast float %4812, %4547
  %4816 = call float @dx.op.binary.f32(i32 36, float %4549, float %4735)  ; FMin(a,b)
  %4817 = fsub fast float %4816, %4549
  %4818 = fmul fast float %4817, %4687
  %4819 = fadd fast float %4818, %4549
  %4820 = fsub fast float %4748, %4548
  %4821 = fmul fast float %4820, %4687
  %4822 = fadd fast float %4821, %4548
  br label %4823

; <label>:4823                                    ; preds = %4685, %4647, %4538, %4254
  %4824 = phi float [ %4787, %4685 ], [ %4539, %4647 ], [ %4539, %4538 ], [ %3863, %4254 ]
  %4825 = phi float [ %4788, %4685 ], [ %4540, %4647 ], [ %4540, %4538 ], [ %3864, %4254 ]
  %4826 = phi float [ %4789, %4685 ], [ %4541, %4647 ], [ %4541, %4538 ], [ %3865, %4254 ]
  %4827 = phi float [ %4796, %4685 ], [ %4542, %4647 ], [ %4542, %4538 ], [ %3848, %4254 ]
  %4828 = phi float [ %4797, %4685 ], [ %4543, %4647 ], [ %4543, %4538 ], [ %3849, %4254 ]
  %4829 = phi float [ %4798, %4685 ], [ %4544, %4647 ], [ %4544, %4538 ], [ %3850, %4254 ]
  %4830 = phi float [ %4813, %4685 ], [ %4545, %4647 ], [ %4545, %4538 ], [ %3812, %4254 ]
  %4831 = phi float [ %4814, %4685 ], [ %4546, %4647 ], [ %4546, %4538 ], [ %3813, %4254 ]
  %4832 = phi float [ %4815, %4685 ], [ %4547, %4647 ], [ %4547, %4538 ], [ %3814, %4254 ]
  %4833 = phi float [ %4822, %4685 ], [ %4548, %4647 ], [ %4548, %4538 ], [ %3851, %4254 ]
  %4834 = phi float [ %4819, %4685 ], [ %4549, %4647 ], [ %4549, %4538 ], [ %3824, %4254 ]
  %4835 = fcmp fast une float %4258, 0.000000e+00
  %4836 = call float @dx.op.dot3.f32(i32 55, float %191, float %192, float %193, float %191, float %192, float %193)  ; Dot3(ax,ay,az,bx,by,bz)
  %4837 = call float @dx.op.unary.f32(i32 25, float %4836)  ; Rsqrt(value)
  br i1 %4835, label %4845, label %4838

; <label>:4838                                    ; preds = %4823
  %4839 = fmul fast float %4837, %191
  %4840 = fmul fast float %4837, %192
  %4841 = fmul fast float %4837, %193
  %4842 = fsub fast float -0.000000e+00, %4839
  %4843 = fsub fast float -0.000000e+00, %4840
  %4844 = fsub fast float -0.000000e+00, %4841
  br label %5012

; <label>:4845                                    ; preds = %4823
  %4846 = fmul fast float %191, %4837
  %4847 = fsub fast float -0.000000e+00, %4846
  %4848 = fmul fast float %192, %4837
  %4849 = fsub fast float -0.000000e+00, %4848
  %4850 = fmul fast float %193, %4837
  %4851 = fsub fast float -0.000000e+00, %4850
  %4852 = call float @dx.op.dot3.f32(i32 55, float %4847, float %4849, float %4851, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4853 = fmul fast float %4258, 2.500000e+00
  %4854 = call float @dx.op.unary.f32(i32 7, float %4853)  ; Saturate(value)
  %4855 = fmul fast float %4258, 0x4013FFFFE0000000
  %4856 = fadd fast float %4855, 0xBFFFFFFFE0000000
  %4857 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4858 = fmul fast float %4258, 0x4004000020000000
  %4859 = fadd fast float %4858, 0xBFF8000040000000
  %4860 = call float @dx.op.unary.f32(i32 7, float %4859)  ; Saturate(value)
  %4861 = fmul fast float %3830, 1.000000e+01
  %4862 = call float @dx.op.unary.f32(i32 7, float %4861)  ; Saturate(value)
  %4863 = fmul fast float %4862, 2.000000e+00
  %4864 = fsub fast float 3.000000e+00, %4863
  %4865 = fmul fast float %4862, %4862
  %4866 = fmul fast float %4865, %4864
  %4867 = fsub fast float 1.000000e+00, %4866
  %4868 = fsub fast float 0x3FE3333340000000, %4833
  %4869 = fmul fast float %4868, 0x400AAAAAA0000000
  %4870 = call float @dx.op.unary.f32(i32 7, float %4869)  ; Saturate(value)
  %4871 = fmul fast float %4867, %4870
  %4872 = fmul fast float %4824, 0x3FEA2B8620000000
  %4873 = fmul fast float %4825, 0x3FEA2B8620000000
  %4874 = fmul fast float %4826, 0x3FEA2B8620000000
  %4875 = fadd fast float %4872, 0x3FC81DFBA0000000
  %4876 = fmul fast float %4875, %4824
  %4877 = fadd fast float %4876, 0x3F910E6020000000
  %4878 = fadd fast float %4873, 0x3FC81DFBA0000000
  %4879 = fmul fast float %4878, %4825
  %4880 = fadd fast float %4879, 0x3F910E6020000000
  %4881 = fadd fast float %4874, 0x3FC81DFBA0000000
  %4882 = fmul fast float %4881, %4826
  %4883 = fadd fast float %4882, 0x3F910E6020000000
  %4884 = call float @dx.op.unary.f32(i32 7, float %4877)  ; Saturate(value)
  %4885 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4886 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4887 = fsub fast float %4884, %4824
  %4888 = fsub fast float %4885, %4825
  %4889 = fsub fast float %4886, %4826
  %4890 = fmul fast float %4887, %4854
  %4891 = fmul fast float %4890, %4871
  %4892 = fmul fast float %4888, %4854
  %4893 = fmul fast float %4892, %4871
  %4894 = fmul fast float %4889, %4854
  %4895 = fmul fast float %4894, %4871
  %4896 = fadd fast float %4891, %4824
  %4897 = fadd fast float %4893, %4825
  %4898 = fadd fast float %4895, %4826
  %4899 = fmul fast float %4834, %4834
  %4900 = fmul fast float %4899, %4899
  %4901 = fadd fast float %4857, 1.000000e+00
  %4902 = fsub fast float %4901, %4871
  %4903 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  %4904 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4905 = call float @dx.op.unary.f32(i32 7, float %4904)  ; Saturate(value)
  %4906 = fsub fast float 1.000000e+00, %4900
  %4907 = call float @dx.op.binary.f32(i32 36, float %4903, float %4906)  ; FMin(a,b)
  %4908 = call float @dx.op.unary.f32(i32 7, float %4860)  ; Saturate(value)
  %4909 = call float @dx.op.binary.f32(i32 35, float %4907, float %4908)  ; FMax(a,b)
  %4910 = fadd fast float %4905, 0xBFE4CCCCC0000000
  %4911 = fmul fast float %4910, 0x4006DB6DA0000000
  %4912 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4913 = fmul fast float %4912, 2.000000e+00
  %4914 = fsub fast float 3.000000e+00, %4913
  %4915 = bitcast float %4827 to i32
  %4916 = ashr i32 %4915, 1
  %4917 = add nsw i32 %4916, 532487669
  %4918 = bitcast i32 %4917 to float
  %4919 = fsub fast float 1.000000e+00, %4918
  %4920 = bitcast float %4919 to i32
  %4921 = sub nsw i32 2129859010, %4920
  %4922 = bitcast i32 %4921 to float
  %4923 = fmul fast float %4922, 2.000000e+00
  %4924 = bitcast float %4828 to i32
  %4925 = ashr i32 %4924, 1
  %4926 = add nsw i32 %4925, 532487669
  %4927 = bitcast i32 %4926 to float
  %4928 = fsub fast float 1.000000e+00, %4927
  %4929 = bitcast float %4928 to i32
  %4930 = sub nsw i32 2129859010, %4929
  %4931 = bitcast i32 %4930 to float
  %4932 = fmul fast float %4931, 2.000000e+00
  %4933 = bitcast float %4829 to i32
  %4934 = ashr i32 %4933, 1
  %4935 = add nsw i32 %4934, 532487669
  %4936 = bitcast i32 %4935 to float
  %4937 = fsub fast float 1.000000e+00, %4936
  %4938 = bitcast float %4937 to i32
  %4939 = sub nsw i32 2129859010, %4938
  %4940 = bitcast i32 %4939 to float
  %4941 = fmul fast float %4940, 2.000000e+00
  %4942 = fsub fast float 0x4002A9FBE0000000, %4923
  %4943 = fadd fast float %4923, 0x3FD54FDF00000000
  %4944 = bitcast float %4943 to i32
  %4945 = sub nsw i32 2129859010, %4944
  %4946 = bitcast i32 %4945 to float
  %4947 = fmul fast float %4946, %4942
  %4948 = fmul fast float %4947, %4947
  %4949 = fsub fast float 0x4002A9FBE0000000, %4932
  %4950 = fadd fast float %4932, 0x3FD54FDF00000000
  %4951 = bitcast float %4950 to i32
  %4952 = sub nsw i32 2129859010, %4951
  %4953 = bitcast i32 %4952 to float
  %4954 = fmul fast float %4953, %4949
  %4955 = fmul fast float %4954, %4954
  %4956 = fsub fast float 0x4002A9FBE0000000, %4941
  %4957 = fadd fast float %4941, 0x3FD54FDF00000000
  %4958 = bitcast float %4957 to i32
  %4959 = sub nsw i32 2129859010, %4958
  %4960 = bitcast i32 %4959 to float
  %4961 = fmul fast float %4960, %4956
  %4962 = fmul fast float %4961, %4961
  %4963 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4948)  ; FMax(a,b)
  %4964 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4955)  ; FMax(a,b)
  %4965 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4962)  ; FMax(a,b)
  %4966 = fsub fast float 1.000000e+00, %4852
  %4967 = fadd fast float %4966, %4867
  %4968 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  %4969 = fsub fast float 1.000000e+00, %4239
  %4970 = fmul fast float %4909, %4969
  %4971 = fmul fast float %4912, %4912
  %4972 = fmul fast float %4971, %4970
  %4973 = fmul fast float %4972, %4914
  %4974 = fmul fast float %4969, 0xBFE99999A0000000
  %4975 = fmul fast float %4974, %4854
  %4976 = fmul fast float %4975, %4871
  %4977 = fadd fast float %4976, 1.000000e+00
  %4978 = fadd fast float %4833, -1.000000e+00
  %4979 = fmul fast float %4977, %4978
  %4980 = fadd fast float %4979, 1.000000e+00
  %4981 = fsub fast float %4963, %4827
  %4982 = fsub fast float %4964, %4828
  %4983 = fsub fast float %4965, %4829
  %4984 = fmul fast float %4973, %4981
  %4985 = fmul fast float %4973, %4982
  %4986 = fmul fast float %4973, %4983
  %4987 = fadd fast float %4984, %4827
  %4988 = fadd fast float %4985, %4828
  %4989 = fadd fast float %4986, %4829
  %4990 = fsub fast float %111, %4830
  %4991 = fsub fast float %112, %4831
  %4992 = fsub fast float %113, %4832
  %4993 = fmul fast float %4973, %4990
  %4994 = fmul fast float %4973, %4991
  %4995 = fmul fast float %4973, %4992
  %4996 = fadd fast float %4993, %4830
  %4997 = fadd fast float %4994, %4831
  %4998 = fadd fast float %4995, %4832
  %4999 = fmul fast float %4973, %4968
  %5000 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %5001 = fsub fast float 1.000000e+00, %5000
  %5002 = fmul fast float %4999, %5001
  %5003 = fadd fast float %5002, %5000
  %5004 = fsub fast float 1.000000e+00, %4834
  %5005 = fmul fast float %4973, %5004
  %5006 = fadd fast float %5005, %4834
  %5007 = call float @dx.op.dot3.f32(i32 55, float %4996, float %4997, float %4998, float %4996, float %4997, float %4998)  ; Dot3(ax,ay,az,bx,by,bz)
  %5008 = call float @dx.op.unary.f32(i32 25, float %5007)  ; Rsqrt(value)
  %5009 = fmul fast float %4996, %5008
  %5010 = fmul fast float %4997, %5008
  %5011 = fmul fast float %4998, %5008
  br label %5012

; <label>:5012                                    ; preds = %4845, %4838
  %5013 = phi float [ %4844, %4838 ], [ %4851, %4845 ]
  %5014 = phi float [ %4843, %4838 ], [ %4849, %4845 ]
  %5015 = phi float [ %4842, %4838 ], [ %4847, %4845 ]
  %5016 = phi float [ %4841, %4838 ], [ %4850, %4845 ]
  %5017 = phi float [ %4840, %4838 ], [ %4848, %4845 ]
  %5018 = phi float [ %4839, %4838 ], [ %4846, %4845 ]
  %5019 = phi float [ %4824, %4838 ], [ %4896, %4845 ]
  %5020 = phi float [ %4825, %4838 ], [ %4897, %4845 ]
  %5021 = phi float [ %4826, %4838 ], [ %4898, %4845 ]
  %5022 = phi float [ %4827, %4838 ], [ %4987, %4845 ]
  %5023 = phi float [ %4828, %4838 ], [ %4988, %4845 ]
  %5024 = phi float [ %4829, %4838 ], [ %4989, %4845 ]
  %5025 = phi float [ %4830, %4838 ], [ %5009, %4845 ]
  %5026 = phi float [ %4831, %4838 ], [ %5010, %4845 ]
  %5027 = phi float [ %4832, %4838 ], [ %5011, %4845 ]
  %5028 = phi float [ %4833, %4838 ], [ %5003, %4845 ]
  %5029 = phi float [ %4834, %4838 ], [ %5006, %4845 ]
  %5030 = fsub fast float -0.000000e+00, %193
  %5031 = select i1 %250, float 0.000000e+00, float %5024
  %5032 = call float @dx.op.dot3.f32(i32 55, float %5025, float %5026, float %5027, float %5015, float %5014, float %5013)  ; Dot3(ax,ay,az,bx,by,bz)
  %5033 = call float @dx.op.unary.f32(i32 7, float %5032)  ; Saturate(value)
  %5034 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5017, float %5016, float %5025, float %5026, float %5027)  ; Dot3(ax,ay,az,bx,by,bz)
  %5035 = fmul fast float %5034, 2.000000e+00
  %5036 = fmul fast float %5035, %5025
  %5037 = fmul fast float %5035, %5026
  %5038 = fmul fast float %5035, %5027
  %5039 = fsub fast float %5018, %5036
  %5040 = fsub fast float %5017, %5037
  %5041 = fsub fast float %5016, %5038
  %5042 = call float @dx.op.binary.f32(i32 36, float %5029, float 1.000000e+00)  ; FMin(a,b)
  %5043 = fsub fast float 1.000000e+00, %5029
  %5044 = bitcast float %5043 to i32
  %5045 = sub nsw i32 2129859010, %5044
  %5046 = bitcast i32 %5045 to float
  %5047 = fsub fast float 1.000000e+00, %75
  %5048 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5049 = call float @dx.op.binary.f32(i32 35, float %5048, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5050 = fdiv fast float %5047, %5049
  %5051 = call float @dx.op.dot3.f32(i32 55, float %5025, float %5026, float %5027, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5052 = call float @dx.op.unary.f32(i32 7, float %5051)  ; Saturate(value)
  %5053 = fmul fast float %5052, 5.000000e-01
  %5054 = fadd fast float %5053, 5.000000e-01
  %5055 = fmul fast float %5054, %75
  %5056 = call float @dx.op.dot3.f32(i32 55, float %5025, float %5026, float %5027, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5057 = call float @dx.op.unary.f32(i32 7, float %5056)  ; Saturate(value)
  %5058 = fmul fast float %5057, %5050
  %5059 = fadd fast float %5055, %5058
  %5060 = fsub fast float 5.000000e-01, %5053
  %5061 = fmul fast float %5060, %5019
  %5062 = fmul fast float %5060, %5020
  %5063 = fmul fast float %5060, %5021
  %5064 = fadd fast float %5059, %5061
  %5065 = fadd fast float %5059, %5062
  %5066 = fadd fast float %5059, %5063
  %5067 = call float @dx.op.dot3.f32(i32 55, float %5039, float %5040, float %5041, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5068 = call float @dx.op.unary.f32(i32 7, float %5067)  ; Saturate(value)
  %5069 = fmul fast float %5068, 5.000000e-01
  %5070 = fadd fast float %5069, 5.000000e-01
  %5071 = fmul fast float %5070, %75
  %5072 = call float @dx.op.dot3.f32(i32 55, float %5039, float %5040, float %5041, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5073 = call float @dx.op.unary.f32(i32 7, float %5072)  ; Saturate(value)
  %5074 = fmul fast float %5073, %5050
  %5075 = fadd fast float %5071, %5074
  %5076 = fsub fast float 5.000000e-01, %5069
  %5077 = fmul fast float %5076, %5019
  %5078 = fmul fast float %5076, %5020
  %5079 = fmul fast float %5076, %5021
  %5080 = fadd fast float %5075, %5077
  %5081 = fadd fast float %5075, %5078
  %5082 = fadd fast float %5075, %5079
  %5083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5084 = extractvalue %dx.types.CBufRet.f32 %5083, 0
  %5085 = call float @dx.op.binary.f32(i32 36, float %5019, float %5084)  ; FMin(a,b)
  %5086 = fsub fast float 1.000000e+00, %5042
  %5087 = fmul fast float %5085, %5086
  %5088 = fsub fast float 1.000000e+00, %5087
  %5089 = bitcast float %5088 to i32
  %5090 = sub nsw i32 2129859010, %5089
  %5091 = bitcast i32 %5090 to float
  %5092 = call float @dx.op.binary.f32(i32 36, float %5020, float %5084)  ; FMin(a,b)
  %5093 = fmul fast float %5092, %5086
  %5094 = fsub fast float 1.000000e+00, %5093
  %5095 = bitcast float %5094 to i32
  %5096 = sub nsw i32 2129859010, %5095
  %5097 = bitcast i32 %5096 to float
  %5098 = call float @dx.op.binary.f32(i32 36, float %5021, float %5084)  ; FMin(a,b)
  %5099 = fmul fast float %5098, %5086
  %5100 = fsub fast float 1.000000e+00, %5099
  %5101 = bitcast float %5100 to i32
  %5102 = sub nsw i32 2129859010, %5101
  %5103 = bitcast i32 %5102 to float
  %5104 = fmul fast float %5042, %76
  %5105 = fmul fast float %5104, %5064
  %5106 = fmul fast float %5105, %5091
  %5107 = fmul fast float %5042, %77
  %5108 = fmul fast float %5107, %5065
  %5109 = fmul fast float %5108, %5097
  %5110 = fmul fast float %5042, %78
  %5111 = fmul fast float %5110, %5066
  %5112 = fmul fast float %5111, %5103
  %5113 = call float @dx.op.binary.f32(i32 36, float %5022, float %5084)  ; FMin(a,b)
  %5114 = fmul fast float %5113, %5086
  %5115 = fsub fast float 1.000000e+00, %5114
  %5116 = bitcast float %5115 to i32
  %5117 = sub nsw i32 2129859010, %5116
  %5118 = bitcast i32 %5117 to float
  %5119 = call float @dx.op.binary.f32(i32 36, float %5023, float %5084)  ; FMin(a,b)
  %5120 = fmul fast float %5119, %5086
  %5121 = fsub fast float 1.000000e+00, %5120
  %5122 = bitcast float %5121 to i32
  %5123 = sub nsw i32 2129859010, %5122
  %5124 = bitcast i32 %5123 to float
  %5125 = call float @dx.op.binary.f32(i32 36, float %5031, float %5084)  ; FMin(a,b)
  %5126 = fmul fast float %5125, %5086
  %5127 = fsub fast float 1.000000e+00, %5126
  %5128 = bitcast float %5127 to i32
  %5129 = sub nsw i32 2129859010, %5128
  %5130 = bitcast i32 %5129 to float
  %5131 = fmul fast float %5104, %5080
  %5132 = fmul fast float %5131, %5118
  %5133 = fmul fast float %5107, %5081
  %5134 = fmul fast float %5133, %5124
  %5135 = fmul fast float %5110, %5082
  %5136 = fmul fast float %5135, %5130
  %5137 = call float @dx.op.dot3.f32(i32 55, float %5106, float %5109, float %5112, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5138 = select i1 %250, float 0.000000e+00, float %5106
  %5139 = select i1 %250, float %5137, float %5109
  %5140 = select i1 %250, float 0.000000e+00, float %5112
  %5141 = call float @dx.op.dot3.f32(i32 55, float %5132, float %5134, float %5136, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5142 = select i1 %250, float 0.000000e+00, float %5132
  %5143 = select i1 %250, float %5141, float %5134
  %5144 = select i1 %250, float 0.000000e+00, float %5136
  %5145 = fmul fast float %5033, 9.843750e-01
  %5146 = fmul fast float %5028, 9.843750e-01
  %5147 = fadd fast float %5145, 7.812500e-03
  %5148 = fadd fast float %5146, 7.812500e-03
  %5149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %5147, float %5148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5150 = extractvalue %dx.types.ResRet.f32 %5149, 2
  %5151 = extractvalue %dx.types.ResRet.f32 %5149, 3
  %5152 = fmul fast float %5150, %5022
  %5153 = fmul fast float %5150, %5023
  %5154 = fmul fast float %5150, %5031
  %5155 = fadd fast float %5152, %5151
  %5156 = fadd fast float %5153, %5151
  %5157 = fadd fast float %5154, %5151
  %5158 = fcmp fast ogt float %3825, 0.000000e+00
  br i1 %5158, label %5159, label %5185

; <label>:5159                                    ; preds = %5012
  %5160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3825, float %5033, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5161 = extractvalue %dx.types.ResRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.ResRet.f32 %5160, 1
  %5163 = extractvalue %dx.types.ResRet.f32 %5160, 2
  %5164 = fadd fast float %5161, -5.000000e-01
  %5165 = fadd fast float %5162, -5.000000e-01
  %5166 = fadd fast float %5163, -5.000000e-01
  %5167 = fsub fast float 1.000000e+00, %5022
  %5168 = fsub fast float 1.000000e+00, %5023
  %5169 = fsub fast float 1.000000e+00, %5031
  %5170 = fmul fast float %5022, 4.000000e+00
  %5171 = fmul fast float %5170, %5167
  %5172 = fmul fast float %5171, %5164
  %5173 = fmul fast float %5023, 4.000000e+00
  %5174 = fmul fast float %5173, %5168
  %5175 = fmul fast float %5174, %5165
  %5176 = fmul fast float %5031, 4.000000e+00
  %5177 = fmul fast float %5176, %5169
  %5178 = fmul fast float %5177, %5166
  %5179 = fadd fast float %5172, %5155
  %5180 = fadd fast float %5175, %5156
  %5181 = fadd fast float %5178, %5157
  %5182 = call float @dx.op.unary.f32(i32 7, float %5179)  ; Saturate(value)
  %5183 = call float @dx.op.unary.f32(i32 7, float %5180)  ; Saturate(value)
  %5184 = call float @dx.op.unary.f32(i32 7, float %5181)  ; Saturate(value)
  br label %5185

; <label>:5185                                    ; preds = %5159, %5012
  %5186 = phi float [ %5182, %5159 ], [ %5155, %5012 ]
  %5187 = phi float [ %5183, %5159 ], [ %5156, %5012 ]
  %5188 = phi float [ %5184, %5159 ], [ %5157, %5012 ]
  %5189 = call float @dx.op.binary.f32(i32 35, float %5187, float %5188)  ; FMax(a,b)
  %5190 = call float @dx.op.binary.f32(i32 35, float %5186, float %5189)  ; FMax(a,b)
  %5191 = fsub fast float 1.000000e+00, %5190
  %5192 = fmul fast float %5191, %5138
  %5193 = fmul fast float %5191, %5139
  %5194 = fmul fast float %5191, %5140
  %5195 = call float @dx.op.dot3.f32(i32 55, float %5019, float %5020, float %5021, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5196 = fcmp fast ogt float %5195, 0x3E7FF19E20000000
  %5197 = fdiv fast float 1.000000e+00, %5195
  %5198 = select i1 %5196, float %5197, float 0.000000e+00
  %5199 = fmul fast float %5198, %5019
  %5200 = fmul fast float %5198, %5020
  %5201 = fmul fast float %5198, %5021
  %5202 = fadd fast float %5199, -1.000000e+00
  %5203 = fadd fast float %5200, -1.000000e+00
  %5204 = fadd fast float %5201, -1.000000e+00
  %5205 = fmul fast float %5202, 5.000000e-01
  %5206 = fmul fast float %5203, 5.000000e-01
  %5207 = fmul fast float %5204, 5.000000e-01
  %5208 = fadd fast float %5205, 1.000000e+00
  %5209 = fadd fast float %5206, 1.000000e+00
  %5210 = fadd fast float %5207, 1.000000e+00
  %5211 = fmul fast float %5186, %5142
  %5212 = fmul fast float %5187, %5143
  %5213 = fmul fast float %5188, %5144
  %5214 = fsub fast float 1.000000e+00, %5033
  %5215 = bitcast float %5214 to i32
  %5216 = sitofp i32 %5215 to float
  %5217 = fmul fast float %5216, 5.000000e+00
  %5218 = fadd fast float %5217, 0xC1EFBF8940000000
  %5219 = fptosi float %5218 to i32
  %5220 = bitcast i32 %5219 to float
  %5221 = fmul fast float %5220, %3826
  %5222 = fmul fast float %5138, %5221
  %5223 = fmul fast float %5222, %5191
  %5224 = fmul fast float %5223, %5208
  %5225 = fmul fast float %5139, %5221
  %5226 = fmul fast float %5225, %5191
  %5227 = fmul fast float %5226, %5209
  %5228 = fmul fast float %5140, %5221
  %5229 = fmul fast float %5228, %5191
  %5230 = fmul fast float %5229, %5210
  %5231 = fmul fast float %5192, %3822
  %5232 = fmul fast float %5193, %3822
  %5233 = fmul fast float %5194, %3822
  %5234 = fadd fast float %5211, %3818
  %5235 = fadd fast float %5234, %5224
  %5236 = fmul fast float %5235, %3822
  %5237 = fadd fast float %5212, %3819
  %5238 = fadd fast float %5237, %5227
  %5239 = fmul fast float %5238, %3822
  %5240 = fadd fast float %5213, %3820
  %5241 = fadd fast float %5240, %5230
  %5242 = fmul fast float %5241, %3822
  %5243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5244 = extractvalue %dx.types.CBufRet.f32 %5243, 3
  %5245 = fcmp fast oeq float %5244, 0.000000e+00
  br i1 %5245, label %6330, label %5246

; <label>:5246                                    ; preds = %5185
  %5247 = extractvalue %dx.types.CBufRet.f32 %5243, 0
  %5248 = extractvalue %dx.types.CBufRet.f32 %5243, 1
  %5249 = extractvalue %dx.types.CBufRet.f32 %5243, 2
  %5250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5251 = extractvalue %dx.types.CBufRet.f32 %5250, 0
  %5252 = extractvalue %dx.types.CBufRet.f32 %5250, 1
  %5253 = extractvalue %dx.types.CBufRet.f32 %5250, 2
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 0
  %5256 = extractvalue %dx.types.CBufRet.f32 %5254, 1
  %5257 = call float @dx.op.dot3.f32(i32 55, float %5251, float %5252, float %5253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5258 = select i1 %250, float %5255, float %5251
  %5259 = select i1 %250, float %5257, float %5252
  %5260 = select i1 %250, float %5256, float %5253
  %5261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5262 = extractvalue %dx.types.CBufRet.f32 %5261, 2
  %5263 = fmul fast float %5262, %111
  %5264 = fmul fast float %5262, %112
  %5265 = fmul fast float %5262, %113
  %5266 = fadd fast float %5263, %191
  %5267 = fadd fast float %5264, %192
  %5268 = fadd fast float %5265, %193
  %5269 = fcmp fast olt float %5244, 0.000000e+00
  br i1 %5269, label %5909, label %5270

; <label>:5270                                    ; preds = %5246
  %5271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.f32 %5271, 0
  %5273 = extractvalue %dx.types.CBufRet.f32 %5271, 1
  %5274 = extractvalue %dx.types.CBufRet.f32 %5271, 2
  %5275 = extractvalue %dx.types.CBufRet.f32 %5271, 3
  %5276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5277 = extractvalue %dx.types.CBufRet.f32 %5276, 0
  %5278 = extractvalue %dx.types.CBufRet.f32 %5276, 1
  %5279 = extractvalue %dx.types.CBufRet.f32 %5276, 2
  %5280 = extractvalue %dx.types.CBufRet.f32 %5276, 3
  %5281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5282 = extractvalue %dx.types.CBufRet.f32 %5281, 0
  %5283 = extractvalue %dx.types.CBufRet.f32 %5281, 1
  %5284 = extractvalue %dx.types.CBufRet.f32 %5281, 2
  %5285 = extractvalue %dx.types.CBufRet.f32 %5281, 3
  %5286 = fmul fast float %5272, %5266
  %5287 = call float @dx.op.tertiary.f32(i32 46, float %5267, float %5273, float %5286)  ; FMad(a,b,c)
  %5288 = call float @dx.op.tertiary.f32(i32 46, float %5268, float %5274, float %5287)  ; FMad(a,b,c)
  %5289 = fadd fast float %5288, %5275
  %5290 = fmul fast float %5277, %5266
  %5291 = call float @dx.op.tertiary.f32(i32 46, float %5267, float %5278, float %5290)  ; FMad(a,b,c)
  %5292 = call float @dx.op.tertiary.f32(i32 46, float %5268, float %5279, float %5291)  ; FMad(a,b,c)
  %5293 = fadd fast float %5292, %5280
  %5294 = fmul fast float %5282, %5266
  %5295 = call float @dx.op.tertiary.f32(i32 46, float %5267, float %5283, float %5294)  ; FMad(a,b,c)
  %5296 = call float @dx.op.tertiary.f32(i32 46, float %5268, float %5284, float %5295)  ; FMad(a,b,c)
  %5297 = fadd fast float %5296, %5285
  %5298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5299 = extractvalue %dx.types.CBufRet.f32 %5298, 0
  %5300 = fcmp fast une float %5299, 0.000000e+00
  %5301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.f32 %5301, 0
  %5303 = extractvalue %dx.types.CBufRet.f32 %5301, 1
  %5304 = extractvalue %dx.types.CBufRet.f32 %5301, 3
  %5305 = fmul fast float %5304, %5289
  %5306 = fmul fast float %5304, %5293
  %5307 = fadd fast float %5305, %5302
  %5308 = fadd fast float %5306, %5303
  %5309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5309, 0
  %5311 = extractvalue %dx.types.CBufRet.f32 %5309, 1
  %5312 = extractvalue %dx.types.CBufRet.f32 %5309, 3
  %5313 = fmul fast float %5312, %5289
  %5314 = fmul fast float %5312, %5293
  %5315 = fadd fast float %5313, %5310
  %5316 = fadd fast float %5314, %5311
  %5317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5318 = extractvalue %dx.types.CBufRet.f32 %5317, 1
  %5319 = fsub fast float %5318, %5297
  %5320 = extractvalue %dx.types.CBufRet.f32 %5317, 2
  %5321 = fmul fast float %5319, %5320
  %5322 = fsub fast float 1.000000e+00, %5321
  %5323 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  br i1 %5300, label %5384, label %5324

; <label>:5324                                    ; preds = %5270
  %5325 = extractvalue %dx.types.CBufRet.f32 %5309, 2
  %5326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5327 = extractvalue %dx.types.CBufRet.f32 %5326, 2
  %5328 = fadd fast float %5327, %5325
  %5329 = fcmp fast ogt float %5328, 0.000000e+00
  br i1 %5329, label %5330, label %5354

; <label>:5330                                    ; preds = %5324
  %5331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5332 = extractvalue %dx.types.CBufRet.f32 %5331, 0
  %5333 = extractvalue %dx.types.CBufRet.f32 %5331, 1
  %5334 = fsub fast float %5315, %5332
  %5335 = fsub fast float %5316, %5333
  %5336 = fcmp fast olt float %5334, 0.000000e+00
  %5337 = fcmp fast olt float %5335, 0.000000e+00
  %5338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5339 = extractvalue %dx.types.CBufRet.f32 %5338, 0
  %5340 = extractvalue %dx.types.CBufRet.f32 %5338, 1
  %5341 = extractvalue %dx.types.CBufRet.f32 %5338, 2
  %5342 = extractvalue %dx.types.CBufRet.f32 %5338, 3
  %5343 = select i1 %5336, float %5339, float %5341
  %5344 = select i1 %5337, float %5340, float %5342
  %5345 = fmul fast float %5343, %5334
  %5346 = fmul fast float %5344, %5335
  %5347 = call float @dx.op.unary.f32(i32 6, float %5345)  ; FAbs(value)
  %5348 = call float @dx.op.unary.f32(i32 6, float %5346)  ; FAbs(value)
  %5349 = extractvalue %dx.types.CBufRet.f32 %5261, 0
  %5350 = call float @dx.op.binary.f32(i32 35, float %5347, float %5348)  ; FMax(a,b)
  %5351 = fsub fast float %5349, %5350
  %5352 = call float @dx.op.unary.f32(i32 7, float %5351)  ; Saturate(value)
  %5353 = fmul fast float %5352, %5323
  br label %5354

; <label>:5354                                    ; preds = %5330, %5324
  %5355 = phi float [ %5353, %5330 ], [ 0.000000e+00, %5324 ]
  %5356 = extractvalue %dx.types.CBufRet.f32 %5301, 2
  %5357 = extractvalue %dx.types.CBufRet.f32 %5326, 1
  %5358 = fadd fast float %5357, %5356
  %5359 = fcmp fast ogt float %5358, 0.000000e+00
  br i1 %5359, label %5360, label %5384

; <label>:5360                                    ; preds = %5354
  %5361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5362 = extractvalue %dx.types.CBufRet.f32 %5361, 0
  %5363 = extractvalue %dx.types.CBufRet.f32 %5361, 1
  %5364 = fsub fast float %5307, %5362
  %5365 = fsub fast float %5308, %5363
  %5366 = fcmp fast olt float %5364, 0.000000e+00
  %5367 = fcmp fast olt float %5365, 0.000000e+00
  %5368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5369 = extractvalue %dx.types.CBufRet.f32 %5368, 0
  %5370 = extractvalue %dx.types.CBufRet.f32 %5368, 1
  %5371 = extractvalue %dx.types.CBufRet.f32 %5368, 2
  %5372 = extractvalue %dx.types.CBufRet.f32 %5368, 3
  %5373 = select i1 %5366, float %5369, float %5371
  %5374 = select i1 %5367, float %5370, float %5372
  %5375 = fmul fast float %5373, %5364
  %5376 = fmul fast float %5374, %5365
  %5377 = call float @dx.op.unary.f32(i32 6, float %5375)  ; FAbs(value)
  %5378 = call float @dx.op.unary.f32(i32 6, float %5376)  ; FAbs(value)
  %5379 = extractvalue %dx.types.CBufRet.f32 %5261, 0
  %5380 = call float @dx.op.binary.f32(i32 35, float %5377, float %5378)  ; FMax(a,b)
  %5381 = fsub fast float %5379, %5380
  %5382 = call float @dx.op.unary.f32(i32 7, float %5381)  ; Saturate(value)
  %5383 = fmul fast float %5382, %5323
  br label %5384

; <label>:5384                                    ; preds = %5360, %5354, %5270
  %5385 = phi float [ 0.000000e+00, %5270 ], [ %5383, %5360 ], [ 0.000000e+00, %5354 ]
  %5386 = phi float [ 0.000000e+00, %5270 ], [ %5355, %5360 ], [ %5355, %5354 ]
  %5387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5388 = extractvalue %dx.types.CBufRet.f32 %5387, 1
  %5389 = call float @dx.op.unary.f32(i32 7, float %5388)  ; Saturate(value)
  %5390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5391 = extractvalue %dx.types.CBufRet.f32 %5390, 0
  %5392 = extractvalue %dx.types.CBufRet.f32 %5390, 1
  %5393 = fsub fast float %5289, %5391
  %5394 = fsub fast float %5293, %5392
  %5395 = fcmp fast olt float %5393, 0.000000e+00
  %5396 = fcmp fast olt float %5394, 0.000000e+00
  %5397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5398 = extractvalue %dx.types.CBufRet.f32 %5397, 0
  %5399 = extractvalue %dx.types.CBufRet.f32 %5397, 1
  %5400 = extractvalue %dx.types.CBufRet.f32 %5397, 2
  %5401 = extractvalue %dx.types.CBufRet.f32 %5397, 3
  %5402 = select i1 %5395, float %5398, float %5400
  %5403 = select i1 %5396, float %5399, float %5401
  %5404 = fmul fast float %5402, %5393
  %5405 = fmul fast float %5403, %5394
  %5406 = call float @dx.op.unary.f32(i32 6, float %5404)  ; FAbs(value)
  %5407 = call float @dx.op.unary.f32(i32 6, float %5405)  ; FAbs(value)
  %5408 = extractvalue %dx.types.CBufRet.f32 %5261, 0
  %5409 = call float @dx.op.binary.f32(i32 35, float %5406, float %5407)  ; FMax(a,b)
  %5410 = fsub fast float %5408, %5409
  %5411 = call float @dx.op.unary.f32(i32 7, float %5410)  ; Saturate(value)
  %5412 = call float @dx.op.binary.f32(i32 36, float %5411, float %5389)  ; FMin(a,b)
  %5413 = fmul fast float %5412, %5323
  %5414 = fsub fast float %5385, %5413
  %5415 = fsub fast float %5386, %5385
  %5416 = fsub fast float %5415, %5413
  %5417 = call float @dx.op.binary.f32(i32 35, float %5385, float %5386)  ; FMax(a,b)
  %5418 = call float @dx.op.binary.f32(i32 35, float %5413, float %5417)  ; FMax(a,b)
  %5419 = fcmp fast olt float %5418, 1.000000e+00
  br i1 %5419, label %5420, label %5818, !dx.controlflow.hints !94

; <label>:5420                                    ; preds = %5384
  %5421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5422 = extractvalue %dx.types.CBufRet.f32 %5421, 0
  %5423 = fcmp fast une float %5422, 0.000000e+00
  br i1 %5423, label %5424, label %5818, !dx.controlflow.hints !95

; <label>:5424                                    ; preds = %5420
  %5425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5426 = extractvalue %dx.types.CBufRet.f32 %5425, 0
  %5427 = extractvalue %dx.types.CBufRet.f32 %5425, 1
  %5428 = extractvalue %dx.types.CBufRet.f32 %5425, 2
  %5429 = extractvalue %dx.types.CBufRet.f32 %5425, 3
  %5430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5431 = extractvalue %dx.types.CBufRet.f32 %5430, 0
  %5432 = extractvalue %dx.types.CBufRet.f32 %5430, 1
  %5433 = extractvalue %dx.types.CBufRet.f32 %5430, 2
  %5434 = extractvalue %dx.types.CBufRet.f32 %5430, 3
  %5435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5436 = extractvalue %dx.types.CBufRet.f32 %5435, 0
  %5437 = extractvalue %dx.types.CBufRet.f32 %5435, 1
  %5438 = extractvalue %dx.types.CBufRet.f32 %5435, 2
  %5439 = extractvalue %dx.types.CBufRet.f32 %5435, 3
  %5440 = fmul fast float %5426, %5266
  %5441 = call float @dx.op.tertiary.f32(i32 46, float %5267, float %5427, float %5440)  ; FMad(a,b,c)
  %5442 = call float @dx.op.tertiary.f32(i32 46, float %5268, float %5428, float %5441)  ; FMad(a,b,c)
  %5443 = fadd fast float %5442, %5429
  %5444 = fmul fast float %5431, %5266
  %5445 = call float @dx.op.tertiary.f32(i32 46, float %5267, float %5432, float %5444)  ; FMad(a,b,c)
  %5446 = call float @dx.op.tertiary.f32(i32 46, float %5268, float %5433, float %5445)  ; FMad(a,b,c)
  %5447 = fadd fast float %5446, %5434
  %5448 = fmul fast float %5436, %5266
  %5449 = call float @dx.op.tertiary.f32(i32 46, float %5267, float %5437, float %5448)  ; FMad(a,b,c)
  %5450 = call float @dx.op.tertiary.f32(i32 46, float %5268, float %5438, float %5449)  ; FMad(a,b,c)
  %5451 = fadd fast float %5450, %5439
  %5452 = fcmp fast oge float %5443, 1.000000e+00
  %5453 = fcmp fast oge float %5447, 1.000000e+00
  %5454 = or i1 %5452, %5453
  %5455 = fcmp fast olt float %5443, 0.000000e+00
  %5456 = fcmp fast olt float %5447, 0.000000e+00
  %5457 = or i1 %5455, %5456
  %5458 = or i1 %5454, %5457
  br i1 %5458, label %5818, label %5459, !dx.controlflow.hints !96

; <label>:5459                                    ; preds = %5424
  %5460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5461 = extractvalue %dx.types.CBufRet.f32 %5460, 0
  %5462 = extractvalue %dx.types.CBufRet.f32 %5460, 1
  %5463 = extractvalue %dx.types.CBufRet.f32 %5460, 2
  %5464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5465 = extractvalue %dx.types.CBufRet.i32 %5464, 2
  %5466 = uitofp i32 %5465 to float
  %5467 = extractvalue %dx.types.CBufRet.i32 %5464, 3
  %5468 = uitofp i32 %5467 to float
  %5469 = extractvalue %dx.types.CBufRet.f32 %5460, 3
  %5470 = fmul fast float %5469, 2.000000e+00
  %5471 = fsub fast float %5443, %5461
  %5472 = fsub fast float %5447, %5462
  %5473 = fmul fast float %5470, %5471
  %5474 = fmul fast float %5470, %5472
  %5475 = fdiv fast float 1.000000e+00, %5249
  %5476 = fmul fast float %5474, %5475
  %5477 = call float @dx.op.unary.f32(i32 6, float %5476)  ; FAbs(value)
  %5478 = fmul fast float %5463, %5268
  %5479 = fmul fast float %5478, %5470
  %5480 = call float @dx.op.unary.f32(i32 6, float %5479)  ; FAbs(value)
  %5481 = call float @dx.op.unary.f32(i32 6, float %5473)  ; FAbs(value)
  %5482 = call float @dx.op.binary.f32(i32 35, float %5480, float %5477)  ; FMax(a,b)
  %5483 = call float @dx.op.binary.f32(i32 35, float %5481, float %5482)  ; FMax(a,b)
  %5484 = fmul fast float %5483, 2.000000e+00
  %5485 = call float @dx.op.unary.f32(i32 23, float %5484)  ; Log(value)
  %5486 = call float @dx.op.binary.f32(i32 35, float %5485, float %5466)  ; FMax(a,b)
  %5487 = call float @dx.op.unary.f32(i32 22, float %5486)  ; Frc(value)
  %5488 = fadd fast float %5487, 0xBFEA666660000000
  %5489 = fmul fast float %5488, 8.000000e+00
  %5490 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5491 = call float @dx.op.unary.f32(i32 27, float %5486)  ; Round_ni(value)
  %5492 = fadd fast float %5491, %5490
  %5493 = call float @dx.op.binary.f32(i32 36, float %5492, float %5468)  ; FMin(a,b)
  %5494 = call float @dx.op.unary.f32(i32 27, float %5493)  ; Round_ni(value)
  %5495 = fsub fast float -0.000000e+00, %5494
  %5496 = call float @dx.op.unary.f32(i32 21, float %5495)  ; Exp(value)
  %5497 = fmul fast float %5496, %5470
  %5498 = fmul fast float %5497, %5443
  %5499 = fmul fast float %5497, %5447
  %5500 = fmul fast float %5498, 2.500000e-01
  %5501 = fmul fast float %5499, 2.500000e-01
  %5502 = fadd fast float %5500, 5.000000e-01
  %5503 = fadd fast float %5501, 5.000000e-01
  %5504 = fsub fast float %5468, %5466
  %5505 = fptoui float %5504 to i32
  %5506 = add i32 %5505, 320
  %5507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5506)  ; CBufferLoadLegacy(handle,regIndex)
  %5508 = extractvalue %dx.types.CBufRet.f32 %5507, 0
  %5509 = extractvalue %dx.types.CBufRet.f32 %5507, 1
  %5510 = fcmp fast une float %5493, %5468
  %5511 = fsub fast float %5443, %5508
  %5512 = fsub fast float %5447, %5509
  %5513 = call float @dx.op.unary.f32(i32 6, float %5511)  ; FAbs(value)
  %5514 = call float @dx.op.unary.f32(i32 6, float %5512)  ; FAbs(value)
  %5515 = fmul fast float %5513, %5497
  %5516 = fmul fast float %5514, %5497
  %5517 = fcmp fast olt float %5515, 1.000000e+00
  %5518 = fcmp fast olt float %5516, 1.000000e+00
  %5519 = and i1 %5517, %5518
  %5520 = or i1 %5510, %5519
  br i1 %5520, label %5521, label %5818, !dx.controlflow.hints !97

; <label>:5521                                    ; preds = %5459
  %5522 = fmul fast float %5499, 5.000000e-01
  %5523 = fmul fast float %5498, 5.000000e-01
  %5524 = fadd fast float %5522, 5.000000e-01
  %5525 = fadd fast float %5523, 5.000000e-01
  %5526 = sitofp i32 %5465 to float
  %5527 = fsub fast float %5493, %5526
  %5528 = call float @dx.op.unary.f32(i32 27, float %5527)  ; Round_ni(value)
  %5529 = call float @dx.op.unary.f32(i32 22, float %5493)  ; Frc(value)
  %5530 = call float @dx.op.unary.f32(i32 22, float %5525)  ; Frc(value)
  %5531 = call float @dx.op.unary.f32(i32 22, float %5524)  ; Frc(value)
  %5532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5530, float %5531, float %5528, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5533 = extractvalue %dx.types.ResRet.f32 %5532, 0
  %5534 = extractvalue %dx.types.ResRet.f32 %5532, 1
  %5535 = extractvalue %dx.types.ResRet.f32 %5532, 2
  %5536 = extractvalue %dx.types.ResRet.f32 %5532, 3
  %5537 = fcmp fast ogt float %5529, 0.000000e+00
  br i1 %5537, label %5538, label %5559, !dx.controlflow.hints !98

; <label>:5538                                    ; preds = %5521
  %5539 = fadd fast float %5528, 1.000000e+00
  %5540 = call float @dx.op.unary.f32(i32 22, float %5502)  ; Frc(value)
  %5541 = call float @dx.op.unary.f32(i32 22, float %5503)  ; Frc(value)
  %5542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5540, float %5541, float %5539, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5543 = extractvalue %dx.types.ResRet.f32 %5542, 0
  %5544 = extractvalue %dx.types.ResRet.f32 %5542, 1
  %5545 = extractvalue %dx.types.ResRet.f32 %5542, 2
  %5546 = extractvalue %dx.types.ResRet.f32 %5542, 3
  %5547 = fsub fast float %5543, %5533
  %5548 = fsub fast float %5544, %5534
  %5549 = fsub fast float %5545, %5535
  %5550 = fsub fast float %5546, %5536
  %5551 = fmul fast float %5547, %5529
  %5552 = fmul fast float %5548, %5529
  %5553 = fmul fast float %5549, %5529
  %5554 = fmul fast float %5550, %5529
  %5555 = fadd fast float %5551, %5533
  %5556 = fadd fast float %5552, %5534
  %5557 = fadd fast float %5553, %5535
  %5558 = fadd fast float %5554, %5536
  br label %5559

; <label>:5559                                    ; preds = %5538, %5521
  %5560 = phi float [ %5555, %5538 ], [ %5533, %5521 ]
  %5561 = phi float [ %5556, %5538 ], [ %5534, %5521 ]
  %5562 = phi float [ %5557, %5538 ], [ %5535, %5521 ]
  %5563 = phi float [ %5558, %5538 ], [ %5536, %5521 ]
  %5564 = fadd fast float %5560, -5.000000e-01
  %5565 = fadd fast float %5562, -5.000000e-01
  %5566 = fmul fast float %5564, 0xBFD5555560000000
  %5567 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5565, float %5566)  ; FMad(a,b,c)
  %5568 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5561, float 0.000000e+00)  ; FMad(a,b,c)
  %5569 = fadd fast float %5568, %5563
  %5570 = fmul fast float %5564, -7.500000e-01
  %5571 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5565, float %5570)  ; FMad(a,b,c)
  %5572 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5561, float 0.000000e+00)  ; FMad(a,b,c)
  %5573 = fadd fast float %5572, %5563
  %5574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5575 = extractvalue %dx.types.CBufRet.f32 %5574, 0
  %5576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5577 = extractvalue %dx.types.CBufRet.f32 %5576, 0
  %5578 = extractvalue %dx.types.CBufRet.f32 %5576, 1
  %5579 = extractvalue %dx.types.CBufRet.f32 %5576, 2
  %5580 = extractvalue %dx.types.CBufRet.f32 %5576, 3
  %5581 = fsub fast float %5577, %5567
  %5582 = fsub fast float %5578, %5569
  %5583 = fsub fast float %5579, %5571
  %5584 = fsub fast float %5580, %5573
  %5585 = fmul fast float %5581, %5575
  %5586 = fmul fast float %5582, %5575
  %5587 = fmul fast float %5583, %5575
  %5588 = fmul fast float %5584, %5575
  %5589 = fadd fast float %5585, %5567
  %5590 = fadd fast float %5586, %5569
  %5591 = fadd fast float %5587, %5571
  %5592 = fadd fast float %5588, %5573
  %5593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5594 = extractvalue %dx.types.ResRet.i32 %5593, 0
  %5595 = and i32 %5594, 536870911
  %5596 = uitofp i32 %5595 to float
  %5597 = fmul fast float %5596, %5443
  %5598 = fmul fast float %5596, %5447
  %5599 = fptoui float %5597 to i32
  %5600 = fptoui float %5598 to i32
  %5601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5602 = extractvalue %dx.types.ResRet.i32 %5601, 0
  %5603 = and i32 %5602, 31
  %5604 = lshr i32 %5599, %5603
  %5605 = lshr i32 %5600, %5603
  %5606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5607 = extractvalue %dx.types.ResRet.i32 %5606, 0
  %5608 = and i32 %5607, 31
  %5609 = shl i32 1, %5608
  %5610 = call i32 @dx.op.binary.i32(i32 40, i32 %5609, i32 4)  ; UMin(a,b)
  %5611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5612 = extractvalue %dx.types.ResRet.i32 %5611, 0
  %5613 = extractvalue %dx.types.ResRet.i32 %5611, 1
  %5614 = icmp eq i32 %5610, 0
  br i1 %5614, label %5656, label %5615

; <label>:5615                                    ; preds = %5559
  br label %5616

; <label>:5616                                    ; preds = %5644, %5615
  %5617 = phi i32 [ %5647, %5644 ], [ 0, %5615 ]
  %5618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5619 = extractvalue %dx.types.ResRet.i32 %5618, 0
  %5620 = lshr i32 %5619, 16
  %5621 = and i32 %5620, 31
  %5622 = shl i32 %5605, %5621
  %5623 = add i32 %5622, %5604
  %5624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5625 = extractvalue %dx.types.ResRet.i32 %5624, 0
  %5626 = and i32 %5625, 31
  %5627 = shl i32 %5623, %5626
  %5628 = add i32 %5627, %5617
  %5629 = shl i32 %5628, 2
  %5630 = add i32 %5629, 32
  %5631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5630, i32 undef)  ; BufferLoad(srv,index,wot)
  %5632 = extractvalue %dx.types.ResRet.i32 %5631, 0
  %5633 = icmp slt i32 %5632, 0
  %5634 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5617
  %5635 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5617
  %5636 = bitcast float* %5634 to i32*
  %5637 = bitcast float* %5635 to i32*
  br i1 %5633, label %5638, label %5644

; <label>:5638                                    ; preds = %5616
  %5639 = and i32 %5632, 1073741823
  %5640 = add nuw nsw i32 %5639, 20
  %5641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5640, i32 undef)  ; BufferLoad(srv,index,wot)
  %5642 = extractvalue %dx.types.ResRet.i32 %5641, 0
  %5643 = extractvalue %dx.types.ResRet.i32 %5641, 1
  br label %5644

; <label>:5644                                    ; preds = %5638, %5616
  %5645 = phi i32 [ %5642, %5638 ], [ %5612, %5616 ]
  %5646 = phi i32 [ %5643, %5638 ], [ %5613, %5616 ]
  store i32 %5645, i32* %5636, align 4
  store i32 %5646, i32* %5637, align 4
  %5647 = add nuw i32 %5617, 1
  %5648 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5649 = extractvalue %dx.types.CBufRet.i32 %5648, 2
  %5650 = icmp eq i32 %5649, 0
  %5651 = icmp ugt i32 %5632, -1073741825
  %5652 = and i1 %5651, %5650
  %5653 = icmp ult i32 %5647, %5610
  %5654 = and i1 %5652, %5653
  br i1 %5654, label %5616, label %5655

; <label>:5655                                    ; preds = %5644
  br label %5656

; <label>:5656                                    ; preds = %5655, %5559
  %5657 = phi i32 [ 0, %5559 ], [ %5647, %5655 ]
  %5658 = extractvalue %dx.types.CBufRet.f32 %5421, 2
  %5659 = fptoui float %5658 to i32
  %5660 = icmp eq i32 %5659, 0
  br i1 %5660, label %5712, label %5661

; <label>:5661                                    ; preds = %5656
  br label %5662

; <label>:5662                                    ; preds = %5707, %5661
  %5663 = phi i32 [ %5708, %5707 ], [ %5657, %5661 ]
  %5664 = phi i32 [ %5709, %5707 ], [ 0, %5661 ]
  %5665 = lshr i32 %5664, 2
  %5666 = and i32 %5664, 3
  %5667 = add nuw nsw i32 %5665, 83
  %5668 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5667)  ; CBufferLoadLegacy(handle,regIndex)
  %5669 = extractvalue %dx.types.CBufRet.i32 %5668, 0
  %5670 = extractvalue %dx.types.CBufRet.i32 %5668, 1
  %5671 = extractvalue %dx.types.CBufRet.i32 %5668, 2
  %5672 = extractvalue %dx.types.CBufRet.i32 %5668, 3
  %5673 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5669, i32* %5673, align 4
  %5674 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5670, i32* %5674, align 4
  %5675 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5671, i32* %5675, align 4
  %5676 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5672, i32* %5676, align 4
  %5677 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5666
  %5678 = load i32, i32* %5677, align 4, !tbaa !99, !noalias !103
  %5679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5680 = extractvalue %dx.types.ResRet.i32 %5679, 0
  %5681 = lshr i32 %5680, 16
  %5682 = and i32 %5681, 31
  %5683 = shl i32 %5605, %5682
  %5684 = add i32 %5683, %5604
  %5685 = shl i32 %5684, 2
  %5686 = add i32 %5685, %5678
  %5687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5686, i32 undef)  ; BufferLoad(srv,index,wot)
  %5688 = extractvalue %dx.types.ResRet.i32 %5687, 0
  %5689 = icmp eq i32 %5688, 0
  br i1 %5689, label %5707, label %5690

; <label>:5690                                    ; preds = %5662
  %5691 = icmp slt i32 %5688, 0
  %5692 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5663
  %5693 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5663
  %5694 = bitcast float* %5692 to i32*
  %5695 = bitcast float* %5693 to i32*
  br i1 %5691, label %5696, label %5703

; <label>:5696                                    ; preds = %5690
  %5697 = and i32 %5688, 1073741823
  %5698 = add i32 %5678, 20
  %5699 = add i32 %5698, %5697
  %5700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5699, i32 undef)  ; BufferLoad(srv,index,wot)
  %5701 = extractvalue %dx.types.ResRet.i32 %5700, 0
  %5702 = extractvalue %dx.types.ResRet.i32 %5700, 1
  br label %5703

; <label>:5703                                    ; preds = %5696, %5690
  %5704 = phi i32 [ %5701, %5696 ], [ %5612, %5690 ]
  %5705 = phi i32 [ %5702, %5696 ], [ %5613, %5690 ]
  store i32 %5704, i32* %5694, align 4
  store i32 %5705, i32* %5695, align 4
  %5706 = add i32 %5663, 1
  br label %5707

; <label>:5707                                    ; preds = %5703, %5662
  %5708 = phi i32 [ %5663, %5662 ], [ %5706, %5703 ]
  %5709 = add nuw i32 %5664, 1
  %5710 = icmp eq i32 %5709, %5659
  br i1 %5710, label %5711, label %5662

; <label>:5711                                    ; preds = %5707
  br label %5712

; <label>:5712                                    ; preds = %5711, %5656
  %5713 = phi i32 [ %5657, %5656 ], [ %5708, %5711 ]
  %5714 = icmp eq i32 %5713, 1
  %5715 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 0
  %5716 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  br i1 %5714, label %5717, label %5720

; <label>:5717                                    ; preds = %5712
  %5718 = load float, float* %5715, align 4
  %5719 = load float, float* %5716, align 4
  br label %5747

; <label>:5720                                    ; preds = %5712
  %5721 = load float, float* %5715, align 4
  %5722 = load float, float* %5716, align 4
  %5723 = fdiv fast float 1.000000e+00, %5722
  %5724 = fsub fast float %5721, %5723
  %5725 = icmp ugt i32 %5713, 1
  br i1 %5725, label %5726, label %5742

; <label>:5726                                    ; preds = %5720
  br label %5727

; <label>:5727                                    ; preds = %5727, %5726
  %5728 = phi float [ %5737, %5727 ], [ %5724, %5726 ]
  %5729 = phi float [ %5738, %5727 ], [ %5721, %5726 ]
  %5730 = phi i32 [ %5739, %5727 ], [ 1, %5726 ]
  %5731 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5730
  %5732 = load float, float* %5731, align 4
  %5733 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5730
  %5734 = load float, float* %5733, align 4
  %5735 = fdiv fast float 1.000000e+00, %5734
  %5736 = fsub fast float %5732, %5735
  %5737 = call float @dx.op.binary.f32(i32 36, float %5728, float %5736)  ; FMin(a,b)
  %5738 = call float @dx.op.binary.f32(i32 35, float %5729, float %5732)  ; FMax(a,b)
  %5739 = add nuw i32 %5730, 1
  %5740 = icmp eq i32 %5739, %5713
  br i1 %5740, label %5741, label %5727

; <label>:5741                                    ; preds = %5727
  br label %5742

; <label>:5742                                    ; preds = %5741, %5720
  %5743 = phi float [ %5724, %5720 ], [ %5737, %5741 ]
  %5744 = phi float [ %5721, %5720 ], [ %5738, %5741 ]
  %5745 = fsub fast float %5744, %5743
  %5746 = fdiv fast float 1.000000e+00, %5745
  br label %5747

; <label>:5747                                    ; preds = %5742, %5717
  %5748 = phi float [ %5718, %5717 ], [ %5744, %5742 ]
  %5749 = phi float [ %5719, %5717 ], [ %5746, %5742 ]
  %5750 = fadd fast float %5451, %5748
  %5751 = fmul fast float %5750, %5749
  %5752 = call float @dx.op.unary.f32(i32 7, float %5751)  ; Saturate(value)
  %5753 = fmul fast float %5752, 2.000000e+00
  %5754 = fsub fast float 1.000000e+00, %5753
  %5755 = fmul fast float %5589, %5589
  %5756 = fsub fast float %5590, %5755
  %5757 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5756)  ; FMax(a,b)
  %5758 = fdiv fast float 1.000000e+00, %5757
  %5759 = fmul fast float %5590, %5589
  %5760 = fsub fast float %5591, %5759
  %5761 = fsub fast float %5754, %5589
  %5762 = fmul fast float %5754, %5754
  %5763 = fsub fast float %5762, %5590
  %5764 = fmul fast float %5758, %5760
  %5765 = fmul fast float %5764, %5761
  %5766 = fsub fast float %5763, %5765
  %5767 = fmul fast float %5590, %5590
  %5768 = fsub fast float %5592, %5767
  %5769 = fmul fast float %5760, %5760
  %5770 = fmul fast float %5769, %5758
  %5771 = fsub fast float %5768, %5770
  %5772 = fdiv fast float %5766, %5771
  %5773 = fmul fast float %5772, %5760
  %5774 = fsub fast float %5761, %5773
  %5775 = fmul fast float %5774, %5758
  %5776 = fmul fast float %5775, %5589
  %5777 = fsub fast float 1.000000e+00, %5776
  %5778 = fmul fast float %5772, %5590
  %5779 = fsub fast float %5777, %5778
  %5780 = fmul fast float %5775, %5775
  %5781 = fmul fast float %5772, 4.000000e+00
  %5782 = fmul fast float %5781, %5779
  %5783 = fsub fast float %5780, %5782
  %5784 = call float @dx.op.unary.f32(i32 24, float %5783)  ; Sqrt(value)
  %5785 = fcmp fast oge float %5775, 0.000000e+00
  %5786 = fsub fast float -0.000000e+00, %5784
  %5787 = select i1 %5785, float %5786, float %5784
  %5788 = fsub fast float %5787, %5775
  %5789 = fdiv fast float %5788, %5772
  %5790 = fdiv fast float %5779, %5788
  %5791 = fmul fast float %5789, 5.000000e-01
  %5792 = fmul fast float %5790, 2.000000e+00
  %5793 = select i1 %5785, float %5791, float %5792
  %5794 = select i1 %5785, float %5792, float %5791
  %5795 = call float @dx.op.binary.f32(i32 35, float %5793, float %5794)  ; FMax(a,b)
  %5796 = call float @dx.op.binary.f32(i32 36, float %5793, float %5794)  ; FMin(a,b)
  %5797 = fcmp fast ogt float %5754, %5795
  %5798 = fsub fast float %5754, %5796
  %5799 = fsub fast float %5754, %5795
  %5800 = fsub fast float %5795, %5796
  %5801 = select i1 %5797, float %5799, float %5800
  %5802 = fmul float %5798, %5801
  %5803 = select i1 %5797, float %5796, float %5754
  %5804 = fcmp fast ogt float %5754, %5796
  %5805 = fmul fast float %5803, %5795
  %5806 = fadd fast float %5803, %5795
  %5807 = fmul fast float %5806, %5589
  %5808 = fadd fast float %5805, %5590
  %5809 = fsub fast float %5808, %5807
  %5810 = fdiv fast float %5809, %5802
  %5811 = select i1 %5804, float %5810, float 0.000000e+00
  %5812 = fsub fast float 1.000000e+00, %5811
  %5813 = select i1 %5797, float %5812, float %5811
  %5814 = call float @dx.op.unary.f32(i32 7, float %5813)  ; Saturate(value)
  %5815 = extractvalue %dx.types.CBufRet.f32 %5574, 3
  %5816 = fmul fast float %5815, %5814
  %5817 = fsub fast float 1.000000e+00, %5816
  br label %5818

; <label>:5818                                    ; preds = %5747, %5459, %5424, %5420, %5384
  %5819 = phi float [ 1.000000e+00, %5384 ], [ %5817, %5747 ], [ 1.000000e+00, %5424 ], [ 1.000000e+00, %5459 ], [ 1.000000e+00, %5420 ]
  %5820 = fcmp fast ogt float %5416, 0.000000e+00
  br i1 %5820, label %5821, label %5829, !dx.controlflow.hints !112

; <label>:5821                                    ; preds = %5818
  %5822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5823 = extractvalue %dx.types.CBufRet.f32 %5822, 2
  %5824 = fadd fast float %5823, %5297
  %5825 = call float @dx.op.binary.f32(i32 35, float %5824, float 0.000000e+00)  ; FMax(a,b)
  %5826 = fadd fast float %5825, 0x3F10000000000000
  %5827 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5315, float %5316, float undef, float undef, i32 0, i32 0, i32 undef, float %5826)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5828 = extractvalue %dx.types.ResRet.f32 %5827, 0
  br label %5829

; <label>:5829                                    ; preds = %5821, %5818
  %5830 = phi float [ %5828, %5821 ], [ 1.000000e+00, %5818 ]
  %5831 = fcmp fast ogt float %5414, 0.000000e+00
  br i1 %5831, label %5832, label %5840, !dx.controlflow.hints !113

; <label>:5832                                    ; preds = %5829
  %5833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5834 = extractvalue %dx.types.CBufRet.f32 %5833, 1
  %5835 = fadd fast float %5834, %5297
  %5836 = call float @dx.op.binary.f32(i32 35, float %5835, float 0.000000e+00)  ; FMax(a,b)
  %5837 = fadd fast float %5836, 0x3F10000000000000
  %5838 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5307, float %5308, float undef, float undef, i32 0, i32 0, i32 undef, float %5837)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5839 = extractvalue %dx.types.ResRet.f32 %5838, 0
  br label %5840

; <label>:5840                                    ; preds = %5832, %5829
  %5841 = phi float [ %5839, %5832 ], [ 1.000000e+00, %5829 ]
  %5842 = fcmp fast ogt float %5413, 0.000000e+00
  br i1 %5842, label %5843, label %5855, !dx.controlflow.hints !114

; <label>:5843                                    ; preds = %5840
  %5844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5845 = extractvalue %dx.types.CBufRet.f32 %5844, 0
  %5846 = fadd fast float %5845, %5297
  %5847 = call float @dx.op.binary.f32(i32 35, float %5846, float 0.000000e+00)  ; FMax(a,b)
  %5848 = fadd fast float %5847, 0x3F10000000000000
  br i1 %5300, label %5849, label %5852, !dx.controlflow.hints !115

; <label>:5849                                    ; preds = %5843
  %5850 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %5289, float %5293, float undef, float undef, i32 0, i32 0, i32 undef, float %5848)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5851 = extractvalue %dx.types.ResRet.f32 %5850, 0
  br label %5855

; <label>:5852                                    ; preds = %5843
  %5853 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5289, float %5293, float undef, float undef, i32 0, i32 0, i32 undef, float %5848)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5854 = extractvalue %dx.types.ResRet.f32 %5853, 0
  br label %5855

; <label>:5855                                    ; preds = %5852, %5849, %5840
  %5856 = phi float [ %5851, %5849 ], [ %5854, %5852 ], [ 1.000000e+00, %5840 ]
  %5857 = fsub fast float %5830, %5819
  %5858 = fmul fast float %5857, %5386
  %5859 = fadd fast float %5858, %5819
  %5860 = fsub fast float %5841, %5859
  %5861 = fmul fast float %5860, %5385
  %5862 = fadd fast float %5861, %5859
  %5863 = fsub fast float %5856, %5862
  %5864 = fmul fast float %5863, %5413
  %5865 = fadd fast float %5864, %5862
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 2
  %5868 = fcmp fast ogt float %5867, 0.000000e+00
  br i1 %5868, label %5869, label %5909, !dx.controlflow.hints !116

; <label>:5869                                    ; preds = %5855
  %5870 = fcmp fast ugt float %5867, 0.000000e+00
  br i1 %5870, label %5871, label %5906

; <label>:5871                                    ; preds = %5869
  %5872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5873 = extractvalue %dx.types.CBufRet.f32 %5872, 0
  %5874 = extractvalue %dx.types.CBufRet.f32 %5872, 1
  %5875 = extractvalue %dx.types.CBufRet.f32 %5872, 2
  %5876 = extractvalue %dx.types.CBufRet.f32 %5872, 3
  %5877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5878 = extractvalue %dx.types.CBufRet.f32 %5877, 0
  %5879 = extractvalue %dx.types.CBufRet.f32 %5877, 1
  %5880 = extractvalue %dx.types.CBufRet.f32 %5877, 2
  %5881 = extractvalue %dx.types.CBufRet.f32 %5877, 3
  %5882 = extractvalue %dx.types.CBufRet.f32 %5866, 0
  %5883 = extractvalue %dx.types.CBufRet.f32 %5866, 1
  %5884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5884, 0
  %5886 = extractvalue %dx.types.CBufRet.f32 %5884, 1
  %5887 = extractvalue %dx.types.CBufRet.f32 %5884, 2
  %5888 = fadd fast float %5885, %5266
  %5889 = fadd fast float %5886, %5267
  %5890 = fadd fast float %5887, %5268
  %5891 = fmul fast float %5888, %5873
  %5892 = call float @dx.op.tertiary.f32(i32 46, float %5874, float %5889, float %5891)  ; FMad(a,b,c)
  %5893 = call float @dx.op.tertiary.f32(i32 46, float %5875, float %5890, float %5892)  ; FMad(a,b,c)
  %5894 = fadd fast float %5893, %5876
  %5895 = fmul fast float %5888, %5878
  %5896 = call float @dx.op.tertiary.f32(i32 46, float %5879, float %5889, float %5895)  ; FMad(a,b,c)
  %5897 = call float @dx.op.tertiary.f32(i32 46, float %5880, float %5890, float %5896)  ; FMad(a,b,c)
  %5898 = fadd fast float %5897, %5881
  %5899 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5894, float %5898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5900 = extractvalue %dx.types.ResRet.f32 %5899, 0
  %5901 = fmul fast float %5900, %5883
  %5902 = fadd fast float %5901, %5882
  %5903 = call float @dx.op.unary.f32(i32 7, float %5902)  ; Saturate(value)
  %5904 = fmul fast float %5903, %5867
  %5905 = fsub fast float 1.000000e+00, %5904
  br label %5906

; <label>:5906                                    ; preds = %5871, %5869
  %5907 = phi float [ %5905, %5871 ], [ 1.000000e+00, %5869 ]
  %5908 = fmul fast float %5907, %5865
  br label %5909

; <label>:5909                                    ; preds = %5906, %5855, %5246
  %5910 = phi float [ 1.000000e+00, %5246 ], [ %5908, %5906 ], [ %5865, %5855 ]
  %5911 = call float @dx.op.binary.f32(i32 36, float %5910, float %5910)  ; FMin(a,b)
  %5912 = call float @dx.op.binary.f32(i32 36, float %5910, float %5911)  ; FMin(a,b)
  %5913 = fcmp fast ogt float %5912, 0.000000e+00
  br i1 %5913, label %5914, label %6074, !dx.controlflow.hints !117

; <label>:5914                                    ; preds = %5909
  %5915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5916 = extractvalue %dx.types.CBufRet.f32 %5915, 0
  %5917 = extractvalue %dx.types.CBufRet.f32 %5915, 1
  %5918 = extractvalue %dx.types.CBufRet.f32 %5915, 2
  %5919 = extractvalue %dx.types.CBufRet.f32 %5915, 3
  %5920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5921 = extractvalue %dx.types.CBufRet.f32 %5920, 0
  %5922 = extractvalue %dx.types.CBufRet.f32 %5920, 1
  %5923 = extractvalue %dx.types.CBufRet.f32 %5920, 2
  %5924 = extractvalue %dx.types.CBufRet.f32 %5920, 3
  %5925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5926 = extractvalue %dx.types.CBufRet.f32 %5925, 0
  %5927 = extractvalue %dx.types.CBufRet.f32 %5925, 1
  %5928 = extractvalue %dx.types.CBufRet.f32 %5925, 2
  %5929 = extractvalue %dx.types.CBufRet.f32 %5925, 3
  %5930 = fmul fast float %5916, %5266
  %5931 = call float @dx.op.tertiary.f32(i32 46, float %5267, float %5917, float %5930)  ; FMad(a,b,c)
  %5932 = call float @dx.op.tertiary.f32(i32 46, float %5268, float %5918, float %5931)  ; FMad(a,b,c)
  %5933 = fadd fast float %5932, %5919
  %5934 = fmul fast float %5921, %5266
  %5935 = call float @dx.op.tertiary.f32(i32 46, float %5267, float %5922, float %5934)  ; FMad(a,b,c)
  %5936 = call float @dx.op.tertiary.f32(i32 46, float %5268, float %5923, float %5935)  ; FMad(a,b,c)
  %5937 = fadd fast float %5936, %5924
  %5938 = fmul fast float %5926, %5266
  %5939 = call float @dx.op.tertiary.f32(i32 46, float %5267, float %5927, float %5938)  ; FMad(a,b,c)
  %5940 = call float @dx.op.tertiary.f32(i32 46, float %5268, float %5928, float %5939)  ; FMad(a,b,c)
  %5941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5942 = extractvalue %dx.types.CBufRet.f32 %5941, 0
  %5943 = extractvalue %dx.types.CBufRet.f32 %5941, 1
  %5944 = extractvalue %dx.types.CBufRet.f32 %5941, 3
  %5945 = fmul fast float %5944, %5933
  %5946 = fmul fast float %5944, %5937
  %5947 = fadd fast float %5945, %5942
  %5948 = fadd fast float %5946, %5943
  %5949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5950 = extractvalue %dx.types.CBufRet.f32 %5949, 0
  %5951 = extractvalue %dx.types.CBufRet.f32 %5949, 1
  %5952 = fsub fast float %5947, %5950
  %5953 = fsub fast float %5948, %5951
  %5954 = fcmp fast olt float %5952, 0.000000e+00
  %5955 = fcmp fast olt float %5953, 0.000000e+00
  %5956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5957 = extractvalue %dx.types.CBufRet.f32 %5956, 0
  %5958 = extractvalue %dx.types.CBufRet.f32 %5956, 1
  %5959 = extractvalue %dx.types.CBufRet.f32 %5956, 2
  %5960 = extractvalue %dx.types.CBufRet.f32 %5956, 3
  %5961 = select i1 %5954, float %5957, float %5959
  %5962 = select i1 %5955, float %5958, float %5960
  %5963 = fmul fast float %5961, %5952
  %5964 = fmul fast float %5962, %5953
  %5965 = call float @dx.op.unary.f32(i32 6, float %5963)  ; FAbs(value)
  %5966 = call float @dx.op.unary.f32(i32 6, float %5964)  ; FAbs(value)
  %5967 = extractvalue %dx.types.CBufRet.f32 %5261, 0
  %5968 = call float @dx.op.binary.f32(i32 35, float %5965, float %5966)  ; FMax(a,b)
  %5969 = fsub fast float %5967, %5968
  %5970 = call float @dx.op.unary.f32(i32 7, float %5969)  ; Saturate(value)
  %5971 = fcmp fast ogt float %5970, 0.000000e+00
  br i1 %5971, label %5972, label %6013, !dx.controlflow.hints !118

; <label>:5972                                    ; preds = %5914
  %5973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %5947, float %5948, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5974 = extractvalue %dx.types.ResRet.f32 %5973, 1
  %5975 = fcmp fast ogt float %5974, 0.000000e+00
  br i1 %5975, label %5976, label %6008

; <label>:5976                                    ; preds = %5972
  %5977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %5947, float %5948, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5978 = extractvalue %dx.types.ResRet.f32 %5977, 0
  %5979 = extractvalue %dx.types.ResRet.f32 %5977, 1
  %5980 = extractvalue %dx.types.ResRet.f32 %5977, 2
  %5981 = extractvalue %dx.types.ResRet.f32 %5977, 3
  %5982 = fsub fast float 1.000000e+00, %5929
  %5983 = fsub fast float %5982, %5940
  %5984 = fmul fast float %5983, 0x400921FB60000000
  %5985 = fadd fast float %5984, 0x3FF921FB60000000
  %5986 = call float @dx.op.unary.f32(i32 13, float %5985)  ; Sin(value)
  %5987 = fadd fast float %5986, -1.000000e+00
  %5988 = fmul fast float %5987, 0x3FD45F3060000000
  %5989 = fmul fast float %5983, 0x401921FB60000000
  %5990 = fadd fast float %5989, 0x400921FB60000000
  %5991 = call float @dx.op.unary.f32(i32 13, float %5990)  ; Sin(value)
  %5992 = fadd fast float %5991, 0x3E7777A5C0000000
  %5993 = fmul fast float %5992, 0x3FC45F3060000000
  %5994 = fmul fast float %5983, 0x4022D97C80000000
  %5995 = fadd fast float %5994, 0x4012D97C80000000
  %5996 = call float @dx.op.unary.f32(i32 13, float %5995)  ; Sin(value)
  %5997 = fadd fast float %5996, 1.000000e+00
  %5998 = fmul fast float %5997, 0x3FBB2995E0000000
  %5999 = fmul fast float %5983, 0x402921FB60000000
  %6000 = fadd fast float %5999, 0x401921FB60000000
  %6001 = call float @dx.op.unary.f32(i32 13, float %6000)  ; Sin(value)
  %6002 = fadd fast float %6001, 0xBE8777A5C0000000
  %6003 = fmul fast float %6002, 0x3FB45F3060000000
  %6004 = call float @dx.op.dot4.f32(i32 56, float %5978, float %5979, float %5980, float %5981, float %5988, float %5993, float %5998, float %6003)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6005 = fmul fast float %6004, 0xBFF7154760000000
  %6006 = call float @dx.op.unary.f32(i32 21, float %6005)  ; Exp(value)
  %6007 = call float @dx.op.unary.f32(i32 7, float %6006)  ; Saturate(value)
  br label %6008

; <label>:6008                                    ; preds = %5976, %5972
  %6009 = phi float [ %6007, %5976 ], [ 1.000000e+00, %5972 ]
  %6010 = fadd fast float %6009, -1.000000e+00
  %6011 = fmul fast float %6010, %5970
  %6012 = fadd fast float %6011, 1.000000e+00
  br label %6013

; <label>:6013                                    ; preds = %6008, %5914
  %6014 = phi float [ %6012, %6008 ], [ 1.000000e+00, %5914 ]
  %6015 = fmul fast float %6014, %5910
  %6016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6017 = extractvalue %dx.types.CBufRet.f32 %6016, 0
  %6018 = extractvalue %dx.types.CBufRet.f32 %6016, 1
  %6019 = extractvalue %dx.types.CBufRet.f32 %6016, 2
  %6020 = fadd fast float %6017, %191
  %6021 = fadd fast float %6018, %192
  %6022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6023 = extractvalue %dx.types.CBufRet.f32 %6022, 1
  %6024 = fsub fast float -0.000000e+00, %6020
  %6025 = fsub fast float -0.000000e+00, %6021
  %6026 = fsub fast float %5030, %6019
  %6027 = fadd fast float %6026, %6023
  %6028 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6024, float %6025, float %6027)  ; Dot3(ax,ay,az,bx,by,bz)
  %6029 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5247, float %5248, float %5249)  ; Dot3(ax,ay,az,bx,by,bz)
  %6030 = fdiv fast float 1.000000e+00, %6029
  %6031 = fmul fast float %6030, %6028
  %6032 = fmul fast float %5247, %6031
  %6033 = fmul fast float %5248, %6031
  %6034 = fadd fast float %6032, %6020
  %6035 = fadd fast float %6033, %6021
  %6036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6037 = extractvalue %dx.types.CBufRet.f32 %6036, 0
  %6038 = extractvalue %dx.types.CBufRet.f32 %6036, 1
  %6039 = fsub fast float %6034, %6037
  %6040 = fsub fast float %6035, %6038
  %6041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6042 = extractvalue %dx.types.CBufRet.f32 %6041, 2
  %6043 = extractvalue %dx.types.CBufRet.f32 %6041, 3
  %6044 = fmul fast float %6039, %6042
  %6045 = fmul fast float %6040, %6043
  %6046 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6047 = extractvalue %dx.types.CBufRet.i32 %6046, 3
  %6048 = icmp eq i32 %6047, 0
  br i1 %6048, label %6054, label %6049

; <label>:6049                                    ; preds = %6013
  %6050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6044, float %6045, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6051 = extractvalue %dx.types.ResRet.f32 %6050, 0
  %6052 = extractvalue %dx.types.ResRet.f32 %6050, 1
  %6053 = extractvalue %dx.types.ResRet.f32 %6050, 2
  br label %6059

; <label>:6054                                    ; preds = %6013
  %6055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6044, float %6045, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6056 = extractvalue %dx.types.ResRet.f32 %6055, 0
  %6057 = extractvalue %dx.types.ResRet.f32 %6055, 1
  %6058 = extractvalue %dx.types.ResRet.f32 %6055, 2
  br label %6059

; <label>:6059                                    ; preds = %6054, %6049
  %6060 = phi float [ %6051, %6049 ], [ %6056, %6054 ]
  %6061 = phi float [ %6052, %6049 ], [ %6057, %6054 ]
  %6062 = phi float [ %6053, %6049 ], [ %6058, %6054 ]
  %6063 = extractvalue %dx.types.CBufRet.f32 %6022, 2
  %6064 = fmul fast float %6063, %6060
  %6065 = extractvalue %dx.types.CBufRet.f32 %6022, 0
  %6066 = fsub fast float %6031, %6065
  %6067 = fsub fast float %6066, %6064
  %6068 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6067)  ; FMax(a,b)
  %6069 = fmul fast float %6068, %6061
  %6070 = call float @dx.op.binary.f32(i32 36, float %6062, float %6069)  ; FMin(a,b)
  %6071 = fmul fast float %6070, 0xBFF7154760000000
  %6072 = call float @dx.op.unary.f32(i32 21, float %6071)  ; Exp(value)
  %6073 = fmul fast float %6015, %6072
  br label %6074

; <label>:6074                                    ; preds = %6059, %5909
  %6075 = phi float [ %6073, %6059 ], [ %5910, %5909 ]
  %6076 = call float @dx.op.binary.f32(i32 36, float %6075, float %6075)  ; FMin(a,b)
  %6077 = call float @dx.op.binary.f32(i32 36, float %6075, float %6076)  ; FMin(a,b)
  %6078 = fcmp fast ogt float %6077, 0.000000e+00
  br i1 %6078, label %6079, label %6330, !dx.controlflow.hints !119

; <label>:6079                                    ; preds = %6074
  %6080 = fmul fast float %6075, %5258
  %6081 = fmul fast float %6075, %5259
  %6082 = fmul fast float %6075, %5260
  %6083 = fsub fast float %193, %4226
  %6084 = fcmp fast ogt float %6083, 0.000000e+00
  %6085 = fmul fast float %5247, 5.120000e+02
  %6086 = fmul fast float %5248, 5.120000e+02
  %6087 = fmul fast float %5249, 5.120000e+02
  %6088 = fadd fast float %6087, %193
  %6089 = fsub fast float %4226, %6088
  %6090 = fmul fast float %6089, 2.000000e+00
  %6091 = fadd fast float %6090, %6088
  %6092 = select i1 %6084, float %6091, float %6088
  %6093 = fsub fast float %6092, %193
  %6094 = call float @dx.op.dot3.f32(i32 55, float %6085, float %6086, float %6093, float %6085, float %6086, float %6093)  ; Dot3(ax,ay,az,bx,by,bz)
  %6095 = call float @dx.op.unary.f32(i32 25, float %6094)  ; Rsqrt(value)
  %6096 = fmul fast float %6095, %6085
  %6097 = fmul fast float %6095, %6086
  %6098 = fmul fast float %6095, %6093
  %6099 = fsub fast float %4226, %193
  %6100 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6099)  ; Dot3(ax,ay,az,bx,by,bz)
  %6101 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6096, float %6097, float %6098)  ; Dot3(ax,ay,az,bx,by,bz)
  %6102 = fdiv fast float 1.000000e+00, %6101
  %6103 = fmul fast float %6102, %6100
  %6104 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6083, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6105 = fcmp fast ogt float %6104, 0.000000e+00
  %6106 = fcmp fast olt float %6104, 0.000000e+00
  %6107 = zext i1 %6105 to i32
  %6108 = zext i1 %6106 to i32
  %6109 = sub nsw i32 %6107, %6108
  %6110 = sitofp i32 %6109 to float
  %6111 = fsub fast float %6092, %4226
  %6112 = call float @dx.op.dot3.f32(i32 55, float %6085, float %6086, float %6111, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6113 = fcmp fast ogt float %6112, 0.000000e+00
  %6114 = fcmp fast olt float %6112, 0.000000e+00
  %6115 = zext i1 %6113 to i32
  %6116 = zext i1 %6114 to i32
  %6117 = sub nsw i32 %6115, %6116
  %6118 = sitofp i32 %6117 to float
  %6119 = fcmp fast une float %6110, %6118
  br i1 %6119, label %6120, label %6130

; <label>:6120                                    ; preds = %6079
  %6121 = fmul fast float %6103, %6098
  %6122 = fmul fast float %6103, %6097
  %6123 = fmul fast float %6103, %6096
  %6124 = fmul fast float %6123, %6123
  %6125 = fmul fast float %6122, %6122
  %6126 = fadd fast float %6124, %6125
  %6127 = fmul fast float %6121, %6121
  %6128 = fadd fast float %6126, %6127
  %6129 = call float @dx.op.unary.f32(i32 24, float %6128)  ; Sqrt(value)
  br label %6140

; <label>:6130                                    ; preds = %6079
  %6131 = icmp slt i32 %6109, 0
  br i1 %6131, label %6132, label %6140

; <label>:6132                                    ; preds = %6130
  %6133 = fsub fast float %193, %6092
  %6134 = fmul fast float %6085, %6085
  %6135 = fmul fast float %6086, %6086
  %6136 = fadd fast float %6134, %6135
  %6137 = fmul fast float %6133, %6133
  %6138 = fadd fast float %6136, %6137
  %6139 = call float @dx.op.unary.f32(i32 24, float %6138)  ; Sqrt(value)
  br label %6140

; <label>:6140                                    ; preds = %6132, %6130, %6120
  %6141 = phi float [ %6129, %6120 ], [ %6139, %6132 ], [ 0.000000e+00, %6130 ]
  %6142 = fsub fast float -0.000000e+00, %6141
  %6143 = select i1 %6084, float -0.000000e+00, float %6142
  %6144 = fmul fast float %4227, 0x3FF7154760000000
  %6145 = fmul fast float %6144, %6143
  %6146 = fmul fast float %4228, 0x3FF7154760000000
  %6147 = fmul fast float %6146, %6143
  %6148 = fmul fast float %4229, 0x3FF7154760000000
  %6149 = fmul fast float %6148, %6143
  %6150 = call float @dx.op.unary.f32(i32 21, float %6145)  ; Exp(value)
  %6151 = call float @dx.op.unary.f32(i32 21, float %6147)  ; Exp(value)
  %6152 = call float @dx.op.unary.f32(i32 21, float %6149)  ; Exp(value)
  %6153 = call float @dx.op.unary.f32(i32 7, float %6150)  ; Saturate(value)
  %6154 = call float @dx.op.unary.f32(i32 7, float %6151)  ; Saturate(value)
  %6155 = call float @dx.op.unary.f32(i32 7, float %6152)  ; Saturate(value)
  %6156 = fmul fast float %6080, %6153
  %6157 = fmul fast float %6081, %6154
  %6158 = fmul fast float %6082, %6155
  %6159 = fsub fast float %5247, %5018
  %6160 = fsub fast float %5248, %5017
  %6161 = fsub fast float %5249, %5016
  %6162 = call float @dx.op.dot3.f32(i32 55, float %6159, float %6160, float %6161, float %6159, float %6160, float %6161)  ; Dot3(ax,ay,az,bx,by,bz)
  %6163 = call float @dx.op.unary.f32(i32 25, float %6162)  ; Rsqrt(value)
  %6164 = fmul fast float %6163, %6159
  %6165 = fmul fast float %6163, %6160
  %6166 = fmul fast float %6163, %6161
  %6167 = call float @dx.op.dot3.f32(i32 55, float %5247, float %5248, float %5249, float %5025, float %5026, float %5027)  ; Dot3(ax,ay,az,bx,by,bz)
  %6168 = call float @dx.op.dot3.f32(i32 55, float %5015, float %5014, float %5013, float %6164, float %6165, float %6166)  ; Dot3(ax,ay,az,bx,by,bz)
  %6169 = call float @dx.op.unary.f32(i32 7, float %6167)  ; Saturate(value)
  %6170 = fmul fast float %6169, %6169
  %6171 = fmul fast float %6170, %5046
  %6172 = call float @dx.op.unary.f32(i32 7, float %6171)  ; Saturate(value)
  %6173 = fmul fast float %6172, %6169
  %6174 = call float @dx.op.dot3.f32(i32 55, float %5025, float %5026, float %5027, float %6164, float %6165, float %6166)  ; Dot3(ax,ay,az,bx,by,bz)
  %6175 = fmul fast float %6174, %6174
  %6176 = call float @dx.op.unary.f32(i32 6, float %6167)  ; FAbs(value)
  %6177 = fsub fast float 1.000000e+00, %5028
  %6178 = call float @dx.op.binary.f32(i32 35, float %6177, float 0x3F847AE140000000)  ; FMax(a,b)
  %6179 = fmul fast float %6178, %6178
  %6180 = fmul fast float %6179, %6179
  %6181 = fsub fast float 1.000000e+00, %6180
  %6182 = fmul fast float %5033, %5033
  %6183 = fmul fast float %6182, %6181
  %6184 = fadd fast float %6183, %6180
  %6185 = bitcast float %6184 to i32
  %6186 = ashr i32 %6185, 1
  %6187 = add nsw i32 %6186, 532487669
  %6188 = bitcast i32 %6187 to float
  %6189 = fadd fast float %6188, %5033
  %6190 = fmul fast float %6180, %6175
  %6191 = fsub fast float 1.000000e+00, %6175
  %6192 = fadd fast float %6191, %6190
  %6193 = fmul fast float %6176, %6176
  %6194 = fmul fast float %6193, %6181
  %6195 = fadd fast float %6194, %6180
  %6196 = bitcast float %6195 to i32
  %6197 = ashr i32 %6196, 1
  %6198 = add nsw i32 %6197, 532487669
  %6199 = bitcast i32 %6198 to float
  %6200 = fadd fast float %6199, %6176
  %6201 = fmul fast float %6192, %6192
  %6202 = fmul fast float %6201, %6189
  %6203 = fmul fast float %6202, %6200
  %6204 = fdiv fast float 0x3FF0A00000000000, %6203
  %6205 = fmul fast float %6204, %6180
  %6206 = call float @dx.op.unary.f32(i32 6, float %6168)  ; FAbs(value)
  %6207 = fsub fast float 1.000000e+00, %6206
  %6208 = bitcast float %6207 to i32
  %6209 = sitofp i32 %6208 to float
  %6210 = fmul fast float %6209, 5.000000e+00
  %6211 = fadd fast float %6210, 0xC1EFBF8940000000
  %6212 = fptosi float %6211 to i32
  %6213 = bitcast i32 %6212 to float
  %6214 = fsub fast float 1.000000e+00, %5022
  %6215 = fsub fast float 1.000000e+00, %5023
  %6216 = fsub fast float 1.000000e+00, %5031
  %6217 = fmul fast float %6213, %6214
  %6218 = fmul fast float %6213, %6215
  %6219 = fmul fast float %6213, %6216
  %6220 = fadd fast float %6217, %5022
  %6221 = fadd fast float %6218, %5023
  %6222 = fadd fast float %6219, %5031
  br i1 %5158, label %6223, label %6246

; <label>:6223                                    ; preds = %6140
  %6224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3825, float %6206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6225 = extractvalue %dx.types.ResRet.f32 %6224, 0
  %6226 = extractvalue %dx.types.ResRet.f32 %6224, 1
  %6227 = extractvalue %dx.types.ResRet.f32 %6224, 2
  %6228 = fadd fast float %6225, -5.000000e-01
  %6229 = fadd fast float %6226, -5.000000e-01
  %6230 = fadd fast float %6227, -5.000000e-01
  %6231 = fmul fast float %5022, 4.000000e+00
  %6232 = fmul fast float %6231, %6214
  %6233 = fmul fast float %6232, %6228
  %6234 = fmul fast float %5023, 4.000000e+00
  %6235 = fmul fast float %6234, %6215
  %6236 = fmul fast float %6235, %6229
  %6237 = fmul fast float %5031, 4.000000e+00
  %6238 = fmul fast float %6237, %6216
  %6239 = fmul fast float %6238, %6230
  %6240 = fadd fast float %6233, %6220
  %6241 = fadd fast float %6236, %6221
  %6242 = fadd fast float %6239, %6222
  %6243 = call float @dx.op.unary.f32(i32 7, float %6240)  ; Saturate(value)
  %6244 = call float @dx.op.unary.f32(i32 7, float %6241)  ; Saturate(value)
  %6245 = call float @dx.op.unary.f32(i32 7, float %6242)  ; Saturate(value)
  br label %6246

; <label>:6246                                    ; preds = %6223, %6140
  %6247 = phi float [ %6243, %6223 ], [ %6220, %6140 ]
  %6248 = phi float [ %6244, %6223 ], [ %6221, %6140 ]
  %6249 = phi float [ %6245, %6223 ], [ %6222, %6140 ]
  %6250 = fmul fast float %6167, 9.843750e-01
  %6251 = fadd fast float %6250, 7.812500e-03
  %6252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6251, float %5148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6253 = extractvalue %dx.types.ResRet.f32 %6252, 2
  %6254 = extractvalue %dx.types.ResRet.f32 %6252, 3
  %6255 = fmul fast float %6253, %5022
  %6256 = fmul fast float %6253, %5023
  %6257 = fmul fast float %6253, %5031
  %6258 = fadd fast float %6255, %6254
  %6259 = fadd fast float %6256, %6254
  %6260 = fadd fast float %6257, %6254
  br i1 %5158, label %6261, label %6284

; <label>:6261                                    ; preds = %6246
  %6262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3825, float %6167, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6263 = extractvalue %dx.types.ResRet.f32 %6262, 0
  %6264 = extractvalue %dx.types.ResRet.f32 %6262, 1
  %6265 = extractvalue %dx.types.ResRet.f32 %6262, 2
  %6266 = fadd fast float %6263, -5.000000e-01
  %6267 = fadd fast float %6264, -5.000000e-01
  %6268 = fadd fast float %6265, -5.000000e-01
  %6269 = fmul fast float %5022, 4.000000e+00
  %6270 = fmul fast float %6269, %6214
  %6271 = fmul fast float %6270, %6266
  %6272 = fmul fast float %5023, 4.000000e+00
  %6273 = fmul fast float %6272, %6215
  %6274 = fmul fast float %6273, %6267
  %6275 = fmul fast float %5031, 4.000000e+00
  %6276 = fmul fast float %6275, %6216
  %6277 = fmul fast float %6276, %6268
  %6278 = fadd fast float %6271, %6258
  %6279 = fadd fast float %6274, %6259
  %6280 = fadd fast float %6277, %6260
  %6281 = call float @dx.op.unary.f32(i32 7, float %6278)  ; Saturate(value)
  %6282 = call float @dx.op.unary.f32(i32 7, float %6279)  ; Saturate(value)
  %6283 = call float @dx.op.unary.f32(i32 7, float %6280)  ; Saturate(value)
  br label %6284

; <label>:6284                                    ; preds = %6261, %6246
  %6285 = phi float [ %6281, %6261 ], [ %6258, %6246 ]
  %6286 = phi float [ %6282, %6261 ], [ %6259, %6246 ]
  %6287 = phi float [ %6283, %6261 ], [ %6260, %6246 ]
  %6288 = call float @dx.op.binary.f32(i32 35, float %6286, float %6287)  ; FMax(a,b)
  %6289 = call float @dx.op.binary.f32(i32 35, float %6285, float %6288)  ; FMax(a,b)
  %6290 = fsub fast float 1.000000e+00, %6289
  %6291 = fmul fast float %6247, %6205
  %6292 = fmul fast float %6248, %6205
  %6293 = fmul fast float %6249, %6205
  %6294 = fsub fast float 1.000000e+00, %6168
  %6295 = bitcast float %6294 to i32
  %6296 = sitofp i32 %6295 to float
  %6297 = fmul fast float %6296, 5.000000e+00
  %6298 = fadd fast float %6297, 0xC1EFBF8940000000
  %6299 = fptosi float %6298 to i32
  %6300 = bitcast i32 %6299 to float
  %6301 = fmul fast float %6300, %3826
  %6302 = fmul fast float %6290, %6301
  %6303 = fmul fast float %6302, %5208
  %6304 = fmul fast float %6302, %5209
  %6305 = fmul fast float %6302, %5210
  %6306 = fadd fast float %6303, %6291
  %6307 = fadd fast float %6304, %6292
  %6308 = fadd fast float %6305, %6293
  %6309 = fmul fast float %6173, %6156
  %6310 = fmul fast float %6309, %6290
  %6311 = fmul fast float %6173, %6157
  %6312 = fmul fast float %6311, %6290
  %6313 = fmul fast float %6173, %6158
  %6314 = fmul fast float %6313, %6290
  %6315 = fmul fast float %6309, %6306
  %6316 = fmul fast float %6311, %6307
  %6317 = fmul fast float %6313, %6308
  %6318 = fadd fast float %6310, %5192
  %6319 = fmul fast float %6318, %3822
  %6320 = fadd fast float %6312, %5193
  %6321 = fmul fast float %6320, %3822
  %6322 = fadd fast float %6314, %5194
  %6323 = fmul fast float %6322, %3822
  %6324 = fadd fast float %6315, %5235
  %6325 = fmul fast float %6324, %3822
  %6326 = fadd fast float %6316, %5238
  %6327 = fmul fast float %6326, %3822
  %6328 = fadd fast float %6317, %5241
  %6329 = fmul fast float %6328, %3822
  br label %6330

; <label>:6330                                    ; preds = %6284, %6074, %5185
  %6331 = phi float [ %5236, %5185 ], [ %5236, %6074 ], [ %6325, %6284 ]
  %6332 = phi float [ %5239, %5185 ], [ %5239, %6074 ], [ %6327, %6284 ]
  %6333 = phi float [ %5242, %5185 ], [ %5242, %6074 ], [ %6329, %6284 ]
  %6334 = phi float [ %5231, %5185 ], [ %5231, %6074 ], [ %6319, %6284 ]
  %6335 = phi float [ %5232, %5185 ], [ %5232, %6074 ], [ %6321, %6284 ]
  %6336 = phi float [ %5233, %5185 ], [ %5233, %6074 ], [ %6323, %6284 ]
  %6337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6338 = extractvalue %dx.types.CBufRet.i32 %6337, 0
  %6339 = icmp eq i32 %6338, 0
  br i1 %6339, label %6960, label %6340

; <label>:6340                                    ; preds = %6330
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 2
  %6343 = extractvalue %dx.types.CBufRet.f32 %6341, 3
  %6344 = fmul fast float %6342, %104
  %6345 = fmul fast float %6343, %105
  %6346 = fptoui float %6344 to i32
  %6347 = fptoui float %6345 to i32
  %6348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6349 = extractvalue %dx.types.CBufRet.f32 %6348, 0
  %6350 = extractvalue %dx.types.CBufRet.f32 %6348, 2
  %6351 = extractvalue %dx.types.CBufRet.f32 %6348, 3
  %6352 = fadd fast float %95, -4.000000e+00
  %6353 = call float @dx.op.binary.f32(i32 35, float %6352, float 0.000000e+00)  ; FMax(a,b)
  %6354 = fadd fast float %6353, %6349
  %6355 = fmul fast float %6354, %6350
  %6356 = call float @dx.op.unary.f32(i32 23, float %6355)  ; Log(value)
  %6357 = fmul fast float %6356, %6351
  %6358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6359 = extractvalue %dx.types.CBufRet.f32 %6358, 2
  %6360 = fmul fast float %6357, %6359
  %6361 = call float @dx.op.unary.f32(i32 7, float %6360)  ; Saturate(value)
  %6362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6363 = extractvalue %dx.types.CBufRet.i32 %6362, 1
  %6364 = add i32 %6363, -1
  %6365 = uitofp i32 %6363 to float
  %6366 = fmul fast float %6365, %6361
  %6367 = fptoui float %6366 to i32
  %6368 = call i32 @dx.op.binary.i32(i32 40, i32 %6367, i32 %6364)  ; UMin(a,b)
  %6369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6370 = extractvalue %dx.types.CBufRet.i32 %6369, 2
  %6371 = extractvalue %dx.types.CBufRet.i32 %6369, 3
  %6372 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6347, i32 %6370, i32 %6346)  ; UMad(a,b,c)
  %6373 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6368, i32 %6371, i32 %6372)  ; UMad(a,b,c)
  %6374 = add nsw i32 %6338, -1
  %6375 = call i32 @dx.op.binary.i32(i32 37, i32 %6374, i32 0)  ; IMax(a,b)
  %6376 = call float @dx.op.binary.f32(i32 35, float %95, float 0.000000e+00)  ; FMax(a,b)
  %6377 = fptoui float %6376 to i32
  %6378 = lshr i32 %6377, 5
  %6379 = call i32 @dx.op.binary.i32(i32 40, i32 %6378, i32 8191)  ; UMin(a,b)
  %6380 = shl i32 %6379, 2
  %6381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6380, i32 undef)  ; BufferLoad(srv,index,wot)
  %6382 = extractvalue %dx.types.ResRet.i32 %6381, 0
  %6383 = lshr i32 %6382, 16
  %6384 = and i32 %6382, 65535
  %6385 = lshr i32 %6382, 21
  %6386 = lshr i32 %6384, 5
  %6387 = call i32 @dx.op.binary.i32(i32 40, i32 %6386, i32 %6375)  ; UMin(a,b)
  %6388 = icmp ugt i32 %6385, %6387
  br i1 %6388, label %6960, label %6389

; <label>:6389                                    ; preds = %6340
  br label %6390

; <label>:6390                                    ; preds = %6950, %6389
  %6391 = phi i32 [ %6957, %6950 ], [ %6385, %6389 ]
  %6392 = phi float [ %6951, %6950 ], [ %6331, %6389 ]
  %6393 = phi float [ %6952, %6950 ], [ %6332, %6389 ]
  %6394 = phi float [ %6953, %6950 ], [ %6333, %6389 ]
  %6395 = phi float [ %6954, %6950 ], [ %6334, %6389 ]
  %6396 = phi float [ %6955, %6950 ], [ %6335, %6389 ]
  %6397 = phi float [ %6956, %6950 ], [ %6336, %6389 ]
  %6398 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6399 = extractvalue %dx.types.CBufRet.i32 %6398, 0
  %6400 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6373, i32 %6399, i32 %6391)  ; UMad(a,b,c)
  %6401 = shl i32 %6400, 2
  %6402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6401, i32 undef)  ; BufferLoad(srv,index,wot)
  %6403 = extractvalue %dx.types.ResRet.i32 %6402, 0
  %6404 = shl i32 %6391, 5
  %6405 = sub nsw i32 %6383, %6404
  %6406 = call i32 @dx.op.binary.i32(i32 37, i32 %6405, i32 0)  ; IMax(a,b)
  %6407 = call i32 @dx.op.binary.i32(i32 38, i32 %6406, i32 31)  ; IMin(a,b)
  %6408 = sub nsw i32 1, %6383
  %6409 = add nsw i32 %6408, %6384
  %6410 = call i32 @dx.op.binary.i32(i32 37, i32 %6409, i32 0)  ; IMax(a,b)
  %6411 = call i32 @dx.op.binary.i32(i32 38, i32 %6410, i32 32)  ; IMin(a,b)
  %6412 = and i32 %6411, 31
  %6413 = shl i32 -1, %6412
  %6414 = xor i32 %6413, -1
  %6415 = and i32 %6407, 31
  %6416 = shl i32 %6414, %6415
  %6417 = icmp eq i32 %6411, 32
  %6418 = select i1 %6417, i32 -1, i32 %6416
  %6419 = and i32 %6418, %6403
  %6420 = icmp eq i32 %6419, 0
  br i1 %6420, label %6950, label %6421

; <label>:6421                                    ; preds = %6390
  br label %6422

; <label>:6422                                    ; preds = %6556, %6421
  %6423 = phi i32 [ %6434, %6556 ], [ %6419, %6421 ]
  %6424 = phi float [ %6557, %6556 ], [ %6392, %6421 ]
  %6425 = phi float [ %6558, %6556 ], [ %6393, %6421 ]
  %6426 = phi float [ %6559, %6556 ], [ %6394, %6421 ]
  %6427 = phi float [ %6560, %6556 ], [ %6395, %6421 ]
  %6428 = phi float [ %6561, %6556 ], [ %6396, %6421 ]
  %6429 = phi float [ %6562, %6556 ], [ %6397, %6421 ]
  %6430 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6423)  ; FirstbitLo(value)
  %6431 = add i32 %6430, %6404
  %6432 = and i32 %6430, 31
  %6433 = shl i32 1, %6432
  %6434 = xor i32 %6433, %6423
  %6435 = mul i32 %6431, 112
  %6436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6435, i32 undef)  ; BufferLoad(srv,index,wot)
  %6437 = extractvalue %dx.types.ResRet.f32 %6436, 0
  %6438 = extractvalue %dx.types.ResRet.f32 %6436, 1
  %6439 = extractvalue %dx.types.ResRet.f32 %6436, 2
  %6440 = or i32 %6435, 12
  %6441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6440, i32 undef)  ; BufferLoad(srv,index,wot)
  %6442 = extractvalue %dx.types.ResRet.f32 %6441, 0
  %6443 = add i32 %6435, 16
  %6444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6443, i32 undef)  ; BufferLoad(srv,index,wot)
  %6445 = extractvalue %dx.types.ResRet.f32 %6444, 0
  %6446 = extractvalue %dx.types.ResRet.f32 %6444, 1
  %6447 = extractvalue %dx.types.ResRet.f32 %6444, 2
  %6448 = add i32 %6435, 28
  %6449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6448, i32 undef)  ; BufferLoad(srv,index,wot)
  %6450 = extractvalue %dx.types.ResRet.i32 %6449, 0
  %6451 = add i32 %6435, 44
  %6452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6451, i32 undef)  ; BufferLoad(srv,index,wot)
  %6453 = extractvalue %dx.types.ResRet.f32 %6452, 0
  %6454 = add i32 %6435, 48
  %6455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6454, i32 undef)  ; BufferLoad(srv,index,wot)
  %6456 = extractvalue %dx.types.ResRet.f32 %6455, 0
  %6457 = extractvalue %dx.types.ResRet.f32 %6455, 1
  %6458 = extractvalue %dx.types.ResRet.f32 %6455, 2
  %6459 = extractvalue %dx.types.ResRet.f32 %6455, 3
  %6460 = add i32 %6435, 64
  %6461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6460, i32 undef)  ; BufferLoad(srv,index,wot)
  %6462 = extractvalue %dx.types.ResRet.f32 %6461, 0
  %6463 = extractvalue %dx.types.ResRet.f32 %6461, 1
  %6464 = extractvalue %dx.types.ResRet.f32 %6461, 2
  %6465 = extractvalue %dx.types.ResRet.f32 %6461, 3
  %6466 = add i32 %6435, 80
  %6467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6466, i32 undef)  ; BufferLoad(srv,index,wot)
  %6468 = extractvalue %dx.types.ResRet.f32 %6467, 1
  %6469 = extractvalue %dx.types.ResRet.f32 %6467, 2
  %6470 = add i32 %6435, 92
  %6471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6470, i32 undef)  ; BufferLoad(srv,index,wot)
  %6472 = extractvalue %dx.types.ResRet.i32 %6471, 0
  %6473 = call float @dx.op.dot3.f32(i32 55, float %6437, float %6438, float %6439, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6474 = select i1 %250, float %6468, float %6437
  %6475 = select i1 %250, float %6473, float %6438
  %6476 = select i1 %250, float %6469, float %6439
  %6477 = and i32 %6472, 65535
  %6478 = uitofp i32 %6477 to float
  %6479 = lshr i32 %6472, 16
  %6480 = uitofp i32 %6479 to float
  %6481 = and i32 %6450, 65535
  %6482 = and i32 %6450, 50331648
  %6483 = icmp eq i32 %6482, 33554432
  %6484 = fsub fast float %6456, %191
  %6485 = fsub fast float %6457, %192
  %6486 = fsub fast float %6458, %193
  %6487 = call float @dx.op.dot3.f32(i32 55, float %6484, float %6485, float %6486, float %6484, float %6485, float %6486)  ; Dot3(ax,ay,az,bx,by,bz)
  %6488 = call float @dx.op.unary.f32(i32 24, float %6487)  ; Sqrt(value)
  %6489 = fdiv fast float 1.000000e+00, %6488
  %6490 = fmul fast float %6489, %6484
  %6491 = fmul fast float %6489, %6485
  %6492 = fmul fast float %6489, %6486
  %6493 = fadd fast float %6488, %6442
  %6494 = fdiv fast float 1.000000e+00, %6493
  %6495 = fmul float %6453, %6494
  %6496 = fmul float %6495, %6495
  %6497 = call float @dx.op.unary.f32(i32 7, float %6496)  ; Saturate(value)
  br i1 %6483, label %6498, label %6519

; <label>:6498                                    ; preds = %6422
  %6499 = fmul fast float %6464, %6445
  %6500 = fmul fast float %6464, %6446
  %6501 = fmul fast float %6464, %6447
  %6502 = fadd fast float %6484, %6499
  %6503 = fadd fast float %6485, %6500
  %6504 = fadd fast float %6486, %6501
  %6505 = call float @dx.op.dot3.f32(i32 55, float %6502, float %6503, float %6504, float %6502, float %6503, float %6504)  ; Dot3(ax,ay,az,bx,by,bz)
  %6506 = call float @dx.op.unary.f32(i32 25, float %6505)  ; Rsqrt(value)
  %6507 = fmul fast float %6506, %6502
  %6508 = fmul fast float %6506, %6503
  %6509 = fmul fast float %6506, %6504
  %6510 = fsub fast float %191, %6456
  %6511 = fsub fast float %192, %6457
  %6512 = fsub fast float %193, %6458
  %6513 = fsub fast float -0.000000e+00, %6510
  %6514 = fsub fast float -0.000000e+00, %6511
  %6515 = fsub fast float -0.000000e+00, %6512
  %6516 = call float @dx.op.dot3.f32(i32 55, float %6513, float %6514, float %6515, float %6445, float %6446, float %6447)  ; Dot3(ax,ay,az,bx,by,bz)
  %6517 = fcmp fast ogt float %6516, 0.000000e+00
  %6518 = uitofp i1 %6517 to float
  br label %6519

; <label>:6519                                    ; preds = %6498, %6422
  %6520 = phi float [ %6518, %6498 ], [ 1.000000e+00, %6422 ]
  %6521 = phi float [ %6507, %6498 ], [ %6490, %6422 ]
  %6522 = phi float [ %6508, %6498 ], [ %6491, %6422 ]
  %6523 = phi float [ %6509, %6498 ], [ %6492, %6422 ]
  %6524 = call float @dx.op.dot3.f32(i32 55, float %6445, float %6446, float %6447, float %6521, float %6522, float %6523)  ; Dot3(ax,ay,az,bx,by,bz)
  %6525 = fmul fast float %6524, %6524
  %6526 = call float @dx.op.unary.f32(i32 7, float %6525)  ; Saturate(value)
  %6527 = fsub fast float 1.000000e+00, %6526
  %6528 = fmul fast float %6527, 5.000000e-01
  %6529 = fcmp fast ogt float %6524, 0.000000e+00
  %6530 = fsub fast float 1.000000e+00, %6528
  %6531 = select i1 %6529, float %6528, float %6530
  %6532 = fmul fast float %6531, %6480
  %6533 = fadd fast float %6532, %6478
  %6534 = fmul fast float %6533, 0x3EF0001000000000
  %6535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %48, float %6534, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6536 = extractvalue %dx.types.ResRet.f32 %6535, 0
  %6537 = fmul fast float %6524, %6462
  %6538 = fadd fast float %6537, %6463
  %6539 = call float @dx.op.unary.f32(i32 7, float %6538)  ; Saturate(value)
  %6540 = select i1 %6483, float 1.000000e+00, float %6539
  %6541 = select i1 %6483, float %6539, float 1.000000e+00
  %6542 = fmul fast float %6488, %6459
  %6543 = fsub fast float 1.000000e+00, %6542
  %6544 = fmul fast float %6543, %6465
  %6545 = call float @dx.op.unary.f32(i32 7, float %6544)  ; Saturate(value)
  %6546 = fmul fast float %6545, %6541
  %6547 = fmul fast float %6546, 2.000000e+00
  %6548 = fsub fast float 3.000000e+00, %6547
  %6549 = fmul fast float %6536, %6520
  %6550 = fmul fast float %6546, %6546
  %6551 = fmul fast float %6550, %6549
  %6552 = fmul fast float %6551, %6548
  %6553 = call float @dx.op.binary.f32(i32 36, float %6552, float %6552)  ; FMin(a,b)
  %6554 = call float @dx.op.binary.f32(i32 36, float %6552, float %6553)  ; FMin(a,b)
  %6555 = fcmp fast ogt float %6554, 0.000000e+00
  br i1 %6555, label %6564, label %6556, !dx.controlflow.hints !120

; <label>:6556                                    ; preds = %6906, %6664, %6519
  %6557 = phi float [ %6424, %6664 ], [ %6424, %6519 ], [ %6946, %6906 ]
  %6558 = phi float [ %6425, %6664 ], [ %6425, %6519 ], [ %6947, %6906 ]
  %6559 = phi float [ %6426, %6664 ], [ %6426, %6519 ], [ %6948, %6906 ]
  %6560 = phi float [ %6427, %6664 ], [ %6427, %6519 ], [ %6940, %6906 ]
  %6561 = phi float [ %6428, %6664 ], [ %6428, %6519 ], [ %6941, %6906 ]
  %6562 = phi float [ %6429, %6664 ], [ %6429, %6519 ], [ %6942, %6906 ]
  %6563 = icmp eq i32 %6423, %6433
  br i1 %6563, label %6949, label %6422

; <label>:6564                                    ; preds = %6519
  %6565 = icmp eq i32 %6481, 255
  br i1 %6565, label %6664, label %6566, !dx.controlflow.hints !121

; <label>:6566                                    ; preds = %6564
  %6567 = mul nuw nsw i32 %6481, 176
  %6568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6567, i32 undef)  ; BufferLoad(srv,index,wot)
  %6569 = extractvalue %dx.types.ResRet.f32 %6568, 0
  %6570 = extractvalue %dx.types.ResRet.f32 %6568, 1
  %6571 = extractvalue %dx.types.ResRet.f32 %6568, 2
  %6572 = extractvalue %dx.types.ResRet.f32 %6568, 3
  %6573 = add nuw nsw i32 %6567, 16
  %6574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6573, i32 undef)  ; BufferLoad(srv,index,wot)
  %6575 = extractvalue %dx.types.ResRet.f32 %6574, 0
  %6576 = extractvalue %dx.types.ResRet.f32 %6574, 1
  %6577 = add nuw nsw i32 %6567, 32
  %6578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6577, i32 undef)  ; BufferLoad(srv,index,wot)
  %6579 = extractvalue %dx.types.ResRet.f32 %6578, 0
  %6580 = extractvalue %dx.types.ResRet.f32 %6578, 1
  %6581 = extractvalue %dx.types.ResRet.f32 %6578, 2
  %6582 = add nuw nsw i32 %6567, 48
  %6583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6582, i32 undef)  ; BufferLoad(srv,index,wot)
  %6584 = extractvalue %dx.types.ResRet.f32 %6583, 0
  %6585 = extractvalue %dx.types.ResRet.f32 %6583, 1
  %6586 = extractvalue %dx.types.ResRet.f32 %6583, 2
  %6587 = extractvalue %dx.types.ResRet.f32 %6583, 3
  %6588 = add nuw nsw i32 %6567, 64
  %6589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6588, i32 undef)  ; BufferLoad(srv,index,wot)
  %6590 = extractvalue %dx.types.ResRet.f32 %6589, 0
  %6591 = extractvalue %dx.types.ResRet.f32 %6589, 1
  %6592 = extractvalue %dx.types.ResRet.f32 %6589, 2
  %6593 = extractvalue %dx.types.ResRet.f32 %6589, 3
  %6594 = add nuw nsw i32 %6567, 80
  %6595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6594, i32 undef)  ; BufferLoad(srv,index,wot)
  %6596 = extractvalue %dx.types.ResRet.f32 %6595, 0
  %6597 = extractvalue %dx.types.ResRet.f32 %6595, 1
  %6598 = extractvalue %dx.types.ResRet.f32 %6595, 2
  %6599 = extractvalue %dx.types.ResRet.f32 %6595, 3
  %6600 = add nuw nsw i32 %6567, 96
  %6601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6600, i32 undef)  ; BufferLoad(srv,index,wot)
  %6602 = extractvalue %dx.types.ResRet.f32 %6601, 0
  %6603 = extractvalue %dx.types.ResRet.f32 %6601, 1
  %6604 = extractvalue %dx.types.ResRet.f32 %6601, 2
  %6605 = extractvalue %dx.types.ResRet.f32 %6601, 3
  %6606 = bitcast float %6576 to i32
  %6607 = fmul fast float %6581, %111
  %6608 = fmul fast float %6581, %112
  %6609 = fmul fast float %6581, %113
  %6610 = fadd fast float %6607, %191
  %6611 = fadd fast float %6608, %192
  %6612 = fadd fast float %6609, %193
  %6613 = fmul fast float %6610, %6584
  %6614 = call float @dx.op.tertiary.f32(i32 46, float %6611, float %6590, float %6613)  ; FMad(a,b,c)
  %6615 = call float @dx.op.tertiary.f32(i32 46, float %6612, float %6596, float %6614)  ; FMad(a,b,c)
  %6616 = fadd fast float %6615, %6602
  %6617 = fmul fast float %6610, %6585
  %6618 = call float @dx.op.tertiary.f32(i32 46, float %6611, float %6591, float %6617)  ; FMad(a,b,c)
  %6619 = call float @dx.op.tertiary.f32(i32 46, float %6612, float %6597, float %6618)  ; FMad(a,b,c)
  %6620 = fadd fast float %6619, %6603
  %6621 = fmul fast float %6610, %6586
  %6622 = call float @dx.op.tertiary.f32(i32 46, float %6611, float %6592, float %6621)  ; FMad(a,b,c)
  %6623 = call float @dx.op.tertiary.f32(i32 46, float %6612, float %6598, float %6622)  ; FMad(a,b,c)
  %6624 = fadd fast float %6623, %6604
  %6625 = fmul fast float %6610, %6587
  %6626 = call float @dx.op.tertiary.f32(i32 46, float %6611, float %6593, float %6625)  ; FMad(a,b,c)
  %6627 = call float @dx.op.tertiary.f32(i32 46, float %6612, float %6599, float %6626)  ; FMad(a,b,c)
  %6628 = fadd fast float %6627, %6605
  %6629 = fdiv fast float %6616, %6628
  %6630 = fdiv fast float %6620, %6628
  %6631 = fdiv fast float %6624, %6628
  %6632 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6631)  ; FMax(a,b)
  %6633 = fmul fast float %261, 0x401921FB60000000
  %6634 = call float @dx.op.unary.f32(i32 13, float %6633)  ; Sin(value)
  %6635 = call float @dx.op.unary.f32(i32 12, float %6633)  ; Cos(value)
  %6636 = fsub fast float -0.000000e+00, %6634
  %6637 = fmul fast float %6571, 5.000000e-01
  %6638 = call float @dx.op.dot2.f32(i32 54, float %261, float %261, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6639 = call float @dx.op.unary.f32(i32 22, float %6638)  ; Frc(value)
  %6640 = fmul fast float %6639, 0x404A7DD040000000
  %6641 = call float @dx.op.unary.f32(i32 22, float %6640)  ; Frc(value)
  %6642 = fmul fast float %6641, %6580
  %6643 = fadd fast float %6642, %6637
  %6644 = call float @dx.op.tertiary.f32(i32 46, float %6643, float %6636, float 0.000000e+00)  ; FMad(a,b,c)
  %6645 = call float @dx.op.tertiary.f32(i32 46, float %6643, float %6635, float 0.000000e+00)  ; FMad(a,b,c)
  %6646 = fadd fast float %6644, %6629
  %6647 = fadd fast float %6645, %6630
  %6648 = fmul fast float %6646, %6575
  %6649 = fmul fast float %6647, %6575
  %6650 = call float @dx.op.binary.f32(i32 35, float %6648, float %6571)  ; FMax(a,b)
  %6651 = call float @dx.op.binary.f32(i32 35, float %6649, float %6571)  ; FMax(a,b)
  %6652 = call float @dx.op.binary.f32(i32 36, float %6650, float %6572)  ; FMin(a,b)
  %6653 = call float @dx.op.binary.f32(i32 36, float %6651, float %6572)  ; FMin(a,b)
  %6654 = fadd fast float %6652, %6569
  %6655 = fadd fast float %6653, %6570
  %6656 = uitofp i32 %6606 to float
  %6657 = fadd fast float %6632, %6579
  %6658 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %50, float %6654, float %6655, float %6656, float undef, i32 0, i32 0, i32 undef, float %6657)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6659 = extractvalue %dx.types.ResRet.f32 %6658, 0
  %6660 = fadd fast float %6659, -1.000000e+00
  %6661 = fmul fast float %6660, %6540
  %6662 = fadd fast float %6661, 1.000000e+00
  %6663 = fmul fast float %6662, %6552
  br label %6664

; <label>:6664                                    ; preds = %6566, %6564
  %6665 = phi float [ %6663, %6566 ], [ %6552, %6564 ]
  %6666 = call float @dx.op.binary.f32(i32 36, float %6665, float %6665)  ; FMin(a,b)
  %6667 = call float @dx.op.binary.f32(i32 36, float %6665, float %6666)  ; FMin(a,b)
  %6668 = fcmp fast ogt float %6667, 0.000000e+00
  br i1 %6668, label %6669, label %6556, !dx.controlflow.hints !122

; <label>:6669                                    ; preds = %6664
  %6670 = fmul fast float %6665, %6474
  %6671 = fmul fast float %6665, %6475
  %6672 = fmul fast float %6665, %6476
  %6673 = fsub fast float %6458, %4226
  %6674 = fcmp fast ogt float %6673, 0.000000e+00
  %6675 = fsub fast float %193, %4226
  %6676 = fcmp fast ogt float %6675, 0.000000e+00
  %6677 = xor i1 %6676, %6674
  %6678 = fsub fast float %4226, %6458
  %6679 = fmul fast float %6678, 2.000000e+00
  %6680 = fadd fast float %6679, %6458
  %6681 = select i1 %6677, float %6458, float %6680
  %6682 = fsub fast float %6681, %193
  %6683 = call float @dx.op.dot3.f32(i32 55, float %6484, float %6485, float %6682, float %6484, float %6485, float %6682)  ; Dot3(ax,ay,az,bx,by,bz)
  %6684 = call float @dx.op.unary.f32(i32 25, float %6683)  ; Rsqrt(value)
  %6685 = fmul fast float %6684, %6484
  %6686 = fmul fast float %6684, %6485
  %6687 = fmul fast float %6684, %6682
  %6688 = fsub fast float %4226, %193
  %6689 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6688)  ; Dot3(ax,ay,az,bx,by,bz)
  %6690 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6685, float %6686, float %6687)  ; Dot3(ax,ay,az,bx,by,bz)
  %6691 = fdiv fast float 1.000000e+00, %6690
  %6692 = fmul fast float %6691, %6689
  %6693 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6675, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6694 = fcmp fast ogt float %6693, 0.000000e+00
  %6695 = fcmp fast olt float %6693, 0.000000e+00
  %6696 = zext i1 %6694 to i32
  %6697 = zext i1 %6695 to i32
  %6698 = sub nsw i32 %6696, %6697
  %6699 = sitofp i32 %6698 to float
  %6700 = fsub fast float %6681, %4226
  %6701 = call float @dx.op.dot3.f32(i32 55, float %6484, float %6485, float %6700, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6702 = fcmp fast ogt float %6701, 0.000000e+00
  %6703 = fcmp fast olt float %6701, 0.000000e+00
  %6704 = zext i1 %6702 to i32
  %6705 = zext i1 %6703 to i32
  %6706 = sub nsw i32 %6704, %6705
  %6707 = sitofp i32 %6706 to float
  %6708 = fcmp fast une float %6699, %6707
  br i1 %6708, label %6709, label %6719

; <label>:6709                                    ; preds = %6669
  %6710 = fmul fast float %6692, %6687
  %6711 = fmul fast float %6692, %6686
  %6712 = fmul fast float %6692, %6685
  %6713 = fmul fast float %6712, %6712
  %6714 = fmul fast float %6711, %6711
  %6715 = fadd fast float %6713, %6714
  %6716 = fmul fast float %6710, %6710
  %6717 = fadd fast float %6715, %6716
  %6718 = call float @dx.op.unary.f32(i32 24, float %6717)  ; Sqrt(value)
  br label %6731

; <label>:6719                                    ; preds = %6669
  %6720 = icmp slt i32 %6698, 0
  br i1 %6720, label %6721, label %6731

; <label>:6721                                    ; preds = %6719
  %6722 = fsub fast float %191, %6456
  %6723 = fsub fast float %192, %6457
  %6724 = fsub fast float %193, %6681
  %6725 = fmul fast float %6722, %6722
  %6726 = fmul fast float %6723, %6723
  %6727 = fadd fast float %6725, %6726
  %6728 = fmul fast float %6724, %6724
  %6729 = fadd fast float %6727, %6728
  %6730 = call float @dx.op.unary.f32(i32 24, float %6729)  ; Sqrt(value)
  br label %6731

; <label>:6731                                    ; preds = %6721, %6719, %6709
  %6732 = phi float [ %6718, %6709 ], [ %6730, %6721 ], [ 0.000000e+00, %6719 ]
  %6733 = and i1 %6676, %6674
  %6734 = fsub fast float -0.000000e+00, %6732
  %6735 = select i1 %6733, float -0.000000e+00, float %6734
  %6736 = fmul fast float %4227, 0x3FF7154760000000
  %6737 = fmul fast float %6736, %6735
  %6738 = fmul fast float %4228, 0x3FF7154760000000
  %6739 = fmul fast float %6738, %6735
  %6740 = fmul fast float %4229, 0x3FF7154760000000
  %6741 = fmul fast float %6740, %6735
  %6742 = call float @dx.op.unary.f32(i32 21, float %6737)  ; Exp(value)
  %6743 = call float @dx.op.unary.f32(i32 21, float %6739)  ; Exp(value)
  %6744 = call float @dx.op.unary.f32(i32 21, float %6741)  ; Exp(value)
  %6745 = call float @dx.op.unary.f32(i32 7, float %6742)  ; Saturate(value)
  %6746 = call float @dx.op.unary.f32(i32 7, float %6743)  ; Saturate(value)
  %6747 = call float @dx.op.unary.f32(i32 7, float %6744)  ; Saturate(value)
  %6748 = fmul fast float %6670, %6745
  %6749 = fmul fast float %6671, %6746
  %6750 = fmul fast float %6672, %6747
  %6751 = fsub fast float %6490, %5018
  %6752 = fsub fast float %6491, %5017
  %6753 = fsub fast float %6492, %5016
  %6754 = call float @dx.op.dot3.f32(i32 55, float %6751, float %6752, float %6753, float %6751, float %6752, float %6753)  ; Dot3(ax,ay,az,bx,by,bz)
  %6755 = call float @dx.op.unary.f32(i32 25, float %6754)  ; Rsqrt(value)
  %6756 = fmul fast float %6755, %6751
  %6757 = fmul fast float %6755, %6752
  %6758 = fmul fast float %6755, %6753
  %6759 = call float @dx.op.dot3.f32(i32 55, float %6490, float %6491, float %6492, float %5025, float %5026, float %5027)  ; Dot3(ax,ay,az,bx,by,bz)
  %6760 = call float @dx.op.dot3.f32(i32 55, float %5015, float %5014, float %5013, float %6756, float %6757, float %6758)  ; Dot3(ax,ay,az,bx,by,bz)
  %6761 = call float @dx.op.unary.f32(i32 7, float %6759)  ; Saturate(value)
  %6762 = fmul fast float %6761, %6497
  %6763 = fmul fast float %6761, %6761
  %6764 = fmul fast float %6763, %5046
  %6765 = call float @dx.op.unary.f32(i32 7, float %6764)  ; Saturate(value)
  %6766 = fmul fast float %6762, %6765
  %6767 = bitcast float %6487 to i32
  %6768 = ashr i32 %6767, 1
  %6769 = sub nsw i32 1597463007, %6768
  %6770 = bitcast i32 %6769 to float
  %6771 = fmul fast float %6770, %6484
  %6772 = fmul fast float %6770, %6485
  %6773 = fmul fast float %6770, %6486
  %6774 = fsub fast float %6771, %5018
  %6775 = fsub fast float %6772, %5017
  %6776 = fsub fast float %6773, %5016
  %6777 = call float @dx.op.dot3.f32(i32 55, float %6774, float %6775, float %6776, float %6774, float %6775, float %6776)  ; Dot3(ax,ay,az,bx,by,bz)
  %6778 = call float @dx.op.unary.f32(i32 25, float %6777)  ; Rsqrt(value)
  %6779 = fmul fast float %6774, %6778
  %6780 = fmul fast float %6775, %6778
  %6781 = fmul fast float %6776, %6778
  %6782 = call float @dx.op.dot3.f32(i32 55, float %5025, float %5026, float %5027, float %6779, float %6780, float %6781)  ; Dot3(ax,ay,az,bx,by,bz)
  %6783 = fmul fast float %6782, %6782
  %6784 = call float @dx.op.unary.f32(i32 6, float %6759)  ; FAbs(value)
  %6785 = fsub fast float 1.000000e+00, %5028
  %6786 = call float @dx.op.binary.f32(i32 35, float %6785, float 0x3F847AE140000000)  ; FMax(a,b)
  %6787 = fmul fast float %6786, %6786
  %6788 = fmul fast float %6787, %6787
  %6789 = fsub fast float 1.000000e+00, %6788
  %6790 = fmul fast float %5033, %5033
  %6791 = fmul fast float %6790, %6789
  %6792 = fadd fast float %6791, %6788
  %6793 = bitcast float %6792 to i32
  %6794 = ashr i32 %6793, 1
  %6795 = add nsw i32 %6794, 532487669
  %6796 = bitcast i32 %6795 to float
  %6797 = fadd fast float %6796, %5033
  %6798 = fmul fast float %6788, %6783
  %6799 = fsub fast float 1.000000e+00, %6783
  %6800 = fadd fast float %6799, %6798
  %6801 = fmul fast float %6784, %6784
  %6802 = fmul fast float %6801, %6789
  %6803 = fadd fast float %6802, %6788
  %6804 = bitcast float %6803 to i32
  %6805 = ashr i32 %6804, 1
  %6806 = add nsw i32 %6805, 532487669
  %6807 = bitcast i32 %6806 to float
  %6808 = fadd fast float %6807, %6784
  %6809 = fmul fast float %6800, %6800
  %6810 = fmul fast float %6809, %6797
  %6811 = fmul fast float %6810, %6808
  %6812 = fdiv fast float 1.000000e+00, %6811
  %6813 = bitcast float %6788 to i32
  %6814 = sitofp i32 %6813 to float
  %6815 = fmul fast float %6814, 0x3FE7F73180000000
  %6816 = fadd fast float %6815, 0x41AFE27C40000000
  %6817 = fptosi float %6816 to i32
  %6818 = bitcast i32 %6817 to float
  %6819 = fmul fast float %6453, 0x3FD80E9D60000000
  %6820 = fmul fast float %6819, %6770
  %6821 = fadd fast float %6818, %6820
  %6822 = bitcast float %6821 to i32
  %6823 = sub nsw i32 2129859010, %6822
  %6824 = bitcast i32 %6823 to float
  %6825 = fmul fast float %6788, %6812
  %6826 = fmul fast float %6825, %6818
  %6827 = fmul fast float %6826, %6824
  %6828 = call float @dx.op.unary.f32(i32 6, float %6760)  ; FAbs(value)
  %6829 = fsub fast float 1.000000e+00, %6828
  %6830 = bitcast float %6829 to i32
  %6831 = sitofp i32 %6830 to float
  %6832 = fmul fast float %6831, 5.000000e+00
  %6833 = fadd fast float %6832, 0xC1EFBF8940000000
  %6834 = fptosi float %6833 to i32
  %6835 = bitcast i32 %6834 to float
  %6836 = fsub fast float 1.000000e+00, %5022
  %6837 = fsub fast float 1.000000e+00, %5023
  %6838 = fsub fast float 1.000000e+00, %5031
  %6839 = fmul fast float %6835, %6836
  %6840 = fmul fast float %6835, %6837
  %6841 = fmul fast float %6835, %6838
  %6842 = fadd fast float %6839, %5022
  %6843 = fadd fast float %6840, %5023
  %6844 = fadd fast float %6841, %5031
  br i1 %5158, label %6845, label %6868

; <label>:6845                                    ; preds = %6731
  %6846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3825, float %6828, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6847 = extractvalue %dx.types.ResRet.f32 %6846, 0
  %6848 = extractvalue %dx.types.ResRet.f32 %6846, 1
  %6849 = extractvalue %dx.types.ResRet.f32 %6846, 2
  %6850 = fadd fast float %6847, -5.000000e-01
  %6851 = fadd fast float %6848, -5.000000e-01
  %6852 = fadd fast float %6849, -5.000000e-01
  %6853 = fmul fast float %5022, 4.000000e+00
  %6854 = fmul fast float %6853, %6836
  %6855 = fmul fast float %6854, %6850
  %6856 = fmul fast float %5023, 4.000000e+00
  %6857 = fmul fast float %6856, %6837
  %6858 = fmul fast float %6857, %6851
  %6859 = fmul fast float %5031, 4.000000e+00
  %6860 = fmul fast float %6859, %6838
  %6861 = fmul fast float %6860, %6852
  %6862 = fadd fast float %6855, %6842
  %6863 = fadd fast float %6858, %6843
  %6864 = fadd fast float %6861, %6844
  %6865 = call float @dx.op.unary.f32(i32 7, float %6862)  ; Saturate(value)
  %6866 = call float @dx.op.unary.f32(i32 7, float %6863)  ; Saturate(value)
  %6867 = call float @dx.op.unary.f32(i32 7, float %6864)  ; Saturate(value)
  br label %6868

; <label>:6868                                    ; preds = %6845, %6731
  %6869 = phi float [ %6865, %6845 ], [ %6842, %6731 ]
  %6870 = phi float [ %6866, %6845 ], [ %6843, %6731 ]
  %6871 = phi float [ %6867, %6845 ], [ %6844, %6731 ]
  %6872 = fmul fast float %6759, 9.843750e-01
  %6873 = fadd fast float %6872, 7.812500e-03
  %6874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6873, float %5148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6875 = extractvalue %dx.types.ResRet.f32 %6874, 2
  %6876 = extractvalue %dx.types.ResRet.f32 %6874, 3
  %6877 = fmul fast float %6875, %5022
  %6878 = fmul fast float %6875, %5023
  %6879 = fmul fast float %6875, %5031
  %6880 = fadd fast float %6877, %6876
  %6881 = fadd fast float %6878, %6876
  %6882 = fadd fast float %6879, %6876
  br i1 %5158, label %6883, label %6906

; <label>:6883                                    ; preds = %6868
  %6884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3825, float %6759, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6885 = extractvalue %dx.types.ResRet.f32 %6884, 0
  %6886 = extractvalue %dx.types.ResRet.f32 %6884, 1
  %6887 = extractvalue %dx.types.ResRet.f32 %6884, 2
  %6888 = fadd fast float %6885, -5.000000e-01
  %6889 = fadd fast float %6886, -5.000000e-01
  %6890 = fadd fast float %6887, -5.000000e-01
  %6891 = fmul fast float %5022, 4.000000e+00
  %6892 = fmul fast float %6891, %6836
  %6893 = fmul fast float %6892, %6888
  %6894 = fmul fast float %5023, 4.000000e+00
  %6895 = fmul fast float %6894, %6837
  %6896 = fmul fast float %6895, %6889
  %6897 = fmul fast float %5031, 4.000000e+00
  %6898 = fmul fast float %6897, %6838
  %6899 = fmul fast float %6898, %6890
  %6900 = fadd fast float %6893, %6880
  %6901 = fadd fast float %6896, %6881
  %6902 = fadd fast float %6899, %6882
  %6903 = call float @dx.op.unary.f32(i32 7, float %6900)  ; Saturate(value)
  %6904 = call float @dx.op.unary.f32(i32 7, float %6901)  ; Saturate(value)
  %6905 = call float @dx.op.unary.f32(i32 7, float %6902)  ; Saturate(value)
  br label %6906

; <label>:6906                                    ; preds = %6883, %6868
  %6907 = phi float [ %6903, %6883 ], [ %6880, %6868 ]
  %6908 = phi float [ %6904, %6883 ], [ %6881, %6868 ]
  %6909 = phi float [ %6905, %6883 ], [ %6882, %6868 ]
  %6910 = call float @dx.op.binary.f32(i32 35, float %6908, float %6909)  ; FMax(a,b)
  %6911 = call float @dx.op.binary.f32(i32 35, float %6907, float %6910)  ; FMax(a,b)
  %6912 = fsub fast float 1.000000e+00, %6911
  %6913 = fmul fast float %6869, %6827
  %6914 = fmul fast float %6870, %6827
  %6915 = fmul fast float %6871, %6827
  %6916 = fsub fast float 1.000000e+00, %6760
  %6917 = bitcast float %6916 to i32
  %6918 = sitofp i32 %6917 to float
  %6919 = fmul fast float %6918, 5.000000e+00
  %6920 = fadd fast float %6919, 0xC1EFBF8940000000
  %6921 = fptosi float %6920 to i32
  %6922 = bitcast i32 %6921 to float
  %6923 = fmul fast float %6922, %3826
  %6924 = fmul fast float %6912, %6923
  %6925 = fmul fast float %6924, %5208
  %6926 = fmul fast float %6924, %5209
  %6927 = fmul fast float %6924, %5210
  %6928 = fadd fast float %6925, %6913
  %6929 = fadd fast float %6926, %6914
  %6930 = fadd fast float %6927, %6915
  %6931 = fmul fast float %6748, %3822
  %6932 = fmul fast float %6931, %6766
  %6933 = fmul fast float %6932, %6912
  %6934 = fmul fast float %6749, %3822
  %6935 = fmul fast float %6934, %6766
  %6936 = fmul fast float %6935, %6912
  %6937 = fmul fast float %6750, %3822
  %6938 = fmul fast float %6937, %6766
  %6939 = fmul fast float %6938, %6912
  %6940 = fadd fast float %6933, %6427
  %6941 = fadd fast float %6936, %6428
  %6942 = fadd fast float %6939, %6429
  %6943 = fmul fast float %6932, %6928
  %6944 = fmul fast float %6935, %6929
  %6945 = fmul fast float %6938, %6930
  %6946 = fadd fast float %6943, %6424
  %6947 = fadd fast float %6944, %6425
  %6948 = fadd fast float %6945, %6426
  br label %6556

; <label>:6949                                    ; preds = %6556
  br label %6950

; <label>:6950                                    ; preds = %6949, %6390
  %6951 = phi float [ %6392, %6390 ], [ %6557, %6949 ]
  %6952 = phi float [ %6393, %6390 ], [ %6558, %6949 ]
  %6953 = phi float [ %6394, %6390 ], [ %6559, %6949 ]
  %6954 = phi float [ %6395, %6390 ], [ %6560, %6949 ]
  %6955 = phi float [ %6396, %6390 ], [ %6561, %6949 ]
  %6956 = phi float [ %6397, %6390 ], [ %6562, %6949 ]
  %6957 = add i32 %6391, 1
  %6958 = icmp ugt i32 %6957, %6387
  br i1 %6958, label %6959, label %6390

; <label>:6959                                    ; preds = %6950
  br label %6960

; <label>:6960                                    ; preds = %6959, %6340, %6330
  %6961 = phi float [ %6331, %6330 ], [ %6331, %6340 ], [ %6951, %6959 ]
  %6962 = phi float [ %6332, %6330 ], [ %6332, %6340 ], [ %6952, %6959 ]
  %6963 = phi float [ %6333, %6330 ], [ %6333, %6340 ], [ %6953, %6959 ]
  %6964 = phi float [ %6334, %6330 ], [ %6334, %6340 ], [ %6954, %6959 ]
  %6965 = phi float [ %6335, %6330 ], [ %6335, %6340 ], [ %6955, %6959 ]
  %6966 = phi float [ %6336, %6330 ], [ %6336, %6340 ], [ %6956, %6959 ]
  %6967 = fmul fast float %3822, %3822
  %6968 = fsub fast float 1.000000e+00, %6967
  %6969 = call float @dx.op.dot3.f32(i32 55, float %6968, float %6968, float %6968, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6970 = fsub fast float 1.000000e+00, %6969
  %6971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6972 = extractvalue %dx.types.CBufRet.f32 %6971, 0
  %6973 = fmul fast float %6972, %5214
  %6974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6975 = extractvalue %dx.types.CBufRet.f32 %6974, 3
  %6976 = fsub fast float 1.000000e+00, %3829
  %6977 = call float @dx.op.unary.f32(i32 7, float %6976)  ; Saturate(value)
  %6978 = fadd fast float %6966, %3828
  %6979 = fmul fast float %6978, %3829
  %6980 = fmul fast float %6977, %6975
  %6981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6982 = extractvalue %dx.types.CBufRet.f32 %6981, 3
  %6983 = fmul fast float %6964, %5019
  %6984 = fmul fast float %6965, %5020
  %6985 = fmul fast float %6966, %5021
  %6986 = fcmp fast ogt float %95, %213
  %6987 = and i1 %6986, %4232
  %6988 = or i1 %4238, %6987
  %6989 = icmp eq i32 %4231, 2
  %6990 = fcmp fast ole float %95, %213
  %6991 = and i1 %6990, %6989
  %6992 = or i1 %6991, %6988
  br i1 %6987, label %6993, label %7250

; <label>:6993                                    ; preds = %6960
  %6994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6995 = extractvalue %dx.types.CBufRet.f32 %6994, 2
  %6996 = extractvalue %dx.types.CBufRet.f32 %6994, 3
  %6997 = fmul fast float %6995, %104
  %6998 = fmul fast float %6996, %105
  %6999 = call float @dx.op.unary.f32(i32 7, float %6997)  ; Saturate(value)
  %7000 = call float @dx.op.unary.f32(i32 7, float %6998)  ; Saturate(value)
  %7001 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6999, float %7000, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7002 = extractvalue %dx.types.ResRet.f32 %7001, 0
  %7003 = extractvalue %dx.types.ResRet.f32 %7001, 1
  %7004 = extractvalue %dx.types.ResRet.f32 %7001, 2
  %7005 = extractvalue %dx.types.ResRet.f32 %7001, 3
  %7006 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6999, float %7000, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7007 = extractvalue %dx.types.ResRet.f32 %7006, 0
  %7008 = extractvalue %dx.types.ResRet.f32 %7006, 1
  %7009 = extractvalue %dx.types.ResRet.f32 %7006, 2
  %7010 = extractvalue %dx.types.ResRet.f32 %7006, 3
  %7011 = call float @dx.op.binary.f32(i32 35, float %7003, float %7004)  ; FMax(a,b)
  %7012 = call float @dx.op.binary.f32(i32 35, float %7002, float %7011)  ; FMax(a,b)
  %7013 = call float @dx.op.binary.f32(i32 35, float %7012, float %7005)  ; FMax(a,b)
  %7014 = call float @dx.op.binary.f32(i32 36, float %7008, float %7009)  ; FMin(a,b)
  %7015 = call float @dx.op.binary.f32(i32 36, float %7007, float %7014)  ; FMin(a,b)
  %7016 = call float @dx.op.binary.f32(i32 36, float %7015, float %7010)  ; FMin(a,b)
  %7017 = fmul fast float %7013, 2.550000e+02
  %7018 = fadd fast float %7017, 0x3F70101020000000
  %7019 = fptoui float %7018 to i32
  %7020 = fmul fast float %7016, 2.550000e+02
  %7021 = fadd fast float %7020, 0x3F70101020000000
  %7022 = fptoui float %7021 to i32
  %7023 = icmp ult i32 %7019, %7022
  br i1 %7023, label %7024, label %7192

; <label>:7024                                    ; preds = %6993
  %7025 = fcmp fast ogt float %94, 9.843750e-01
  %7026 = fadd fast float %95, -4.000000e+00
  %7027 = select i1 %7025, float -4.000000e+00, float %7026
  %7028 = call float @dx.op.binary.f32(i32 35, float %7027, float 0.000000e+00)  ; FMax(a,b)
  %7029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7030 = extractvalue %dx.types.CBufRet.f32 %7029, 0
  %7031 = fadd fast float %7030, %7028
  %7032 = extractvalue %dx.types.CBufRet.f32 %7029, 2
  %7033 = fmul fast float %7031, %7032
  %7034 = call float @dx.op.unary.f32(i32 23, float %7033)  ; Log(value)
  %7035 = extractvalue %dx.types.CBufRet.f32 %7029, 3
  %7036 = fmul fast float %7035, %7034
  %7037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7038 = extractvalue %dx.types.CBufRet.f32 %7037, 2
  %7039 = fmul fast float %7036, %7038
  %7040 = call float @dx.op.unary.f32(i32 7, float %7039)  ; Saturate(value)
  %7041 = uitofp i32 %7019 to float
  %7042 = uitofp i32 %7022 to float
  %7043 = fadd fast float %7041, 5.000000e-01
  %7044 = fadd fast float %7042, 5.000000e-01
  %7045 = fmul fast float %7038, %7043
  %7046 = fmul fast float %7038, %7044
  %7047 = fadd fast float %7045, 0x3F0FFB4800000000
  %7048 = fadd fast float %7046, 0xBF0FFB4800000000
  %7049 = call float @dx.op.binary.f32(i32 35, float %7040, float %7047)  ; FMax(a,b)
  %7050 = call float @dx.op.binary.f32(i32 36, float %7049, float %7048)  ; FMin(a,b)
  %7051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7052 = extractvalue %dx.types.CBufRet.f32 %7051, 1
  %7053 = extractvalue %dx.types.CBufRet.f32 %7051, 2
  %7054 = extractvalue %dx.types.CBufRet.f32 %7051, 0
  %7055 = fmul fast float %7052, %7050
  %7056 = fadd fast float %7054, %7055
  %7057 = fadd fast float %7054, %7053
  %7058 = fsub fast float %7052, %7053
  %7059 = fadd fast float %7058, %7054
  %7060 = call float @dx.op.binary.f32(i32 35, float %7056, float %7057)  ; FMax(a,b)
  %7061 = call float @dx.op.binary.f32(i32 36, float %7060, float %7059)  ; FMin(a,b)
  %7062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %6999, float %7000, float %7061, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7063 = extractvalue %dx.types.ResRet.f32 %7062, 0
  %7064 = extractvalue %dx.types.ResRet.f32 %7062, 1
  %7065 = extractvalue %dx.types.ResRet.f32 %7062, 2
  %7066 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7067 = extractvalue %dx.types.CBufRet.i32 %7066, 0
  %7068 = extractvalue %dx.types.CBufRet.i32 %7066, 1
  %7069 = uitofp i32 %7067 to float
  %7070 = uitofp i32 %7068 to float
  %7071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7072 = extractvalue %dx.types.CBufRet.f32 %7071, 0
  %7073 = extractvalue %dx.types.CBufRet.f32 %7071, 1
  %7074 = fmul fast float %7069, %6999
  %7075 = fmul fast float %7070, %7000
  %7076 = fadd fast float %7074, -5.000000e-01
  %7077 = fadd fast float %7075, -5.000000e-01
  %7078 = call float @dx.op.unary.f32(i32 22, float %7076)  ; Frc(value)
  %7079 = call float @dx.op.unary.f32(i32 22, float %7077)  ; Frc(value)
  %7080 = fmul fast float %7078, %7078
  %7081 = fmul fast float %7080, %7078
  %7082 = fsub fast float 3.000000e+00, %7078
  %7083 = fmul fast float %7080, %7082
  %7084 = fmul fast float %7078, 3.000000e+00
  %7085 = fmul fast float %7081, 3.000000e+00
  %7086 = fmul fast float %7080, 6.000000e+00
  %7087 = fsub fast float %7085, %7086
  %7088 = fadd fast float %7087, 4.000000e+00
  %7089 = fmul fast float %7088, 0x3FC5555560000000
  %7090 = fmul fast float %7081, -3.000000e+00
  %7091 = fadd fast float %7080, %7078
  %7092 = fmul fast float %7091, 3.000000e+00
  %7093 = fadd fast float %7090, 1.000000e+00
  %7094 = fadd fast float %7093, %7092
  %7095 = fmul fast float %7081, 0x3FC5555560000000
  %7096 = fmul fast float %7079, %7079
  %7097 = fmul fast float %7096, %7079
  %7098 = fsub fast float 3.000000e+00, %7079
  %7099 = fmul fast float %7096, %7098
  %7100 = fmul fast float %7079, 3.000000e+00
  %7101 = fmul fast float %7097, 3.000000e+00
  %7102 = fmul fast float %7096, 6.000000e+00
  %7103 = fsub fast float %7101, %7102
  %7104 = fadd fast float %7103, 4.000000e+00
  %7105 = fmul fast float %7104, 0x3FC5555560000000
  %7106 = fmul fast float %7097, -3.000000e+00
  %7107 = fadd fast float %7096, %7079
  %7108 = fmul fast float %7107, 3.000000e+00
  %7109 = fadd fast float %7106, 1.000000e+00
  %7110 = fadd fast float %7109, %7108
  %7111 = fmul fast float %7097, 0x3FC5555560000000
  %7112 = fadd fast float %7078, 1.000000e+00
  %7113 = fsub fast float 1.000000e+00, %7084
  %7114 = fadd fast float %7113, %7083
  %7115 = fadd fast float %7114, %7088
  %7116 = fmul fast float %7115, 0x3FC5555560000000
  %7117 = fdiv fast float %7089, %7116
  %7118 = fsub fast float %7112, %7117
  %7119 = fsub fast float 1.000000e+00, %7078
  %7120 = fadd fast float %7094, %7081
  %7121 = fmul fast float %7120, 0x3FC5555560000000
  %7122 = fdiv fast float %7095, %7121
  %7123 = fadd fast float %7119, %7122
  %7124 = fadd fast float %7079, 1.000000e+00
  %7125 = fsub fast float 1.000000e+00, %7100
  %7126 = fadd fast float %7125, %7099
  %7127 = fadd fast float %7126, %7104
  %7128 = fmul fast float %7127, 0x3FC5555560000000
  %7129 = fdiv fast float %7105, %7128
  %7130 = fsub fast float %7124, %7129
  %7131 = fsub fast float 1.000000e+00, %7079
  %7132 = fadd fast float %7110, %7097
  %7133 = fmul fast float %7132, 0x3FC5555560000000
  %7134 = fdiv fast float %7111, %7133
  %7135 = fadd fast float %7134, %7131
  %7136 = fmul fast float %7118, %7072
  %7137 = fsub fast float %6999, %7136
  %7138 = fmul fast float %7123, %7072
  %7139 = fadd fast float %7138, %6999
  %7140 = fmul fast float %7135, %7073
  %7141 = fadd fast float %7140, %7000
  %7142 = fmul fast float %7130, %7073
  %7143 = fsub fast float %7000, %7142
  %7144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7137, float %7143, float %7061, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7145 = extractvalue %dx.types.ResRet.f32 %7144, 0
  %7146 = extractvalue %dx.types.ResRet.f32 %7144, 1
  %7147 = extractvalue %dx.types.ResRet.f32 %7144, 2
  %7148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7139, float %7143, float %7061, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7149 = extractvalue %dx.types.ResRet.f32 %7148, 0
  %7150 = extractvalue %dx.types.ResRet.f32 %7148, 1
  %7151 = extractvalue %dx.types.ResRet.f32 %7148, 2
  %7152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7137, float %7141, float %7061, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7153 = extractvalue %dx.types.ResRet.f32 %7152, 0
  %7154 = extractvalue %dx.types.ResRet.f32 %7152, 1
  %7155 = extractvalue %dx.types.ResRet.f32 %7152, 2
  %7156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7139, float %7141, float %7061, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7157 = extractvalue %dx.types.ResRet.f32 %7156, 0
  %7158 = extractvalue %dx.types.ResRet.f32 %7156, 1
  %7159 = extractvalue %dx.types.ResRet.f32 %7156, 2
  %7160 = fsub fast float %7153, %7145
  %7161 = fsub fast float %7154, %7146
  %7162 = fsub fast float %7155, %7147
  %7163 = fmul fast float %7160, %7133
  %7164 = fmul fast float %7161, %7133
  %7165 = fmul fast float %7162, %7133
  %7166 = fadd fast float %7163, %7145
  %7167 = fadd fast float %7164, %7146
  %7168 = fadd fast float %7165, %7147
  %7169 = fsub fast float %7157, %7149
  %7170 = fsub fast float %7158, %7150
  %7171 = fsub fast float %7159, %7151
  %7172 = fmul fast float %7169, %7133
  %7173 = fmul fast float %7170, %7133
  %7174 = fmul fast float %7171, %7133
  %7175 = fsub fast float %7149, %7166
  %7176 = fadd fast float %7175, %7172
  %7177 = fsub fast float %7150, %7167
  %7178 = fadd fast float %7177, %7173
  %7179 = fsub fast float %7151, %7168
  %7180 = fadd fast float %7179, %7174
  %7181 = fmul fast float %7176, %7121
  %7182 = fmul fast float %7178, %7121
  %7183 = fmul fast float %7180, %7121
  %7184 = fadd fast float %7181, %7166
  %7185 = fadd fast float %7182, %7167
  %7186 = fadd fast float %7183, %7168
  %7187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7188 = extractvalue %dx.types.CBufRet.f32 %7187, 1
  %7189 = fmul fast float %7184, %7188
  %7190 = fmul fast float %7185, %7188
  %7191 = fmul fast float %7186, %7188
  br label %7192

; <label>:7192                                    ; preds = %7024, %6993
  %7193 = phi float [ %7063, %7024 ], [ 1.000000e+00, %6993 ]
  %7194 = phi float [ %7064, %7024 ], [ 1.000000e+00, %6993 ]
  %7195 = phi float [ %7065, %7024 ], [ 1.000000e+00, %6993 ]
  %7196 = phi float [ %7189, %7024 ], [ 0.000000e+00, %6993 ]
  %7197 = phi float [ %7190, %7024 ], [ 0.000000e+00, %6993 ]
  %7198 = phi float [ %7191, %7024 ], [ 0.000000e+00, %6993 ]
  %7199 = fmul fast float %7196, %6970
  %7200 = fmul fast float %7197, %6970
  %7201 = fmul fast float %7198, %6970
  %7202 = call float @dx.op.dot3.f32(i32 55, float %7193, float %7194, float %7195, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7203 = call float @dx.op.dot3.f32(i32 55, float %7199, float %7200, float %7201, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7204 = select i1 %250, float %7202, float %7193
  %7205 = select i1 %250, float %7202, float %7194
  %7206 = select i1 %250, float 1.000000e+00, float %7195
  %7207 = select i1 %250, float %7203, float %7199
  %7208 = select i1 %250, float 0.000000e+00, float %7200
  %7209 = select i1 %250, float 0.000000e+00, float %7201
  %7210 = fmul fast float %7204, %6983
  %7211 = fmul fast float %7205, %6984
  %7212 = fmul fast float %7206, %6985
  %7213 = fadd fast float %7210, %7207
  %7214 = fadd fast float %7211, %7208
  %7215 = fadd fast float %7209, %7212
  %7216 = fmul fast float %7204, %6961
  %7217 = fmul fast float %7205, %6962
  %7218 = fmul fast float %7206, %6963
  %7219 = fmul fast float %140, %6995
  %7220 = fmul fast float %142, %6996
  %7221 = fsub fast float 1.000000e+00, %7219
  %7222 = fsub fast float 1.000000e+00, %7220
  %7223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7224 = extractvalue %dx.types.CBufRet.f32 %7223, 0
  %7225 = extractvalue %dx.types.CBufRet.f32 %7223, 1
  %7226 = extractvalue %dx.types.CBufRet.f32 %7223, 2
  %7227 = fmul fast float %7221, %7224
  %7228 = fmul fast float %7221, %7225
  %7229 = fmul fast float %7221, %7226
  %7230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7231 = extractvalue %dx.types.CBufRet.f32 %7230, 0
  %7232 = extractvalue %dx.types.CBufRet.f32 %7230, 1
  %7233 = extractvalue %dx.types.CBufRet.f32 %7230, 2
  %7234 = fmul fast float %7222, %7231
  %7235 = fmul fast float %7222, %7232
  %7236 = fmul fast float %7222, %7233
  %7237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7238 = extractvalue %dx.types.CBufRet.f32 %7237, 0
  %7239 = extractvalue %dx.types.CBufRet.f32 %7237, 1
  %7240 = extractvalue %dx.types.CBufRet.f32 %7237, 2
  %7241 = fadd fast float %7234, %7238
  %7242 = fadd fast float %7241, %7227
  %7243 = fadd fast float %7235, %7239
  %7244 = fadd fast float %7243, %7228
  %7245 = fadd fast float %7236, %7240
  %7246 = fadd fast float %7245, %7229
  %7247 = fmul fast float %7242, %213
  %7248 = fmul fast float %7244, %213
  %7249 = fmul fast float %7246, %213
  br label %7250

; <label>:7250                                    ; preds = %7192, %6960
  %7251 = phi float [ %7247, %7192 ], [ %191, %6960 ]
  %7252 = phi float [ %7248, %7192 ], [ %192, %6960 ]
  %7253 = phi float [ %7249, %7192 ], [ %193, %6960 ]
  %7254 = phi float [ %213, %7192 ], [ %95, %6960 ]
  %7255 = phi float [ %7213, %7192 ], [ %6983, %6960 ]
  %7256 = phi float [ %7214, %7192 ], [ %6984, %6960 ]
  %7257 = phi float [ %7215, %7192 ], [ %6985, %6960 ]
  %7258 = phi float [ %7216, %7192 ], [ %6961, %6960 ]
  %7259 = phi float [ %7217, %7192 ], [ %6962, %6960 ]
  %7260 = phi float [ %7218, %7192 ], [ %6963, %6960 ]
  %7261 = phi float [ %7193, %7192 ], [ 1.000000e+00, %6960 ]
  br i1 %6992, label %8416, label %7262

; <label>:7262                                    ; preds = %7250
  %7263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7264 = extractvalue %dx.types.CBufRet.f32 %7263, 0
  %7265 = extractvalue %dx.types.CBufRet.f32 %7263, 1
  %7266 = extractvalue %dx.types.CBufRet.f32 %7263, 2
  %7267 = extractvalue %dx.types.CBufRet.f32 %7263, 3
  %7268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7269 = extractvalue %dx.types.CBufRet.f32 %7268, 0
  %7270 = extractvalue %dx.types.CBufRet.f32 %7268, 1
  %7271 = extractvalue %dx.types.CBufRet.f32 %7268, 2
  %7272 = extractvalue %dx.types.CBufRet.f32 %7268, 3
  %7273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7274 = extractvalue %dx.types.CBufRet.f32 %7273, 0
  %7275 = extractvalue %dx.types.CBufRet.f32 %7273, 1
  %7276 = extractvalue %dx.types.CBufRet.f32 %7273, 2
  %7277 = extractvalue %dx.types.CBufRet.f32 %7273, 3
  %7278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7279 = extractvalue %dx.types.CBufRet.f32 %7278, 0
  %7280 = extractvalue %dx.types.CBufRet.f32 %7278, 1
  %7281 = extractvalue %dx.types.CBufRet.f32 %7278, 2
  %7282 = extractvalue %dx.types.CBufRet.f32 %7278, 3
  %7283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7284 = extractvalue %dx.types.CBufRet.f32 %7283, 3
  %7285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7286 = extractvalue %dx.types.CBufRet.f32 %7285, 3
  %7287 = extractvalue %dx.types.CBufRet.f32 %7285, 0
  %7288 = extractvalue %dx.types.CBufRet.f32 %7285, 1
  %7289 = extractvalue %dx.types.CBufRet.f32 %7285, 2
  %7290 = fcmp fast olt float %7289, -5.000000e-01
  %7291 = call float @dx.op.dot3.f32(i32 55, float %7251, float %7252, float %7253, float %7251, float %7252, float %7253)  ; Dot3(ax,ay,az,bx,by,bz)
  %7292 = call float @dx.op.unary.f32(i32 25, float %7291)  ; Rsqrt(value)
  %7293 = fmul fast float %7292, %7291
  %7294 = fmul fast float %7292, %7251
  %7295 = fmul fast float %7292, %7252
  %7296 = fmul fast float %7292, %7253
  %7297 = fadd fast float %7293, %7267
  %7298 = call float @dx.op.dot3.f32(i32 55, float %7294, float %7295, float %7296, float %7264, float %7265, float %7266)  ; Dot3(ax,ay,az,bx,by,bz)
  %7299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7300 = extractvalue %dx.types.CBufRet.i32 %7299, 1
  %7301 = and i32 %7300, 1
  %7302 = icmp ne i32 %7301, 0
  %7303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7304 = extractvalue %dx.types.CBufRet.f32 %7303, 2
  %7305 = fcmp fast ogt float %7304, 0.000000e+00
  %7306 = and i1 %7302, %7305
  br i1 %7306, label %7307, label %7713, !dx.controlflow.hints !123

; <label>:7307                                    ; preds = %7262
  %7308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7309 = extractvalue %dx.types.CBufRet.f32 %7308, 3
  %7310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7311 = extractvalue %dx.types.CBufRet.f32 %7310, 2
  %7312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7313 = extractvalue %dx.types.CBufRet.f32 %7312, 2
  %7314 = fsub fast float %7311, %7313
  %7315 = and i32 %7300, 2
  %7316 = extractvalue %dx.types.CBufRet.i32 %7299, 0
  %7317 = call i32 @dx.op.binary.i32(i32 40, i32 %7316, i32 3)  ; UMin(a,b)
  %7318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7319 = extractvalue %dx.types.CBufRet.f32 %7318, 0
  %7320 = extractvalue %dx.types.CBufRet.f32 %7318, 1
  %7321 = extractvalue %dx.types.CBufRet.f32 %7312, 0
  %7322 = extractvalue %dx.types.CBufRet.f32 %7312, 1
  %7323 = fsub fast float %7319, %7321
  %7324 = fsub fast float %7320, %7322
  %7325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7326 = extractvalue %dx.types.CBufRet.f32 %7325, 0
  %7327 = fcmp fast ogt float %7326, 0.000000e+00
  %7328 = fsub fast float -0.000000e+00, %7323
  %7329 = fsub fast float -0.000000e+00, %7324
  %7330 = call float @dx.op.dot2.f32(i32 54, float %7294, float %7295, float %7294, float %7295)  ; Dot2(ax,ay,bx,by)
  %7331 = call float @dx.op.dot2.f32(i32 54, float %7294, float %7295, float %7328, float %7329)  ; Dot2(ax,ay,bx,by)
  %7332 = fmul fast float %7331, 2.000000e+00
  %7333 = call float @dx.op.dot2.f32(i32 54, float %7328, float %7329, float %7328, float %7329)  ; Dot2(ax,ay,bx,by)
  %7334 = fmul fast float %7326, %7326
  %7335 = fsub fast float %7333, %7334
  %7336 = fmul fast float %7332, %7332
  %7337 = fmul fast float %7330, 4.000000e+00
  %7338 = fmul fast float %7337, %7335
  %7339 = fsub fast float %7336, %7338
  %7340 = fcmp fast ogt float %7339, 0.000000e+00
  br i1 %7340, label %7341, label %7356

; <label>:7341                                    ; preds = %7307
  %7342 = fcmp fast ogt float %7332, 0.000000e+00
  %7343 = call float @dx.op.unary.f32(i32 24, float %7339)  ; Sqrt(value)
  %7344 = fsub fast float -0.000000e+00, %7343
  %7345 = select i1 %7342, float %7343, float %7344
  %7346 = fadd fast float %7345, %7332
  %7347 = fmul float %7346, -5.000000e-01
  %7348 = fdiv fast float %7347, %7330
  %7349 = call float @dx.op.binary.f32(i32 35, float %7348, float 0.000000e+00)  ; FMax(a,b)
  %7350 = call float @dx.op.binary.f32(i32 36, float %7293, float %7349)  ; FMin(a,b)
  %7351 = fdiv fast float %7335, %7347
  %7352 = call float @dx.op.binary.f32(i32 35, float %7351, float 0.000000e+00)  ; FMax(a,b)
  %7353 = call float @dx.op.binary.f32(i32 36, float %7293, float %7352)  ; FMin(a,b)
  %7354 = call float @dx.op.binary.f32(i32 36, float %7350, float %7353)  ; FMin(a,b)
  %7355 = call float @dx.op.binary.f32(i32 35, float %7350, float %7353)  ; FMax(a,b)
  br label %7356

; <label>:7356                                    ; preds = %7341, %7307
  %7357 = phi float [ %7355, %7341 ], [ -1.000000e+00, %7307 ]
  %7358 = phi float [ %7354, %7341 ], [ -1.000000e+00, %7307 ]
  %7359 = phi i1 [ true, %7341 ], [ false, %7307 ]
  %7360 = and i1 %7327, %7359
  br i1 %7360, label %7361, label %7363

; <label>:7361                                    ; preds = %7356
  %7362 = fcmp fast oeq float %7358, %7357
  br i1 %7362, label %7666, label %7364

; <label>:7363                                    ; preds = %7356
  br i1 %7327, label %7666, label %7364

; <label>:7364                                    ; preds = %7363, %7361
  %7365 = phi float [ %7293, %7363 ], [ %7357, %7361 ]
  %7366 = phi float [ 0.000000e+00, %7363 ], [ %7358, %7361 ]
  %7367 = icmp ne i32 %7315, 0
  %7368 = fmul fast float %7365, %7296
  %7369 = fadd fast float %7368, %7309
  %7370 = fmul fast float %7369, %7365
  %7371 = select i1 %7367, float 0.000000e+00, float %7370
  %7372 = fcmp fast oeq float %7296, 0.000000e+00
  %7373 = fdiv fast float %7314, %7296
  %7374 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7373)  ; FMax(a,b)
  %7375 = select i1 %7372, float %7365, float %7374
  %7376 = call float @dx.op.binary.f32(i32 36, float %7365, float %7375)  ; FMin(a,b)
  %7377 = fcmp fast ogt float %7296, 0.000000e+00
  %7378 = fcmp fast olt float %7314, 0.000000e+00
  br i1 %7377, label %7379, label %7436

; <label>:7379                                    ; preds = %7364
  %7380 = icmp eq i32 %7315, 0
  br i1 %7378, label %7381, label %7425

; <label>:7381                                    ; preds = %7379
  %7382 = select i1 %7380, float %7365, float 0.000000e+00
  %7383 = fsub fast float -0.000000e+00, %7382
  %7384 = call float @dx.op.unary.f32(i32 6, float %7383)  ; FAbs(value)
  %7385 = fmul fast float %7382, %7296
  %7386 = fadd fast float %7385, %7309
  %7387 = fmul fast float %7384, %7386
  %7388 = fsub fast float %7371, %7387
  %7389 = fsub fast float %7365, %7384
  %7390 = select i1 %7380, float %7389, float 0.000000e+00
  %7391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7392 = extractvalue %dx.types.CBufRet.f32 %7391, 0
  %7393 = extractvalue %dx.types.CBufRet.f32 %7391, 1
  %7394 = extractvalue %dx.types.CBufRet.f32 %7391, 2
  %7395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7396 = extractvalue %dx.types.CBufRet.f32 %7395, 0
  %7397 = extractvalue %dx.types.CBufRet.f32 %7395, 1
  %7398 = extractvalue %dx.types.CBufRet.f32 %7395, 2
  %7399 = extractvalue %dx.types.CBufRet.f32 %7395, 3
  %7400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7401 = extractvalue %dx.types.CBufRet.f32 %7400, 3
  %7402 = call float @dx.op.binary.f32(i32 36, float %7388, float %7401)  ; FMin(a,b)
  %7403 = fmul fast float %7399, %7390
  %7404 = call float @dx.op.unary.f32(i32 7, float %7403)  ; Saturate(value)
  %7405 = fsub fast float %7396, %7392
  %7406 = fsub fast float %7397, %7393
  %7407 = fsub fast float %7398, %7394
  %7408 = fmul fast float %7404, %7405
  %7409 = fmul fast float %7404, %7406
  %7410 = fmul fast float %7404, %7407
  %7411 = fadd fast float %7408, %7392
  %7412 = fadd fast float %7409, %7393
  %7413 = fadd fast float %7410, %7394
  %7414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7415 = extractvalue %dx.types.CBufRet.f32 %7414, 0
  %7416 = extractvalue %dx.types.CBufRet.f32 %7414, 1
  %7417 = fadd fast float %7416, %7415
  %7418 = call float @dx.op.unary.f32(i32 7, float %7417)  ; Saturate(value)
  %7419 = extractvalue %dx.types.CBufRet.f32 %7414, 2
  %7420 = extractvalue %dx.types.CBufRet.f32 %7414, 3
  %7421 = fadd fast float %7420, %7419
  %7422 = call float @dx.op.unary.f32(i32 7, float %7421)  ; Saturate(value)
  %7423 = fmul fast float %7418, %7402
  %7424 = fmul fast float %7423, %7422
  br label %7666

; <label>:7425                                    ; preds = %7379
  br i1 %7380, label %7426, label %7447

; <label>:7426                                    ; preds = %7425
  %7427 = call float @dx.op.binary.f32(i32 36, float %7376, float %7366)  ; FMin(a,b)
  %7428 = fsub fast float %7376, %7427
  %7429 = fsub fast float %7428, %7365
  %7430 = call float @dx.op.unary.f32(i32 6, float %7429)  ; FAbs(value)
  %7431 = fadd fast float %7428, %7365
  %7432 = fmul fast float %7431, %7296
  %7433 = fadd fast float %7432, %7309
  %7434 = fmul fast float %7433, %7430
  %7435 = fsub fast float %7371, %7434
  br label %7447

; <label>:7436                                    ; preds = %7364
  br i1 %7378, label %7437, label %7447

; <label>:7437                                    ; preds = %7436
  %7438 = call float @dx.op.binary.f32(i32 35, float %7366, float %7376)  ; FMax(a,b)
  %7439 = icmp eq i32 %7315, 0
  %7440 = select i1 %7439, float %7376, float 0.000000e+00
  %7441 = fsub fast float -0.000000e+00, %7440
  %7442 = call float @dx.op.unary.f32(i32 6, float %7441)  ; FAbs(value)
  %7443 = fmul fast float %7440, %7296
  %7444 = fadd fast float %7443, %7309
  %7445 = fmul fast float %7442, %7444
  %7446 = fsub fast float %7371, %7445
  br label %7447

; <label>:7447                                    ; preds = %7437, %7436, %7426, %7425
  %7448 = phi float [ %7366, %7425 ], [ %7366, %7426 ], [ %7438, %7437 ], [ %7366, %7436 ]
  %7449 = phi float [ 0.000000e+00, %7425 ], [ %7430, %7426 ], [ %7442, %7437 ], [ 0.000000e+00, %7436 ]
  %7450 = phi float [ %7371, %7425 ], [ %7435, %7426 ], [ %7446, %7437 ], [ %7371, %7436 ]
  %7451 = phi float [ %7376, %7425 ], [ %7376, %7426 ], [ %7365, %7437 ], [ %7365, %7436 ]
  %7452 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %7452, align 4, !tbaa !124, !noalias !126
  %7453 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %7453, align 4, !tbaa !124, !noalias !126
  %7454 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %7454, align 4, !tbaa !124, !noalias !126
  %7455 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %7455, align 4, !tbaa !124, !noalias !126
  %7456 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %7456, align 4, !tbaa !124, !noalias !126
  %7457 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %7457, align 4, !tbaa !124, !noalias !126
  %7458 = icmp sgt i32 %7317, 0
  br i1 %7458, label %7459, label %7520

; <label>:7459                                    ; preds = %7447
  br label %7460

; <label>:7460                                    ; preds = %7509, %7459
  %7461 = phi i32 [ %7510, %7509 ], [ 0, %7459 ]
  %7462 = phi i32 [ %7511, %7509 ], [ 0, %7459 ]
  %7463 = add nuw i32 %7462, 171
  %7464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7463)  ; CBufferLoadLegacy(handle,regIndex)
  %7465 = extractvalue %dx.types.CBufRet.f32 %7464, 0
  %7466 = extractvalue %dx.types.CBufRet.f32 %7464, 1
  %7467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7468 = extractvalue %dx.types.CBufRet.f32 %7467, 0
  %7469 = extractvalue %dx.types.CBufRet.f32 %7467, 1
  %7470 = fsub fast float %7465, %7468
  %7471 = fsub fast float %7466, %7469
  %7472 = extractvalue %dx.types.CBufRet.f32 %7464, 2
  %7473 = fsub fast float -0.000000e+00, %7470
  %7474 = fsub fast float -0.000000e+00, %7471
  %7475 = call float @dx.op.dot2.f32(i32 54, float %7294, float %7295, float %7473, float %7474)  ; Dot2(ax,ay,bx,by)
  %7476 = fmul fast float %7475, 2.000000e+00
  %7477 = call float @dx.op.dot2.f32(i32 54, float %7473, float %7474, float %7473, float %7474)  ; Dot2(ax,ay,bx,by)
  %7478 = fmul fast float %7472, %7472
  %7479 = fsub fast float %7477, %7478
  %7480 = fmul fast float %7476, %7476
  %7481 = fmul fast float %7337, %7479
  %7482 = fsub fast float %7480, %7481
  %7483 = fcmp fast ogt float %7482, 0.000000e+00
  br i1 %7483, label %7484, label %7499

; <label>:7484                                    ; preds = %7460
  %7485 = fcmp fast ogt float %7476, 0.000000e+00
  %7486 = call float @dx.op.unary.f32(i32 24, float %7482)  ; Sqrt(value)
  %7487 = fsub fast float -0.000000e+00, %7486
  %7488 = select i1 %7485, float %7486, float %7487
  %7489 = fadd fast float %7488, %7476
  %7490 = fmul float %7489, -5.000000e-01
  %7491 = fdiv fast float %7490, %7330
  %7492 = call float @dx.op.binary.f32(i32 35, float %7491, float 0.000000e+00)  ; FMax(a,b)
  %7493 = call float @dx.op.binary.f32(i32 36, float %7365, float %7492)  ; FMin(a,b)
  %7494 = fdiv fast float %7479, %7490
  %7495 = call float @dx.op.binary.f32(i32 35, float %7494, float 0.000000e+00)  ; FMax(a,b)
  %7496 = call float @dx.op.binary.f32(i32 36, float %7365, float %7495)  ; FMin(a,b)
  %7497 = call float @dx.op.binary.f32(i32 36, float %7493, float %7496)  ; FMin(a,b)
  %7498 = call float @dx.op.binary.f32(i32 35, float %7493, float %7496)  ; FMax(a,b)
  br label %7499

; <label>:7499                                    ; preds = %7484, %7460
  %7500 = phi float [ %7498, %7484 ], [ -1.000000e+00, %7460 ]
  %7501 = phi float [ %7497, %7484 ], [ -1.000000e+00, %7460 ]
  %7502 = phi i1 [ true, %7484 ], [ false, %7460 ]
  br i1 %7502, label %7503, label %7509

; <label>:7503                                    ; preds = %7499
  %7504 = call float @dx.op.binary.f32(i32 35, float %7448, float %7501)  ; FMax(a,b)
  %7505 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7462
  store float %7504, float* %7505, align 4, !tbaa !124, !noalias !126
  %7506 = call float @dx.op.binary.f32(i32 35, float %7448, float %7500)  ; FMax(a,b)
  %7507 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7462
  store float %7506, float* %7507, align 4, !tbaa !124, !noalias !126
  %7508 = add nsw i32 %7461, 1
  br label %7509

; <label>:7509                                    ; preds = %7503, %7499
  %7510 = phi i32 [ %7508, %7503 ], [ %7461, %7499 ]
  %7511 = add nuw nsw i32 %7462, 1
  %7512 = icmp eq i32 %7511, %7317
  br i1 %7512, label %7513, label %7460

; <label>:7513                                    ; preds = %7509
  %7514 = load float, float* %7454, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %7515 = load float, float* %7453, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  %7516 = load float, float* %7452, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  %7517 = load float, float* %7457, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %7518 = load float, float* %7456, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  %7519 = load float, float* %7455, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  br label %7520

; <label>:7520                                    ; preds = %7513, %7447
  %7521 = phi float [ -1.000000e+00, %7447 ], [ %7519, %7513 ]
  %7522 = phi float [ -1.000000e+00, %7447 ], [ %7518, %7513 ]
  %7523 = phi float [ -1.000000e+00, %7447 ], [ %7517, %7513 ]
  %7524 = phi float [ -1.000000e+00, %7447 ], [ %7516, %7513 ]
  %7525 = phi float [ -1.000000e+00, %7447 ], [ %7515, %7513 ]
  %7526 = phi float [ -1.000000e+00, %7447 ], [ %7514, %7513 ]
  %7527 = phi i32 [ 0, %7447 ], [ %7510, %7513 ]
  %7528 = call float @dx.op.binary.f32(i32 36, float %7525, float %7526)  ; FMin(a,b)
  %7529 = call float @dx.op.binary.f32(i32 36, float %7524, float %7528)  ; FMin(a,b)
  %7530 = call float @dx.op.binary.f32(i32 35, float %7524, float %7525)  ; FMax(a,b)
  %7531 = call float @dx.op.binary.f32(i32 36, float %7530, float %7526)  ; FMin(a,b)
  %7532 = call float @dx.op.binary.f32(i32 36, float %7524, float %7525)  ; FMin(a,b)
  %7533 = call float @dx.op.binary.f32(i32 35, float %7532, float %7531)  ; FMax(a,b)
  %7534 = call float @dx.op.binary.f32(i32 35, float %7525, float %7526)  ; FMax(a,b)
  %7535 = call float @dx.op.binary.f32(i32 35, float %7524, float %7534)  ; FMax(a,b)
  store float %7529, float* %7452, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  store float %7533, float* %7453, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  store float %7535, float* %7454, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %7536 = call float @dx.op.binary.f32(i32 36, float %7522, float %7523)  ; FMin(a,b)
  %7537 = call float @dx.op.binary.f32(i32 36, float %7521, float %7536)  ; FMin(a,b)
  %7538 = call float @dx.op.binary.f32(i32 35, float %7521, float %7522)  ; FMax(a,b)
  %7539 = call float @dx.op.binary.f32(i32 36, float %7538, float %7523)  ; FMin(a,b)
  %7540 = call float @dx.op.binary.f32(i32 36, float %7521, float %7522)  ; FMin(a,b)
  %7541 = call float @dx.op.binary.f32(i32 35, float %7540, float %7539)  ; FMax(a,b)
  %7542 = call float @dx.op.binary.f32(i32 35, float %7522, float %7523)  ; FMax(a,b)
  %7543 = call float @dx.op.binary.f32(i32 35, float %7521, float %7542)  ; FMax(a,b)
  store float %7537, float* %7455, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  store float %7541, float* %7456, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  store float %7543, float* %7457, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %7544 = sub nsw i32 3, %7527
  %7545 = icmp sgt i32 %7544, 2
  br i1 %7545, label %7546, label %7584

; <label>:7546                                    ; preds = %7520
  %7547 = icmp eq i32 %7315, 0
  %7548 = fsub fast float %7365, %7449
  %7549 = select i1 %7547, float %7548, float %7449
  %7550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7551 = extractvalue %dx.types.CBufRet.f32 %7550, 0
  %7552 = extractvalue %dx.types.CBufRet.f32 %7550, 1
  %7553 = extractvalue %dx.types.CBufRet.f32 %7550, 2
  %7554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7555 = extractvalue %dx.types.CBufRet.f32 %7554, 0
  %7556 = extractvalue %dx.types.CBufRet.f32 %7554, 1
  %7557 = extractvalue %dx.types.CBufRet.f32 %7554, 2
  %7558 = extractvalue %dx.types.CBufRet.f32 %7554, 3
  %7559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7560 = extractvalue %dx.types.CBufRet.f32 %7559, 3
  %7561 = call float @dx.op.binary.f32(i32 36, float %7450, float %7560)  ; FMin(a,b)
  %7562 = fmul fast float %7558, %7549
  %7563 = call float @dx.op.unary.f32(i32 7, float %7562)  ; Saturate(value)
  %7564 = fsub fast float %7555, %7551
  %7565 = fsub fast float %7556, %7552
  %7566 = fsub fast float %7557, %7553
  %7567 = fmul fast float %7563, %7564
  %7568 = fmul fast float %7563, %7565
  %7569 = fmul fast float %7563, %7566
  %7570 = fadd fast float %7567, %7551
  %7571 = fadd fast float %7568, %7552
  %7572 = fadd fast float %7569, %7553
  %7573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7574 = extractvalue %dx.types.CBufRet.f32 %7573, 0
  %7575 = extractvalue %dx.types.CBufRet.f32 %7573, 1
  %7576 = fadd fast float %7575, %7574
  %7577 = call float @dx.op.unary.f32(i32 7, float %7576)  ; Saturate(value)
  %7578 = extractvalue %dx.types.CBufRet.f32 %7573, 2
  %7579 = extractvalue %dx.types.CBufRet.f32 %7573, 3
  %7580 = fadd fast float %7579, %7578
  %7581 = call float @dx.op.unary.f32(i32 7, float %7580)  ; Saturate(value)
  %7582 = fmul fast float %7577, %7561
  %7583 = fmul fast float %7582, %7581
  br label %7666

; <label>:7584                                    ; preds = %7520
  %7585 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7544
  %7586 = load float, float* %7585, align 4, !tbaa !124, !noalias !126
  %7587 = fcmp fast olt float %7586, %7451
  %7588 = icmp sgt i32 %7527, 0
  %7589 = and i1 %7588, %7587
  br i1 %7589, label %7590, label %7627

; <label>:7590                                    ; preds = %7584
  br label %7591

; <label>:7591                                    ; preds = %7620, %7590
  %7592 = phi float [ %7621, %7620 ], [ %7449, %7590 ]
  %7593 = phi float [ %7622, %7620 ], [ %7450, %7590 ]
  %7594 = phi float [ %7602, %7620 ], [ %7586, %7590 ]
  %7595 = phi i32 [ %7599, %7620 ], [ %7544, %7590 ]
  %7596 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7595
  %7597 = load float, float* %7596, align 4, !tbaa !124, !noalias !126
  %7598 = icmp slt i32 %7595, 2
  %7599 = add nsw i32 %7595, 1
  %7600 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7599
  %7601 = load float, float* %7600, align 4, !tbaa !124, !noalias !126
  %7602 = select i1 %7598, float %7601, float %7365
  %7603 = call float @dx.op.binary.f32(i32 36, float %7602, float %7597)  ; FMin(a,b)
  %7604 = call float @dx.op.binary.f32(i32 36, float %7451, float %7603)  ; FMin(a,b)
  %7605 = icmp eq i32 %7315, 0
  %7606 = fadd fast float %7604, %7594
  %7607 = fmul fast float %7606, %7296
  %7608 = fadd fast float %7607, %7309
  br i1 %7605, label %7614, label %7609

; <label>:7609                                    ; preds = %7591
  %7610 = fsub fast float %7604, %7594
  %7611 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7610)  ; FMax(a,b)
  %7612 = fmul fast float %7611, %7608
  %7613 = fadd fast float %7612, %7593
  br label %7620

; <label>:7614                                    ; preds = %7591
  %7615 = fsub fast float %7594, %7604
  %7616 = call float @dx.op.unary.f32(i32 6, float %7615)  ; FAbs(value)
  %7617 = fadd fast float %7616, %7592
  %7618 = fmul fast float %7616, %7608
  %7619 = fsub fast float %7593, %7618
  br label %7620

; <label>:7620                                    ; preds = %7614, %7609
  %7621 = phi float [ %7611, %7609 ], [ %7617, %7614 ]
  %7622 = phi float [ %7613, %7609 ], [ %7619, %7614 ]
  %7623 = fcmp fast olt float %7602, %7451
  %7624 = icmp slt i32 %7599, 3
  %7625 = and i1 %7624, %7623
  br i1 %7625, label %7591, label %7626

; <label>:7626                                    ; preds = %7620
  br label %7627

; <label>:7627                                    ; preds = %7626, %7584
  %7628 = phi float [ %7449, %7584 ], [ %7621, %7626 ]
  %7629 = phi float [ %7450, %7584 ], [ %7622, %7626 ]
  %7630 = fsub fast float %7365, %7628
  %7631 = select i1 %7367, float %7628, float %7630
  %7632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7633 = extractvalue %dx.types.CBufRet.f32 %7632, 0
  %7634 = extractvalue %dx.types.CBufRet.f32 %7632, 1
  %7635 = extractvalue %dx.types.CBufRet.f32 %7632, 2
  %7636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7637 = extractvalue %dx.types.CBufRet.f32 %7636, 0
  %7638 = extractvalue %dx.types.CBufRet.f32 %7636, 1
  %7639 = extractvalue %dx.types.CBufRet.f32 %7636, 2
  %7640 = extractvalue %dx.types.CBufRet.f32 %7636, 3
  %7641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7642 = extractvalue %dx.types.CBufRet.f32 %7641, 3
  %7643 = call float @dx.op.binary.f32(i32 36, float %7629, float %7642)  ; FMin(a,b)
  %7644 = fmul fast float %7640, %7631
  %7645 = call float @dx.op.unary.f32(i32 7, float %7644)  ; Saturate(value)
  %7646 = fsub fast float %7637, %7633
  %7647 = fsub fast float %7638, %7634
  %7648 = fsub fast float %7639, %7635
  %7649 = fmul fast float %7645, %7646
  %7650 = fmul fast float %7645, %7647
  %7651 = fmul fast float %7645, %7648
  %7652 = fadd fast float %7649, %7633
  %7653 = fadd fast float %7650, %7634
  %7654 = fadd fast float %7651, %7635
  %7655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7656 = extractvalue %dx.types.CBufRet.f32 %7655, 0
  %7657 = extractvalue %dx.types.CBufRet.f32 %7655, 1
  %7658 = fadd fast float %7657, %7656
  %7659 = call float @dx.op.unary.f32(i32 7, float %7658)  ; Saturate(value)
  %7660 = extractvalue %dx.types.CBufRet.f32 %7655, 2
  %7661 = extractvalue %dx.types.CBufRet.f32 %7655, 3
  %7662 = fadd fast float %7661, %7660
  %7663 = call float @dx.op.unary.f32(i32 7, float %7662)  ; Saturate(value)
  %7664 = fmul fast float %7659, %7643
  %7665 = fmul fast float %7664, %7663
  br label %7666

; <label>:7666                                    ; preds = %7627, %7546, %7381, %7363, %7361
  %7667 = phi float [ %7390, %7381 ], [ %7549, %7546 ], [ %7631, %7627 ], [ 0.000000e+00, %7361 ], [ 0.000000e+00, %7363 ]
  %7668 = phi float [ %7424, %7381 ], [ %7583, %7546 ], [ %7665, %7627 ], [ 0.000000e+00, %7361 ], [ 0.000000e+00, %7363 ]
  %7669 = phi float [ %7411, %7381 ], [ %7570, %7546 ], [ %7652, %7627 ], [ 0.000000e+00, %7361 ], [ 0.000000e+00, %7363 ]
  %7670 = phi float [ %7412, %7381 ], [ %7571, %7546 ], [ %7653, %7627 ], [ 0.000000e+00, %7361 ], [ 0.000000e+00, %7363 ]
  %7671 = phi float [ %7413, %7381 ], [ %7572, %7546 ], [ %7654, %7627 ], [ 0.000000e+00, %7361 ], [ 0.000000e+00, %7363 ]
  %7672 = fmul fast float %7304, %7668
  %7673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7674 = extractvalue %dx.types.CBufRet.f32 %7673, 2
  %7675 = fsub fast float %7311, %7674
  %7676 = fcmp fast olt float %7672, -2.000000e+01
  %7677 = call float @dx.op.unary.f32(i32 21, float %7672)  ; Exp(value)
  %7678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7679 = extractvalue %dx.types.CBufRet.f32 %7678, 2
  %7680 = extractvalue %dx.types.CBufRet.f32 %7678, 3
  %7681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7682 = extractvalue %dx.types.CBufRet.f32 %7681, 2
  %7683 = fmul fast float %7680, %7675
  %7684 = call float @dx.op.unary.f32(i32 7, float %7683)  ; Saturate(value)
  %7685 = fsub fast float 1.000000e+00, %7684
  %7686 = fmul fast float %7296, 5.000000e-01
  %7687 = fadd fast float %7686, 5.000000e-01
  %7688 = call float @dx.op.unary.f32(i32 7, float %7687)  ; Saturate(value)
  %7689 = fsub fast float 1.000000e+00, %7688
  %7690 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7685)  ; FMax(a,b)
  %7691 = fdiv fast float %7689, %7690
  %7692 = fsub fast float %7675, %7253
  %7693 = call float @dx.op.unary.f32(i32 6, float %7692)  ; FAbs(value)
  %7694 = fmul fast float %7693, %7679
  %7695 = call float @dx.op.unary.f32(i32 7, float %7691)  ; Saturate(value)
  %7696 = fsub fast float 1.000000e+00, %7694
  %7697 = fmul fast float %7696, %7695
  %7698 = fadd fast float %7697, %7694
  %7699 = fmul fast float %7682, %7675
  %7700 = call float @dx.op.unary.f32(i32 7, float %7699)  ; Saturate(value)
  %7701 = fsub fast float 1.000000e+00, %7698
  %7702 = fmul fast float %7701, %7700
  %7703 = fadd fast float %7702, %7698
  %7704 = call float @dx.op.unary.f32(i32 7, float %7703)  ; Saturate(value)
  %7705 = fadd fast float %7677, -1.000000e+00
  %7706 = select i1 %7676, float -1.000000e+00, float %7705
  %7707 = fmul fast float %7704, %7706
  %7708 = fadd fast float %7707, 1.000000e+00
  %7709 = fsub fast float -0.000000e+00, %7707
  %7710 = fmul fast float %7669, %7709
  %7711 = fmul fast float %7670, %7709
  %7712 = fmul fast float %7671, %7709
  br label %7713

; <label>:7713                                    ; preds = %7666, %7262
  %7714 = phi float [ %7667, %7666 ], [ 0.000000e+00, %7262 ]
  %7715 = phi float [ %7708, %7666 ], [ 1.000000e+00, %7262 ]
  %7716 = phi float [ %7710, %7666 ], [ 0.000000e+00, %7262 ]
  %7717 = phi float [ %7711, %7666 ], [ 0.000000e+00, %7262 ]
  %7718 = phi float [ %7712, %7666 ], [ 0.000000e+00, %7262 ]
  %7719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7720 = extractvalue %dx.types.CBufRet.f32 %7719, 1
  %7721 = fsub fast float 1.000000e+00, %7715
  %7722 = fmul fast float %7721, %7297
  %7723 = fmul fast float %7722, %7720
  %7724 = fsub fast float %7297, %7723
  br i1 %7290, label %7725, label %7754, !dx.controlflow.hints !162

; <label>:7725                                    ; preds = %7713
  %7726 = fmul fast float %7298, %7287
  %7727 = fadd fast float %7726, %7288
  %7728 = call float @dx.op.unary.f32(i32 7, float %7727)  ; Saturate(value)
  %7729 = fmul fast float %7269, %7724
  %7730 = fsub fast float -0.000000e+00, %7729
  %7731 = fmul fast float %7270, %7724
  %7732 = fsub fast float -0.000000e+00, %7731
  %7733 = call float @dx.op.unary.f32(i32 21, float %7730)  ; Exp(value)
  %7734 = call float @dx.op.unary.f32(i32 21, float %7732)  ; Exp(value)
  %7735 = call float @dx.op.binary.f32(i32 35, float %7277, float %7733)  ; FMax(a,b)
  %7736 = call float @dx.op.binary.f32(i32 35, float %7277, float %7734)  ; FMax(a,b)
  %7737 = fsub fast float %7736, %7735
  %7738 = fmul fast float %7737, %7728
  %7739 = fadd fast float %7738, %7735
  %7740 = call float @dx.op.unary.f32(i32 7, float %7739)  ; Saturate(value)
  %7741 = fsub fast float %7274, %7279
  %7742 = fsub fast float %7275, %7280
  %7743 = fsub fast float %7276, %7281
  %7744 = fmul fast float %7728, %7741
  %7745 = fmul fast float %7728, %7742
  %7746 = fmul fast float %7728, %7743
  %7747 = fadd fast float %7744, %7279
  %7748 = fadd fast float %7745, %7280
  %7749 = fadd fast float %7746, %7281
  %7750 = fsub fast float 1.000000e+00, %7740
  %7751 = fmul fast float %7750, %7747
  %7752 = fmul fast float %7750, %7748
  %7753 = fmul fast float %7750, %7749
  br label %7813

; <label>:7754                                    ; preds = %7713
  %7755 = fmul fast float %7724, %7286
  %7756 = call float @dx.op.unary.f32(i32 7, float %7755)  ; Saturate(value)
  %7757 = fsub fast float 2.000000e+00, %7756
  %7758 = fmul fast float %7756, 9.921875e-01
  %7759 = fmul fast float %7758, %7757
  %7760 = fadd fast float %7759, 3.906250e-03
  %7761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7760, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7762 = extractvalue %dx.types.ResRet.f32 %7761, 0
  %7763 = fsub fast float %7756, %7762
  %7764 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7763)  ; FMax(a,b)
  %7765 = fmul fast float %7272, %7253
  %7766 = call float @dx.op.unary.f32(i32 6, float %7765)  ; FAbs(value)
  %7767 = fcmp fast ogt float %7766, 0x3EB0C6F7A0000000
  br i1 %7767, label %7768, label %7774, !dx.controlflow.hints !163

; <label>:7768                                    ; preds = %7754
  %7769 = fmul fast float %7765, 0xBFF7154760000000
  %7770 = call float @dx.op.unary.f32(i32 21, float %7769)  ; Exp(value)
  %7771 = fsub fast float 1.000000e+00, %7770
  %7772 = fdiv fast float %7771, %7765
  %7773 = fmul fast float %7772, %7282
  br label %7774

; <label>:7774                                    ; preds = %7768, %7754
  %7775 = phi float [ %7773, %7768 ], [ %7282, %7754 ]
  %7776 = fadd fast float %7775, %7284
  %7777 = fmul fast float %7776, %7764
  %7778 = fmul fast float %7269, %7777
  %7779 = fsub fast float -0.000000e+00, %7778
  %7780 = fmul fast float %7270, %7777
  %7781 = fsub fast float -0.000000e+00, %7780
  %7782 = fmul fast float %7271, %7777
  %7783 = fsub fast float -0.000000e+00, %7782
  %7784 = call float @dx.op.unary.f32(i32 21, float %7779)  ; Exp(value)
  %7785 = call float @dx.op.unary.f32(i32 21, float %7781)  ; Exp(value)
  %7786 = call float @dx.op.unary.f32(i32 21, float %7783)  ; Exp(value)
  %7787 = fmul fast float %7298, %7298
  %7788 = fadd fast float %7787, 1.000000e+00
  %7789 = fmul fast float %7788, 0x3FAE8EC8A0000000
  %7790 = fmul fast float %7789, %7279
  %7791 = fmul fast float %7789, %7280
  %7792 = fmul fast float %7789, %7281
  %7793 = fmul fast float %7298, %7277
  %7794 = fsub fast float 1.000000e+00, %7793
  %7795 = fmul fast float %7277, %7277
  %7796 = fsub fast float 1.000000e+00, %7795
  %7797 = fmul fast float %7796, 0x3FB45F3060000000
  %7798 = fmul fast float %7794, %7794
  %7799 = fdiv fast float 1.000000e+00, %7798
  %7800 = fmul fast float %7797, %7799
  %7801 = fmul fast float %7800, %7274
  %7802 = fmul fast float %7800, %7275
  %7803 = fmul fast float %7800, %7276
  %7804 = fadd fast float %7801, %7790
  %7805 = fadd fast float %7802, %7791
  %7806 = fadd fast float %7803, %7792
  %7807 = fsub fast float 1.000000e+00, %7784
  %7808 = fsub fast float 1.000000e+00, %7785
  %7809 = fsub fast float 1.000000e+00, %7786
  %7810 = fmul fast float %7804, %7807
  %7811 = fmul fast float %7805, %7808
  %7812 = fmul fast float %7806, %7809
  br label %7813

; <label>:7813                                    ; preds = %7774, %7725
  %7814 = phi float [ %7751, %7725 ], [ %7810, %7774 ]
  %7815 = phi float [ %7752, %7725 ], [ %7811, %7774 ]
  %7816 = phi float [ %7753, %7725 ], [ %7812, %7774 ]
  %7817 = phi float [ %7740, %7725 ], [ %7784, %7774 ]
  %7818 = phi float [ %7740, %7725 ], [ %7785, %7774 ]
  %7819 = phi float [ %7740, %7725 ], [ %7786, %7774 ]
  br i1 %7306, label %7820, label %8018, !dx.controlflow.hints !164

; <label>:7820                                    ; preds = %7813
  %7821 = extractvalue %dx.types.CBufRet.f32 %7719, 0
  %7822 = fmul fast float %7821, %7721
  %7823 = fsub fast float %7716, %7814
  %7824 = fsub fast float %7717, %7815
  %7825 = fsub fast float %7718, %7816
  %7826 = fmul fast float %7822, %7823
  %7827 = fmul fast float %7822, %7824
  %7828 = fmul fast float %7822, %7825
  %7829 = fadd fast float %7826, %7814
  %7830 = fadd fast float %7827, %7815
  %7831 = fadd fast float %7828, %7816
  %7832 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7817)  ; FMax(a,b)
  %7833 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7818)  ; FMax(a,b)
  %7834 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7819)  ; FMax(a,b)
  %7835 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7715)  ; FMax(a,b)
  %7836 = call float @dx.op.binary.f32(i32 35, float %7714, float %7724)  ; FMax(a,b)
  %7837 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7836)  ; FMax(a,b)
  %7838 = fdiv fast float %7714, %7837
  %7839 = call float @dx.op.unary.f32(i32 7, float %7838)  ; Saturate(value)
  %7840 = fdiv fast float %7724, %7837
  %7841 = call float @dx.op.unary.f32(i32 7, float %7840)  ; Saturate(value)
  %7842 = fcmp fast une float %7835, 1.000000e+00
  br i1 %7842, label %7843, label %7856, !dx.controlflow.hints !165

; <label>:7843                                    ; preds = %7820
  %7844 = call float @dx.op.unary.f32(i32 23, float %7835)  ; Log(value)
  %7845 = fmul fast float %7844, 0x3FE62E4300000000
  %7846 = fmul fast float %7716, %7845
  %7847 = fsub fast float -0.000000e+00, %7846
  %7848 = fmul fast float %7717, %7845
  %7849 = fsub fast float -0.000000e+00, %7848
  %7850 = fmul fast float %7718, %7845
  %7851 = fsub fast float -0.000000e+00, %7850
  %7852 = fsub fast float 1.000000e+00, %7835
  %7853 = fdiv fast float %7847, %7852
  %7854 = fdiv fast float %7849, %7852
  %7855 = fdiv fast float %7851, %7852
  br label %7856

; <label>:7856                                    ; preds = %7843, %7820
  %7857 = phi float [ %7853, %7843 ], [ %7716, %7820 ]
  %7858 = phi float [ %7854, %7843 ], [ %7717, %7820 ]
  %7859 = phi float [ %7855, %7843 ], [ %7718, %7820 ]
  %7860 = phi float [ %7845, %7843 ], [ 0.000000e+00, %7820 ]
  %7861 = fcmp fast une float %7832, 1.000000e+00
  br i1 %7861, label %7862, label %7869, !dx.controlflow.hints !166

; <label>:7862                                    ; preds = %7856
  %7863 = call float @dx.op.unary.f32(i32 23, float %7832)  ; Log(value)
  %7864 = fmul fast float %7863, 0x3FE62E4300000000
  %7865 = fmul fast float %7829, %7864
  %7866 = fsub fast float -0.000000e+00, %7865
  %7867 = fsub fast float 1.000000e+00, %7832
  %7868 = fdiv fast float %7866, %7867
  br label %7869

; <label>:7869                                    ; preds = %7862, %7856
  %7870 = phi float [ %7868, %7862 ], [ %7829, %7856 ]
  %7871 = phi float [ %7864, %7862 ], [ 0.000000e+00, %7856 ]
  %7872 = fcmp fast une float %7833, 1.000000e+00
  br i1 %7872, label %7873, label %7880, !dx.controlflow.hints !166

; <label>:7873                                    ; preds = %7869
  %7874 = call float @dx.op.unary.f32(i32 23, float %7833)  ; Log(value)
  %7875 = fmul fast float %7874, 0x3FE62E4300000000
  %7876 = fmul fast float %7830, %7875
  %7877 = fsub fast float -0.000000e+00, %7876
  %7878 = fsub fast float 1.000000e+00, %7833
  %7879 = fdiv fast float %7877, %7878
  br label %7880

; <label>:7880                                    ; preds = %7873, %7869
  %7881 = phi float [ %7879, %7873 ], [ %7830, %7869 ]
  %7882 = phi float [ %7875, %7873 ], [ 0.000000e+00, %7869 ]
  %7883 = fcmp fast une float %7834, 1.000000e+00
  br i1 %7883, label %7884, label %7891, !dx.controlflow.hints !166

; <label>:7884                                    ; preds = %7880
  %7885 = call float @dx.op.unary.f32(i32 23, float %7834)  ; Log(value)
  %7886 = fmul fast float %7885, 0x3FE62E4300000000
  %7887 = fmul fast float %7831, %7886
  %7888 = fsub fast float -0.000000e+00, %7887
  %7889 = fsub fast float 1.000000e+00, %7834
  %7890 = fdiv fast float %7888, %7889
  br label %7891

; <label>:7891                                    ; preds = %7884, %7880
  %7892 = phi float [ %7890, %7884 ], [ %7831, %7880 ]
  %7893 = phi float [ %7886, %7884 ], [ 0.000000e+00, %7880 ]
  %7894 = fmul fast float %7857, %7841
  %7895 = fmul fast float %7858, %7841
  %7896 = fmul fast float %7859, %7841
  %7897 = fmul fast float %7860, %7841
  %7898 = fmul fast float %7870, %7839
  %7899 = fmul fast float %7881, %7839
  %7900 = fmul fast float %7892, %7839
  %7901 = fmul fast float %7871, %7839
  %7902 = fmul fast float %7882, %7839
  %7903 = fmul fast float %7893, %7839
  %7904 = fadd fast float %7898, %7894
  %7905 = fadd fast float %7899, %7895
  %7906 = fadd fast float %7900, %7896
  %7907 = fadd fast float %7901, %7897
  %7908 = fadd fast float %7902, %7897
  %7909 = fadd fast float %7903, %7897
  %7910 = fcmp fast une float %7907, 0.000000e+00
  br i1 %7910, label %7911, label %7918, !dx.controlflow.hints !167

; <label>:7911                                    ; preds = %7891
  %7912 = fmul fast float %7907, 0x3FF7154760000000
  %7913 = call float @dx.op.unary.f32(i32 21, float %7912)  ; Exp(value)
  %7914 = fsub fast float 1.000000e+00, %7913
  %7915 = fmul fast float %7904, %7914
  %7916 = fsub fast float -0.000000e+00, %7915
  %7917 = fdiv fast float %7916, %7907
  br label %7918

; <label>:7918                                    ; preds = %7911, %7891
  %7919 = phi float [ %7913, %7911 ], [ 1.000000e+00, %7891 ]
  %7920 = phi float [ %7917, %7911 ], [ %7904, %7891 ]
  %7921 = fcmp fast une float %7908, 0.000000e+00
  br i1 %7921, label %7922, label %7929, !dx.controlflow.hints !167

; <label>:7922                                    ; preds = %7918
  %7923 = fmul fast float %7908, 0x3FF7154760000000
  %7924 = call float @dx.op.unary.f32(i32 21, float %7923)  ; Exp(value)
  %7925 = fsub fast float 1.000000e+00, %7924
  %7926 = fmul fast float %7905, %7925
  %7927 = fsub fast float -0.000000e+00, %7926
  %7928 = fdiv fast float %7927, %7908
  br label %7929

; <label>:7929                                    ; preds = %7922, %7918
  %7930 = phi float [ %7924, %7922 ], [ 1.000000e+00, %7918 ]
  %7931 = phi float [ %7928, %7922 ], [ %7905, %7918 ]
  %7932 = fcmp fast une float %7909, 0.000000e+00
  br i1 %7932, label %7933, label %7940, !dx.controlflow.hints !167

; <label>:7933                                    ; preds = %7929
  %7934 = fmul fast float %7909, 0x3FF7154760000000
  %7935 = call float @dx.op.unary.f32(i32 21, float %7934)  ; Exp(value)
  %7936 = fsub fast float 1.000000e+00, %7935
  %7937 = fmul fast float %7906, %7936
  %7938 = fsub fast float -0.000000e+00, %7937
  %7939 = fdiv fast float %7938, %7909
  br label %7940

; <label>:7940                                    ; preds = %7933, %7929
  %7941 = phi float [ %7935, %7933 ], [ 1.000000e+00, %7929 ]
  %7942 = phi float [ %7939, %7933 ], [ %7906, %7929 ]
  %7943 = fcmp fast ogt float %7839, %7841
  br i1 %7943, label %7944, label %7964

; <label>:7944                                    ; preds = %7940
  %7945 = fsub fast float 1.000000e+00, %7841
  %7946 = fmul fast float %7857, %7945
  %7947 = fmul fast float %7858, %7945
  %7948 = fmul fast float %7859, %7945
  %7949 = fmul fast float %7860, %7945
  %7950 = fcmp fast une float %7949, 0.000000e+00
  br i1 %7950, label %7951, label %8002, !dx.controlflow.hints !168

; <label>:7951                                    ; preds = %7944
  %7952 = fmul fast float %7949, 0x3FF7154760000000
  %7953 = call float @dx.op.unary.f32(i32 21, float %7952)  ; Exp(value)
  %7954 = fsub fast float 1.000000e+00, %7953
  %7955 = fmul fast float %7946, %7954
  %7956 = fsub fast float -0.000000e+00, %7955
  %7957 = fmul fast float %7947, %7954
  %7958 = fsub fast float -0.000000e+00, %7957
  %7959 = fmul fast float %7948, %7954
  %7960 = fsub fast float -0.000000e+00, %7959
  %7961 = fdiv fast float %7956, %7949
  %7962 = fdiv fast float %7958, %7949
  %7963 = fdiv fast float %7960, %7949
  br label %8002

; <label>:7964                                    ; preds = %7940
  %7965 = fsub fast float 1.000000e+00, %7839
  %7966 = fmul fast float %7870, %7965
  %7967 = fmul fast float %7881, %7965
  %7968 = fmul fast float %7892, %7965
  %7969 = fmul fast float %7871, %7965
  %7970 = fmul fast float %7882, %7965
  %7971 = fmul fast float %7893, %7965
  %7972 = fcmp fast une float %7969, 0.000000e+00
  br i1 %7972, label %7973, label %7980, !dx.controlflow.hints !167

; <label>:7973                                    ; preds = %7964
  %7974 = fmul fast float %7969, 0x3FF7154760000000
  %7975 = call float @dx.op.unary.f32(i32 21, float %7974)  ; Exp(value)
  %7976 = fsub fast float 1.000000e+00, %7975
  %7977 = fmul fast float %7966, %7976
  %7978 = fsub fast float -0.000000e+00, %7977
  %7979 = fdiv fast float %7978, %7969
  br label %7980

; <label>:7980                                    ; preds = %7973, %7964
  %7981 = phi float [ %7979, %7973 ], [ %7966, %7964 ]
  %7982 = phi float [ %7975, %7973 ], [ 1.000000e+00, %7964 ]
  %7983 = fcmp fast une float %7970, 0.000000e+00
  br i1 %7983, label %7984, label %7991, !dx.controlflow.hints !167

; <label>:7984                                    ; preds = %7980
  %7985 = fmul fast float %7970, 0x3FF7154760000000
  %7986 = call float @dx.op.unary.f32(i32 21, float %7985)  ; Exp(value)
  %7987 = fsub fast float 1.000000e+00, %7986
  %7988 = fmul fast float %7967, %7987
  %7989 = fsub fast float -0.000000e+00, %7988
  %7990 = fdiv fast float %7989, %7970
  br label %7991

; <label>:7991                                    ; preds = %7984, %7980
  %7992 = phi float [ %7990, %7984 ], [ %7967, %7980 ]
  %7993 = phi float [ %7986, %7984 ], [ 1.000000e+00, %7980 ]
  %7994 = fcmp fast une float %7971, 0.000000e+00
  br i1 %7994, label %7995, label %8002, !dx.controlflow.hints !167

; <label>:7995                                    ; preds = %7991
  %7996 = fmul fast float %7971, 0x3FF7154760000000
  %7997 = call float @dx.op.unary.f32(i32 21, float %7996)  ; Exp(value)
  %7998 = fsub fast float 1.000000e+00, %7997
  %7999 = fmul fast float %7968, %7998
  %8000 = fsub fast float -0.000000e+00, %7999
  %8001 = fdiv fast float %8000, %7971
  br label %8002

; <label>:8002                                    ; preds = %7995, %7991, %7951, %7944
  %8003 = phi float [ %8001, %7995 ], [ %7963, %7951 ], [ %7948, %7944 ], [ %7968, %7991 ]
  %8004 = phi float [ %7992, %7995 ], [ %7962, %7951 ], [ %7947, %7944 ], [ %7992, %7991 ]
  %8005 = phi float [ %7981, %7995 ], [ %7961, %7951 ], [ %7946, %7944 ], [ %7981, %7991 ]
  %8006 = phi float [ %7997, %7995 ], [ %7953, %7951 ], [ 1.000000e+00, %7944 ], [ 1.000000e+00, %7991 ]
  %8007 = phi float [ %7993, %7995 ], [ %7953, %7951 ], [ 1.000000e+00, %7944 ], [ %7993, %7991 ]
  %8008 = phi float [ %7982, %7995 ], [ %7953, %7951 ], [ 1.000000e+00, %7944 ], [ %7982, %7991 ]
  %8009 = fmul fast float %8008, %7920
  %8010 = fmul fast float %8007, %7931
  %8011 = fmul fast float %8006, %7942
  %8012 = fadd fast float %8009, %8005
  %8013 = fadd fast float %8010, %8004
  %8014 = fadd fast float %8011, %8003
  %8015 = fmul fast float %8008, %7919
  %8016 = fmul fast float %8007, %7930
  %8017 = fmul fast float %8006, %7941
  br label %8018

; <label>:8018                                    ; preds = %8002, %7813
  %8019 = phi float [ %8017, %8002 ], [ %7819, %7813 ]
  %8020 = phi float [ %8016, %8002 ], [ %7818, %7813 ]
  %8021 = phi float [ %8015, %8002 ], [ %7817, %7813 ]
  %8022 = phi float [ %8014, %8002 ], [ %7816, %7813 ]
  %8023 = phi float [ %8013, %8002 ], [ %7815, %7813 ]
  %8024 = phi float [ %8012, %8002 ], [ %7814, %7813 ]
  %8025 = fmul fast float %8024, %6970
  %8026 = fmul fast float %8023, %6970
  %8027 = fmul fast float %8022, %6970
  %8028 = fmul fast float %8021, %7261
  %8029 = call float @dx.op.dot3.f32(i32 55, float %8021, float %8020, float %8019, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8030 = call float @dx.op.dot3.f32(i32 55, float %8025, float %8026, float %8027, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8031 = select i1 %250, float %8029, float %8021
  %8032 = select i1 %250, float %8029, float %8020
  %8033 = select i1 %250, float 1.000000e+00, float %8019
  %8034 = select i1 %250, float %8030, float %8025
  %8035 = select i1 %250, float 0.000000e+00, float %8026
  %8036 = select i1 %250, float 0.000000e+00, float %8027
  %8037 = fmul fast float %8031, %7255
  %8038 = fmul fast float %8032, %7256
  %8039 = fmul fast float %8033, %7257
  %8040 = fadd fast float %8037, %8034
  %8041 = fadd fast float %8038, %8035
  %8042 = fadd fast float %8036, %8039
  %8043 = fmul fast float %8031, %7258
  %8044 = fmul fast float %8032, %7259
  %8045 = fmul fast float %8033, %7260
  %8046 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8047 = extractvalue %dx.types.CBufRet.i32 %8046, 0
  %8048 = icmp eq i32 %8047, 0
  br i1 %8048, label %8416, label %8049, !dx.controlflow.hints !169

; <label>:8049                                    ; preds = %8018
  %8050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8051 = extractvalue %dx.types.CBufRet.f32 %8050, 2
  %8052 = extractvalue %dx.types.CBufRet.f32 %8050, 3
  %8053 = fmul fast float %8051, %104
  %8054 = fmul fast float %8052, %105
  %8055 = fmul fast float %8053, 2.000000e+00
  %8056 = fmul fast float %8054, 2.000000e+00
  %8057 = fsub fast float 1.000000e+00, %8055
  %8058 = fsub fast float 1.000000e+00, %8056
  %8059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8060 = extractvalue %dx.types.CBufRet.f32 %8059, 0
  %8061 = extractvalue %dx.types.CBufRet.f32 %8059, 1
  %8062 = extractvalue %dx.types.CBufRet.f32 %8059, 2
  %8063 = fmul fast float %8057, %8060
  %8064 = fmul fast float %8057, %8061
  %8065 = fmul fast float %8057, %8062
  %8066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8067 = extractvalue %dx.types.CBufRet.f32 %8066, 0
  %8068 = extractvalue %dx.types.CBufRet.f32 %8066, 1
  %8069 = extractvalue %dx.types.CBufRet.f32 %8066, 2
  %8070 = fmul fast float %8058, %8067
  %8071 = fmul fast float %8058, %8068
  %8072 = fmul fast float %8058, %8069
  %8073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8074 = extractvalue %dx.types.CBufRet.f32 %8073, 0
  %8075 = extractvalue %dx.types.CBufRet.f32 %8073, 1
  %8076 = extractvalue %dx.types.CBufRet.f32 %8073, 2
  %8077 = fadd fast float %8070, %8074
  %8078 = fadd fast float %8077, %8063
  %8079 = fadd fast float %8071, %8075
  %8080 = fadd fast float %8079, %8064
  %8081 = fadd fast float %8072, %8076
  %8082 = fadd fast float %8081, %8065
  %8083 = fmul fast float %8078, %7254
  %8084 = fmul fast float %8080, %7254
  %8085 = fmul fast float %8082, %7254
  %8086 = fmul fast float %8083, %8083
  %8087 = fmul fast float %8084, %8084
  %8088 = fadd fast float %8086, %8087
  %8089 = fmul fast float %8085, %8085
  %8090 = fadd fast float %8088, %8089
  %8091 = call float @dx.op.unary.f32(i32 24, float %8090)  ; Sqrt(value)
  %8092 = extractvalue %dx.types.CBufRet.f32 %6981, 0
  %8093 = fsub fast float %8091, %8092
  %8094 = extractvalue %dx.types.CBufRet.f32 %6981, 2
  %8095 = fmul fast float %8093, %8094
  %8096 = call float @dx.op.unary.f32(i32 7, float %8095)  ; Saturate(value)
  %8097 = fadd fast float %8096, -5.000000e-01
  %8098 = fmul fast float %8097, 2.000000e+00
  %8099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8100 = extractvalue %dx.types.CBufRet.f32 %8099, 2
  %8101 = call float @dx.op.binary.f32(i32 36, float %8100, float %8098)  ; FMin(a,b)
  %8102 = fsub fast float -0.000000e+00, %8100
  %8103 = fcmp fast ogt float %8101, %8102
  br i1 %8103, label %8104, label %8416, !dx.controlflow.hints !170

; <label>:8104                                    ; preds = %8049
  %8105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8106 = extractvalue %dx.types.CBufRet.f32 %8105, 3
  %8107 = fcmp fast ogt float %8106, 0.000000e+00
  br i1 %8107, label %8108, label %8183, !dx.controlflow.hints !171

; <label>:8108                                    ; preds = %8104
  %8109 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8110 = extractvalue %dx.types.Dimensions %8109, 0
  %8111 = sitofp i32 %8110 to float
  %8112 = extractvalue %dx.types.Dimensions %8109, 1
  %8113 = sitofp i32 %8112 to float
  %8114 = fmul fast float %8053, %8111
  %8115 = fmul fast float %8054, %8113
  %8116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8117 = extractvalue %dx.types.CBufRet.f32 %8116, 1
  %8118 = fsub fast float -0.000000e+00, %8117
  %8119 = fptoui float %8118 to i32
  %8120 = fptoui float %8114 to i32
  %8121 = fptoui float %8115 to i32
  %8122 = and i32 %8119, 31
  %8123 = lshr i32 %8120, %8122
  %8124 = lshr i32 %8121, %8122
  %8125 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8119, i32 %8123, i32 %8124, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8126 = extractvalue %dx.types.ResRet.f32 %8125, 0
  %8127 = fcmp fast olt float %8126, -1.000000e+00
  %8128 = fcmp fast ogt float %8126, -1.000000e+00
  %8129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8130 = extractvalue %dx.types.CBufRet.f32 %8129, 1
  %8131 = select i1 %8128, float %8130, float 1.000000e+00
  %8132 = fadd fast float %8126, 1.000000e+00
  %8133 = fmul fast float %8131, %8132
  %8134 = call float @dx.op.unary.f32(i32 6, float %8133)  ; FAbs(value)
  %8135 = extractvalue %dx.types.CBufRet.f32 %8129, 3
  %8136 = fcmp fast oge float %8134, %8135
  %8137 = select i1 %8136, float 0x4197782600000000, float %8134
  %8138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8139 = extractvalue %dx.types.CBufRet.f32 %8138, 0
  %8140 = extractvalue %dx.types.CBufRet.f32 %8138, 1
  %8141 = extractvalue %dx.types.CBufRet.f32 %8138, 2
  %8142 = select i1 %8127, float %8139, float %8060
  %8143 = select i1 %8127, float %8140, float %8061
  %8144 = select i1 %8127, float %8141, float %8062
  %8145 = fmul fast float %8142, %8057
  %8146 = fmul fast float %8143, %8057
  %8147 = fmul fast float %8144, %8057
  %8148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8149 = extractvalue %dx.types.CBufRet.f32 %8148, 0
  %8150 = extractvalue %dx.types.CBufRet.f32 %8148, 1
  %8151 = extractvalue %dx.types.CBufRet.f32 %8148, 2
  %8152 = select i1 %8127, float %8149, float %8067
  %8153 = select i1 %8127, float %8150, float %8068
  %8154 = select i1 %8127, float %8151, float %8069
  %8155 = fmul fast float %8152, %8058
  %8156 = fmul fast float %8153, %8058
  %8157 = fmul fast float %8154, %8058
  %8158 = fadd fast float %8155, %8145
  %8159 = fadd fast float %8156, %8146
  %8160 = fadd fast float %8157, %8147
  %8161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8162 = extractvalue %dx.types.CBufRet.f32 %8161, 0
  %8163 = extractvalue %dx.types.CBufRet.f32 %8161, 1
  %8164 = extractvalue %dx.types.CBufRet.f32 %8161, 2
  %8165 = select i1 %8127, float %8162, float %8074
  %8166 = select i1 %8127, float %8163, float %8075
  %8167 = select i1 %8127, float %8164, float %8076
  %8168 = fadd fast float %8158, %8165
  %8169 = fadd fast float %8159, %8166
  %8170 = fadd fast float %8160, %8167
  %8171 = fmul fast float %8168, %8137
  %8172 = fmul fast float %8169, %8137
  %8173 = fmul fast float %8170, %8137
  %8174 = fmul fast float %8171, %8171
  %8175 = fmul fast float %8172, %8172
  %8176 = fadd fast float %8174, %8175
  %8177 = fmul fast float %8173, %8173
  %8178 = fadd fast float %8176, %8177
  %8179 = call float @dx.op.unary.f32(i32 24, float %8178)  ; Sqrt(value)
  %8180 = fsub fast float %8179, %8092
  %8181 = fmul fast float %8180, %8094
  %8182 = call float @dx.op.unary.f32(i32 7, float %8181)  ; Saturate(value)
  br label %8183

; <label>:8183                                    ; preds = %8108, %8104
  %8184 = phi float [ %8182, %8108 ], [ 1.000000e+00, %8104 ]
  %8185 = fmul fast float %8101, 5.000000e-01
  %8186 = fadd fast float %8185, 5.000000e-01
  %8187 = call float @dx.op.unary.f32(i32 22, float %8186)  ; Frc(value)
  %8188 = call float @dx.op.unary.f32(i32 27, float %8187)  ; Round_ni(value)
  %8189 = call float @dx.op.unary.f32(i32 22, float %8187)  ; Frc(value)
  %8190 = fmul fast float %8189, 2.000000e+00
  %8191 = fadd fast float %8190, -1.000000e+00
  %8192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8053, float %8054, float %8188, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8193 = extractvalue %dx.types.ResRet.f32 %8192, 0
  %8194 = extractvalue %dx.types.ResRet.f32 %8192, 1
  %8195 = extractvalue %dx.types.ResRet.f32 %8192, 2
  %8196 = extractvalue %dx.types.ResRet.f32 %8192, 3
  %8197 = fadd fast float %8193, -5.000000e-01
  %8198 = fadd fast float %8195, -5.000000e-01
  %8199 = fmul fast float %8197, 0xBFD5555560000000
  %8200 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8198, float %8199)  ; FMad(a,b,c)
  %8201 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8194, float 0.000000e+00)  ; FMad(a,b,c)
  %8202 = fadd fast float %8201, %8196
  %8203 = fmul fast float %8197, -7.500000e-01
  %8204 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8198, float %8203)  ; FMad(a,b,c)
  %8205 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8194, float 0.000000e+00)  ; FMad(a,b,c)
  %8206 = fadd fast float %8205, %8196
  %8207 = call float @dx.op.binary.f32(i32 35, float %8200, float -1.000000e+00)  ; FMax(a,b)
  %8208 = call float @dx.op.binary.f32(i32 35, float %8202, float -1.000000e+00)  ; FMax(a,b)
  %8209 = call float @dx.op.binary.f32(i32 35, float %8204, float -1.000000e+00)  ; FMax(a,b)
  %8210 = call float @dx.op.binary.f32(i32 35, float %8206, float -1.000000e+00)  ; FMax(a,b)
  %8211 = call float @dx.op.binary.f32(i32 36, float %8207, float 1.000000e+00)  ; FMin(a,b)
  %8212 = call float @dx.op.binary.f32(i32 36, float %8208, float 1.000000e+00)  ; FMin(a,b)
  %8213 = call float @dx.op.binary.f32(i32 36, float %8209, float 1.000000e+00)  ; FMin(a,b)
  %8214 = call float @dx.op.binary.f32(i32 36, float %8210, float 1.000000e+00)  ; FMin(a,b)
  %8215 = fcmp fast olt float %8211, 0x3FEFFF8020000000
  br i1 %8215, label %8216, label %8331, !dx.controlflow.hints !172

; <label>:8216                                    ; preds = %8183
  %8217 = extractvalue %dx.types.CBufRet.f32 %8099, 3
  %8218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8219 = extractvalue %dx.types.CBufRet.f32 %8218, 0
  %8220 = extractvalue %dx.types.CBufRet.f32 %8218, 1
  %8221 = extractvalue %dx.types.CBufRet.f32 %8218, 2
  %8222 = extractvalue %dx.types.CBufRet.f32 %8218, 3
  %8223 = fsub fast float %8219, %8211
  %8224 = fsub fast float %8220, %8212
  %8225 = fsub fast float %8221, %8213
  %8226 = fsub fast float %8222, %8214
  %8227 = fmul fast float %8223, %8217
  %8228 = fmul fast float %8224, %8217
  %8229 = fmul fast float %8225, %8217
  %8230 = fmul fast float %8226, %8217
  %8231 = fadd fast float %8227, %8211
  %8232 = fadd fast float %8228, %8212
  %8233 = fsub fast float -0.000000e+00, %8232
  %8234 = fadd fast float %8229, %8213
  %8235 = fadd fast float %8230, %8214
  %8236 = fmul fast float %8231, %8231
  %8237 = fsub fast float %8232, %8236
  %8238 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8237)  ; FMax(a,b)
  %8239 = fdiv fast float 1.000000e+00, %8238
  %8240 = fmul fast float %8232, %8231
  %8241 = fsub fast float %8234, %8240
  %8242 = fsub fast float %8191, %8231
  %8243 = fmul fast float %8191, %8191
  %8244 = fsub fast float %8243, %8232
  %8245 = fmul fast float %8242, %8239
  %8246 = fmul fast float %8245, %8241
  %8247 = fsub fast float %8244, %8246
  %8248 = fmul fast float %8232, %8232
  %8249 = fsub fast float %8235, %8248
  %8250 = fmul fast float %8241, %8241
  %8251 = fmul fast float %8250, %8239
  %8252 = fsub fast float %8249, %8251
  %8253 = fdiv fast float %8247, %8252
  %8254 = fmul fast float %8241, %8253
  %8255 = fsub fast float %8242, %8254
  %8256 = fmul fast float %8255, %8239
  %8257 = fmul fast float %8256, %8231
  %8258 = fsub fast float 1.000000e+00, %8257
  %8259 = fmul fast float %8232, %8253
  %8260 = fsub fast float %8258, %8259
  %8261 = fmul fast float %8256, %8256
  %8262 = fmul fast float %8253, 4.000000e+00
  %8263 = fmul fast float %8262, %8260
  %8264 = fsub fast float %8261, %8263
  %8265 = call float @dx.op.unary.f32(i32 24, float %8264)  ; Sqrt(value)
  %8266 = fcmp fast oge float %8256, 0.000000e+00
  %8267 = fsub fast float -0.000000e+00, %8265
  %8268 = select i1 %8266, float %8267, float %8265
  %8269 = fsub fast float %8268, %8256
  %8270 = fdiv fast float %8269, %8253
  %8271 = fdiv fast float %8260, %8269
  %8272 = fmul fast float %8270, 5.000000e-01
  %8273 = fmul fast float %8271, 2.000000e+00
  %8274 = select i1 %8266, float %8272, float %8273
  %8275 = select i1 %8266, float %8273, float %8272
  %8276 = call float @dx.op.binary.f32(i32 35, float %8274, float %8275)  ; FMax(a,b)
  %8277 = call float @dx.op.binary.f32(i32 36, float %8274, float %8275)  ; FMin(a,b)
  %8278 = fcmp fast ogt float %8191, %8277
  br i1 %8278, label %8279, label %8289

; <label>:8279                                    ; preds = %8216
  %8280 = fsub fast float %8191, %8277
  %8281 = fsub fast float %8276, %8277
  %8282 = fmul fast float %8280, %8281
  %8283 = fmul fast float %8276, %8191
  %8284 = fadd fast float %8276, %8191
  %8285 = fmul fast float %8284, %8231
  %8286 = fadd fast float %8283, %8232
  %8287 = fsub fast float %8286, %8285
  %8288 = fdiv fast float %8287, %8282
  br label %8289

; <label>:8289                                    ; preds = %8279, %8216
  %8290 = phi float [ %8288, %8279 ], [ 0.000000e+00, %8216 ]
  %8291 = fcmp fast ogt float %8191, %8276
  %8292 = fsub fast float %8191, %8276
  br i1 %8291, label %8293, label %8303

; <label>:8293                                    ; preds = %8289
  %8294 = fsub fast float %8276, %8277
  %8295 = fmul fast float %8294, %8292
  %8296 = fmul fast float %8277, %8191
  %8297 = fadd fast float %8277, %8191
  %8298 = fmul fast float %8297, %8231
  %8299 = fsub fast float %8233, %8296
  %8300 = fadd fast float %8299, %8298
  %8301 = fdiv fast float %8300, %8295
  %8302 = fadd fast float %8301, %8290
  br label %8303

; <label>:8303                                    ; preds = %8293, %8289
  %8304 = phi float [ %8302, %8293 ], [ %8290, %8289 ]
  %8305 = fsub fast float %8191, %8277
  %8306 = fmul fast float %8305, %8292
  %8307 = fmul fast float %8277, %8276
  %8308 = fadd fast float %8277, %8276
  %8309 = fmul fast float %8308, %8231
  %8310 = fadd fast float %8307, %8232
  %8311 = fsub fast float %8310, %8309
  %8312 = fdiv fast float %8311, %8306
  %8313 = call float @dx.op.unary.f32(i32 7, float %8304)  ; Saturate(value)
  %8314 = fcmp fast oeq float %6982, 0.000000e+00
  %8315 = extractvalue %dx.types.CBufRet.f32 %8099, 0
  %8316 = fcmp fast oeq float %8315, 0.000000e+00
  %8317 = or i1 %8314, %8316
  %8318 = fmul fast float %8315, 2.000000e+00
  %8319 = fadd fast float %8100, %8101
  %8320 = fdiv fast float %8319, %8318
  %8321 = call float @dx.op.unary.f32(i32 7, float %8320)  ; Saturate(value)
  %8322 = fmul fast float %8321, 2.000000e+00
  %8323 = fsub fast float 3.000000e+00, %8322
  %8324 = fmul fast float %8321, %8321
  %8325 = fmul fast float %8324, %8323
  %8326 = select i1 %8317, float 1.000000e+00, float %8325
  %8327 = fmul fast float %8312, %6982
  %8328 = fadd fast float %8313, %8327
  %8329 = call float @dx.op.unary.f32(i32 7, float %8328)  ; Saturate(value)
  %8330 = fmul fast float %8326, %8329
  br label %8331

; <label>:8331                                    ; preds = %8303, %8183
  %8332 = phi float [ %8330, %8303 ], [ 0.000000e+00, %8183 ]
  %8333 = fsub fast float 1.000000e+00, %8332
  %8334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8053, float %8054, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8335 = extractvalue %dx.types.ResRet.f32 %8334, 0
  %8336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8337 = extractvalue %dx.types.CBufRet.i32 %8336, 2
  %8338 = icmp eq i32 %8337, 0
  br i1 %8338, label %8344, label %8339

; <label>:8339                                    ; preds = %8331
  %8340 = call float @dx.op.unary.f32(i32 7, float %8332)  ; Saturate(value)
  %8341 = fadd fast float %8335, -1.000000e+00
  %8342 = fmul fast float %8340, %8341
  %8343 = fadd fast float %8342, 1.000000e+00
  br label %8344

; <label>:8344                                    ; preds = %8339, %8331
  %8345 = phi float [ %8343, %8339 ], [ %8333, %8331 ]
  br i1 %8107, label %8346, label %8364

; <label>:8346                                    ; preds = %8344
  %8347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8348 = extractvalue %dx.types.CBufRet.f32 %8347, 1
  %8349 = fsub fast float %8184, %8348
  %8350 = call float @dx.op.unary.f32(i32 7, float %8349)  ; Saturate(value)
  %8351 = fsub fast float %8184, %8106
  %8352 = call float @dx.op.unary.f32(i32 7, float %8351)  ; Saturate(value)
  %8353 = fsub fast float %8350, %8352
  %8354 = fsub fast float %8186, %8352
  %8355 = fdiv fast float %8354, %8353
  %8356 = call float @dx.op.unary.f32(i32 7, float %8355)  ; Saturate(value)
  %8357 = fmul fast float %8356, 2.000000e+00
  %8358 = fsub fast float 3.000000e+00, %8357
  %8359 = fsub fast float %8335, %8345
  %8360 = fmul fast float %8356, %8356
  %8361 = fmul fast float %8360, %8359
  %8362 = fmul fast float %8361, %8358
  %8363 = fadd fast float %8362, %8345
  br label %8364

; <label>:8364                                    ; preds = %8346, %8344
  %8365 = phi float [ %8363, %8346 ], [ %8345, %8344 ]
  %8366 = call float @dx.op.binary.f32(i32 35, float %8335, float %8365)  ; FMax(a,b)
  %8367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8368 = extractvalue %dx.types.CBufRet.i32 %8367, 2
  %8369 = and i32 %8368, 1
  %8370 = icmp eq i32 %8369, 0
  %8371 = fcmp fast une float %8366, 1.000000e+00
  %8372 = and i1 %8371, %8370
  br i1 %8372, label %8373, label %8392

; <label>:8373                                    ; preds = %8364
  %8374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8053, float %8054, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8375 = extractvalue %dx.types.ResRet.f32 %8374, 0
  %8376 = extractvalue %dx.types.ResRet.f32 %8374, 1
  %8377 = extractvalue %dx.types.ResRet.f32 %8374, 2
  %8378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8379 = extractvalue %dx.types.CBufRet.f32 %8378, 1
  %8380 = fmul fast float %8379, %8375
  %8381 = fmul fast float %8379, %8376
  %8382 = fmul fast float %8379, %8377
  %8383 = fcmp fast ogt float %8335, 0x3FEFFF2E40000000
  %8384 = fsub fast float 1.000000e+00, %8366
  %8385 = fsub fast float 1.000000e+00, %8335
  %8386 = fdiv fast float %8384, %8385
  %8387 = call float @dx.op.unary.f32(i32 7, float %8386)  ; Saturate(value)
  %8388 = select i1 %8383, float 0.000000e+00, float %8387
  %8389 = fmul fast float %8380, %8388
  %8390 = fmul fast float %8381, %8388
  %8391 = fmul fast float %8382, %8388
  br label %8392

; <label>:8392                                    ; preds = %8373, %8364
  %8393 = phi float [ 0.000000e+00, %8364 ], [ %8389, %8373 ]
  %8394 = phi float [ 0.000000e+00, %8364 ], [ %8390, %8373 ]
  %8395 = phi float [ 0.000000e+00, %8364 ], [ %8391, %8373 ]
  %8396 = fmul fast float %8393, %6970
  %8397 = fmul fast float %8394, %6970
  %8398 = fmul fast float %8395, %6970
  %8399 = fmul fast float %8366, %8028
  %8400 = call float @dx.op.dot3.f32(i32 55, float %8366, float %8366, float %8366, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8401 = call float @dx.op.dot3.f32(i32 55, float %8396, float %8397, float %8398, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8402 = select i1 %250, float %8400, float %8366
  %8403 = select i1 %250, float 1.000000e+00, float %8366
  %8404 = select i1 %250, float %8401, float %8396
  %8405 = select i1 %250, float 0.000000e+00, float %8397
  %8406 = select i1 %250, float 0.000000e+00, float %8398
  %8407 = fmul fast float %8402, %8040
  %8408 = fmul fast float %8402, %8041
  %8409 = fmul fast float %8403, %8042
  %8410 = fadd fast float %8407, %8404
  %8411 = fadd fast float %8408, %8405
  %8412 = fadd fast float %8406, %8409
  %8413 = fmul fast float %8402, %8043
  %8414 = fmul fast float %8402, %8044
  %8415 = fmul fast float %8403, %8045
  br label %8416

; <label>:8416                                    ; preds = %8392, %8049, %8018, %7250
  %8417 = phi float [ %7255, %7250 ], [ %8040, %8018 ], [ %8410, %8392 ], [ %8040, %8049 ]
  %8418 = phi float [ %7256, %7250 ], [ %8041, %8018 ], [ %8411, %8392 ], [ %8041, %8049 ]
  %8419 = phi float [ %7257, %7250 ], [ %8042, %8018 ], [ %8412, %8392 ], [ %8042, %8049 ]
  %8420 = phi float [ %7258, %7250 ], [ %8043, %8018 ], [ %8413, %8392 ], [ %8043, %8049 ]
  %8421 = phi float [ %7259, %7250 ], [ %8044, %8018 ], [ %8414, %8392 ], [ %8044, %8049 ]
  %8422 = phi float [ %7260, %7250 ], [ %8045, %8018 ], [ %8415, %8392 ], [ %8045, %8049 ]
  %8423 = phi float [ %7261, %7250 ], [ %8028, %8018 ], [ %8399, %8392 ], [ %8028, %8049 ]
  %8424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8425 = extractvalue %dx.types.CBufRet.f32 %8424, 2
  %8426 = extractvalue %dx.types.CBufRet.f32 %8424, 3
  %8427 = fmul fast float %8425, %104
  %8428 = fmul fast float %8426, %105
  %8429 = call float @dx.op.unary.f32(i32 7, float %8427)  ; Saturate(value)
  %8430 = call float @dx.op.unary.f32(i32 7, float %8428)  ; Saturate(value)
  %8431 = select i1 %6992, i32 2, i32 0
  %8432 = or i32 %8431, 1
  %8433 = uitofp i32 %8432 to float
  %8434 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8429, float %8430, float %8433, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8435 = extractvalue %dx.types.ResRet.f32 %8434, 0
  %8436 = extractvalue %dx.types.ResRet.f32 %8434, 1
  %8437 = extractvalue %dx.types.ResRet.f32 %8434, 2
  %8438 = extractvalue %dx.types.ResRet.f32 %8434, 3
  %8439 = add nuw nsw i32 %8431, 2
  %8440 = uitofp i32 %8439 to float
  %8441 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8429, float %8430, float %8440, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8442 = extractvalue %dx.types.ResRet.f32 %8441, 0
  %8443 = extractvalue %dx.types.ResRet.f32 %8441, 1
  %8444 = extractvalue %dx.types.ResRet.f32 %8441, 2
  %8445 = extractvalue %dx.types.ResRet.f32 %8441, 3
  %8446 = call float @dx.op.binary.f32(i32 35, float %8436, float %8437)  ; FMax(a,b)
  %8447 = call float @dx.op.binary.f32(i32 35, float %8435, float %8446)  ; FMax(a,b)
  %8448 = call float @dx.op.binary.f32(i32 35, float %8447, float %8438)  ; FMax(a,b)
  %8449 = call float @dx.op.binary.f32(i32 36, float %8443, float %8444)  ; FMin(a,b)
  %8450 = call float @dx.op.binary.f32(i32 36, float %8442, float %8449)  ; FMin(a,b)
  %8451 = call float @dx.op.binary.f32(i32 36, float %8450, float %8445)  ; FMin(a,b)
  %8452 = fmul fast float %8448, 2.550000e+02
  %8453 = fadd fast float %8452, 0x3F70101020000000
  %8454 = fptoui float %8453 to i32
  %8455 = fmul fast float %8451, 2.550000e+02
  %8456 = fadd fast float %8455, 0x3F70101020000000
  %8457 = fptoui float %8456 to i32
  %8458 = icmp ult i32 %8454, %8457
  br i1 %8458, label %8459, label %8628

; <label>:8459                                    ; preds = %8416
  %8460 = fcmp fast ogt float %94, 9.843750e-01
  %8461 = fadd fast float %7254, -4.000000e+00
  %8462 = select i1 %8460, float -4.000000e+00, float %8461
  %8463 = call float @dx.op.binary.f32(i32 35, float %8462, float 0.000000e+00)  ; FMax(a,b)
  %8464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8465 = extractvalue %dx.types.CBufRet.f32 %8464, 0
  %8466 = fadd fast float %8465, %8463
  %8467 = extractvalue %dx.types.CBufRet.f32 %8464, 2
  %8468 = fmul fast float %8466, %8467
  %8469 = call float @dx.op.unary.f32(i32 23, float %8468)  ; Log(value)
  %8470 = extractvalue %dx.types.CBufRet.f32 %8464, 3
  %8471 = fmul fast float %8470, %8469
  %8472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8473 = extractvalue %dx.types.CBufRet.f32 %8472, 2
  %8474 = fmul fast float %8471, %8473
  %8475 = call float @dx.op.unary.f32(i32 7, float %8474)  ; Saturate(value)
  %8476 = uitofp i32 %8454 to float
  %8477 = uitofp i32 %8457 to float
  %8478 = fadd fast float %8476, 5.000000e-01
  %8479 = fadd fast float %8477, 5.000000e-01
  %8480 = fmul fast float %8473, %8478
  %8481 = fmul fast float %8473, %8479
  %8482 = fadd fast float %8480, 0x3F0FFB4800000000
  %8483 = fadd fast float %8481, 0xBF0FFB4800000000
  %8484 = call float @dx.op.binary.f32(i32 35, float %8475, float %8482)  ; FMax(a,b)
  %8485 = call float @dx.op.binary.f32(i32 36, float %8484, float %8483)  ; FMin(a,b)
  %8486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8487 = extractvalue %dx.types.CBufRet.f32 %8486, 1
  %8488 = extractvalue %dx.types.CBufRet.f32 %8486, 2
  %8489 = extractvalue %dx.types.CBufRet.f32 %8486, 0
  %8490 = select i1 %6992, float %8489, float 0.000000e+00
  %8491 = fmul fast float %8487, %8485
  %8492 = fadd fast float %8490, %8491
  %8493 = fadd fast float %8490, %8488
  %8494 = fsub fast float %8487, %8488
  %8495 = fadd fast float %8494, %8490
  %8496 = call float @dx.op.binary.f32(i32 35, float %8492, float %8493)  ; FMax(a,b)
  %8497 = call float @dx.op.binary.f32(i32 36, float %8496, float %8495)  ; FMin(a,b)
  %8498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8429, float %8430, float %8497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8499 = extractvalue %dx.types.ResRet.f32 %8498, 0
  %8500 = extractvalue %dx.types.ResRet.f32 %8498, 1
  %8501 = extractvalue %dx.types.ResRet.f32 %8498, 2
  %8502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8503 = extractvalue %dx.types.CBufRet.i32 %8502, 0
  %8504 = extractvalue %dx.types.CBufRet.i32 %8502, 1
  %8505 = uitofp i32 %8503 to float
  %8506 = uitofp i32 %8504 to float
  %8507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8508 = extractvalue %dx.types.CBufRet.f32 %8507, 0
  %8509 = extractvalue %dx.types.CBufRet.f32 %8507, 1
  %8510 = fmul fast float %8505, %8429
  %8511 = fmul fast float %8506, %8430
  %8512 = fadd fast float %8510, -5.000000e-01
  %8513 = fadd fast float %8511, -5.000000e-01
  %8514 = call float @dx.op.unary.f32(i32 22, float %8512)  ; Frc(value)
  %8515 = call float @dx.op.unary.f32(i32 22, float %8513)  ; Frc(value)
  %8516 = fmul fast float %8514, %8514
  %8517 = fmul fast float %8516, %8514
  %8518 = fsub fast float 3.000000e+00, %8514
  %8519 = fmul fast float %8516, %8518
  %8520 = fmul fast float %8514, 3.000000e+00
  %8521 = fmul fast float %8517, 3.000000e+00
  %8522 = fmul fast float %8516, 6.000000e+00
  %8523 = fsub fast float %8521, %8522
  %8524 = fadd fast float %8523, 4.000000e+00
  %8525 = fmul fast float %8524, 0x3FC5555560000000
  %8526 = fmul fast float %8517, -3.000000e+00
  %8527 = fadd fast float %8516, %8514
  %8528 = fmul fast float %8527, 3.000000e+00
  %8529 = fadd fast float %8526, 1.000000e+00
  %8530 = fadd fast float %8529, %8528
  %8531 = fmul fast float %8517, 0x3FC5555560000000
  %8532 = fmul fast float %8515, %8515
  %8533 = fmul fast float %8532, %8515
  %8534 = fsub fast float 3.000000e+00, %8515
  %8535 = fmul fast float %8532, %8534
  %8536 = fmul fast float %8515, 3.000000e+00
  %8537 = fmul fast float %8533, 3.000000e+00
  %8538 = fmul fast float %8532, 6.000000e+00
  %8539 = fsub fast float %8537, %8538
  %8540 = fadd fast float %8539, 4.000000e+00
  %8541 = fmul fast float %8540, 0x3FC5555560000000
  %8542 = fmul fast float %8533, -3.000000e+00
  %8543 = fadd fast float %8532, %8515
  %8544 = fmul fast float %8543, 3.000000e+00
  %8545 = fadd fast float %8542, 1.000000e+00
  %8546 = fadd fast float %8545, %8544
  %8547 = fmul fast float %8533, 0x3FC5555560000000
  %8548 = fadd fast float %8514, 1.000000e+00
  %8549 = fsub fast float 1.000000e+00, %8520
  %8550 = fadd fast float %8549, %8519
  %8551 = fadd fast float %8550, %8524
  %8552 = fmul fast float %8551, 0x3FC5555560000000
  %8553 = fdiv fast float %8525, %8552
  %8554 = fsub fast float %8548, %8553
  %8555 = fsub fast float 1.000000e+00, %8514
  %8556 = fadd fast float %8530, %8517
  %8557 = fmul fast float %8556, 0x3FC5555560000000
  %8558 = fdiv fast float %8531, %8557
  %8559 = fadd fast float %8555, %8558
  %8560 = fadd fast float %8515, 1.000000e+00
  %8561 = fsub fast float 1.000000e+00, %8536
  %8562 = fadd fast float %8561, %8535
  %8563 = fadd fast float %8562, %8540
  %8564 = fmul fast float %8563, 0x3FC5555560000000
  %8565 = fdiv fast float %8541, %8564
  %8566 = fsub fast float %8560, %8565
  %8567 = fsub fast float 1.000000e+00, %8515
  %8568 = fadd fast float %8546, %8533
  %8569 = fmul fast float %8568, 0x3FC5555560000000
  %8570 = fdiv fast float %8547, %8569
  %8571 = fadd fast float %8570, %8567
  %8572 = fmul fast float %8554, %8508
  %8573 = fsub fast float %8429, %8572
  %8574 = fmul fast float %8559, %8508
  %8575 = fadd fast float %8574, %8429
  %8576 = fmul fast float %8571, %8509
  %8577 = fadd fast float %8576, %8430
  %8578 = fmul fast float %8566, %8509
  %8579 = fsub fast float %8430, %8578
  %8580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8573, float %8579, float %8497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8581 = extractvalue %dx.types.ResRet.f32 %8580, 0
  %8582 = extractvalue %dx.types.ResRet.f32 %8580, 1
  %8583 = extractvalue %dx.types.ResRet.f32 %8580, 2
  %8584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8575, float %8579, float %8497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8585 = extractvalue %dx.types.ResRet.f32 %8584, 0
  %8586 = extractvalue %dx.types.ResRet.f32 %8584, 1
  %8587 = extractvalue %dx.types.ResRet.f32 %8584, 2
  %8588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8573, float %8577, float %8497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8589 = extractvalue %dx.types.ResRet.f32 %8588, 0
  %8590 = extractvalue %dx.types.ResRet.f32 %8588, 1
  %8591 = extractvalue %dx.types.ResRet.f32 %8588, 2
  %8592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8575, float %8577, float %8497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8593 = extractvalue %dx.types.ResRet.f32 %8592, 0
  %8594 = extractvalue %dx.types.ResRet.f32 %8592, 1
  %8595 = extractvalue %dx.types.ResRet.f32 %8592, 2
  %8596 = fsub fast float %8589, %8581
  %8597 = fsub fast float %8590, %8582
  %8598 = fsub fast float %8591, %8583
  %8599 = fmul fast float %8596, %8569
  %8600 = fmul fast float %8597, %8569
  %8601 = fmul fast float %8598, %8569
  %8602 = fadd fast float %8599, %8581
  %8603 = fadd fast float %8600, %8582
  %8604 = fadd fast float %8601, %8583
  %8605 = fsub fast float %8593, %8585
  %8606 = fsub fast float %8594, %8586
  %8607 = fsub fast float %8595, %8587
  %8608 = fmul fast float %8605, %8569
  %8609 = fmul fast float %8606, %8569
  %8610 = fmul fast float %8607, %8569
  %8611 = fsub fast float %8585, %8602
  %8612 = fadd fast float %8611, %8608
  %8613 = fsub fast float %8586, %8603
  %8614 = fadd fast float %8613, %8609
  %8615 = fsub fast float %8587, %8604
  %8616 = fadd fast float %8615, %8610
  %8617 = fmul fast float %8612, %8557
  %8618 = fmul fast float %8614, %8557
  %8619 = fmul fast float %8616, %8557
  %8620 = fadd fast float %8617, %8602
  %8621 = fadd fast float %8618, %8603
  %8622 = fadd fast float %8619, %8604
  %8623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8624 = extractvalue %dx.types.CBufRet.f32 %8623, 1
  %8625 = fmul fast float %8620, %8624
  %8626 = fmul fast float %8621, %8624
  %8627 = fmul fast float %8622, %8624
  br label %8628

; <label>:8628                                    ; preds = %8459, %8416
  %8629 = phi float [ %8499, %8459 ], [ 1.000000e+00, %8416 ]
  %8630 = phi float [ %8500, %8459 ], [ 1.000000e+00, %8416 ]
  %8631 = phi float [ %8501, %8459 ], [ 1.000000e+00, %8416 ]
  %8632 = phi float [ %8625, %8459 ], [ 0.000000e+00, %8416 ]
  %8633 = phi float [ %8626, %8459 ], [ 0.000000e+00, %8416 ]
  %8634 = phi float [ %8627, %8459 ], [ 0.000000e+00, %8416 ]
  %8635 = fmul fast float %8632, %6970
  %8636 = fmul fast float %8633, %6970
  %8637 = fmul fast float %8634, %6970
  %8638 = fmul fast float %8629, %8423
  %8639 = call float @dx.op.dot3.f32(i32 55, float %8629, float %8630, float %8631, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8640 = call float @dx.op.dot3.f32(i32 55, float %8635, float %8636, float %8637, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8641 = select i1 %250, float %8639, float %8629
  %8642 = select i1 %250, float %8639, float %8630
  %8643 = select i1 %250, float 1.000000e+00, float %8631
  %8644 = select i1 %250, float %8640, float %8635
  %8645 = select i1 %250, float 0.000000e+00, float %8636
  %8646 = select i1 %250, float 0.000000e+00, float %8637
  %8647 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8648 = extractvalue %dx.types.CBufRet.i32 %8647, 3
  %8649 = and i32 %8648, 3
  %8650 = icmp ne i32 %8649, 0
  %8651 = and i32 %8648, 4
  %8652 = icmp ne i32 %8651, 0
  %8653 = and i1 %8650, %8652
  %8654 = and i1 %250, %8653
  br i1 %8654, label %8655, label %8661

; <label>:8655                                    ; preds = %8628
  %8656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8657 = extractvalue %dx.types.CBufRet.f32 %8656, 1
  %8658 = fadd fast float %8638, -1.000000e+00
  %8659 = fmul fast float %8657, %8658
  %8660 = fadd fast float %8659, 1.000000e+00
  br label %8661

; <label>:8661                                    ; preds = %8655, %8628
  %8662 = phi float [ %8660, %8655 ], [ %8638, %8628 ]
  %8663 = fadd fast float %8420, %8417
  %8664 = fmul fast float %8641, %8663
  %8665 = fadd fast float %8664, %8644
  %8666 = fadd fast float %8421, %8418
  %8667 = fmul fast float %8642, %8666
  %8668 = fadd fast float %8667, %8645
  %8669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8670 = extractvalue %dx.types.CBufRet.f32 %8669, 0
  br i1 %250, label %8671, label %8694

; <label>:8671                                    ; preds = %8661
  %8672 = fadd fast float %8665, %8668
  %8673 = fmul fast float %8670, %8672
  %8674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8675 = extractvalue %dx.types.CBufRet.f32 %8674, 3
  %8676 = extractvalue %dx.types.CBufRet.f32 %6974, 1
  %8677 = fsub fast float %6979, %6973
  %8678 = fadd fast float %8677, %6980
  %8679 = fsub fast float %8678, %8676
  %8680 = extractvalue %dx.types.CBufRet.f32 %6974, 2
  %8681 = fmul fast float %8679, %8680
  %8682 = call float @dx.op.unary.f32(i32 7, float %8681)  ; Saturate(value)
  %8683 = fsub fast float %8682, %8675
  %8684 = fmul fast float %8683, %8662
  %8685 = fadd fast float %8684, %8675
  %8686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8687 = extractvalue %dx.types.CBufRet.f32 %8686, 0
  %8688 = fsub fast float %8685, %8687
  %8689 = fmul fast float %8688, 1.000000e+01
  %8690 = call float @dx.op.unary.f32(i32 7, float %8689)  ; Saturate(value)
  %8691 = fmul fast float %8690, %6969
  %8692 = fadd fast float %8691, %6970
  %8693 = fmul fast float %8692, %8685
  br label %8718

; <label>:8694                                    ; preds = %8661
  %8695 = fadd fast float %8422, %8419
  %8696 = fmul fast float %8643, %8695
  %8697 = fadd fast float %8696, %8646
  %8698 = fmul fast float %8670, %8665
  %8699 = fmul fast float %8670, %8668
  %8700 = fmul fast float %8670, %8697
  %8701 = call float @dx.op.binary.f32(i32 35, float %8699, float %8700)  ; FMax(a,b)
  %8702 = call float @dx.op.binary.f32(i32 35, float %8698, float %8701)  ; FMax(a,b)
  %8703 = call float @dx.op.binary.f32(i32 35, float %8702, float %6970)  ; FMax(a,b)
  %8704 = fcmp fast ugt float %8703, 0x3F10000000000000
  br i1 %8704, label %8706, label %8705

; <label>:8705                                    ; preds = %8694
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8706

; <label>:8706                                    ; preds = %8705, %8694
  %8707 = add i32 %54, 372
  %8708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8707, i32 undef)  ; BufferLoad(srv,index,wot)
  %8709 = extractvalue %dx.types.ResRet.i32 %8708, 0
  %8710 = and i32 %8709, 32
  %8711 = icmp eq i32 %8710, 0
  br i1 %8711, label %8718, label %8712

; <label>:8712                                    ; preds = %8706
  %8713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8714 = extractvalue %dx.types.CBufRet.f32 %8713, 0
  %8715 = fmul fast float %8714, 0x3FE99999A0000000
  %8716 = fadd fast float %8714, %8698
  %8717 = fadd fast float %8715, %8700
  br label %8718

; <label>:8718                                    ; preds = %8712, %8706, %8671
  %8719 = phi float [ %8673, %8671 ], [ %8716, %8712 ], [ %8698, %8706 ]
  %8720 = phi float [ %8693, %8671 ], [ %8699, %8712 ], [ %8699, %8706 ]
  %8721 = phi float [ %8692, %8671 ], [ %8717, %8712 ], [ %8700, %8706 ]
  %8722 = phi float [ %8692, %8671 ], [ %6970, %8712 ], [ %6970, %8706 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8723 = call float @dx.op.binary.f32(i32 36, float %8719, float 3.225500e+04)  ; FMin(a,b)
  %8724 = call float @dx.op.binary.f32(i32 36, float %8720, float 3.225500e+04)  ; FMin(a,b)
  %8725 = call float @dx.op.binary.f32(i32 36, float %8721, float 3.225500e+04)  ; FMin(a,b)
  %8726 = call float @dx.op.binary.f32(i32 36, float %8722, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8723)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8724)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8725)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8726)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

