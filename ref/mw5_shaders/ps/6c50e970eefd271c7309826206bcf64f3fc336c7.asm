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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 2c15fd44c23426740534c993da967149
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
; Number of inputs: 56, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
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
  %605 = add i32 %54, 424
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
  %657 = add i32 %54, 408
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
  %681 = add i32 %54, 360
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
  %704 = add i32 %54, 440
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
  %902 = add i32 %54, 376
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
  %986 = add i32 %54, 392
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
  %1044 = add i32 %54, 456
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
  %1090 = add i32 %54, 472
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
  %1251 = add i32 %54, 428
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
  %1303 = add i32 %54, 412
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
  %1329 = add i32 %54, 364
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
  %1352 = add i32 %54, 444
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
  %1550 = add i32 %54, 380
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
  %1634 = add i32 %54, 396
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
  %1692 = add i32 %54, 460
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
  %1738 = add i32 %54, 476
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
  %2139 = add i32 %54, 432
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
  %2191 = add i32 %54, 416
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
  %2217 = add i32 %54, 368
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
  %2240 = add i32 %54, 448
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
  %2438 = add i32 %54, 384
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
  %2522 = add i32 %54, 400
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
  %2580 = add i32 %54, 464
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
  %2626 = add i32 %54, 480
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
  %3027 = add i32 %54, 436
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
  %3079 = add i32 %54, 420
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
  %3105 = add i32 %54, 372
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
  %3128 = add i32 %54, 452
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
  %3326 = add i32 %54, 388
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
  %3410 = add i32 %54, 404
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
  %3468 = add i32 %54, 468
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
  %3514 = add i32 %54, 484
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
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 0
  %3803 = call float @dx.op.dot2.f32(i32 54, float %3785, float %3786, float %3785, float %3786)  ; Dot2(ax,ay,bx,by)
  %3804 = fmul fast float %3803, 0x3FE3333340000000
  %3805 = fsub fast float 1.000000e+00, %3804
  %3806 = call float @dx.op.dot3.f32(i32 55, float %3785, float %3786, float %3805, float %3785, float %3786, float %3805)  ; Dot3(ax,ay,az,bx,by,bz)
  %3807 = call float @dx.op.unary.f32(i32 25, float %3806)  ; Rsqrt(value)
  %3808 = fmul fast float %3807, %3785
  %3809 = fmul fast float %3807, %3786
  %3810 = fmul fast float %3805, %3807
  %3811 = fmul fast float %3810, %111
  %3812 = fmul fast float %3810, %112
  %3813 = fmul fast float %3810, %113
  %3814 = fmul fast float %3808, %79
  %3815 = fmul fast float %3808, %80
  %3816 = fmul fast float %3808, %81
  %3817 = fadd fast float %3811, %3814
  %3818 = fadd fast float %3812, %3815
  %3819 = fadd fast float %3813, %3816
  %3820 = fmul fast float %123, %3809
  %3821 = fmul fast float %124, %3809
  %3822 = fmul fast float %125, %3809
  %3823 = fadd fast float %3817, %3820
  %3824 = fadd fast float %3818, %3821
  %3825 = fadd fast float %3819, %3822
  %3826 = call float @dx.op.dot3.f32(i32 55, float %3823, float %3824, float %3825, float %3823, float %3824, float %3825)  ; Dot3(ax,ay,az,bx,by,bz)
  %3827 = call float @dx.op.unary.f32(i32 25, float %3826)  ; Rsqrt(value)
  %3828 = fmul fast float %3823, %3827
  %3829 = fmul fast float %3824, %3827
  %3830 = fmul fast float %3825, %3827
  %3831 = icmp eq i32 %55, 65535
  br i1 %3831, label %4377, label %3832

; <label>:3832                                    ; preds = %3784
  %3833 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %3834 = call float @dx.op.unary.f32(i32 83, float %57)  ; DerivCoarseX(value)
  %3835 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3836 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %3837 = call float @dx.op.unary.f32(i32 84, float %57)  ; DerivCoarseY(value)
  %3838 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3839 = fadd fast float %3833, %56
  %3840 = fadd fast float %3834, %57
  %3841 = fadd fast float %3835, %58
  %3842 = fadd fast float %3836, %56
  %3843 = fadd fast float %3837, %57
  %3844 = fadd fast float %3838, %58
  %3845 = mul i32 %55, 48
  %3846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.f32 %3846, 0
  %3848 = extractvalue %dx.types.ResRet.f32 %3846, 1
  %3849 = extractvalue %dx.types.ResRet.f32 %3846, 2
  %3850 = add i32 %3845, 16
  %3851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3852 = extractvalue %dx.types.ResRet.f32 %3851, 0
  %3853 = extractvalue %dx.types.ResRet.f32 %3851, 1
  %3854 = extractvalue %dx.types.ResRet.f32 %3851, 2
  %3855 = add i32 %3845, 32
  %3856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3857 = extractvalue %dx.types.ResRet.f32 %3856, 0
  %3858 = extractvalue %dx.types.ResRet.f32 %3856, 1
  %3859 = extractvalue %dx.types.ResRet.f32 %3856, 2
  %3860 = extractvalue %dx.types.ResRet.f32 %3856, 3
  %3861 = bitcast float %3860 to i32
  %3862 = fmul fast float %3847, %56
  %3863 = fmul fast float %3848, %57
  %3864 = fmul fast float %3849, %58
  %3865 = fsub fast float %3862, %3852
  %3866 = fsub fast float %3863, %3853
  %3867 = fsub fast float %3864, %3854
  %3868 = call float @dx.op.unary.f32(i32 7, float %3865)  ; Saturate(value)
  %3869 = call float @dx.op.unary.f32(i32 7, float %3866)  ; Saturate(value)
  %3870 = call float @dx.op.unary.f32(i32 7, float %3867)  ; Saturate(value)
  %3871 = fmul fast float %3868, %3857
  %3872 = fmul fast float %3869, %3858
  %3873 = fmul fast float %3870, %3859
  %3874 = fadd fast float %3857, -1.000000e+00
  %3875 = fadd fast float %3858, -1.000000e+00
  %3876 = fadd fast float %3859, -1.000000e+00
  %3877 = call float @dx.op.unary.f32(i32 27, float %3871)  ; Round_ni(value)
  %3878 = call float @dx.op.unary.f32(i32 27, float %3872)  ; Round_ni(value)
  %3879 = call float @dx.op.unary.f32(i32 27, float %3873)  ; Round_ni(value)
  %3880 = call float @dx.op.binary.f32(i32 36, float %3877, float %3874)  ; FMin(a,b)
  %3881 = call float @dx.op.binary.f32(i32 36, float %3878, float %3875)  ; FMin(a,b)
  %3882 = call float @dx.op.binary.f32(i32 36, float %3879, float %3876)  ; FMin(a,b)
  %3883 = fmul fast float %3882, %3858
  %3884 = fadd fast float %3883, %3881
  %3885 = fmul fast float %3884, %3857
  %3886 = fadd fast float %3885, %3880
  %3887 = fptosi float %3886 to i32
  %3888 = add nsw i32 %3887, %3861
  %3889 = shl nsw i32 %3888, 2
  %3890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.i32 %3890, 0
  %3892 = lshr i32 %3891, 16
  %3893 = icmp eq i32 %3892, 0
  br i1 %3893, label %4343, label %3894

; <label>:3894                                    ; preds = %3832
  br label %3895

; <label>:3895                                    ; preds = %4019, %3894
  %3896 = phi i32 [ %3921, %4019 ], [ %3892, %3894 ]
  %3897 = phi float [ %4020, %4019 ], [ 0.000000e+00, %3894 ]
  %3898 = phi float [ %4021, %4019 ], [ %3802, %3894 ]
  %3899 = phi float [ %4022, %4019 ], [ %3800, %3894 ]
  %3900 = phi float [ %4023, %4019 ], [ %3793, %3894 ]
  %3901 = phi float [ %4024, %4019 ], [ %3794, %3894 ]
  %3902 = phi float [ %4025, %4019 ], [ %3795, %3894 ]
  %3903 = phi float [ %4026, %4019 ], [ 0.000000e+00, %3894 ]
  %3904 = phi float [ %4027, %4019 ], [ 0.000000e+00, %3894 ]
  %3905 = phi float [ %4028, %4019 ], [ %3790, %3894 ]
  %3906 = phi float [ %4029, %4019 ], [ %3791, %3894 ]
  %3907 = phi float [ %4030, %4019 ], [ %3792, %3894 ]
  %3908 = phi float [ %4031, %4019 ], [ %3828, %3894 ]
  %3909 = phi float [ %4032, %4019 ], [ %3829, %3894 ]
  %3910 = phi float [ %4033, %4019 ], [ %3830, %3894 ]
  %3911 = phi float [ %4034, %4019 ], [ %3798, %3894 ]
  %3912 = phi float [ %4035, %4019 ], [ %3797, %3894 ]
  %3913 = phi float [ %4036, %4019 ], [ 0.000000e+00, %3894 ]
  %3914 = phi float [ %4037, %4019 ], [ %3796, %3894 ]
  %3915 = phi float [ %4038, %4019 ], [ %3787, %3894 ]
  %3916 = phi float [ %4039, %4019 ], [ %3788, %3894 ]
  %3917 = phi float [ %4040, %4019 ], [ %3789, %3894 ]
  %3918 = shl nuw nsw i32 %3896, 2
  %3919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3918, i32 undef)  ; BufferLoad(srv,index,wot)
  %3920 = extractvalue %dx.types.ResRet.i32 %3919, 0
  %3921 = lshr i32 %3920, 16
  %3922 = shl i32 %3920, 8
  %3923 = and i32 %3922, 16776960
  %3924 = or i32 %3923, 48
  %3925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3926 = extractvalue %dx.types.ResRet.f32 %3925, 0
  %3927 = extractvalue %dx.types.ResRet.f32 %3925, 1
  %3928 = extractvalue %dx.types.ResRet.f32 %3925, 2
  %3929 = or i32 %3923, 64
  %3930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3929, i32 undef)  ; BufferLoad(srv,index,wot)
  %3931 = extractvalue %dx.types.ResRet.i32 %3930, 0
  %3932 = extractvalue %dx.types.ResRet.i32 %3930, 1
  %3933 = or i32 %3923, 80
  %3934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3935 = extractvalue %dx.types.ResRet.f32 %3934, 2
  %3936 = extractvalue %dx.types.ResRet.f32 %3934, 3
  %3937 = or i32 %3923, 96
  %3938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3937, i32 undef)  ; BufferLoad(srv,index,wot)
  %3939 = extractvalue %dx.types.ResRet.f32 %3938, 0
  %3940 = extractvalue %dx.types.ResRet.f32 %3938, 1
  %3941 = extractvalue %dx.types.ResRet.f32 %3938, 2
  %3942 = extractvalue %dx.types.ResRet.f32 %3938, 3
  %3943 = or i32 %3923, 112
  %3944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3943, i32 undef)  ; BufferLoad(srv,index,wot)
  %3945 = extractvalue %dx.types.ResRet.f32 %3944, 2
  %3946 = or i32 %3923, 128
  %3947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3946, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.ResRet.f32 %3947, 1
  %3950 = extractvalue %dx.types.ResRet.f32 %3947, 2
  %3951 = extractvalue %dx.types.ResRet.f32 %3947, 3
  %3952 = or i32 %3923, 144
  %3953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3952, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.f32 %3953, 0
  %3955 = extractvalue %dx.types.ResRet.f32 %3953, 1
  %3956 = extractvalue %dx.types.ResRet.f32 %3953, 2
  %3957 = extractvalue %dx.types.ResRet.f32 %3953, 3
  %3958 = or i32 %3923, 160
  %3959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3958, i32 undef)  ; BufferLoad(srv,index,wot)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = extractvalue %dx.types.ResRet.f32 %3959, 1
  %3962 = extractvalue %dx.types.ResRet.f32 %3959, 2
  %3963 = extractvalue %dx.types.ResRet.f32 %3959, 3
  %3964 = or i32 %3923, 192
  %3965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %3966 = extractvalue %dx.types.ResRet.i32 %3965, 0
  %3967 = or i32 %3923, 208
  %3968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3967, i32 undef)  ; BufferLoad(srv,index,wot)
  %3969 = extractvalue %dx.types.ResRet.f32 %3968, 0
  %3970 = or i32 %3923, 248
  %3971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3970, i32 undef)  ; BufferLoad(srv,index,wot)
  %3972 = extractvalue %dx.types.ResRet.f32 %3971, 0
  %3973 = extractvalue %dx.types.ResRet.f32 %3971, 1
  %3974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3975 = extractvalue %dx.types.ResRet.f32 %3974, 0
  %3976 = extractvalue %dx.types.ResRet.f32 %3974, 1
  %3977 = extractvalue %dx.types.ResRet.f32 %3974, 2
  %3978 = extractvalue %dx.types.ResRet.f32 %3974, 3
  %3979 = call float @dx.op.dot4.f32(i32 56, float %3975, float %3976, float %3977, float %3978, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3980 = or i32 %3923, 16
  %3981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3980, i32 undef)  ; BufferLoad(srv,index,wot)
  %3982 = extractvalue %dx.types.ResRet.f32 %3981, 0
  %3983 = extractvalue %dx.types.ResRet.f32 %3981, 1
  %3984 = extractvalue %dx.types.ResRet.f32 %3981, 2
  %3985 = extractvalue %dx.types.ResRet.f32 %3981, 3
  %3986 = call float @dx.op.dot4.f32(i32 56, float %3982, float %3983, float %3984, float %3985, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3987 = or i32 %3923, 32
  %3988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3987, i32 undef)  ; BufferLoad(srv,index,wot)
  %3989 = extractvalue %dx.types.ResRet.f32 %3988, 0
  %3990 = extractvalue %dx.types.ResRet.f32 %3988, 1
  %3991 = extractvalue %dx.types.ResRet.f32 %3988, 2
  %3992 = extractvalue %dx.types.ResRet.f32 %3988, 3
  %3993 = call float @dx.op.dot4.f32(i32 56, float %3989, float %3990, float %3991, float %3992, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3994 = call float @dx.op.unary.f32(i32 27, float %3979)  ; Round_ni(value)
  %3995 = call float @dx.op.unary.f32(i32 6, float %3994)  ; FAbs(value)
  %3996 = call float @dx.op.unary.f32(i32 27, float %3986)  ; Round_ni(value)
  %3997 = call float @dx.op.unary.f32(i32 6, float %3996)  ; FAbs(value)
  %3998 = call float @dx.op.unary.f32(i32 6, float %3993)  ; FAbs(value)
  %3999 = call float @dx.op.unary.f32(i32 27, float %3998)  ; Round_ni(value)
  %4000 = fadd fast float %3997, %3995
  %4001 = fadd fast float %4000, %3999
  %4002 = fcmp fast oeq float %4001, 0.000000e+00
  %4003 = call float @dx.op.dot4.f32(i32 56, float %3975, float %3976, float %3977, float %3978, float %3839, float %3840, float %3841, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4004 = call float @dx.op.dot4.f32(i32 56, float %3982, float %3983, float %3984, float %3985, float %3839, float %3840, float %3841, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4005 = call float @dx.op.dot4.f32(i32 56, float %3975, float %3976, float %3977, float %3978, float %3842, float %3843, float %3844, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4006 = call float @dx.op.dot4.f32(i32 56, float %3982, float %3983, float %3984, float %3985, float %3842, float %3843, float %3844, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4007 = fsub fast float %4003, %3979
  %4008 = fsub fast float %4005, %3979
  %4009 = fsub fast float %4004, %3986
  %4010 = fsub fast float %4006, %3986
  %4011 = call float @dx.op.dot3.f32(i32 55, float %3926, float %3927, float %3928, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 2
  %4014 = fadd fast float %4013, %4011
  %4015 = call float @dx.op.unary.f32(i32 7, float %4014)  ; Saturate(value)
  %4016 = extractvalue %dx.types.CBufRet.f32 %4012, 0
  %4017 = fcmp fast ogt float %4015, %4016
  %4018 = and i1 %4002, %4017
  br i1 %4018, label %4042, label %4019

; <label>:4019                                    ; preds = %4329, %4125, %4042, %3895
  %4020 = phi float [ %3897, %4042 ], [ %4128, %4125 ], [ %4128, %4329 ], [ %3897, %3895 ]
  %4021 = phi float [ %3898, %4042 ], [ %3898, %4125 ], [ %4305, %4329 ], [ %3898, %3895 ]
  %4022 = phi float [ %3899, %4042 ], [ %3899, %4125 ], [ %4303, %4329 ], [ %3899, %3895 ]
  %4023 = phi float [ %3900, %4042 ], [ %3900, %4125 ], [ %4281, %4329 ], [ %3900, %3895 ]
  %4024 = phi float [ %3901, %4042 ], [ %3901, %4125 ], [ %4282, %4329 ], [ %3901, %3895 ]
  %4025 = phi float [ %3902, %4042 ], [ %3902, %4125 ], [ %4283, %4329 ], [ %3902, %3895 ]
  %4026 = phi float [ %3903, %4042 ], [ %3903, %4125 ], [ %4252, %4329 ], [ %3903, %3895 ]
  %4027 = phi float [ %3904, %4042 ], [ %3904, %4125 ], [ %4250, %4329 ], [ %3904, %3895 ]
  %4028 = phi float [ %3905, %4042 ], [ %3905, %4125 ], [ %4339, %4329 ], [ %3905, %3895 ]
  %4029 = phi float [ %3906, %4042 ], [ %3906, %4125 ], [ %4340, %4329 ], [ %3906, %3895 ]
  %4030 = phi float [ %3907, %4042 ], [ %3907, %4125 ], [ %4341, %4329 ], [ %3907, %3895 ]
  %4031 = phi float [ %3908, %4042 ], [ %3908, %4125 ], [ %4231, %4329 ], [ %3908, %3895 ]
  %4032 = phi float [ %3909, %4042 ], [ %3909, %4125 ], [ %4232, %4329 ], [ %3909, %3895 ]
  %4033 = phi float [ %3910, %4042 ], [ %3910, %4125 ], [ %4233, %4329 ], [ %3910, %3895 ]
  %4034 = phi float [ %3911, %4042 ], [ %3911, %4125 ], [ %4261, %4329 ], [ %3911, %3895 ]
  %4035 = phi float [ %3912, %4042 ], [ %3912, %4125 ], [ %4258, %4329 ], [ %3912, %3895 ]
  %4036 = phi float [ %3913, %4042 ], [ %3913, %4125 ], [ %4255, %4329 ], [ %3913, %3895 ]
  %4037 = phi float [ %3914, %4042 ], [ %3914, %4125 ], [ %4248, %4329 ], [ %3914, %3895 ]
  %4038 = phi float [ %3915, %4042 ], [ %3915, %4125 ], [ %4243, %4329 ], [ %3915, %3895 ]
  %4039 = phi float [ %3916, %4042 ], [ %3916, %4125 ], [ %4244, %4329 ], [ %3916, %3895 ]
  %4040 = phi float [ %3917, %4042 ], [ %3917, %4125 ], [ %4245, %4329 ], [ %3917, %3895 ]
  %4041 = icmp eq i32 %3921, 0
  br i1 %4041, label %4342, label %3895

; <label>:4042                                    ; preds = %3895
  %4043 = extractvalue %dx.types.ResRet.f32 %3925, 3
  %4044 = extractvalue %dx.types.ResRet.f32 %3944, 3
  %4045 = extractvalue %dx.types.ResRet.f32 %3944, 1
  %4046 = extractvalue %dx.types.ResRet.f32 %3944, 0
  %4047 = extractvalue %dx.types.ResRet.f32 %3934, 1
  %4048 = extractvalue %dx.types.ResRet.f32 %3934, 0
  %4049 = extractvalue %dx.types.ResRet.i32 %3930, 3
  %4050 = extractvalue %dx.types.ResRet.i32 %3930, 2
  %4051 = bitcast float %4043 to i32
  %4052 = add i32 %4049, 0
  %4053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4052, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4055 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4053, %dx.types.Handle %4054, float %3979, float %3986, float undef, float undef, i32 0, i32 0, i32 undef, float %4007, float %4009, float undef, float %4008, float %4010, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4056 = extractvalue %dx.types.ResRet.f32 %4055, 0
  %4057 = fmul fast float %4056, %4048
  %4058 = fadd fast float %4057, %4047
  %4059 = call float @dx.op.unary.f32(i32 7, float %4058)  ; Saturate(value)
  %4060 = fmul fast float %3979, %3939
  %4061 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %3986, float %4060)  ; FMad(a,b,c)
  %4062 = fadd fast float %4061, %4046
  %4063 = fmul fast float %3979, %3941
  %4064 = call float @dx.op.tertiary.f32(i32 46, float %3942, float %3986, float %4063)  ; FMad(a,b,c)
  %4065 = fadd fast float %4064, %4045
  %4066 = fmul fast float %4007, %3939
  %4067 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %4009, float %4066)  ; FMad(a,b,c)
  %4068 = fmul fast float %4007, %3941
  %4069 = call float @dx.op.tertiary.f32(i32 46, float %3942, float %4009, float %4068)  ; FMad(a,b,c)
  %4070 = fmul fast float %4008, %3939
  %4071 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %4010, float %4070)  ; FMad(a,b,c)
  %4072 = fmul fast float %4008, %3941
  %4073 = call float @dx.op.tertiary.f32(i32 46, float %3942, float %4010, float %4072)  ; FMad(a,b,c)
  %4074 = add i32 %4050, 0
  %4075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4074, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4076 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4075, %dx.types.Handle %4054, float %4062, float %4065, float undef, float undef, i32 0, i32 0, i32 undef, float %4067, float %4069, float undef, float %4071, float %4073, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4077 = extractvalue %dx.types.ResRet.f32 %4076, 0
  %4078 = and i32 %4051, 1024
  %4079 = icmp ne i32 %4078, 0
  %4080 = fcmp fast ogt float %4077, 0x3FE0101020000000
  %4081 = uitofp i1 %4080 to float
  %4082 = select i1 %4079, float %4081, float %4077
  %4083 = and i32 %4051, 8192
  %4084 = icmp ne i32 %4083, 0
  %4085 = select i1 %4084, float %4044, float 1.000000e+00
  %4086 = fmul fast float %3979, 2.000000e+00
  %4087 = fadd fast float %4086, -1.000000e+00
  %4088 = call float @dx.op.unary.f32(i32 6, float %4087)  ; FAbs(value)
  %4089 = fmul fast float %4088, %3972
  %4090 = fsub fast float %4089, %3972
  %4091 = call float @dx.op.unary.f32(i32 7, float %4090)  ; Saturate(value)
  %4092 = fmul fast float %3986, 2.000000e+00
  %4093 = fadd fast float %4092, -1.000000e+00
  %4094 = call float @dx.op.unary.f32(i32 6, float %4093)  ; FAbs(value)
  %4095 = fmul fast float %4094, %3973
  %4096 = fsub fast float %4095, %3973
  %4097 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  %4098 = fmul fast float %3998, %3935
  %4099 = fsub fast float %4098, %3935
  %4100 = call float @dx.op.unary.f32(i32 7, float %4099)  ; Saturate(value)
  %4101 = fmul fast float %4059, %4085
  %4102 = fmul fast float %4101, %4056
  %4103 = fmul fast float %4102, %4091
  %4104 = fmul fast float %4103, %4082
  %4105 = fmul fast float %4104, %4097
  %4106 = fmul fast float %4105, %4100
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 1
  %4109 = extractvalue %dx.types.CBufRet.f32 %4107, 0
  %4110 = fsub fast float %4015, %4109
  %4111 = fmul fast float %4110, %4108
  %4112 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4113 = fmul fast float %4106, %3936
  %4114 = fadd fast float %4106, %3936
  %4115 = fmul fast float %4114, %3945
  %4116 = fsub fast float %4115, %3945
  %4117 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4118 = and i32 %4051, 128
  %4119 = icmp ne i32 %4118, 0
  %4120 = select i1 %4119, float %4117, float %4113
  %4121 = fmul fast float %4120, %4112
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 0
  %4124 = fcmp fast ugt float %4121, %4123
  br i1 %4124, label %4125, label %4019

; <label>:4125                                    ; preds = %4042
  %4126 = select i1 %4084, float %4121, float 0.000000e+00
  %4127 = fadd fast float %4126, %3897
  %4128 = call float @dx.op.unary.f32(i32 7, float %4127)  ; Saturate(value)
  br i1 %4084, label %4019, label %4129

; <label>:4129                                    ; preds = %4125
  %4130 = and i32 %4051, 4
  %4131 = and i32 %4051, 8
  %4132 = add i32 %3931, 0
  %4133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4132, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4135 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4133, %dx.types.Handle %4134, float %4062, float %4065, float undef, float undef, i32 0, i32 0, i32 undef, float %4067, float %4069, float undef, float %4071, float %4073, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4136 = extractvalue %dx.types.ResRet.f32 %4135, 0
  %4137 = extractvalue %dx.types.ResRet.f32 %4135, 1
  %4138 = extractvalue %dx.types.ResRet.f32 %4135, 2
  %4139 = extractvalue %dx.types.ResRet.f32 %4135, 3
  %4140 = bitcast float %3957 to i32
  %4141 = and i32 %4140, 255
  %4142 = uitofp i32 %4141 to float
  %4143 = lshr i32 %4140, 8
  %4144 = and i32 %4143, 255
  %4145 = uitofp i32 %4144 to float
  %4146 = fmul fast float %4139, %4142
  %4147 = fadd fast float %4146, %4145
  %4148 = fmul fast float %4147, 0x3F70101000000000
  %4149 = add i32 %3932, 0
  %4150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4149, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4151 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4150, %dx.types.Handle %4134, float %4062, float %4065, float undef, float undef, i32 0, i32 0, i32 undef, float %4067, float %4069, float undef, float %4071, float %4073, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = extractvalue %dx.types.ResRet.f32 %4151, 1
  %4154 = extractvalue %dx.types.ResRet.f32 %4151, 2
  %4155 = extractvalue %dx.types.ResRet.f32 %4151, 3
  %4156 = bitcast float %3951 to i32
  %4157 = and i32 %4156, 255
  %4158 = uitofp i32 %4157 to float
  %4159 = lshr i32 %4156, 8
  %4160 = and i32 %4159, 255
  %4161 = uitofp i32 %4160 to float
  %4162 = lshr i32 %4156, 16
  %4163 = and i32 %4162, 255
  %4164 = uitofp i32 %4163 to float
  %4165 = fmul fast float %4164, 0x3F70101000000000
  %4166 = fmul fast float %4152, %4158
  %4167 = fadd fast float %4166, %4161
  %4168 = fmul fast float %4167, 0x3F70101000000000
  %4169 = fadd fast float %4153, -5.000000e-01
  %4170 = fadd fast float %4155, -5.000000e-01
  %4171 = fmul fast float %4169, %4165
  %4172 = fmul fast float %4170, %4165
  %4173 = fadd fast float %4171, 5.000000e-01
  %4174 = fadd fast float %4172, 5.000000e-01
  %4175 = fmul fast float %4136, %3960
  %4176 = fmul fast float %4137, %3961
  %4177 = fmul fast float %4138, %3962
  %4178 = fmul fast float %4173, 2.000000e+00
  %4179 = fadd fast float %4178, -1.000000e+00
  %4180 = fmul fast float %4174, 2.000000e+00
  %4181 = fadd fast float %4180, -1.000000e+00
  %4182 = fadd fast float %4179, %4181
  %4183 = fmul fast float %4182, 5.000000e-01
  %4184 = fsub fast float %4179, %4181
  %4185 = fmul fast float %4184, 5.000000e-01
  %4186 = call float @dx.op.unary.f32(i32 6, float %4183)  ; FAbs(value)
  %4187 = fsub fast float 1.000000e+00, %4186
  %4188 = call float @dx.op.unary.f32(i32 6, float %4185)  ; FAbs(value)
  %4189 = fsub fast float %4187, %4188
  %4190 = call float @dx.op.dot3.f32(i32 55, float %4183, float %4185, float %4189, float %4183, float %4185, float %4189)  ; Dot3(ax,ay,az,bx,by,bz)
  %4191 = call float @dx.op.unary.f32(i32 25, float %4190)  ; Rsqrt(value)
  %4192 = fmul fast float %4183, %4191
  %4193 = fmul fast float %4185, %4191
  %4194 = fmul fast float %4191, %4189
  %4195 = fmul fast float %4194, %3926
  %4196 = fmul fast float %4194, %3927
  %4197 = fmul fast float %4194, %3928
  %4198 = fmul fast float %4192, %3948
  %4199 = fmul fast float %4192, %3949
  %4200 = fmul fast float %4192, %3950
  %4201 = fadd fast float %4198, %4195
  %4202 = fadd fast float %4199, %4196
  %4203 = fadd fast float %4200, %4197
  %4204 = fmul fast float %4193, %3954
  %4205 = fmul fast float %4193, %3955
  %4206 = fmul fast float %4193, %3956
  %4207 = fadd fast float %4201, %4204
  %4208 = fadd fast float %4202, %4205
  %4209 = fadd fast float %4203, %4206
  %4210 = call float @dx.op.dot3.f32(i32 55, float %4207, float %4208, float %4209, float %4207, float %4208, float %4209)  ; Dot3(ax,ay,az,bx,by,bz)
  %4211 = call float @dx.op.unary.f32(i32 25, float %4210)  ; Rsqrt(value)
  %4212 = fmul fast float %4207, %4211
  %4213 = fmul fast float %4208, %4211
  %4214 = fmul fast float %4209, %4211
  %4215 = icmp ne i32 %4131, 0
  %4216 = select i1 %4215, float 1.000000e+00, float 0.000000e+00
  %4217 = fmul fast float %4121, %4216
  %4218 = and i32 %4051, 1
  %4219 = icmp eq i32 %4218, 0
  br i1 %4219, label %4220, label %4224

; <label>:4220                                    ; preds = %4129
  %4221 = fsub fast float %4212, %3908
  %4222 = fsub fast float %4213, %3909
  %4223 = fsub fast float %4214, %3910
  br label %4224

; <label>:4224                                    ; preds = %4220, %4129
  %4225 = phi float [ %4221, %4220 ], [ %4212, %4129 ]
  %4226 = phi float [ %4222, %4220 ], [ %4213, %4129 ]
  %4227 = phi float [ %4223, %4220 ], [ %4214, %4129 ]
  %4228 = fmul float %4227, %4217
  %4229 = fmul float %4226, %4217
  %4230 = fmul float %4225, %4217
  %4231 = fadd fast float %4230, %3908
  %4232 = fadd fast float %4229, %3909
  %4233 = fadd fast float %4228, %3910
  %4234 = icmp ne i32 %4130, 0
  %4235 = select i1 %4234, float 1.000000e+00, float 0.000000e+00
  %4236 = fmul fast float %4121, %4235
  %4237 = fsub fast float %4175, %3915
  %4238 = fsub fast float %4176, %3916
  %4239 = fsub fast float %4177, %3917
  %4240 = fmul fast float %4237, %4236
  %4241 = fmul fast float %4238, %4236
  %4242 = fmul fast float %4239, %4236
  %4243 = fadd fast float %4240, %3915
  %4244 = fadd fast float %4241, %3916
  %4245 = fadd fast float %4242, %3917
  %4246 = fsub fast float %4148, %3914
  %4247 = fmul fast float %4246, %4236
  %4248 = fadd fast float %4247, %3914
  %4249 = fmul fast float %4236, %3904
  %4250 = fsub fast float %3904, %4249
  %4251 = fmul fast float %4236, %3903
  %4252 = fsub fast float %3903, %4251
  %4253 = bitcast float %3969 to i32
  %4254 = fadd fast float %4121, %3913
  %4255 = call float @dx.op.unary.f32(i32 7, float %4254)  ; Saturate(value)
  %4256 = fsub fast float %4168, %3912
  %4257 = fmul fast float %4256, %4217
  %4258 = fadd fast float %4257, %3912
  %4259 = fsub fast float %4154, %3911
  %4260 = fmul fast float %4259, %4217
  %4261 = fadd fast float %4260, %3911
  br i1 %4219, label %4270, label %4262

; <label>:4262                                    ; preds = %4224
  %4263 = and i32 %4051, 32768
  %4264 = icmp eq i32 %4263, 0
  br i1 %4264, label %4280, label %4265

; <label>:4265                                    ; preds = %4262
  %4266 = fmul fast float %4217, 1.270000e+02
  %4267 = fadd fast float %4266, %3900
  %4268 = fadd fast float %4266, %3901
  %4269 = fadd fast float %4266, %3902
  br label %4280

; <label>:4270                                    ; preds = %4224
  %4271 = fsub fast float 1.270000e+02, %3900
  %4272 = fsub fast float 1.270000e+02, %3901
  %4273 = fsub fast float 1.270000e+02, %3902
  %4274 = fmul fast float %4217, %4271
  %4275 = fmul fast float %4217, %4272
  %4276 = fmul fast float %4217, %4273
  %4277 = fadd fast float %4274, %3900
  %4278 = fadd fast float %4275, %3901
  %4279 = fadd fast float %4276, %3902
  br label %4280

; <label>:4280                                    ; preds = %4270, %4265, %4262
  %4281 = phi float [ %4267, %4265 ], [ %3900, %4262 ], [ %4277, %4270 ]
  %4282 = phi float [ %4268, %4265 ], [ %3901, %4262 ], [ %4278, %4270 ]
  %4283 = phi float [ %4269, %4265 ], [ %3902, %4262 ], [ %4279, %4270 ]
  %4284 = call float @dx.op.dot3.f32(i32 55, float %4175, float %4176, float %4177, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.f32 %4285, 0
  %4287 = extractvalue %dx.types.CBufRet.f32 %4285, 1
  %4288 = fmul fast float %4287, %4284
  %4289 = fadd fast float %4288, %4286
  %4290 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4291 = bitcast float %3963 to i32
  %4292 = and i32 %4291, 65535
  %4293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4292)  ; LegacyF16ToF32(value)
  %4294 = lshr i32 %4291, 16
  %4295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4294)  ; LegacyF16ToF32(value)
  %4296 = fcmp fast oge float %4293, 0.000000e+00
  %4297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.f32 %4297, 0
  %4299 = select i1 %4296, float %4293, float %4298
  %4300 = fadd fast float %4299, %4295
  %4301 = fsub fast float %4290, %3899
  %4302 = fmul fast float %4301, %4121
  %4303 = fadd fast float %4302, %3899
  %4304 = fmul fast float %4300, %4121
  %4305 = call float @dx.op.binary.f32(i32 35, float %3898, float %4304)  ; FMax(a,b)
  %4306 = and i32 %4051, 16
  %4307 = icmp eq i32 %4306, 0
  br i1 %4307, label %4329, label %4308

; <label>:4308                                    ; preds = %4280
  %4309 = add i32 %3966, 0
  %4310 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4309, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4311 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4310, %dx.types.Handle %4134, float %4062, float %4065, float undef, float undef, i32 0, i32 0, i32 undef, float %4067, float %4069, float undef, float %4071, float %4073, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4312 = extractvalue %dx.types.ResRet.f32 %4311, 0
  %4313 = extractvalue %dx.types.ResRet.f32 %4311, 1
  %4314 = extractvalue %dx.types.ResRet.f32 %4311, 2
  %4315 = and i32 %4253, 65535
  %4316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4315)  ; LegacyF16ToF32(value)
  %4317 = fmul fast float %4312, %3960
  %4318 = fmul fast float %4313, %3961
  %4319 = fmul fast float %4314, %3962
  %4320 = and i32 %4051, 16384
  %4321 = icmp ne i32 %4320, 0
  %4322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.f32 %4322, 0
  %4324 = select i1 %4321, float %4323, float 1.000000e+00
  %4325 = fmul fast float %4324, %4316
  %4326 = fmul fast float %4317, %4325
  %4327 = fmul fast float %4318, %4325
  %4328 = fmul fast float %4319, %4325
  br label %4329

; <label>:4329                                    ; preds = %4308, %4280
  %4330 = phi float [ %4326, %4308 ], [ 0.000000e+00, %4280 ]
  %4331 = phi float [ %4327, %4308 ], [ 0.000000e+00, %4280 ]
  %4332 = phi float [ %4328, %4308 ], [ 0.000000e+00, %4280 ]
  %4333 = fsub fast float %4330, %3905
  %4334 = fsub fast float %4331, %3906
  %4335 = fsub fast float %4332, %3907
  %4336 = fmul fast float %4333, %4121
  %4337 = fmul fast float %4334, %4121
  %4338 = fmul fast float %4335, %4121
  %4339 = fadd fast float %4336, %3905
  %4340 = fadd fast float %4337, %3906
  %4341 = fadd fast float %4338, %3907
  br label %4019

; <label>:4342                                    ; preds = %4019
  br label %4343

; <label>:4343                                    ; preds = %4342, %3832
  %4344 = phi float [ 0.000000e+00, %3832 ], [ %4020, %4342 ]
  %4345 = phi float [ %3802, %3832 ], [ %4021, %4342 ]
  %4346 = phi float [ %3800, %3832 ], [ %4022, %4342 ]
  %4347 = phi float [ %3793, %3832 ], [ %4023, %4342 ]
  %4348 = phi float [ %3794, %3832 ], [ %4024, %4342 ]
  %4349 = phi float [ %3795, %3832 ], [ %4025, %4342 ]
  %4350 = phi float [ 0.000000e+00, %3832 ], [ %4026, %4342 ]
  %4351 = phi float [ 0.000000e+00, %3832 ], [ %4027, %4342 ]
  %4352 = phi float [ %3790, %3832 ], [ %4028, %4342 ]
  %4353 = phi float [ %3791, %3832 ], [ %4029, %4342 ]
  %4354 = phi float [ %3792, %3832 ], [ %4030, %4342 ]
  %4355 = phi float [ %3828, %3832 ], [ %4031, %4342 ]
  %4356 = phi float [ %3829, %3832 ], [ %4032, %4342 ]
  %4357 = phi float [ %3830, %3832 ], [ %4033, %4342 ]
  %4358 = phi float [ %3798, %3832 ], [ %4034, %4342 ]
  %4359 = phi float [ %3797, %3832 ], [ %4035, %4342 ]
  %4360 = phi float [ 0.000000e+00, %3832 ], [ %4036, %4342 ]
  %4361 = phi float [ %3796, %3832 ], [ %4037, %4342 ]
  %4362 = phi float [ %3787, %3832 ], [ %4038, %4342 ]
  %4363 = phi float [ %3788, %3832 ], [ %4039, %4342 ]
  %4364 = phi float [ %3789, %3832 ], [ %4040, %4342 ]
  %4365 = call float @dx.op.dot3.f32(i32 55, float %4355, float %4356, float %4357, float %4355, float %4356, float %4357)  ; Dot3(ax,ay,az,bx,by,bz)
  %4366 = call float @dx.op.unary.f32(i32 25, float %4365)  ; Rsqrt(value)
  %4367 = fmul fast float %4366, %4355
  %4368 = fmul fast float %4366, %4356
  %4369 = fmul fast float %4366, %4357
  %4370 = fadd fast float %4360, %1132
  %4371 = call float @dx.op.unary.f32(i32 7, float %4370)  ; Saturate(value)
  %4372 = call float @dx.op.dot3.f32(i32 55, float %4367, float %4368, float %4369, float %4367, float %4368, float %4369)  ; Dot3(ax,ay,az,bx,by,bz)
  %4373 = call float @dx.op.unary.f32(i32 25, float %4372)  ; Rsqrt(value)
  %4374 = fmul fast float %4373, %4367
  %4375 = fmul fast float %4373, %4368
  %4376 = fmul fast float %4373, %4369
  br label %4377

; <label>:4377                                    ; preds = %4343, %3784
  %4378 = phi float [ %4374, %4343 ], [ %3828, %3784 ]
  %4379 = phi float [ %4375, %4343 ], [ %3829, %3784 ]
  %4380 = phi float [ %4376, %4343 ], [ %3830, %3784 ]
  %4381 = phi float [ %4362, %4343 ], [ %3787, %3784 ]
  %4382 = phi float [ %4363, %4343 ], [ %3788, %3784 ]
  %4383 = phi float [ %4364, %4343 ], [ %3789, %3784 ]
  %4384 = phi float [ %4352, %4343 ], [ %3790, %3784 ]
  %4385 = phi float [ %4353, %4343 ], [ %3791, %3784 ]
  %4386 = phi float [ %4354, %4343 ], [ %3792, %3784 ]
  %4387 = phi float [ %4347, %4343 ], [ %3793, %3784 ]
  %4388 = phi float [ %4348, %4343 ], [ %3794, %3784 ]
  %4389 = phi float [ %4349, %4343 ], [ %3795, %3784 ]
  %4390 = phi float [ %4361, %4343 ], [ %3796, %3784 ]
  %4391 = phi float [ %4371, %4343 ], [ %1132, %3784 ]
  %4392 = phi float [ %4359, %4343 ], [ %3797, %3784 ]
  %4393 = phi float [ %4358, %4343 ], [ %3798, %3784 ]
  %4394 = phi float [ %4351, %4343 ], [ 0.000000e+00, %3784 ]
  %4395 = phi float [ %4350, %4343 ], [ 0.000000e+00, %3784 ]
  %4396 = phi float [ %4344, %4343 ], [ 0.000000e+00, %3784 ]
  %4397 = phi float [ %4345, %4343 ], [ %3802, %3784 ]
  %4398 = phi float [ %4346, %4343 ], [ %3800, %3784 ]
  %4399 = fadd fast float %4390, 0xBFB99999A0000000
  %4400 = call float @dx.op.unary.f32(i32 7, float %4399)  ; Saturate(value)
  %4401 = fmul fast float %4400, 0x3FF1C71C80000000
  %4402 = call float @dx.op.binary.f32(i32 36, float %4390, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4403 = fsub fast float 1.000000e+00, %4401
  %4404 = call float @dx.op.unary.f32(i32 7, float %4403)  ; Saturate(value)
  %4405 = fmul fast float %4404, %4381
  %4406 = fmul fast float %4404, %4382
  %4407 = fmul fast float %4404, %4383
  %4408 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4409 = call float @dx.op.unary.f32(i32 7, float %4406)  ; Saturate(value)
  %4410 = call float @dx.op.unary.f32(i32 7, float %4407)  ; Saturate(value)
  %4411 = fmul fast float %4401, %4381
  %4412 = fmul fast float %4401, %4382
  %4413 = fmul fast float %4401, %4383
  %4414 = fadd fast float %4411, %4402
  %4415 = fadd fast float %4412, %4402
  %4416 = fadd fast float %4413, %4402
  %4417 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4418 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4419 = call float @dx.op.unary.f32(i32 7, float %4416)  ; Saturate(value)
  %4420 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4421 = call float @dx.op.binary.f32(i32 36, float %4387, float 1.270000e+02)  ; FMin(a,b)
  %4422 = call float @dx.op.binary.f32(i32 36, float %4388, float 1.270000e+02)  ; FMin(a,b)
  %4423 = call float @dx.op.binary.f32(i32 36, float %4389, float 1.270000e+02)  ; FMin(a,b)
  %4424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4425 = extractvalue %dx.types.CBufRet.i32 %4424, 3
  %4426 = and i32 %4425, 8
  %4427 = icmp ne i32 %4426, 0
  %4428 = call float @dx.op.binary.f32(i32 35, float %4408, float %4381)  ; FMax(a,b)
  %4429 = call float @dx.op.binary.f32(i32 35, float %4409, float %4381)  ; FMax(a,b)
  %4430 = call float @dx.op.binary.f32(i32 35, float %4410, float %4381)  ; FMax(a,b)
  %4431 = call float @dx.op.dot3.f32(i32 55, float %4408, float %4409, float %4410, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4432 = select i1 %250, float %4381, float %4408
  %4433 = select i1 %250, float %4431, float %4409
  %4434 = select i1 %250, float 1.000000e+00, float %4410
  %4435 = select i1 %4427, float %4428, float %4432
  %4436 = select i1 %4427, float %4429, float %4433
  %4437 = select i1 %4427, float %4430, float %4434
  %4438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.f32 %4438, 0
  %4440 = extractvalue %dx.types.CBufRet.f32 %4438, 1
  %4441 = extractvalue %dx.types.CBufRet.f32 %4438, 2
  %4442 = fadd fast float %4439, %191
  %4443 = fadd fast float %4440, %192
  %4444 = fadd fast float %4441, %193
  %4445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4446 = extractvalue %dx.types.CBufRet.f32 %4445, 0
  %4447 = extractvalue %dx.types.CBufRet.f32 %4445, 1
  %4448 = fsub fast float %4442, %4446
  %4449 = fsub fast float %4443, %4447
  %4450 = fmul fast float %4448, %4448
  %4451 = fmul fast float %4449, %4449
  %4452 = fadd fast float %4450, %4451
  %4453 = call float @dx.op.unary.f32(i32 24, float %4452)  ; Sqrt(value)
  %4454 = extractvalue %dx.types.CBufRet.f32 %4445, 2
  %4455 = fcmp fast olt float %4453, %4454
  br i1 %4455, label %4456, label %4523

; <label>:4456                                    ; preds = %4377
  %4457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4458 = extractvalue %dx.types.CBufRet.f32 %4457, 0
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 0
  %4461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4462 = extractvalue %dx.types.CBufRet.f32 %4461, 0
  %4463 = extractvalue %dx.types.CBufRet.f32 %4457, 1
  %4464 = extractvalue %dx.types.CBufRet.f32 %4459, 1
  %4465 = extractvalue %dx.types.CBufRet.f32 %4461, 1
  %4466 = extractvalue %dx.types.CBufRet.f32 %4457, 3
  %4467 = extractvalue %dx.types.CBufRet.f32 %4459, 3
  %4468 = extractvalue %dx.types.CBufRet.f32 %4461, 3
  %4469 = fadd fast float %4466, %4442
  %4470 = fadd fast float %4467, %4443
  %4471 = fadd fast float %4468, %4444
  %4472 = fmul fast float %4469, %4458
  %4473 = call float @dx.op.tertiary.f32(i32 46, float %4470, float %4460, float %4472)  ; FMad(a,b,c)
  %4474 = call float @dx.op.tertiary.f32(i32 46, float %4471, float %4462, float %4473)  ; FMad(a,b,c)
  %4475 = fmul fast float %4469, %4463
  %4476 = call float @dx.op.tertiary.f32(i32 46, float %4470, float %4464, float %4475)  ; FMad(a,b,c)
  %4477 = call float @dx.op.tertiary.f32(i32 46, float %4471, float %4465, float %4476)  ; FMad(a,b,c)
  %4478 = fsub fast float %4474, %4466
  %4479 = fsub fast float %4477, %4467
  %4480 = fsub fast float %4478, %4446
  %4481 = fadd fast float %4480, %4454
  %4482 = fsub fast float %4479, %4447
  %4483 = fadd fast float %4482, %4454
  %4484 = extractvalue %dx.types.CBufRet.f32 %4445, 3
  %4485 = fmul fast float %4481, %4484
  %4486 = fmul fast float %4483, %4484
  %4487 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4488 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4489 = fsub fast float 1.000000e+00, %4487
  %4490 = fsub fast float 1.000000e+00, %4488
  %4491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %4489, float %4490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4492 = extractvalue %dx.types.ResRet.f32 %4491, 0
  %4493 = fcmp fast ugt float %4492, 0.000000e+00
  br i1 %4493, label %4494, label %4797

; <label>:4494                                    ; preds = %4456
  %4495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.f32 %4495, 2
  %4497 = fmul fast float %4496, %4492
  %4498 = extractvalue %dx.types.CBufRet.f32 %4495, 3
  %4499 = fadd fast float %4498, %4497
  %4500 = extractvalue %dx.types.CBufRet.f32 %4461, 2
  %4501 = fadd fast float %4499, %4468
  %4502 = fmul fast float %4474, %4462
  %4503 = call float @dx.op.tertiary.f32(i32 46, float %4477, float %4465, float %4502)  ; FMad(a,b,c)
  %4504 = call float @dx.op.tertiary.f32(i32 46, float %4501, float %4500, float %4503)  ; FMad(a,b,c)
  %4505 = fsub fast float %4504, %4468
  %4506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4507 = extractvalue %dx.types.CBufRet.f32 %4506, 2
  %4508 = fsub fast float %4505, %4507
  %4509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4489, float %4490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4510 = extractvalue %dx.types.ResRet.f32 %4509, 0
  %4511 = extractvalue %dx.types.ResRet.f32 %4509, 1
  %4512 = extractvalue %dx.types.ResRet.f32 %4509, 2
  %4513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4489, float %4490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4514 = extractvalue %dx.types.ResRet.f32 %4513, 0
  %4515 = extractvalue %dx.types.ResRet.f32 %4513, 1
  %4516 = extractvalue %dx.types.ResRet.f32 %4513, 2
  %4517 = fadd fast float %4514, %4510
  %4518 = fmul fast float %4517, 0x3F847AE140000000
  %4519 = fadd fast float %4515, %4511
  %4520 = fmul fast float %4519, 0x3F847AE140000000
  %4521 = fadd fast float %4516, %4512
  %4522 = fmul fast float %4521, 0x3F847AE140000000
  br label %4797

; <label>:4523                                    ; preds = %4377
  %4524 = and i32 %229, 1
  %4525 = icmp eq i32 %4524, 0
  br i1 %4525, label %4797, label %4526

; <label>:4526                                    ; preds = %4523
  %4527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.f32 %4527, 0
  %4529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4530 = extractvalue %dx.types.CBufRet.f32 %4529, 0
  %4531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.f32 %4531, 0
  %4533 = extractvalue %dx.types.CBufRet.f32 %4527, 1
  %4534 = extractvalue %dx.types.CBufRet.f32 %4529, 1
  %4535 = extractvalue %dx.types.CBufRet.f32 %4531, 1
  %4536 = extractvalue %dx.types.CBufRet.f32 %4527, 3
  %4537 = extractvalue %dx.types.CBufRet.f32 %4529, 3
  %4538 = extractvalue %dx.types.CBufRet.f32 %4531, 3
  %4539 = fadd fast float %4536, %4442
  %4540 = fadd fast float %4537, %4443
  %4541 = fadd fast float %4538, %4444
  %4542 = fmul fast float %4539, %4528
  %4543 = call float @dx.op.tertiary.f32(i32 46, float %4540, float %4530, float %4542)  ; FMad(a,b,c)
  %4544 = call float @dx.op.tertiary.f32(i32 46, float %4541, float %4532, float %4543)  ; FMad(a,b,c)
  %4545 = fmul fast float %4539, %4533
  %4546 = call float @dx.op.tertiary.f32(i32 46, float %4540, float %4534, float %4545)  ; FMad(a,b,c)
  %4547 = call float @dx.op.tertiary.f32(i32 46, float %4541, float %4535, float %4546)  ; FMad(a,b,c)
  %4548 = fsub fast float %4544, %4536
  %4549 = fsub fast float %4547, %4537
  %4550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4551 = extractvalue %dx.types.CBufRet.f32 %4550, 0
  %4552 = extractvalue %dx.types.CBufRet.f32 %4550, 1
  %4553 = extractvalue %dx.types.CBufRet.f32 %4550, 2
  %4554 = extractvalue %dx.types.CBufRet.f32 %4550, 3
  %4555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4556 = extractvalue %dx.types.CBufRet.f32 %4555, 3
  %4557 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4558 = extractvalue %dx.types.CBufRet.i32 %4557, 0
  %4559 = extractvalue %dx.types.CBufRet.i32 %4557, 1
  %4560 = udiv i32 %4559, %4558
  %4561 = fsub fast float %4548, %4551
  %4562 = fsub fast float %4549, %4552
  %4563 = call float @dx.op.binary.f32(i32 35, float %4561, float 0.000000e+00)  ; FMax(a,b)
  %4564 = call float @dx.op.binary.f32(i32 35, float %4562, float 0.000000e+00)  ; FMax(a,b)
  %4565 = call float @dx.op.binary.f32(i32 36, float %4563, float %4553)  ; FMin(a,b)
  %4566 = call float @dx.op.binary.f32(i32 36, float %4564, float %4554)  ; FMin(a,b)
  %4567 = add i32 %4558, -1
  %4568 = add i32 %4560, -1
  %4569 = fmul fast float %4565, %4556
  %4570 = fmul fast float %4566, %4556
  %4571 = fptoui float %4569 to i32
  %4572 = fptoui float %4570 to i32
  %4573 = call i32 @dx.op.binary.i32(i32 40, i32 %4571, i32 %4567)  ; UMin(a,b)
  %4574 = call i32 @dx.op.binary.i32(i32 40, i32 %4572, i32 %4568)  ; UMin(a,b)
  %4575 = mul i32 %4574, %4558
  %4576 = add i32 %4575, %4573
  %4577 = shl i32 %4576, 2
  %4578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4577, i32 undef)  ; BufferLoad(srv,index,wot)
  %4579 = extractvalue %dx.types.ResRet.i32 %4578, 0
  %4580 = icmp eq i32 %4579, -1
  br i1 %4580, label %4797, label %4581

; <label>:4581                                    ; preds = %4526
  %4582 = mul i32 %4579, 148
  %4583 = add i32 %4582, 4
  %4584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4585 = extractvalue %dx.types.ResRet.f32 %4584, 0
  %4586 = add i32 %4582, 8
  %4587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4586, i32 undef)  ; BufferLoad(srv,index,wot)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4589 = add i32 %4582, 36
  %4590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4589, i32 undef)  ; BufferLoad(srv,index,wot)
  %4591 = extractvalue %dx.types.ResRet.f32 %4590, 0
  %4592 = add i32 %4582, 60
  %4593 = add i32 %4582, 92
  %4594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4593, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.i32 %4594, 0
  %4596 = add i32 %4582, 116
  %4597 = fsub fast float %4548, %4585
  %4598 = fsub fast float %4549, %4588
  %4599 = fmul fast float %4556, %4597
  %4600 = fmul fast float %4556, %4598
  %4601 = call float @dx.op.unary.f32(i32 7, float %4599)  ; Saturate(value)
  %4602 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  %4603 = fsub fast float 1.000000e+00, %4602
  %4604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4605 = extractvalue %dx.types.CBufRet.f32 %4604, 2
  %4606 = call float @dx.op.unary.f32(i32 83, float %4601)  ; DerivCoarseX(value)
  %4607 = call float @dx.op.unary.f32(i32 83, float %4603)  ; DerivCoarseX(value)
  %4608 = call float @dx.op.unary.f32(i32 84, float %4601)  ; DerivCoarseY(value)
  %4609 = call float @dx.op.unary.f32(i32 84, float %4603)  ; DerivCoarseY(value)
  %4610 = fmul fast float %4606, %4605
  %4611 = fmul fast float %4607, %4605
  %4612 = fmul fast float %4608, %4605
  %4613 = fmul fast float %4609, %4605
  %4614 = call float @dx.op.dot2.f32(i32 54, float %4612, float %4613, float %4612, float %4613)  ; Dot2(ax,ay,bx,by)
  %4615 = call float @dx.op.dot2.f32(i32 54, float %4610, float %4611, float %4610, float %4611)  ; Dot2(ax,ay,bx,by)
  %4616 = call float @dx.op.binary.f32(i32 35, float %4615, float %4614)  ; FMax(a,b)
  %4617 = call float @dx.op.unary.f32(i32 23, float %4616)  ; Log(value)
  %4618 = fmul fast float %4617, 5.000000e-01
  %4619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.f32 %4619, 1
  %4621 = fadd fast float %4620, %4618
  %4622 = call float @dx.op.binary.f32(i32 35, float %4621, float 0.000000e+00)  ; FMax(a,b)
  %4623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4624 = extractvalue %dx.types.CBufRet.f32 %4623, 3
  %4625 = fadd fast float %4624, %4622
  %4626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4627 = extractvalue %dx.types.CBufRet.f32 %4626, 3
  %4628 = fadd fast float %4625, %4627
  %4629 = add i32 %4595, 0
  %4630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4629, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4631 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4630, i32 0)  ; GetDimensions(handle,mipLevel)
  %4632 = extractvalue %dx.types.Dimensions %4631, 0
  %4633 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4632)  ; FirstbitLo(value)
  %4634 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4635 = extractvalue %dx.types.CBufRet.i32 %4634, 1
  %4636 = sub nsw i32 %4635, %4633
  %4637 = sitofp i32 %4636 to float
  %4638 = fsub fast float %4628, %4637
  %4639 = call float @dx.op.binary.f32(i32 35, float %4638, float 0.000000e+00)  ; FMax(a,b)
  %4640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4630, %dx.types.Handle %46, float %4601, float %4603, float %4591, float undef, i32 0, i32 0, i32 undef, float %4639)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4641 = extractvalue %dx.types.ResRet.f32 %4640, 0
  %4642 = fcmp ule float %4641, 0x3FE0101020000000
  %4643 = extractvalue %dx.types.CBufRet.i32 %4634, 0
  %4644 = and i32 %4643, 128
  %4645 = icmp ne i32 %4644, 0
  %4646 = and i1 %4642, %4645
  br i1 %4646, label %4797, label %4647

; <label>:4647                                    ; preds = %4581
  %4648 = add i32 %4582, 20
  %4649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4648, i32 undef)  ; BufferLoad(srv,index,wot)
  %4650 = extractvalue %dx.types.ResRet.f32 %4649, 0
  %4651 = add i32 %4582, 24
  %4652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4651, i32 undef)  ; BufferLoad(srv,index,wot)
  %4653 = extractvalue %dx.types.ResRet.f32 %4652, 0
  %4654 = add i32 %4582, 40
  %4655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4654, i32 undef)  ; BufferLoad(srv,index,wot)
  %4656 = extractvalue %dx.types.ResRet.f32 %4655, 0
  %4657 = add i32 %4582, 96
  %4658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4657, i32 undef)  ; BufferLoad(srv,index,wot)
  %4659 = extractvalue %dx.types.ResRet.i32 %4658, 0
  %4660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4661 = extractvalue %dx.types.CBufRet.f32 %4660, 2
  %4662 = fmul fast float %4661, %4601
  %4663 = fmul fast float %4661, %4603
  %4664 = extractvalue %dx.types.CBufRet.f32 %4660, 3
  %4665 = fadd fast float %4662, %4664
  %4666 = fadd fast float %4663, %4664
  %4667 = add i32 %4659, 0
  %4668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4667, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4669 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4668, i32 0)  ; GetDimensions(handle,mipLevel)
  %4670 = extractvalue %dx.types.Dimensions %4669, 0
  %4671 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4670)  ; FirstbitLo(value)
  %4672 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4673 = extractvalue %dx.types.CBufRet.i32 %4672, 1
  %4674 = sub nsw i32 %4673, %4671
  %4675 = sitofp i32 %4674 to float
  %4676 = fsub fast float %4625, %4675
  %4677 = call float @dx.op.binary.f32(i32 35, float %4676, float 0.000000e+00)  ; FMax(a,b)
  %4678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4668, %dx.types.Handle %46, float %4665, float %4666, float %4656, float undef, i32 0, i32 0, i32 undef, float %4677)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4679 = extractvalue %dx.types.ResRet.f32 %4678, 0
  %4680 = fmul fast float %4679, %4650
  %4681 = fadd fast float %4680, %4653
  %4682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4683 = extractvalue %dx.types.CBufRet.f32 %4682, 0
  %4684 = extractvalue %dx.types.CBufRet.f32 %4682, 1
  %4685 = extractvalue %dx.types.CBufRet.f32 %4682, 2
  %4686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4687 = extractvalue %dx.types.CBufRet.f32 %4686, 3
  %4688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4689 = extractvalue %dx.types.CBufRet.f32 %4688, 3
  %4690 = extractvalue %dx.types.CBufRet.f32 %4682, 3
  %4691 = fadd fast float %4687, %4548
  %4692 = fadd fast float %4689, %4549
  %4693 = fadd fast float %4681, %4690
  %4694 = fmul fast float %4691, %4683
  %4695 = call float @dx.op.tertiary.f32(i32 46, float %4692, float %4684, float %4694)  ; FMad(a,b,c)
  %4696 = call float @dx.op.tertiary.f32(i32 46, float %4693, float %4685, float %4695)  ; FMad(a,b,c)
  %4697 = fsub fast float %4696, %4690
  %4698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.f32 %4698, 2
  %4700 = fsub fast float %4697, %4699
  %4701 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.i32 %4701, 0
  %4703 = call i32 @dx.op.binary.i32(i32 40, i32 %4579, i32 %4702)  ; UMin(a,b)
  %4704 = mul i32 %4703, 36
  %4705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4704, i32 undef)  ; BufferLoad(srv,index,wot)
  %4706 = extractvalue %dx.types.ResRet.i32 %4705, 0
  %4707 = add i32 %4704, 4
  %4708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.f32 %4708, 0
  %4710 = fmul fast float %4709, %4601
  %4711 = fmul fast float %4709, %4603
  %4712 = extractvalue %dx.types.CBufRet.f32 %4708, 1
  %4713 = fadd fast float %4710, %4712
  %4714 = fadd fast float %4711, %4712
  %4715 = icmp eq i32 %4706, 0
  br i1 %4715, label %4784, label %4716

; <label>:4716                                    ; preds = %4647
  br label %4717

; <label>:4717                                    ; preds = %4774, %4716
  %4718 = phi float [ %4775, %4774 ], [ 0.000000e+00, %4716 ]
  %4719 = phi float [ %4776, %4774 ], [ 0.000000e+00, %4716 ]
  %4720 = phi float [ %4777, %4774 ], [ 0.000000e+00, %4716 ]
  %4721 = phi float [ %4778, %4774 ], [ 0.000000e+00, %4716 ]
  %4722 = phi float [ %4779, %4774 ], [ 0.000000e+00, %4716 ]
  %4723 = phi float [ %4780, %4774 ], [ 0.000000e+00, %4716 ]
  %4724 = phi i32 [ %4781, %4774 ], [ 0, %4716 ]
  %4725 = shl i32 %4724, 2
  %4726 = add i32 %4592, %4725
  %4727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4726, i32 undef)  ; BufferLoad(srv,index,wot)
  %4728 = extractvalue %dx.types.ResRet.f32 %4727, 0
  %4729 = add i32 %4596, %4725
  %4730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4729, i32 undef)  ; BufferLoad(srv,index,wot)
  %4731 = extractvalue %dx.types.ResRet.i32 %4730, 0
  %4732 = add i32 %4731, 0
  %4733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4732, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4734 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4733, i32 0)  ; GetDimensions(handle,mipLevel)
  %4735 = extractvalue %dx.types.Dimensions %4734, 0
  %4736 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4735)  ; FirstbitLo(value)
  %4737 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4738 = extractvalue %dx.types.CBufRet.i32 %4737, 1
  %4739 = sub nsw i32 %4738, %4736
  %4740 = sitofp i32 %4739 to float
  %4741 = fsub fast float %4625, %4740
  %4742 = call float @dx.op.binary.f32(i32 35, float %4741, float 0.000000e+00)  ; FMax(a,b)
  %4743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4733, %dx.types.Handle %46, float %4713, float %4714, float %4728, float undef, i32 0, i32 0, i32 undef, float %4742)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4744 = extractvalue %dx.types.ResRet.f32 %4743, 0
  %4745 = fcmp fast ogt float %4744, 0.000000e+00
  br i1 %4745, label %4746, label %4774

; <label>:4746                                    ; preds = %4717
  %4747 = add i32 %4707, %4725
  %4748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4747, i32 undef)  ; BufferLoad(srv,index,wot)
  %4749 = extractvalue %dx.types.ResRet.i32 %4748, 0
  %4750 = and i32 %4749, 32767
  %4751 = mul nuw nsw i32 %4750, 928
  %4752 = add nuw nsw i32 %4751, 48
  %4753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4752, i32 undef)  ; BufferLoad(srv,index,wot)
  %4754 = extractvalue %dx.types.ResRet.f32 %4753, 0
  %4755 = extractvalue %dx.types.ResRet.f32 %4753, 1
  %4756 = extractvalue %dx.types.ResRet.f32 %4753, 2
  %4757 = add nuw nsw i32 %4751, 60
  %4758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4757, i32 undef)  ; BufferLoad(srv,index,wot)
  %4759 = extractvalue %dx.types.ResRet.f32 %4758, 0
  %4760 = extractvalue %dx.types.ResRet.f32 %4758, 1
  %4761 = extractvalue %dx.types.ResRet.f32 %4758, 2
  %4762 = fmul fast float %4754, %4744
  %4763 = fmul fast float %4755, %4744
  %4764 = fmul fast float %4756, %4744
  %4765 = fadd fast float %4762, %4718
  %4766 = fadd fast float %4763, %4719
  %4767 = fadd fast float %4764, %4720
  %4768 = fmul fast float %4759, %4744
  %4769 = fmul fast float %4760, %4744
  %4770 = fmul fast float %4761, %4744
  %4771 = fadd fast float %4768, %4721
  %4772 = fadd fast float %4769, %4722
  %4773 = fadd fast float %4770, %4723
  br label %4774

; <label>:4774                                    ; preds = %4746, %4717
  %4775 = phi float [ %4765, %4746 ], [ %4718, %4717 ]
  %4776 = phi float [ %4766, %4746 ], [ %4719, %4717 ]
  %4777 = phi float [ %4767, %4746 ], [ %4720, %4717 ]
  %4778 = phi float [ %4771, %4746 ], [ %4721, %4717 ]
  %4779 = phi float [ %4772, %4746 ], [ %4722, %4717 ]
  %4780 = phi float [ %4773, %4746 ], [ %4723, %4717 ]
  %4781 = add nuw i32 %4724, 1
  %4782 = icmp eq i32 %4781, %4706
  br i1 %4782, label %4783, label %4717

; <label>:4783                                    ; preds = %4774
  br label %4784

; <label>:4784                                    ; preds = %4783, %4647
  %4785 = phi float [ 0.000000e+00, %4647 ], [ %4775, %4783 ]
  %4786 = phi float [ 0.000000e+00, %4647 ], [ %4776, %4783 ]
  %4787 = phi float [ 0.000000e+00, %4647 ], [ %4777, %4783 ]
  %4788 = phi float [ 0.000000e+00, %4647 ], [ %4778, %4783 ]
  %4789 = phi float [ 0.000000e+00, %4647 ], [ %4779, %4783 ]
  %4790 = phi float [ 0.000000e+00, %4647 ], [ %4780, %4783 ]
  %4791 = fadd fast float %4788, %4785
  %4792 = fmul fast float %4791, 0x3F847AE140000000
  %4793 = fadd fast float %4789, %4786
  %4794 = fmul fast float %4793, 0x3F847AE140000000
  %4795 = fadd fast float %4790, %4787
  %4796 = fmul fast float %4795, 0x3F847AE140000000
  br label %4797

; <label>:4797                                    ; preds = %4784, %4581, %4526, %4523, %4494, %4456
  %4798 = phi float [ %4508, %4494 ], [ -1.310720e+05, %4456 ], [ %4700, %4784 ], [ -1.310720e+05, %4526 ], [ -1.310720e+05, %4581 ], [ -1.310720e+05, %4523 ]
  %4799 = phi float [ %4518, %4494 ], [ 0.000000e+00, %4456 ], [ %4792, %4784 ], [ 0.000000e+00, %4526 ], [ 0.000000e+00, %4581 ], [ 0.000000e+00, %4523 ]
  %4800 = phi float [ %4520, %4494 ], [ 0.000000e+00, %4456 ], [ %4794, %4784 ], [ 0.000000e+00, %4526 ], [ 0.000000e+00, %4581 ], [ 0.000000e+00, %4523 ]
  %4801 = phi float [ %4522, %4494 ], [ 0.000000e+00, %4456 ], [ %4796, %4784 ], [ 0.000000e+00, %4526 ], [ 0.000000e+00, %4581 ], [ 0.000000e+00, %4523 ]
  %4802 = phi i1 [ true, %4494 ], [ false, %4456 ], [ true, %4784 ], [ false, %4526 ], [ false, %4581 ], [ false, %4523 ]
  %4803 = and i32 %229, 3
  %4804 = icmp eq i32 %4803, 1
  %4805 = select i1 %4804, float 1.000000e+00, float 0.000000e+00
  %4806 = fsub fast float %4798, %193
  %4807 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4808 = select i1 %4802, float %4807, float 1.000000e+00
  %4809 = fmul fast float %4808, %4805
  %4810 = icmp eq i32 %4803, 3
  %4811 = select i1 %4810, float 1.000000e+00, float %4809
  %4812 = call float @dx.op.binary.f32(i32 35, float %4396, float %4811)  ; FMax(a,b)
  %4813 = fcmp fast olt float %4811, 1.000000e+00
  %4814 = fcmp uge float %69, 0.000000e+00
  %4815 = and i1 %4814, %4813
  br i1 %4815, label %4816, label %4826

; <label>:4816                                    ; preds = %4797
  %4817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %46, float %69, float %70, float %71, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4818 = extractvalue %dx.types.ResRet.f32 %4817, 0
  %4819 = extractvalue %dx.types.ResRet.f32 %4817, 1
  %4820 = extractvalue %dx.types.ResRet.f32 %4817, 2
  %4821 = fadd fast float %4818, %4812
  %4822 = fcmp ule float %68, 0.000000e+00
  %4823 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4824 = select i1 %4822, float %4823, float 1.000000e+00
  %4825 = fmul fast float %4824, %4820
  br label %4826

; <label>:4826                                    ; preds = %4816, %4797
  %4827 = phi float [ %4821, %4816 ], [ %4812, %4797 ]
  %4828 = phi float [ %4819, %4816 ], [ 0.000000e+00, %4797 ]
  %4829 = phi float [ %4825, %4816 ], [ 0.000000e+00, %4797 ]
  %4830 = call float @dx.op.unary.f32(i32 7, float %4827)  ; Saturate(value)
  %4831 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  %4832 = call float @dx.op.unary.f32(i32 7, float %4829)  ; Saturate(value)
  %4833 = fcmp fast une float %4831, 0.000000e+00
  %4834 = fcmp fast une float %4832, 0.000000e+00
  %4835 = or i1 %4833, %4834
  br i1 %4835, label %4836, label %5395

; <label>:4836                                    ; preds = %4826
  br i1 %4833, label %4837, label %5110

; <label>:4837                                    ; preds = %4836
  %4838 = call float @dx.op.unary.f32(i32 23, float %4393)  ; Log(value)
  %4839 = fmul fast float %4838, 4.000000e+00
  %4840 = call float @dx.op.unary.f32(i32 21, float %4839)  ; Exp(value)
  %4841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4842 = extractvalue %dx.types.CBufRet.f32 %4841, 0
  %4843 = fmul fast float %4842, %56
  %4844 = fmul fast float %4842, %57
  %4845 = fmul fast float %4842, %58
  %4846 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4847 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4848 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4849 = call float @dx.op.unary.f32(i32 23, float %4846)  ; Log(value)
  %4850 = call float @dx.op.unary.f32(i32 23, float %4847)  ; Log(value)
  %4851 = call float @dx.op.unary.f32(i32 23, float %4848)  ; Log(value)
  %4852 = fmul fast float %4849, 4.000000e+00
  %4853 = fmul fast float %4850, 4.000000e+00
  %4854 = fmul fast float %4851, 4.000000e+00
  %4855 = call float @dx.op.unary.f32(i32 21, float %4852)  ; Exp(value)
  %4856 = call float @dx.op.unary.f32(i32 21, float %4853)  ; Exp(value)
  %4857 = call float @dx.op.unary.f32(i32 21, float %4854)  ; Exp(value)
  %4858 = fadd fast float %4856, %4855
  %4859 = fadd fast float %4858, %4857
  %4860 = fdiv fast float 1.000000e+00, %4859
  %4861 = fmul fast float %4860, %4855
  %4862 = fcmp fast ogt float %65, 0.000000e+00
  %4863 = fcmp fast ogt float %66, 0.000000e+00
  %4864 = fcmp fast ogt float %67, 0.000000e+00
  %4865 = fcmp fast olt float %65, 0.000000e+00
  %4866 = fcmp fast olt float %66, 0.000000e+00
  %4867 = fcmp fast olt float %67, 0.000000e+00
  %4868 = zext i1 %4862 to i32
  %4869 = zext i1 %4863 to i32
  %4870 = zext i1 %4864 to i32
  %4871 = zext i1 %4865 to i32
  %4872 = zext i1 %4866 to i32
  %4873 = zext i1 %4867 to i32
  %4874 = sub nsw i32 %4868, %4871
  %4875 = sub nsw i32 %4869, %4872
  %4876 = sub nsw i32 %4870, %4873
  %4877 = call float @dx.op.unary.f32(i32 83, float %4843)  ; DerivCoarseX(value)
  %4878 = call float @dx.op.unary.f32(i32 83, float %4844)  ; DerivCoarseX(value)
  %4879 = call float @dx.op.unary.f32(i32 83, float %4845)  ; DerivCoarseX(value)
  %4880 = call float @dx.op.unary.f32(i32 84, float %4843)  ; DerivCoarseY(value)
  %4881 = call float @dx.op.unary.f32(i32 84, float %4844)  ; DerivCoarseY(value)
  %4882 = call float @dx.op.unary.f32(i32 84, float %4845)  ; DerivCoarseY(value)
  %4883 = fcmp fast ole float %261, %4861
  %4884 = fmul fast float %4860, %4858
  %4885 = fcmp fast ole float %261, %4884
  %4886 = select i1 %4885, float %4845, float %4843
  %4887 = select i1 %4885, float %4843, float %4844
  %4888 = select i1 %4883, float %4844, float %4886
  %4889 = select i1 %4883, float %4845, float %4887
  %4890 = select i1 %4885, float %4879, float %4877
  %4891 = select i1 %4885, float %4877, float %4878
  %4892 = select i1 %4883, float %4878, float %4890
  %4893 = select i1 %4883, float %4879, float %4891
  %4894 = select i1 %4885, float %4882, float %4880
  %4895 = select i1 %4885, float %4880, float %4881
  %4896 = select i1 %4883, float %4881, float %4894
  %4897 = select i1 %4883, float %4882, float %4895
  %4898 = call float @dx.op.unary.f32(i32 27, float %4888)  ; Round_ni(value)
  %4899 = call float @dx.op.unary.f32(i32 27, float %4889)  ; Round_ni(value)
  %4900 = fptosi float %4898 to i32
  %4901 = fptosi float %4899 to i32
  %4902 = xor i32 %4901, %4900
  %4903 = sitofp i32 %4902 to float
  %4904 = fptosi float %4903 to i32
  %4905 = sitofp i32 %4904 to float
  %4906 = fmul fast float %4905, 0x3FE3C6EF40000000
  %4907 = frem fast float %4898, 2.560000e+02
  %4908 = frem fast float %4899, 2.560000e+02
  %4909 = fptoui float %4907 to i32
  %4910 = fptoui float %4908 to i32
  %4911 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4909, i32 %4910, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4912 = extractvalue %dx.types.ResRet.f32 %4911, 0
  %4913 = extractvalue %dx.types.ResRet.f32 %4911, 1
  %4914 = extractvalue %dx.types.ResRet.f32 %4911, 2
  %4915 = fadd fast float %4912, %4906
  %4916 = fadd fast float %4913, %4906
  %4917 = fadd fast float %4914, %4906
  %4918 = call float @dx.op.unary.f32(i32 22, float %4915)  ; Frc(value)
  %4919 = call float @dx.op.unary.f32(i32 22, float %4916)  ; Frc(value)
  %4920 = call float @dx.op.unary.f32(i32 22, float %4917)  ; Frc(value)
  %4921 = fmul fast float %4920, 0x401921FB60000000
  %4922 = call float @dx.op.unary.f32(i32 13, float %4921)  ; Sin(value)
  %4923 = call float @dx.op.unary.f32(i32 12, float %4921)  ; Cos(value)
  %4924 = fsub fast float -0.000000e+00, %4923
  %4925 = fmul fast float %4923, %4888
  %4926 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %4889, float %4925)  ; FMad(a,b,c)
  %4927 = fmul fast float %4922, %4888
  %4928 = call float @dx.op.tertiary.f32(i32 46, float %4924, float %4889, float %4927)  ; FMad(a,b,c)
  %4929 = fadd fast float %4926, %4918
  %4930 = fadd fast float %4928, %4919
  %4931 = extractvalue %dx.types.CBufRet.f32 %4841, 3
  %4932 = bitcast float %4931 to i32
  %4933 = icmp eq i32 %4932, 0
  br i1 %4933, label %4972, label %4934

; <label>:4934                                    ; preds = %4837
  %4935 = add i32 %4932, 0
  %4936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4937 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4936, %dx.types.Handle %101, float %4929, float %4930, float undef, float undef, i32 0, i32 0, i32 undef, float %4892, float %4893, float undef, float %4896, float %4897, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4938 = extractvalue %dx.types.ResRet.f32 %4937, 0
  %4939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4940 = extractvalue %dx.types.CBufRet.f32 %4939, 1
  %4941 = extractvalue %dx.types.CBufRet.f32 %4939, 2
  %4942 = fsub fast float 1.000000e+00, %4831
  %4943 = call float @dx.op.binary.f32(i32 35, float %4942, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4944 = bitcast float %4831 to i32
  %4945 = sitofp i32 %4944 to float
  %4946 = fadd fast float %4945, 0xC1CFBF8940000000
  %4947 = fmul fast float %4941, %4946
  %4948 = fadd fast float %4947, 0x41CFBF8940000000
  %4949 = fptosi float %4948 to i32
  %4950 = bitcast i32 %4949 to float
  %4951 = bitcast float %4943 to i32
  %4952 = sitofp i32 %4951 to float
  %4953 = fadd fast float %4952, 0xC1CFBF8940000000
  %4954 = fmul fast float %4953, %4941
  %4955 = fadd fast float %4954, 0x41CFBF8940000000
  %4956 = fptosi float %4955 to i32
  %4957 = bitcast i32 %4956 to float
  %4958 = fmul fast float %4950, %4940
  %4959 = fmul fast float %4957, %4940
  %4960 = fsub fast float %4943, %4958
  %4961 = fadd fast float %4959, %4943
  %4962 = call float @dx.op.unary.f32(i32 7, float %4960)  ; Saturate(value)
  %4963 = call float @dx.op.unary.f32(i32 7, float %4961)  ; Saturate(value)
  %4964 = fsub fast float %4938, %4962
  %4965 = fsub fast float %4963, %4962
  %4966 = bitcast float %4965 to i32
  %4967 = sub nsw i32 2129859010, %4966
  %4968 = bitcast i32 %4967 to float
  %4969 = fmul fast float %4968, %4964
  %4970 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %4971 = fcmp fast olt float %4970, 0x3F70101020000000
  br i1 %4971, label %5110, label %4972

; <label>:4972                                    ; preds = %4934, %4837
  %4973 = phi float [ %4970, %4934 ], [ %4831, %4837 ]
  %4974 = fmul fast float %4973, %4840
  %4975 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4976 = extractvalue %dx.types.CBufRet.i32 %4975, 1
  %4977 = extractvalue %dx.types.CBufRet.i32 %4975, 0
  %4978 = add i32 %4977, 0
  %4979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4978, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4980 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4979, %dx.types.Handle %100, float %4929, float %4930, float undef, float undef, i32 0, i32 0, i32 undef, float %4892, float %4893, float undef, float %4896, float %4897, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4981 = extractvalue %dx.types.ResRet.f32 %4980, 0
  %4982 = extractvalue %dx.types.ResRet.f32 %4980, 1
  %4983 = extractvalue %dx.types.ResRet.f32 %4980, 2
  %4984 = extractvalue %dx.types.ResRet.f32 %4980, 3
  %4985 = and i32 %4976, 255
  %4986 = uitofp i32 %4985 to float
  %4987 = lshr i32 %4976, 8
  %4988 = and i32 %4987, 255
  %4989 = uitofp i32 %4988 to float
  %4990 = fmul fast float %4984, %4986
  %4991 = fadd fast float %4990, %4989
  %4992 = fmul fast float %4991, 0x3F70101000000000
  %4993 = fadd fast float %4992, 0xBFB99999A0000000
  %4994 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %4995 = fmul fast float %4994, 0x3FF1C71C80000000
  %4996 = call float @dx.op.binary.f32(i32 36, float %4992, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4997 = fsub fast float 1.000000e+00, %4995
  %4998 = call float @dx.op.unary.f32(i32 7, float %4997)  ; Saturate(value)
  %4999 = fmul fast float %4998, %4981
  %5000 = fmul fast float %4998, %4982
  %5001 = fmul fast float %4998, %4983
  %5002 = call float @dx.op.unary.f32(i32 7, float %4999)  ; Saturate(value)
  %5003 = call float @dx.op.unary.f32(i32 7, float %5000)  ; Saturate(value)
  %5004 = call float @dx.op.unary.f32(i32 7, float %5001)  ; Saturate(value)
  %5005 = fmul fast float %4995, %4981
  %5006 = fmul fast float %4995, %4982
  %5007 = fmul fast float %4995, %4983
  %5008 = fadd fast float %5005, %4996
  %5009 = fadd fast float %5006, %4996
  %5010 = fadd fast float %5007, %4996
  %5011 = call float @dx.op.unary.f32(i32 7, float %5008)  ; Saturate(value)
  %5012 = call float @dx.op.unary.f32(i32 7, float %5009)  ; Saturate(value)
  %5013 = call float @dx.op.unary.f32(i32 7, float %5010)  ; Saturate(value)
  %5014 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5015 = extractvalue %dx.types.CBufRet.i32 %5014, 3
  %5016 = extractvalue %dx.types.CBufRet.i32 %5014, 2
  %5017 = add i32 %5016, 0
  %5018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5017, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5019 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5018, %dx.types.Handle %100, float %4929, float %4930, float undef, float undef, i32 0, i32 0, i32 undef, float %4892, float %4893, float undef, float %4896, float %4897, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5020 = extractvalue %dx.types.ResRet.f32 %5019, 0
  %5021 = extractvalue %dx.types.ResRet.f32 %5019, 1
  %5022 = extractvalue %dx.types.ResRet.f32 %5019, 2
  %5023 = extractvalue %dx.types.ResRet.f32 %5019, 3
  %5024 = and i32 %5015, 255
  %5025 = uitofp i32 %5024 to float
  %5026 = lshr i32 %5015, 8
  %5027 = and i32 %5026, 255
  %5028 = uitofp i32 %5027 to float
  %5029 = lshr i32 %5015, 16
  %5030 = and i32 %5029, 255
  %5031 = uitofp i32 %5030 to float
  %5032 = fmul fast float %5031, 0x3F70101000000000
  %5033 = fmul fast float %5020, %5025
  %5034 = fadd fast float %5033, %5028
  %5035 = fmul fast float %5034, 0x3F70101000000000
  %5036 = fadd fast float %5021, -5.000000e-01
  %5037 = fadd fast float %5023, -5.000000e-01
  %5038 = fmul fast float %5036, %5032
  %5039 = fmul fast float %5037, %5032
  %5040 = fadd fast float %5038, 5.000000e-01
  %5041 = fadd fast float %5039, 5.000000e-01
  %5042 = fmul fast float %5040, 2.000000e+00
  %5043 = fadd fast float %5042, -1.000000e+00
  %5044 = fmul fast float %5041, 2.000000e+00
  %5045 = fadd fast float %5044, -1.000000e+00
  %5046 = fadd fast float %5043, %5045
  %5047 = fmul fast float %5046, 5.000000e-01
  %5048 = fsub fast float %5043, %5045
  %5049 = fmul fast float %5048, 5.000000e-01
  %5050 = call float @dx.op.unary.f32(i32 6, float %5047)  ; FAbs(value)
  %5051 = fsub fast float 1.000000e+00, %5050
  %5052 = call float @dx.op.unary.f32(i32 6, float %5049)  ; FAbs(value)
  %5053 = fsub fast float %5051, %5052
  %5054 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5049, float %5053, float %5047, float %5049, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %5055 = call float @dx.op.unary.f32(i32 25, float %5054)  ; Rsqrt(value)
  %5056 = fmul fast float %5047, %5055
  %5057 = fmul fast float %5049, %5055
  %5058 = select i1 %4885, i32 %4875, i32 %4876
  %5059 = select i1 %4883, i32 %4874, i32 %5058
  %5060 = sitofp i32 %5059 to float
  %5061 = fmul fast float %5053, %5060
  %5062 = fmul fast float %5061, %5055
  %5063 = select i1 %4885, float %5062, float %5057
  %5064 = select i1 %4885, float %5057, float %5062
  %5065 = select i1 %4883, float %5062, float %5056
  %5066 = select i1 %4883, float %5057, float %5063
  %5067 = select i1 %4883, float %5056, float %5064
  %5068 = fsub fast float %5002, %4435
  %5069 = fsub fast float %5003, %4436
  %5070 = fsub fast float %5004, %4437
  %5071 = fmul fast float %5068, %4974
  %5072 = fmul fast float %5069, %4974
  %5073 = fmul fast float %5070, %4974
  %5074 = fadd fast float %5071, %4435
  %5075 = fadd fast float %5072, %4436
  %5076 = fadd fast float %5073, %4437
  %5077 = fsub fast float %5011, %4417
  %5078 = fsub fast float %5012, %4418
  %5079 = fsub fast float %5013, %4419
  %5080 = fmul fast float %5077, %4974
  %5081 = fmul fast float %5078, %4974
  %5082 = fmul fast float %5079, %4974
  %5083 = fadd fast float %5080, %4417
  %5084 = fadd fast float %5081, %4418
  %5085 = fadd fast float %5082, %4419
  %5086 = fadd fast float %5065, %4378
  %5087 = fadd fast float %5066, %4379
  %5088 = fadd fast float %5067, %4380
  %5089 = call float @dx.op.dot3.f32(i32 55, float %5086, float %5087, float %5088, float %5086, float %5087, float %5088)  ; Dot3(ax,ay,az,bx,by,bz)
  %5090 = call float @dx.op.unary.f32(i32 25, float %5089)  ; Rsqrt(value)
  %5091 = fmul fast float %5086, %5090
  %5092 = fmul fast float %5087, %5090
  %5093 = fmul fast float %5088, %5090
  %5094 = fsub fast float %5091, %4378
  %5095 = fsub fast float %5092, %4379
  %5096 = fsub fast float %5093, %4380
  %5097 = fmul fast float %5094, %4974
  %5098 = fmul fast float %5095, %4974
  %5099 = fmul fast float %5096, %4974
  %5100 = fadd fast float %5097, %4378
  %5101 = fadd fast float %5098, %4379
  %5102 = fadd fast float %5099, %4380
  %5103 = call float @dx.op.binary.f32(i32 36, float %4393, float %5022)  ; FMin(a,b)
  %5104 = fsub fast float %5103, %4393
  %5105 = fmul fast float %5104, %4974
  %5106 = fadd fast float %5105, %4393
  %5107 = fsub fast float %5035, %4420
  %5108 = fmul fast float %5107, %4974
  %5109 = fadd fast float %5108, %4420
  br label %5110

; <label>:5110                                    ; preds = %4972, %4934, %4836
  %5111 = phi float [ %5074, %4972 ], [ %4435, %4934 ], [ %4435, %4836 ]
  %5112 = phi float [ %5075, %4972 ], [ %4436, %4934 ], [ %4436, %4836 ]
  %5113 = phi float [ %5076, %4972 ], [ %4437, %4934 ], [ %4437, %4836 ]
  %5114 = phi float [ %5083, %4972 ], [ %4417, %4934 ], [ %4417, %4836 ]
  %5115 = phi float [ %5084, %4972 ], [ %4418, %4934 ], [ %4418, %4836 ]
  %5116 = phi float [ %5085, %4972 ], [ %4419, %4934 ], [ %4419, %4836 ]
  %5117 = phi float [ %5100, %4972 ], [ %4378, %4934 ], [ %4378, %4836 ]
  %5118 = phi float [ %5101, %4972 ], [ %4379, %4934 ], [ %4379, %4836 ]
  %5119 = phi float [ %5102, %4972 ], [ %4380, %4934 ], [ %4380, %4836 ]
  %5120 = phi float [ %5109, %4972 ], [ %4420, %4934 ], [ %4420, %4836 ]
  %5121 = phi float [ %5106, %4972 ], [ %4393, %4934 ], [ %4393, %4836 ]
  br i1 %4834, label %5122, label %5395

; <label>:5122                                    ; preds = %5110
  %5123 = call float @dx.op.unary.f32(i32 23, float %5121)  ; Log(value)
  %5124 = fmul fast float %5123, 4.000000e+00
  %5125 = call float @dx.op.unary.f32(i32 21, float %5124)  ; Exp(value)
  %5126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5127 = extractvalue %dx.types.CBufRet.f32 %5126, 0
  %5128 = fmul fast float %5127, %56
  %5129 = fmul fast float %5127, %57
  %5130 = fmul fast float %5127, %58
  %5131 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %5132 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %5133 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %5134 = call float @dx.op.unary.f32(i32 23, float %5131)  ; Log(value)
  %5135 = call float @dx.op.unary.f32(i32 23, float %5132)  ; Log(value)
  %5136 = call float @dx.op.unary.f32(i32 23, float %5133)  ; Log(value)
  %5137 = fmul fast float %5134, 4.000000e+00
  %5138 = fmul fast float %5135, 4.000000e+00
  %5139 = fmul fast float %5136, 4.000000e+00
  %5140 = call float @dx.op.unary.f32(i32 21, float %5137)  ; Exp(value)
  %5141 = call float @dx.op.unary.f32(i32 21, float %5138)  ; Exp(value)
  %5142 = call float @dx.op.unary.f32(i32 21, float %5139)  ; Exp(value)
  %5143 = fadd fast float %5141, %5140
  %5144 = fadd fast float %5143, %5142
  %5145 = fdiv fast float 1.000000e+00, %5144
  %5146 = fmul fast float %5145, %5140
  %5147 = fcmp fast ogt float %65, 0.000000e+00
  %5148 = fcmp fast ogt float %66, 0.000000e+00
  %5149 = fcmp fast ogt float %67, 0.000000e+00
  %5150 = fcmp fast olt float %65, 0.000000e+00
  %5151 = fcmp fast olt float %66, 0.000000e+00
  %5152 = fcmp fast olt float %67, 0.000000e+00
  %5153 = zext i1 %5147 to i32
  %5154 = zext i1 %5148 to i32
  %5155 = zext i1 %5149 to i32
  %5156 = zext i1 %5150 to i32
  %5157 = zext i1 %5151 to i32
  %5158 = zext i1 %5152 to i32
  %5159 = sub nsw i32 %5153, %5156
  %5160 = sub nsw i32 %5154, %5157
  %5161 = sub nsw i32 %5155, %5158
  %5162 = call float @dx.op.unary.f32(i32 83, float %5128)  ; DerivCoarseX(value)
  %5163 = call float @dx.op.unary.f32(i32 83, float %5129)  ; DerivCoarseX(value)
  %5164 = call float @dx.op.unary.f32(i32 83, float %5130)  ; DerivCoarseX(value)
  %5165 = call float @dx.op.unary.f32(i32 84, float %5128)  ; DerivCoarseY(value)
  %5166 = call float @dx.op.unary.f32(i32 84, float %5129)  ; DerivCoarseY(value)
  %5167 = call float @dx.op.unary.f32(i32 84, float %5130)  ; DerivCoarseY(value)
  %5168 = fcmp fast ole float %261, %5146
  %5169 = fmul fast float %5145, %5143
  %5170 = fcmp fast ole float %261, %5169
  %5171 = select i1 %5170, float %5130, float %5128
  %5172 = select i1 %5170, float %5128, float %5129
  %5173 = select i1 %5168, float %5129, float %5171
  %5174 = select i1 %5168, float %5130, float %5172
  %5175 = select i1 %5170, float %5164, float %5162
  %5176 = select i1 %5170, float %5162, float %5163
  %5177 = select i1 %5168, float %5163, float %5175
  %5178 = select i1 %5168, float %5164, float %5176
  %5179 = select i1 %5170, float %5167, float %5165
  %5180 = select i1 %5170, float %5165, float %5166
  %5181 = select i1 %5168, float %5166, float %5179
  %5182 = select i1 %5168, float %5167, float %5180
  %5183 = call float @dx.op.unary.f32(i32 27, float %5173)  ; Round_ni(value)
  %5184 = call float @dx.op.unary.f32(i32 27, float %5174)  ; Round_ni(value)
  %5185 = fptosi float %5183 to i32
  %5186 = fptosi float %5184 to i32
  %5187 = xor i32 %5186, %5185
  %5188 = sitofp i32 %5187 to float
  %5189 = fptosi float %5188 to i32
  %5190 = sitofp i32 %5189 to float
  %5191 = fmul fast float %5190, 0x3FE3C6EF40000000
  %5192 = frem fast float %5183, 2.560000e+02
  %5193 = frem fast float %5184, 2.560000e+02
  %5194 = fptoui float %5192 to i32
  %5195 = fptoui float %5193 to i32
  %5196 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5194, i32 %5195, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5197 = extractvalue %dx.types.ResRet.f32 %5196, 0
  %5198 = extractvalue %dx.types.ResRet.f32 %5196, 1
  %5199 = extractvalue %dx.types.ResRet.f32 %5196, 2
  %5200 = fadd fast float %5197, %5191
  %5201 = fadd fast float %5198, %5191
  %5202 = fadd fast float %5199, %5191
  %5203 = call float @dx.op.unary.f32(i32 22, float %5200)  ; Frc(value)
  %5204 = call float @dx.op.unary.f32(i32 22, float %5201)  ; Frc(value)
  %5205 = call float @dx.op.unary.f32(i32 22, float %5202)  ; Frc(value)
  %5206 = fmul fast float %5205, 0x401921FB60000000
  %5207 = call float @dx.op.unary.f32(i32 13, float %5206)  ; Sin(value)
  %5208 = call float @dx.op.unary.f32(i32 12, float %5206)  ; Cos(value)
  %5209 = fsub fast float -0.000000e+00, %5208
  %5210 = fmul fast float %5208, %5173
  %5211 = call float @dx.op.tertiary.f32(i32 46, float %5207, float %5174, float %5210)  ; FMad(a,b,c)
  %5212 = fmul fast float %5207, %5173
  %5213 = call float @dx.op.tertiary.f32(i32 46, float %5209, float %5174, float %5212)  ; FMad(a,b,c)
  %5214 = fadd fast float %5211, %5203
  %5215 = fadd fast float %5213, %5204
  %5216 = extractvalue %dx.types.CBufRet.f32 %5126, 3
  %5217 = bitcast float %5216 to i32
  %5218 = icmp eq i32 %5217, 0
  br i1 %5218, label %5257, label %5219

; <label>:5219                                    ; preds = %5122
  %5220 = add i32 %5217, 0
  %5221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5222 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5221, %dx.types.Handle %101, float %5214, float %5215, float undef, float undef, i32 0, i32 0, i32 undef, float %5177, float %5178, float undef, float %5181, float %5182, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5223 = extractvalue %dx.types.ResRet.f32 %5222, 0
  %5224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5225 = extractvalue %dx.types.CBufRet.f32 %5224, 1
  %5226 = extractvalue %dx.types.CBufRet.f32 %5224, 2
  %5227 = fsub fast float 1.000000e+00, %4832
  %5228 = call float @dx.op.binary.f32(i32 35, float %5227, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5229 = bitcast float %4832 to i32
  %5230 = sitofp i32 %5229 to float
  %5231 = fadd fast float %5230, 0xC1CFBF8940000000
  %5232 = fmul fast float %5226, %5231
  %5233 = fadd fast float %5232, 0x41CFBF8940000000
  %5234 = fptosi float %5233 to i32
  %5235 = bitcast i32 %5234 to float
  %5236 = bitcast float %5228 to i32
  %5237 = sitofp i32 %5236 to float
  %5238 = fadd fast float %5237, 0xC1CFBF8940000000
  %5239 = fmul fast float %5238, %5226
  %5240 = fadd fast float %5239, 0x41CFBF8940000000
  %5241 = fptosi float %5240 to i32
  %5242 = bitcast i32 %5241 to float
  %5243 = fmul fast float %5235, %5225
  %5244 = fmul fast float %5242, %5225
  %5245 = fsub fast float %5228, %5243
  %5246 = fadd fast float %5244, %5228
  %5247 = call float @dx.op.unary.f32(i32 7, float %5245)  ; Saturate(value)
  %5248 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5249 = fsub fast float %5223, %5247
  %5250 = fsub fast float %5248, %5247
  %5251 = bitcast float %5250 to i32
  %5252 = sub nsw i32 2129859010, %5251
  %5253 = bitcast i32 %5252 to float
  %5254 = fmul fast float %5253, %5249
  %5255 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5256 = fcmp fast olt float %5255, 0x3F70101020000000
  br i1 %5256, label %5395, label %5257

; <label>:5257                                    ; preds = %5219, %5122
  %5258 = phi float [ %5255, %5219 ], [ %4832, %5122 ]
  %5259 = fmul fast float %5258, %5125
  %5260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5261 = extractvalue %dx.types.CBufRet.i32 %5260, 1
  %5262 = extractvalue %dx.types.CBufRet.i32 %5260, 0
  %5263 = add i32 %5262, 0
  %5264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5263, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5265 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5264, %dx.types.Handle %100, float %5214, float %5215, float undef, float undef, i32 0, i32 0, i32 undef, float %5177, float %5178, float undef, float %5181, float %5182, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5266 = extractvalue %dx.types.ResRet.f32 %5265, 0
  %5267 = extractvalue %dx.types.ResRet.f32 %5265, 1
  %5268 = extractvalue %dx.types.ResRet.f32 %5265, 2
  %5269 = extractvalue %dx.types.ResRet.f32 %5265, 3
  %5270 = and i32 %5261, 255
  %5271 = uitofp i32 %5270 to float
  %5272 = lshr i32 %5261, 8
  %5273 = and i32 %5272, 255
  %5274 = uitofp i32 %5273 to float
  %5275 = fmul fast float %5269, %5271
  %5276 = fadd fast float %5275, %5274
  %5277 = fmul fast float %5276, 0x3F70101000000000
  %5278 = fadd fast float %5277, 0xBFB99999A0000000
  %5279 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5280 = fmul fast float %5279, 0x3FF1C71C80000000
  %5281 = call float @dx.op.binary.f32(i32 36, float %5277, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5282 = fsub fast float 1.000000e+00, %5280
  %5283 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5284 = fmul fast float %5283, %5266
  %5285 = fmul fast float %5283, %5267
  %5286 = fmul fast float %5283, %5268
  %5287 = call float @dx.op.unary.f32(i32 7, float %5284)  ; Saturate(value)
  %5288 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5289 = call float @dx.op.unary.f32(i32 7, float %5286)  ; Saturate(value)
  %5290 = fmul fast float %5280, %5266
  %5291 = fmul fast float %5280, %5267
  %5292 = fmul fast float %5280, %5268
  %5293 = fadd fast float %5290, %5281
  %5294 = fadd fast float %5291, %5281
  %5295 = fadd fast float %5292, %5281
  %5296 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  %5297 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5298 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5300 = extractvalue %dx.types.CBufRet.i32 %5299, 3
  %5301 = extractvalue %dx.types.CBufRet.i32 %5299, 2
  %5302 = add i32 %5301, 0
  %5303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5302, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5304 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5303, %dx.types.Handle %100, float %5214, float %5215, float undef, float undef, i32 0, i32 0, i32 undef, float %5177, float %5178, float undef, float %5181, float %5182, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5305 = extractvalue %dx.types.ResRet.f32 %5304, 0
  %5306 = extractvalue %dx.types.ResRet.f32 %5304, 1
  %5307 = extractvalue %dx.types.ResRet.f32 %5304, 2
  %5308 = extractvalue %dx.types.ResRet.f32 %5304, 3
  %5309 = and i32 %5300, 255
  %5310 = uitofp i32 %5309 to float
  %5311 = lshr i32 %5300, 8
  %5312 = and i32 %5311, 255
  %5313 = uitofp i32 %5312 to float
  %5314 = lshr i32 %5300, 16
  %5315 = and i32 %5314, 255
  %5316 = uitofp i32 %5315 to float
  %5317 = fmul fast float %5316, 0x3F70101000000000
  %5318 = fmul fast float %5305, %5310
  %5319 = fadd fast float %5318, %5313
  %5320 = fmul fast float %5319, 0x3F70101000000000
  %5321 = fadd fast float %5306, -5.000000e-01
  %5322 = fadd fast float %5308, -5.000000e-01
  %5323 = fmul fast float %5321, %5317
  %5324 = fmul fast float %5322, %5317
  %5325 = fadd fast float %5323, 5.000000e-01
  %5326 = fadd fast float %5324, 5.000000e-01
  %5327 = fmul fast float %5325, 2.000000e+00
  %5328 = fadd fast float %5327, -1.000000e+00
  %5329 = fmul fast float %5326, 2.000000e+00
  %5330 = fadd fast float %5329, -1.000000e+00
  %5331 = fadd fast float %5328, %5330
  %5332 = fmul fast float %5331, 5.000000e-01
  %5333 = fsub fast float %5328, %5330
  %5334 = fmul fast float %5333, 5.000000e-01
  %5335 = call float @dx.op.unary.f32(i32 6, float %5332)  ; FAbs(value)
  %5336 = fsub fast float 1.000000e+00, %5335
  %5337 = call float @dx.op.unary.f32(i32 6, float %5334)  ; FAbs(value)
  %5338 = fsub fast float %5336, %5337
  %5339 = call float @dx.op.dot3.f32(i32 55, float %5332, float %5334, float %5338, float %5332, float %5334, float %5338)  ; Dot3(ax,ay,az,bx,by,bz)
  %5340 = call float @dx.op.unary.f32(i32 25, float %5339)  ; Rsqrt(value)
  %5341 = fmul fast float %5332, %5340
  %5342 = fmul fast float %5334, %5340
  %5343 = select i1 %5170, i32 %5160, i32 %5161
  %5344 = select i1 %5168, i32 %5159, i32 %5343
  %5345 = sitofp i32 %5344 to float
  %5346 = fmul fast float %5338, %5345
  %5347 = fmul fast float %5346, %5340
  %5348 = select i1 %5170, float %5347, float %5342
  %5349 = select i1 %5170, float %5342, float %5347
  %5350 = select i1 %5168, float %5347, float %5341
  %5351 = select i1 %5168, float %5342, float %5348
  %5352 = select i1 %5168, float %5341, float %5349
  %5353 = fsub fast float %5287, %5111
  %5354 = fsub fast float %5288, %5112
  %5355 = fsub fast float %5289, %5113
  %5356 = fmul fast float %5353, %5259
  %5357 = fmul fast float %5354, %5259
  %5358 = fmul fast float %5355, %5259
  %5359 = fadd fast float %5356, %5111
  %5360 = fadd fast float %5357, %5112
  %5361 = fadd fast float %5358, %5113
  %5362 = fsub fast float %5296, %5114
  %5363 = fsub fast float %5297, %5115
  %5364 = fsub fast float %5298, %5116
  %5365 = fmul fast float %5362, %5259
  %5366 = fmul fast float %5363, %5259
  %5367 = fmul fast float %5364, %5259
  %5368 = fadd fast float %5365, %5114
  %5369 = fadd fast float %5366, %5115
  %5370 = fadd fast float %5367, %5116
  %5371 = fadd fast float %5350, %5117
  %5372 = fadd fast float %5351, %5118
  %5373 = fadd fast float %5352, %5119
  %5374 = call float @dx.op.dot3.f32(i32 55, float %5371, float %5372, float %5373, float %5371, float %5372, float %5373)  ; Dot3(ax,ay,az,bx,by,bz)
  %5375 = call float @dx.op.unary.f32(i32 25, float %5374)  ; Rsqrt(value)
  %5376 = fmul fast float %5371, %5375
  %5377 = fmul fast float %5372, %5375
  %5378 = fmul fast float %5373, %5375
  %5379 = fsub fast float %5376, %5117
  %5380 = fsub fast float %5377, %5118
  %5381 = fsub fast float %5378, %5119
  %5382 = fmul fast float %5379, %5259
  %5383 = fmul fast float %5380, %5259
  %5384 = fmul fast float %5381, %5259
  %5385 = fadd fast float %5382, %5117
  %5386 = fadd fast float %5383, %5118
  %5387 = fadd fast float %5384, %5119
  %5388 = call float @dx.op.binary.f32(i32 36, float %5121, float %5307)  ; FMin(a,b)
  %5389 = fsub fast float %5388, %5121
  %5390 = fmul fast float %5389, %5259
  %5391 = fadd fast float %5390, %5121
  %5392 = fsub fast float %5320, %5120
  %5393 = fmul fast float %5392, %5259
  %5394 = fadd fast float %5393, %5120
  br label %5395

; <label>:5395                                    ; preds = %5257, %5219, %5110, %4826
  %5396 = phi float [ %5359, %5257 ], [ %5111, %5219 ], [ %5111, %5110 ], [ %4435, %4826 ]
  %5397 = phi float [ %5360, %5257 ], [ %5112, %5219 ], [ %5112, %5110 ], [ %4436, %4826 ]
  %5398 = phi float [ %5361, %5257 ], [ %5113, %5219 ], [ %5113, %5110 ], [ %4437, %4826 ]
  %5399 = phi float [ %5368, %5257 ], [ %5114, %5219 ], [ %5114, %5110 ], [ %4417, %4826 ]
  %5400 = phi float [ %5369, %5257 ], [ %5115, %5219 ], [ %5115, %5110 ], [ %4418, %4826 ]
  %5401 = phi float [ %5370, %5257 ], [ %5116, %5219 ], [ %5116, %5110 ], [ %4419, %4826 ]
  %5402 = phi float [ %5385, %5257 ], [ %5117, %5219 ], [ %5117, %5110 ], [ %4378, %4826 ]
  %5403 = phi float [ %5386, %5257 ], [ %5118, %5219 ], [ %5118, %5110 ], [ %4379, %4826 ]
  %5404 = phi float [ %5387, %5257 ], [ %5119, %5219 ], [ %5119, %5110 ], [ %4380, %4826 ]
  %5405 = phi float [ %5394, %5257 ], [ %5120, %5219 ], [ %5120, %5110 ], [ %4420, %4826 ]
  %5406 = phi float [ %5391, %5257 ], [ %5121, %5219 ], [ %5121, %5110 ], [ %4393, %4826 ]
  %5407 = fcmp fast une float %4830, 0.000000e+00
  %5408 = call float @dx.op.dot3.f32(i32 55, float %191, float %192, float %193, float %191, float %192, float %193)  ; Dot3(ax,ay,az,bx,by,bz)
  %5409 = call float @dx.op.unary.f32(i32 25, float %5408)  ; Rsqrt(value)
  br i1 %5407, label %5417, label %5410

; <label>:5410                                    ; preds = %5395
  %5411 = fmul fast float %5409, %191
  %5412 = fmul fast float %5409, %192
  %5413 = fmul fast float %5409, %193
  %5414 = fsub fast float -0.000000e+00, %5411
  %5415 = fsub fast float -0.000000e+00, %5412
  %5416 = fsub fast float -0.000000e+00, %5413
  br label %5584

; <label>:5417                                    ; preds = %5395
  %5418 = fmul fast float %191, %5409
  %5419 = fsub fast float -0.000000e+00, %5418
  %5420 = fmul fast float %192, %5409
  %5421 = fsub fast float -0.000000e+00, %5420
  %5422 = fmul fast float %193, %5409
  %5423 = fsub fast float -0.000000e+00, %5422
  %5424 = call float @dx.op.dot3.f32(i32 55, float %5419, float %5421, float %5423, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5425 = fmul fast float %4830, 2.500000e+00
  %5426 = call float @dx.op.unary.f32(i32 7, float %5425)  ; Saturate(value)
  %5427 = fmul fast float %4830, 0x4013FFFFE0000000
  %5428 = fadd fast float %5427, 0xBFFFFFFFE0000000
  %5429 = call float @dx.op.unary.f32(i32 7, float %5428)  ; Saturate(value)
  %5430 = fmul fast float %4830, 0x4004000020000000
  %5431 = fadd fast float %5430, 0xBFF8000040000000
  %5432 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5433 = fmul fast float %4399, 1.000000e+01
  %5434 = call float @dx.op.unary.f32(i32 7, float %5433)  ; Saturate(value)
  %5435 = fmul fast float %5434, 2.000000e+00
  %5436 = fsub fast float 3.000000e+00, %5435
  %5437 = fmul fast float %5434, %5434
  %5438 = fmul fast float %5437, %5436
  %5439 = fsub fast float 1.000000e+00, %5438
  %5440 = fsub fast float 0x3FE3333340000000, %5405
  %5441 = fmul fast float %5440, 0x400AAAAAA0000000
  %5442 = call float @dx.op.unary.f32(i32 7, float %5441)  ; Saturate(value)
  %5443 = fmul fast float %5439, %5442
  %5444 = fmul fast float %5396, 0x3FEA2B8620000000
  %5445 = fmul fast float %5397, 0x3FEA2B8620000000
  %5446 = fmul fast float %5398, 0x3FEA2B8620000000
  %5447 = fadd fast float %5444, 0x3FC81DFBA0000000
  %5448 = fmul fast float %5447, %5396
  %5449 = fadd fast float %5448, 0x3F910E6020000000
  %5450 = fadd fast float %5445, 0x3FC81DFBA0000000
  %5451 = fmul fast float %5450, %5397
  %5452 = fadd fast float %5451, 0x3F910E6020000000
  %5453 = fadd fast float %5446, 0x3FC81DFBA0000000
  %5454 = fmul fast float %5453, %5398
  %5455 = fadd fast float %5454, 0x3F910E6020000000
  %5456 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5457 = call float @dx.op.unary.f32(i32 7, float %5452)  ; Saturate(value)
  %5458 = call float @dx.op.unary.f32(i32 7, float %5455)  ; Saturate(value)
  %5459 = fsub fast float %5456, %5396
  %5460 = fsub fast float %5457, %5397
  %5461 = fsub fast float %5458, %5398
  %5462 = fmul fast float %5459, %5426
  %5463 = fmul fast float %5462, %5443
  %5464 = fmul fast float %5460, %5426
  %5465 = fmul fast float %5464, %5443
  %5466 = fmul fast float %5461, %5426
  %5467 = fmul fast float %5466, %5443
  %5468 = fadd fast float %5463, %5396
  %5469 = fadd fast float %5465, %5397
  %5470 = fadd fast float %5467, %5398
  %5471 = fmul fast float %5406, %5406
  %5472 = fmul fast float %5471, %5471
  %5473 = fadd fast float %5429, 1.000000e+00
  %5474 = fsub fast float %5473, %5443
  %5475 = call float @dx.op.unary.f32(i32 7, float %5474)  ; Saturate(value)
  %5476 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5477 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5478 = fsub fast float 1.000000e+00, %5472
  %5479 = call float @dx.op.binary.f32(i32 36, float %5475, float %5478)  ; FMin(a,b)
  %5480 = call float @dx.op.unary.f32(i32 7, float %5432)  ; Saturate(value)
  %5481 = call float @dx.op.binary.f32(i32 35, float %5479, float %5480)  ; FMax(a,b)
  %5482 = fadd fast float %5477, 0xBFE4CCCCC0000000
  %5483 = fmul fast float %5482, 0x4006DB6DA0000000
  %5484 = call float @dx.op.unary.f32(i32 7, float %5483)  ; Saturate(value)
  %5485 = fmul fast float %5484, 2.000000e+00
  %5486 = fsub fast float 3.000000e+00, %5485
  %5487 = bitcast float %5399 to i32
  %5488 = ashr i32 %5487, 1
  %5489 = add nsw i32 %5488, 532487669
  %5490 = bitcast i32 %5489 to float
  %5491 = fsub fast float 1.000000e+00, %5490
  %5492 = bitcast float %5491 to i32
  %5493 = sub nsw i32 2129859010, %5492
  %5494 = bitcast i32 %5493 to float
  %5495 = fmul fast float %5494, 2.000000e+00
  %5496 = bitcast float %5400 to i32
  %5497 = ashr i32 %5496, 1
  %5498 = add nsw i32 %5497, 532487669
  %5499 = bitcast i32 %5498 to float
  %5500 = fsub fast float 1.000000e+00, %5499
  %5501 = bitcast float %5500 to i32
  %5502 = sub nsw i32 2129859010, %5501
  %5503 = bitcast i32 %5502 to float
  %5504 = fmul fast float %5503, 2.000000e+00
  %5505 = bitcast float %5401 to i32
  %5506 = ashr i32 %5505, 1
  %5507 = add nsw i32 %5506, 532487669
  %5508 = bitcast i32 %5507 to float
  %5509 = fsub fast float 1.000000e+00, %5508
  %5510 = bitcast float %5509 to i32
  %5511 = sub nsw i32 2129859010, %5510
  %5512 = bitcast i32 %5511 to float
  %5513 = fmul fast float %5512, 2.000000e+00
  %5514 = fsub fast float 0x4002A9FBE0000000, %5495
  %5515 = fadd fast float %5495, 0x3FD54FDF00000000
  %5516 = bitcast float %5515 to i32
  %5517 = sub nsw i32 2129859010, %5516
  %5518 = bitcast i32 %5517 to float
  %5519 = fmul fast float %5518, %5514
  %5520 = fmul fast float %5519, %5519
  %5521 = fsub fast float 0x4002A9FBE0000000, %5504
  %5522 = fadd fast float %5504, 0x3FD54FDF00000000
  %5523 = bitcast float %5522 to i32
  %5524 = sub nsw i32 2129859010, %5523
  %5525 = bitcast i32 %5524 to float
  %5526 = fmul fast float %5525, %5521
  %5527 = fmul fast float %5526, %5526
  %5528 = fsub fast float 0x4002A9FBE0000000, %5513
  %5529 = fadd fast float %5513, 0x3FD54FDF00000000
  %5530 = bitcast float %5529 to i32
  %5531 = sub nsw i32 2129859010, %5530
  %5532 = bitcast i32 %5531 to float
  %5533 = fmul fast float %5532, %5528
  %5534 = fmul fast float %5533, %5533
  %5535 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5520)  ; FMax(a,b)
  %5536 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5527)  ; FMax(a,b)
  %5537 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5534)  ; FMax(a,b)
  %5538 = fsub fast float 1.000000e+00, %5424
  %5539 = fadd fast float %5538, %5439
  %5540 = call float @dx.op.unary.f32(i32 7, float %5539)  ; Saturate(value)
  %5541 = fsub fast float 1.000000e+00, %4811
  %5542 = fmul fast float %5481, %5541
  %5543 = fmul fast float %5484, %5484
  %5544 = fmul fast float %5543, %5542
  %5545 = fmul fast float %5544, %5486
  %5546 = fmul fast float %5541, 0xBFE99999A0000000
  %5547 = fmul fast float %5546, %5426
  %5548 = fmul fast float %5547, %5443
  %5549 = fadd fast float %5548, 1.000000e+00
  %5550 = fadd fast float %5405, -1.000000e+00
  %5551 = fmul fast float %5549, %5550
  %5552 = fadd fast float %5551, 1.000000e+00
  %5553 = fsub fast float %5535, %5399
  %5554 = fsub fast float %5536, %5400
  %5555 = fsub fast float %5537, %5401
  %5556 = fmul fast float %5545, %5553
  %5557 = fmul fast float %5545, %5554
  %5558 = fmul fast float %5545, %5555
  %5559 = fadd fast float %5556, %5399
  %5560 = fadd fast float %5557, %5400
  %5561 = fadd fast float %5558, %5401
  %5562 = fsub fast float %111, %5402
  %5563 = fsub fast float %112, %5403
  %5564 = fsub fast float %113, %5404
  %5565 = fmul fast float %5545, %5562
  %5566 = fmul fast float %5545, %5563
  %5567 = fmul fast float %5545, %5564
  %5568 = fadd fast float %5565, %5402
  %5569 = fadd fast float %5566, %5403
  %5570 = fadd fast float %5567, %5404
  %5571 = fmul fast float %5545, %5540
  %5572 = call float @dx.op.unary.f32(i32 7, float %5552)  ; Saturate(value)
  %5573 = fsub fast float 1.000000e+00, %5572
  %5574 = fmul fast float %5571, %5573
  %5575 = fadd fast float %5574, %5572
  %5576 = fsub fast float 1.000000e+00, %5406
  %5577 = fmul fast float %5545, %5576
  %5578 = fadd fast float %5577, %5406
  %5579 = call float @dx.op.dot3.f32(i32 55, float %5568, float %5569, float %5570, float %5568, float %5569, float %5570)  ; Dot3(ax,ay,az,bx,by,bz)
  %5580 = call float @dx.op.unary.f32(i32 25, float %5579)  ; Rsqrt(value)
  %5581 = fmul fast float %5568, %5580
  %5582 = fmul fast float %5569, %5580
  %5583 = fmul fast float %5570, %5580
  br label %5584

; <label>:5584                                    ; preds = %5417, %5410
  %5585 = phi float [ %5416, %5410 ], [ %5423, %5417 ]
  %5586 = phi float [ %5415, %5410 ], [ %5421, %5417 ]
  %5587 = phi float [ %5414, %5410 ], [ %5419, %5417 ]
  %5588 = phi float [ %5413, %5410 ], [ %5422, %5417 ]
  %5589 = phi float [ %5412, %5410 ], [ %5420, %5417 ]
  %5590 = phi float [ %5411, %5410 ], [ %5418, %5417 ]
  %5591 = phi float [ %5396, %5410 ], [ %5468, %5417 ]
  %5592 = phi float [ %5397, %5410 ], [ %5469, %5417 ]
  %5593 = phi float [ %5398, %5410 ], [ %5470, %5417 ]
  %5594 = phi float [ %5399, %5410 ], [ %5559, %5417 ]
  %5595 = phi float [ %5400, %5410 ], [ %5560, %5417 ]
  %5596 = phi float [ %5401, %5410 ], [ %5561, %5417 ]
  %5597 = phi float [ %5402, %5410 ], [ %5581, %5417 ]
  %5598 = phi float [ %5403, %5410 ], [ %5582, %5417 ]
  %5599 = phi float [ %5404, %5410 ], [ %5583, %5417 ]
  %5600 = phi float [ %5405, %5410 ], [ %5575, %5417 ]
  %5601 = phi float [ %5406, %5410 ], [ %5578, %5417 ]
  %5602 = fsub fast float -0.000000e+00, %193
  %5603 = select i1 %250, float 0.000000e+00, float %5596
  %5604 = call float @dx.op.dot3.f32(i32 55, float %5597, float %5598, float %5599, float %5587, float %5586, float %5585)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5590, float %5589, float %5588, float %5597, float %5598, float %5599)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = fmul fast float %5606, 2.000000e+00
  %5608 = fmul fast float %5607, %5597
  %5609 = fmul fast float %5607, %5598
  %5610 = fmul fast float %5607, %5599
  %5611 = fsub fast float %5590, %5608
  %5612 = fsub fast float %5589, %5609
  %5613 = fsub fast float %5588, %5610
  %5614 = call float @dx.op.binary.f32(i32 36, float %5601, float 1.000000e+00)  ; FMin(a,b)
  %5615 = fsub fast float 1.000000e+00, %5601
  %5616 = bitcast float %5615 to i32
  %5617 = sub nsw i32 2129859010, %5616
  %5618 = bitcast i32 %5617 to float
  %5619 = fsub fast float 1.000000e+00, %75
  %5620 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5621 = call float @dx.op.binary.f32(i32 35, float %5620, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5622 = fdiv fast float %5619, %5621
  %5623 = call float @dx.op.dot3.f32(i32 55, float %5597, float %5598, float %5599, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5624 = call float @dx.op.unary.f32(i32 7, float %5623)  ; Saturate(value)
  %5625 = fmul fast float %5624, 5.000000e-01
  %5626 = fadd fast float %5625, 5.000000e-01
  %5627 = fmul fast float %5626, %75
  %5628 = call float @dx.op.dot3.f32(i32 55, float %5597, float %5598, float %5599, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = call float @dx.op.unary.f32(i32 7, float %5628)  ; Saturate(value)
  %5630 = fmul fast float %5629, %5622
  %5631 = fadd fast float %5627, %5630
  %5632 = fsub fast float 5.000000e-01, %5625
  %5633 = fmul fast float %5632, %5591
  %5634 = fmul fast float %5632, %5592
  %5635 = fmul fast float %5632, %5593
  %5636 = fadd fast float %5631, %5633
  %5637 = fadd fast float %5631, %5634
  %5638 = fadd fast float %5631, %5635
  %5639 = call float @dx.op.dot3.f32(i32 55, float %5611, float %5612, float %5613, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5640 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  %5641 = fmul fast float %5640, 5.000000e-01
  %5642 = fadd fast float %5641, 5.000000e-01
  %5643 = fmul fast float %5642, %75
  %5644 = call float @dx.op.dot3.f32(i32 55, float %5611, float %5612, float %5613, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5645 = call float @dx.op.unary.f32(i32 7, float %5644)  ; Saturate(value)
  %5646 = fmul fast float %5645, %5622
  %5647 = fadd fast float %5643, %5646
  %5648 = fsub fast float 5.000000e-01, %5641
  %5649 = fmul fast float %5648, %5591
  %5650 = fmul fast float %5648, %5592
  %5651 = fmul fast float %5648, %5593
  %5652 = fadd fast float %5647, %5649
  %5653 = fadd fast float %5647, %5650
  %5654 = fadd fast float %5647, %5651
  %5655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5656 = extractvalue %dx.types.CBufRet.f32 %5655, 0
  %5657 = call float @dx.op.binary.f32(i32 36, float %5591, float %5656)  ; FMin(a,b)
  %5658 = fsub fast float 1.000000e+00, %5614
  %5659 = fmul fast float %5657, %5658
  %5660 = fsub fast float 1.000000e+00, %5659
  %5661 = bitcast float %5660 to i32
  %5662 = sub nsw i32 2129859010, %5661
  %5663 = bitcast i32 %5662 to float
  %5664 = call float @dx.op.binary.f32(i32 36, float %5592, float %5656)  ; FMin(a,b)
  %5665 = fmul fast float %5664, %5658
  %5666 = fsub fast float 1.000000e+00, %5665
  %5667 = bitcast float %5666 to i32
  %5668 = sub nsw i32 2129859010, %5667
  %5669 = bitcast i32 %5668 to float
  %5670 = call float @dx.op.binary.f32(i32 36, float %5593, float %5656)  ; FMin(a,b)
  %5671 = fmul fast float %5670, %5658
  %5672 = fsub fast float 1.000000e+00, %5671
  %5673 = bitcast float %5672 to i32
  %5674 = sub nsw i32 2129859010, %5673
  %5675 = bitcast i32 %5674 to float
  %5676 = fmul fast float %5614, %76
  %5677 = fmul fast float %5676, %5636
  %5678 = fmul fast float %5677, %5663
  %5679 = fmul fast float %5614, %77
  %5680 = fmul fast float %5679, %5637
  %5681 = fmul fast float %5680, %5669
  %5682 = fmul fast float %5614, %78
  %5683 = fmul fast float %5682, %5638
  %5684 = fmul fast float %5683, %5675
  %5685 = call float @dx.op.binary.f32(i32 36, float %5594, float %5656)  ; FMin(a,b)
  %5686 = fmul fast float %5685, %5658
  %5687 = fsub fast float 1.000000e+00, %5686
  %5688 = bitcast float %5687 to i32
  %5689 = sub nsw i32 2129859010, %5688
  %5690 = bitcast i32 %5689 to float
  %5691 = call float @dx.op.binary.f32(i32 36, float %5595, float %5656)  ; FMin(a,b)
  %5692 = fmul fast float %5691, %5658
  %5693 = fsub fast float 1.000000e+00, %5692
  %5694 = bitcast float %5693 to i32
  %5695 = sub nsw i32 2129859010, %5694
  %5696 = bitcast i32 %5695 to float
  %5697 = call float @dx.op.binary.f32(i32 36, float %5603, float %5656)  ; FMin(a,b)
  %5698 = fmul fast float %5697, %5658
  %5699 = fsub fast float 1.000000e+00, %5698
  %5700 = bitcast float %5699 to i32
  %5701 = sub nsw i32 2129859010, %5700
  %5702 = bitcast i32 %5701 to float
  %5703 = fmul fast float %5676, %5652
  %5704 = fmul fast float %5703, %5690
  %5705 = fmul fast float %5679, %5653
  %5706 = fmul fast float %5705, %5696
  %5707 = fmul fast float %5682, %5654
  %5708 = fmul fast float %5707, %5702
  %5709 = call float @dx.op.dot3.f32(i32 55, float %5678, float %5681, float %5684, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5710 = select i1 %250, float 0.000000e+00, float %5678
  %5711 = select i1 %250, float %5709, float %5681
  %5712 = select i1 %250, float 0.000000e+00, float %5684
  %5713 = call float @dx.op.dot3.f32(i32 55, float %5704, float %5706, float %5708, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5714 = select i1 %250, float 0.000000e+00, float %5704
  %5715 = select i1 %250, float %5713, float %5706
  %5716 = select i1 %250, float 0.000000e+00, float %5708
  %5717 = fmul fast float %3799, %3799
  %5718 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5719 = fmul fast float %5605, 9.843750e-01
  %5720 = fmul fast float %5600, 9.843750e-01
  %5721 = fadd fast float %5719, 7.812500e-03
  %5722 = fadd fast float %5720, 7.812500e-03
  %5723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %5721, float %5722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5724 = extractvalue %dx.types.ResRet.f32 %5723, 0
  %5725 = extractvalue %dx.types.ResRet.f32 %5723, 1
  %5726 = extractvalue %dx.types.ResRet.f32 %5723, 2
  %5727 = extractvalue %dx.types.ResRet.f32 %5723, 3
  %5728 = fsub fast float 1.000000e+00, %5718
  %5729 = fsub fast float %5726, %5724
  %5730 = fsub fast float %5727, %5725
  %5731 = fmul fast float %5729, %5728
  %5732 = fmul fast float %5730, %5728
  %5733 = fadd fast float %5731, %5724
  %5734 = fadd fast float %5732, %5725
  %5735 = fmul fast float %5733, %5594
  %5736 = fmul fast float %5733, %5595
  %5737 = fmul fast float %5733, %5603
  %5738 = fadd fast float %5735, %5734
  %5739 = fadd fast float %5736, %5734
  %5740 = fadd fast float %5737, %5734
  %5741 = fcmp fast ogt float %4394, 0.000000e+00
  br i1 %5741, label %5742, label %5768

; <label>:5742                                    ; preds = %5584
  %5743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %4394, float %5605, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5744 = extractvalue %dx.types.ResRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.ResRet.f32 %5743, 1
  %5746 = extractvalue %dx.types.ResRet.f32 %5743, 2
  %5747 = fadd fast float %5744, -5.000000e-01
  %5748 = fadd fast float %5745, -5.000000e-01
  %5749 = fadd fast float %5746, -5.000000e-01
  %5750 = fsub fast float 1.000000e+00, %5594
  %5751 = fsub fast float 1.000000e+00, %5595
  %5752 = fsub fast float 1.000000e+00, %5603
  %5753 = fmul fast float %5594, 4.000000e+00
  %5754 = fmul fast float %5753, %5750
  %5755 = fmul fast float %5754, %5747
  %5756 = fmul fast float %5595, 4.000000e+00
  %5757 = fmul fast float %5756, %5751
  %5758 = fmul fast float %5757, %5748
  %5759 = fmul fast float %5603, 4.000000e+00
  %5760 = fmul fast float %5759, %5752
  %5761 = fmul fast float %5760, %5749
  %5762 = fadd fast float %5755, %5738
  %5763 = fadd fast float %5758, %5739
  %5764 = fadd fast float %5761, %5740
  %5765 = call float @dx.op.unary.f32(i32 7, float %5762)  ; Saturate(value)
  %5766 = call float @dx.op.unary.f32(i32 7, float %5763)  ; Saturate(value)
  %5767 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  br label %5768

; <label>:5768                                    ; preds = %5742, %5584
  %5769 = phi float [ %5765, %5742 ], [ %5738, %5584 ]
  %5770 = phi float [ %5766, %5742 ], [ %5739, %5584 ]
  %5771 = phi float [ %5767, %5742 ], [ %5740, %5584 ]
  %5772 = call float @dx.op.binary.f32(i32 35, float %5770, float %5771)  ; FMax(a,b)
  %5773 = call float @dx.op.binary.f32(i32 35, float %5769, float %5772)  ; FMax(a,b)
  %5774 = fsub fast float 1.000000e+00, %5773
  %5775 = fmul fast float %5774, %5710
  %5776 = fmul fast float %5774, %5711
  %5777 = fmul fast float %5774, %5712
  %5778 = call float @dx.op.dot3.f32(i32 55, float %5591, float %5592, float %5593, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5779 = fcmp fast ogt float %5778, 0x3E7FF19E20000000
  %5780 = fdiv fast float 1.000000e+00, %5778
  %5781 = select i1 %5779, float %5780, float 0.000000e+00
  %5782 = fmul fast float %5781, %5591
  %5783 = fmul fast float %5781, %5592
  %5784 = fmul fast float %5781, %5593
  %5785 = fadd fast float %5782, -1.000000e+00
  %5786 = fadd fast float %5783, -1.000000e+00
  %5787 = fadd fast float %5784, -1.000000e+00
  %5788 = fmul fast float %5785, 5.000000e-01
  %5789 = fmul fast float %5786, 5.000000e-01
  %5790 = fmul fast float %5787, 5.000000e-01
  %5791 = fadd fast float %5788, 1.000000e+00
  %5792 = fadd fast float %5789, 1.000000e+00
  %5793 = fadd fast float %5790, 1.000000e+00
  %5794 = call float @dx.op.binary.f32(i32 35, float %5605, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5795 = fdiv fast float %3799, %5794
  %5796 = fcmp fast olt float %4421, 1.270000e+02
  %5797 = fcmp fast olt float %4422, 1.270000e+02
  %5798 = fcmp fast olt float %4423, 1.270000e+02
  %5799 = fmul fast float %4421, 0xBFF7154760000000
  %5800 = fmul fast float %5799, %5795
  %5801 = fmul fast float %4422, 0xBFF7154760000000
  %5802 = fmul fast float %5801, %5795
  %5803 = fmul fast float %4423, 0xBFF7154760000000
  %5804 = fmul fast float %5803, %5795
  %5805 = call float @dx.op.unary.f32(i32 21, float %5800)  ; Exp(value)
  %5806 = call float @dx.op.unary.f32(i32 21, float %5802)  ; Exp(value)
  %5807 = call float @dx.op.unary.f32(i32 21, float %5804)  ; Exp(value)
  %5808 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  %5809 = call float @dx.op.unary.f32(i32 7, float %5806)  ; Saturate(value)
  %5810 = call float @dx.op.unary.f32(i32 7, float %5807)  ; Saturate(value)
  %5811 = select i1 %5796, float %5808, float 0.000000e+00
  %5812 = select i1 %5797, float %5809, float 0.000000e+00
  %5813 = select i1 %5798, float %5810, float 0.000000e+00
  %5814 = fmul fast float %5811, %5774
  %5815 = fmul fast float %5812, %5774
  %5816 = fmul fast float %5813, %5774
  %5817 = fadd fast float %5814, -1.000000e+00
  %5818 = fadd fast float %5815, -1.000000e+00
  %5819 = fadd fast float %5816, -1.000000e+00
  %5820 = fmul fast float %5769, %5714
  %5821 = fmul fast float %5770, %5715
  %5822 = fmul fast float %5771, %5716
  %5823 = fsub fast float 1.000000e+00, %5605
  %5824 = bitcast float %5823 to i32
  %5825 = sitofp i32 %5824 to float
  %5826 = fmul fast float %5825, 5.000000e+00
  %5827 = fadd fast float %5826, 0xC1EFBF8940000000
  %5828 = fptosi float %5827 to i32
  %5829 = bitcast i32 %5828 to float
  %5830 = fmul fast float %5829, %4395
  %5831 = fmul fast float %5710, %5830
  %5832 = fmul fast float %5831, %5774
  %5833 = fmul fast float %5832, %5791
  %5834 = fmul fast float %5711, %5830
  %5835 = fmul fast float %5834, %5774
  %5836 = fmul fast float %5835, %5792
  %5837 = fmul fast float %5712, %5830
  %5838 = fmul fast float %5837, %5774
  %5839 = fmul fast float %5838, %5793
  %5840 = fmul fast float %5775, %4391
  %5841 = fmul fast float %5776, %4391
  %5842 = fmul fast float %5777, %4391
  %5843 = fadd fast float %5820, %4384
  %5844 = fadd fast float %5843, %5833
  %5845 = fmul fast float %5844, %4391
  %5846 = fadd fast float %5821, %4385
  %5847 = fadd fast float %5846, %5836
  %5848 = fmul fast float %5847, %4391
  %5849 = fadd fast float %5822, %4386
  %5850 = fadd fast float %5849, %5839
  %5851 = fmul fast float %5850, %4391
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 3
  %5854 = fcmp fast oeq float %5853, 0.000000e+00
  br i1 %5854, label %6951, label %5855

; <label>:5855                                    ; preds = %5768
  %5856 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5857 = extractvalue %dx.types.CBufRet.f32 %5852, 1
  %5858 = extractvalue %dx.types.CBufRet.f32 %5852, 2
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 0
  %5861 = extractvalue %dx.types.CBufRet.f32 %5859, 1
  %5862 = extractvalue %dx.types.CBufRet.f32 %5859, 2
  %5863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5863, 0
  %5865 = extractvalue %dx.types.CBufRet.f32 %5863, 1
  %5866 = call float @dx.op.dot3.f32(i32 55, float %5860, float %5861, float %5862, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5867 = select i1 %250, float %5864, float %5860
  %5868 = select i1 %250, float %5866, float %5861
  %5869 = select i1 %250, float %5865, float %5862
  %5870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5871 = extractvalue %dx.types.CBufRet.f32 %5870, 2
  %5872 = fmul fast float %5871, %111
  %5873 = fmul fast float %5871, %112
  %5874 = fmul fast float %5871, %113
  %5875 = fadd fast float %5872, %191
  %5876 = fadd fast float %5873, %192
  %5877 = fadd fast float %5874, %193
  %5878 = fcmp fast olt float %5853, 0.000000e+00
  br i1 %5878, label %6518, label %5879

; <label>:5879                                    ; preds = %5855
  %5880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.f32 %5880, 0
  %5882 = extractvalue %dx.types.CBufRet.f32 %5880, 1
  %5883 = extractvalue %dx.types.CBufRet.f32 %5880, 2
  %5884 = extractvalue %dx.types.CBufRet.f32 %5880, 3
  %5885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5886 = extractvalue %dx.types.CBufRet.f32 %5885, 0
  %5887 = extractvalue %dx.types.CBufRet.f32 %5885, 1
  %5888 = extractvalue %dx.types.CBufRet.f32 %5885, 2
  %5889 = extractvalue %dx.types.CBufRet.f32 %5885, 3
  %5890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5891 = extractvalue %dx.types.CBufRet.f32 %5890, 0
  %5892 = extractvalue %dx.types.CBufRet.f32 %5890, 1
  %5893 = extractvalue %dx.types.CBufRet.f32 %5890, 2
  %5894 = extractvalue %dx.types.CBufRet.f32 %5890, 3
  %5895 = fmul fast float %5881, %5875
  %5896 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %5882, float %5895)  ; FMad(a,b,c)
  %5897 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %5883, float %5896)  ; FMad(a,b,c)
  %5898 = fadd fast float %5897, %5884
  %5899 = fmul fast float %5886, %5875
  %5900 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %5887, float %5899)  ; FMad(a,b,c)
  %5901 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %5888, float %5900)  ; FMad(a,b,c)
  %5902 = fadd fast float %5901, %5889
  %5903 = fmul fast float %5891, %5875
  %5904 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %5892, float %5903)  ; FMad(a,b,c)
  %5905 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %5893, float %5904)  ; FMad(a,b,c)
  %5906 = fadd fast float %5905, %5894
  %5907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5908 = extractvalue %dx.types.CBufRet.f32 %5907, 0
  %5909 = fcmp fast une float %5908, 0.000000e+00
  %5910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5911 = extractvalue %dx.types.CBufRet.f32 %5910, 0
  %5912 = extractvalue %dx.types.CBufRet.f32 %5910, 1
  %5913 = extractvalue %dx.types.CBufRet.f32 %5910, 3
  %5914 = fmul fast float %5913, %5898
  %5915 = fmul fast float %5913, %5902
  %5916 = fadd fast float %5914, %5911
  %5917 = fadd fast float %5915, %5912
  %5918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5919 = extractvalue %dx.types.CBufRet.f32 %5918, 0
  %5920 = extractvalue %dx.types.CBufRet.f32 %5918, 1
  %5921 = extractvalue %dx.types.CBufRet.f32 %5918, 3
  %5922 = fmul fast float %5921, %5898
  %5923 = fmul fast float %5921, %5902
  %5924 = fadd fast float %5922, %5919
  %5925 = fadd fast float %5923, %5920
  %5926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5927 = extractvalue %dx.types.CBufRet.f32 %5926, 1
  %5928 = fsub fast float %5927, %5906
  %5929 = extractvalue %dx.types.CBufRet.f32 %5926, 2
  %5930 = fmul fast float %5928, %5929
  %5931 = fsub fast float 1.000000e+00, %5930
  %5932 = call float @dx.op.unary.f32(i32 7, float %5931)  ; Saturate(value)
  br i1 %5909, label %5993, label %5933

; <label>:5933                                    ; preds = %5879
  %5934 = extractvalue %dx.types.CBufRet.f32 %5918, 2
  %5935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5936 = extractvalue %dx.types.CBufRet.f32 %5935, 2
  %5937 = fadd fast float %5936, %5934
  %5938 = fcmp fast ogt float %5937, 0.000000e+00
  br i1 %5938, label %5939, label %5963

; <label>:5939                                    ; preds = %5933
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.CBufRet.f32 %5940, 1
  %5943 = fsub fast float %5924, %5941
  %5944 = fsub fast float %5925, %5942
  %5945 = fcmp fast olt float %5943, 0.000000e+00
  %5946 = fcmp fast olt float %5944, 0.000000e+00
  %5947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5948 = extractvalue %dx.types.CBufRet.f32 %5947, 0
  %5949 = extractvalue %dx.types.CBufRet.f32 %5947, 1
  %5950 = extractvalue %dx.types.CBufRet.f32 %5947, 2
  %5951 = extractvalue %dx.types.CBufRet.f32 %5947, 3
  %5952 = select i1 %5945, float %5948, float %5950
  %5953 = select i1 %5946, float %5949, float %5951
  %5954 = fmul fast float %5952, %5943
  %5955 = fmul fast float %5953, %5944
  %5956 = call float @dx.op.unary.f32(i32 6, float %5954)  ; FAbs(value)
  %5957 = call float @dx.op.unary.f32(i32 6, float %5955)  ; FAbs(value)
  %5958 = extractvalue %dx.types.CBufRet.f32 %5870, 0
  %5959 = call float @dx.op.binary.f32(i32 35, float %5956, float %5957)  ; FMax(a,b)
  %5960 = fsub fast float %5958, %5959
  %5961 = call float @dx.op.unary.f32(i32 7, float %5960)  ; Saturate(value)
  %5962 = fmul fast float %5961, %5932
  br label %5963

; <label>:5963                                    ; preds = %5939, %5933
  %5964 = phi float [ %5962, %5939 ], [ 0.000000e+00, %5933 ]
  %5965 = extractvalue %dx.types.CBufRet.f32 %5910, 2
  %5966 = extractvalue %dx.types.CBufRet.f32 %5935, 1
  %5967 = fadd fast float %5966, %5965
  %5968 = fcmp fast ogt float %5967, 0.000000e+00
  br i1 %5968, label %5969, label %5993

; <label>:5969                                    ; preds = %5963
  %5970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5971 = extractvalue %dx.types.CBufRet.f32 %5970, 0
  %5972 = extractvalue %dx.types.CBufRet.f32 %5970, 1
  %5973 = fsub fast float %5916, %5971
  %5974 = fsub fast float %5917, %5972
  %5975 = fcmp fast olt float %5973, 0.000000e+00
  %5976 = fcmp fast olt float %5974, 0.000000e+00
  %5977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5978 = extractvalue %dx.types.CBufRet.f32 %5977, 0
  %5979 = extractvalue %dx.types.CBufRet.f32 %5977, 1
  %5980 = extractvalue %dx.types.CBufRet.f32 %5977, 2
  %5981 = extractvalue %dx.types.CBufRet.f32 %5977, 3
  %5982 = select i1 %5975, float %5978, float %5980
  %5983 = select i1 %5976, float %5979, float %5981
  %5984 = fmul fast float %5982, %5973
  %5985 = fmul fast float %5983, %5974
  %5986 = call float @dx.op.unary.f32(i32 6, float %5984)  ; FAbs(value)
  %5987 = call float @dx.op.unary.f32(i32 6, float %5985)  ; FAbs(value)
  %5988 = extractvalue %dx.types.CBufRet.f32 %5870, 0
  %5989 = call float @dx.op.binary.f32(i32 35, float %5986, float %5987)  ; FMax(a,b)
  %5990 = fsub fast float %5988, %5989
  %5991 = call float @dx.op.unary.f32(i32 7, float %5990)  ; Saturate(value)
  %5992 = fmul fast float %5991, %5932
  br label %5993

; <label>:5993                                    ; preds = %5969, %5963, %5879
  %5994 = phi float [ 0.000000e+00, %5879 ], [ %5992, %5969 ], [ 0.000000e+00, %5963 ]
  %5995 = phi float [ 0.000000e+00, %5879 ], [ %5964, %5969 ], [ %5964, %5963 ]
  %5996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5997 = extractvalue %dx.types.CBufRet.f32 %5996, 1
  %5998 = call float @dx.op.unary.f32(i32 7, float %5997)  ; Saturate(value)
  %5999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6000 = extractvalue %dx.types.CBufRet.f32 %5999, 0
  %6001 = extractvalue %dx.types.CBufRet.f32 %5999, 1
  %6002 = fsub fast float %5898, %6000
  %6003 = fsub fast float %5902, %6001
  %6004 = fcmp fast olt float %6002, 0.000000e+00
  %6005 = fcmp fast olt float %6003, 0.000000e+00
  %6006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6007 = extractvalue %dx.types.CBufRet.f32 %6006, 0
  %6008 = extractvalue %dx.types.CBufRet.f32 %6006, 1
  %6009 = extractvalue %dx.types.CBufRet.f32 %6006, 2
  %6010 = extractvalue %dx.types.CBufRet.f32 %6006, 3
  %6011 = select i1 %6004, float %6007, float %6009
  %6012 = select i1 %6005, float %6008, float %6010
  %6013 = fmul fast float %6011, %6002
  %6014 = fmul fast float %6012, %6003
  %6015 = call float @dx.op.unary.f32(i32 6, float %6013)  ; FAbs(value)
  %6016 = call float @dx.op.unary.f32(i32 6, float %6014)  ; FAbs(value)
  %6017 = extractvalue %dx.types.CBufRet.f32 %5870, 0
  %6018 = call float @dx.op.binary.f32(i32 35, float %6015, float %6016)  ; FMax(a,b)
  %6019 = fsub fast float %6017, %6018
  %6020 = call float @dx.op.unary.f32(i32 7, float %6019)  ; Saturate(value)
  %6021 = call float @dx.op.binary.f32(i32 36, float %6020, float %5998)  ; FMin(a,b)
  %6022 = fmul fast float %6021, %5932
  %6023 = fsub fast float %5994, %6022
  %6024 = fsub fast float %5995, %5994
  %6025 = fsub fast float %6024, %6022
  %6026 = call float @dx.op.binary.f32(i32 35, float %5994, float %5995)  ; FMax(a,b)
  %6027 = call float @dx.op.binary.f32(i32 35, float %6022, float %6026)  ; FMax(a,b)
  %6028 = fcmp fast olt float %6027, 1.000000e+00
  br i1 %6028, label %6029, label %6427, !dx.controlflow.hints !96

; <label>:6029                                    ; preds = %5993
  %6030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6031 = extractvalue %dx.types.CBufRet.f32 %6030, 0
  %6032 = fcmp fast une float %6031, 0.000000e+00
  br i1 %6032, label %6033, label %6427, !dx.controlflow.hints !97

; <label>:6033                                    ; preds = %6029
  %6034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6035 = extractvalue %dx.types.CBufRet.f32 %6034, 0
  %6036 = extractvalue %dx.types.CBufRet.f32 %6034, 1
  %6037 = extractvalue %dx.types.CBufRet.f32 %6034, 2
  %6038 = extractvalue %dx.types.CBufRet.f32 %6034, 3
  %6039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6040 = extractvalue %dx.types.CBufRet.f32 %6039, 0
  %6041 = extractvalue %dx.types.CBufRet.f32 %6039, 1
  %6042 = extractvalue %dx.types.CBufRet.f32 %6039, 2
  %6043 = extractvalue %dx.types.CBufRet.f32 %6039, 3
  %6044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6045 = extractvalue %dx.types.CBufRet.f32 %6044, 0
  %6046 = extractvalue %dx.types.CBufRet.f32 %6044, 1
  %6047 = extractvalue %dx.types.CBufRet.f32 %6044, 2
  %6048 = extractvalue %dx.types.CBufRet.f32 %6044, 3
  %6049 = fmul fast float %6035, %5875
  %6050 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %6036, float %6049)  ; FMad(a,b,c)
  %6051 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %6037, float %6050)  ; FMad(a,b,c)
  %6052 = fadd fast float %6051, %6038
  %6053 = fmul fast float %6040, %5875
  %6054 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %6041, float %6053)  ; FMad(a,b,c)
  %6055 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %6042, float %6054)  ; FMad(a,b,c)
  %6056 = fadd fast float %6055, %6043
  %6057 = fmul fast float %6045, %5875
  %6058 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %6046, float %6057)  ; FMad(a,b,c)
  %6059 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %6047, float %6058)  ; FMad(a,b,c)
  %6060 = fadd fast float %6059, %6048
  %6061 = fcmp fast oge float %6052, 1.000000e+00
  %6062 = fcmp fast oge float %6056, 1.000000e+00
  %6063 = or i1 %6061, %6062
  %6064 = fcmp fast olt float %6052, 0.000000e+00
  %6065 = fcmp fast olt float %6056, 0.000000e+00
  %6066 = or i1 %6064, %6065
  %6067 = or i1 %6063, %6066
  br i1 %6067, label %6427, label %6068, !dx.controlflow.hints !98

; <label>:6068                                    ; preds = %6033
  %6069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6070 = extractvalue %dx.types.CBufRet.f32 %6069, 0
  %6071 = extractvalue %dx.types.CBufRet.f32 %6069, 1
  %6072 = extractvalue %dx.types.CBufRet.f32 %6069, 2
  %6073 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6074 = extractvalue %dx.types.CBufRet.i32 %6073, 2
  %6075 = uitofp i32 %6074 to float
  %6076 = extractvalue %dx.types.CBufRet.i32 %6073, 3
  %6077 = uitofp i32 %6076 to float
  %6078 = extractvalue %dx.types.CBufRet.f32 %6069, 3
  %6079 = fmul fast float %6078, 2.000000e+00
  %6080 = fsub fast float %6052, %6070
  %6081 = fsub fast float %6056, %6071
  %6082 = fmul fast float %6079, %6080
  %6083 = fmul fast float %6079, %6081
  %6084 = fdiv fast float 1.000000e+00, %5858
  %6085 = fmul fast float %6083, %6084
  %6086 = call float @dx.op.unary.f32(i32 6, float %6085)  ; FAbs(value)
  %6087 = fmul fast float %6072, %5877
  %6088 = fmul fast float %6087, %6079
  %6089 = call float @dx.op.unary.f32(i32 6, float %6088)  ; FAbs(value)
  %6090 = call float @dx.op.unary.f32(i32 6, float %6082)  ; FAbs(value)
  %6091 = call float @dx.op.binary.f32(i32 35, float %6089, float %6086)  ; FMax(a,b)
  %6092 = call float @dx.op.binary.f32(i32 35, float %6090, float %6091)  ; FMax(a,b)
  %6093 = fmul fast float %6092, 2.000000e+00
  %6094 = call float @dx.op.unary.f32(i32 23, float %6093)  ; Log(value)
  %6095 = call float @dx.op.binary.f32(i32 35, float %6094, float %6075)  ; FMax(a,b)
  %6096 = call float @dx.op.unary.f32(i32 22, float %6095)  ; Frc(value)
  %6097 = fadd fast float %6096, 0xBFEA666660000000
  %6098 = fmul fast float %6097, 8.000000e+00
  %6099 = call float @dx.op.unary.f32(i32 7, float %6098)  ; Saturate(value)
  %6100 = call float @dx.op.unary.f32(i32 27, float %6095)  ; Round_ni(value)
  %6101 = fadd fast float %6100, %6099
  %6102 = call float @dx.op.binary.f32(i32 36, float %6101, float %6077)  ; FMin(a,b)
  %6103 = call float @dx.op.unary.f32(i32 27, float %6102)  ; Round_ni(value)
  %6104 = fsub fast float -0.000000e+00, %6103
  %6105 = call float @dx.op.unary.f32(i32 21, float %6104)  ; Exp(value)
  %6106 = fmul fast float %6105, %6079
  %6107 = fmul fast float %6106, %6052
  %6108 = fmul fast float %6106, %6056
  %6109 = fmul fast float %6107, 2.500000e-01
  %6110 = fmul fast float %6108, 2.500000e-01
  %6111 = fadd fast float %6109, 5.000000e-01
  %6112 = fadd fast float %6110, 5.000000e-01
  %6113 = fsub fast float %6077, %6075
  %6114 = fptoui float %6113 to i32
  %6115 = add i32 %6114, 320
  %6116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %6115)  ; CBufferLoadLegacy(handle,regIndex)
  %6117 = extractvalue %dx.types.CBufRet.f32 %6116, 0
  %6118 = extractvalue %dx.types.CBufRet.f32 %6116, 1
  %6119 = fcmp fast une float %6102, %6077
  %6120 = fsub fast float %6052, %6117
  %6121 = fsub fast float %6056, %6118
  %6122 = call float @dx.op.unary.f32(i32 6, float %6120)  ; FAbs(value)
  %6123 = call float @dx.op.unary.f32(i32 6, float %6121)  ; FAbs(value)
  %6124 = fmul fast float %6122, %6106
  %6125 = fmul fast float %6123, %6106
  %6126 = fcmp fast olt float %6124, 1.000000e+00
  %6127 = fcmp fast olt float %6125, 1.000000e+00
  %6128 = and i1 %6126, %6127
  %6129 = or i1 %6119, %6128
  br i1 %6129, label %6130, label %6427, !dx.controlflow.hints !99

; <label>:6130                                    ; preds = %6068
  %6131 = fmul fast float %6108, 5.000000e-01
  %6132 = fmul fast float %6107, 5.000000e-01
  %6133 = fadd fast float %6131, 5.000000e-01
  %6134 = fadd fast float %6132, 5.000000e-01
  %6135 = sitofp i32 %6074 to float
  %6136 = fsub fast float %6102, %6135
  %6137 = call float @dx.op.unary.f32(i32 27, float %6136)  ; Round_ni(value)
  %6138 = call float @dx.op.unary.f32(i32 22, float %6102)  ; Frc(value)
  %6139 = call float @dx.op.unary.f32(i32 22, float %6134)  ; Frc(value)
  %6140 = call float @dx.op.unary.f32(i32 22, float %6133)  ; Frc(value)
  %6141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6139, float %6140, float %6137, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6142 = extractvalue %dx.types.ResRet.f32 %6141, 0
  %6143 = extractvalue %dx.types.ResRet.f32 %6141, 1
  %6144 = extractvalue %dx.types.ResRet.f32 %6141, 2
  %6145 = extractvalue %dx.types.ResRet.f32 %6141, 3
  %6146 = fcmp fast ogt float %6138, 0.000000e+00
  br i1 %6146, label %6147, label %6168, !dx.controlflow.hints !100

; <label>:6147                                    ; preds = %6130
  %6148 = fadd fast float %6137, 1.000000e+00
  %6149 = call float @dx.op.unary.f32(i32 22, float %6111)  ; Frc(value)
  %6150 = call float @dx.op.unary.f32(i32 22, float %6112)  ; Frc(value)
  %6151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6149, float %6150, float %6148, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6152 = extractvalue %dx.types.ResRet.f32 %6151, 0
  %6153 = extractvalue %dx.types.ResRet.f32 %6151, 1
  %6154 = extractvalue %dx.types.ResRet.f32 %6151, 2
  %6155 = extractvalue %dx.types.ResRet.f32 %6151, 3
  %6156 = fsub fast float %6152, %6142
  %6157 = fsub fast float %6153, %6143
  %6158 = fsub fast float %6154, %6144
  %6159 = fsub fast float %6155, %6145
  %6160 = fmul fast float %6156, %6138
  %6161 = fmul fast float %6157, %6138
  %6162 = fmul fast float %6158, %6138
  %6163 = fmul fast float %6159, %6138
  %6164 = fadd fast float %6160, %6142
  %6165 = fadd fast float %6161, %6143
  %6166 = fadd fast float %6162, %6144
  %6167 = fadd fast float %6163, %6145
  br label %6168

; <label>:6168                                    ; preds = %6147, %6130
  %6169 = phi float [ %6164, %6147 ], [ %6142, %6130 ]
  %6170 = phi float [ %6165, %6147 ], [ %6143, %6130 ]
  %6171 = phi float [ %6166, %6147 ], [ %6144, %6130 ]
  %6172 = phi float [ %6167, %6147 ], [ %6145, %6130 ]
  %6173 = fadd fast float %6169, -5.000000e-01
  %6174 = fadd fast float %6171, -5.000000e-01
  %6175 = fmul fast float %6173, 0xBFD5555560000000
  %6176 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6174, float %6175)  ; FMad(a,b,c)
  %6177 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6170, float 0.000000e+00)  ; FMad(a,b,c)
  %6178 = fadd fast float %6177, %6172
  %6179 = fmul fast float %6173, -7.500000e-01
  %6180 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6174, float %6179)  ; FMad(a,b,c)
  %6181 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6170, float 0.000000e+00)  ; FMad(a,b,c)
  %6182 = fadd fast float %6181, %6172
  %6183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6184 = extractvalue %dx.types.CBufRet.f32 %6183, 0
  %6185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6186 = extractvalue %dx.types.CBufRet.f32 %6185, 0
  %6187 = extractvalue %dx.types.CBufRet.f32 %6185, 1
  %6188 = extractvalue %dx.types.CBufRet.f32 %6185, 2
  %6189 = extractvalue %dx.types.CBufRet.f32 %6185, 3
  %6190 = fsub fast float %6186, %6176
  %6191 = fsub fast float %6187, %6178
  %6192 = fsub fast float %6188, %6180
  %6193 = fsub fast float %6189, %6182
  %6194 = fmul fast float %6190, %6184
  %6195 = fmul fast float %6191, %6184
  %6196 = fmul fast float %6192, %6184
  %6197 = fmul fast float %6193, %6184
  %6198 = fadd fast float %6194, %6176
  %6199 = fadd fast float %6195, %6178
  %6200 = fadd fast float %6196, %6180
  %6201 = fadd fast float %6197, %6182
  %6202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6203 = extractvalue %dx.types.ResRet.i32 %6202, 0
  %6204 = and i32 %6203, 536870911
  %6205 = uitofp i32 %6204 to float
  %6206 = fmul fast float %6205, %6052
  %6207 = fmul fast float %6205, %6056
  %6208 = fptoui float %6206 to i32
  %6209 = fptoui float %6207 to i32
  %6210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6211 = extractvalue %dx.types.ResRet.i32 %6210, 0
  %6212 = and i32 %6211, 31
  %6213 = lshr i32 %6208, %6212
  %6214 = lshr i32 %6209, %6212
  %6215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6216 = extractvalue %dx.types.ResRet.i32 %6215, 0
  %6217 = and i32 %6216, 31
  %6218 = shl i32 1, %6217
  %6219 = call i32 @dx.op.binary.i32(i32 40, i32 %6218, i32 4)  ; UMin(a,b)
  %6220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6221 = extractvalue %dx.types.ResRet.i32 %6220, 0
  %6222 = extractvalue %dx.types.ResRet.i32 %6220, 1
  %6223 = icmp eq i32 %6219, 0
  br i1 %6223, label %6265, label %6224

; <label>:6224                                    ; preds = %6168
  br label %6225

; <label>:6225                                    ; preds = %6253, %6224
  %6226 = phi i32 [ %6256, %6253 ], [ 0, %6224 ]
  %6227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6228 = extractvalue %dx.types.ResRet.i32 %6227, 0
  %6229 = lshr i32 %6228, 16
  %6230 = and i32 %6229, 31
  %6231 = shl i32 %6214, %6230
  %6232 = add i32 %6231, %6213
  %6233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6234 = extractvalue %dx.types.ResRet.i32 %6233, 0
  %6235 = and i32 %6234, 31
  %6236 = shl i32 %6232, %6235
  %6237 = add i32 %6236, %6226
  %6238 = shl i32 %6237, 2
  %6239 = add i32 %6238, 32
  %6240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6239, i32 undef)  ; BufferLoad(srv,index,wot)
  %6241 = extractvalue %dx.types.ResRet.i32 %6240, 0
  %6242 = icmp slt i32 %6241, 0
  %6243 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6226
  %6244 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6226
  %6245 = bitcast float* %6243 to i32*
  %6246 = bitcast float* %6244 to i32*
  br i1 %6242, label %6247, label %6253

; <label>:6247                                    ; preds = %6225
  %6248 = and i32 %6241, 1073741823
  %6249 = add nuw nsw i32 %6248, 20
  %6250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6249, i32 undef)  ; BufferLoad(srv,index,wot)
  %6251 = extractvalue %dx.types.ResRet.i32 %6250, 0
  %6252 = extractvalue %dx.types.ResRet.i32 %6250, 1
  br label %6253

; <label>:6253                                    ; preds = %6247, %6225
  %6254 = phi i32 [ %6251, %6247 ], [ %6221, %6225 ]
  %6255 = phi i32 [ %6252, %6247 ], [ %6222, %6225 ]
  store i32 %6254, i32* %6245, align 4
  store i32 %6255, i32* %6246, align 4
  %6256 = add nuw i32 %6226, 1
  %6257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6258 = extractvalue %dx.types.CBufRet.i32 %6257, 2
  %6259 = icmp eq i32 %6258, 0
  %6260 = icmp ugt i32 %6241, -1073741825
  %6261 = and i1 %6260, %6259
  %6262 = icmp ult i32 %6256, %6219
  %6263 = and i1 %6261, %6262
  br i1 %6263, label %6225, label %6264

; <label>:6264                                    ; preds = %6253
  br label %6265

; <label>:6265                                    ; preds = %6264, %6168
  %6266 = phi i32 [ 0, %6168 ], [ %6256, %6264 ]
  %6267 = extractvalue %dx.types.CBufRet.f32 %6030, 2
  %6268 = fptoui float %6267 to i32
  %6269 = icmp eq i32 %6268, 0
  br i1 %6269, label %6321, label %6270

; <label>:6270                                    ; preds = %6265
  br label %6271

; <label>:6271                                    ; preds = %6316, %6270
  %6272 = phi i32 [ %6317, %6316 ], [ %6266, %6270 ]
  %6273 = phi i32 [ %6318, %6316 ], [ 0, %6270 ]
  %6274 = lshr i32 %6273, 2
  %6275 = and i32 %6273, 3
  %6276 = add nuw nsw i32 %6274, 83
  %6277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6276)  ; CBufferLoadLegacy(handle,regIndex)
  %6278 = extractvalue %dx.types.CBufRet.i32 %6277, 0
  %6279 = extractvalue %dx.types.CBufRet.i32 %6277, 1
  %6280 = extractvalue %dx.types.CBufRet.i32 %6277, 2
  %6281 = extractvalue %dx.types.CBufRet.i32 %6277, 3
  %6282 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6278, i32* %6282, align 4
  %6283 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6279, i32* %6283, align 4
  %6284 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6280, i32* %6284, align 4
  %6285 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6281, i32* %6285, align 4
  %6286 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6275
  %6287 = load i32, i32* %6286, align 4, !tbaa !101, !noalias !105
  %6288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6289 = extractvalue %dx.types.ResRet.i32 %6288, 0
  %6290 = lshr i32 %6289, 16
  %6291 = and i32 %6290, 31
  %6292 = shl i32 %6214, %6291
  %6293 = add i32 %6292, %6213
  %6294 = shl i32 %6293, 2
  %6295 = add i32 %6294, %6287
  %6296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6295, i32 undef)  ; BufferLoad(srv,index,wot)
  %6297 = extractvalue %dx.types.ResRet.i32 %6296, 0
  %6298 = icmp eq i32 %6297, 0
  br i1 %6298, label %6316, label %6299

; <label>:6299                                    ; preds = %6271
  %6300 = icmp slt i32 %6297, 0
  %6301 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6272
  %6302 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6272
  %6303 = bitcast float* %6301 to i32*
  %6304 = bitcast float* %6302 to i32*
  br i1 %6300, label %6305, label %6312

; <label>:6305                                    ; preds = %6299
  %6306 = and i32 %6297, 1073741823
  %6307 = add i32 %6287, 20
  %6308 = add i32 %6307, %6306
  %6309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6308, i32 undef)  ; BufferLoad(srv,index,wot)
  %6310 = extractvalue %dx.types.ResRet.i32 %6309, 0
  %6311 = extractvalue %dx.types.ResRet.i32 %6309, 1
  br label %6312

; <label>:6312                                    ; preds = %6305, %6299
  %6313 = phi i32 [ %6310, %6305 ], [ %6221, %6299 ]
  %6314 = phi i32 [ %6311, %6305 ], [ %6222, %6299 ]
  store i32 %6313, i32* %6303, align 4
  store i32 %6314, i32* %6304, align 4
  %6315 = add i32 %6272, 1
  br label %6316

; <label>:6316                                    ; preds = %6312, %6271
  %6317 = phi i32 [ %6272, %6271 ], [ %6315, %6312 ]
  %6318 = add nuw i32 %6273, 1
  %6319 = icmp eq i32 %6318, %6268
  br i1 %6319, label %6320, label %6271

; <label>:6320                                    ; preds = %6316
  br label %6321

; <label>:6321                                    ; preds = %6320, %6265
  %6322 = phi i32 [ %6266, %6265 ], [ %6317, %6320 ]
  %6323 = icmp eq i32 %6322, 1
  %6324 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 0
  %6325 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  br i1 %6323, label %6326, label %6329

; <label>:6326                                    ; preds = %6321
  %6327 = load float, float* %6324, align 4
  %6328 = load float, float* %6325, align 4
  br label %6356

; <label>:6329                                    ; preds = %6321
  %6330 = load float, float* %6324, align 4
  %6331 = load float, float* %6325, align 4
  %6332 = fdiv fast float 1.000000e+00, %6331
  %6333 = fsub fast float %6330, %6332
  %6334 = icmp ugt i32 %6322, 1
  br i1 %6334, label %6335, label %6351

; <label>:6335                                    ; preds = %6329
  br label %6336

; <label>:6336                                    ; preds = %6336, %6335
  %6337 = phi float [ %6346, %6336 ], [ %6333, %6335 ]
  %6338 = phi float [ %6347, %6336 ], [ %6330, %6335 ]
  %6339 = phi i32 [ %6348, %6336 ], [ 1, %6335 ]
  %6340 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6339
  %6341 = load float, float* %6340, align 4
  %6342 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6339
  %6343 = load float, float* %6342, align 4
  %6344 = fdiv fast float 1.000000e+00, %6343
  %6345 = fsub fast float %6341, %6344
  %6346 = call float @dx.op.binary.f32(i32 36, float %6337, float %6345)  ; FMin(a,b)
  %6347 = call float @dx.op.binary.f32(i32 35, float %6338, float %6341)  ; FMax(a,b)
  %6348 = add nuw i32 %6339, 1
  %6349 = icmp eq i32 %6348, %6322
  br i1 %6349, label %6350, label %6336

; <label>:6350                                    ; preds = %6336
  br label %6351

; <label>:6351                                    ; preds = %6350, %6329
  %6352 = phi float [ %6333, %6329 ], [ %6346, %6350 ]
  %6353 = phi float [ %6330, %6329 ], [ %6347, %6350 ]
  %6354 = fsub fast float %6353, %6352
  %6355 = fdiv fast float 1.000000e+00, %6354
  br label %6356

; <label>:6356                                    ; preds = %6351, %6326
  %6357 = phi float [ %6327, %6326 ], [ %6353, %6351 ]
  %6358 = phi float [ %6328, %6326 ], [ %6355, %6351 ]
  %6359 = fadd fast float %6060, %6357
  %6360 = fmul fast float %6359, %6358
  %6361 = call float @dx.op.unary.f32(i32 7, float %6360)  ; Saturate(value)
  %6362 = fmul fast float %6361, 2.000000e+00
  %6363 = fsub fast float 1.000000e+00, %6362
  %6364 = fmul fast float %6198, %6198
  %6365 = fsub fast float %6199, %6364
  %6366 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6365)  ; FMax(a,b)
  %6367 = fdiv fast float 1.000000e+00, %6366
  %6368 = fmul fast float %6199, %6198
  %6369 = fsub fast float %6200, %6368
  %6370 = fsub fast float %6363, %6198
  %6371 = fmul fast float %6363, %6363
  %6372 = fsub fast float %6371, %6199
  %6373 = fmul fast float %6367, %6369
  %6374 = fmul fast float %6373, %6370
  %6375 = fsub fast float %6372, %6374
  %6376 = fmul fast float %6199, %6199
  %6377 = fsub fast float %6201, %6376
  %6378 = fmul fast float %6369, %6369
  %6379 = fmul fast float %6378, %6367
  %6380 = fsub fast float %6377, %6379
  %6381 = fdiv fast float %6375, %6380
  %6382 = fmul fast float %6381, %6369
  %6383 = fsub fast float %6370, %6382
  %6384 = fmul fast float %6383, %6367
  %6385 = fmul fast float %6384, %6198
  %6386 = fsub fast float 1.000000e+00, %6385
  %6387 = fmul fast float %6381, %6199
  %6388 = fsub fast float %6386, %6387
  %6389 = fmul fast float %6384, %6384
  %6390 = fmul fast float %6381, 4.000000e+00
  %6391 = fmul fast float %6390, %6388
  %6392 = fsub fast float %6389, %6391
  %6393 = call float @dx.op.unary.f32(i32 24, float %6392)  ; Sqrt(value)
  %6394 = fcmp fast oge float %6384, 0.000000e+00
  %6395 = fsub fast float -0.000000e+00, %6393
  %6396 = select i1 %6394, float %6395, float %6393
  %6397 = fsub fast float %6396, %6384
  %6398 = fdiv fast float %6397, %6381
  %6399 = fdiv fast float %6388, %6397
  %6400 = fmul fast float %6398, 5.000000e-01
  %6401 = fmul fast float %6399, 2.000000e+00
  %6402 = select i1 %6394, float %6400, float %6401
  %6403 = select i1 %6394, float %6401, float %6400
  %6404 = call float @dx.op.binary.f32(i32 35, float %6402, float %6403)  ; FMax(a,b)
  %6405 = call float @dx.op.binary.f32(i32 36, float %6402, float %6403)  ; FMin(a,b)
  %6406 = fcmp fast ogt float %6363, %6404
  %6407 = fsub fast float %6363, %6405
  %6408 = fsub fast float %6363, %6404
  %6409 = fsub fast float %6404, %6405
  %6410 = select i1 %6406, float %6408, float %6409
  %6411 = fmul float %6407, %6410
  %6412 = select i1 %6406, float %6405, float %6363
  %6413 = fcmp fast ogt float %6363, %6405
  %6414 = fmul fast float %6412, %6404
  %6415 = fadd fast float %6412, %6404
  %6416 = fmul fast float %6415, %6198
  %6417 = fadd fast float %6414, %6199
  %6418 = fsub fast float %6417, %6416
  %6419 = fdiv fast float %6418, %6411
  %6420 = select i1 %6413, float %6419, float 0.000000e+00
  %6421 = fsub fast float 1.000000e+00, %6420
  %6422 = select i1 %6406, float %6421, float %6420
  %6423 = call float @dx.op.unary.f32(i32 7, float %6422)  ; Saturate(value)
  %6424 = extractvalue %dx.types.CBufRet.f32 %6183, 3
  %6425 = fmul fast float %6424, %6423
  %6426 = fsub fast float 1.000000e+00, %6425
  br label %6427

; <label>:6427                                    ; preds = %6356, %6068, %6033, %6029, %5993
  %6428 = phi float [ 1.000000e+00, %5993 ], [ %6426, %6356 ], [ 1.000000e+00, %6033 ], [ 1.000000e+00, %6068 ], [ 1.000000e+00, %6029 ]
  %6429 = fcmp fast ogt float %6025, 0.000000e+00
  br i1 %6429, label %6430, label %6438, !dx.controlflow.hints !114

; <label>:6430                                    ; preds = %6427
  %6431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6432 = extractvalue %dx.types.CBufRet.f32 %6431, 2
  %6433 = fadd fast float %6432, %5906
  %6434 = call float @dx.op.binary.f32(i32 35, float %6433, float 0.000000e+00)  ; FMax(a,b)
  %6435 = fadd fast float %6434, 0x3F10000000000000
  %6436 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5924, float %5925, float undef, float undef, i32 0, i32 0, i32 undef, float %6435)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6437 = extractvalue %dx.types.ResRet.f32 %6436, 0
  br label %6438

; <label>:6438                                    ; preds = %6430, %6427
  %6439 = phi float [ %6437, %6430 ], [ 1.000000e+00, %6427 ]
  %6440 = fcmp fast ogt float %6023, 0.000000e+00
  br i1 %6440, label %6441, label %6449, !dx.controlflow.hints !115

; <label>:6441                                    ; preds = %6438
  %6442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6443 = extractvalue %dx.types.CBufRet.f32 %6442, 1
  %6444 = fadd fast float %6443, %5906
  %6445 = call float @dx.op.binary.f32(i32 35, float %6444, float 0.000000e+00)  ; FMax(a,b)
  %6446 = fadd fast float %6445, 0x3F10000000000000
  %6447 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5916, float %5917, float undef, float undef, i32 0, i32 0, i32 undef, float %6446)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6448 = extractvalue %dx.types.ResRet.f32 %6447, 0
  br label %6449

; <label>:6449                                    ; preds = %6441, %6438
  %6450 = phi float [ %6448, %6441 ], [ 1.000000e+00, %6438 ]
  %6451 = fcmp fast ogt float %6022, 0.000000e+00
  br i1 %6451, label %6452, label %6464, !dx.controlflow.hints !116

; <label>:6452                                    ; preds = %6449
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 0
  %6455 = fadd fast float %6454, %5906
  %6456 = call float @dx.op.binary.f32(i32 35, float %6455, float 0.000000e+00)  ; FMax(a,b)
  %6457 = fadd fast float %6456, 0x3F10000000000000
  br i1 %5909, label %6458, label %6461, !dx.controlflow.hints !117

; <label>:6458                                    ; preds = %6452
  %6459 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %5898, float %5902, float undef, float undef, i32 0, i32 0, i32 undef, float %6457)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6460 = extractvalue %dx.types.ResRet.f32 %6459, 0
  br label %6464

; <label>:6461                                    ; preds = %6452
  %6462 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5898, float %5902, float undef, float undef, i32 0, i32 0, i32 undef, float %6457)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6463 = extractvalue %dx.types.ResRet.f32 %6462, 0
  br label %6464

; <label>:6464                                    ; preds = %6461, %6458, %6449
  %6465 = phi float [ %6460, %6458 ], [ %6463, %6461 ], [ 1.000000e+00, %6449 ]
  %6466 = fsub fast float %6439, %6428
  %6467 = fmul fast float %6466, %5995
  %6468 = fadd fast float %6467, %6428
  %6469 = fsub fast float %6450, %6468
  %6470 = fmul fast float %6469, %5994
  %6471 = fadd fast float %6470, %6468
  %6472 = fsub fast float %6465, %6471
  %6473 = fmul fast float %6472, %6022
  %6474 = fadd fast float %6473, %6471
  %6475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6476 = extractvalue %dx.types.CBufRet.f32 %6475, 2
  %6477 = fcmp fast ogt float %6476, 0.000000e+00
  br i1 %6477, label %6478, label %6518, !dx.controlflow.hints !118

; <label>:6478                                    ; preds = %6464
  %6479 = fcmp fast ugt float %6476, 0.000000e+00
  br i1 %6479, label %6480, label %6515

; <label>:6480                                    ; preds = %6478
  %6481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6482 = extractvalue %dx.types.CBufRet.f32 %6481, 0
  %6483 = extractvalue %dx.types.CBufRet.f32 %6481, 1
  %6484 = extractvalue %dx.types.CBufRet.f32 %6481, 2
  %6485 = extractvalue %dx.types.CBufRet.f32 %6481, 3
  %6486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6487 = extractvalue %dx.types.CBufRet.f32 %6486, 0
  %6488 = extractvalue %dx.types.CBufRet.f32 %6486, 1
  %6489 = extractvalue %dx.types.CBufRet.f32 %6486, 2
  %6490 = extractvalue %dx.types.CBufRet.f32 %6486, 3
  %6491 = extractvalue %dx.types.CBufRet.f32 %6475, 0
  %6492 = extractvalue %dx.types.CBufRet.f32 %6475, 1
  %6493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6494 = extractvalue %dx.types.CBufRet.f32 %6493, 0
  %6495 = extractvalue %dx.types.CBufRet.f32 %6493, 1
  %6496 = extractvalue %dx.types.CBufRet.f32 %6493, 2
  %6497 = fadd fast float %6494, %5875
  %6498 = fadd fast float %6495, %5876
  %6499 = fadd fast float %6496, %5877
  %6500 = fmul fast float %6497, %6482
  %6501 = call float @dx.op.tertiary.f32(i32 46, float %6483, float %6498, float %6500)  ; FMad(a,b,c)
  %6502 = call float @dx.op.tertiary.f32(i32 46, float %6484, float %6499, float %6501)  ; FMad(a,b,c)
  %6503 = fadd fast float %6502, %6485
  %6504 = fmul fast float %6497, %6487
  %6505 = call float @dx.op.tertiary.f32(i32 46, float %6488, float %6498, float %6504)  ; FMad(a,b,c)
  %6506 = call float @dx.op.tertiary.f32(i32 46, float %6489, float %6499, float %6505)  ; FMad(a,b,c)
  %6507 = fadd fast float %6506, %6490
  %6508 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6503, float %6507, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6509 = extractvalue %dx.types.ResRet.f32 %6508, 0
  %6510 = fmul fast float %6509, %6492
  %6511 = fadd fast float %6510, %6491
  %6512 = call float @dx.op.unary.f32(i32 7, float %6511)  ; Saturate(value)
  %6513 = fmul fast float %6512, %6476
  %6514 = fsub fast float 1.000000e+00, %6513
  br label %6515

; <label>:6515                                    ; preds = %6480, %6478
  %6516 = phi float [ %6514, %6480 ], [ 1.000000e+00, %6478 ]
  %6517 = fmul fast float %6516, %6474
  br label %6518

; <label>:6518                                    ; preds = %6515, %6464, %5855
  %6519 = phi float [ 1.000000e+00, %5855 ], [ %6517, %6515 ], [ %6474, %6464 ]
  %6520 = call float @dx.op.binary.f32(i32 36, float %6519, float %6519)  ; FMin(a,b)
  %6521 = call float @dx.op.binary.f32(i32 36, float %6519, float %6520)  ; FMin(a,b)
  %6522 = fcmp fast ogt float %6521, 0.000000e+00
  br i1 %6522, label %6523, label %6683, !dx.controlflow.hints !119

; <label>:6523                                    ; preds = %6518
  %6524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6525 = extractvalue %dx.types.CBufRet.f32 %6524, 0
  %6526 = extractvalue %dx.types.CBufRet.f32 %6524, 1
  %6527 = extractvalue %dx.types.CBufRet.f32 %6524, 2
  %6528 = extractvalue %dx.types.CBufRet.f32 %6524, 3
  %6529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6530 = extractvalue %dx.types.CBufRet.f32 %6529, 0
  %6531 = extractvalue %dx.types.CBufRet.f32 %6529, 1
  %6532 = extractvalue %dx.types.CBufRet.f32 %6529, 2
  %6533 = extractvalue %dx.types.CBufRet.f32 %6529, 3
  %6534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6535 = extractvalue %dx.types.CBufRet.f32 %6534, 0
  %6536 = extractvalue %dx.types.CBufRet.f32 %6534, 1
  %6537 = extractvalue %dx.types.CBufRet.f32 %6534, 2
  %6538 = extractvalue %dx.types.CBufRet.f32 %6534, 3
  %6539 = fmul fast float %6525, %5875
  %6540 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %6526, float %6539)  ; FMad(a,b,c)
  %6541 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %6527, float %6540)  ; FMad(a,b,c)
  %6542 = fadd fast float %6541, %6528
  %6543 = fmul fast float %6530, %5875
  %6544 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %6531, float %6543)  ; FMad(a,b,c)
  %6545 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %6532, float %6544)  ; FMad(a,b,c)
  %6546 = fadd fast float %6545, %6533
  %6547 = fmul fast float %6535, %5875
  %6548 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %6536, float %6547)  ; FMad(a,b,c)
  %6549 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %6537, float %6548)  ; FMad(a,b,c)
  %6550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6551 = extractvalue %dx.types.CBufRet.f32 %6550, 0
  %6552 = extractvalue %dx.types.CBufRet.f32 %6550, 1
  %6553 = extractvalue %dx.types.CBufRet.f32 %6550, 3
  %6554 = fmul fast float %6553, %6542
  %6555 = fmul fast float %6553, %6546
  %6556 = fadd fast float %6554, %6551
  %6557 = fadd fast float %6555, %6552
  %6558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6559 = extractvalue %dx.types.CBufRet.f32 %6558, 0
  %6560 = extractvalue %dx.types.CBufRet.f32 %6558, 1
  %6561 = fsub fast float %6556, %6559
  %6562 = fsub fast float %6557, %6560
  %6563 = fcmp fast olt float %6561, 0.000000e+00
  %6564 = fcmp fast olt float %6562, 0.000000e+00
  %6565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6566 = extractvalue %dx.types.CBufRet.f32 %6565, 0
  %6567 = extractvalue %dx.types.CBufRet.f32 %6565, 1
  %6568 = extractvalue %dx.types.CBufRet.f32 %6565, 2
  %6569 = extractvalue %dx.types.CBufRet.f32 %6565, 3
  %6570 = select i1 %6563, float %6566, float %6568
  %6571 = select i1 %6564, float %6567, float %6569
  %6572 = fmul fast float %6570, %6561
  %6573 = fmul fast float %6571, %6562
  %6574 = call float @dx.op.unary.f32(i32 6, float %6572)  ; FAbs(value)
  %6575 = call float @dx.op.unary.f32(i32 6, float %6573)  ; FAbs(value)
  %6576 = extractvalue %dx.types.CBufRet.f32 %5870, 0
  %6577 = call float @dx.op.binary.f32(i32 35, float %6574, float %6575)  ; FMax(a,b)
  %6578 = fsub fast float %6576, %6577
  %6579 = call float @dx.op.unary.f32(i32 7, float %6578)  ; Saturate(value)
  %6580 = fcmp fast ogt float %6579, 0.000000e+00
  br i1 %6580, label %6581, label %6622, !dx.controlflow.hints !120

; <label>:6581                                    ; preds = %6523
  %6582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6556, float %6557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6583 = extractvalue %dx.types.ResRet.f32 %6582, 1
  %6584 = fcmp fast ogt float %6583, 0.000000e+00
  br i1 %6584, label %6585, label %6617

; <label>:6585                                    ; preds = %6581
  %6586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6556, float %6557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6587 = extractvalue %dx.types.ResRet.f32 %6586, 0
  %6588 = extractvalue %dx.types.ResRet.f32 %6586, 1
  %6589 = extractvalue %dx.types.ResRet.f32 %6586, 2
  %6590 = extractvalue %dx.types.ResRet.f32 %6586, 3
  %6591 = fsub fast float 1.000000e+00, %6538
  %6592 = fsub fast float %6591, %6549
  %6593 = fmul fast float %6592, 0x400921FB60000000
  %6594 = fadd fast float %6593, 0x3FF921FB60000000
  %6595 = call float @dx.op.unary.f32(i32 13, float %6594)  ; Sin(value)
  %6596 = fadd fast float %6595, -1.000000e+00
  %6597 = fmul fast float %6596, 0x3FD45F3060000000
  %6598 = fmul fast float %6592, 0x401921FB60000000
  %6599 = fadd fast float %6598, 0x400921FB60000000
  %6600 = call float @dx.op.unary.f32(i32 13, float %6599)  ; Sin(value)
  %6601 = fadd fast float %6600, 0x3E7777A5C0000000
  %6602 = fmul fast float %6601, 0x3FC45F3060000000
  %6603 = fmul fast float %6592, 0x4022D97C80000000
  %6604 = fadd fast float %6603, 0x4012D97C80000000
  %6605 = call float @dx.op.unary.f32(i32 13, float %6604)  ; Sin(value)
  %6606 = fadd fast float %6605, 1.000000e+00
  %6607 = fmul fast float %6606, 0x3FBB2995E0000000
  %6608 = fmul fast float %6592, 0x402921FB60000000
  %6609 = fadd fast float %6608, 0x401921FB60000000
  %6610 = call float @dx.op.unary.f32(i32 13, float %6609)  ; Sin(value)
  %6611 = fadd fast float %6610, 0xBE8777A5C0000000
  %6612 = fmul fast float %6611, 0x3FB45F3060000000
  %6613 = call float @dx.op.dot4.f32(i32 56, float %6587, float %6588, float %6589, float %6590, float %6597, float %6602, float %6607, float %6612)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6614 = fmul fast float %6613, 0xBFF7154760000000
  %6615 = call float @dx.op.unary.f32(i32 21, float %6614)  ; Exp(value)
  %6616 = call float @dx.op.unary.f32(i32 7, float %6615)  ; Saturate(value)
  br label %6617

; <label>:6617                                    ; preds = %6585, %6581
  %6618 = phi float [ %6616, %6585 ], [ 1.000000e+00, %6581 ]
  %6619 = fadd fast float %6618, -1.000000e+00
  %6620 = fmul fast float %6619, %6579
  %6621 = fadd fast float %6620, 1.000000e+00
  br label %6622

; <label>:6622                                    ; preds = %6617, %6523
  %6623 = phi float [ %6621, %6617 ], [ 1.000000e+00, %6523 ]
  %6624 = fmul fast float %6623, %6519
  %6625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6626 = extractvalue %dx.types.CBufRet.f32 %6625, 0
  %6627 = extractvalue %dx.types.CBufRet.f32 %6625, 1
  %6628 = extractvalue %dx.types.CBufRet.f32 %6625, 2
  %6629 = fadd fast float %6626, %191
  %6630 = fadd fast float %6627, %192
  %6631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6632 = extractvalue %dx.types.CBufRet.f32 %6631, 1
  %6633 = fsub fast float -0.000000e+00, %6629
  %6634 = fsub fast float -0.000000e+00, %6630
  %6635 = fsub fast float %5602, %6628
  %6636 = fadd fast float %6635, %6632
  %6637 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6633, float %6634, float %6636)  ; Dot3(ax,ay,az,bx,by,bz)
  %6638 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5856, float %5857, float %5858)  ; Dot3(ax,ay,az,bx,by,bz)
  %6639 = fdiv fast float 1.000000e+00, %6638
  %6640 = fmul fast float %6639, %6637
  %6641 = fmul fast float %5856, %6640
  %6642 = fmul fast float %5857, %6640
  %6643 = fadd fast float %6641, %6629
  %6644 = fadd fast float %6642, %6630
  %6645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6646 = extractvalue %dx.types.CBufRet.f32 %6645, 0
  %6647 = extractvalue %dx.types.CBufRet.f32 %6645, 1
  %6648 = fsub fast float %6643, %6646
  %6649 = fsub fast float %6644, %6647
  %6650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6651 = extractvalue %dx.types.CBufRet.f32 %6650, 2
  %6652 = extractvalue %dx.types.CBufRet.f32 %6650, 3
  %6653 = fmul fast float %6648, %6651
  %6654 = fmul fast float %6649, %6652
  %6655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6656 = extractvalue %dx.types.CBufRet.i32 %6655, 3
  %6657 = icmp eq i32 %6656, 0
  br i1 %6657, label %6663, label %6658

; <label>:6658                                    ; preds = %6622
  %6659 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6653, float %6654, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6660 = extractvalue %dx.types.ResRet.f32 %6659, 0
  %6661 = extractvalue %dx.types.ResRet.f32 %6659, 1
  %6662 = extractvalue %dx.types.ResRet.f32 %6659, 2
  br label %6668

; <label>:6663                                    ; preds = %6622
  %6664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6653, float %6654, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6665 = extractvalue %dx.types.ResRet.f32 %6664, 0
  %6666 = extractvalue %dx.types.ResRet.f32 %6664, 1
  %6667 = extractvalue %dx.types.ResRet.f32 %6664, 2
  br label %6668

; <label>:6668                                    ; preds = %6663, %6658
  %6669 = phi float [ %6660, %6658 ], [ %6665, %6663 ]
  %6670 = phi float [ %6661, %6658 ], [ %6666, %6663 ]
  %6671 = phi float [ %6662, %6658 ], [ %6667, %6663 ]
  %6672 = extractvalue %dx.types.CBufRet.f32 %6631, 2
  %6673 = fmul fast float %6672, %6669
  %6674 = extractvalue %dx.types.CBufRet.f32 %6631, 0
  %6675 = fsub fast float %6640, %6674
  %6676 = fsub fast float %6675, %6673
  %6677 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6676)  ; FMax(a,b)
  %6678 = fmul fast float %6677, %6670
  %6679 = call float @dx.op.binary.f32(i32 36, float %6671, float %6678)  ; FMin(a,b)
  %6680 = fmul fast float %6679, 0xBFF7154760000000
  %6681 = call float @dx.op.unary.f32(i32 21, float %6680)  ; Exp(value)
  %6682 = fmul fast float %6624, %6681
  br label %6683

; <label>:6683                                    ; preds = %6668, %6518
  %6684 = phi float [ %6682, %6668 ], [ %6519, %6518 ]
  %6685 = call float @dx.op.binary.f32(i32 36, float %6684, float %6684)  ; FMin(a,b)
  %6686 = call float @dx.op.binary.f32(i32 36, float %6684, float %6685)  ; FMin(a,b)
  %6687 = fcmp fast ogt float %6686, 0.000000e+00
  br i1 %6687, label %6688, label %6951, !dx.controlflow.hints !121

; <label>:6688                                    ; preds = %6683
  %6689 = fmul fast float %6684, %5867
  %6690 = fmul fast float %6684, %5868
  %6691 = fmul fast float %6684, %5869
  %6692 = fsub fast float %193, %4798
  %6693 = fcmp fast ogt float %6692, 0.000000e+00
  %6694 = fmul fast float %5856, 5.120000e+02
  %6695 = fmul fast float %5857, 5.120000e+02
  %6696 = fmul fast float %5858, 5.120000e+02
  %6697 = fadd fast float %6696, %193
  %6698 = fsub fast float %4798, %6697
  %6699 = fmul fast float %6698, 2.000000e+00
  %6700 = fadd fast float %6699, %6697
  %6701 = select i1 %6693, float %6700, float %6697
  %6702 = fsub fast float %6701, %193
  %6703 = call float @dx.op.dot3.f32(i32 55, float %6694, float %6695, float %6702, float %6694, float %6695, float %6702)  ; Dot3(ax,ay,az,bx,by,bz)
  %6704 = call float @dx.op.unary.f32(i32 25, float %6703)  ; Rsqrt(value)
  %6705 = fmul fast float %6704, %6694
  %6706 = fmul fast float %6704, %6695
  %6707 = fmul fast float %6704, %6702
  %6708 = fsub fast float %4798, %193
  %6709 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6708)  ; Dot3(ax,ay,az,bx,by,bz)
  %6710 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6705, float %6706, float %6707)  ; Dot3(ax,ay,az,bx,by,bz)
  %6711 = fdiv fast float 1.000000e+00, %6710
  %6712 = fmul fast float %6711, %6709
  %6713 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6692, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6714 = fcmp fast ogt float %6713, 0.000000e+00
  %6715 = fcmp fast olt float %6713, 0.000000e+00
  %6716 = zext i1 %6714 to i32
  %6717 = zext i1 %6715 to i32
  %6718 = sub nsw i32 %6716, %6717
  %6719 = sitofp i32 %6718 to float
  %6720 = fsub fast float %6701, %4798
  %6721 = call float @dx.op.dot3.f32(i32 55, float %6694, float %6695, float %6720, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6722 = fcmp fast ogt float %6721, 0.000000e+00
  %6723 = fcmp fast olt float %6721, 0.000000e+00
  %6724 = zext i1 %6722 to i32
  %6725 = zext i1 %6723 to i32
  %6726 = sub nsw i32 %6724, %6725
  %6727 = sitofp i32 %6726 to float
  %6728 = fcmp fast une float %6719, %6727
  br i1 %6728, label %6729, label %6739

; <label>:6729                                    ; preds = %6688
  %6730 = fmul fast float %6712, %6707
  %6731 = fmul fast float %6712, %6706
  %6732 = fmul fast float %6712, %6705
  %6733 = fmul fast float %6732, %6732
  %6734 = fmul fast float %6731, %6731
  %6735 = fadd fast float %6733, %6734
  %6736 = fmul fast float %6730, %6730
  %6737 = fadd fast float %6735, %6736
  %6738 = call float @dx.op.unary.f32(i32 24, float %6737)  ; Sqrt(value)
  br label %6749

; <label>:6739                                    ; preds = %6688
  %6740 = icmp slt i32 %6718, 0
  br i1 %6740, label %6741, label %6749

; <label>:6741                                    ; preds = %6739
  %6742 = fsub fast float %193, %6701
  %6743 = fmul fast float %6694, %6694
  %6744 = fmul fast float %6695, %6695
  %6745 = fadd fast float %6743, %6744
  %6746 = fmul fast float %6742, %6742
  %6747 = fadd fast float %6745, %6746
  %6748 = call float @dx.op.unary.f32(i32 24, float %6747)  ; Sqrt(value)
  br label %6749

; <label>:6749                                    ; preds = %6741, %6739, %6729
  %6750 = phi float [ %6738, %6729 ], [ %6748, %6741 ], [ 0.000000e+00, %6739 ]
  %6751 = fsub fast float -0.000000e+00, %6750
  %6752 = select i1 %6693, float -0.000000e+00, float %6751
  %6753 = fmul fast float %4799, 0x3FF7154760000000
  %6754 = fmul fast float %6753, %6752
  %6755 = fmul fast float %4800, 0x3FF7154760000000
  %6756 = fmul fast float %6755, %6752
  %6757 = fmul fast float %4801, 0x3FF7154760000000
  %6758 = fmul fast float %6757, %6752
  %6759 = call float @dx.op.unary.f32(i32 21, float %6754)  ; Exp(value)
  %6760 = call float @dx.op.unary.f32(i32 21, float %6756)  ; Exp(value)
  %6761 = call float @dx.op.unary.f32(i32 21, float %6758)  ; Exp(value)
  %6762 = call float @dx.op.unary.f32(i32 7, float %6759)  ; Saturate(value)
  %6763 = call float @dx.op.unary.f32(i32 7, float %6760)  ; Saturate(value)
  %6764 = call float @dx.op.unary.f32(i32 7, float %6761)  ; Saturate(value)
  %6765 = fmul fast float %6689, %6762
  %6766 = fmul fast float %6690, %6763
  %6767 = fmul fast float %6691, %6764
  %6768 = fsub fast float %5856, %5590
  %6769 = fsub fast float %5857, %5589
  %6770 = fsub fast float %5858, %5588
  %6771 = call float @dx.op.dot3.f32(i32 55, float %6768, float %6769, float %6770, float %6768, float %6769, float %6770)  ; Dot3(ax,ay,az,bx,by,bz)
  %6772 = call float @dx.op.unary.f32(i32 25, float %6771)  ; Rsqrt(value)
  %6773 = fmul fast float %6772, %6768
  %6774 = fmul fast float %6772, %6769
  %6775 = fmul fast float %6772, %6770
  %6776 = call float @dx.op.dot3.f32(i32 55, float %5856, float %5857, float %5858, float %5597, float %5598, float %5599)  ; Dot3(ax,ay,az,bx,by,bz)
  %6777 = call float @dx.op.dot3.f32(i32 55, float %5587, float %5586, float %5585, float %6773, float %6774, float %6775)  ; Dot3(ax,ay,az,bx,by,bz)
  %6778 = call float @dx.op.unary.f32(i32 7, float %6776)  ; Saturate(value)
  %6779 = fmul fast float %6778, %6778
  %6780 = fmul fast float %6779, %5618
  %6781 = call float @dx.op.unary.f32(i32 7, float %6780)  ; Saturate(value)
  %6782 = fmul fast float %6781, %6778
  %6783 = call float @dx.op.dot3.f32(i32 55, float %5597, float %5598, float %5599, float %6773, float %6774, float %6775)  ; Dot3(ax,ay,az,bx,by,bz)
  %6784 = fmul fast float %6783, %6783
  %6785 = call float @dx.op.unary.f32(i32 6, float %6776)  ; FAbs(value)
  %6786 = fsub fast float 1.000000e+00, %5600
  %6787 = call float @dx.op.binary.f32(i32 35, float %6786, float 0x3F847AE140000000)  ; FMax(a,b)
  %6788 = fmul fast float %6787, %6787
  %6789 = fmul fast float %6788, %6788
  %6790 = fsub fast float 1.000000e+00, %6789
  %6791 = fmul fast float %5605, %5605
  %6792 = fmul fast float %6791, %6790
  %6793 = fadd fast float %6792, %6789
  %6794 = bitcast float %6793 to i32
  %6795 = ashr i32 %6794, 1
  %6796 = add nsw i32 %6795, 532487669
  %6797 = bitcast i32 %6796 to float
  %6798 = fadd fast float %6797, %5605
  %6799 = fmul fast float %6789, %6784
  %6800 = fsub fast float 1.000000e+00, %6784
  %6801 = fadd fast float %6800, %6799
  %6802 = fmul fast float %6785, %6785
  %6803 = fmul fast float %6802, %6790
  %6804 = fadd fast float %6803, %6789
  %6805 = bitcast float %6804 to i32
  %6806 = ashr i32 %6805, 1
  %6807 = add nsw i32 %6806, 532487669
  %6808 = bitcast i32 %6807 to float
  %6809 = fadd fast float %6808, %6785
  %6810 = fmul fast float %6801, %6801
  %6811 = fmul fast float %6810, %6798
  %6812 = fmul fast float %6811, %6809
  %6813 = fdiv fast float 0x3FF0A00000000000, %6812
  %6814 = fmul fast float %6813, %6789
  %6815 = fmul fast float %5718, 0x3FF9999980000000
  %6816 = fsub fast float 5.000000e+00, %6815
  %6817 = call float @dx.op.unary.f32(i32 6, float %6777)  ; FAbs(value)
  %6818 = fsub fast float 1.000000e+00, %6817
  %6819 = fmul fast float %5718, 0x41D9660740000000
  %6820 = fadd fast float %6819, 0xC1EFBF8940000000
  %6821 = bitcast float %6818 to i32
  %6822 = sitofp i32 %6821 to float
  %6823 = fmul fast float %6822, %6816
  %6824 = fadd fast float %6820, %6823
  %6825 = fptosi float %6824 to i32
  %6826 = bitcast i32 %6825 to float
  %6827 = fsub fast float 1.000000e+00, %5594
  %6828 = fsub fast float 1.000000e+00, %5595
  %6829 = fsub fast float 1.000000e+00, %5603
  %6830 = fmul fast float %6826, %6827
  %6831 = fmul fast float %6826, %6828
  %6832 = fmul fast float %6826, %6829
  %6833 = fadd fast float %6830, %5594
  %6834 = fadd fast float %6831, %5595
  %6835 = fadd fast float %6832, %5603
  br i1 %5741, label %6836, label %6859

; <label>:6836                                    ; preds = %6749
  %6837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %4394, float %6817, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6838 = extractvalue %dx.types.ResRet.f32 %6837, 0
  %6839 = extractvalue %dx.types.ResRet.f32 %6837, 1
  %6840 = extractvalue %dx.types.ResRet.f32 %6837, 2
  %6841 = fadd fast float %6838, -5.000000e-01
  %6842 = fadd fast float %6839, -5.000000e-01
  %6843 = fadd fast float %6840, -5.000000e-01
  %6844 = fmul fast float %5594, 4.000000e+00
  %6845 = fmul fast float %6844, %6827
  %6846 = fmul fast float %6845, %6841
  %6847 = fmul fast float %5595, 4.000000e+00
  %6848 = fmul fast float %6847, %6828
  %6849 = fmul fast float %6848, %6842
  %6850 = fmul fast float %5603, 4.000000e+00
  %6851 = fmul fast float %6850, %6829
  %6852 = fmul fast float %6851, %6843
  %6853 = fadd fast float %6846, %6833
  %6854 = fadd fast float %6849, %6834
  %6855 = fadd fast float %6852, %6835
  %6856 = call float @dx.op.unary.f32(i32 7, float %6853)  ; Saturate(value)
  %6857 = call float @dx.op.unary.f32(i32 7, float %6854)  ; Saturate(value)
  %6858 = call float @dx.op.unary.f32(i32 7, float %6855)  ; Saturate(value)
  br label %6859

; <label>:6859                                    ; preds = %6836, %6749
  %6860 = phi float [ %6856, %6836 ], [ %6833, %6749 ]
  %6861 = phi float [ %6857, %6836 ], [ %6834, %6749 ]
  %6862 = phi float [ %6858, %6836 ], [ %6835, %6749 ]
  %6863 = fmul fast float %6776, 9.843750e-01
  %6864 = fadd fast float %6863, 7.812500e-03
  %6865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6864, float %5722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6866 = extractvalue %dx.types.ResRet.f32 %6865, 0
  %6867 = extractvalue %dx.types.ResRet.f32 %6865, 1
  %6868 = extractvalue %dx.types.ResRet.f32 %6865, 2
  %6869 = extractvalue %dx.types.ResRet.f32 %6865, 3
  %6870 = fsub fast float %6868, %6866
  %6871 = fsub fast float %6869, %6867
  %6872 = fmul fast float %6870, %5728
  %6873 = fmul fast float %6871, %5728
  %6874 = fadd fast float %6872, %6866
  %6875 = fadd fast float %6873, %6867
  %6876 = fmul fast float %6874, %5594
  %6877 = fmul fast float %6874, %5595
  %6878 = fmul fast float %6874, %5603
  %6879 = fadd fast float %6876, %6875
  %6880 = fadd fast float %6877, %6875
  %6881 = fadd fast float %6878, %6875
  br i1 %5741, label %6882, label %6905

; <label>:6882                                    ; preds = %6859
  %6883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %4394, float %6776, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6884 = extractvalue %dx.types.ResRet.f32 %6883, 0
  %6885 = extractvalue %dx.types.ResRet.f32 %6883, 1
  %6886 = extractvalue %dx.types.ResRet.f32 %6883, 2
  %6887 = fadd fast float %6884, -5.000000e-01
  %6888 = fadd fast float %6885, -5.000000e-01
  %6889 = fadd fast float %6886, -5.000000e-01
  %6890 = fmul fast float %5594, 4.000000e+00
  %6891 = fmul fast float %6890, %6827
  %6892 = fmul fast float %6891, %6887
  %6893 = fmul fast float %5595, 4.000000e+00
  %6894 = fmul fast float %6893, %6828
  %6895 = fmul fast float %6894, %6888
  %6896 = fmul fast float %5603, 4.000000e+00
  %6897 = fmul fast float %6896, %6829
  %6898 = fmul fast float %6897, %6889
  %6899 = fadd fast float %6892, %6879
  %6900 = fadd fast float %6895, %6880
  %6901 = fadd fast float %6898, %6881
  %6902 = call float @dx.op.unary.f32(i32 7, float %6899)  ; Saturate(value)
  %6903 = call float @dx.op.unary.f32(i32 7, float %6900)  ; Saturate(value)
  %6904 = call float @dx.op.unary.f32(i32 7, float %6901)  ; Saturate(value)
  br label %6905

; <label>:6905                                    ; preds = %6882, %6859
  %6906 = phi float [ %6902, %6882 ], [ %6879, %6859 ]
  %6907 = phi float [ %6903, %6882 ], [ %6880, %6859 ]
  %6908 = phi float [ %6904, %6882 ], [ %6881, %6859 ]
  %6909 = call float @dx.op.binary.f32(i32 35, float %6907, float %6908)  ; FMax(a,b)
  %6910 = call float @dx.op.binary.f32(i32 35, float %6906, float %6909)  ; FMax(a,b)
  %6911 = fsub fast float 1.000000e+00, %6910
  %6912 = fmul fast float %6860, %6814
  %6913 = fmul fast float %6861, %6814
  %6914 = fmul fast float %6862, %6814
  %6915 = fsub fast float 1.000000e+00, %6777
  %6916 = bitcast float %6915 to i32
  %6917 = sitofp i32 %6916 to float
  %6918 = fmul fast float %6917, 5.000000e+00
  %6919 = fadd fast float %6918, 0xC1EFBF8940000000
  %6920 = fptosi float %6919 to i32
  %6921 = bitcast i32 %6920 to float
  %6922 = fmul fast float %6921, %4395
  %6923 = fmul fast float %6911, %6922
  %6924 = fmul fast float %6923, %5791
  %6925 = fmul fast float %6923, %5792
  %6926 = fmul fast float %6923, %5793
  %6927 = fadd fast float %6924, %6912
  %6928 = fadd fast float %6925, %6913
  %6929 = fadd fast float %6926, %6914
  %6930 = fmul fast float %6782, %6765
  %6931 = fmul fast float %6930, %6911
  %6932 = fmul fast float %6782, %6766
  %6933 = fmul fast float %6932, %6911
  %6934 = fmul fast float %6782, %6767
  %6935 = fmul fast float %6934, %6911
  %6936 = fmul fast float %6930, %6927
  %6937 = fmul fast float %6932, %6928
  %6938 = fmul fast float %6934, %6929
  %6939 = fadd fast float %6931, %5775
  %6940 = fmul fast float %6939, %4391
  %6941 = fadd fast float %6933, %5776
  %6942 = fmul fast float %6941, %4391
  %6943 = fadd fast float %6935, %5777
  %6944 = fmul fast float %6943, %4391
  %6945 = fadd fast float %6936, %5844
  %6946 = fmul fast float %6945, %4391
  %6947 = fadd fast float %6937, %5847
  %6948 = fmul fast float %6947, %4391
  %6949 = fadd fast float %6938, %5850
  %6950 = fmul fast float %6949, %4391
  br label %6951

; <label>:6951                                    ; preds = %6905, %6683, %5768
  %6952 = phi float [ %5845, %5768 ], [ %5845, %6683 ], [ %6946, %6905 ]
  %6953 = phi float [ %5848, %5768 ], [ %5848, %6683 ], [ %6948, %6905 ]
  %6954 = phi float [ %5851, %5768 ], [ %5851, %6683 ], [ %6950, %6905 ]
  %6955 = phi float [ %5840, %5768 ], [ %5840, %6683 ], [ %6940, %6905 ]
  %6956 = phi float [ %5841, %5768 ], [ %5841, %6683 ], [ %6942, %6905 ]
  %6957 = phi float [ %5842, %5768 ], [ %5842, %6683 ], [ %6944, %6905 ]
  %6958 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6959 = extractvalue %dx.types.CBufRet.i32 %6958, 0
  %6960 = icmp eq i32 %6959, 0
  br i1 %6960, label %7593, label %6961

; <label>:6961                                    ; preds = %6951
  %6962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6963 = extractvalue %dx.types.CBufRet.f32 %6962, 2
  %6964 = extractvalue %dx.types.CBufRet.f32 %6962, 3
  %6965 = fmul fast float %6963, %104
  %6966 = fmul fast float %6964, %105
  %6967 = fptoui float %6965 to i32
  %6968 = fptoui float %6966 to i32
  %6969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6970 = extractvalue %dx.types.CBufRet.f32 %6969, 0
  %6971 = extractvalue %dx.types.CBufRet.f32 %6969, 2
  %6972 = extractvalue %dx.types.CBufRet.f32 %6969, 3
  %6973 = fadd fast float %95, -4.000000e+00
  %6974 = call float @dx.op.binary.f32(i32 35, float %6973, float 0.000000e+00)  ; FMax(a,b)
  %6975 = fadd fast float %6974, %6970
  %6976 = fmul fast float %6975, %6971
  %6977 = call float @dx.op.unary.f32(i32 23, float %6976)  ; Log(value)
  %6978 = fmul fast float %6977, %6972
  %6979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6980 = extractvalue %dx.types.CBufRet.f32 %6979, 2
  %6981 = fmul fast float %6978, %6980
  %6982 = call float @dx.op.unary.f32(i32 7, float %6981)  ; Saturate(value)
  %6983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6984 = extractvalue %dx.types.CBufRet.i32 %6983, 1
  %6985 = add i32 %6984, -1
  %6986 = uitofp i32 %6984 to float
  %6987 = fmul fast float %6986, %6982
  %6988 = fptoui float %6987 to i32
  %6989 = call i32 @dx.op.binary.i32(i32 40, i32 %6988, i32 %6985)  ; UMin(a,b)
  %6990 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6991 = extractvalue %dx.types.CBufRet.i32 %6990, 2
  %6992 = extractvalue %dx.types.CBufRet.i32 %6990, 3
  %6993 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6968, i32 %6991, i32 %6967)  ; UMad(a,b,c)
  %6994 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6989, i32 %6992, i32 %6993)  ; UMad(a,b,c)
  %6995 = add nsw i32 %6959, -1
  %6996 = call i32 @dx.op.binary.i32(i32 37, i32 %6995, i32 0)  ; IMax(a,b)
  %6997 = call float @dx.op.binary.f32(i32 35, float %95, float 0.000000e+00)  ; FMax(a,b)
  %6998 = fptoui float %6997 to i32
  %6999 = lshr i32 %6998, 5
  %7000 = call i32 @dx.op.binary.i32(i32 40, i32 %6999, i32 8191)  ; UMin(a,b)
  %7001 = shl i32 %7000, 2
  %7002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7001, i32 undef)  ; BufferLoad(srv,index,wot)
  %7003 = extractvalue %dx.types.ResRet.i32 %7002, 0
  %7004 = lshr i32 %7003, 16
  %7005 = and i32 %7003, 65535
  %7006 = lshr i32 %7003, 21
  %7007 = lshr i32 %7005, 5
  %7008 = call i32 @dx.op.binary.i32(i32 40, i32 %7007, i32 %6996)  ; UMin(a,b)
  %7009 = icmp ugt i32 %7006, %7008
  br i1 %7009, label %7593, label %7010

; <label>:7010                                    ; preds = %6961
  br label %7011

; <label>:7011                                    ; preds = %7583, %7010
  %7012 = phi i32 [ %7590, %7583 ], [ %7006, %7010 ]
  %7013 = phi float [ %7584, %7583 ], [ %6952, %7010 ]
  %7014 = phi float [ %7585, %7583 ], [ %6953, %7010 ]
  %7015 = phi float [ %7586, %7583 ], [ %6954, %7010 ]
  %7016 = phi float [ %7587, %7583 ], [ %6955, %7010 ]
  %7017 = phi float [ %7588, %7583 ], [ %6956, %7010 ]
  %7018 = phi float [ %7589, %7583 ], [ %6957, %7010 ]
  %7019 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7020 = extractvalue %dx.types.CBufRet.i32 %7019, 0
  %7021 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6994, i32 %7020, i32 %7012)  ; UMad(a,b,c)
  %7022 = shl i32 %7021, 2
  %7023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7022, i32 undef)  ; BufferLoad(srv,index,wot)
  %7024 = extractvalue %dx.types.ResRet.i32 %7023, 0
  %7025 = shl i32 %7012, 5
  %7026 = sub nsw i32 %7004, %7025
  %7027 = call i32 @dx.op.binary.i32(i32 37, i32 %7026, i32 0)  ; IMax(a,b)
  %7028 = call i32 @dx.op.binary.i32(i32 38, i32 %7027, i32 31)  ; IMin(a,b)
  %7029 = sub nsw i32 1, %7004
  %7030 = add nsw i32 %7029, %7005
  %7031 = call i32 @dx.op.binary.i32(i32 37, i32 %7030, i32 0)  ; IMax(a,b)
  %7032 = call i32 @dx.op.binary.i32(i32 38, i32 %7031, i32 32)  ; IMin(a,b)
  %7033 = and i32 %7032, 31
  %7034 = shl i32 -1, %7033
  %7035 = xor i32 %7034, -1
  %7036 = and i32 %7028, 31
  %7037 = shl i32 %7035, %7036
  %7038 = icmp eq i32 %7032, 32
  %7039 = select i1 %7038, i32 -1, i32 %7037
  %7040 = and i32 %7039, %7024
  %7041 = icmp eq i32 %7040, 0
  br i1 %7041, label %7583, label %7042

; <label>:7042                                    ; preds = %7011
  br label %7043

; <label>:7043                                    ; preds = %7177, %7042
  %7044 = phi i32 [ %7055, %7177 ], [ %7040, %7042 ]
  %7045 = phi float [ %7178, %7177 ], [ %7013, %7042 ]
  %7046 = phi float [ %7179, %7177 ], [ %7014, %7042 ]
  %7047 = phi float [ %7180, %7177 ], [ %7015, %7042 ]
  %7048 = phi float [ %7181, %7177 ], [ %7016, %7042 ]
  %7049 = phi float [ %7182, %7177 ], [ %7017, %7042 ]
  %7050 = phi float [ %7183, %7177 ], [ %7018, %7042 ]
  %7051 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7044)  ; FirstbitLo(value)
  %7052 = add i32 %7051, %7025
  %7053 = and i32 %7051, 31
  %7054 = shl i32 1, %7053
  %7055 = xor i32 %7054, %7044
  %7056 = mul i32 %7052, 112
  %7057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7056, i32 undef)  ; BufferLoad(srv,index,wot)
  %7058 = extractvalue %dx.types.ResRet.f32 %7057, 0
  %7059 = extractvalue %dx.types.ResRet.f32 %7057, 1
  %7060 = extractvalue %dx.types.ResRet.f32 %7057, 2
  %7061 = or i32 %7056, 12
  %7062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7061, i32 undef)  ; BufferLoad(srv,index,wot)
  %7063 = extractvalue %dx.types.ResRet.f32 %7062, 0
  %7064 = add i32 %7056, 16
  %7065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7064, i32 undef)  ; BufferLoad(srv,index,wot)
  %7066 = extractvalue %dx.types.ResRet.f32 %7065, 0
  %7067 = extractvalue %dx.types.ResRet.f32 %7065, 1
  %7068 = extractvalue %dx.types.ResRet.f32 %7065, 2
  %7069 = add i32 %7056, 28
  %7070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7069, i32 undef)  ; BufferLoad(srv,index,wot)
  %7071 = extractvalue %dx.types.ResRet.i32 %7070, 0
  %7072 = add i32 %7056, 44
  %7073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7072, i32 undef)  ; BufferLoad(srv,index,wot)
  %7074 = extractvalue %dx.types.ResRet.f32 %7073, 0
  %7075 = add i32 %7056, 48
  %7076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7075, i32 undef)  ; BufferLoad(srv,index,wot)
  %7077 = extractvalue %dx.types.ResRet.f32 %7076, 0
  %7078 = extractvalue %dx.types.ResRet.f32 %7076, 1
  %7079 = extractvalue %dx.types.ResRet.f32 %7076, 2
  %7080 = extractvalue %dx.types.ResRet.f32 %7076, 3
  %7081 = add i32 %7056, 64
  %7082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7081, i32 undef)  ; BufferLoad(srv,index,wot)
  %7083 = extractvalue %dx.types.ResRet.f32 %7082, 0
  %7084 = extractvalue %dx.types.ResRet.f32 %7082, 1
  %7085 = extractvalue %dx.types.ResRet.f32 %7082, 2
  %7086 = extractvalue %dx.types.ResRet.f32 %7082, 3
  %7087 = add i32 %7056, 80
  %7088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7087, i32 undef)  ; BufferLoad(srv,index,wot)
  %7089 = extractvalue %dx.types.ResRet.f32 %7088, 1
  %7090 = extractvalue %dx.types.ResRet.f32 %7088, 2
  %7091 = add i32 %7056, 92
  %7092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7091, i32 undef)  ; BufferLoad(srv,index,wot)
  %7093 = extractvalue %dx.types.ResRet.i32 %7092, 0
  %7094 = call float @dx.op.dot3.f32(i32 55, float %7058, float %7059, float %7060, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7095 = select i1 %250, float %7089, float %7058
  %7096 = select i1 %250, float %7094, float %7059
  %7097 = select i1 %250, float %7090, float %7060
  %7098 = and i32 %7093, 65535
  %7099 = uitofp i32 %7098 to float
  %7100 = lshr i32 %7093, 16
  %7101 = uitofp i32 %7100 to float
  %7102 = and i32 %7071, 65535
  %7103 = and i32 %7071, 50331648
  %7104 = icmp eq i32 %7103, 33554432
  %7105 = fsub fast float %7077, %191
  %7106 = fsub fast float %7078, %192
  %7107 = fsub fast float %7079, %193
  %7108 = call float @dx.op.dot3.f32(i32 55, float %7105, float %7106, float %7107, float %7105, float %7106, float %7107)  ; Dot3(ax,ay,az,bx,by,bz)
  %7109 = call float @dx.op.unary.f32(i32 24, float %7108)  ; Sqrt(value)
  %7110 = fdiv fast float 1.000000e+00, %7109
  %7111 = fmul fast float %7110, %7105
  %7112 = fmul fast float %7110, %7106
  %7113 = fmul fast float %7110, %7107
  %7114 = fadd fast float %7109, %7063
  %7115 = fdiv fast float 1.000000e+00, %7114
  %7116 = fmul float %7074, %7115
  %7117 = fmul float %7116, %7116
  %7118 = call float @dx.op.unary.f32(i32 7, float %7117)  ; Saturate(value)
  br i1 %7104, label %7119, label %7140

; <label>:7119                                    ; preds = %7043
  %7120 = fmul fast float %7085, %7066
  %7121 = fmul fast float %7085, %7067
  %7122 = fmul fast float %7085, %7068
  %7123 = fadd fast float %7105, %7120
  %7124 = fadd fast float %7106, %7121
  %7125 = fadd fast float %7107, %7122
  %7126 = call float @dx.op.dot3.f32(i32 55, float %7123, float %7124, float %7125, float %7123, float %7124, float %7125)  ; Dot3(ax,ay,az,bx,by,bz)
  %7127 = call float @dx.op.unary.f32(i32 25, float %7126)  ; Rsqrt(value)
  %7128 = fmul fast float %7127, %7123
  %7129 = fmul fast float %7127, %7124
  %7130 = fmul fast float %7127, %7125
  %7131 = fsub fast float %191, %7077
  %7132 = fsub fast float %192, %7078
  %7133 = fsub fast float %193, %7079
  %7134 = fsub fast float -0.000000e+00, %7131
  %7135 = fsub fast float -0.000000e+00, %7132
  %7136 = fsub fast float -0.000000e+00, %7133
  %7137 = call float @dx.op.dot3.f32(i32 55, float %7134, float %7135, float %7136, float %7066, float %7067, float %7068)  ; Dot3(ax,ay,az,bx,by,bz)
  %7138 = fcmp fast ogt float %7137, 0.000000e+00
  %7139 = uitofp i1 %7138 to float
  br label %7140

; <label>:7140                                    ; preds = %7119, %7043
  %7141 = phi float [ %7139, %7119 ], [ 1.000000e+00, %7043 ]
  %7142 = phi float [ %7128, %7119 ], [ %7111, %7043 ]
  %7143 = phi float [ %7129, %7119 ], [ %7112, %7043 ]
  %7144 = phi float [ %7130, %7119 ], [ %7113, %7043 ]
  %7145 = call float @dx.op.dot3.f32(i32 55, float %7066, float %7067, float %7068, float %7142, float %7143, float %7144)  ; Dot3(ax,ay,az,bx,by,bz)
  %7146 = fmul fast float %7145, %7145
  %7147 = call float @dx.op.unary.f32(i32 7, float %7146)  ; Saturate(value)
  %7148 = fsub fast float 1.000000e+00, %7147
  %7149 = fmul fast float %7148, 5.000000e-01
  %7150 = fcmp fast ogt float %7145, 0.000000e+00
  %7151 = fsub fast float 1.000000e+00, %7149
  %7152 = select i1 %7150, float %7149, float %7151
  %7153 = fmul fast float %7152, %7101
  %7154 = fadd fast float %7153, %7099
  %7155 = fmul fast float %7154, 0x3EF0001000000000
  %7156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %48, float %7155, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7157 = extractvalue %dx.types.ResRet.f32 %7156, 0
  %7158 = fmul fast float %7145, %7083
  %7159 = fadd fast float %7158, %7084
  %7160 = call float @dx.op.unary.f32(i32 7, float %7159)  ; Saturate(value)
  %7161 = select i1 %7104, float 1.000000e+00, float %7160
  %7162 = select i1 %7104, float %7160, float 1.000000e+00
  %7163 = fmul fast float %7109, %7080
  %7164 = fsub fast float 1.000000e+00, %7163
  %7165 = fmul fast float %7164, %7086
  %7166 = call float @dx.op.unary.f32(i32 7, float %7165)  ; Saturate(value)
  %7167 = fmul fast float %7166, %7162
  %7168 = fmul fast float %7167, 2.000000e+00
  %7169 = fsub fast float 3.000000e+00, %7168
  %7170 = fmul fast float %7157, %7141
  %7171 = fmul fast float %7167, %7167
  %7172 = fmul fast float %7171, %7170
  %7173 = fmul fast float %7172, %7169
  %7174 = call float @dx.op.binary.f32(i32 36, float %7173, float %7173)  ; FMin(a,b)
  %7175 = call float @dx.op.binary.f32(i32 36, float %7173, float %7174)  ; FMin(a,b)
  %7176 = fcmp fast ogt float %7175, 0.000000e+00
  br i1 %7176, label %7185, label %7177, !dx.controlflow.hints !122

; <label>:7177                                    ; preds = %7539, %7285, %7140
  %7178 = phi float [ %7045, %7285 ], [ %7045, %7140 ], [ %7579, %7539 ]
  %7179 = phi float [ %7046, %7285 ], [ %7046, %7140 ], [ %7580, %7539 ]
  %7180 = phi float [ %7047, %7285 ], [ %7047, %7140 ], [ %7581, %7539 ]
  %7181 = phi float [ %7048, %7285 ], [ %7048, %7140 ], [ %7573, %7539 ]
  %7182 = phi float [ %7049, %7285 ], [ %7049, %7140 ], [ %7574, %7539 ]
  %7183 = phi float [ %7050, %7285 ], [ %7050, %7140 ], [ %7575, %7539 ]
  %7184 = icmp eq i32 %7044, %7054
  br i1 %7184, label %7582, label %7043

; <label>:7185                                    ; preds = %7140
  %7186 = icmp eq i32 %7102, 255
  br i1 %7186, label %7285, label %7187, !dx.controlflow.hints !123

; <label>:7187                                    ; preds = %7185
  %7188 = mul nuw nsw i32 %7102, 176
  %7189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7188, i32 undef)  ; BufferLoad(srv,index,wot)
  %7190 = extractvalue %dx.types.ResRet.f32 %7189, 0
  %7191 = extractvalue %dx.types.ResRet.f32 %7189, 1
  %7192 = extractvalue %dx.types.ResRet.f32 %7189, 2
  %7193 = extractvalue %dx.types.ResRet.f32 %7189, 3
  %7194 = add nuw nsw i32 %7188, 16
  %7195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7194, i32 undef)  ; BufferLoad(srv,index,wot)
  %7196 = extractvalue %dx.types.ResRet.f32 %7195, 0
  %7197 = extractvalue %dx.types.ResRet.f32 %7195, 1
  %7198 = add nuw nsw i32 %7188, 32
  %7199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7198, i32 undef)  ; BufferLoad(srv,index,wot)
  %7200 = extractvalue %dx.types.ResRet.f32 %7199, 0
  %7201 = extractvalue %dx.types.ResRet.f32 %7199, 1
  %7202 = extractvalue %dx.types.ResRet.f32 %7199, 2
  %7203 = add nuw nsw i32 %7188, 48
  %7204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7203, i32 undef)  ; BufferLoad(srv,index,wot)
  %7205 = extractvalue %dx.types.ResRet.f32 %7204, 0
  %7206 = extractvalue %dx.types.ResRet.f32 %7204, 1
  %7207 = extractvalue %dx.types.ResRet.f32 %7204, 2
  %7208 = extractvalue %dx.types.ResRet.f32 %7204, 3
  %7209 = add nuw nsw i32 %7188, 64
  %7210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7209, i32 undef)  ; BufferLoad(srv,index,wot)
  %7211 = extractvalue %dx.types.ResRet.f32 %7210, 0
  %7212 = extractvalue %dx.types.ResRet.f32 %7210, 1
  %7213 = extractvalue %dx.types.ResRet.f32 %7210, 2
  %7214 = extractvalue %dx.types.ResRet.f32 %7210, 3
  %7215 = add nuw nsw i32 %7188, 80
  %7216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7215, i32 undef)  ; BufferLoad(srv,index,wot)
  %7217 = extractvalue %dx.types.ResRet.f32 %7216, 0
  %7218 = extractvalue %dx.types.ResRet.f32 %7216, 1
  %7219 = extractvalue %dx.types.ResRet.f32 %7216, 2
  %7220 = extractvalue %dx.types.ResRet.f32 %7216, 3
  %7221 = add nuw nsw i32 %7188, 96
  %7222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7221, i32 undef)  ; BufferLoad(srv,index,wot)
  %7223 = extractvalue %dx.types.ResRet.f32 %7222, 0
  %7224 = extractvalue %dx.types.ResRet.f32 %7222, 1
  %7225 = extractvalue %dx.types.ResRet.f32 %7222, 2
  %7226 = extractvalue %dx.types.ResRet.f32 %7222, 3
  %7227 = bitcast float %7197 to i32
  %7228 = fmul fast float %7202, %111
  %7229 = fmul fast float %7202, %112
  %7230 = fmul fast float %7202, %113
  %7231 = fadd fast float %7228, %191
  %7232 = fadd fast float %7229, %192
  %7233 = fadd fast float %7230, %193
  %7234 = fmul fast float %7231, %7205
  %7235 = call float @dx.op.tertiary.f32(i32 46, float %7232, float %7211, float %7234)  ; FMad(a,b,c)
  %7236 = call float @dx.op.tertiary.f32(i32 46, float %7233, float %7217, float %7235)  ; FMad(a,b,c)
  %7237 = fadd fast float %7236, %7223
  %7238 = fmul fast float %7231, %7206
  %7239 = call float @dx.op.tertiary.f32(i32 46, float %7232, float %7212, float %7238)  ; FMad(a,b,c)
  %7240 = call float @dx.op.tertiary.f32(i32 46, float %7233, float %7218, float %7239)  ; FMad(a,b,c)
  %7241 = fadd fast float %7240, %7224
  %7242 = fmul fast float %7231, %7207
  %7243 = call float @dx.op.tertiary.f32(i32 46, float %7232, float %7213, float %7242)  ; FMad(a,b,c)
  %7244 = call float @dx.op.tertiary.f32(i32 46, float %7233, float %7219, float %7243)  ; FMad(a,b,c)
  %7245 = fadd fast float %7244, %7225
  %7246 = fmul fast float %7231, %7208
  %7247 = call float @dx.op.tertiary.f32(i32 46, float %7232, float %7214, float %7246)  ; FMad(a,b,c)
  %7248 = call float @dx.op.tertiary.f32(i32 46, float %7233, float %7220, float %7247)  ; FMad(a,b,c)
  %7249 = fadd fast float %7248, %7226
  %7250 = fdiv fast float %7237, %7249
  %7251 = fdiv fast float %7241, %7249
  %7252 = fdiv fast float %7245, %7249
  %7253 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7252)  ; FMax(a,b)
  %7254 = fmul fast float %261, 0x401921FB60000000
  %7255 = call float @dx.op.unary.f32(i32 13, float %7254)  ; Sin(value)
  %7256 = call float @dx.op.unary.f32(i32 12, float %7254)  ; Cos(value)
  %7257 = fsub fast float -0.000000e+00, %7255
  %7258 = fmul fast float %7192, 5.000000e-01
  %7259 = call float @dx.op.dot2.f32(i32 54, float %261, float %261, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7260 = call float @dx.op.unary.f32(i32 22, float %7259)  ; Frc(value)
  %7261 = fmul fast float %7260, 0x404A7DD040000000
  %7262 = call float @dx.op.unary.f32(i32 22, float %7261)  ; Frc(value)
  %7263 = fmul fast float %7262, %7201
  %7264 = fadd fast float %7263, %7258
  %7265 = call float @dx.op.tertiary.f32(i32 46, float %7264, float %7257, float 0.000000e+00)  ; FMad(a,b,c)
  %7266 = call float @dx.op.tertiary.f32(i32 46, float %7264, float %7256, float 0.000000e+00)  ; FMad(a,b,c)
  %7267 = fadd fast float %7265, %7250
  %7268 = fadd fast float %7266, %7251
  %7269 = fmul fast float %7267, %7196
  %7270 = fmul fast float %7268, %7196
  %7271 = call float @dx.op.binary.f32(i32 35, float %7269, float %7192)  ; FMax(a,b)
  %7272 = call float @dx.op.binary.f32(i32 35, float %7270, float %7192)  ; FMax(a,b)
  %7273 = call float @dx.op.binary.f32(i32 36, float %7271, float %7193)  ; FMin(a,b)
  %7274 = call float @dx.op.binary.f32(i32 36, float %7272, float %7193)  ; FMin(a,b)
  %7275 = fadd fast float %7273, %7190
  %7276 = fadd fast float %7274, %7191
  %7277 = uitofp i32 %7227 to float
  %7278 = fadd fast float %7253, %7200
  %7279 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %50, float %7275, float %7276, float %7277, float undef, i32 0, i32 0, i32 undef, float %7278)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7280 = extractvalue %dx.types.ResRet.f32 %7279, 0
  %7281 = fadd fast float %7280, -1.000000e+00
  %7282 = fmul fast float %7281, %7161
  %7283 = fadd fast float %7282, 1.000000e+00
  %7284 = fmul fast float %7283, %7173
  br label %7285

; <label>:7285                                    ; preds = %7187, %7185
  %7286 = phi float [ %7284, %7187 ], [ %7173, %7185 ]
  %7287 = call float @dx.op.binary.f32(i32 36, float %7286, float %7286)  ; FMin(a,b)
  %7288 = call float @dx.op.binary.f32(i32 36, float %7286, float %7287)  ; FMin(a,b)
  %7289 = fcmp fast ogt float %7288, 0.000000e+00
  br i1 %7289, label %7290, label %7177, !dx.controlflow.hints !124

; <label>:7290                                    ; preds = %7285
  %7291 = fmul fast float %7286, %7095
  %7292 = fmul fast float %7286, %7096
  %7293 = fmul fast float %7286, %7097
  %7294 = fsub fast float %7079, %4798
  %7295 = fcmp fast ogt float %7294, 0.000000e+00
  %7296 = fsub fast float %193, %4798
  %7297 = fcmp fast ogt float %7296, 0.000000e+00
  %7298 = xor i1 %7297, %7295
  %7299 = fsub fast float %4798, %7079
  %7300 = fmul fast float %7299, 2.000000e+00
  %7301 = fadd fast float %7300, %7079
  %7302 = select i1 %7298, float %7079, float %7301
  %7303 = fsub fast float %7302, %193
  %7304 = call float @dx.op.dot3.f32(i32 55, float %7105, float %7106, float %7303, float %7105, float %7106, float %7303)  ; Dot3(ax,ay,az,bx,by,bz)
  %7305 = call float @dx.op.unary.f32(i32 25, float %7304)  ; Rsqrt(value)
  %7306 = fmul fast float %7305, %7105
  %7307 = fmul fast float %7305, %7106
  %7308 = fmul fast float %7305, %7303
  %7309 = fsub fast float %4798, %193
  %7310 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7309)  ; Dot3(ax,ay,az,bx,by,bz)
  %7311 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7306, float %7307, float %7308)  ; Dot3(ax,ay,az,bx,by,bz)
  %7312 = fdiv fast float 1.000000e+00, %7311
  %7313 = fmul fast float %7312, %7310
  %7314 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7296, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7315 = fcmp fast ogt float %7314, 0.000000e+00
  %7316 = fcmp fast olt float %7314, 0.000000e+00
  %7317 = zext i1 %7315 to i32
  %7318 = zext i1 %7316 to i32
  %7319 = sub nsw i32 %7317, %7318
  %7320 = sitofp i32 %7319 to float
  %7321 = fsub fast float %7302, %4798
  %7322 = call float @dx.op.dot3.f32(i32 55, float %7105, float %7106, float %7321, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7323 = fcmp fast ogt float %7322, 0.000000e+00
  %7324 = fcmp fast olt float %7322, 0.000000e+00
  %7325 = zext i1 %7323 to i32
  %7326 = zext i1 %7324 to i32
  %7327 = sub nsw i32 %7325, %7326
  %7328 = sitofp i32 %7327 to float
  %7329 = fcmp fast une float %7320, %7328
  br i1 %7329, label %7330, label %7340

; <label>:7330                                    ; preds = %7290
  %7331 = fmul fast float %7313, %7308
  %7332 = fmul fast float %7313, %7307
  %7333 = fmul fast float %7313, %7306
  %7334 = fmul fast float %7333, %7333
  %7335 = fmul fast float %7332, %7332
  %7336 = fadd fast float %7334, %7335
  %7337 = fmul fast float %7331, %7331
  %7338 = fadd fast float %7336, %7337
  %7339 = call float @dx.op.unary.f32(i32 24, float %7338)  ; Sqrt(value)
  br label %7352

; <label>:7340                                    ; preds = %7290
  %7341 = icmp slt i32 %7319, 0
  br i1 %7341, label %7342, label %7352

; <label>:7342                                    ; preds = %7340
  %7343 = fsub fast float %191, %7077
  %7344 = fsub fast float %192, %7078
  %7345 = fsub fast float %193, %7302
  %7346 = fmul fast float %7343, %7343
  %7347 = fmul fast float %7344, %7344
  %7348 = fadd fast float %7346, %7347
  %7349 = fmul fast float %7345, %7345
  %7350 = fadd fast float %7348, %7349
  %7351 = call float @dx.op.unary.f32(i32 24, float %7350)  ; Sqrt(value)
  br label %7352

; <label>:7352                                    ; preds = %7342, %7340, %7330
  %7353 = phi float [ %7339, %7330 ], [ %7351, %7342 ], [ 0.000000e+00, %7340 ]
  %7354 = and i1 %7297, %7295
  %7355 = fsub fast float -0.000000e+00, %7353
  %7356 = select i1 %7354, float -0.000000e+00, float %7355
  %7357 = fmul fast float %4799, 0x3FF7154760000000
  %7358 = fmul fast float %7357, %7356
  %7359 = fmul fast float %4800, 0x3FF7154760000000
  %7360 = fmul fast float %7359, %7356
  %7361 = fmul fast float %4801, 0x3FF7154760000000
  %7362 = fmul fast float %7361, %7356
  %7363 = call float @dx.op.unary.f32(i32 21, float %7358)  ; Exp(value)
  %7364 = call float @dx.op.unary.f32(i32 21, float %7360)  ; Exp(value)
  %7365 = call float @dx.op.unary.f32(i32 21, float %7362)  ; Exp(value)
  %7366 = call float @dx.op.unary.f32(i32 7, float %7363)  ; Saturate(value)
  %7367 = call float @dx.op.unary.f32(i32 7, float %7364)  ; Saturate(value)
  %7368 = call float @dx.op.unary.f32(i32 7, float %7365)  ; Saturate(value)
  %7369 = fmul fast float %7291, %7366
  %7370 = fmul fast float %7292, %7367
  %7371 = fmul fast float %7293, %7368
  %7372 = fsub fast float %7111, %5590
  %7373 = fsub fast float %7112, %5589
  %7374 = fsub fast float %7113, %5588
  %7375 = call float @dx.op.dot3.f32(i32 55, float %7372, float %7373, float %7374, float %7372, float %7373, float %7374)  ; Dot3(ax,ay,az,bx,by,bz)
  %7376 = call float @dx.op.unary.f32(i32 25, float %7375)  ; Rsqrt(value)
  %7377 = fmul fast float %7376, %7372
  %7378 = fmul fast float %7376, %7373
  %7379 = fmul fast float %7376, %7374
  %7380 = call float @dx.op.dot3.f32(i32 55, float %7111, float %7112, float %7113, float %5597, float %5598, float %5599)  ; Dot3(ax,ay,az,bx,by,bz)
  %7381 = call float @dx.op.dot3.f32(i32 55, float %5587, float %5586, float %5585, float %7377, float %7378, float %7379)  ; Dot3(ax,ay,az,bx,by,bz)
  %7382 = call float @dx.op.unary.f32(i32 7, float %7380)  ; Saturate(value)
  %7383 = fmul fast float %7382, %7118
  %7384 = fmul fast float %7382, %7382
  %7385 = fmul fast float %7384, %5618
  %7386 = call float @dx.op.unary.f32(i32 7, float %7385)  ; Saturate(value)
  %7387 = fmul fast float %7383, %7386
  %7388 = bitcast float %7108 to i32
  %7389 = ashr i32 %7388, 1
  %7390 = sub nsw i32 1597463007, %7389
  %7391 = bitcast i32 %7390 to float
  %7392 = fmul fast float %7391, %7105
  %7393 = fmul fast float %7391, %7106
  %7394 = fmul fast float %7391, %7107
  %7395 = fsub fast float %7392, %5590
  %7396 = fsub fast float %7393, %5589
  %7397 = fsub fast float %7394, %5588
  %7398 = call float @dx.op.dot3.f32(i32 55, float %7395, float %7396, float %7397, float %7395, float %7396, float %7397)  ; Dot3(ax,ay,az,bx,by,bz)
  %7399 = call float @dx.op.unary.f32(i32 25, float %7398)  ; Rsqrt(value)
  %7400 = fmul fast float %7395, %7399
  %7401 = fmul fast float %7396, %7399
  %7402 = fmul fast float %7397, %7399
  %7403 = call float @dx.op.dot3.f32(i32 55, float %5597, float %5598, float %5599, float %7400, float %7401, float %7402)  ; Dot3(ax,ay,az,bx,by,bz)
  %7404 = fmul fast float %7403, %7403
  %7405 = call float @dx.op.unary.f32(i32 6, float %7380)  ; FAbs(value)
  %7406 = fsub fast float 1.000000e+00, %5600
  %7407 = call float @dx.op.binary.f32(i32 35, float %7406, float 0x3F847AE140000000)  ; FMax(a,b)
  %7408 = fmul fast float %7407, %7407
  %7409 = fmul fast float %7408, %7408
  %7410 = fsub fast float 1.000000e+00, %7409
  %7411 = fmul fast float %5605, %5605
  %7412 = fmul fast float %7411, %7410
  %7413 = fadd fast float %7412, %7409
  %7414 = bitcast float %7413 to i32
  %7415 = ashr i32 %7414, 1
  %7416 = add nsw i32 %7415, 532487669
  %7417 = bitcast i32 %7416 to float
  %7418 = fadd fast float %7417, %5605
  %7419 = fmul fast float %7409, %7404
  %7420 = fsub fast float 1.000000e+00, %7404
  %7421 = fadd fast float %7420, %7419
  %7422 = fmul fast float %7405, %7405
  %7423 = fmul fast float %7422, %7410
  %7424 = fadd fast float %7423, %7409
  %7425 = bitcast float %7424 to i32
  %7426 = ashr i32 %7425, 1
  %7427 = add nsw i32 %7426, 532487669
  %7428 = bitcast i32 %7427 to float
  %7429 = fadd fast float %7428, %7405
  %7430 = fmul fast float %7421, %7421
  %7431 = fmul fast float %7430, %7418
  %7432 = fmul fast float %7431, %7429
  %7433 = fdiv fast float 1.000000e+00, %7432
  %7434 = bitcast float %7409 to i32
  %7435 = sitofp i32 %7434 to float
  %7436 = fmul fast float %7435, 0x3FE7F73180000000
  %7437 = fadd fast float %7436, 0x41AFE27C40000000
  %7438 = fptosi float %7437 to i32
  %7439 = bitcast i32 %7438 to float
  %7440 = fmul fast float %7074, 0x3FD80E9D60000000
  %7441 = fmul fast float %7440, %7391
  %7442 = fadd fast float %7439, %7441
  %7443 = bitcast float %7442 to i32
  %7444 = sub nsw i32 2129859010, %7443
  %7445 = bitcast i32 %7444 to float
  %7446 = fmul fast float %7409, %7433
  %7447 = fmul fast float %7446, %7439
  %7448 = fmul fast float %7447, %7445
  %7449 = fmul fast float %5718, 0x3FF9999980000000
  %7450 = fsub fast float 5.000000e+00, %7449
  %7451 = call float @dx.op.unary.f32(i32 6, float %7381)  ; FAbs(value)
  %7452 = fsub fast float 1.000000e+00, %7451
  %7453 = fmul fast float %5718, 0x41D9660740000000
  %7454 = fadd fast float %7453, 0xC1EFBF8940000000
  %7455 = bitcast float %7452 to i32
  %7456 = sitofp i32 %7455 to float
  %7457 = fmul fast float %7456, %7450
  %7458 = fadd fast float %7454, %7457
  %7459 = fptosi float %7458 to i32
  %7460 = bitcast i32 %7459 to float
  %7461 = fsub fast float 1.000000e+00, %5594
  %7462 = fsub fast float 1.000000e+00, %5595
  %7463 = fsub fast float 1.000000e+00, %5603
  %7464 = fmul fast float %7460, %7461
  %7465 = fmul fast float %7460, %7462
  %7466 = fmul fast float %7460, %7463
  %7467 = fadd fast float %7464, %5594
  %7468 = fadd fast float %7465, %5595
  %7469 = fadd fast float %7466, %5603
  br i1 %5741, label %7470, label %7493

; <label>:7470                                    ; preds = %7352
  %7471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %4394, float %7451, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7472 = extractvalue %dx.types.ResRet.f32 %7471, 0
  %7473 = extractvalue %dx.types.ResRet.f32 %7471, 1
  %7474 = extractvalue %dx.types.ResRet.f32 %7471, 2
  %7475 = fadd fast float %7472, -5.000000e-01
  %7476 = fadd fast float %7473, -5.000000e-01
  %7477 = fadd fast float %7474, -5.000000e-01
  %7478 = fmul fast float %5594, 4.000000e+00
  %7479 = fmul fast float %7478, %7461
  %7480 = fmul fast float %7479, %7475
  %7481 = fmul fast float %5595, 4.000000e+00
  %7482 = fmul fast float %7481, %7462
  %7483 = fmul fast float %7482, %7476
  %7484 = fmul fast float %5603, 4.000000e+00
  %7485 = fmul fast float %7484, %7463
  %7486 = fmul fast float %7485, %7477
  %7487 = fadd fast float %7480, %7467
  %7488 = fadd fast float %7483, %7468
  %7489 = fadd fast float %7486, %7469
  %7490 = call float @dx.op.unary.f32(i32 7, float %7487)  ; Saturate(value)
  %7491 = call float @dx.op.unary.f32(i32 7, float %7488)  ; Saturate(value)
  %7492 = call float @dx.op.unary.f32(i32 7, float %7489)  ; Saturate(value)
  br label %7493

; <label>:7493                                    ; preds = %7470, %7352
  %7494 = phi float [ %7490, %7470 ], [ %7467, %7352 ]
  %7495 = phi float [ %7491, %7470 ], [ %7468, %7352 ]
  %7496 = phi float [ %7492, %7470 ], [ %7469, %7352 ]
  %7497 = fmul fast float %7380, 9.843750e-01
  %7498 = fadd fast float %7497, 7.812500e-03
  %7499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %7498, float %5722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7500 = extractvalue %dx.types.ResRet.f32 %7499, 0
  %7501 = extractvalue %dx.types.ResRet.f32 %7499, 1
  %7502 = extractvalue %dx.types.ResRet.f32 %7499, 2
  %7503 = extractvalue %dx.types.ResRet.f32 %7499, 3
  %7504 = fsub fast float %7502, %7500
  %7505 = fsub fast float %7503, %7501
  %7506 = fmul fast float %7504, %5728
  %7507 = fmul fast float %7505, %5728
  %7508 = fadd fast float %7506, %7500
  %7509 = fadd fast float %7507, %7501
  %7510 = fmul fast float %7508, %5594
  %7511 = fmul fast float %7508, %5595
  %7512 = fmul fast float %7508, %5603
  %7513 = fadd fast float %7510, %7509
  %7514 = fadd fast float %7511, %7509
  %7515 = fadd fast float %7512, %7509
  br i1 %5741, label %7516, label %7539

; <label>:7516                                    ; preds = %7493
  %7517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %4394, float %7380, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7518 = extractvalue %dx.types.ResRet.f32 %7517, 0
  %7519 = extractvalue %dx.types.ResRet.f32 %7517, 1
  %7520 = extractvalue %dx.types.ResRet.f32 %7517, 2
  %7521 = fadd fast float %7518, -5.000000e-01
  %7522 = fadd fast float %7519, -5.000000e-01
  %7523 = fadd fast float %7520, -5.000000e-01
  %7524 = fmul fast float %5594, 4.000000e+00
  %7525 = fmul fast float %7524, %7461
  %7526 = fmul fast float %7525, %7521
  %7527 = fmul fast float %5595, 4.000000e+00
  %7528 = fmul fast float %7527, %7462
  %7529 = fmul fast float %7528, %7522
  %7530 = fmul fast float %5603, 4.000000e+00
  %7531 = fmul fast float %7530, %7463
  %7532 = fmul fast float %7531, %7523
  %7533 = fadd fast float %7526, %7513
  %7534 = fadd fast float %7529, %7514
  %7535 = fadd fast float %7532, %7515
  %7536 = call float @dx.op.unary.f32(i32 7, float %7533)  ; Saturate(value)
  %7537 = call float @dx.op.unary.f32(i32 7, float %7534)  ; Saturate(value)
  %7538 = call float @dx.op.unary.f32(i32 7, float %7535)  ; Saturate(value)
  br label %7539

; <label>:7539                                    ; preds = %7516, %7493
  %7540 = phi float [ %7536, %7516 ], [ %7513, %7493 ]
  %7541 = phi float [ %7537, %7516 ], [ %7514, %7493 ]
  %7542 = phi float [ %7538, %7516 ], [ %7515, %7493 ]
  %7543 = call float @dx.op.binary.f32(i32 35, float %7541, float %7542)  ; FMax(a,b)
  %7544 = call float @dx.op.binary.f32(i32 35, float %7540, float %7543)  ; FMax(a,b)
  %7545 = fsub fast float 1.000000e+00, %7544
  %7546 = fmul fast float %7494, %7448
  %7547 = fmul fast float %7495, %7448
  %7548 = fmul fast float %7496, %7448
  %7549 = fsub fast float 1.000000e+00, %7381
  %7550 = bitcast float %7549 to i32
  %7551 = sitofp i32 %7550 to float
  %7552 = fmul fast float %7551, 5.000000e+00
  %7553 = fadd fast float %7552, 0xC1EFBF8940000000
  %7554 = fptosi float %7553 to i32
  %7555 = bitcast i32 %7554 to float
  %7556 = fmul fast float %7555, %4395
  %7557 = fmul fast float %7545, %7556
  %7558 = fmul fast float %7557, %5791
  %7559 = fmul fast float %7557, %5792
  %7560 = fmul fast float %7557, %5793
  %7561 = fadd fast float %7558, %7546
  %7562 = fadd fast float %7559, %7547
  %7563 = fadd fast float %7560, %7548
  %7564 = fmul fast float %7369, %4391
  %7565 = fmul fast float %7564, %7387
  %7566 = fmul fast float %7565, %7545
  %7567 = fmul fast float %7370, %4391
  %7568 = fmul fast float %7567, %7387
  %7569 = fmul fast float %7568, %7545
  %7570 = fmul fast float %7371, %4391
  %7571 = fmul fast float %7570, %7387
  %7572 = fmul fast float %7571, %7545
  %7573 = fadd fast float %7566, %7048
  %7574 = fadd fast float %7569, %7049
  %7575 = fadd fast float %7572, %7050
  %7576 = fmul fast float %7565, %7561
  %7577 = fmul fast float %7568, %7562
  %7578 = fmul fast float %7571, %7563
  %7579 = fadd fast float %7576, %7045
  %7580 = fadd fast float %7577, %7046
  %7581 = fadd fast float %7578, %7047
  br label %7177

; <label>:7582                                    ; preds = %7177
  br label %7583

; <label>:7583                                    ; preds = %7582, %7011
  %7584 = phi float [ %7013, %7011 ], [ %7178, %7582 ]
  %7585 = phi float [ %7014, %7011 ], [ %7179, %7582 ]
  %7586 = phi float [ %7015, %7011 ], [ %7180, %7582 ]
  %7587 = phi float [ %7016, %7011 ], [ %7181, %7582 ]
  %7588 = phi float [ %7017, %7011 ], [ %7182, %7582 ]
  %7589 = phi float [ %7018, %7011 ], [ %7183, %7582 ]
  %7590 = add i32 %7012, 1
  %7591 = icmp ugt i32 %7590, %7008
  br i1 %7591, label %7592, label %7011

; <label>:7592                                    ; preds = %7583
  br label %7593

; <label>:7593                                    ; preds = %7592, %6961, %6951
  %7594 = phi float [ %6952, %6951 ], [ %6952, %6961 ], [ %7584, %7592 ]
  %7595 = phi float [ %6953, %6951 ], [ %6953, %6961 ], [ %7585, %7592 ]
  %7596 = phi float [ %6954, %6951 ], [ %6954, %6961 ], [ %7586, %7592 ]
  %7597 = phi float [ %6955, %6951 ], [ %6955, %6961 ], [ %7587, %7592 ]
  %7598 = phi float [ %6956, %6951 ], [ %6956, %6961 ], [ %7588, %7592 ]
  %7599 = phi float [ %6957, %6951 ], [ %6957, %6961 ], [ %7589, %7592 ]
  %7600 = fmul fast float %4391, %4391
  %7601 = fmul fast float %7600, %5817
  %7602 = fsub fast float -0.000000e+00, %7601
  %7603 = fmul fast float %7600, %5818
  %7604 = fsub fast float -0.000000e+00, %7603
  %7605 = fmul fast float %7600, %5819
  %7606 = fsub fast float -0.000000e+00, %7605
  %7607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7608 = extractvalue %dx.types.CBufRet.f32 %7607, 0
  %7609 = fmul fast float %7608, %5823
  %7610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7611 = extractvalue %dx.types.CBufRet.f32 %7610, 3
  %7612 = fsub fast float 1.000000e+00, %4398
  %7613 = call float @dx.op.unary.f32(i32 7, float %7612)  ; Saturate(value)
  %7614 = fadd fast float %7599, %4397
  %7615 = fmul fast float %7614, %4398
  %7616 = fmul fast float %7613, %7611
  %7617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7618 = extractvalue %dx.types.CBufRet.f32 %7617, 3
  %7619 = fmul fast float %7597, %5591
  %7620 = fmul fast float %7598, %5592
  %7621 = fmul fast float %7599, %5593
  %7622 = fcmp fast ogt float %95, %213
  %7623 = and i1 %7622, %4804
  %7624 = or i1 %4810, %7623
  %7625 = icmp eq i32 %4803, 2
  %7626 = fcmp fast ole float %95, %213
  %7627 = and i1 %7626, %7625
  %7628 = or i1 %7627, %7624
  br i1 %7623, label %7629, label %7886

; <label>:7629                                    ; preds = %7593
  %7630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7631 = extractvalue %dx.types.CBufRet.f32 %7630, 2
  %7632 = extractvalue %dx.types.CBufRet.f32 %7630, 3
  %7633 = fmul fast float %7631, %104
  %7634 = fmul fast float %7632, %105
  %7635 = call float @dx.op.unary.f32(i32 7, float %7633)  ; Saturate(value)
  %7636 = call float @dx.op.unary.f32(i32 7, float %7634)  ; Saturate(value)
  %7637 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7635, float %7636, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7638 = extractvalue %dx.types.ResRet.f32 %7637, 0
  %7639 = extractvalue %dx.types.ResRet.f32 %7637, 1
  %7640 = extractvalue %dx.types.ResRet.f32 %7637, 2
  %7641 = extractvalue %dx.types.ResRet.f32 %7637, 3
  %7642 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7635, float %7636, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7643 = extractvalue %dx.types.ResRet.f32 %7642, 0
  %7644 = extractvalue %dx.types.ResRet.f32 %7642, 1
  %7645 = extractvalue %dx.types.ResRet.f32 %7642, 2
  %7646 = extractvalue %dx.types.ResRet.f32 %7642, 3
  %7647 = call float @dx.op.binary.f32(i32 35, float %7639, float %7640)  ; FMax(a,b)
  %7648 = call float @dx.op.binary.f32(i32 35, float %7638, float %7647)  ; FMax(a,b)
  %7649 = call float @dx.op.binary.f32(i32 35, float %7648, float %7641)  ; FMax(a,b)
  %7650 = call float @dx.op.binary.f32(i32 36, float %7644, float %7645)  ; FMin(a,b)
  %7651 = call float @dx.op.binary.f32(i32 36, float %7643, float %7650)  ; FMin(a,b)
  %7652 = call float @dx.op.binary.f32(i32 36, float %7651, float %7646)  ; FMin(a,b)
  %7653 = fmul fast float %7649, 2.550000e+02
  %7654 = fadd fast float %7653, 0x3F70101020000000
  %7655 = fptoui float %7654 to i32
  %7656 = fmul fast float %7652, 2.550000e+02
  %7657 = fadd fast float %7656, 0x3F70101020000000
  %7658 = fptoui float %7657 to i32
  %7659 = icmp ult i32 %7655, %7658
  br i1 %7659, label %7660, label %7828

; <label>:7660                                    ; preds = %7629
  %7661 = fcmp fast ogt float %94, 9.843750e-01
  %7662 = fadd fast float %95, -4.000000e+00
  %7663 = select i1 %7661, float -4.000000e+00, float %7662
  %7664 = call float @dx.op.binary.f32(i32 35, float %7663, float 0.000000e+00)  ; FMax(a,b)
  %7665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7666 = extractvalue %dx.types.CBufRet.f32 %7665, 0
  %7667 = fadd fast float %7666, %7664
  %7668 = extractvalue %dx.types.CBufRet.f32 %7665, 2
  %7669 = fmul fast float %7667, %7668
  %7670 = call float @dx.op.unary.f32(i32 23, float %7669)  ; Log(value)
  %7671 = extractvalue %dx.types.CBufRet.f32 %7665, 3
  %7672 = fmul fast float %7671, %7670
  %7673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7674 = extractvalue %dx.types.CBufRet.f32 %7673, 2
  %7675 = fmul fast float %7672, %7674
  %7676 = call float @dx.op.unary.f32(i32 7, float %7675)  ; Saturate(value)
  %7677 = uitofp i32 %7655 to float
  %7678 = uitofp i32 %7658 to float
  %7679 = fadd fast float %7677, 5.000000e-01
  %7680 = fadd fast float %7678, 5.000000e-01
  %7681 = fmul fast float %7674, %7679
  %7682 = fmul fast float %7674, %7680
  %7683 = fadd fast float %7681, 0x3F0FFB4800000000
  %7684 = fadd fast float %7682, 0xBF0FFB4800000000
  %7685 = call float @dx.op.binary.f32(i32 35, float %7676, float %7683)  ; FMax(a,b)
  %7686 = call float @dx.op.binary.f32(i32 36, float %7685, float %7684)  ; FMin(a,b)
  %7687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7688 = extractvalue %dx.types.CBufRet.f32 %7687, 1
  %7689 = extractvalue %dx.types.CBufRet.f32 %7687, 2
  %7690 = extractvalue %dx.types.CBufRet.f32 %7687, 0
  %7691 = fmul fast float %7688, %7686
  %7692 = fadd fast float %7690, %7691
  %7693 = fadd fast float %7690, %7689
  %7694 = fsub fast float %7688, %7689
  %7695 = fadd fast float %7694, %7690
  %7696 = call float @dx.op.binary.f32(i32 35, float %7692, float %7693)  ; FMax(a,b)
  %7697 = call float @dx.op.binary.f32(i32 36, float %7696, float %7695)  ; FMin(a,b)
  %7698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7635, float %7636, float %7697, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7699 = extractvalue %dx.types.ResRet.f32 %7698, 0
  %7700 = extractvalue %dx.types.ResRet.f32 %7698, 1
  %7701 = extractvalue %dx.types.ResRet.f32 %7698, 2
  %7702 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7703 = extractvalue %dx.types.CBufRet.i32 %7702, 0
  %7704 = extractvalue %dx.types.CBufRet.i32 %7702, 1
  %7705 = uitofp i32 %7703 to float
  %7706 = uitofp i32 %7704 to float
  %7707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7708 = extractvalue %dx.types.CBufRet.f32 %7707, 0
  %7709 = extractvalue %dx.types.CBufRet.f32 %7707, 1
  %7710 = fmul fast float %7705, %7635
  %7711 = fmul fast float %7706, %7636
  %7712 = fadd fast float %7710, -5.000000e-01
  %7713 = fadd fast float %7711, -5.000000e-01
  %7714 = call float @dx.op.unary.f32(i32 22, float %7712)  ; Frc(value)
  %7715 = call float @dx.op.unary.f32(i32 22, float %7713)  ; Frc(value)
  %7716 = fmul fast float %7714, %7714
  %7717 = fmul fast float %7716, %7714
  %7718 = fsub fast float 3.000000e+00, %7714
  %7719 = fmul fast float %7716, %7718
  %7720 = fmul fast float %7714, 3.000000e+00
  %7721 = fmul fast float %7717, 3.000000e+00
  %7722 = fmul fast float %7716, 6.000000e+00
  %7723 = fsub fast float %7721, %7722
  %7724 = fadd fast float %7723, 4.000000e+00
  %7725 = fmul fast float %7724, 0x3FC5555560000000
  %7726 = fmul fast float %7717, -3.000000e+00
  %7727 = fadd fast float %7716, %7714
  %7728 = fmul fast float %7727, 3.000000e+00
  %7729 = fadd fast float %7726, 1.000000e+00
  %7730 = fadd fast float %7729, %7728
  %7731 = fmul fast float %7717, 0x3FC5555560000000
  %7732 = fmul fast float %7715, %7715
  %7733 = fmul fast float %7732, %7715
  %7734 = fsub fast float 3.000000e+00, %7715
  %7735 = fmul fast float %7732, %7734
  %7736 = fmul fast float %7715, 3.000000e+00
  %7737 = fmul fast float %7733, 3.000000e+00
  %7738 = fmul fast float %7732, 6.000000e+00
  %7739 = fsub fast float %7737, %7738
  %7740 = fadd fast float %7739, 4.000000e+00
  %7741 = fmul fast float %7740, 0x3FC5555560000000
  %7742 = fmul fast float %7733, -3.000000e+00
  %7743 = fadd fast float %7732, %7715
  %7744 = fmul fast float %7743, 3.000000e+00
  %7745 = fadd fast float %7742, 1.000000e+00
  %7746 = fadd fast float %7745, %7744
  %7747 = fmul fast float %7733, 0x3FC5555560000000
  %7748 = fadd fast float %7714, 1.000000e+00
  %7749 = fsub fast float 1.000000e+00, %7720
  %7750 = fadd fast float %7749, %7719
  %7751 = fadd fast float %7750, %7724
  %7752 = fmul fast float %7751, 0x3FC5555560000000
  %7753 = fdiv fast float %7725, %7752
  %7754 = fsub fast float %7748, %7753
  %7755 = fsub fast float 1.000000e+00, %7714
  %7756 = fadd fast float %7730, %7717
  %7757 = fmul fast float %7756, 0x3FC5555560000000
  %7758 = fdiv fast float %7731, %7757
  %7759 = fadd fast float %7755, %7758
  %7760 = fadd fast float %7715, 1.000000e+00
  %7761 = fsub fast float 1.000000e+00, %7736
  %7762 = fadd fast float %7761, %7735
  %7763 = fadd fast float %7762, %7740
  %7764 = fmul fast float %7763, 0x3FC5555560000000
  %7765 = fdiv fast float %7741, %7764
  %7766 = fsub fast float %7760, %7765
  %7767 = fsub fast float 1.000000e+00, %7715
  %7768 = fadd fast float %7746, %7733
  %7769 = fmul fast float %7768, 0x3FC5555560000000
  %7770 = fdiv fast float %7747, %7769
  %7771 = fadd fast float %7770, %7767
  %7772 = fmul fast float %7754, %7708
  %7773 = fsub fast float %7635, %7772
  %7774 = fmul fast float %7759, %7708
  %7775 = fadd fast float %7774, %7635
  %7776 = fmul fast float %7771, %7709
  %7777 = fadd fast float %7776, %7636
  %7778 = fmul fast float %7766, %7709
  %7779 = fsub fast float %7636, %7778
  %7780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7773, float %7779, float %7697, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7781 = extractvalue %dx.types.ResRet.f32 %7780, 0
  %7782 = extractvalue %dx.types.ResRet.f32 %7780, 1
  %7783 = extractvalue %dx.types.ResRet.f32 %7780, 2
  %7784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7775, float %7779, float %7697, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7785 = extractvalue %dx.types.ResRet.f32 %7784, 0
  %7786 = extractvalue %dx.types.ResRet.f32 %7784, 1
  %7787 = extractvalue %dx.types.ResRet.f32 %7784, 2
  %7788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7773, float %7777, float %7697, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7789 = extractvalue %dx.types.ResRet.f32 %7788, 0
  %7790 = extractvalue %dx.types.ResRet.f32 %7788, 1
  %7791 = extractvalue %dx.types.ResRet.f32 %7788, 2
  %7792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7775, float %7777, float %7697, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7793 = extractvalue %dx.types.ResRet.f32 %7792, 0
  %7794 = extractvalue %dx.types.ResRet.f32 %7792, 1
  %7795 = extractvalue %dx.types.ResRet.f32 %7792, 2
  %7796 = fsub fast float %7789, %7781
  %7797 = fsub fast float %7790, %7782
  %7798 = fsub fast float %7791, %7783
  %7799 = fmul fast float %7796, %7769
  %7800 = fmul fast float %7797, %7769
  %7801 = fmul fast float %7798, %7769
  %7802 = fadd fast float %7799, %7781
  %7803 = fadd fast float %7800, %7782
  %7804 = fadd fast float %7801, %7783
  %7805 = fsub fast float %7793, %7785
  %7806 = fsub fast float %7794, %7786
  %7807 = fsub fast float %7795, %7787
  %7808 = fmul fast float %7805, %7769
  %7809 = fmul fast float %7806, %7769
  %7810 = fmul fast float %7807, %7769
  %7811 = fsub fast float %7785, %7802
  %7812 = fadd fast float %7811, %7808
  %7813 = fsub fast float %7786, %7803
  %7814 = fadd fast float %7813, %7809
  %7815 = fsub fast float %7787, %7804
  %7816 = fadd fast float %7815, %7810
  %7817 = fmul fast float %7812, %7757
  %7818 = fmul fast float %7814, %7757
  %7819 = fmul fast float %7816, %7757
  %7820 = fadd fast float %7817, %7802
  %7821 = fadd fast float %7818, %7803
  %7822 = fadd fast float %7819, %7804
  %7823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7824 = extractvalue %dx.types.CBufRet.f32 %7823, 1
  %7825 = fmul fast float %7820, %7824
  %7826 = fmul fast float %7821, %7824
  %7827 = fmul fast float %7822, %7824
  br label %7828

; <label>:7828                                    ; preds = %7660, %7629
  %7829 = phi float [ %7699, %7660 ], [ 1.000000e+00, %7629 ]
  %7830 = phi float [ %7700, %7660 ], [ 1.000000e+00, %7629 ]
  %7831 = phi float [ %7701, %7660 ], [ 1.000000e+00, %7629 ]
  %7832 = phi float [ %7825, %7660 ], [ 0.000000e+00, %7629 ]
  %7833 = phi float [ %7826, %7660 ], [ 0.000000e+00, %7629 ]
  %7834 = phi float [ %7827, %7660 ], [ 0.000000e+00, %7629 ]
  %7835 = fmul fast float %7832, %7602
  %7836 = fmul fast float %7833, %7604
  %7837 = fmul fast float %7834, %7606
  %7838 = call float @dx.op.dot3.f32(i32 55, float %7829, float %7830, float %7831, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7839 = call float @dx.op.dot3.f32(i32 55, float %7835, float %7836, float %7837, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7840 = select i1 %250, float %7838, float %7829
  %7841 = select i1 %250, float %7838, float %7830
  %7842 = select i1 %250, float 1.000000e+00, float %7831
  %7843 = select i1 %250, float %7839, float %7835
  %7844 = select i1 %250, float 0.000000e+00, float %7836
  %7845 = select i1 %250, float 0.000000e+00, float %7837
  %7846 = fmul fast float %7840, %7619
  %7847 = fmul fast float %7841, %7620
  %7848 = fmul fast float %7842, %7621
  %7849 = fadd fast float %7846, %7843
  %7850 = fadd fast float %7847, %7844
  %7851 = fadd fast float %7845, %7848
  %7852 = fmul fast float %7840, %7594
  %7853 = fmul fast float %7841, %7595
  %7854 = fmul fast float %7842, %7596
  %7855 = fmul fast float %140, %7631
  %7856 = fmul fast float %142, %7632
  %7857 = fsub fast float 1.000000e+00, %7855
  %7858 = fsub fast float 1.000000e+00, %7856
  %7859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7860 = extractvalue %dx.types.CBufRet.f32 %7859, 0
  %7861 = extractvalue %dx.types.CBufRet.f32 %7859, 1
  %7862 = extractvalue %dx.types.CBufRet.f32 %7859, 2
  %7863 = fmul fast float %7857, %7860
  %7864 = fmul fast float %7857, %7861
  %7865 = fmul fast float %7857, %7862
  %7866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7867 = extractvalue %dx.types.CBufRet.f32 %7866, 0
  %7868 = extractvalue %dx.types.CBufRet.f32 %7866, 1
  %7869 = extractvalue %dx.types.CBufRet.f32 %7866, 2
  %7870 = fmul fast float %7858, %7867
  %7871 = fmul fast float %7858, %7868
  %7872 = fmul fast float %7858, %7869
  %7873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7874 = extractvalue %dx.types.CBufRet.f32 %7873, 0
  %7875 = extractvalue %dx.types.CBufRet.f32 %7873, 1
  %7876 = extractvalue %dx.types.CBufRet.f32 %7873, 2
  %7877 = fadd fast float %7870, %7874
  %7878 = fadd fast float %7877, %7863
  %7879 = fadd fast float %7871, %7875
  %7880 = fadd fast float %7879, %7864
  %7881 = fadd fast float %7872, %7876
  %7882 = fadd fast float %7881, %7865
  %7883 = fmul fast float %7878, %213
  %7884 = fmul fast float %7880, %213
  %7885 = fmul fast float %7882, %213
  br label %7886

; <label>:7886                                    ; preds = %7828, %7593
  %7887 = phi float [ %7883, %7828 ], [ %191, %7593 ]
  %7888 = phi float [ %7884, %7828 ], [ %192, %7593 ]
  %7889 = phi float [ %7885, %7828 ], [ %193, %7593 ]
  %7890 = phi float [ %213, %7828 ], [ %95, %7593 ]
  %7891 = phi float [ %7849, %7828 ], [ %7619, %7593 ]
  %7892 = phi float [ %7850, %7828 ], [ %7620, %7593 ]
  %7893 = phi float [ %7851, %7828 ], [ %7621, %7593 ]
  %7894 = phi float [ %7852, %7828 ], [ %7594, %7593 ]
  %7895 = phi float [ %7853, %7828 ], [ %7595, %7593 ]
  %7896 = phi float [ %7854, %7828 ], [ %7596, %7593 ]
  %7897 = phi float [ %7829, %7828 ], [ 1.000000e+00, %7593 ]
  br i1 %7628, label %9052, label %7898

; <label>:7898                                    ; preds = %7886
  %7899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7900 = extractvalue %dx.types.CBufRet.f32 %7899, 0
  %7901 = extractvalue %dx.types.CBufRet.f32 %7899, 1
  %7902 = extractvalue %dx.types.CBufRet.f32 %7899, 2
  %7903 = extractvalue %dx.types.CBufRet.f32 %7899, 3
  %7904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7905 = extractvalue %dx.types.CBufRet.f32 %7904, 0
  %7906 = extractvalue %dx.types.CBufRet.f32 %7904, 1
  %7907 = extractvalue %dx.types.CBufRet.f32 %7904, 2
  %7908 = extractvalue %dx.types.CBufRet.f32 %7904, 3
  %7909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7910 = extractvalue %dx.types.CBufRet.f32 %7909, 0
  %7911 = extractvalue %dx.types.CBufRet.f32 %7909, 1
  %7912 = extractvalue %dx.types.CBufRet.f32 %7909, 2
  %7913 = extractvalue %dx.types.CBufRet.f32 %7909, 3
  %7914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7915 = extractvalue %dx.types.CBufRet.f32 %7914, 0
  %7916 = extractvalue %dx.types.CBufRet.f32 %7914, 1
  %7917 = extractvalue %dx.types.CBufRet.f32 %7914, 2
  %7918 = extractvalue %dx.types.CBufRet.f32 %7914, 3
  %7919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7920 = extractvalue %dx.types.CBufRet.f32 %7919, 3
  %7921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7922 = extractvalue %dx.types.CBufRet.f32 %7921, 3
  %7923 = extractvalue %dx.types.CBufRet.f32 %7921, 0
  %7924 = extractvalue %dx.types.CBufRet.f32 %7921, 1
  %7925 = extractvalue %dx.types.CBufRet.f32 %7921, 2
  %7926 = fcmp fast olt float %7925, -5.000000e-01
  %7927 = call float @dx.op.dot3.f32(i32 55, float %7887, float %7888, float %7889, float %7887, float %7888, float %7889)  ; Dot3(ax,ay,az,bx,by,bz)
  %7928 = call float @dx.op.unary.f32(i32 25, float %7927)  ; Rsqrt(value)
  %7929 = fmul fast float %7928, %7927
  %7930 = fmul fast float %7928, %7887
  %7931 = fmul fast float %7928, %7888
  %7932 = fmul fast float %7928, %7889
  %7933 = fadd fast float %7929, %7903
  %7934 = call float @dx.op.dot3.f32(i32 55, float %7930, float %7931, float %7932, float %7900, float %7901, float %7902)  ; Dot3(ax,ay,az,bx,by,bz)
  %7935 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7936 = extractvalue %dx.types.CBufRet.i32 %7935, 1
  %7937 = and i32 %7936, 1
  %7938 = icmp ne i32 %7937, 0
  %7939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7940 = extractvalue %dx.types.CBufRet.f32 %7939, 2
  %7941 = fcmp fast ogt float %7940, 0.000000e+00
  %7942 = and i1 %7938, %7941
  br i1 %7942, label %7943, label %8349, !dx.controlflow.hints !125

; <label>:7943                                    ; preds = %7898
  %7944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7945 = extractvalue %dx.types.CBufRet.f32 %7944, 3
  %7946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7947 = extractvalue %dx.types.CBufRet.f32 %7946, 2
  %7948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7949 = extractvalue %dx.types.CBufRet.f32 %7948, 2
  %7950 = fsub fast float %7947, %7949
  %7951 = and i32 %7936, 2
  %7952 = extractvalue %dx.types.CBufRet.i32 %7935, 0
  %7953 = call i32 @dx.op.binary.i32(i32 40, i32 %7952, i32 3)  ; UMin(a,b)
  %7954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7955 = extractvalue %dx.types.CBufRet.f32 %7954, 0
  %7956 = extractvalue %dx.types.CBufRet.f32 %7954, 1
  %7957 = extractvalue %dx.types.CBufRet.f32 %7948, 0
  %7958 = extractvalue %dx.types.CBufRet.f32 %7948, 1
  %7959 = fsub fast float %7955, %7957
  %7960 = fsub fast float %7956, %7958
  %7961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7962 = extractvalue %dx.types.CBufRet.f32 %7961, 0
  %7963 = fcmp fast ogt float %7962, 0.000000e+00
  %7964 = fsub fast float -0.000000e+00, %7959
  %7965 = fsub fast float -0.000000e+00, %7960
  %7966 = call float @dx.op.dot2.f32(i32 54, float %7930, float %7931, float %7930, float %7931)  ; Dot2(ax,ay,bx,by)
  %7967 = call float @dx.op.dot2.f32(i32 54, float %7930, float %7931, float %7964, float %7965)  ; Dot2(ax,ay,bx,by)
  %7968 = fmul fast float %7967, 2.000000e+00
  %7969 = call float @dx.op.dot2.f32(i32 54, float %7964, float %7965, float %7964, float %7965)  ; Dot2(ax,ay,bx,by)
  %7970 = fmul fast float %7962, %7962
  %7971 = fsub fast float %7969, %7970
  %7972 = fmul fast float %7968, %7968
  %7973 = fmul fast float %7966, 4.000000e+00
  %7974 = fmul fast float %7973, %7971
  %7975 = fsub fast float %7972, %7974
  %7976 = fcmp fast ogt float %7975, 0.000000e+00
  br i1 %7976, label %7977, label %7992

; <label>:7977                                    ; preds = %7943
  %7978 = fcmp fast ogt float %7968, 0.000000e+00
  %7979 = call float @dx.op.unary.f32(i32 24, float %7975)  ; Sqrt(value)
  %7980 = fsub fast float -0.000000e+00, %7979
  %7981 = select i1 %7978, float %7979, float %7980
  %7982 = fadd fast float %7981, %7968
  %7983 = fmul float %7982, -5.000000e-01
  %7984 = fdiv fast float %7983, %7966
  %7985 = call float @dx.op.binary.f32(i32 35, float %7984, float 0.000000e+00)  ; FMax(a,b)
  %7986 = call float @dx.op.binary.f32(i32 36, float %7929, float %7985)  ; FMin(a,b)
  %7987 = fdiv fast float %7971, %7983
  %7988 = call float @dx.op.binary.f32(i32 35, float %7987, float 0.000000e+00)  ; FMax(a,b)
  %7989 = call float @dx.op.binary.f32(i32 36, float %7929, float %7988)  ; FMin(a,b)
  %7990 = call float @dx.op.binary.f32(i32 36, float %7986, float %7989)  ; FMin(a,b)
  %7991 = call float @dx.op.binary.f32(i32 35, float %7986, float %7989)  ; FMax(a,b)
  br label %7992

; <label>:7992                                    ; preds = %7977, %7943
  %7993 = phi float [ %7991, %7977 ], [ -1.000000e+00, %7943 ]
  %7994 = phi float [ %7990, %7977 ], [ -1.000000e+00, %7943 ]
  %7995 = phi i1 [ true, %7977 ], [ false, %7943 ]
  %7996 = and i1 %7963, %7995
  br i1 %7996, label %7997, label %7999

; <label>:7997                                    ; preds = %7992
  %7998 = fcmp fast oeq float %7994, %7993
  br i1 %7998, label %8302, label %8000

; <label>:7999                                    ; preds = %7992
  br i1 %7963, label %8302, label %8000

; <label>:8000                                    ; preds = %7999, %7997
  %8001 = phi float [ %7929, %7999 ], [ %7993, %7997 ]
  %8002 = phi float [ 0.000000e+00, %7999 ], [ %7994, %7997 ]
  %8003 = icmp ne i32 %7951, 0
  %8004 = fmul fast float %8001, %7932
  %8005 = fadd fast float %8004, %7945
  %8006 = fmul fast float %8005, %8001
  %8007 = select i1 %8003, float 0.000000e+00, float %8006
  %8008 = fcmp fast oeq float %7932, 0.000000e+00
  %8009 = fdiv fast float %7950, %7932
  %8010 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8009)  ; FMax(a,b)
  %8011 = select i1 %8008, float %8001, float %8010
  %8012 = call float @dx.op.binary.f32(i32 36, float %8001, float %8011)  ; FMin(a,b)
  %8013 = fcmp fast ogt float %7932, 0.000000e+00
  %8014 = fcmp fast olt float %7950, 0.000000e+00
  br i1 %8013, label %8015, label %8072

; <label>:8015                                    ; preds = %8000
  %8016 = icmp eq i32 %7951, 0
  br i1 %8014, label %8017, label %8061

; <label>:8017                                    ; preds = %8015
  %8018 = select i1 %8016, float %8001, float 0.000000e+00
  %8019 = fsub fast float -0.000000e+00, %8018
  %8020 = call float @dx.op.unary.f32(i32 6, float %8019)  ; FAbs(value)
  %8021 = fmul fast float %8018, %7932
  %8022 = fadd fast float %8021, %7945
  %8023 = fmul fast float %8020, %8022
  %8024 = fsub fast float %8007, %8023
  %8025 = fsub fast float %8001, %8020
  %8026 = select i1 %8016, float %8025, float 0.000000e+00
  %8027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8028 = extractvalue %dx.types.CBufRet.f32 %8027, 0
  %8029 = extractvalue %dx.types.CBufRet.f32 %8027, 1
  %8030 = extractvalue %dx.types.CBufRet.f32 %8027, 2
  %8031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8032 = extractvalue %dx.types.CBufRet.f32 %8031, 0
  %8033 = extractvalue %dx.types.CBufRet.f32 %8031, 1
  %8034 = extractvalue %dx.types.CBufRet.f32 %8031, 2
  %8035 = extractvalue %dx.types.CBufRet.f32 %8031, 3
  %8036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8037 = extractvalue %dx.types.CBufRet.f32 %8036, 3
  %8038 = call float @dx.op.binary.f32(i32 36, float %8024, float %8037)  ; FMin(a,b)
  %8039 = fmul fast float %8035, %8026
  %8040 = call float @dx.op.unary.f32(i32 7, float %8039)  ; Saturate(value)
  %8041 = fsub fast float %8032, %8028
  %8042 = fsub fast float %8033, %8029
  %8043 = fsub fast float %8034, %8030
  %8044 = fmul fast float %8040, %8041
  %8045 = fmul fast float %8040, %8042
  %8046 = fmul fast float %8040, %8043
  %8047 = fadd fast float %8044, %8028
  %8048 = fadd fast float %8045, %8029
  %8049 = fadd fast float %8046, %8030
  %8050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8051 = extractvalue %dx.types.CBufRet.f32 %8050, 0
  %8052 = extractvalue %dx.types.CBufRet.f32 %8050, 1
  %8053 = fadd fast float %8052, %8051
  %8054 = call float @dx.op.unary.f32(i32 7, float %8053)  ; Saturate(value)
  %8055 = extractvalue %dx.types.CBufRet.f32 %8050, 2
  %8056 = extractvalue %dx.types.CBufRet.f32 %8050, 3
  %8057 = fadd fast float %8056, %8055
  %8058 = call float @dx.op.unary.f32(i32 7, float %8057)  ; Saturate(value)
  %8059 = fmul fast float %8054, %8038
  %8060 = fmul fast float %8059, %8058
  br label %8302

; <label>:8061                                    ; preds = %8015
  br i1 %8016, label %8062, label %8083

; <label>:8062                                    ; preds = %8061
  %8063 = call float @dx.op.binary.f32(i32 36, float %8012, float %8002)  ; FMin(a,b)
  %8064 = fsub fast float %8012, %8063
  %8065 = fsub fast float %8064, %8001
  %8066 = call float @dx.op.unary.f32(i32 6, float %8065)  ; FAbs(value)
  %8067 = fadd fast float %8064, %8001
  %8068 = fmul fast float %8067, %7932
  %8069 = fadd fast float %8068, %7945
  %8070 = fmul fast float %8069, %8066
  %8071 = fsub fast float %8007, %8070
  br label %8083

; <label>:8072                                    ; preds = %8000
  br i1 %8014, label %8073, label %8083

; <label>:8073                                    ; preds = %8072
  %8074 = call float @dx.op.binary.f32(i32 35, float %8002, float %8012)  ; FMax(a,b)
  %8075 = icmp eq i32 %7951, 0
  %8076 = select i1 %8075, float %8012, float 0.000000e+00
  %8077 = fsub fast float -0.000000e+00, %8076
  %8078 = call float @dx.op.unary.f32(i32 6, float %8077)  ; FAbs(value)
  %8079 = fmul fast float %8076, %7932
  %8080 = fadd fast float %8079, %7945
  %8081 = fmul fast float %8078, %8080
  %8082 = fsub fast float %8007, %8081
  br label %8083

; <label>:8083                                    ; preds = %8073, %8072, %8062, %8061
  %8084 = phi float [ %8002, %8061 ], [ %8002, %8062 ], [ %8074, %8073 ], [ %8002, %8072 ]
  %8085 = phi float [ 0.000000e+00, %8061 ], [ %8066, %8062 ], [ %8078, %8073 ], [ 0.000000e+00, %8072 ]
  %8086 = phi float [ %8007, %8061 ], [ %8071, %8062 ], [ %8082, %8073 ], [ %8007, %8072 ]
  %8087 = phi float [ %8012, %8061 ], [ %8012, %8062 ], [ %8001, %8073 ], [ %8001, %8072 ]
  %8088 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %8088, align 4, !tbaa !126, !noalias !128
  %8089 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %8089, align 4, !tbaa !126, !noalias !128
  %8090 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %8090, align 4, !tbaa !126, !noalias !128
  %8091 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %8091, align 4, !tbaa !126, !noalias !128
  %8092 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %8092, align 4, !tbaa !126, !noalias !128
  %8093 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %8093, align 4, !tbaa !126, !noalias !128
  %8094 = icmp sgt i32 %7953, 0
  br i1 %8094, label %8095, label %8156

; <label>:8095                                    ; preds = %8083
  br label %8096

; <label>:8096                                    ; preds = %8145, %8095
  %8097 = phi i32 [ %8146, %8145 ], [ 0, %8095 ]
  %8098 = phi i32 [ %8147, %8145 ], [ 0, %8095 ]
  %8099 = add nuw i32 %8098, 171
  %8100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %8099)  ; CBufferLoadLegacy(handle,regIndex)
  %8101 = extractvalue %dx.types.CBufRet.f32 %8100, 0
  %8102 = extractvalue %dx.types.CBufRet.f32 %8100, 1
  %8103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8104 = extractvalue %dx.types.CBufRet.f32 %8103, 0
  %8105 = extractvalue %dx.types.CBufRet.f32 %8103, 1
  %8106 = fsub fast float %8101, %8104
  %8107 = fsub fast float %8102, %8105
  %8108 = extractvalue %dx.types.CBufRet.f32 %8100, 2
  %8109 = fsub fast float -0.000000e+00, %8106
  %8110 = fsub fast float -0.000000e+00, %8107
  %8111 = call float @dx.op.dot2.f32(i32 54, float %7930, float %7931, float %8109, float %8110)  ; Dot2(ax,ay,bx,by)
  %8112 = fmul fast float %8111, 2.000000e+00
  %8113 = call float @dx.op.dot2.f32(i32 54, float %8109, float %8110, float %8109, float %8110)  ; Dot2(ax,ay,bx,by)
  %8114 = fmul fast float %8108, %8108
  %8115 = fsub fast float %8113, %8114
  %8116 = fmul fast float %8112, %8112
  %8117 = fmul fast float %7973, %8115
  %8118 = fsub fast float %8116, %8117
  %8119 = fcmp fast ogt float %8118, 0.000000e+00
  br i1 %8119, label %8120, label %8135

; <label>:8120                                    ; preds = %8096
  %8121 = fcmp fast ogt float %8112, 0.000000e+00
  %8122 = call float @dx.op.unary.f32(i32 24, float %8118)  ; Sqrt(value)
  %8123 = fsub fast float -0.000000e+00, %8122
  %8124 = select i1 %8121, float %8122, float %8123
  %8125 = fadd fast float %8124, %8112
  %8126 = fmul float %8125, -5.000000e-01
  %8127 = fdiv fast float %8126, %7966
  %8128 = call float @dx.op.binary.f32(i32 35, float %8127, float 0.000000e+00)  ; FMax(a,b)
  %8129 = call float @dx.op.binary.f32(i32 36, float %8001, float %8128)  ; FMin(a,b)
  %8130 = fdiv fast float %8115, %8126
  %8131 = call float @dx.op.binary.f32(i32 35, float %8130, float 0.000000e+00)  ; FMax(a,b)
  %8132 = call float @dx.op.binary.f32(i32 36, float %8001, float %8131)  ; FMin(a,b)
  %8133 = call float @dx.op.binary.f32(i32 36, float %8129, float %8132)  ; FMin(a,b)
  %8134 = call float @dx.op.binary.f32(i32 35, float %8129, float %8132)  ; FMax(a,b)
  br label %8135

; <label>:8135                                    ; preds = %8120, %8096
  %8136 = phi float [ %8134, %8120 ], [ -1.000000e+00, %8096 ]
  %8137 = phi float [ %8133, %8120 ], [ -1.000000e+00, %8096 ]
  %8138 = phi i1 [ true, %8120 ], [ false, %8096 ]
  br i1 %8138, label %8139, label %8145

; <label>:8139                                    ; preds = %8135
  %8140 = call float @dx.op.binary.f32(i32 35, float %8084, float %8137)  ; FMax(a,b)
  %8141 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8098
  store float %8140, float* %8141, align 4, !tbaa !126, !noalias !128
  %8142 = call float @dx.op.binary.f32(i32 35, float %8084, float %8136)  ; FMax(a,b)
  %8143 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8098
  store float %8142, float* %8143, align 4, !tbaa !126, !noalias !128
  %8144 = add nsw i32 %8097, 1
  br label %8145

; <label>:8145                                    ; preds = %8139, %8135
  %8146 = phi i32 [ %8144, %8139 ], [ %8097, %8135 ]
  %8147 = add nuw nsw i32 %8098, 1
  %8148 = icmp eq i32 %8147, %7953
  br i1 %8148, label %8149, label %8096

; <label>:8149                                    ; preds = %8145
  %8150 = load float, float* %8090, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %8151 = load float, float* %8089, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  %8152 = load float, float* %8088, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  %8153 = load float, float* %8093, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %8154 = load float, float* %8092, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  %8155 = load float, float* %8091, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  br label %8156

; <label>:8156                                    ; preds = %8149, %8083
  %8157 = phi float [ -1.000000e+00, %8083 ], [ %8155, %8149 ]
  %8158 = phi float [ -1.000000e+00, %8083 ], [ %8154, %8149 ]
  %8159 = phi float [ -1.000000e+00, %8083 ], [ %8153, %8149 ]
  %8160 = phi float [ -1.000000e+00, %8083 ], [ %8152, %8149 ]
  %8161 = phi float [ -1.000000e+00, %8083 ], [ %8151, %8149 ]
  %8162 = phi float [ -1.000000e+00, %8083 ], [ %8150, %8149 ]
  %8163 = phi i32 [ 0, %8083 ], [ %8146, %8149 ]
  %8164 = call float @dx.op.binary.f32(i32 36, float %8161, float %8162)  ; FMin(a,b)
  %8165 = call float @dx.op.binary.f32(i32 36, float %8160, float %8164)  ; FMin(a,b)
  %8166 = call float @dx.op.binary.f32(i32 35, float %8160, float %8161)  ; FMax(a,b)
  %8167 = call float @dx.op.binary.f32(i32 36, float %8166, float %8162)  ; FMin(a,b)
  %8168 = call float @dx.op.binary.f32(i32 36, float %8160, float %8161)  ; FMin(a,b)
  %8169 = call float @dx.op.binary.f32(i32 35, float %8168, float %8167)  ; FMax(a,b)
  %8170 = call float @dx.op.binary.f32(i32 35, float %8161, float %8162)  ; FMax(a,b)
  %8171 = call float @dx.op.binary.f32(i32 35, float %8160, float %8170)  ; FMax(a,b)
  store float %8165, float* %8088, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  store float %8169, float* %8089, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  store float %8171, float* %8090, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %8172 = call float @dx.op.binary.f32(i32 36, float %8158, float %8159)  ; FMin(a,b)
  %8173 = call float @dx.op.binary.f32(i32 36, float %8157, float %8172)  ; FMin(a,b)
  %8174 = call float @dx.op.binary.f32(i32 35, float %8157, float %8158)  ; FMax(a,b)
  %8175 = call float @dx.op.binary.f32(i32 36, float %8174, float %8159)  ; FMin(a,b)
  %8176 = call float @dx.op.binary.f32(i32 36, float %8157, float %8158)  ; FMin(a,b)
  %8177 = call float @dx.op.binary.f32(i32 35, float %8176, float %8175)  ; FMax(a,b)
  %8178 = call float @dx.op.binary.f32(i32 35, float %8158, float %8159)  ; FMax(a,b)
  %8179 = call float @dx.op.binary.f32(i32 35, float %8157, float %8178)  ; FMax(a,b)
  store float %8173, float* %8091, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  store float %8177, float* %8092, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  store float %8179, float* %8093, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %8180 = sub nsw i32 3, %8163
  %8181 = icmp sgt i32 %8180, 2
  br i1 %8181, label %8182, label %8220

; <label>:8182                                    ; preds = %8156
  %8183 = icmp eq i32 %7951, 0
  %8184 = fsub fast float %8001, %8085
  %8185 = select i1 %8183, float %8184, float %8085
  %8186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8187 = extractvalue %dx.types.CBufRet.f32 %8186, 0
  %8188 = extractvalue %dx.types.CBufRet.f32 %8186, 1
  %8189 = extractvalue %dx.types.CBufRet.f32 %8186, 2
  %8190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8191 = extractvalue %dx.types.CBufRet.f32 %8190, 0
  %8192 = extractvalue %dx.types.CBufRet.f32 %8190, 1
  %8193 = extractvalue %dx.types.CBufRet.f32 %8190, 2
  %8194 = extractvalue %dx.types.CBufRet.f32 %8190, 3
  %8195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8196 = extractvalue %dx.types.CBufRet.f32 %8195, 3
  %8197 = call float @dx.op.binary.f32(i32 36, float %8086, float %8196)  ; FMin(a,b)
  %8198 = fmul fast float %8194, %8185
  %8199 = call float @dx.op.unary.f32(i32 7, float %8198)  ; Saturate(value)
  %8200 = fsub fast float %8191, %8187
  %8201 = fsub fast float %8192, %8188
  %8202 = fsub fast float %8193, %8189
  %8203 = fmul fast float %8199, %8200
  %8204 = fmul fast float %8199, %8201
  %8205 = fmul fast float %8199, %8202
  %8206 = fadd fast float %8203, %8187
  %8207 = fadd fast float %8204, %8188
  %8208 = fadd fast float %8205, %8189
  %8209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8210 = extractvalue %dx.types.CBufRet.f32 %8209, 0
  %8211 = extractvalue %dx.types.CBufRet.f32 %8209, 1
  %8212 = fadd fast float %8211, %8210
  %8213 = call float @dx.op.unary.f32(i32 7, float %8212)  ; Saturate(value)
  %8214 = extractvalue %dx.types.CBufRet.f32 %8209, 2
  %8215 = extractvalue %dx.types.CBufRet.f32 %8209, 3
  %8216 = fadd fast float %8215, %8214
  %8217 = call float @dx.op.unary.f32(i32 7, float %8216)  ; Saturate(value)
  %8218 = fmul fast float %8213, %8197
  %8219 = fmul fast float %8218, %8217
  br label %8302

; <label>:8220                                    ; preds = %8156
  %8221 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8180
  %8222 = load float, float* %8221, align 4, !tbaa !126, !noalias !128
  %8223 = fcmp fast olt float %8222, %8087
  %8224 = icmp sgt i32 %8163, 0
  %8225 = and i1 %8224, %8223
  br i1 %8225, label %8226, label %8263

; <label>:8226                                    ; preds = %8220
  br label %8227

; <label>:8227                                    ; preds = %8256, %8226
  %8228 = phi float [ %8257, %8256 ], [ %8085, %8226 ]
  %8229 = phi float [ %8258, %8256 ], [ %8086, %8226 ]
  %8230 = phi float [ %8238, %8256 ], [ %8222, %8226 ]
  %8231 = phi i32 [ %8235, %8256 ], [ %8180, %8226 ]
  %8232 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8231
  %8233 = load float, float* %8232, align 4, !tbaa !126, !noalias !128
  %8234 = icmp slt i32 %8231, 2
  %8235 = add nsw i32 %8231, 1
  %8236 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8235
  %8237 = load float, float* %8236, align 4, !tbaa !126, !noalias !128
  %8238 = select i1 %8234, float %8237, float %8001
  %8239 = call float @dx.op.binary.f32(i32 36, float %8238, float %8233)  ; FMin(a,b)
  %8240 = call float @dx.op.binary.f32(i32 36, float %8087, float %8239)  ; FMin(a,b)
  %8241 = icmp eq i32 %7951, 0
  %8242 = fadd fast float %8240, %8230
  %8243 = fmul fast float %8242, %7932
  %8244 = fadd fast float %8243, %7945
  br i1 %8241, label %8250, label %8245

; <label>:8245                                    ; preds = %8227
  %8246 = fsub fast float %8240, %8230
  %8247 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8246)  ; FMax(a,b)
  %8248 = fmul fast float %8247, %8244
  %8249 = fadd fast float %8248, %8229
  br label %8256

; <label>:8250                                    ; preds = %8227
  %8251 = fsub fast float %8230, %8240
  %8252 = call float @dx.op.unary.f32(i32 6, float %8251)  ; FAbs(value)
  %8253 = fadd fast float %8252, %8228
  %8254 = fmul fast float %8252, %8244
  %8255 = fsub fast float %8229, %8254
  br label %8256

; <label>:8256                                    ; preds = %8250, %8245
  %8257 = phi float [ %8247, %8245 ], [ %8253, %8250 ]
  %8258 = phi float [ %8249, %8245 ], [ %8255, %8250 ]
  %8259 = fcmp fast olt float %8238, %8087
  %8260 = icmp slt i32 %8235, 3
  %8261 = and i1 %8260, %8259
  br i1 %8261, label %8227, label %8262

; <label>:8262                                    ; preds = %8256
  br label %8263

; <label>:8263                                    ; preds = %8262, %8220
  %8264 = phi float [ %8085, %8220 ], [ %8257, %8262 ]
  %8265 = phi float [ %8086, %8220 ], [ %8258, %8262 ]
  %8266 = fsub fast float %8001, %8264
  %8267 = select i1 %8003, float %8264, float %8266
  %8268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8269 = extractvalue %dx.types.CBufRet.f32 %8268, 0
  %8270 = extractvalue %dx.types.CBufRet.f32 %8268, 1
  %8271 = extractvalue %dx.types.CBufRet.f32 %8268, 2
  %8272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8273 = extractvalue %dx.types.CBufRet.f32 %8272, 0
  %8274 = extractvalue %dx.types.CBufRet.f32 %8272, 1
  %8275 = extractvalue %dx.types.CBufRet.f32 %8272, 2
  %8276 = extractvalue %dx.types.CBufRet.f32 %8272, 3
  %8277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8278 = extractvalue %dx.types.CBufRet.f32 %8277, 3
  %8279 = call float @dx.op.binary.f32(i32 36, float %8265, float %8278)  ; FMin(a,b)
  %8280 = fmul fast float %8276, %8267
  %8281 = call float @dx.op.unary.f32(i32 7, float %8280)  ; Saturate(value)
  %8282 = fsub fast float %8273, %8269
  %8283 = fsub fast float %8274, %8270
  %8284 = fsub fast float %8275, %8271
  %8285 = fmul fast float %8281, %8282
  %8286 = fmul fast float %8281, %8283
  %8287 = fmul fast float %8281, %8284
  %8288 = fadd fast float %8285, %8269
  %8289 = fadd fast float %8286, %8270
  %8290 = fadd fast float %8287, %8271
  %8291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8292 = extractvalue %dx.types.CBufRet.f32 %8291, 0
  %8293 = extractvalue %dx.types.CBufRet.f32 %8291, 1
  %8294 = fadd fast float %8293, %8292
  %8295 = call float @dx.op.unary.f32(i32 7, float %8294)  ; Saturate(value)
  %8296 = extractvalue %dx.types.CBufRet.f32 %8291, 2
  %8297 = extractvalue %dx.types.CBufRet.f32 %8291, 3
  %8298 = fadd fast float %8297, %8296
  %8299 = call float @dx.op.unary.f32(i32 7, float %8298)  ; Saturate(value)
  %8300 = fmul fast float %8295, %8279
  %8301 = fmul fast float %8300, %8299
  br label %8302

; <label>:8302                                    ; preds = %8263, %8182, %8017, %7999, %7997
  %8303 = phi float [ %8026, %8017 ], [ %8185, %8182 ], [ %8267, %8263 ], [ 0.000000e+00, %7997 ], [ 0.000000e+00, %7999 ]
  %8304 = phi float [ %8060, %8017 ], [ %8219, %8182 ], [ %8301, %8263 ], [ 0.000000e+00, %7997 ], [ 0.000000e+00, %7999 ]
  %8305 = phi float [ %8047, %8017 ], [ %8206, %8182 ], [ %8288, %8263 ], [ 0.000000e+00, %7997 ], [ 0.000000e+00, %7999 ]
  %8306 = phi float [ %8048, %8017 ], [ %8207, %8182 ], [ %8289, %8263 ], [ 0.000000e+00, %7997 ], [ 0.000000e+00, %7999 ]
  %8307 = phi float [ %8049, %8017 ], [ %8208, %8182 ], [ %8290, %8263 ], [ 0.000000e+00, %7997 ], [ 0.000000e+00, %7999 ]
  %8308 = fmul fast float %7940, %8304
  %8309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8310 = extractvalue %dx.types.CBufRet.f32 %8309, 2
  %8311 = fsub fast float %7947, %8310
  %8312 = fcmp fast olt float %8308, -2.000000e+01
  %8313 = call float @dx.op.unary.f32(i32 21, float %8308)  ; Exp(value)
  %8314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8315 = extractvalue %dx.types.CBufRet.f32 %8314, 2
  %8316 = extractvalue %dx.types.CBufRet.f32 %8314, 3
  %8317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8318 = extractvalue %dx.types.CBufRet.f32 %8317, 2
  %8319 = fmul fast float %8316, %8311
  %8320 = call float @dx.op.unary.f32(i32 7, float %8319)  ; Saturate(value)
  %8321 = fsub fast float 1.000000e+00, %8320
  %8322 = fmul fast float %7932, 5.000000e-01
  %8323 = fadd fast float %8322, 5.000000e-01
  %8324 = call float @dx.op.unary.f32(i32 7, float %8323)  ; Saturate(value)
  %8325 = fsub fast float 1.000000e+00, %8324
  %8326 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8321)  ; FMax(a,b)
  %8327 = fdiv fast float %8325, %8326
  %8328 = fsub fast float %8311, %7889
  %8329 = call float @dx.op.unary.f32(i32 6, float %8328)  ; FAbs(value)
  %8330 = fmul fast float %8329, %8315
  %8331 = call float @dx.op.unary.f32(i32 7, float %8327)  ; Saturate(value)
  %8332 = fsub fast float 1.000000e+00, %8330
  %8333 = fmul fast float %8332, %8331
  %8334 = fadd fast float %8333, %8330
  %8335 = fmul fast float %8318, %8311
  %8336 = call float @dx.op.unary.f32(i32 7, float %8335)  ; Saturate(value)
  %8337 = fsub fast float 1.000000e+00, %8334
  %8338 = fmul fast float %8337, %8336
  %8339 = fadd fast float %8338, %8334
  %8340 = call float @dx.op.unary.f32(i32 7, float %8339)  ; Saturate(value)
  %8341 = fadd fast float %8313, -1.000000e+00
  %8342 = select i1 %8312, float -1.000000e+00, float %8341
  %8343 = fmul fast float %8340, %8342
  %8344 = fadd fast float %8343, 1.000000e+00
  %8345 = fsub fast float -0.000000e+00, %8343
  %8346 = fmul fast float %8305, %8345
  %8347 = fmul fast float %8306, %8345
  %8348 = fmul fast float %8307, %8345
  br label %8349

; <label>:8349                                    ; preds = %8302, %7898
  %8350 = phi float [ %8303, %8302 ], [ 0.000000e+00, %7898 ]
  %8351 = phi float [ %8344, %8302 ], [ 1.000000e+00, %7898 ]
  %8352 = phi float [ %8346, %8302 ], [ 0.000000e+00, %7898 ]
  %8353 = phi float [ %8347, %8302 ], [ 0.000000e+00, %7898 ]
  %8354 = phi float [ %8348, %8302 ], [ 0.000000e+00, %7898 ]
  %8355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8356 = extractvalue %dx.types.CBufRet.f32 %8355, 1
  %8357 = fsub fast float 1.000000e+00, %8351
  %8358 = fmul fast float %8357, %7933
  %8359 = fmul fast float %8358, %8356
  %8360 = fsub fast float %7933, %8359
  br i1 %7926, label %8361, label %8390, !dx.controlflow.hints !164

; <label>:8361                                    ; preds = %8349
  %8362 = fmul fast float %7934, %7923
  %8363 = fadd fast float %8362, %7924
  %8364 = call float @dx.op.unary.f32(i32 7, float %8363)  ; Saturate(value)
  %8365 = fmul fast float %7905, %8360
  %8366 = fsub fast float -0.000000e+00, %8365
  %8367 = fmul fast float %7906, %8360
  %8368 = fsub fast float -0.000000e+00, %8367
  %8369 = call float @dx.op.unary.f32(i32 21, float %8366)  ; Exp(value)
  %8370 = call float @dx.op.unary.f32(i32 21, float %8368)  ; Exp(value)
  %8371 = call float @dx.op.binary.f32(i32 35, float %7913, float %8369)  ; FMax(a,b)
  %8372 = call float @dx.op.binary.f32(i32 35, float %7913, float %8370)  ; FMax(a,b)
  %8373 = fsub fast float %8372, %8371
  %8374 = fmul fast float %8373, %8364
  %8375 = fadd fast float %8374, %8371
  %8376 = call float @dx.op.unary.f32(i32 7, float %8375)  ; Saturate(value)
  %8377 = fsub fast float %7910, %7915
  %8378 = fsub fast float %7911, %7916
  %8379 = fsub fast float %7912, %7917
  %8380 = fmul fast float %8364, %8377
  %8381 = fmul fast float %8364, %8378
  %8382 = fmul fast float %8364, %8379
  %8383 = fadd fast float %8380, %7915
  %8384 = fadd fast float %8381, %7916
  %8385 = fadd fast float %8382, %7917
  %8386 = fsub fast float 1.000000e+00, %8376
  %8387 = fmul fast float %8386, %8383
  %8388 = fmul fast float %8386, %8384
  %8389 = fmul fast float %8386, %8385
  br label %8449

; <label>:8390                                    ; preds = %8349
  %8391 = fmul fast float %8360, %7922
  %8392 = call float @dx.op.unary.f32(i32 7, float %8391)  ; Saturate(value)
  %8393 = fsub fast float 2.000000e+00, %8392
  %8394 = fmul fast float %8392, 9.921875e-01
  %8395 = fmul fast float %8394, %8393
  %8396 = fadd fast float %8395, 3.906250e-03
  %8397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %8396, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8398 = extractvalue %dx.types.ResRet.f32 %8397, 0
  %8399 = fsub fast float %8392, %8398
  %8400 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8399)  ; FMax(a,b)
  %8401 = fmul fast float %7908, %7889
  %8402 = call float @dx.op.unary.f32(i32 6, float %8401)  ; FAbs(value)
  %8403 = fcmp fast ogt float %8402, 0x3EB0C6F7A0000000
  br i1 %8403, label %8404, label %8410, !dx.controlflow.hints !165

; <label>:8404                                    ; preds = %8390
  %8405 = fmul fast float %8401, 0xBFF7154760000000
  %8406 = call float @dx.op.unary.f32(i32 21, float %8405)  ; Exp(value)
  %8407 = fsub fast float 1.000000e+00, %8406
  %8408 = fdiv fast float %8407, %8401
  %8409 = fmul fast float %8408, %7918
  br label %8410

; <label>:8410                                    ; preds = %8404, %8390
  %8411 = phi float [ %8409, %8404 ], [ %7918, %8390 ]
  %8412 = fadd fast float %8411, %7920
  %8413 = fmul fast float %8412, %8400
  %8414 = fmul fast float %7905, %8413
  %8415 = fsub fast float -0.000000e+00, %8414
  %8416 = fmul fast float %7906, %8413
  %8417 = fsub fast float -0.000000e+00, %8416
  %8418 = fmul fast float %7907, %8413
  %8419 = fsub fast float -0.000000e+00, %8418
  %8420 = call float @dx.op.unary.f32(i32 21, float %8415)  ; Exp(value)
  %8421 = call float @dx.op.unary.f32(i32 21, float %8417)  ; Exp(value)
  %8422 = call float @dx.op.unary.f32(i32 21, float %8419)  ; Exp(value)
  %8423 = fmul fast float %7934, %7934
  %8424 = fadd fast float %8423, 1.000000e+00
  %8425 = fmul fast float %8424, 0x3FAE8EC8A0000000
  %8426 = fmul fast float %8425, %7915
  %8427 = fmul fast float %8425, %7916
  %8428 = fmul fast float %8425, %7917
  %8429 = fmul fast float %7934, %7913
  %8430 = fsub fast float 1.000000e+00, %8429
  %8431 = fmul fast float %7913, %7913
  %8432 = fsub fast float 1.000000e+00, %8431
  %8433 = fmul fast float %8432, 0x3FB45F3060000000
  %8434 = fmul fast float %8430, %8430
  %8435 = fdiv fast float 1.000000e+00, %8434
  %8436 = fmul fast float %8433, %8435
  %8437 = fmul fast float %8436, %7910
  %8438 = fmul fast float %8436, %7911
  %8439 = fmul fast float %8436, %7912
  %8440 = fadd fast float %8437, %8426
  %8441 = fadd fast float %8438, %8427
  %8442 = fadd fast float %8439, %8428
  %8443 = fsub fast float 1.000000e+00, %8420
  %8444 = fsub fast float 1.000000e+00, %8421
  %8445 = fsub fast float 1.000000e+00, %8422
  %8446 = fmul fast float %8440, %8443
  %8447 = fmul fast float %8441, %8444
  %8448 = fmul fast float %8442, %8445
  br label %8449

; <label>:8449                                    ; preds = %8410, %8361
  %8450 = phi float [ %8387, %8361 ], [ %8446, %8410 ]
  %8451 = phi float [ %8388, %8361 ], [ %8447, %8410 ]
  %8452 = phi float [ %8389, %8361 ], [ %8448, %8410 ]
  %8453 = phi float [ %8376, %8361 ], [ %8420, %8410 ]
  %8454 = phi float [ %8376, %8361 ], [ %8421, %8410 ]
  %8455 = phi float [ %8376, %8361 ], [ %8422, %8410 ]
  br i1 %7942, label %8456, label %8654, !dx.controlflow.hints !166

; <label>:8456                                    ; preds = %8449
  %8457 = extractvalue %dx.types.CBufRet.f32 %8355, 0
  %8458 = fmul fast float %8457, %8357
  %8459 = fsub fast float %8352, %8450
  %8460 = fsub fast float %8353, %8451
  %8461 = fsub fast float %8354, %8452
  %8462 = fmul fast float %8458, %8459
  %8463 = fmul fast float %8458, %8460
  %8464 = fmul fast float %8458, %8461
  %8465 = fadd fast float %8462, %8450
  %8466 = fadd fast float %8463, %8451
  %8467 = fadd fast float %8464, %8452
  %8468 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8453)  ; FMax(a,b)
  %8469 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8454)  ; FMax(a,b)
  %8470 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8455)  ; FMax(a,b)
  %8471 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8351)  ; FMax(a,b)
  %8472 = call float @dx.op.binary.f32(i32 35, float %8350, float %8360)  ; FMax(a,b)
  %8473 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8472)  ; FMax(a,b)
  %8474 = fdiv fast float %8350, %8473
  %8475 = call float @dx.op.unary.f32(i32 7, float %8474)  ; Saturate(value)
  %8476 = fdiv fast float %8360, %8473
  %8477 = call float @dx.op.unary.f32(i32 7, float %8476)  ; Saturate(value)
  %8478 = fcmp fast une float %8471, 1.000000e+00
  br i1 %8478, label %8479, label %8492, !dx.controlflow.hints !167

; <label>:8479                                    ; preds = %8456
  %8480 = call float @dx.op.unary.f32(i32 23, float %8471)  ; Log(value)
  %8481 = fmul fast float %8480, 0x3FE62E4300000000
  %8482 = fmul fast float %8352, %8481
  %8483 = fsub fast float -0.000000e+00, %8482
  %8484 = fmul fast float %8353, %8481
  %8485 = fsub fast float -0.000000e+00, %8484
  %8486 = fmul fast float %8354, %8481
  %8487 = fsub fast float -0.000000e+00, %8486
  %8488 = fsub fast float 1.000000e+00, %8471
  %8489 = fdiv fast float %8483, %8488
  %8490 = fdiv fast float %8485, %8488
  %8491 = fdiv fast float %8487, %8488
  br label %8492

; <label>:8492                                    ; preds = %8479, %8456
  %8493 = phi float [ %8489, %8479 ], [ %8352, %8456 ]
  %8494 = phi float [ %8490, %8479 ], [ %8353, %8456 ]
  %8495 = phi float [ %8491, %8479 ], [ %8354, %8456 ]
  %8496 = phi float [ %8481, %8479 ], [ 0.000000e+00, %8456 ]
  %8497 = fcmp fast une float %8468, 1.000000e+00
  br i1 %8497, label %8498, label %8505, !dx.controlflow.hints !168

; <label>:8498                                    ; preds = %8492
  %8499 = call float @dx.op.unary.f32(i32 23, float %8468)  ; Log(value)
  %8500 = fmul fast float %8499, 0x3FE62E4300000000
  %8501 = fmul fast float %8465, %8500
  %8502 = fsub fast float -0.000000e+00, %8501
  %8503 = fsub fast float 1.000000e+00, %8468
  %8504 = fdiv fast float %8502, %8503
  br label %8505

; <label>:8505                                    ; preds = %8498, %8492
  %8506 = phi float [ %8504, %8498 ], [ %8465, %8492 ]
  %8507 = phi float [ %8500, %8498 ], [ 0.000000e+00, %8492 ]
  %8508 = fcmp fast une float %8469, 1.000000e+00
  br i1 %8508, label %8509, label %8516, !dx.controlflow.hints !168

; <label>:8509                                    ; preds = %8505
  %8510 = call float @dx.op.unary.f32(i32 23, float %8469)  ; Log(value)
  %8511 = fmul fast float %8510, 0x3FE62E4300000000
  %8512 = fmul fast float %8466, %8511
  %8513 = fsub fast float -0.000000e+00, %8512
  %8514 = fsub fast float 1.000000e+00, %8469
  %8515 = fdiv fast float %8513, %8514
  br label %8516

; <label>:8516                                    ; preds = %8509, %8505
  %8517 = phi float [ %8515, %8509 ], [ %8466, %8505 ]
  %8518 = phi float [ %8511, %8509 ], [ 0.000000e+00, %8505 ]
  %8519 = fcmp fast une float %8470, 1.000000e+00
  br i1 %8519, label %8520, label %8527, !dx.controlflow.hints !168

; <label>:8520                                    ; preds = %8516
  %8521 = call float @dx.op.unary.f32(i32 23, float %8470)  ; Log(value)
  %8522 = fmul fast float %8521, 0x3FE62E4300000000
  %8523 = fmul fast float %8467, %8522
  %8524 = fsub fast float -0.000000e+00, %8523
  %8525 = fsub fast float 1.000000e+00, %8470
  %8526 = fdiv fast float %8524, %8525
  br label %8527

; <label>:8527                                    ; preds = %8520, %8516
  %8528 = phi float [ %8526, %8520 ], [ %8467, %8516 ]
  %8529 = phi float [ %8522, %8520 ], [ 0.000000e+00, %8516 ]
  %8530 = fmul fast float %8493, %8477
  %8531 = fmul fast float %8494, %8477
  %8532 = fmul fast float %8495, %8477
  %8533 = fmul fast float %8496, %8477
  %8534 = fmul fast float %8506, %8475
  %8535 = fmul fast float %8517, %8475
  %8536 = fmul fast float %8528, %8475
  %8537 = fmul fast float %8507, %8475
  %8538 = fmul fast float %8518, %8475
  %8539 = fmul fast float %8529, %8475
  %8540 = fadd fast float %8534, %8530
  %8541 = fadd fast float %8535, %8531
  %8542 = fadd fast float %8536, %8532
  %8543 = fadd fast float %8537, %8533
  %8544 = fadd fast float %8538, %8533
  %8545 = fadd fast float %8539, %8533
  %8546 = fcmp fast une float %8543, 0.000000e+00
  br i1 %8546, label %8547, label %8554, !dx.controlflow.hints !169

; <label>:8547                                    ; preds = %8527
  %8548 = fmul fast float %8543, 0x3FF7154760000000
  %8549 = call float @dx.op.unary.f32(i32 21, float %8548)  ; Exp(value)
  %8550 = fsub fast float 1.000000e+00, %8549
  %8551 = fmul fast float %8540, %8550
  %8552 = fsub fast float -0.000000e+00, %8551
  %8553 = fdiv fast float %8552, %8543
  br label %8554

; <label>:8554                                    ; preds = %8547, %8527
  %8555 = phi float [ %8549, %8547 ], [ 1.000000e+00, %8527 ]
  %8556 = phi float [ %8553, %8547 ], [ %8540, %8527 ]
  %8557 = fcmp fast une float %8544, 0.000000e+00
  br i1 %8557, label %8558, label %8565, !dx.controlflow.hints !169

; <label>:8558                                    ; preds = %8554
  %8559 = fmul fast float %8544, 0x3FF7154760000000
  %8560 = call float @dx.op.unary.f32(i32 21, float %8559)  ; Exp(value)
  %8561 = fsub fast float 1.000000e+00, %8560
  %8562 = fmul fast float %8541, %8561
  %8563 = fsub fast float -0.000000e+00, %8562
  %8564 = fdiv fast float %8563, %8544
  br label %8565

; <label>:8565                                    ; preds = %8558, %8554
  %8566 = phi float [ %8560, %8558 ], [ 1.000000e+00, %8554 ]
  %8567 = phi float [ %8564, %8558 ], [ %8541, %8554 ]
  %8568 = fcmp fast une float %8545, 0.000000e+00
  br i1 %8568, label %8569, label %8576, !dx.controlflow.hints !169

; <label>:8569                                    ; preds = %8565
  %8570 = fmul fast float %8545, 0x3FF7154760000000
  %8571 = call float @dx.op.unary.f32(i32 21, float %8570)  ; Exp(value)
  %8572 = fsub fast float 1.000000e+00, %8571
  %8573 = fmul fast float %8542, %8572
  %8574 = fsub fast float -0.000000e+00, %8573
  %8575 = fdiv fast float %8574, %8545
  br label %8576

; <label>:8576                                    ; preds = %8569, %8565
  %8577 = phi float [ %8571, %8569 ], [ 1.000000e+00, %8565 ]
  %8578 = phi float [ %8575, %8569 ], [ %8542, %8565 ]
  %8579 = fcmp fast ogt float %8475, %8477
  br i1 %8579, label %8580, label %8600

; <label>:8580                                    ; preds = %8576
  %8581 = fsub fast float 1.000000e+00, %8477
  %8582 = fmul fast float %8493, %8581
  %8583 = fmul fast float %8494, %8581
  %8584 = fmul fast float %8495, %8581
  %8585 = fmul fast float %8496, %8581
  %8586 = fcmp fast une float %8585, 0.000000e+00
  br i1 %8586, label %8587, label %8638, !dx.controlflow.hints !170

; <label>:8587                                    ; preds = %8580
  %8588 = fmul fast float %8585, 0x3FF7154760000000
  %8589 = call float @dx.op.unary.f32(i32 21, float %8588)  ; Exp(value)
  %8590 = fsub fast float 1.000000e+00, %8589
  %8591 = fmul fast float %8582, %8590
  %8592 = fsub fast float -0.000000e+00, %8591
  %8593 = fmul fast float %8583, %8590
  %8594 = fsub fast float -0.000000e+00, %8593
  %8595 = fmul fast float %8584, %8590
  %8596 = fsub fast float -0.000000e+00, %8595
  %8597 = fdiv fast float %8592, %8585
  %8598 = fdiv fast float %8594, %8585
  %8599 = fdiv fast float %8596, %8585
  br label %8638

; <label>:8600                                    ; preds = %8576
  %8601 = fsub fast float 1.000000e+00, %8475
  %8602 = fmul fast float %8506, %8601
  %8603 = fmul fast float %8517, %8601
  %8604 = fmul fast float %8528, %8601
  %8605 = fmul fast float %8507, %8601
  %8606 = fmul fast float %8518, %8601
  %8607 = fmul fast float %8529, %8601
  %8608 = fcmp fast une float %8605, 0.000000e+00
  br i1 %8608, label %8609, label %8616, !dx.controlflow.hints !169

; <label>:8609                                    ; preds = %8600
  %8610 = fmul fast float %8605, 0x3FF7154760000000
  %8611 = call float @dx.op.unary.f32(i32 21, float %8610)  ; Exp(value)
  %8612 = fsub fast float 1.000000e+00, %8611
  %8613 = fmul fast float %8602, %8612
  %8614 = fsub fast float -0.000000e+00, %8613
  %8615 = fdiv fast float %8614, %8605
  br label %8616

; <label>:8616                                    ; preds = %8609, %8600
  %8617 = phi float [ %8615, %8609 ], [ %8602, %8600 ]
  %8618 = phi float [ %8611, %8609 ], [ 1.000000e+00, %8600 ]
  %8619 = fcmp fast une float %8606, 0.000000e+00
  br i1 %8619, label %8620, label %8627, !dx.controlflow.hints !169

; <label>:8620                                    ; preds = %8616
  %8621 = fmul fast float %8606, 0x3FF7154760000000
  %8622 = call float @dx.op.unary.f32(i32 21, float %8621)  ; Exp(value)
  %8623 = fsub fast float 1.000000e+00, %8622
  %8624 = fmul fast float %8603, %8623
  %8625 = fsub fast float -0.000000e+00, %8624
  %8626 = fdiv fast float %8625, %8606
  br label %8627

; <label>:8627                                    ; preds = %8620, %8616
  %8628 = phi float [ %8626, %8620 ], [ %8603, %8616 ]
  %8629 = phi float [ %8622, %8620 ], [ 1.000000e+00, %8616 ]
  %8630 = fcmp fast une float %8607, 0.000000e+00
  br i1 %8630, label %8631, label %8638, !dx.controlflow.hints !169

; <label>:8631                                    ; preds = %8627
  %8632 = fmul fast float %8607, 0x3FF7154760000000
  %8633 = call float @dx.op.unary.f32(i32 21, float %8632)  ; Exp(value)
  %8634 = fsub fast float 1.000000e+00, %8633
  %8635 = fmul fast float %8604, %8634
  %8636 = fsub fast float -0.000000e+00, %8635
  %8637 = fdiv fast float %8636, %8607
  br label %8638

; <label>:8638                                    ; preds = %8631, %8627, %8587, %8580
  %8639 = phi float [ %8637, %8631 ], [ %8599, %8587 ], [ %8584, %8580 ], [ %8604, %8627 ]
  %8640 = phi float [ %8628, %8631 ], [ %8598, %8587 ], [ %8583, %8580 ], [ %8628, %8627 ]
  %8641 = phi float [ %8617, %8631 ], [ %8597, %8587 ], [ %8582, %8580 ], [ %8617, %8627 ]
  %8642 = phi float [ %8633, %8631 ], [ %8589, %8587 ], [ 1.000000e+00, %8580 ], [ 1.000000e+00, %8627 ]
  %8643 = phi float [ %8629, %8631 ], [ %8589, %8587 ], [ 1.000000e+00, %8580 ], [ %8629, %8627 ]
  %8644 = phi float [ %8618, %8631 ], [ %8589, %8587 ], [ 1.000000e+00, %8580 ], [ %8618, %8627 ]
  %8645 = fmul fast float %8644, %8556
  %8646 = fmul fast float %8643, %8567
  %8647 = fmul fast float %8642, %8578
  %8648 = fadd fast float %8645, %8641
  %8649 = fadd fast float %8646, %8640
  %8650 = fadd fast float %8647, %8639
  %8651 = fmul fast float %8644, %8555
  %8652 = fmul fast float %8643, %8566
  %8653 = fmul fast float %8642, %8577
  br label %8654

; <label>:8654                                    ; preds = %8638, %8449
  %8655 = phi float [ %8653, %8638 ], [ %8455, %8449 ]
  %8656 = phi float [ %8652, %8638 ], [ %8454, %8449 ]
  %8657 = phi float [ %8651, %8638 ], [ %8453, %8449 ]
  %8658 = phi float [ %8650, %8638 ], [ %8452, %8449 ]
  %8659 = phi float [ %8649, %8638 ], [ %8451, %8449 ]
  %8660 = phi float [ %8648, %8638 ], [ %8450, %8449 ]
  %8661 = fmul fast float %8660, %7602
  %8662 = fmul fast float %8659, %7604
  %8663 = fmul fast float %8658, %7606
  %8664 = fmul fast float %8657, %7897
  %8665 = call float @dx.op.dot3.f32(i32 55, float %8657, float %8656, float %8655, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8666 = call float @dx.op.dot3.f32(i32 55, float %8661, float %8662, float %8663, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8667 = select i1 %250, float %8665, float %8657
  %8668 = select i1 %250, float %8665, float %8656
  %8669 = select i1 %250, float 1.000000e+00, float %8655
  %8670 = select i1 %250, float %8666, float %8661
  %8671 = select i1 %250, float 0.000000e+00, float %8662
  %8672 = select i1 %250, float 0.000000e+00, float %8663
  %8673 = fmul fast float %8667, %7891
  %8674 = fmul fast float %8668, %7892
  %8675 = fmul fast float %8669, %7893
  %8676 = fadd fast float %8673, %8670
  %8677 = fadd fast float %8674, %8671
  %8678 = fadd fast float %8672, %8675
  %8679 = fmul fast float %8667, %7894
  %8680 = fmul fast float %8668, %7895
  %8681 = fmul fast float %8669, %7896
  %8682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8683 = extractvalue %dx.types.CBufRet.i32 %8682, 0
  %8684 = icmp eq i32 %8683, 0
  br i1 %8684, label %9052, label %8685, !dx.controlflow.hints !171

; <label>:8685                                    ; preds = %8654
  %8686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8687 = extractvalue %dx.types.CBufRet.f32 %8686, 2
  %8688 = extractvalue %dx.types.CBufRet.f32 %8686, 3
  %8689 = fmul fast float %8687, %104
  %8690 = fmul fast float %8688, %105
  %8691 = fmul fast float %8689, 2.000000e+00
  %8692 = fmul fast float %8690, 2.000000e+00
  %8693 = fsub fast float 1.000000e+00, %8691
  %8694 = fsub fast float 1.000000e+00, %8692
  %8695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8696 = extractvalue %dx.types.CBufRet.f32 %8695, 0
  %8697 = extractvalue %dx.types.CBufRet.f32 %8695, 1
  %8698 = extractvalue %dx.types.CBufRet.f32 %8695, 2
  %8699 = fmul fast float %8693, %8696
  %8700 = fmul fast float %8693, %8697
  %8701 = fmul fast float %8693, %8698
  %8702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8703 = extractvalue %dx.types.CBufRet.f32 %8702, 0
  %8704 = extractvalue %dx.types.CBufRet.f32 %8702, 1
  %8705 = extractvalue %dx.types.CBufRet.f32 %8702, 2
  %8706 = fmul fast float %8694, %8703
  %8707 = fmul fast float %8694, %8704
  %8708 = fmul fast float %8694, %8705
  %8709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8710 = extractvalue %dx.types.CBufRet.f32 %8709, 0
  %8711 = extractvalue %dx.types.CBufRet.f32 %8709, 1
  %8712 = extractvalue %dx.types.CBufRet.f32 %8709, 2
  %8713 = fadd fast float %8706, %8710
  %8714 = fadd fast float %8713, %8699
  %8715 = fadd fast float %8707, %8711
  %8716 = fadd fast float %8715, %8700
  %8717 = fadd fast float %8708, %8712
  %8718 = fadd fast float %8717, %8701
  %8719 = fmul fast float %8714, %7890
  %8720 = fmul fast float %8716, %7890
  %8721 = fmul fast float %8718, %7890
  %8722 = fmul fast float %8719, %8719
  %8723 = fmul fast float %8720, %8720
  %8724 = fadd fast float %8722, %8723
  %8725 = fmul fast float %8721, %8721
  %8726 = fadd fast float %8724, %8725
  %8727 = call float @dx.op.unary.f32(i32 24, float %8726)  ; Sqrt(value)
  %8728 = extractvalue %dx.types.CBufRet.f32 %7617, 0
  %8729 = fsub fast float %8727, %8728
  %8730 = extractvalue %dx.types.CBufRet.f32 %7617, 2
  %8731 = fmul fast float %8729, %8730
  %8732 = call float @dx.op.unary.f32(i32 7, float %8731)  ; Saturate(value)
  %8733 = fadd fast float %8732, -5.000000e-01
  %8734 = fmul fast float %8733, 2.000000e+00
  %8735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8736 = extractvalue %dx.types.CBufRet.f32 %8735, 2
  %8737 = call float @dx.op.binary.f32(i32 36, float %8736, float %8734)  ; FMin(a,b)
  %8738 = fsub fast float -0.000000e+00, %8736
  %8739 = fcmp fast ogt float %8737, %8738
  br i1 %8739, label %8740, label %9052, !dx.controlflow.hints !172

; <label>:8740                                    ; preds = %8685
  %8741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8742 = extractvalue %dx.types.CBufRet.f32 %8741, 3
  %8743 = fcmp fast ogt float %8742, 0.000000e+00
  br i1 %8743, label %8744, label %8819, !dx.controlflow.hints !173

; <label>:8744                                    ; preds = %8740
  %8745 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8746 = extractvalue %dx.types.Dimensions %8745, 0
  %8747 = sitofp i32 %8746 to float
  %8748 = extractvalue %dx.types.Dimensions %8745, 1
  %8749 = sitofp i32 %8748 to float
  %8750 = fmul fast float %8689, %8747
  %8751 = fmul fast float %8690, %8749
  %8752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8753 = extractvalue %dx.types.CBufRet.f32 %8752, 1
  %8754 = fsub fast float -0.000000e+00, %8753
  %8755 = fptoui float %8754 to i32
  %8756 = fptoui float %8750 to i32
  %8757 = fptoui float %8751 to i32
  %8758 = and i32 %8755, 31
  %8759 = lshr i32 %8756, %8758
  %8760 = lshr i32 %8757, %8758
  %8761 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8755, i32 %8759, i32 %8760, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8762 = extractvalue %dx.types.ResRet.f32 %8761, 0
  %8763 = fcmp fast olt float %8762, -1.000000e+00
  %8764 = fcmp fast ogt float %8762, -1.000000e+00
  %8765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8766 = extractvalue %dx.types.CBufRet.f32 %8765, 1
  %8767 = select i1 %8764, float %8766, float 1.000000e+00
  %8768 = fadd fast float %8762, 1.000000e+00
  %8769 = fmul fast float %8767, %8768
  %8770 = call float @dx.op.unary.f32(i32 6, float %8769)  ; FAbs(value)
  %8771 = extractvalue %dx.types.CBufRet.f32 %8765, 3
  %8772 = fcmp fast oge float %8770, %8771
  %8773 = select i1 %8772, float 0x4197782600000000, float %8770
  %8774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8775 = extractvalue %dx.types.CBufRet.f32 %8774, 0
  %8776 = extractvalue %dx.types.CBufRet.f32 %8774, 1
  %8777 = extractvalue %dx.types.CBufRet.f32 %8774, 2
  %8778 = select i1 %8763, float %8775, float %8696
  %8779 = select i1 %8763, float %8776, float %8697
  %8780 = select i1 %8763, float %8777, float %8698
  %8781 = fmul fast float %8778, %8693
  %8782 = fmul fast float %8779, %8693
  %8783 = fmul fast float %8780, %8693
  %8784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8785 = extractvalue %dx.types.CBufRet.f32 %8784, 0
  %8786 = extractvalue %dx.types.CBufRet.f32 %8784, 1
  %8787 = extractvalue %dx.types.CBufRet.f32 %8784, 2
  %8788 = select i1 %8763, float %8785, float %8703
  %8789 = select i1 %8763, float %8786, float %8704
  %8790 = select i1 %8763, float %8787, float %8705
  %8791 = fmul fast float %8788, %8694
  %8792 = fmul fast float %8789, %8694
  %8793 = fmul fast float %8790, %8694
  %8794 = fadd fast float %8791, %8781
  %8795 = fadd fast float %8792, %8782
  %8796 = fadd fast float %8793, %8783
  %8797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8798 = extractvalue %dx.types.CBufRet.f32 %8797, 0
  %8799 = extractvalue %dx.types.CBufRet.f32 %8797, 1
  %8800 = extractvalue %dx.types.CBufRet.f32 %8797, 2
  %8801 = select i1 %8763, float %8798, float %8710
  %8802 = select i1 %8763, float %8799, float %8711
  %8803 = select i1 %8763, float %8800, float %8712
  %8804 = fadd fast float %8794, %8801
  %8805 = fadd fast float %8795, %8802
  %8806 = fadd fast float %8796, %8803
  %8807 = fmul fast float %8804, %8773
  %8808 = fmul fast float %8805, %8773
  %8809 = fmul fast float %8806, %8773
  %8810 = fmul fast float %8807, %8807
  %8811 = fmul fast float %8808, %8808
  %8812 = fadd fast float %8810, %8811
  %8813 = fmul fast float %8809, %8809
  %8814 = fadd fast float %8812, %8813
  %8815 = call float @dx.op.unary.f32(i32 24, float %8814)  ; Sqrt(value)
  %8816 = fsub fast float %8815, %8728
  %8817 = fmul fast float %8816, %8730
  %8818 = call float @dx.op.unary.f32(i32 7, float %8817)  ; Saturate(value)
  br label %8819

; <label>:8819                                    ; preds = %8744, %8740
  %8820 = phi float [ %8818, %8744 ], [ 1.000000e+00, %8740 ]
  %8821 = fmul fast float %8737, 5.000000e-01
  %8822 = fadd fast float %8821, 5.000000e-01
  %8823 = call float @dx.op.unary.f32(i32 22, float %8822)  ; Frc(value)
  %8824 = call float @dx.op.unary.f32(i32 27, float %8823)  ; Round_ni(value)
  %8825 = call float @dx.op.unary.f32(i32 22, float %8823)  ; Frc(value)
  %8826 = fmul fast float %8825, 2.000000e+00
  %8827 = fadd fast float %8826, -1.000000e+00
  %8828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8689, float %8690, float %8824, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8829 = extractvalue %dx.types.ResRet.f32 %8828, 0
  %8830 = extractvalue %dx.types.ResRet.f32 %8828, 1
  %8831 = extractvalue %dx.types.ResRet.f32 %8828, 2
  %8832 = extractvalue %dx.types.ResRet.f32 %8828, 3
  %8833 = fadd fast float %8829, -5.000000e-01
  %8834 = fadd fast float %8831, -5.000000e-01
  %8835 = fmul fast float %8833, 0xBFD5555560000000
  %8836 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8834, float %8835)  ; FMad(a,b,c)
  %8837 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8830, float 0.000000e+00)  ; FMad(a,b,c)
  %8838 = fadd fast float %8837, %8832
  %8839 = fmul fast float %8833, -7.500000e-01
  %8840 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8834, float %8839)  ; FMad(a,b,c)
  %8841 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8830, float 0.000000e+00)  ; FMad(a,b,c)
  %8842 = fadd fast float %8841, %8832
  %8843 = call float @dx.op.binary.f32(i32 35, float %8836, float -1.000000e+00)  ; FMax(a,b)
  %8844 = call float @dx.op.binary.f32(i32 35, float %8838, float -1.000000e+00)  ; FMax(a,b)
  %8845 = call float @dx.op.binary.f32(i32 35, float %8840, float -1.000000e+00)  ; FMax(a,b)
  %8846 = call float @dx.op.binary.f32(i32 35, float %8842, float -1.000000e+00)  ; FMax(a,b)
  %8847 = call float @dx.op.binary.f32(i32 36, float %8843, float 1.000000e+00)  ; FMin(a,b)
  %8848 = call float @dx.op.binary.f32(i32 36, float %8844, float 1.000000e+00)  ; FMin(a,b)
  %8849 = call float @dx.op.binary.f32(i32 36, float %8845, float 1.000000e+00)  ; FMin(a,b)
  %8850 = call float @dx.op.binary.f32(i32 36, float %8846, float 1.000000e+00)  ; FMin(a,b)
  %8851 = fcmp fast olt float %8847, 0x3FEFFF8020000000
  br i1 %8851, label %8852, label %8967, !dx.controlflow.hints !174

; <label>:8852                                    ; preds = %8819
  %8853 = extractvalue %dx.types.CBufRet.f32 %8735, 3
  %8854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8855 = extractvalue %dx.types.CBufRet.f32 %8854, 0
  %8856 = extractvalue %dx.types.CBufRet.f32 %8854, 1
  %8857 = extractvalue %dx.types.CBufRet.f32 %8854, 2
  %8858 = extractvalue %dx.types.CBufRet.f32 %8854, 3
  %8859 = fsub fast float %8855, %8847
  %8860 = fsub fast float %8856, %8848
  %8861 = fsub fast float %8857, %8849
  %8862 = fsub fast float %8858, %8850
  %8863 = fmul fast float %8859, %8853
  %8864 = fmul fast float %8860, %8853
  %8865 = fmul fast float %8861, %8853
  %8866 = fmul fast float %8862, %8853
  %8867 = fadd fast float %8863, %8847
  %8868 = fadd fast float %8864, %8848
  %8869 = fsub fast float -0.000000e+00, %8868
  %8870 = fadd fast float %8865, %8849
  %8871 = fadd fast float %8866, %8850
  %8872 = fmul fast float %8867, %8867
  %8873 = fsub fast float %8868, %8872
  %8874 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8873)  ; FMax(a,b)
  %8875 = fdiv fast float 1.000000e+00, %8874
  %8876 = fmul fast float %8868, %8867
  %8877 = fsub fast float %8870, %8876
  %8878 = fsub fast float %8827, %8867
  %8879 = fmul fast float %8827, %8827
  %8880 = fsub fast float %8879, %8868
  %8881 = fmul fast float %8878, %8875
  %8882 = fmul fast float %8881, %8877
  %8883 = fsub fast float %8880, %8882
  %8884 = fmul fast float %8868, %8868
  %8885 = fsub fast float %8871, %8884
  %8886 = fmul fast float %8877, %8877
  %8887 = fmul fast float %8886, %8875
  %8888 = fsub fast float %8885, %8887
  %8889 = fdiv fast float %8883, %8888
  %8890 = fmul fast float %8877, %8889
  %8891 = fsub fast float %8878, %8890
  %8892 = fmul fast float %8891, %8875
  %8893 = fmul fast float %8892, %8867
  %8894 = fsub fast float 1.000000e+00, %8893
  %8895 = fmul fast float %8868, %8889
  %8896 = fsub fast float %8894, %8895
  %8897 = fmul fast float %8892, %8892
  %8898 = fmul fast float %8889, 4.000000e+00
  %8899 = fmul fast float %8898, %8896
  %8900 = fsub fast float %8897, %8899
  %8901 = call float @dx.op.unary.f32(i32 24, float %8900)  ; Sqrt(value)
  %8902 = fcmp fast oge float %8892, 0.000000e+00
  %8903 = fsub fast float -0.000000e+00, %8901
  %8904 = select i1 %8902, float %8903, float %8901
  %8905 = fsub fast float %8904, %8892
  %8906 = fdiv fast float %8905, %8889
  %8907 = fdiv fast float %8896, %8905
  %8908 = fmul fast float %8906, 5.000000e-01
  %8909 = fmul fast float %8907, 2.000000e+00
  %8910 = select i1 %8902, float %8908, float %8909
  %8911 = select i1 %8902, float %8909, float %8908
  %8912 = call float @dx.op.binary.f32(i32 35, float %8910, float %8911)  ; FMax(a,b)
  %8913 = call float @dx.op.binary.f32(i32 36, float %8910, float %8911)  ; FMin(a,b)
  %8914 = fcmp fast ogt float %8827, %8913
  br i1 %8914, label %8915, label %8925

; <label>:8915                                    ; preds = %8852
  %8916 = fsub fast float %8827, %8913
  %8917 = fsub fast float %8912, %8913
  %8918 = fmul fast float %8916, %8917
  %8919 = fmul fast float %8912, %8827
  %8920 = fadd fast float %8912, %8827
  %8921 = fmul fast float %8920, %8867
  %8922 = fadd fast float %8919, %8868
  %8923 = fsub fast float %8922, %8921
  %8924 = fdiv fast float %8923, %8918
  br label %8925

; <label>:8925                                    ; preds = %8915, %8852
  %8926 = phi float [ %8924, %8915 ], [ 0.000000e+00, %8852 ]
  %8927 = fcmp fast ogt float %8827, %8912
  %8928 = fsub fast float %8827, %8912
  br i1 %8927, label %8929, label %8939

; <label>:8929                                    ; preds = %8925
  %8930 = fsub fast float %8912, %8913
  %8931 = fmul fast float %8930, %8928
  %8932 = fmul fast float %8913, %8827
  %8933 = fadd fast float %8913, %8827
  %8934 = fmul fast float %8933, %8867
  %8935 = fsub fast float %8869, %8932
  %8936 = fadd fast float %8935, %8934
  %8937 = fdiv fast float %8936, %8931
  %8938 = fadd fast float %8937, %8926
  br label %8939

; <label>:8939                                    ; preds = %8929, %8925
  %8940 = phi float [ %8938, %8929 ], [ %8926, %8925 ]
  %8941 = fsub fast float %8827, %8913
  %8942 = fmul fast float %8941, %8928
  %8943 = fmul fast float %8913, %8912
  %8944 = fadd fast float %8913, %8912
  %8945 = fmul fast float %8944, %8867
  %8946 = fadd fast float %8943, %8868
  %8947 = fsub fast float %8946, %8945
  %8948 = fdiv fast float %8947, %8942
  %8949 = call float @dx.op.unary.f32(i32 7, float %8940)  ; Saturate(value)
  %8950 = fcmp fast oeq float %7618, 0.000000e+00
  %8951 = extractvalue %dx.types.CBufRet.f32 %8735, 0
  %8952 = fcmp fast oeq float %8951, 0.000000e+00
  %8953 = or i1 %8950, %8952
  %8954 = fmul fast float %8951, 2.000000e+00
  %8955 = fadd fast float %8736, %8737
  %8956 = fdiv fast float %8955, %8954
  %8957 = call float @dx.op.unary.f32(i32 7, float %8956)  ; Saturate(value)
  %8958 = fmul fast float %8957, 2.000000e+00
  %8959 = fsub fast float 3.000000e+00, %8958
  %8960 = fmul fast float %8957, %8957
  %8961 = fmul fast float %8960, %8959
  %8962 = select i1 %8953, float 1.000000e+00, float %8961
  %8963 = fmul fast float %8948, %7618
  %8964 = fadd fast float %8949, %8963
  %8965 = call float @dx.op.unary.f32(i32 7, float %8964)  ; Saturate(value)
  %8966 = fmul fast float %8962, %8965
  br label %8967

; <label>:8967                                    ; preds = %8939, %8819
  %8968 = phi float [ %8966, %8939 ], [ 0.000000e+00, %8819 ]
  %8969 = fsub fast float 1.000000e+00, %8968
  %8970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8689, float %8690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8971 = extractvalue %dx.types.ResRet.f32 %8970, 0
  %8972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8973 = extractvalue %dx.types.CBufRet.i32 %8972, 2
  %8974 = icmp eq i32 %8973, 0
  br i1 %8974, label %8980, label %8975

; <label>:8975                                    ; preds = %8967
  %8976 = call float @dx.op.unary.f32(i32 7, float %8968)  ; Saturate(value)
  %8977 = fadd fast float %8971, -1.000000e+00
  %8978 = fmul fast float %8976, %8977
  %8979 = fadd fast float %8978, 1.000000e+00
  br label %8980

; <label>:8980                                    ; preds = %8975, %8967
  %8981 = phi float [ %8979, %8975 ], [ %8969, %8967 ]
  br i1 %8743, label %8982, label %9000

; <label>:8982                                    ; preds = %8980
  %8983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8984 = extractvalue %dx.types.CBufRet.f32 %8983, 1
  %8985 = fsub fast float %8820, %8984
  %8986 = call float @dx.op.unary.f32(i32 7, float %8985)  ; Saturate(value)
  %8987 = fsub fast float %8820, %8742
  %8988 = call float @dx.op.unary.f32(i32 7, float %8987)  ; Saturate(value)
  %8989 = fsub fast float %8986, %8988
  %8990 = fsub fast float %8822, %8988
  %8991 = fdiv fast float %8990, %8989
  %8992 = call float @dx.op.unary.f32(i32 7, float %8991)  ; Saturate(value)
  %8993 = fmul fast float %8992, 2.000000e+00
  %8994 = fsub fast float 3.000000e+00, %8993
  %8995 = fsub fast float %8971, %8981
  %8996 = fmul fast float %8992, %8992
  %8997 = fmul fast float %8996, %8995
  %8998 = fmul fast float %8997, %8994
  %8999 = fadd fast float %8998, %8981
  br label %9000

; <label>:9000                                    ; preds = %8982, %8980
  %9001 = phi float [ %8999, %8982 ], [ %8981, %8980 ]
  %9002 = call float @dx.op.binary.f32(i32 35, float %8971, float %9001)  ; FMax(a,b)
  %9003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9004 = extractvalue %dx.types.CBufRet.i32 %9003, 2
  %9005 = and i32 %9004, 1
  %9006 = icmp eq i32 %9005, 0
  %9007 = fcmp fast une float %9002, 1.000000e+00
  %9008 = and i1 %9007, %9006
  br i1 %9008, label %9009, label %9028

; <label>:9009                                    ; preds = %9000
  %9010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8689, float %8690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9011 = extractvalue %dx.types.ResRet.f32 %9010, 0
  %9012 = extractvalue %dx.types.ResRet.f32 %9010, 1
  %9013 = extractvalue %dx.types.ResRet.f32 %9010, 2
  %9014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9015 = extractvalue %dx.types.CBufRet.f32 %9014, 1
  %9016 = fmul fast float %9015, %9011
  %9017 = fmul fast float %9015, %9012
  %9018 = fmul fast float %9015, %9013
  %9019 = fcmp fast ogt float %8971, 0x3FEFFF2E40000000
  %9020 = fsub fast float 1.000000e+00, %9002
  %9021 = fsub fast float 1.000000e+00, %8971
  %9022 = fdiv fast float %9020, %9021
  %9023 = call float @dx.op.unary.f32(i32 7, float %9022)  ; Saturate(value)
  %9024 = select i1 %9019, float 0.000000e+00, float %9023
  %9025 = fmul fast float %9016, %9024
  %9026 = fmul fast float %9017, %9024
  %9027 = fmul fast float %9018, %9024
  br label %9028

; <label>:9028                                    ; preds = %9009, %9000
  %9029 = phi float [ 0.000000e+00, %9000 ], [ %9025, %9009 ]
  %9030 = phi float [ 0.000000e+00, %9000 ], [ %9026, %9009 ]
  %9031 = phi float [ 0.000000e+00, %9000 ], [ %9027, %9009 ]
  %9032 = fmul fast float %9029, %7602
  %9033 = fmul fast float %9030, %7604
  %9034 = fmul fast float %9031, %7606
  %9035 = fmul fast float %9002, %8664
  %9036 = call float @dx.op.dot3.f32(i32 55, float %9002, float %9002, float %9002, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9037 = call float @dx.op.dot3.f32(i32 55, float %9032, float %9033, float %9034, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9038 = select i1 %250, float %9036, float %9002
  %9039 = select i1 %250, float 1.000000e+00, float %9002
  %9040 = select i1 %250, float %9037, float %9032
  %9041 = select i1 %250, float 0.000000e+00, float %9033
  %9042 = select i1 %250, float 0.000000e+00, float %9034
  %9043 = fmul fast float %9038, %8676
  %9044 = fmul fast float %9038, %8677
  %9045 = fmul fast float %9039, %8678
  %9046 = fadd fast float %9043, %9040
  %9047 = fadd fast float %9044, %9041
  %9048 = fadd fast float %9042, %9045
  %9049 = fmul fast float %9038, %8679
  %9050 = fmul fast float %9038, %8680
  %9051 = fmul fast float %9039, %8681
  br label %9052

; <label>:9052                                    ; preds = %9028, %8685, %8654, %7886
  %9053 = phi float [ %7891, %7886 ], [ %8676, %8654 ], [ %9046, %9028 ], [ %8676, %8685 ]
  %9054 = phi float [ %7892, %7886 ], [ %8677, %8654 ], [ %9047, %9028 ], [ %8677, %8685 ]
  %9055 = phi float [ %7893, %7886 ], [ %8678, %8654 ], [ %9048, %9028 ], [ %8678, %8685 ]
  %9056 = phi float [ %7894, %7886 ], [ %8679, %8654 ], [ %9049, %9028 ], [ %8679, %8685 ]
  %9057 = phi float [ %7895, %7886 ], [ %8680, %8654 ], [ %9050, %9028 ], [ %8680, %8685 ]
  %9058 = phi float [ %7896, %7886 ], [ %8681, %8654 ], [ %9051, %9028 ], [ %8681, %8685 ]
  %9059 = phi float [ %7897, %7886 ], [ %8664, %8654 ], [ %9035, %9028 ], [ %8664, %8685 ]
  %9060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9061 = extractvalue %dx.types.CBufRet.f32 %9060, 2
  %9062 = extractvalue %dx.types.CBufRet.f32 %9060, 3
  %9063 = fmul fast float %9061, %104
  %9064 = fmul fast float %9062, %105
  %9065 = call float @dx.op.unary.f32(i32 7, float %9063)  ; Saturate(value)
  %9066 = call float @dx.op.unary.f32(i32 7, float %9064)  ; Saturate(value)
  %9067 = select i1 %7628, i32 2, i32 0
  %9068 = or i32 %9067, 1
  %9069 = uitofp i32 %9068 to float
  %9070 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9065, float %9066, float %9069, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9071 = extractvalue %dx.types.ResRet.f32 %9070, 0
  %9072 = extractvalue %dx.types.ResRet.f32 %9070, 1
  %9073 = extractvalue %dx.types.ResRet.f32 %9070, 2
  %9074 = extractvalue %dx.types.ResRet.f32 %9070, 3
  %9075 = add nuw nsw i32 %9067, 2
  %9076 = uitofp i32 %9075 to float
  %9077 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9065, float %9066, float %9076, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9078 = extractvalue %dx.types.ResRet.f32 %9077, 0
  %9079 = extractvalue %dx.types.ResRet.f32 %9077, 1
  %9080 = extractvalue %dx.types.ResRet.f32 %9077, 2
  %9081 = extractvalue %dx.types.ResRet.f32 %9077, 3
  %9082 = call float @dx.op.binary.f32(i32 35, float %9072, float %9073)  ; FMax(a,b)
  %9083 = call float @dx.op.binary.f32(i32 35, float %9071, float %9082)  ; FMax(a,b)
  %9084 = call float @dx.op.binary.f32(i32 35, float %9083, float %9074)  ; FMax(a,b)
  %9085 = call float @dx.op.binary.f32(i32 36, float %9079, float %9080)  ; FMin(a,b)
  %9086 = call float @dx.op.binary.f32(i32 36, float %9078, float %9085)  ; FMin(a,b)
  %9087 = call float @dx.op.binary.f32(i32 36, float %9086, float %9081)  ; FMin(a,b)
  %9088 = fmul fast float %9084, 2.550000e+02
  %9089 = fadd fast float %9088, 0x3F70101020000000
  %9090 = fptoui float %9089 to i32
  %9091 = fmul fast float %9087, 2.550000e+02
  %9092 = fadd fast float %9091, 0x3F70101020000000
  %9093 = fptoui float %9092 to i32
  %9094 = icmp ult i32 %9090, %9093
  br i1 %9094, label %9095, label %9264

; <label>:9095                                    ; preds = %9052
  %9096 = fcmp fast ogt float %94, 9.843750e-01
  %9097 = fadd fast float %7890, -4.000000e+00
  %9098 = select i1 %9096, float -4.000000e+00, float %9097
  %9099 = call float @dx.op.binary.f32(i32 35, float %9098, float 0.000000e+00)  ; FMax(a,b)
  %9100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9101 = extractvalue %dx.types.CBufRet.f32 %9100, 0
  %9102 = fadd fast float %9101, %9099
  %9103 = extractvalue %dx.types.CBufRet.f32 %9100, 2
  %9104 = fmul fast float %9102, %9103
  %9105 = call float @dx.op.unary.f32(i32 23, float %9104)  ; Log(value)
  %9106 = extractvalue %dx.types.CBufRet.f32 %9100, 3
  %9107 = fmul fast float %9106, %9105
  %9108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9109 = extractvalue %dx.types.CBufRet.f32 %9108, 2
  %9110 = fmul fast float %9107, %9109
  %9111 = call float @dx.op.unary.f32(i32 7, float %9110)  ; Saturate(value)
  %9112 = uitofp i32 %9090 to float
  %9113 = uitofp i32 %9093 to float
  %9114 = fadd fast float %9112, 5.000000e-01
  %9115 = fadd fast float %9113, 5.000000e-01
  %9116 = fmul fast float %9109, %9114
  %9117 = fmul fast float %9109, %9115
  %9118 = fadd fast float %9116, 0x3F0FFB4800000000
  %9119 = fadd fast float %9117, 0xBF0FFB4800000000
  %9120 = call float @dx.op.binary.f32(i32 35, float %9111, float %9118)  ; FMax(a,b)
  %9121 = call float @dx.op.binary.f32(i32 36, float %9120, float %9119)  ; FMin(a,b)
  %9122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9123 = extractvalue %dx.types.CBufRet.f32 %9122, 1
  %9124 = extractvalue %dx.types.CBufRet.f32 %9122, 2
  %9125 = extractvalue %dx.types.CBufRet.f32 %9122, 0
  %9126 = select i1 %7628, float %9125, float 0.000000e+00
  %9127 = fmul fast float %9123, %9121
  %9128 = fadd fast float %9126, %9127
  %9129 = fadd fast float %9126, %9124
  %9130 = fsub fast float %9123, %9124
  %9131 = fadd fast float %9130, %9126
  %9132 = call float @dx.op.binary.f32(i32 35, float %9128, float %9129)  ; FMax(a,b)
  %9133 = call float @dx.op.binary.f32(i32 36, float %9132, float %9131)  ; FMin(a,b)
  %9134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9065, float %9066, float %9133, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9135 = extractvalue %dx.types.ResRet.f32 %9134, 0
  %9136 = extractvalue %dx.types.ResRet.f32 %9134, 1
  %9137 = extractvalue %dx.types.ResRet.f32 %9134, 2
  %9138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9139 = extractvalue %dx.types.CBufRet.i32 %9138, 0
  %9140 = extractvalue %dx.types.CBufRet.i32 %9138, 1
  %9141 = uitofp i32 %9139 to float
  %9142 = uitofp i32 %9140 to float
  %9143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9144 = extractvalue %dx.types.CBufRet.f32 %9143, 0
  %9145 = extractvalue %dx.types.CBufRet.f32 %9143, 1
  %9146 = fmul fast float %9141, %9065
  %9147 = fmul fast float %9142, %9066
  %9148 = fadd fast float %9146, -5.000000e-01
  %9149 = fadd fast float %9147, -5.000000e-01
  %9150 = call float @dx.op.unary.f32(i32 22, float %9148)  ; Frc(value)
  %9151 = call float @dx.op.unary.f32(i32 22, float %9149)  ; Frc(value)
  %9152 = fmul fast float %9150, %9150
  %9153 = fmul fast float %9152, %9150
  %9154 = fsub fast float 3.000000e+00, %9150
  %9155 = fmul fast float %9152, %9154
  %9156 = fmul fast float %9150, 3.000000e+00
  %9157 = fmul fast float %9153, 3.000000e+00
  %9158 = fmul fast float %9152, 6.000000e+00
  %9159 = fsub fast float %9157, %9158
  %9160 = fadd fast float %9159, 4.000000e+00
  %9161 = fmul fast float %9160, 0x3FC5555560000000
  %9162 = fmul fast float %9153, -3.000000e+00
  %9163 = fadd fast float %9152, %9150
  %9164 = fmul fast float %9163, 3.000000e+00
  %9165 = fadd fast float %9162, 1.000000e+00
  %9166 = fadd fast float %9165, %9164
  %9167 = fmul fast float %9153, 0x3FC5555560000000
  %9168 = fmul fast float %9151, %9151
  %9169 = fmul fast float %9168, %9151
  %9170 = fsub fast float 3.000000e+00, %9151
  %9171 = fmul fast float %9168, %9170
  %9172 = fmul fast float %9151, 3.000000e+00
  %9173 = fmul fast float %9169, 3.000000e+00
  %9174 = fmul fast float %9168, 6.000000e+00
  %9175 = fsub fast float %9173, %9174
  %9176 = fadd fast float %9175, 4.000000e+00
  %9177 = fmul fast float %9176, 0x3FC5555560000000
  %9178 = fmul fast float %9169, -3.000000e+00
  %9179 = fadd fast float %9168, %9151
  %9180 = fmul fast float %9179, 3.000000e+00
  %9181 = fadd fast float %9178, 1.000000e+00
  %9182 = fadd fast float %9181, %9180
  %9183 = fmul fast float %9169, 0x3FC5555560000000
  %9184 = fadd fast float %9150, 1.000000e+00
  %9185 = fsub fast float 1.000000e+00, %9156
  %9186 = fadd fast float %9185, %9155
  %9187 = fadd fast float %9186, %9160
  %9188 = fmul fast float %9187, 0x3FC5555560000000
  %9189 = fdiv fast float %9161, %9188
  %9190 = fsub fast float %9184, %9189
  %9191 = fsub fast float 1.000000e+00, %9150
  %9192 = fadd fast float %9166, %9153
  %9193 = fmul fast float %9192, 0x3FC5555560000000
  %9194 = fdiv fast float %9167, %9193
  %9195 = fadd fast float %9191, %9194
  %9196 = fadd fast float %9151, 1.000000e+00
  %9197 = fsub fast float 1.000000e+00, %9172
  %9198 = fadd fast float %9197, %9171
  %9199 = fadd fast float %9198, %9176
  %9200 = fmul fast float %9199, 0x3FC5555560000000
  %9201 = fdiv fast float %9177, %9200
  %9202 = fsub fast float %9196, %9201
  %9203 = fsub fast float 1.000000e+00, %9151
  %9204 = fadd fast float %9182, %9169
  %9205 = fmul fast float %9204, 0x3FC5555560000000
  %9206 = fdiv fast float %9183, %9205
  %9207 = fadd fast float %9206, %9203
  %9208 = fmul fast float %9190, %9144
  %9209 = fsub fast float %9065, %9208
  %9210 = fmul fast float %9195, %9144
  %9211 = fadd fast float %9210, %9065
  %9212 = fmul fast float %9207, %9145
  %9213 = fadd fast float %9212, %9066
  %9214 = fmul fast float %9202, %9145
  %9215 = fsub fast float %9066, %9214
  %9216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9209, float %9215, float %9133, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9217 = extractvalue %dx.types.ResRet.f32 %9216, 0
  %9218 = extractvalue %dx.types.ResRet.f32 %9216, 1
  %9219 = extractvalue %dx.types.ResRet.f32 %9216, 2
  %9220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9211, float %9215, float %9133, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9221 = extractvalue %dx.types.ResRet.f32 %9220, 0
  %9222 = extractvalue %dx.types.ResRet.f32 %9220, 1
  %9223 = extractvalue %dx.types.ResRet.f32 %9220, 2
  %9224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9209, float %9213, float %9133, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9225 = extractvalue %dx.types.ResRet.f32 %9224, 0
  %9226 = extractvalue %dx.types.ResRet.f32 %9224, 1
  %9227 = extractvalue %dx.types.ResRet.f32 %9224, 2
  %9228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9211, float %9213, float %9133, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9229 = extractvalue %dx.types.ResRet.f32 %9228, 0
  %9230 = extractvalue %dx.types.ResRet.f32 %9228, 1
  %9231 = extractvalue %dx.types.ResRet.f32 %9228, 2
  %9232 = fsub fast float %9225, %9217
  %9233 = fsub fast float %9226, %9218
  %9234 = fsub fast float %9227, %9219
  %9235 = fmul fast float %9232, %9205
  %9236 = fmul fast float %9233, %9205
  %9237 = fmul fast float %9234, %9205
  %9238 = fadd fast float %9235, %9217
  %9239 = fadd fast float %9236, %9218
  %9240 = fadd fast float %9237, %9219
  %9241 = fsub fast float %9229, %9221
  %9242 = fsub fast float %9230, %9222
  %9243 = fsub fast float %9231, %9223
  %9244 = fmul fast float %9241, %9205
  %9245 = fmul fast float %9242, %9205
  %9246 = fmul fast float %9243, %9205
  %9247 = fsub fast float %9221, %9238
  %9248 = fadd fast float %9247, %9244
  %9249 = fsub fast float %9222, %9239
  %9250 = fadd fast float %9249, %9245
  %9251 = fsub fast float %9223, %9240
  %9252 = fadd fast float %9251, %9246
  %9253 = fmul fast float %9248, %9193
  %9254 = fmul fast float %9250, %9193
  %9255 = fmul fast float %9252, %9193
  %9256 = fadd fast float %9253, %9238
  %9257 = fadd fast float %9254, %9239
  %9258 = fadd fast float %9255, %9240
  %9259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9260 = extractvalue %dx.types.CBufRet.f32 %9259, 1
  %9261 = fmul fast float %9256, %9260
  %9262 = fmul fast float %9257, %9260
  %9263 = fmul fast float %9258, %9260
  br label %9264

; <label>:9264                                    ; preds = %9095, %9052
  %9265 = phi float [ %9135, %9095 ], [ 1.000000e+00, %9052 ]
  %9266 = phi float [ %9136, %9095 ], [ 1.000000e+00, %9052 ]
  %9267 = phi float [ %9137, %9095 ], [ 1.000000e+00, %9052 ]
  %9268 = phi float [ %9261, %9095 ], [ 0.000000e+00, %9052 ]
  %9269 = phi float [ %9262, %9095 ], [ 0.000000e+00, %9052 ]
  %9270 = phi float [ %9263, %9095 ], [ 0.000000e+00, %9052 ]
  %9271 = fmul fast float %9268, %7602
  %9272 = fmul fast float %9269, %7604
  %9273 = fmul fast float %9270, %7606
  %9274 = fmul fast float %9265, %9059
  %9275 = call float @dx.op.dot3.f32(i32 55, float %9265, float %9266, float %9267, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9276 = call float @dx.op.dot3.f32(i32 55, float %9271, float %9272, float %9273, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9277 = select i1 %250, float %9275, float %9265
  %9278 = select i1 %250, float %9275, float %9266
  %9279 = select i1 %250, float 1.000000e+00, float %9267
  %9280 = select i1 %250, float %9276, float %9271
  %9281 = select i1 %250, float 0.000000e+00, float %9272
  %9282 = select i1 %250, float 0.000000e+00, float %9273
  %9283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9284 = extractvalue %dx.types.CBufRet.i32 %9283, 3
  %9285 = and i32 %9284, 3
  %9286 = icmp ne i32 %9285, 0
  %9287 = and i32 %9284, 4
  %9288 = icmp ne i32 %9287, 0
  %9289 = and i1 %9286, %9288
  %9290 = and i1 %250, %9289
  br i1 %9290, label %9291, label %9297

; <label>:9291                                    ; preds = %9264
  %9292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9293 = extractvalue %dx.types.CBufRet.f32 %9292, 1
  %9294 = fadd fast float %9274, -1.000000e+00
  %9295 = fmul fast float %9293, %9294
  %9296 = fadd fast float %9295, 1.000000e+00
  br label %9297

; <label>:9297                                    ; preds = %9291, %9264
  %9298 = phi float [ %9296, %9291 ], [ %9274, %9264 ]
  %9299 = fadd fast float %9056, %9053
  %9300 = fmul fast float %9277, %9299
  %9301 = fadd fast float %9300, %9280
  %9302 = fadd fast float %9057, %9054
  %9303 = fmul fast float %9278, %9302
  %9304 = fadd fast float %9303, %9281
  %9305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9306 = extractvalue %dx.types.CBufRet.f32 %9305, 0
  br i1 %250, label %9307, label %9322

; <label>:9307                                    ; preds = %9297
  %9308 = fadd fast float %9301, %9304
  %9309 = fmul fast float %9306, %9308
  %9310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9311 = extractvalue %dx.types.CBufRet.f32 %9310, 3
  %9312 = extractvalue %dx.types.CBufRet.f32 %7610, 1
  %9313 = fsub fast float %7615, %7609
  %9314 = fadd fast float %9313, %7616
  %9315 = fsub fast float %9314, %9312
  %9316 = extractvalue %dx.types.CBufRet.f32 %7610, 2
  %9317 = fmul fast float %9315, %9316
  %9318 = call float @dx.op.unary.f32(i32 7, float %9317)  ; Saturate(value)
  %9319 = fsub fast float %9318, %9311
  %9320 = fmul fast float %9319, %9298
  %9321 = fadd fast float %9320, %9311
  br label %9348

; <label>:9322                                    ; preds = %9297
  %9323 = fadd fast float %9058, %9055
  %9324 = fmul fast float %9279, %9323
  %9325 = fadd fast float %9324, %9282
  %9326 = fmul fast float %9306, %9301
  %9327 = fmul fast float %9306, %9304
  %9328 = fmul fast float %9306, %9325
  %9329 = call float @dx.op.binary.f32(i32 35, float %9327, float %9328)  ; FMax(a,b)
  %9330 = call float @dx.op.binary.f32(i32 35, float %9326, float %9329)  ; FMax(a,b)
  %9331 = call float @dx.op.binary.f32(i32 35, float %7604, float %7606)  ; FMax(a,b)
  %9332 = call float @dx.op.binary.f32(i32 35, float %7602, float %9331)  ; FMax(a,b)
  %9333 = call float @dx.op.binary.f32(i32 35, float %9330, float %9332)  ; FMax(a,b)
  %9334 = fcmp fast ugt float %9333, 0x3F10000000000000
  br i1 %9334, label %9336, label %9335

; <label>:9335                                    ; preds = %9322
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9336

; <label>:9336                                    ; preds = %9335, %9322
  %9337 = add i32 %54, 356
  %9338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9337, i32 undef)  ; BufferLoad(srv,index,wot)
  %9339 = extractvalue %dx.types.ResRet.i32 %9338, 0
  %9340 = and i32 %9339, 32
  %9341 = icmp eq i32 %9340, 0
  br i1 %9341, label %9348, label %9342

; <label>:9342                                    ; preds = %9336
  %9343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9344 = extractvalue %dx.types.CBufRet.f32 %9343, 0
  %9345 = fmul fast float %9344, 0x3FE99999A0000000
  %9346 = fadd fast float %9344, %9326
  %9347 = fadd fast float %9345, %9328
  br label %9348

; <label>:9348                                    ; preds = %9342, %9336, %9307
  %9349 = phi float [ 1.000000e+00, %9307 ], [ %7604, %9342 ], [ %7604, %9336 ]
  %9350 = phi float [ 1.000000e+00, %9307 ], [ %7606, %9342 ], [ %7606, %9336 ]
  %9351 = phi float [ %9309, %9307 ], [ %9346, %9342 ], [ %9326, %9336 ]
  %9352 = phi float [ %9321, %9307 ], [ %9327, %9342 ], [ %9327, %9336 ]
  %9353 = phi float [ 1.000000e+00, %9307 ], [ %9347, %9342 ], [ %9328, %9336 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9354 = call float @dx.op.binary.f32(i32 36, float %9351, float 3.225500e+04)  ; FMin(a,b)
  %9355 = call float @dx.op.binary.f32(i32 36, float %9352, float 3.225500e+04)  ; FMin(a,b)
  %9356 = call float @dx.op.binary.f32(i32 36, float %9353, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9354)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9355)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9356)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9357 = call float @dx.op.binary.f32(i32 36, float %7602, float 3.225500e+04)  ; FMin(a,b)
  %9358 = call float @dx.op.binary.f32(i32 36, float %9349, float 3.225500e+04)  ; FMin(a,b)
  %9359 = call float @dx.op.binary.f32(i32 36, float %9350, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9357)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9358)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9359)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!67 = !{[58 x i32] [i32 56, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!68 = !{void ()* @ps_main, !"ps_main", !69, !4, !95}
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
!91 = !{!92, !93}
!92 = !{i32 0, !"SV_Target", i8 9, i8 16, !72, i8 0, i32 1, i8 4, i32 0, i8 0, !73}
!93 = !{i32 1, !"SV_Target", i8 9, i8 16, !94, i8 0, i32 1, i8 4, i32 1, i8 0, !73}
!94 = !{i32 1}
!95 = !{i32 0, i64 16}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = !{!102, !102, i64 0}
!102 = !{!"int", !103, i64 0}
!103 = !{!"omnipotent char", !104, i64 0}
!104 = !{!"Simple C/C++ TBAA"}
!105 = !{!106, !108, !110, !112}
!106 = distinct !{!106, !107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!107 = distinct !{!107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!108 = distinct !{!108, !109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!109 = distinct !{!109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!110 = distinct !{!110, !111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!111 = distinct !{!111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!112 = distinct !{!112, !113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = !{!127, !127, i64 0}
!127 = !{!"float", !103, i64 0}
!128 = !{!129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!129 = distinct !{!129, !130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!130 = distinct !{!130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!131 = distinct !{!131, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!132 = distinct !{!132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!133 = distinct !{!133, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!134 = distinct !{!134, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!135 = distinct !{!135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!136 = distinct !{!136, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!137 = distinct !{!137, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!138 = distinct !{!138, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!139 = distinct !{!139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!140 = distinct !{!140, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!141 = distinct !{!141, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!142 = distinct !{!142, !143, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!143 = distinct !{!143, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"\01?sort@@YAXAIAM00@Z: %c"}
!146 = distinct !{!146, !"\01?sort@@YAXAIAM00@Z"}
!147 = !{!148, !149, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!148 = distinct !{!148, !146, !"\01?sort@@YAXAIAM00@Z: %a"}
!149 = distinct !{!149, !146, !"\01?sort@@YAXAIAM00@Z: %b"}
!150 = !{!149}
!151 = !{!148, !145, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!152 = !{!148}
!153 = !{!149, !145, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!154 = !{!155}
!155 = distinct !{!155, !156, !"\01?sort@@YAXAIAM00@Z: %c"}
!156 = distinct !{!156, !"\01?sort@@YAXAIAM00@Z"}
!157 = !{!158, !159, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!158 = distinct !{!158, !156, !"\01?sort@@YAXAIAM00@Z: %a"}
!159 = distinct !{!159, !156, !"\01?sort@@YAXAIAM00@Z: %b"}
!160 = !{!159}
!161 = !{!158, !155, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!162 = !{!158}
!163 = !{!159, !155, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 2}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}

