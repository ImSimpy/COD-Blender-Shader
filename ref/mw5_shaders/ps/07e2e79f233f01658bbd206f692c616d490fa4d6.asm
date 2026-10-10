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
; shader hash: a354d26c087703e6617ec0bcb60bd2b8
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
;                                   texture     f32          2d     T47             t1     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = alloca [4 x i32], align 4
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = alloca [12 x float], align 4
  %98 = alloca [12 x float], align 4
  %99 = alloca [3 x float], align 4
  %100 = alloca [3 x float], align 4
  %101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = fmul fast float %104, %93
  %106 = fmul fast float %104, %94
  %107 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %108 = bitcast float %107 to i32
  %109 = ashr i32 %108, 1
  %110 = sub nsw i32 1597250115, %109
  %111 = bitcast i32 %110 to float
  %112 = fmul fast float %111, %84
  %113 = fmul fast float %111, %85
  %114 = fmul fast float %111, %86
  %115 = fmul fast float %85, %82
  %116 = fmul fast float %86, %81
  %117 = fsub fast float %115, %116
  %118 = fmul fast float %86, %80
  %119 = fmul fast float %84, %82
  %120 = fsub fast float %118, %119
  %121 = fmul fast float %84, %81
  %122 = fmul fast float %85, %80
  %123 = fsub fast float %121, %122
  %124 = fmul fast float %117, %83
  %125 = fmul fast float %120, %83
  %126 = fmul fast float %123, %83
  %127 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %128 = bitcast float %127 to i32
  %129 = ashr i32 %128, 1
  %130 = sub nsw i32 1597250115, %129
  %131 = bitcast i32 %130 to float
  %132 = fmul fast float %131, %73
  %133 = fmul fast float %131, %74
  %134 = fmul fast float %131, %75
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = fcmp fast une float %136, 0.000000e+00
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 3
  %141 = fmul fast float %105, 2.000000e+00
  %142 = fmul fast float %141, %139
  %143 = fmul fast float %106, 2.000000e+00
  %144 = fmul fast float %143, %140
  %145 = fsub fast float 1.000000e+00, %142
  %146 = fsub fast float 1.000000e+00, %144
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = select i1 %137, float %148, float %152
  %156 = select i1 %137, float %149, float %153
  %157 = select i1 %137, float %150, float %154
  %158 = fmul fast float %155, %145
  %159 = fmul fast float %156, %145
  %160 = fmul fast float %157, %145
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %169 = select i1 %137, float %162, float %166
  %170 = select i1 %137, float %163, float %167
  %171 = select i1 %137, float %164, float %168
  %172 = fmul fast float %169, %146
  %173 = fmul fast float %170, %146
  %174 = fmul fast float %171, %146
  %175 = fadd fast float %172, %158
  %176 = fadd fast float %173, %159
  %177 = fadd fast float %174, %160
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %185 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %186 = select i1 %137, float %179, float %183
  %187 = select i1 %137, float %180, float %184
  %188 = select i1 %137, float %181, float %185
  %189 = fadd fast float %175, %186
  %190 = fadd fast float %176, %187
  %191 = fadd fast float %177, %188
  %192 = fmul fast float %189, %96
  %193 = fmul fast float %190, %96
  %194 = fmul fast float %191, %96
  %195 = fmul fast float %105, 5.000000e-01
  %196 = fmul fast float %106, 5.000000e-01
  %197 = fptosi float %195 to i32
  %198 = fptosi float %196 to i32
  %199 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %197, i32 %198, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = lshr i32 %200, 18
  %202 = uitofp i32 %201 to float
  %203 = fmul fast float %202, 0x3F4C00EBA0000000
  %204 = call float @dx.op.unary.f32(i32 21, float %203)  ; Exp(value)
  %205 = fadd fast float %204, -1.000000e+00
  %206 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %207 = extractvalue %dx.types.Dimensions %206, 0
  %208 = sitofp i32 %207 to float
  %209 = extractvalue %dx.types.Dimensions %206, 1
  %210 = sitofp i32 %209 to float
  %211 = fcmp fast oge float %195, %208
  %212 = fcmp fast oge float %196, %210
  %213 = or i1 %211, %212
  %214 = select i1 %213, float 0x4197782600000000, float %205
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %217 = extractvalue %dx.types.CBufRet.f32 %215, 3
  %218 = fmul fast float %216, %105
  %219 = fmul fast float %217, %106
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = and i32 %221, 114688
  %223 = icmp ne i32 %222, 0
  %224 = select i1 %223, float %218, float 0.000000e+00
  %225 = select i1 %223, float %219, float 0.000000e+00
  %226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %50, float %224, float %225, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 0
  %228 = fmul fast float %227, 2.550000e+02
  %229 = fptoui float %228 to i32
  %230 = select i1 %223, i32 %229, i32 0
  %231 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.i32 %231, 3
  %233 = and i32 %232, 3
  %234 = icmp ne i32 %233, 0
  %235 = and i32 %232, 4
  %236 = icmp ne i32 %235, 0
  %237 = and i1 %234, %236
  br i1 %237, label %238, label %247

; <label>:238                                     ; preds = %0
  %239 = fmul fast float %140, %106
  %240 = fmul fast float %139, %105
  %241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %240, float %239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = fsub fast float 1.000000e+00, %242
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 0
  %246 = fcmp fast olt float %243, %245
  br label %250

; <label>:247                                     ; preds = %0
  %248 = icmp eq i32 %235, 0
  %249 = and i1 %234, %248
  br label %250

; <label>:250                                     ; preds = %247, %238
  %251 = phi i1 [ %246, %238 ], [ %249, %247 ]
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %254 = fmul fast float %253, 0x3FE3C6EF40000000
  %255 = frem fast float %105, 2.560000e+02
  %256 = frem fast float %106, 2.560000e+02
  %257 = fptoui float %255 to i32
  %258 = fptoui float %256 to i32
  %259 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %257, i32 %258, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = fadd fast float %260, %254
  %262 = call float @dx.op.unary.f32(i32 22, float %261)  ; Frc(value)
  %263 = add i32 %55, 216
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = lshr i32 %265, 8
  %270 = and i32 %269, 255
  %271 = uitofp i32 %270 to float
  %272 = fmul fast float %271, 0x3F70101020000000
  %273 = lshr i32 %265, 16
  %274 = and i32 %273, 255
  %275 = uitofp i32 %274 to float
  %276 = fmul fast float %275, 0x3F70101020000000
  %277 = add i32 %55, 36
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 65535
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %279, 16
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = add i32 %55, 288
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 65535
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %286, 16
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = fmul fast float %288, 0x3F50624DE0000000
  %292 = fmul fast float %290, 0x3F50624DE0000000
  %293 = add i32 %55, 232
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %295, 8
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %295, 16
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = add i32 %55, 52
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = add i32 %55, 304
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 65535
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %316, 16
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = fmul fast float %318, 0x3F50624DE0000000
  %322 = fmul fast float %320, 0x3F50624DE0000000
  %323 = add i32 %55, 248
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = lshr i32 %325, 8
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = lshr i32 %325, 16
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = add i32 %55, 68
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = add i32 %55, 320
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %346, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = fmul fast float %348, 0x3F50624DE0000000
  %352 = fmul fast float %350, 0x3F50624DE0000000
  %353 = add i32 %55, 264
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 255
  %357 = uitofp i32 %356 to float
  %358 = fmul fast float %357, 0x3F70101020000000
  %359 = lshr i32 %355, 8
  %360 = and i32 %359, 255
  %361 = uitofp i32 %360 to float
  %362 = fmul fast float %361, 0x3F70101020000000
  %363 = lshr i32 %355, 16
  %364 = and i32 %363, 255
  %365 = uitofp i32 %364 to float
  %366 = fmul fast float %365, 0x3F70101020000000
  %367 = add i32 %55, 84
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 65535
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %369, 16
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = add i32 %55, 336
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 65535
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %376, 16
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = fmul fast float %378, 0x3F50624DE0000000
  %382 = fmul fast float %380, 0x3F50624DE0000000
  %383 = add i32 %55, 348
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 32
  %387 = icmp eq i32 %386, 0
  %388 = and i32 %385, 64
  %389 = icmp eq i32 %388, 0
  %390 = and i32 %385, 128
  %391 = icmp eq i32 %390, 0
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 2
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %411, label %396

; <label>:396                                     ; preds = %250
  %397 = add i32 %55, 488
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = add i32 %399, 0
  %401 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %400, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %402 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %401, %dx.types.Handle %102, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = extractvalue %dx.types.ResRet.f32 %402, 1
  %405 = extractvalue %dx.types.ResRet.f32 %402, 2
  %406 = extractvalue %dx.types.ResRet.f32 %402, 3
  %407 = fmul fast float %406, %89
  %408 = fmul fast float %403, %90
  %409 = fmul fast float %404, %91
  %410 = fmul fast float %405, %92
  br label %411

; <label>:411                                     ; preds = %396, %250
  %412 = phi float [ %92, %250 ], [ %410, %396 ]
  %413 = phi float [ %91, %250 ], [ %409, %396 ]
  %414 = phi float [ %90, %250 ], [ %408, %396 ]
  %415 = phi float [ %89, %250 ], [ %407, %396 ]
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 2
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %439, label %420

; <label>:420                                     ; preds = %411
  %421 = add i32 %55, 44
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 1
  %425 = icmp ne i32 %424, 0
  %426 = select i1 %425, float %414, float 1.000000e+00
  %427 = add i32 %55, 60
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = and i32 %429, 1
  %431 = icmp ne i32 %430, 0
  %432 = select i1 %431, float %413, float 1.000000e+00
  %433 = add i32 %55, 76
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 1
  %437 = icmp ne i32 %436, 0
  %438 = select i1 %437, float %412, float 1.000000e+00
  br label %439

; <label>:439                                     ; preds = %420, %411
  %440 = phi float [ %412, %411 ], [ %438, %420 ]
  %441 = phi float [ %413, %411 ], [ %432, %420 ]
  %442 = phi float [ %414, %411 ], [ %426, %420 ]
  %443 = add i32 %55, 24
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = add i32 %55, 28
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = or i32 %448, %445
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %914, label %451

; <label>:451                                     ; preds = %439
  %452 = and i32 %445, 262144
  %453 = icmp ne i32 %452, 0
  %454 = select i1 %453, float %60, float 1.000000e+00
  %455 = select i1 %453, float %61, float 0.000000e+00
  %456 = select i1 %453, float %62, float 0.000000e+00
  %457 = select i1 %453, float %63, float 1.000000e+00
  %458 = select i1 %453, float %64, float %87
  %459 = select i1 %453, float %65, float %88
  %460 = add i32 %55, 284
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = lshr i32 %462, 16
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = fmul fast float %464, 0x3F50624DE0000000
  %466 = add i32 %55, 88
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = lshr i32 %468, 16
  %470 = and i32 %469, 255
  %471 = lshr i32 %468, 24
  %472 = add i32 %55, 292
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 65535
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = lshr i32 %474, 16
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = add i32 %55, 32
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = lshr i32 %481, 22
  %483 = shl nuw nsw i32 %482, 5
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = shl i32 %481, 4
  %486 = and i32 %485, 32752
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = lshr i32 %481, 7
  %489 = and i32 %488, 32752
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 3
  %493 = fmul fast float %492, 1.000000e+03
  %494 = fmul fast float %291, %493
  %495 = call float @dx.op.unary.f32(i32 22, float %494)  ; Frc(value)
  %496 = fadd fast float %495, %281
  %497 = fmul fast float %292, %493
  %498 = call float @dx.op.unary.f32(i32 22, float %497)  ; Frc(value)
  %499 = fadd fast float %498, %283
  %500 = fmul fast float %465, %493
  %501 = call float @dx.op.unary.f32(i32 22, float %500)  ; Frc(value)
  %502 = fmul fast float %501, 0x401921FB60000000
  %503 = fadd fast float %502, %484
  %504 = call float @dx.op.unary.f32(i32 13, float %503)  ; Sin(value)
  %505 = call float @dx.op.unary.f32(i32 12, float %503)  ; Cos(value)
  %506 = fsub fast float -0.000000e+00, %504
  %507 = fadd fast float %458, -5.000000e-01
  %508 = fadd fast float %459, -5.000000e-01
  %509 = fmul fast float %476, %507
  %510 = fmul fast float %478, %508
  %511 = fadd fast float %509, 5.000000e-01
  %512 = fadd fast float %510, 5.000000e-01
  %513 = fmul fast float %487, %511
  %514 = fmul fast float %490, %512
  %515 = fmul fast float %505, %513
  %516 = call float @dx.op.tertiary.f32(i32 46, float %506, float %514, float %515)  ; FMad(a,b,c)
  %517 = fmul fast float %504, %513
  %518 = call float @dx.op.tertiary.f32(i32 46, float %505, float %514, float %517)  ; FMad(a,b,c)
  %519 = fadd fast float %496, %516
  %520 = fadd fast float %499, %518
  %521 = icmp ugt i32 %470, 1
  %522 = icmp ugt i32 %468, 33554431
  %523 = or i1 %522, %521
  br i1 %523, label %524, label %549

; <label>:524                                     ; preds = %451
  %525 = add i32 %55, 228
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = lshr i32 %527, 16
  %529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %528)  ; LegacyF16ToF32(value)
  %530 = fmul fast float %492, %529
  %531 = call float @dx.op.unary.f32(i32 22, float %530)  ; Frc(value)
  %532 = mul nuw nsw i32 %470, %471
  %533 = uitofp i32 %532 to float
  %534 = fmul fast float %531, %533
  %535 = call float @dx.op.unary.f32(i32 27, float %534)  ; Round_ni(value)
  %536 = fptoui float %535 to i32
  %537 = urem i32 %536, %470
  %538 = udiv i32 %536, %471
  %539 = call float @dx.op.unary.f32(i32 22, float %519)  ; Frc(value)
  %540 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %541 = uitofp i32 %537 to float
  %542 = uitofp i32 %538 to float
  %543 = fadd fast float %539, %541
  %544 = fadd fast float %540, %542
  %545 = uitofp i32 %470 to float
  %546 = uitofp i32 %471 to float
  %547 = fdiv fast float %543, %545
  %548 = fdiv fast float %544, %546
  br label %549

; <label>:549                                     ; preds = %524, %451
  %550 = phi float [ %547, %524 ], [ %519, %451 ]
  %551 = phi float [ %548, %524 ], [ %520, %451 ]
  %552 = and i32 %445, 256
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %600, label %554

; <label>:554                                     ; preds = %549
  %555 = add i32 %55, 440
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = add i32 %557, 0
  %559 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %558, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %560 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %559, %dx.types.Handle %102, float %550, float %551, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = add i32 %55, 100
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = shl i32 %564, 4
  %566 = and i32 %565, 32752
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = lshr i32 %564, 7
  %569 = and i32 %568, 32752
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = fsub fast float 1.000000e+00, %415
  %572 = call float @dx.op.binary.f32(i32 35, float %571, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %573 = bitcast float %415 to i32
  %574 = sitofp i32 %573 to float
  %575 = fadd fast float %574, 0xC1CFBF8940000000
  %576 = fmul fast float %570, %575
  %577 = fadd fast float %576, 0x41CFBF8940000000
  %578 = fptosi float %577 to i32
  %579 = bitcast i32 %578 to float
  %580 = bitcast float %572 to i32
  %581 = sitofp i32 %580 to float
  %582 = fadd fast float %581, 0xC1CFBF8940000000
  %583 = fmul fast float %582, %570
  %584 = fadd fast float %583, 0x41CFBF8940000000
  %585 = fptosi float %584 to i32
  %586 = bitcast i32 %585 to float
  %587 = fmul fast float %579, %567
  %588 = fmul fast float %586, %567
  %589 = fsub fast float %572, %587
  %590 = fadd fast float %588, %572
  %591 = call float @dx.op.unary.f32(i32 7, float %589)  ; Saturate(value)
  %592 = call float @dx.op.unary.f32(i32 7, float %590)  ; Saturate(value)
  %593 = fsub fast float %561, %591
  %594 = fsub fast float %592, %591
  %595 = bitcast float %594 to i32
  %596 = sub nsw i32 2129859010, %595
  %597 = bitcast i32 %596 to float
  %598 = fmul fast float %597, %593
  %599 = call float @dx.op.unary.f32(i32 7, float %598)  ; Saturate(value)
  br label %600

; <label>:600                                     ; preds = %554, %549
  %601 = phi float [ %599, %554 ], [ %415, %549 ]
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = and i32 %603, 128
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %622, label %606

; <label>:606                                     ; preds = %600
  %607 = add i32 %55, 424
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = add i32 %609, 0
  %611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %610, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %611, %dx.types.Handle %102, float %550, float %551, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = and i32 %615, 524288
  %617 = icmp ne i32 %616, 0
  %618 = fcmp fast ogt float %613, 0x3FE0101020000000
  %619 = select i1 %618, float 1.000000e+00, float 0.000000e+00
  %620 = select i1 %617, float %619, float %613
  %621 = fmul fast float %620, %601
  br label %622

; <label>:622                                     ; preds = %606, %600
  %623 = phi float [ %621, %606 ], [ %601, %600 ]
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = and i32 %625, 16
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %803, label %628

; <label>:628                                     ; preds = %622
  %629 = add i32 %55, 376
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = add i32 %631, 0
  %633 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %632, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %634 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %633, %dx.types.Handle %101, float %550, float %551, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 0
  %636 = extractvalue %dx.types.ResRet.f32 %634, 1
  %637 = extractvalue %dx.types.ResRet.f32 %634, 2
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = and i32 %639, 512
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %650, label %642

; <label>:642                                     ; preds = %628
  %643 = add i32 %55, 456
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = add i32 %645, 0
  %647 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %646, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %648 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %647, %dx.types.Handle %102, float %550, float %551, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  br label %650

; <label>:650                                     ; preds = %642, %628
  %651 = phi float [ %649, %642 ], [ 1.000000e+00, %628 ]
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = and i32 %653, 33554432
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %750, label %656

; <label>:656                                     ; preds = %650
  %657 = add i32 %55, 224
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = and i32 %659, 65535
  %661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %660)  ; LegacyF16ToF32(value)
  %662 = lshr i32 %659, 16
  %663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %662)  ; LegacyF16ToF32(value)
  %664 = add i32 %55, 228
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = and i32 %666, 65535
  %668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %667)  ; LegacyF16ToF32(value)
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = and i32 %670, 255
  %672 = uitofp i32 %671 to float
  %673 = fmul fast float %672, 0x3F70101020000000
  %674 = lshr i32 %670, 8
  %675 = and i32 %674, 255
  %676 = uitofp i32 %675 to float
  %677 = fmul fast float %676, 0x3F70101020000000
  %678 = lshr i32 %670, 16
  %679 = and i32 %678, 255
  %680 = uitofp i32 %679 to float
  %681 = fmul fast float %680, 0x3F70101020000000
  %682 = add i32 %55, 220
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %682, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = and i32 %684, 255
  %686 = uitofp i32 %685 to float
  %687 = fmul fast float %686, 0x3F70101020000000
  %688 = lshr i32 %684, 8
  %689 = and i32 %688, 255
  %690 = uitofp i32 %689 to float
  %691 = fmul fast float %690, 0x3F70101020000000
  %692 = lshr i32 %684, 16
  %693 = and i32 %692, 255
  %694 = uitofp i32 %693 to float
  %695 = fmul fast float %694, 0x3F70101020000000
  %696 = bitcast float %635 to i32
  %697 = ashr i32 %696, 1
  %698 = sub nsw i32 1597463174, %697
  %699 = bitcast i32 %698 to float
  %700 = fmul fast float %635, 5.000000e-01
  %701 = fmul fast float %699, %699
  %702 = fmul fast float %701, %700
  %703 = fsub fast float 1.500000e+00, %702
  %704 = fmul fast float %699, %635
  %705 = fmul fast float %704, %703
  %706 = bitcast float %636 to i32
  %707 = ashr i32 %706, 1
  %708 = sub nsw i32 1597463174, %707
  %709 = bitcast i32 %708 to float
  %710 = fmul fast float %636, 5.000000e-01
  %711 = fmul fast float %709, %709
  %712 = fmul fast float %711, %710
  %713 = fsub fast float 1.500000e+00, %712
  %714 = fmul fast float %709, %636
  %715 = fmul fast float %714, %713
  %716 = bitcast float %637 to i32
  %717 = ashr i32 %716, 1
  %718 = sub nsw i32 1597463174, %717
  %719 = bitcast i32 %718 to float
  %720 = fmul fast float %637, 5.000000e-01
  %721 = fmul fast float %719, %719
  %722 = fmul fast float %721, %720
  %723 = fsub fast float 1.500000e+00, %722
  %724 = fmul fast float %719, %637
  %725 = fmul fast float %724, %723
  %726 = fsub fast float %705, %687
  %727 = fsub fast float %715, %691
  %728 = fsub fast float %725, %695
  %729 = fmul fast float %726, %661
  %730 = fmul fast float %727, %663
  %731 = fmul fast float %728, %668
  %732 = fadd fast float %729, %673
  %733 = fadd fast float %730, %677
  %734 = fadd fast float %731, %681
  %735 = call float @dx.op.unary.f32(i32 7, float %732)  ; Saturate(value)
  %736 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  %737 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %738 = fmul fast float %735, %735
  %739 = fmul fast float %736, %736
  %740 = fmul fast float %737, %737
  %741 = fsub fast float %738, %635
  %742 = fsub fast float %739, %636
  %743 = fsub fast float %740, %637
  %744 = fmul fast float %741, %651
  %745 = fmul fast float %742, %651
  %746 = fmul fast float %743, %651
  %747 = fadd fast float %744, %635
  %748 = fadd fast float %745, %636
  %749 = fadd fast float %746, %637
  br label %803

; <label>:750                                     ; preds = %650
  %751 = and i32 %653, 134217728
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %787, label %753

; <label>:753                                     ; preds = %750
  %754 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %755 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %756 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %757 = fadd fast float %754, -5.000000e-01
  %758 = fadd fast float %755, -5.000000e-01
  %759 = fadd fast float %756, -5.000000e-01
  %760 = fmul fast float %757, %651
  %761 = fmul fast float %758, %651
  %762 = fmul fast float %759, %651
  %763 = fadd fast float %760, 5.000000e-01
  %764 = fadd fast float %761, 5.000000e-01
  %765 = fadd fast float %762, 5.000000e-01
  %766 = call float @dx.op.unary.f32(i32 24, float %635)  ; Sqrt(value)
  %767 = call float @dx.op.unary.f32(i32 24, float %636)  ; Sqrt(value)
  %768 = call float @dx.op.unary.f32(i32 24, float %637)  ; Sqrt(value)
  %769 = fmul fast float %763, 2.000000e+00
  %770 = fsub fast float 1.000000e+00, %769
  %771 = fmul fast float %770, %766
  %772 = fadd fast float %771, %769
  %773 = fmul fast float %772, %766
  %774 = fmul fast float %764, 2.000000e+00
  %775 = fsub fast float 1.000000e+00, %774
  %776 = fmul fast float %775, %767
  %777 = fadd fast float %776, %774
  %778 = fmul fast float %777, %767
  %779 = fmul fast float %765, 2.000000e+00
  %780 = fsub fast float 1.000000e+00, %779
  %781 = fmul fast float %780, %768
  %782 = fadd fast float %781, %779
  %783 = fmul fast float %782, %768
  %784 = fmul fast float %773, %773
  %785 = fmul fast float %778, %778
  %786 = fmul fast float %783, %783
  br label %803

; <label>:787                                     ; preds = %750
  %788 = fmul fast float %268, %268
  %789 = fmul fast float %272, %272
  %790 = fmul fast float %276, %276
  %791 = fadd fast float %788, -1.000000e+00
  %792 = fadd fast float %789, -1.000000e+00
  %793 = fadd fast float %790, -1.000000e+00
  %794 = fmul fast float %651, %791
  %795 = fmul fast float %651, %792
  %796 = fmul fast float %651, %793
  %797 = fadd fast float %794, 1.000000e+00
  %798 = fadd fast float %795, 1.000000e+00
  %799 = fadd fast float %796, 1.000000e+00
  %800 = fmul fast float %797, %635
  %801 = fmul fast float %798, %636
  %802 = fmul fast float %799, %637
  br label %803

; <label>:803                                     ; preds = %787, %753, %656, %622
  %804 = phi float [ %747, %656 ], [ %784, %753 ], [ %800, %787 ], [ 1.000000e+00, %622 ]
  %805 = phi float [ %748, %656 ], [ %785, %753 ], [ %801, %787 ], [ 1.000000e+00, %622 ]
  %806 = phi float [ %749, %656 ], [ %786, %753 ], [ %802, %787 ], [ 1.000000e+00, %622 ]
  %807 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %808 = extractvalue %dx.types.CBufRet.i32 %807, 1
  %809 = and i32 %808, 1
  %810 = icmp ne i32 %809, 0
  %811 = add i32 %55, 356
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = and i32 %813, 32
  %815 = icmp ne i32 %814, 0
  %816 = and i1 %810, %815
  %817 = select i1 %816, float 1.000000e+00, float %804
  %818 = select i1 %816, float 0x3FD3333340000000, float %805
  %819 = select i1 %816, float 0x3FD3333340000000, float %806
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = and i32 %821, 32
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %896, label %824

; <label>:824                                     ; preds = %803
  %825 = add i32 %55, 92
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %825, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = add i32 %55, 392
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = add i32 %830, 0
  %832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %833 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %832, %dx.types.Handle %101, float %550, float %551, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %834 = extractvalue %dx.types.ResRet.f32 %833, 0
  %835 = extractvalue %dx.types.ResRet.f32 %833, 1
  %836 = extractvalue %dx.types.ResRet.f32 %833, 2
  %837 = extractvalue %dx.types.ResRet.f32 %833, 3
  %838 = and i32 %827, 255
  %839 = uitofp i32 %838 to float
  %840 = lshr i32 %827, 8
  %841 = and i32 %840, 255
  %842 = uitofp i32 %841 to float
  %843 = lshr i32 %827, 16
  %844 = and i32 %843, 255
  %845 = uitofp i32 %844 to float
  %846 = fmul fast float %845, 0x3F70101000000000
  %847 = fmul fast float %834, %839
  %848 = fadd fast float %847, %842
  %849 = fmul fast float %848, 0x3F70101000000000
  %850 = fadd fast float %835, -5.000000e-01
  %851 = fadd fast float %837, -5.000000e-01
  %852 = fmul fast float %850, %846
  %853 = fmul fast float %851, %846
  %854 = fadd fast float %852, 5.000000e-01
  %855 = fadd fast float %853, 5.000000e-01
  %856 = fmul fast float %854, 2.000000e+00
  %857 = fadd fast float %856, -1.000000e+00
  %858 = fmul fast float %855, 2.000000e+00
  %859 = fadd fast float %858, -1.000000e+00
  %860 = fadd fast float %857, %859
  %861 = fmul fast float %860, 5.000000e-01
  %862 = fsub fast float %857, %859
  %863 = fmul fast float %862, 5.000000e-01
  %864 = call float @dx.op.unary.f32(i32 6, float %861)  ; FAbs(value)
  %865 = fsub fast float 1.000000e+00, %864
  %866 = call float @dx.op.unary.f32(i32 6, float %863)  ; FAbs(value)
  %867 = fsub fast float %865, %866
  %868 = call float @dx.op.dot3.f32(i32 55, float %861, float %863, float %867, float %861, float %863, float %867)  ; Dot3(ax,ay,az,bx,by,bz)
  %869 = call float @dx.op.unary.f32(i32 25, float %868)  ; Rsqrt(value)
  %870 = fmul fast float %861, %869
  %871 = fmul fast float %863, %869
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = and i32 %873, 67108864
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %892, label %876

; <label>:876                                     ; preds = %824
  %877 = add i32 %55, 280
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = and i32 %879, 65535
  %881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %880)  ; LegacyF16ToF32(value)
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = and i32 %883, 65535
  %885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %884)  ; LegacyF16ToF32(value)
  %886 = lshr i32 %879, 16
  %887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %886)  ; LegacyF16ToF32(value)
  %888 = fsub fast float %849, %887
  %889 = fmul fast float %888, %881
  %890 = fadd fast float %889, %885
  %891 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  br label %892

; <label>:892                                     ; preds = %876, %824
  %893 = phi float [ %891, %876 ], [ %849, %824 ]
  %894 = call float @dx.op.dot2.f32(i32 54, float %870, float %871, float %454, float %455)  ; Dot2(ax,ay,bx,by)
  %895 = call float @dx.op.dot2.f32(i32 54, float %870, float %871, float %456, float %457)  ; Dot2(ax,ay,bx,by)
  br label %896

; <label>:896                                     ; preds = %892, %803
  %897 = phi float [ %893, %892 ], [ 0x3FD6666660000000, %803 ]
  %898 = phi float [ %894, %892 ], [ 0.000000e+00, %803 ]
  %899 = phi float [ %895, %892 ], [ 0.000000e+00, %803 ]
  %900 = phi float [ %836, %892 ], [ 1.000000e+00, %803 ]
  %901 = add i32 %55, 96
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = and i32 %903, 255
  %905 = uitofp i32 %904 to float
  %906 = lshr i32 %903, 8
  %907 = and i32 %906, 255
  %908 = uitofp i32 %907 to float
  %909 = call float @dx.op.dot3.f32(i32 55, float %817, float %818, float %819, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %910 = fmul fast float %908, %909
  %911 = fadd fast float %910, %905
  %912 = fmul fast float %911, 0x3F70101020000000
  %913 = call float @dx.op.unary.f32(i32 7, float %912)  ; Saturate(value)
  br label %914

; <label>:914                                     ; preds = %896, %439
  %915 = phi float [ 0.000000e+00, %439 ], [ %898, %896 ]
  %916 = phi float [ 0.000000e+00, %439 ], [ %899, %896 ]
  %917 = phi float [ 0.000000e+00, %439 ], [ %623, %896 ]
  %918 = phi float [ 0.000000e+00, %439 ], [ %897, %896 ]
  %919 = phi float [ 0.000000e+00, %439 ], [ %900, %896 ]
  %920 = phi float [ 0.000000e+00, %439 ], [ %913, %896 ]
  br i1 %387, label %1482, label %921

; <label>:921                                     ; preds = %914
  %922 = add i32 %55, 40
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = add i32 %55, 44
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = or i32 %927, %924
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %1482, label %930

; <label>:930                                     ; preds = %921
  %931 = and i32 %924, 262144
  %932 = icmp ne i32 %931, 0
  %933 = select i1 %932, float %60, float 1.000000e+00
  %934 = select i1 %932, float %61, float 0.000000e+00
  %935 = select i1 %932, float %62, float 0.000000e+00
  %936 = select i1 %932, float %63, float 1.000000e+00
  %937 = select i1 %932, float %64, float %87
  %938 = select i1 %932, float %65, float %88
  %939 = add i32 %55, 300
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = lshr i32 %941, 16
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = fmul fast float %943, 0x3F50624DE0000000
  %945 = add i32 %55, 104
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = lshr i32 %947, 16
  %949 = and i32 %948, 255
  %950 = lshr i32 %947, 24
  %951 = add i32 %55, 308
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = and i32 %953, 65535
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %956 = lshr i32 %953, 16
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %956)  ; LegacyF16ToF32(value)
  %958 = add i32 %55, 48
  %959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %960 = extractvalue %dx.types.ResRet.i32 %959, 0
  %961 = lshr i32 %960, 22
  %962 = shl nuw nsw i32 %961, 5
  %963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %962)  ; LegacyF16ToF32(value)
  %964 = shl i32 %960, 4
  %965 = and i32 %964, 32752
  %966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %965)  ; LegacyF16ToF32(value)
  %967 = lshr i32 %960, 7
  %968 = and i32 %967, 32752
  %969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %968)  ; LegacyF16ToF32(value)
  %970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.f32 %970, 3
  %972 = fmul fast float %971, 1.000000e+03
  %973 = fmul fast float %321, %972
  %974 = call float @dx.op.unary.f32(i32 22, float %973)  ; Frc(value)
  %975 = fadd fast float %974, %311
  %976 = fmul fast float %322, %972
  %977 = call float @dx.op.unary.f32(i32 22, float %976)  ; Frc(value)
  %978 = fadd fast float %977, %313
  %979 = fmul fast float %944, %972
  %980 = call float @dx.op.unary.f32(i32 22, float %979)  ; Frc(value)
  %981 = fmul fast float %980, 0x401921FB60000000
  %982 = fadd fast float %981, %963
  %983 = call float @dx.op.unary.f32(i32 13, float %982)  ; Sin(value)
  %984 = call float @dx.op.unary.f32(i32 12, float %982)  ; Cos(value)
  %985 = fsub fast float -0.000000e+00, %983
  %986 = fadd fast float %937, -5.000000e-01
  %987 = fadd fast float %938, -5.000000e-01
  %988 = fmul fast float %955, %986
  %989 = fmul fast float %957, %987
  %990 = fadd fast float %988, 5.000000e-01
  %991 = fadd fast float %989, 5.000000e-01
  %992 = fmul fast float %966, %990
  %993 = fmul fast float %969, %991
  %994 = fmul fast float %984, %992
  %995 = call float @dx.op.tertiary.f32(i32 46, float %985, float %993, float %994)  ; FMad(a,b,c)
  %996 = fmul fast float %983, %992
  %997 = call float @dx.op.tertiary.f32(i32 46, float %984, float %993, float %996)  ; FMad(a,b,c)
  %998 = fadd fast float %975, %995
  %999 = fadd fast float %978, %997
  %1000 = icmp ugt i32 %949, 1
  %1001 = icmp ugt i32 %947, 33554431
  %1002 = or i1 %1001, %1000
  br i1 %1002, label %1003, label %1028

; <label>:1003                                    ; preds = %930
  %1004 = add i32 %55, 244
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = lshr i32 %1006, 16
  %1008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1007)  ; LegacyF16ToF32(value)
  %1009 = fmul fast float %971, %1008
  %1010 = call float @dx.op.unary.f32(i32 22, float %1009)  ; Frc(value)
  %1011 = mul nuw nsw i32 %949, %950
  %1012 = uitofp i32 %1011 to float
  %1013 = fmul fast float %1010, %1012
  %1014 = call float @dx.op.unary.f32(i32 27, float %1013)  ; Round_ni(value)
  %1015 = fptoui float %1014 to i32
  %1016 = urem i32 %1015, %949
  %1017 = udiv i32 %1015, %950
  %1018 = call float @dx.op.unary.f32(i32 22, float %998)  ; Frc(value)
  %1019 = call float @dx.op.unary.f32(i32 22, float %999)  ; Frc(value)
  %1020 = uitofp i32 %1016 to float
  %1021 = uitofp i32 %1017 to float
  %1022 = fadd fast float %1018, %1020
  %1023 = fadd fast float %1019, %1021
  %1024 = uitofp i32 %949 to float
  %1025 = uitofp i32 %950 to float
  %1026 = fdiv fast float %1022, %1024
  %1027 = fdiv fast float %1023, %1025
  br label %1028

; <label>:1028                                    ; preds = %1003, %930
  %1029 = phi float [ %1026, %1003 ], [ %998, %930 ]
  %1030 = phi float [ %1027, %1003 ], [ %999, %930 ]
  %1031 = and i32 %924, 256
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1079, label %1033

; <label>:1033                                    ; preds = %1028
  %1034 = add i32 %55, 444
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = add i32 %1036, 0
  %1038 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1037, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1039 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1038, %dx.types.Handle %102, float %1029, float %1030, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1041 = add i32 %55, 116
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = shl i32 %1043, 4
  %1045 = and i32 %1044, 32752
  %1046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1045)  ; LegacyF16ToF32(value)
  %1047 = lshr i32 %1043, 7
  %1048 = and i32 %1047, 32752
  %1049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1048)  ; LegacyF16ToF32(value)
  %1050 = fsub fast float 1.000000e+00, %442
  %1051 = call float @dx.op.binary.f32(i32 35, float %1050, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1052 = bitcast float %442 to i32
  %1053 = sitofp i32 %1052 to float
  %1054 = fadd fast float %1053, 0xC1CFBF8940000000
  %1055 = fmul fast float %1049, %1054
  %1056 = fadd fast float %1055, 0x41CFBF8940000000
  %1057 = fptosi float %1056 to i32
  %1058 = bitcast i32 %1057 to float
  %1059 = bitcast float %1051 to i32
  %1060 = sitofp i32 %1059 to float
  %1061 = fadd fast float %1060, 0xC1CFBF8940000000
  %1062 = fmul fast float %1061, %1049
  %1063 = fadd fast float %1062, 0x41CFBF8940000000
  %1064 = fptosi float %1063 to i32
  %1065 = bitcast i32 %1064 to float
  %1066 = fmul fast float %1058, %1046
  %1067 = fmul fast float %1065, %1046
  %1068 = fsub fast float %1051, %1066
  %1069 = fadd fast float %1067, %1051
  %1070 = call float @dx.op.unary.f32(i32 7, float %1068)  ; Saturate(value)
  %1071 = call float @dx.op.unary.f32(i32 7, float %1069)  ; Saturate(value)
  %1072 = fsub fast float %1040, %1070
  %1073 = fsub fast float %1071, %1070
  %1074 = bitcast float %1073 to i32
  %1075 = sub nsw i32 2129859010, %1074
  %1076 = bitcast i32 %1075 to float
  %1077 = fmul fast float %1076, %1072
  %1078 = call float @dx.op.unary.f32(i32 7, float %1077)  ; Saturate(value)
  br label %1079

; <label>:1079                                    ; preds = %1033, %1028
  %1080 = phi float [ %1078, %1033 ], [ %442, %1028 ]
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = and i32 %1082, 128
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1101, label %1085

; <label>:1085                                    ; preds = %1079
  %1086 = add i32 %55, 428
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = add i32 %1088, 0
  %1090 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1089, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1091 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1090, %dx.types.Handle %102, float %1029, float %1030, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = and i32 %1094, 524288
  %1096 = icmp ne i32 %1095, 0
  %1097 = fcmp fast ogt float %1092, 0x3FE0101020000000
  %1098 = select i1 %1097, float 1.000000e+00, float 0.000000e+00
  %1099 = select i1 %1096, float %1098, float %1092
  %1100 = fmul fast float %1099, %1080
  br label %1101

; <label>:1101                                    ; preds = %1085, %1079
  %1102 = phi float [ %1100, %1085 ], [ %1080, %1079 ]
  %1103 = fcmp fast ult float %1102, 0x3F70101020000000
  br i1 %1103, label %1482, label %1104

; <label>:1104                                    ; preds = %1101
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = and i32 %1106, 16
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1284, label %1109

; <label>:1109                                    ; preds = %1104
  %1110 = add i32 %55, 380
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = add i32 %1112, 0
  %1114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1113, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1115 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1114, %dx.types.Handle %101, float %1029, float %1030, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.ResRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.ResRet.f32 %1115, 2
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = and i32 %1120, 512
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1131, label %1123

; <label>:1123                                    ; preds = %1109
  %1124 = add i32 %55, 460
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = add i32 %1126, 0
  %1128 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1127, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1129 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1128, %dx.types.Handle %102, float %1029, float %1030, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1130 = extractvalue %dx.types.ResRet.f32 %1129, 0
  br label %1131

; <label>:1131                                    ; preds = %1123, %1109
  %1132 = phi float [ %1130, %1123 ], [ 1.000000e+00, %1109 ]
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = and i32 %1134, 33554432
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1231, label %1137

; <label>:1137                                    ; preds = %1131
  %1138 = add i32 %55, 240
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = and i32 %1140, 65535
  %1142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1141)  ; LegacyF16ToF32(value)
  %1143 = lshr i32 %1140, 16
  %1144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1143)  ; LegacyF16ToF32(value)
  %1145 = add i32 %55, 244
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = and i32 %1147, 65535
  %1149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1148)  ; LegacyF16ToF32(value)
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = and i32 %1151, 255
  %1153 = uitofp i32 %1152 to float
  %1154 = fmul fast float %1153, 0x3F70101020000000
  %1155 = lshr i32 %1151, 8
  %1156 = and i32 %1155, 255
  %1157 = uitofp i32 %1156 to float
  %1158 = fmul fast float %1157, 0x3F70101020000000
  %1159 = lshr i32 %1151, 16
  %1160 = and i32 %1159, 255
  %1161 = uitofp i32 %1160 to float
  %1162 = fmul fast float %1161, 0x3F70101020000000
  %1163 = add i32 %55, 236
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = and i32 %1165, 255
  %1167 = uitofp i32 %1166 to float
  %1168 = fmul fast float %1167, 0x3F70101020000000
  %1169 = lshr i32 %1165, 8
  %1170 = and i32 %1169, 255
  %1171 = uitofp i32 %1170 to float
  %1172 = fmul fast float %1171, 0x3F70101020000000
  %1173 = lshr i32 %1165, 16
  %1174 = and i32 %1173, 255
  %1175 = uitofp i32 %1174 to float
  %1176 = fmul fast float %1175, 0x3F70101020000000
  %1177 = bitcast float %1116 to i32
  %1178 = ashr i32 %1177, 1
  %1179 = sub nsw i32 1597463174, %1178
  %1180 = bitcast i32 %1179 to float
  %1181 = fmul fast float %1116, 5.000000e-01
  %1182 = fmul fast float %1180, %1180
  %1183 = fmul fast float %1182, %1181
  %1184 = fsub fast float 1.500000e+00, %1183
  %1185 = fmul fast float %1180, %1116
  %1186 = fmul fast float %1185, %1184
  %1187 = bitcast float %1117 to i32
  %1188 = ashr i32 %1187, 1
  %1189 = sub nsw i32 1597463174, %1188
  %1190 = bitcast i32 %1189 to float
  %1191 = fmul fast float %1117, 5.000000e-01
  %1192 = fmul fast float %1190, %1190
  %1193 = fmul fast float %1192, %1191
  %1194 = fsub fast float 1.500000e+00, %1193
  %1195 = fmul fast float %1190, %1117
  %1196 = fmul fast float %1195, %1194
  %1197 = bitcast float %1118 to i32
  %1198 = ashr i32 %1197, 1
  %1199 = sub nsw i32 1597463174, %1198
  %1200 = bitcast i32 %1199 to float
  %1201 = fmul fast float %1118, 5.000000e-01
  %1202 = fmul fast float %1200, %1200
  %1203 = fmul fast float %1202, %1201
  %1204 = fsub fast float 1.500000e+00, %1203
  %1205 = fmul fast float %1200, %1118
  %1206 = fmul fast float %1205, %1204
  %1207 = fsub fast float %1186, %1168
  %1208 = fsub fast float %1196, %1172
  %1209 = fsub fast float %1206, %1176
  %1210 = fmul fast float %1207, %1142
  %1211 = fmul fast float %1208, %1144
  %1212 = fmul fast float %1209, %1149
  %1213 = fadd fast float %1210, %1154
  %1214 = fadd fast float %1211, %1158
  %1215 = fadd fast float %1212, %1162
  %1216 = call float @dx.op.unary.f32(i32 7, float %1213)  ; Saturate(value)
  %1217 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1218 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1219 = fmul fast float %1216, %1216
  %1220 = fmul fast float %1217, %1217
  %1221 = fmul fast float %1218, %1218
  %1222 = fsub fast float %1219, %1116
  %1223 = fsub fast float %1220, %1117
  %1224 = fsub fast float %1221, %1118
  %1225 = fmul fast float %1222, %1132
  %1226 = fmul fast float %1223, %1132
  %1227 = fmul fast float %1224, %1132
  %1228 = fadd fast float %1225, %1116
  %1229 = fadd fast float %1226, %1117
  %1230 = fadd fast float %1227, %1118
  br label %1284

; <label>:1231                                    ; preds = %1131
  %1232 = and i32 %1134, 134217728
  %1233 = icmp eq i32 %1232, 0
  br i1 %1233, label %1268, label %1234

; <label>:1234                                    ; preds = %1231
  %1235 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %1236 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1237 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %1238 = fadd fast float %1235, -5.000000e-01
  %1239 = fadd fast float %1236, -5.000000e-01
  %1240 = fadd fast float %1237, -5.000000e-01
  %1241 = fmul fast float %1238, %1132
  %1242 = fmul fast float %1239, %1132
  %1243 = fmul fast float %1240, %1132
  %1244 = fadd fast float %1241, 5.000000e-01
  %1245 = fadd fast float %1242, 5.000000e-01
  %1246 = fadd fast float %1243, 5.000000e-01
  %1247 = call float @dx.op.unary.f32(i32 24, float %1116)  ; Sqrt(value)
  %1248 = call float @dx.op.unary.f32(i32 24, float %1117)  ; Sqrt(value)
  %1249 = call float @dx.op.unary.f32(i32 24, float %1118)  ; Sqrt(value)
  %1250 = fmul fast float %1244, 2.000000e+00
  %1251 = fsub fast float 1.000000e+00, %1250
  %1252 = fmul fast float %1251, %1247
  %1253 = fadd fast float %1252, %1250
  %1254 = fmul fast float %1253, %1247
  %1255 = fmul fast float %1245, 2.000000e+00
  %1256 = fsub fast float 1.000000e+00, %1255
  %1257 = fmul fast float %1256, %1248
  %1258 = fadd fast float %1257, %1255
  %1259 = fmul fast float %1258, %1248
  %1260 = fmul fast float %1246, 2.000000e+00
  %1261 = fsub fast float 1.000000e+00, %1260
  %1262 = fmul fast float %1261, %1249
  %1263 = fadd fast float %1262, %1260
  %1264 = fmul fast float %1263, %1249
  %1265 = fmul fast float %1254, %1254
  %1266 = fmul fast float %1259, %1259
  %1267 = fmul fast float %1264, %1264
  br label %1284

; <label>:1268                                    ; preds = %1231
  %1269 = fmul fast float %298, %298
  %1270 = fmul fast float %302, %302
  %1271 = fmul fast float %306, %306
  %1272 = fadd fast float %1269, -1.000000e+00
  %1273 = fadd fast float %1270, -1.000000e+00
  %1274 = fadd fast float %1271, -1.000000e+00
  %1275 = fmul fast float %1132, %1272
  %1276 = fmul fast float %1132, %1273
  %1277 = fmul fast float %1132, %1274
  %1278 = fadd fast float %1275, 1.000000e+00
  %1279 = fadd fast float %1276, 1.000000e+00
  %1280 = fadd fast float %1277, 1.000000e+00
  %1281 = fmul fast float %1278, %1116
  %1282 = fmul fast float %1279, %1117
  %1283 = fmul fast float %1280, %1118
  br label %1284

; <label>:1284                                    ; preds = %1268, %1234, %1137, %1104
  %1285 = phi float [ %1228, %1137 ], [ %1265, %1234 ], [ %1281, %1268 ], [ 1.000000e+00, %1104 ]
  %1286 = phi float [ %1229, %1137 ], [ %1266, %1234 ], [ %1282, %1268 ], [ 1.000000e+00, %1104 ]
  %1287 = phi float [ %1230, %1137 ], [ %1267, %1234 ], [ %1283, %1268 ], [ 1.000000e+00, %1104 ]
  %1288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.i32 %1288, 1
  %1290 = and i32 %1289, 1
  %1291 = icmp ne i32 %1290, 0
  %1292 = add i32 %55, 356
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = and i32 %1294, 32
  %1296 = icmp ne i32 %1295, 0
  %1297 = and i1 %1291, %1296
  %1298 = select i1 %1297, float 1.000000e+00, float %1285
  %1299 = select i1 %1297, float 0x3FD3333340000000, float %1286
  %1300 = select i1 %1297, float 0x3FD3333340000000, float %1287
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = and i32 %1302, 32
  %1304 = icmp eq i32 %1303, 0
  br i1 %1304, label %1377, label %1305

; <label>:1305                                    ; preds = %1284
  %1306 = add i32 %55, 108
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = add i32 %55, 396
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = add i32 %1311, 0
  %1313 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1312, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1314 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1313, %dx.types.Handle %101, float %1029, float %1030, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1315 = extractvalue %dx.types.ResRet.f32 %1314, 0
  %1316 = extractvalue %dx.types.ResRet.f32 %1314, 1
  %1317 = extractvalue %dx.types.ResRet.f32 %1314, 2
  %1318 = extractvalue %dx.types.ResRet.f32 %1314, 3
  %1319 = and i32 %1308, 255
  %1320 = uitofp i32 %1319 to float
  %1321 = lshr i32 %1308, 8
  %1322 = and i32 %1321, 255
  %1323 = uitofp i32 %1322 to float
  %1324 = lshr i32 %1308, 16
  %1325 = and i32 %1324, 255
  %1326 = uitofp i32 %1325 to float
  %1327 = fmul fast float %1326, 0x3F70101000000000
  %1328 = fmul fast float %1315, %1320
  %1329 = fadd fast float %1328, %1323
  %1330 = fmul fast float %1329, 0x3F70101000000000
  %1331 = fadd fast float %1316, -5.000000e-01
  %1332 = fadd fast float %1318, -5.000000e-01
  %1333 = fmul fast float %1331, %1327
  %1334 = fmul fast float %1332, %1327
  %1335 = fadd fast float %1333, 5.000000e-01
  %1336 = fadd fast float %1334, 5.000000e-01
  %1337 = fmul fast float %1335, 2.000000e+00
  %1338 = fadd fast float %1337, -1.000000e+00
  %1339 = fmul fast float %1336, 2.000000e+00
  %1340 = fadd fast float %1339, -1.000000e+00
  %1341 = fadd fast float %1338, %1340
  %1342 = fmul fast float %1341, 5.000000e-01
  %1343 = fsub fast float %1338, %1340
  %1344 = fmul fast float %1343, 5.000000e-01
  %1345 = call float @dx.op.unary.f32(i32 6, float %1342)  ; FAbs(value)
  %1346 = fsub fast float 1.000000e+00, %1345
  %1347 = call float @dx.op.unary.f32(i32 6, float %1344)  ; FAbs(value)
  %1348 = fsub fast float %1346, %1347
  %1349 = call float @dx.op.dot3.f32(i32 55, float %1342, float %1344, float %1348, float %1342, float %1344, float %1348)  ; Dot3(ax,ay,az,bx,by,bz)
  %1350 = call float @dx.op.unary.f32(i32 25, float %1349)  ; Rsqrt(value)
  %1351 = fmul fast float %1342, %1350
  %1352 = fmul fast float %1344, %1350
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = and i32 %1354, 67108864
  %1356 = icmp eq i32 %1355, 0
  br i1 %1356, label %1373, label %1357

; <label>:1357                                    ; preds = %1305
  %1358 = add i32 %55, 296
  %1359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1358, i32 undef)  ; BufferLoad(srv,index,wot)
  %1360 = extractvalue %dx.types.ResRet.i32 %1359, 0
  %1361 = and i32 %1360, 65535
  %1362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1361)  ; LegacyF16ToF32(value)
  %1363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.i32 %1363, 0
  %1365 = and i32 %1364, 65535
  %1366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1365)  ; LegacyF16ToF32(value)
  %1367 = lshr i32 %1360, 16
  %1368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1367)  ; LegacyF16ToF32(value)
  %1369 = fsub fast float %1330, %1368
  %1370 = fmul fast float %1369, %1362
  %1371 = fadd fast float %1370, %1366
  %1372 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  br label %1373

; <label>:1373                                    ; preds = %1357, %1305
  %1374 = phi float [ %1372, %1357 ], [ %1330, %1305 ]
  %1375 = call float @dx.op.dot2.f32(i32 54, float %1351, float %1352, float %933, float %934)  ; Dot2(ax,ay,bx,by)
  %1376 = call float @dx.op.dot2.f32(i32 54, float %1351, float %1352, float %935, float %936)  ; Dot2(ax,ay,bx,by)
  br label %1377

; <label>:1377                                    ; preds = %1373, %1284
  %1378 = phi float [ %1374, %1373 ], [ 0x3FD6666660000000, %1284 ]
  %1379 = phi float [ %1375, %1373 ], [ 0.000000e+00, %1284 ]
  %1380 = phi float [ %1376, %1373 ], [ 0.000000e+00, %1284 ]
  %1381 = phi float [ %1317, %1373 ], [ 1.000000e+00, %1284 ]
  %1382 = add i32 %55, 112
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = and i32 %1386, 3
  %1388 = icmp eq i32 %1387, 0
  br i1 %1388, label %1389, label %1406

; <label>:1389                                    ; preds = %1377
  %1390 = lshr i32 %1384, 8
  %1391 = and i32 %1390, 255
  %1392 = uitofp i32 %1391 to float
  %1393 = call float @dx.op.dot3.f32(i32 55, float %1298, float %1299, float %1300, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1394 = fmul fast float %1392, %1393
  %1395 = and i32 %1384, 255
  %1396 = uitofp i32 %1395 to float
  %1397 = fadd fast float %1394, %1396
  %1398 = fmul fast float %1397, 0x3F70101020000000
  %1399 = call float @dx.op.unary.f32(i32 7, float %1398)  ; Saturate(value)
  %1400 = and i32 %1386, 16
  %1401 = icmp ne i32 %1400, 0
  %1402 = select i1 %1401, float %1102, float 0.000000e+00
  %1403 = fsub fast float %1399, %920
  %1404 = fmul fast float %1402, %1403
  %1405 = fadd fast float %1404, %920
  br label %1406

; <label>:1406                                    ; preds = %1389, %1377
  %1407 = phi float [ %920, %1377 ], [ %1405, %1389 ]
  %1408 = and i32 %1386, 12
  %1409 = icmp eq i32 %1408, 12
  br i1 %1409, label %1482, label %1410

; <label>:1410                                    ; preds = %1406
  %1411 = and i32 %1386, 2097184
  %1412 = icmp eq i32 %1411, 2097184
  %1413 = select i1 %1412, float %1102, float 0.000000e+00
  %1414 = and i32 %1386, 4194336
  %1415 = icmp eq i32 %1414, 4194336
  %1416 = select i1 %1415, float %1102, float 0.000000e+00
  %1417 = and i32 %1386, 8388640
  %1418 = icmp eq i32 %1417, 8388640
  %1419 = select i1 %1418, float %1102, float 0.000000e+00
  %1420 = icmp eq i32 %1408, 0
  br i1 %1420, label %1421, label %1434

; <label>:1421                                    ; preds = %1410
  %1422 = fsub fast float %1379, %915
  %1423 = fsub fast float %1380, %916
  %1424 = fmul fast float %1413, %1422
  %1425 = fmul fast float %1413, %1423
  %1426 = fadd fast float %1424, %915
  %1427 = fadd fast float %1425, %916
  %1428 = fsub fast float %1381, %919
  %1429 = fmul fast float %1416, %1428
  %1430 = fadd fast float %1429, %919
  %1431 = fsub fast float %1378, %918
  %1432 = fmul fast float %1419, %1431
  %1433 = fadd fast float %1432, %918
  br label %1482

; <label>:1434                                    ; preds = %1410
  %1435 = icmp eq i32 %1408, 4
  br i1 %1435, label %1436, label %1468

; <label>:1436                                    ; preds = %1434
  %1437 = fmul fast float %1413, %1379
  %1438 = fmul fast float %1413, %1380
  %1439 = fadd fast float %1437, %915
  %1440 = fadd fast float %1438, %916
  %1441 = call float @dx.op.binary.f32(i32 36, float %919, float %1381)  ; FMin(a,b)
  %1442 = fsub fast float %1441, %919
  %1443 = fmul fast float %1442, %1416
  %1444 = fadd fast float %1443, %919
  %1445 = fadd fast float %1378, %918
  %1446 = fmul fast float %1445, 0x3FF337FAE0000000
  %1447 = fmul fast float %918, %918
  %1448 = fmul fast float %1378, %1378
  %1449 = fadd fast float %1448, %1447
  %1450 = fmul fast float %1449, 0x3FE5152B00000000
  %1451 = fmul fast float %918, 0xBFCC1F85E0000000
  %1452 = fmul fast float %1451, %1378
  %1453 = fadd fast float %1452, 0xBFE1363700000000
  %1454 = fadd fast float %1453, %1446
  %1455 = fsub fast float %1454, %1450
  %1456 = fmul fast float %1445, 0x3FBA6F0D00000000
  %1457 = fmul fast float %1449, 0x3FD0432880000000
  %1458 = fmul fast float %918, 0xBFEF110800000000
  %1459 = fmul fast float %1458, %1378
  %1460 = fadd fast float %1459, 1.000000e+00
  %1461 = fsub fast float %1460, %1456
  %1462 = fadd fast float %1461, %1457
  %1463 = fdiv fast float %1455, %1462
  %1464 = call float @dx.op.unary.f32(i32 7, float %1463)  ; Saturate(value)
  %1465 = fsub fast float %1464, %918
  %1466 = fmul fast float %1465, %1419
  %1467 = fadd fast float %1466, %918
  br label %1482

; <label>:1468                                    ; preds = %1434
  %1469 = icmp eq i32 %1408, 8
  br i1 %1469, label %1470, label %1482

; <label>:1470                                    ; preds = %1468
  %1471 = fmul fast float %1413, %1379
  %1472 = fmul fast float %1413, %1380
  %1473 = fadd fast float %1471, %915
  %1474 = fadd fast float %1472, %916
  %1475 = call float @dx.op.binary.f32(i32 36, float %919, float %1381)  ; FMin(a,b)
  %1476 = fsub fast float %1475, %919
  %1477 = fmul fast float %1476, %1416
  %1478 = fadd fast float %1477, %919
  %1479 = fsub fast float %1378, %918
  %1480 = fmul fast float %1419, %1479
  %1481 = fadd fast float %1480, %918
  br label %1482

; <label>:1482                                    ; preds = %1470, %1468, %1436, %1421, %1406, %1101, %921, %914
  %1483 = phi float [ %915, %1406 ], [ %915, %1101 ], [ %915, %914 ], [ %1473, %1470 ], [ %915, %1468 ], [ %1439, %1436 ], [ %1426, %1421 ], [ %915, %921 ]
  %1484 = phi float [ %916, %1406 ], [ %916, %1101 ], [ %916, %914 ], [ %1474, %1470 ], [ %916, %1468 ], [ %1440, %1436 ], [ %1427, %1421 ], [ %916, %921 ]
  %1485 = phi float [ %918, %1406 ], [ %918, %1101 ], [ %918, %914 ], [ %1481, %1470 ], [ %918, %1468 ], [ %1467, %1436 ], [ %1433, %1421 ], [ %918, %921 ]
  %1486 = phi float [ %919, %1406 ], [ %919, %1101 ], [ %919, %914 ], [ %1478, %1470 ], [ %919, %1468 ], [ %1444, %1436 ], [ %1430, %1421 ], [ %919, %921 ]
  %1487 = phi float [ %1407, %1406 ], [ %920, %1101 ], [ %920, %914 ], [ %1407, %1470 ], [ %1407, %1468 ], [ %1407, %1436 ], [ %1407, %1421 ], [ %920, %921 ]
  br i1 %389, label %2049, label %1488

; <label>:1488                                    ; preds = %1482
  %1489 = add i32 %55, 56
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = add i32 %55, 60
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = or i32 %1494, %1491
  %1496 = icmp eq i32 %1495, 0
  br i1 %1496, label %2049, label %1497

; <label>:1497                                    ; preds = %1488
  %1498 = and i32 %1491, 262144
  %1499 = icmp ne i32 %1498, 0
  %1500 = select i1 %1499, float %60, float 1.000000e+00
  %1501 = select i1 %1499, float %61, float 0.000000e+00
  %1502 = select i1 %1499, float %62, float 0.000000e+00
  %1503 = select i1 %1499, float %63, float 1.000000e+00
  %1504 = select i1 %1499, float %64, float %87
  %1505 = select i1 %1499, float %65, float %88
  %1506 = add i32 %55, 316
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = lshr i32 %1508, 16
  %1510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1509)  ; LegacyF16ToF32(value)
  %1511 = fmul fast float %1510, 0x3F50624DE0000000
  %1512 = add i32 %55, 120
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = lshr i32 %1514, 16
  %1516 = and i32 %1515, 255
  %1517 = lshr i32 %1514, 24
  %1518 = add i32 %55, 324
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, 65535
  %1522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1521)  ; LegacyF16ToF32(value)
  %1523 = lshr i32 %1520, 16
  %1524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1523)  ; LegacyF16ToF32(value)
  %1525 = add i32 %55, 64
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = lshr i32 %1527, 22
  %1529 = shl nuw nsw i32 %1528, 5
  %1530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1529)  ; LegacyF16ToF32(value)
  %1531 = shl i32 %1527, 4
  %1532 = and i32 %1531, 32752
  %1533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1532)  ; LegacyF16ToF32(value)
  %1534 = lshr i32 %1527, 7
  %1535 = and i32 %1534, 32752
  %1536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1535)  ; LegacyF16ToF32(value)
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 3
  %1539 = fmul fast float %1538, 1.000000e+03
  %1540 = fmul fast float %351, %1539
  %1541 = call float @dx.op.unary.f32(i32 22, float %1540)  ; Frc(value)
  %1542 = fadd fast float %1541, %341
  %1543 = fmul fast float %352, %1539
  %1544 = call float @dx.op.unary.f32(i32 22, float %1543)  ; Frc(value)
  %1545 = fadd fast float %1544, %343
  %1546 = fmul fast float %1511, %1539
  %1547 = call float @dx.op.unary.f32(i32 22, float %1546)  ; Frc(value)
  %1548 = fmul fast float %1547, 0x401921FB60000000
  %1549 = fadd fast float %1548, %1530
  %1550 = call float @dx.op.unary.f32(i32 13, float %1549)  ; Sin(value)
  %1551 = call float @dx.op.unary.f32(i32 12, float %1549)  ; Cos(value)
  %1552 = fsub fast float -0.000000e+00, %1550
  %1553 = fadd fast float %1504, -5.000000e-01
  %1554 = fadd fast float %1505, -5.000000e-01
  %1555 = fmul fast float %1522, %1553
  %1556 = fmul fast float %1524, %1554
  %1557 = fadd fast float %1555, 5.000000e-01
  %1558 = fadd fast float %1556, 5.000000e-01
  %1559 = fmul fast float %1533, %1557
  %1560 = fmul fast float %1536, %1558
  %1561 = fmul fast float %1551, %1559
  %1562 = call float @dx.op.tertiary.f32(i32 46, float %1552, float %1560, float %1561)  ; FMad(a,b,c)
  %1563 = fmul fast float %1550, %1559
  %1564 = call float @dx.op.tertiary.f32(i32 46, float %1551, float %1560, float %1563)  ; FMad(a,b,c)
  %1565 = fadd fast float %1542, %1562
  %1566 = fadd fast float %1545, %1564
  %1567 = icmp ugt i32 %1516, 1
  %1568 = icmp ugt i32 %1514, 33554431
  %1569 = or i1 %1568, %1567
  br i1 %1569, label %1570, label %1595

; <label>:1570                                    ; preds = %1497
  %1571 = add i32 %55, 260
  %1572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1571, i32 undef)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.i32 %1572, 0
  %1574 = lshr i32 %1573, 16
  %1575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1574)  ; LegacyF16ToF32(value)
  %1576 = fmul fast float %1538, %1575
  %1577 = call float @dx.op.unary.f32(i32 22, float %1576)  ; Frc(value)
  %1578 = mul nuw nsw i32 %1516, %1517
  %1579 = uitofp i32 %1578 to float
  %1580 = fmul fast float %1577, %1579
  %1581 = call float @dx.op.unary.f32(i32 27, float %1580)  ; Round_ni(value)
  %1582 = fptoui float %1581 to i32
  %1583 = urem i32 %1582, %1516
  %1584 = udiv i32 %1582, %1517
  %1585 = call float @dx.op.unary.f32(i32 22, float %1565)  ; Frc(value)
  %1586 = call float @dx.op.unary.f32(i32 22, float %1566)  ; Frc(value)
  %1587 = uitofp i32 %1583 to float
  %1588 = uitofp i32 %1584 to float
  %1589 = fadd fast float %1585, %1587
  %1590 = fadd fast float %1586, %1588
  %1591 = uitofp i32 %1516 to float
  %1592 = uitofp i32 %1517 to float
  %1593 = fdiv fast float %1589, %1591
  %1594 = fdiv fast float %1590, %1592
  br label %1595

; <label>:1595                                    ; preds = %1570, %1497
  %1596 = phi float [ %1593, %1570 ], [ %1565, %1497 ]
  %1597 = phi float [ %1594, %1570 ], [ %1566, %1497 ]
  %1598 = and i32 %1491, 256
  %1599 = icmp eq i32 %1598, 0
  br i1 %1599, label %1646, label %1600

; <label>:1600                                    ; preds = %1595
  %1601 = add i32 %55, 448
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1601, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = add i32 %1603, 0
  %1605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1604, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1606 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1605, %dx.types.Handle %102, float %1596, float %1597, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1607 = extractvalue %dx.types.ResRet.f32 %1606, 0
  %1608 = add i32 %55, 132
  %1609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1608, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.i32 %1609, 0
  %1611 = shl i32 %1610, 4
  %1612 = and i32 %1611, 32752
  %1613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1612)  ; LegacyF16ToF32(value)
  %1614 = lshr i32 %1610, 7
  %1615 = and i32 %1614, 32752
  %1616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1615)  ; LegacyF16ToF32(value)
  %1617 = fsub fast float 1.000000e+00, %441
  %1618 = call float @dx.op.binary.f32(i32 35, float %1617, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1619 = bitcast float %441 to i32
  %1620 = sitofp i32 %1619 to float
  %1621 = fadd fast float %1620, 0xC1CFBF8940000000
  %1622 = fmul fast float %1616, %1621
  %1623 = fadd fast float %1622, 0x41CFBF8940000000
  %1624 = fptosi float %1623 to i32
  %1625 = bitcast i32 %1624 to float
  %1626 = bitcast float %1618 to i32
  %1627 = sitofp i32 %1626 to float
  %1628 = fadd fast float %1627, 0xC1CFBF8940000000
  %1629 = fmul fast float %1628, %1616
  %1630 = fadd fast float %1629, 0x41CFBF8940000000
  %1631 = fptosi float %1630 to i32
  %1632 = bitcast i32 %1631 to float
  %1633 = fmul fast float %1625, %1613
  %1634 = fmul fast float %1632, %1613
  %1635 = fsub fast float %1618, %1633
  %1636 = fadd fast float %1634, %1618
  %1637 = call float @dx.op.unary.f32(i32 7, float %1635)  ; Saturate(value)
  %1638 = call float @dx.op.unary.f32(i32 7, float %1636)  ; Saturate(value)
  %1639 = fsub fast float %1607, %1637
  %1640 = fsub fast float %1638, %1637
  %1641 = bitcast float %1640 to i32
  %1642 = sub nsw i32 2129859010, %1641
  %1643 = bitcast i32 %1642 to float
  %1644 = fmul fast float %1643, %1639
  %1645 = call float @dx.op.unary.f32(i32 7, float %1644)  ; Saturate(value)
  br label %1646

; <label>:1646                                    ; preds = %1600, %1595
  %1647 = phi float [ %1645, %1600 ], [ %441, %1595 ]
  %1648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1649 = extractvalue %dx.types.ResRet.i32 %1648, 0
  %1650 = and i32 %1649, 128
  %1651 = icmp eq i32 %1650, 0
  br i1 %1651, label %1668, label %1652

; <label>:1652                                    ; preds = %1646
  %1653 = add i32 %55, 432
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1653, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = add i32 %1655, 0
  %1657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1656, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1658 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1657, %dx.types.Handle %102, float %1596, float %1597, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1659 = extractvalue %dx.types.ResRet.f32 %1658, 0
  %1660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1661 = extractvalue %dx.types.ResRet.i32 %1660, 0
  %1662 = and i32 %1661, 524288
  %1663 = icmp ne i32 %1662, 0
  %1664 = fcmp fast ogt float %1659, 0x3FE0101020000000
  %1665 = select i1 %1664, float 1.000000e+00, float 0.000000e+00
  %1666 = select i1 %1663, float %1665, float %1659
  %1667 = fmul fast float %1666, %1647
  br label %1668

; <label>:1668                                    ; preds = %1652, %1646
  %1669 = phi float [ %1667, %1652 ], [ %1647, %1646 ]
  %1670 = fcmp fast ult float %1669, 0x3F70101020000000
  br i1 %1670, label %2049, label %1671

; <label>:1671                                    ; preds = %1668
  %1672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1673 = extractvalue %dx.types.ResRet.i32 %1672, 0
  %1674 = and i32 %1673, 16
  %1675 = icmp eq i32 %1674, 0
  br i1 %1675, label %1851, label %1676

; <label>:1676                                    ; preds = %1671
  %1677 = add i32 %55, 384
  %1678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %1679 = extractvalue %dx.types.ResRet.i32 %1678, 0
  %1680 = add i32 %1679, 0
  %1681 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1680, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1682 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1681, %dx.types.Handle %101, float %1596, float %1597, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1683 = extractvalue %dx.types.ResRet.f32 %1682, 0
  %1684 = extractvalue %dx.types.ResRet.f32 %1682, 1
  %1685 = extractvalue %dx.types.ResRet.f32 %1682, 2
  %1686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1687 = extractvalue %dx.types.ResRet.i32 %1686, 0
  %1688 = and i32 %1687, 512
  %1689 = icmp eq i32 %1688, 0
  br i1 %1689, label %1698, label %1690

; <label>:1690                                    ; preds = %1676
  %1691 = add i32 %55, 464
  %1692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1693 = extractvalue %dx.types.ResRet.i32 %1692, 0
  %1694 = add i32 %1693, 0
  %1695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1694, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1696 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1695, %dx.types.Handle %102, float %1596, float %1597, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1697 = extractvalue %dx.types.ResRet.f32 %1696, 0
  br label %1698

; <label>:1698                                    ; preds = %1690, %1676
  %1699 = phi float [ %1697, %1690 ], [ 1.000000e+00, %1676 ]
  %1700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1701 = extractvalue %dx.types.ResRet.i32 %1700, 0
  %1702 = and i32 %1701, 33554432
  %1703 = icmp eq i32 %1702, 0
  br i1 %1703, label %1798, label %1704

; <label>:1704                                    ; preds = %1698
  %1705 = add i32 %55, 256
  %1706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.i32 %1706, 0
  %1708 = and i32 %1707, 65535
  %1709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1708)  ; LegacyF16ToF32(value)
  %1710 = lshr i32 %1707, 16
  %1711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1710)  ; LegacyF16ToF32(value)
  %1712 = add i32 %55, 260
  %1713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.i32 %1713, 0
  %1715 = and i32 %1714, 65535
  %1716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1715)  ; LegacyF16ToF32(value)
  %1717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.i32 %1717, 0
  %1719 = and i32 %1718, 255
  %1720 = uitofp i32 %1719 to float
  %1721 = fmul fast float %1720, 0x3F70101020000000
  %1722 = lshr i32 %1718, 8
  %1723 = and i32 %1722, 255
  %1724 = uitofp i32 %1723 to float
  %1725 = fmul fast float %1724, 0x3F70101020000000
  %1726 = lshr i32 %1718, 16
  %1727 = and i32 %1726, 255
  %1728 = uitofp i32 %1727 to float
  %1729 = fmul fast float %1728, 0x3F70101020000000
  %1730 = add i32 %55, 252
  %1731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1730, i32 undef)  ; BufferLoad(srv,index,wot)
  %1732 = extractvalue %dx.types.ResRet.i32 %1731, 0
  %1733 = and i32 %1732, 255
  %1734 = uitofp i32 %1733 to float
  %1735 = fmul fast float %1734, 0x3F70101020000000
  %1736 = lshr i32 %1732, 8
  %1737 = and i32 %1736, 255
  %1738 = uitofp i32 %1737 to float
  %1739 = fmul fast float %1738, 0x3F70101020000000
  %1740 = lshr i32 %1732, 16
  %1741 = and i32 %1740, 255
  %1742 = uitofp i32 %1741 to float
  %1743 = fmul fast float %1742, 0x3F70101020000000
  %1744 = bitcast float %1683 to i32
  %1745 = ashr i32 %1744, 1
  %1746 = sub nsw i32 1597463174, %1745
  %1747 = bitcast i32 %1746 to float
  %1748 = fmul fast float %1683, 5.000000e-01
  %1749 = fmul fast float %1747, %1747
  %1750 = fmul fast float %1749, %1748
  %1751 = fsub fast float 1.500000e+00, %1750
  %1752 = fmul fast float %1747, %1683
  %1753 = fmul fast float %1752, %1751
  %1754 = bitcast float %1684 to i32
  %1755 = ashr i32 %1754, 1
  %1756 = sub nsw i32 1597463174, %1755
  %1757 = bitcast i32 %1756 to float
  %1758 = fmul fast float %1684, 5.000000e-01
  %1759 = fmul fast float %1757, %1757
  %1760 = fmul fast float %1759, %1758
  %1761 = fsub fast float 1.500000e+00, %1760
  %1762 = fmul fast float %1757, %1684
  %1763 = fmul fast float %1762, %1761
  %1764 = bitcast float %1685 to i32
  %1765 = ashr i32 %1764, 1
  %1766 = sub nsw i32 1597463174, %1765
  %1767 = bitcast i32 %1766 to float
  %1768 = fmul fast float %1685, 5.000000e-01
  %1769 = fmul fast float %1767, %1767
  %1770 = fmul fast float %1769, %1768
  %1771 = fsub fast float 1.500000e+00, %1770
  %1772 = fmul fast float %1767, %1685
  %1773 = fmul fast float %1772, %1771
  %1774 = fsub fast float %1753, %1735
  %1775 = fsub fast float %1763, %1739
  %1776 = fsub fast float %1773, %1743
  %1777 = fmul fast float %1774, %1709
  %1778 = fmul fast float %1775, %1711
  %1779 = fmul fast float %1776, %1716
  %1780 = fadd fast float %1777, %1721
  %1781 = fadd fast float %1778, %1725
  %1782 = fadd fast float %1779, %1729
  %1783 = call float @dx.op.unary.f32(i32 7, float %1780)  ; Saturate(value)
  %1784 = call float @dx.op.unary.f32(i32 7, float %1781)  ; Saturate(value)
  %1785 = call float @dx.op.unary.f32(i32 7, float %1782)  ; Saturate(value)
  %1786 = fmul fast float %1783, %1783
  %1787 = fmul fast float %1784, %1784
  %1788 = fmul fast float %1785, %1785
  %1789 = fsub fast float %1786, %1683
  %1790 = fsub fast float %1787, %1684
  %1791 = fsub fast float %1788, %1685
  %1792 = fmul fast float %1789, %1699
  %1793 = fmul fast float %1790, %1699
  %1794 = fmul fast float %1791, %1699
  %1795 = fadd fast float %1792, %1683
  %1796 = fadd fast float %1793, %1684
  %1797 = fadd fast float %1794, %1685
  br label %1851

; <label>:1798                                    ; preds = %1698
  %1799 = and i32 %1701, 134217728
  %1800 = icmp eq i32 %1799, 0
  br i1 %1800, label %1835, label %1801

; <label>:1801                                    ; preds = %1798
  %1802 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %1803 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %1804 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %1805 = fadd fast float %1802, -5.000000e-01
  %1806 = fadd fast float %1803, -5.000000e-01
  %1807 = fadd fast float %1804, -5.000000e-01
  %1808 = fmul fast float %1805, %1699
  %1809 = fmul fast float %1806, %1699
  %1810 = fmul fast float %1807, %1699
  %1811 = fadd fast float %1808, 5.000000e-01
  %1812 = fadd fast float %1809, 5.000000e-01
  %1813 = fadd fast float %1810, 5.000000e-01
  %1814 = call float @dx.op.unary.f32(i32 24, float %1683)  ; Sqrt(value)
  %1815 = call float @dx.op.unary.f32(i32 24, float %1684)  ; Sqrt(value)
  %1816 = call float @dx.op.unary.f32(i32 24, float %1685)  ; Sqrt(value)
  %1817 = fmul fast float %1811, 2.000000e+00
  %1818 = fsub fast float 1.000000e+00, %1817
  %1819 = fmul fast float %1818, %1814
  %1820 = fadd fast float %1819, %1817
  %1821 = fmul fast float %1820, %1814
  %1822 = fmul fast float %1812, 2.000000e+00
  %1823 = fsub fast float 1.000000e+00, %1822
  %1824 = fmul fast float %1823, %1815
  %1825 = fadd fast float %1824, %1822
  %1826 = fmul fast float %1825, %1815
  %1827 = fmul fast float %1813, 2.000000e+00
  %1828 = fsub fast float 1.000000e+00, %1827
  %1829 = fmul fast float %1828, %1816
  %1830 = fadd fast float %1829, %1827
  %1831 = fmul fast float %1830, %1816
  %1832 = fmul fast float %1821, %1821
  %1833 = fmul fast float %1826, %1826
  %1834 = fmul fast float %1831, %1831
  br label %1851

; <label>:1835                                    ; preds = %1798
  %1836 = fmul fast float %328, %328
  %1837 = fmul fast float %332, %332
  %1838 = fmul fast float %336, %336
  %1839 = fadd fast float %1836, -1.000000e+00
  %1840 = fadd fast float %1837, -1.000000e+00
  %1841 = fadd fast float %1838, -1.000000e+00
  %1842 = fmul fast float %1699, %1839
  %1843 = fmul fast float %1699, %1840
  %1844 = fmul fast float %1699, %1841
  %1845 = fadd fast float %1842, 1.000000e+00
  %1846 = fadd fast float %1843, 1.000000e+00
  %1847 = fadd fast float %1844, 1.000000e+00
  %1848 = fmul fast float %1845, %1683
  %1849 = fmul fast float %1846, %1684
  %1850 = fmul fast float %1847, %1685
  br label %1851

; <label>:1851                                    ; preds = %1835, %1801, %1704, %1671
  %1852 = phi float [ %1795, %1704 ], [ %1832, %1801 ], [ %1848, %1835 ], [ 1.000000e+00, %1671 ]
  %1853 = phi float [ %1796, %1704 ], [ %1833, %1801 ], [ %1849, %1835 ], [ 1.000000e+00, %1671 ]
  %1854 = phi float [ %1797, %1704 ], [ %1834, %1801 ], [ %1850, %1835 ], [ 1.000000e+00, %1671 ]
  %1855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.i32 %1855, 1
  %1857 = and i32 %1856, 1
  %1858 = icmp ne i32 %1857, 0
  %1859 = add i32 %55, 356
  %1860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.i32 %1860, 0
  %1862 = and i32 %1861, 32
  %1863 = icmp ne i32 %1862, 0
  %1864 = and i1 %1858, %1863
  %1865 = select i1 %1864, float 1.000000e+00, float %1852
  %1866 = select i1 %1864, float 0x3FD3333340000000, float %1853
  %1867 = select i1 %1864, float 0x3FD3333340000000, float %1854
  %1868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.i32 %1868, 0
  %1870 = and i32 %1869, 32
  %1871 = icmp eq i32 %1870, 0
  br i1 %1871, label %1944, label %1872

; <label>:1872                                    ; preds = %1851
  %1873 = add i32 %55, 124
  %1874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.i32 %1874, 0
  %1876 = add i32 %55, 400
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = add i32 %1878, 0
  %1880 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1879, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1881 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1880, %dx.types.Handle %101, float %1596, float %1597, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1882 = extractvalue %dx.types.ResRet.f32 %1881, 0
  %1883 = extractvalue %dx.types.ResRet.f32 %1881, 1
  %1884 = extractvalue %dx.types.ResRet.f32 %1881, 2
  %1885 = extractvalue %dx.types.ResRet.f32 %1881, 3
  %1886 = and i32 %1875, 255
  %1887 = uitofp i32 %1886 to float
  %1888 = lshr i32 %1875, 8
  %1889 = and i32 %1888, 255
  %1890 = uitofp i32 %1889 to float
  %1891 = lshr i32 %1875, 16
  %1892 = and i32 %1891, 255
  %1893 = uitofp i32 %1892 to float
  %1894 = fmul fast float %1893, 0x3F70101000000000
  %1895 = fmul fast float %1882, %1887
  %1896 = fadd fast float %1895, %1890
  %1897 = fmul fast float %1896, 0x3F70101000000000
  %1898 = fadd fast float %1883, -5.000000e-01
  %1899 = fadd fast float %1885, -5.000000e-01
  %1900 = fmul fast float %1898, %1894
  %1901 = fmul fast float %1899, %1894
  %1902 = fadd fast float %1900, 5.000000e-01
  %1903 = fadd fast float %1901, 5.000000e-01
  %1904 = fmul fast float %1902, 2.000000e+00
  %1905 = fadd fast float %1904, -1.000000e+00
  %1906 = fmul fast float %1903, 2.000000e+00
  %1907 = fadd fast float %1906, -1.000000e+00
  %1908 = fadd fast float %1905, %1907
  %1909 = fmul fast float %1908, 5.000000e-01
  %1910 = fsub fast float %1905, %1907
  %1911 = fmul fast float %1910, 5.000000e-01
  %1912 = call float @dx.op.unary.f32(i32 6, float %1909)  ; FAbs(value)
  %1913 = fsub fast float 1.000000e+00, %1912
  %1914 = call float @dx.op.unary.f32(i32 6, float %1911)  ; FAbs(value)
  %1915 = fsub fast float %1913, %1914
  %1916 = call float @dx.op.dot3.f32(i32 55, float %1909, float %1911, float %1915, float %1909, float %1911, float %1915)  ; Dot3(ax,ay,az,bx,by,bz)
  %1917 = call float @dx.op.unary.f32(i32 25, float %1916)  ; Rsqrt(value)
  %1918 = fmul fast float %1909, %1917
  %1919 = fmul fast float %1911, %1917
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = and i32 %1921, 67108864
  %1923 = icmp eq i32 %1922, 0
  br i1 %1923, label %1940, label %1924

; <label>:1924                                    ; preds = %1872
  %1925 = add i32 %55, 312
  %1926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1927 = extractvalue %dx.types.ResRet.i32 %1926, 0
  %1928 = and i32 %1927, 65535
  %1929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1928)  ; LegacyF16ToF32(value)
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = and i32 %1931, 65535
  %1933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1932)  ; LegacyF16ToF32(value)
  %1934 = lshr i32 %1927, 16
  %1935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1934)  ; LegacyF16ToF32(value)
  %1936 = fsub fast float %1897, %1935
  %1937 = fmul fast float %1936, %1929
  %1938 = fadd fast float %1937, %1933
  %1939 = call float @dx.op.unary.f32(i32 7, float %1938)  ; Saturate(value)
  br label %1940

; <label>:1940                                    ; preds = %1924, %1872
  %1941 = phi float [ %1939, %1924 ], [ %1897, %1872 ]
  %1942 = call float @dx.op.dot2.f32(i32 54, float %1918, float %1919, float %1500, float %1501)  ; Dot2(ax,ay,bx,by)
  %1943 = call float @dx.op.dot2.f32(i32 54, float %1918, float %1919, float %1502, float %1503)  ; Dot2(ax,ay,bx,by)
  br label %1944

; <label>:1944                                    ; preds = %1940, %1851
  %1945 = phi float [ %1941, %1940 ], [ 0x3FD6666660000000, %1851 ]
  %1946 = phi float [ %1942, %1940 ], [ 0.000000e+00, %1851 ]
  %1947 = phi float [ %1943, %1940 ], [ 0.000000e+00, %1851 ]
  %1948 = phi float [ %1884, %1940 ], [ 1.000000e+00, %1851 ]
  %1949 = add i32 %55, 128
  %1950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1949, i32 undef)  ; BufferLoad(srv,index,wot)
  %1951 = extractvalue %dx.types.ResRet.i32 %1950, 0
  %1952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.i32 %1952, 0
  %1954 = and i32 %1953, 3
  %1955 = icmp eq i32 %1954, 0
  br i1 %1955, label %1956, label %1973

; <label>:1956                                    ; preds = %1944
  %1957 = lshr i32 %1951, 8
  %1958 = and i32 %1957, 255
  %1959 = uitofp i32 %1958 to float
  %1960 = call float @dx.op.dot3.f32(i32 55, float %1865, float %1866, float %1867, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1961 = fmul fast float %1959, %1960
  %1962 = and i32 %1951, 255
  %1963 = uitofp i32 %1962 to float
  %1964 = fadd fast float %1961, %1963
  %1965 = fmul fast float %1964, 0x3F70101020000000
  %1966 = call float @dx.op.unary.f32(i32 7, float %1965)  ; Saturate(value)
  %1967 = and i32 %1953, 16
  %1968 = icmp ne i32 %1967, 0
  %1969 = select i1 %1968, float %1669, float 0.000000e+00
  %1970 = fsub fast float %1966, %1487
  %1971 = fmul fast float %1969, %1970
  %1972 = fadd fast float %1971, %1487
  br label %1973

; <label>:1973                                    ; preds = %1956, %1944
  %1974 = phi float [ %1487, %1944 ], [ %1972, %1956 ]
  %1975 = and i32 %1953, 12
  %1976 = icmp eq i32 %1975, 12
  br i1 %1976, label %2049, label %1977

; <label>:1977                                    ; preds = %1973
  %1978 = and i32 %1953, 2097184
  %1979 = icmp eq i32 %1978, 2097184
  %1980 = select i1 %1979, float %1669, float 0.000000e+00
  %1981 = and i32 %1953, 4194336
  %1982 = icmp eq i32 %1981, 4194336
  %1983 = select i1 %1982, float %1669, float 0.000000e+00
  %1984 = and i32 %1953, 8388640
  %1985 = icmp eq i32 %1984, 8388640
  %1986 = select i1 %1985, float %1669, float 0.000000e+00
  %1987 = icmp eq i32 %1975, 0
  br i1 %1987, label %1988, label %2001

; <label>:1988                                    ; preds = %1977
  %1989 = fsub fast float %1946, %1483
  %1990 = fsub fast float %1947, %1484
  %1991 = fmul fast float %1980, %1989
  %1992 = fmul fast float %1980, %1990
  %1993 = fadd fast float %1991, %1483
  %1994 = fadd fast float %1992, %1484
  %1995 = fsub fast float %1948, %1486
  %1996 = fmul fast float %1983, %1995
  %1997 = fadd fast float %1996, %1486
  %1998 = fsub fast float %1945, %1485
  %1999 = fmul fast float %1986, %1998
  %2000 = fadd fast float %1999, %1485
  br label %2049

; <label>:2001                                    ; preds = %1977
  %2002 = icmp eq i32 %1975, 4
  br i1 %2002, label %2003, label %2035

; <label>:2003                                    ; preds = %2001
  %2004 = fmul fast float %1980, %1946
  %2005 = fmul fast float %1980, %1947
  %2006 = fadd fast float %2004, %1483
  %2007 = fadd fast float %2005, %1484
  %2008 = call float @dx.op.binary.f32(i32 36, float %1486, float %1948)  ; FMin(a,b)
  %2009 = fsub fast float %2008, %1486
  %2010 = fmul fast float %2009, %1983
  %2011 = fadd fast float %2010, %1486
  %2012 = fadd fast float %1945, %1485
  %2013 = fmul fast float %2012, 0x3FF337FAE0000000
  %2014 = fmul fast float %1485, %1485
  %2015 = fmul fast float %1945, %1945
  %2016 = fadd fast float %2015, %2014
  %2017 = fmul fast float %2016, 0x3FE5152B00000000
  %2018 = fmul fast float %1485, 0xBFCC1F85E0000000
  %2019 = fmul fast float %2018, %1945
  %2020 = fadd fast float %2019, 0xBFE1363700000000
  %2021 = fadd fast float %2020, %2013
  %2022 = fsub fast float %2021, %2017
  %2023 = fmul fast float %2012, 0x3FBA6F0D00000000
  %2024 = fmul fast float %2016, 0x3FD0432880000000
  %2025 = fmul fast float %1485, 0xBFEF110800000000
  %2026 = fmul fast float %2025, %1945
  %2027 = fadd fast float %2026, 1.000000e+00
  %2028 = fsub fast float %2027, %2023
  %2029 = fadd fast float %2028, %2024
  %2030 = fdiv fast float %2022, %2029
  %2031 = call float @dx.op.unary.f32(i32 7, float %2030)  ; Saturate(value)
  %2032 = fsub fast float %2031, %1485
  %2033 = fmul fast float %2032, %1986
  %2034 = fadd fast float %2033, %1485
  br label %2049

; <label>:2035                                    ; preds = %2001
  %2036 = icmp eq i32 %1975, 8
  br i1 %2036, label %2037, label %2049

; <label>:2037                                    ; preds = %2035
  %2038 = fmul fast float %1980, %1946
  %2039 = fmul fast float %1980, %1947
  %2040 = fadd fast float %2038, %1483
  %2041 = fadd fast float %2039, %1484
  %2042 = call float @dx.op.binary.f32(i32 36, float %1486, float %1948)  ; FMin(a,b)
  %2043 = fsub fast float %2042, %1486
  %2044 = fmul fast float %2043, %1983
  %2045 = fadd fast float %2044, %1486
  %2046 = fsub fast float %1945, %1485
  %2047 = fmul fast float %1986, %2046
  %2048 = fadd fast float %2047, %1485
  br label %2049

; <label>:2049                                    ; preds = %2037, %2035, %2003, %1988, %1973, %1668, %1488, %1482
  %2050 = phi float [ %1483, %1973 ], [ %1483, %1668 ], [ %1483, %1482 ], [ %2040, %2037 ], [ %1483, %2035 ], [ %2006, %2003 ], [ %1993, %1988 ], [ %1483, %1488 ]
  %2051 = phi float [ %1484, %1973 ], [ %1484, %1668 ], [ %1484, %1482 ], [ %2041, %2037 ], [ %1484, %2035 ], [ %2007, %2003 ], [ %1994, %1988 ], [ %1484, %1488 ]
  %2052 = phi float [ %1485, %1973 ], [ %1485, %1668 ], [ %1485, %1482 ], [ %2048, %2037 ], [ %1485, %2035 ], [ %2034, %2003 ], [ %2000, %1988 ], [ %1485, %1488 ]
  %2053 = phi float [ %1486, %1973 ], [ %1486, %1668 ], [ %1486, %1482 ], [ %2045, %2037 ], [ %1486, %2035 ], [ %2011, %2003 ], [ %1997, %1988 ], [ %1486, %1488 ]
  %2054 = phi float [ %1974, %1973 ], [ %1487, %1668 ], [ %1487, %1482 ], [ %1974, %2037 ], [ %1974, %2035 ], [ %1974, %2003 ], [ %1974, %1988 ], [ %1487, %1488 ]
  br i1 %391, label %2616, label %2055

; <label>:2055                                    ; preds = %2049
  %2056 = add i32 %55, 72
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = add i32 %55, 76
  %2060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2059, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.i32 %2060, 0
  %2062 = or i32 %2061, %2058
  %2063 = icmp eq i32 %2062, 0
  br i1 %2063, label %2616, label %2064

; <label>:2064                                    ; preds = %2055
  %2065 = and i32 %2058, 262144
  %2066 = icmp ne i32 %2065, 0
  %2067 = select i1 %2066, float %60, float 1.000000e+00
  %2068 = select i1 %2066, float %61, float 0.000000e+00
  %2069 = select i1 %2066, float %62, float 0.000000e+00
  %2070 = select i1 %2066, float %63, float 1.000000e+00
  %2071 = select i1 %2066, float %64, float %87
  %2072 = select i1 %2066, float %65, float %88
  %2073 = add i32 %55, 332
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = lshr i32 %2075, 16
  %2077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2076)  ; LegacyF16ToF32(value)
  %2078 = fmul fast float %2077, 0x3F50624DE0000000
  %2079 = add i32 %55, 136
  %2080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.i32 %2080, 0
  %2082 = lshr i32 %2081, 16
  %2083 = and i32 %2082, 255
  %2084 = lshr i32 %2081, 24
  %2085 = add i32 %55, 340
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = and i32 %2087, 65535
  %2089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2088)  ; LegacyF16ToF32(value)
  %2090 = lshr i32 %2087, 16
  %2091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2090)  ; LegacyF16ToF32(value)
  %2092 = add i32 %55, 80
  %2093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2092, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.i32 %2093, 0
  %2095 = lshr i32 %2094, 22
  %2096 = shl nuw nsw i32 %2095, 5
  %2097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2096)  ; LegacyF16ToF32(value)
  %2098 = shl i32 %2094, 4
  %2099 = and i32 %2098, 32752
  %2100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2099)  ; LegacyF16ToF32(value)
  %2101 = lshr i32 %2094, 7
  %2102 = and i32 %2101, 32752
  %2103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2102)  ; LegacyF16ToF32(value)
  %2104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2105 = extractvalue %dx.types.CBufRet.f32 %2104, 3
  %2106 = fmul fast float %2105, 1.000000e+03
  %2107 = fmul fast float %381, %2106
  %2108 = call float @dx.op.unary.f32(i32 22, float %2107)  ; Frc(value)
  %2109 = fadd fast float %2108, %371
  %2110 = fmul fast float %382, %2106
  %2111 = call float @dx.op.unary.f32(i32 22, float %2110)  ; Frc(value)
  %2112 = fadd fast float %2111, %373
  %2113 = fmul fast float %2078, %2106
  %2114 = call float @dx.op.unary.f32(i32 22, float %2113)  ; Frc(value)
  %2115 = fmul fast float %2114, 0x401921FB60000000
  %2116 = fadd fast float %2115, %2097
  %2117 = call float @dx.op.unary.f32(i32 13, float %2116)  ; Sin(value)
  %2118 = call float @dx.op.unary.f32(i32 12, float %2116)  ; Cos(value)
  %2119 = fsub fast float -0.000000e+00, %2117
  %2120 = fadd fast float %2071, -5.000000e-01
  %2121 = fadd fast float %2072, -5.000000e-01
  %2122 = fmul fast float %2089, %2120
  %2123 = fmul fast float %2091, %2121
  %2124 = fadd fast float %2122, 5.000000e-01
  %2125 = fadd fast float %2123, 5.000000e-01
  %2126 = fmul fast float %2100, %2124
  %2127 = fmul fast float %2103, %2125
  %2128 = fmul fast float %2118, %2126
  %2129 = call float @dx.op.tertiary.f32(i32 46, float %2119, float %2127, float %2128)  ; FMad(a,b,c)
  %2130 = fmul fast float %2117, %2126
  %2131 = call float @dx.op.tertiary.f32(i32 46, float %2118, float %2127, float %2130)  ; FMad(a,b,c)
  %2132 = fadd fast float %2109, %2129
  %2133 = fadd fast float %2112, %2131
  %2134 = icmp ugt i32 %2083, 1
  %2135 = icmp ugt i32 %2081, 33554431
  %2136 = or i1 %2135, %2134
  br i1 %2136, label %2137, label %2162

; <label>:2137                                    ; preds = %2064
  %2138 = add i32 %55, 276
  %2139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2138, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.i32 %2139, 0
  %2141 = lshr i32 %2140, 16
  %2142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2141)  ; LegacyF16ToF32(value)
  %2143 = fmul fast float %2105, %2142
  %2144 = call float @dx.op.unary.f32(i32 22, float %2143)  ; Frc(value)
  %2145 = mul nuw nsw i32 %2083, %2084
  %2146 = uitofp i32 %2145 to float
  %2147 = fmul fast float %2144, %2146
  %2148 = call float @dx.op.unary.f32(i32 27, float %2147)  ; Round_ni(value)
  %2149 = fptoui float %2148 to i32
  %2150 = urem i32 %2149, %2083
  %2151 = udiv i32 %2149, %2084
  %2152 = call float @dx.op.unary.f32(i32 22, float %2132)  ; Frc(value)
  %2153 = call float @dx.op.unary.f32(i32 22, float %2133)  ; Frc(value)
  %2154 = uitofp i32 %2150 to float
  %2155 = uitofp i32 %2151 to float
  %2156 = fadd fast float %2152, %2154
  %2157 = fadd fast float %2153, %2155
  %2158 = uitofp i32 %2083 to float
  %2159 = uitofp i32 %2084 to float
  %2160 = fdiv fast float %2156, %2158
  %2161 = fdiv fast float %2157, %2159
  br label %2162

; <label>:2162                                    ; preds = %2137, %2064
  %2163 = phi float [ %2160, %2137 ], [ %2132, %2064 ]
  %2164 = phi float [ %2161, %2137 ], [ %2133, %2064 ]
  %2165 = and i32 %2058, 256
  %2166 = icmp eq i32 %2165, 0
  br i1 %2166, label %2213, label %2167

; <label>:2167                                    ; preds = %2162
  %2168 = add i32 %55, 452
  %2169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.i32 %2169, 0
  %2171 = add i32 %2170, 0
  %2172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2171, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2173 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2172, %dx.types.Handle %102, float %2163, float %2164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2174 = extractvalue %dx.types.ResRet.f32 %2173, 0
  %2175 = add i32 %55, 148
  %2176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2175, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.i32 %2176, 0
  %2178 = shl i32 %2177, 4
  %2179 = and i32 %2178, 32752
  %2180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2179)  ; LegacyF16ToF32(value)
  %2181 = lshr i32 %2177, 7
  %2182 = and i32 %2181, 32752
  %2183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2182)  ; LegacyF16ToF32(value)
  %2184 = fsub fast float 1.000000e+00, %440
  %2185 = call float @dx.op.binary.f32(i32 35, float %2184, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2186 = bitcast float %440 to i32
  %2187 = sitofp i32 %2186 to float
  %2188 = fadd fast float %2187, 0xC1CFBF8940000000
  %2189 = fmul fast float %2183, %2188
  %2190 = fadd fast float %2189, 0x41CFBF8940000000
  %2191 = fptosi float %2190 to i32
  %2192 = bitcast i32 %2191 to float
  %2193 = bitcast float %2185 to i32
  %2194 = sitofp i32 %2193 to float
  %2195 = fadd fast float %2194, 0xC1CFBF8940000000
  %2196 = fmul fast float %2195, %2183
  %2197 = fadd fast float %2196, 0x41CFBF8940000000
  %2198 = fptosi float %2197 to i32
  %2199 = bitcast i32 %2198 to float
  %2200 = fmul fast float %2192, %2180
  %2201 = fmul fast float %2199, %2180
  %2202 = fsub fast float %2185, %2200
  %2203 = fadd fast float %2201, %2185
  %2204 = call float @dx.op.unary.f32(i32 7, float %2202)  ; Saturate(value)
  %2205 = call float @dx.op.unary.f32(i32 7, float %2203)  ; Saturate(value)
  %2206 = fsub fast float %2174, %2204
  %2207 = fsub fast float %2205, %2204
  %2208 = bitcast float %2207 to i32
  %2209 = sub nsw i32 2129859010, %2208
  %2210 = bitcast i32 %2209 to float
  %2211 = fmul fast float %2210, %2206
  %2212 = call float @dx.op.unary.f32(i32 7, float %2211)  ; Saturate(value)
  br label %2213

; <label>:2213                                    ; preds = %2167, %2162
  %2214 = phi float [ %2212, %2167 ], [ %440, %2162 ]
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = and i32 %2216, 128
  %2218 = icmp eq i32 %2217, 0
  br i1 %2218, label %2235, label %2219

; <label>:2219                                    ; preds = %2213
  %2220 = add i32 %55, 436
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2220, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = add i32 %2222, 0
  %2224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2225 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2224, %dx.types.Handle %102, float %2163, float %2164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2226 = extractvalue %dx.types.ResRet.f32 %2225, 0
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = and i32 %2228, 524288
  %2230 = icmp ne i32 %2229, 0
  %2231 = fcmp fast ogt float %2226, 0x3FE0101020000000
  %2232 = select i1 %2231, float 1.000000e+00, float 0.000000e+00
  %2233 = select i1 %2230, float %2232, float %2226
  %2234 = fmul fast float %2233, %2214
  br label %2235

; <label>:2235                                    ; preds = %2219, %2213
  %2236 = phi float [ %2234, %2219 ], [ %2214, %2213 ]
  %2237 = fcmp fast ult float %2236, 0x3F70101020000000
  br i1 %2237, label %2616, label %2238

; <label>:2238                                    ; preds = %2235
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = and i32 %2240, 16
  %2242 = icmp eq i32 %2241, 0
  br i1 %2242, label %2418, label %2243

; <label>:2243                                    ; preds = %2238
  %2244 = add i32 %55, 388
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = add i32 %2246, 0
  %2248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2247, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2249 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2248, %dx.types.Handle %101, float %2163, float %2164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2250 = extractvalue %dx.types.ResRet.f32 %2249, 0
  %2251 = extractvalue %dx.types.ResRet.f32 %2249, 1
  %2252 = extractvalue %dx.types.ResRet.f32 %2249, 2
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = and i32 %2254, 512
  %2256 = icmp eq i32 %2255, 0
  br i1 %2256, label %2265, label %2257

; <label>:2257                                    ; preds = %2243
  %2258 = add i32 %55, 468
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = add i32 %2260, 0
  %2262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2262, %dx.types.Handle %102, float %2163, float %2164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2264 = extractvalue %dx.types.ResRet.f32 %2263, 0
  br label %2265

; <label>:2265                                    ; preds = %2257, %2243
  %2266 = phi float [ %2264, %2257 ], [ 1.000000e+00, %2243 ]
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = and i32 %2268, 33554432
  %2270 = icmp eq i32 %2269, 0
  br i1 %2270, label %2365, label %2271

; <label>:2271                                    ; preds = %2265
  %2272 = add i32 %55, 272
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = and i32 %2274, 65535
  %2276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2275)  ; LegacyF16ToF32(value)
  %2277 = lshr i32 %2274, 16
  %2278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2277)  ; LegacyF16ToF32(value)
  %2279 = add i32 %55, 276
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = and i32 %2281, 65535
  %2283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2282)  ; LegacyF16ToF32(value)
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = and i32 %2285, 255
  %2287 = uitofp i32 %2286 to float
  %2288 = fmul fast float %2287, 0x3F70101020000000
  %2289 = lshr i32 %2285, 8
  %2290 = and i32 %2289, 255
  %2291 = uitofp i32 %2290 to float
  %2292 = fmul fast float %2291, 0x3F70101020000000
  %2293 = lshr i32 %2285, 16
  %2294 = and i32 %2293, 255
  %2295 = uitofp i32 %2294 to float
  %2296 = fmul fast float %2295, 0x3F70101020000000
  %2297 = add i32 %55, 268
  %2298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2299 = extractvalue %dx.types.ResRet.i32 %2298, 0
  %2300 = and i32 %2299, 255
  %2301 = uitofp i32 %2300 to float
  %2302 = fmul fast float %2301, 0x3F70101020000000
  %2303 = lshr i32 %2299, 8
  %2304 = and i32 %2303, 255
  %2305 = uitofp i32 %2304 to float
  %2306 = fmul fast float %2305, 0x3F70101020000000
  %2307 = lshr i32 %2299, 16
  %2308 = and i32 %2307, 255
  %2309 = uitofp i32 %2308 to float
  %2310 = fmul fast float %2309, 0x3F70101020000000
  %2311 = bitcast float %2250 to i32
  %2312 = ashr i32 %2311, 1
  %2313 = sub nsw i32 1597463174, %2312
  %2314 = bitcast i32 %2313 to float
  %2315 = fmul fast float %2250, 5.000000e-01
  %2316 = fmul fast float %2314, %2314
  %2317 = fmul fast float %2316, %2315
  %2318 = fsub fast float 1.500000e+00, %2317
  %2319 = fmul fast float %2314, %2250
  %2320 = fmul fast float %2319, %2318
  %2321 = bitcast float %2251 to i32
  %2322 = ashr i32 %2321, 1
  %2323 = sub nsw i32 1597463174, %2322
  %2324 = bitcast i32 %2323 to float
  %2325 = fmul fast float %2251, 5.000000e-01
  %2326 = fmul fast float %2324, %2324
  %2327 = fmul fast float %2326, %2325
  %2328 = fsub fast float 1.500000e+00, %2327
  %2329 = fmul fast float %2324, %2251
  %2330 = fmul fast float %2329, %2328
  %2331 = bitcast float %2252 to i32
  %2332 = ashr i32 %2331, 1
  %2333 = sub nsw i32 1597463174, %2332
  %2334 = bitcast i32 %2333 to float
  %2335 = fmul fast float %2252, 5.000000e-01
  %2336 = fmul fast float %2334, %2334
  %2337 = fmul fast float %2336, %2335
  %2338 = fsub fast float 1.500000e+00, %2337
  %2339 = fmul fast float %2334, %2252
  %2340 = fmul fast float %2339, %2338
  %2341 = fsub fast float %2320, %2302
  %2342 = fsub fast float %2330, %2306
  %2343 = fsub fast float %2340, %2310
  %2344 = fmul fast float %2341, %2276
  %2345 = fmul fast float %2342, %2278
  %2346 = fmul fast float %2343, %2283
  %2347 = fadd fast float %2344, %2288
  %2348 = fadd fast float %2345, %2292
  %2349 = fadd fast float %2346, %2296
  %2350 = call float @dx.op.unary.f32(i32 7, float %2347)  ; Saturate(value)
  %2351 = call float @dx.op.unary.f32(i32 7, float %2348)  ; Saturate(value)
  %2352 = call float @dx.op.unary.f32(i32 7, float %2349)  ; Saturate(value)
  %2353 = fmul fast float %2350, %2350
  %2354 = fmul fast float %2351, %2351
  %2355 = fmul fast float %2352, %2352
  %2356 = fsub fast float %2353, %2250
  %2357 = fsub fast float %2354, %2251
  %2358 = fsub fast float %2355, %2252
  %2359 = fmul fast float %2356, %2266
  %2360 = fmul fast float %2357, %2266
  %2361 = fmul fast float %2358, %2266
  %2362 = fadd fast float %2359, %2250
  %2363 = fadd fast float %2360, %2251
  %2364 = fadd fast float %2361, %2252
  br label %2418

; <label>:2365                                    ; preds = %2265
  %2366 = and i32 %2268, 134217728
  %2367 = icmp eq i32 %2366, 0
  br i1 %2367, label %2402, label %2368

; <label>:2368                                    ; preds = %2365
  %2369 = call float @dx.op.unary.f32(i32 24, float %358)  ; Sqrt(value)
  %2370 = call float @dx.op.unary.f32(i32 24, float %362)  ; Sqrt(value)
  %2371 = call float @dx.op.unary.f32(i32 24, float %366)  ; Sqrt(value)
  %2372 = fadd fast float %2369, -5.000000e-01
  %2373 = fadd fast float %2370, -5.000000e-01
  %2374 = fadd fast float %2371, -5.000000e-01
  %2375 = fmul fast float %2372, %2266
  %2376 = fmul fast float %2373, %2266
  %2377 = fmul fast float %2374, %2266
  %2378 = fadd fast float %2375, 5.000000e-01
  %2379 = fadd fast float %2376, 5.000000e-01
  %2380 = fadd fast float %2377, 5.000000e-01
  %2381 = call float @dx.op.unary.f32(i32 24, float %2250)  ; Sqrt(value)
  %2382 = call float @dx.op.unary.f32(i32 24, float %2251)  ; Sqrt(value)
  %2383 = call float @dx.op.unary.f32(i32 24, float %2252)  ; Sqrt(value)
  %2384 = fmul fast float %2378, 2.000000e+00
  %2385 = fsub fast float 1.000000e+00, %2384
  %2386 = fmul fast float %2385, %2381
  %2387 = fadd fast float %2386, %2384
  %2388 = fmul fast float %2387, %2381
  %2389 = fmul fast float %2379, 2.000000e+00
  %2390 = fsub fast float 1.000000e+00, %2389
  %2391 = fmul fast float %2390, %2382
  %2392 = fadd fast float %2391, %2389
  %2393 = fmul fast float %2392, %2382
  %2394 = fmul fast float %2380, 2.000000e+00
  %2395 = fsub fast float 1.000000e+00, %2394
  %2396 = fmul fast float %2395, %2383
  %2397 = fadd fast float %2396, %2394
  %2398 = fmul fast float %2397, %2383
  %2399 = fmul fast float %2388, %2388
  %2400 = fmul fast float %2393, %2393
  %2401 = fmul fast float %2398, %2398
  br label %2418

; <label>:2402                                    ; preds = %2365
  %2403 = fmul fast float %358, %358
  %2404 = fmul fast float %362, %362
  %2405 = fmul fast float %366, %366
  %2406 = fadd fast float %2403, -1.000000e+00
  %2407 = fadd fast float %2404, -1.000000e+00
  %2408 = fadd fast float %2405, -1.000000e+00
  %2409 = fmul fast float %2266, %2406
  %2410 = fmul fast float %2266, %2407
  %2411 = fmul fast float %2266, %2408
  %2412 = fadd fast float %2409, 1.000000e+00
  %2413 = fadd fast float %2410, 1.000000e+00
  %2414 = fadd fast float %2411, 1.000000e+00
  %2415 = fmul fast float %2412, %2250
  %2416 = fmul fast float %2413, %2251
  %2417 = fmul fast float %2414, %2252
  br label %2418

; <label>:2418                                    ; preds = %2402, %2368, %2271, %2238
  %2419 = phi float [ %2362, %2271 ], [ %2399, %2368 ], [ %2415, %2402 ], [ 1.000000e+00, %2238 ]
  %2420 = phi float [ %2363, %2271 ], [ %2400, %2368 ], [ %2416, %2402 ], [ 1.000000e+00, %2238 ]
  %2421 = phi float [ %2364, %2271 ], [ %2401, %2368 ], [ %2417, %2402 ], [ 1.000000e+00, %2238 ]
  %2422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2423 = extractvalue %dx.types.CBufRet.i32 %2422, 1
  %2424 = and i32 %2423, 1
  %2425 = icmp ne i32 %2424, 0
  %2426 = add i32 %55, 356
  %2427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2426, i32 undef)  ; BufferLoad(srv,index,wot)
  %2428 = extractvalue %dx.types.ResRet.i32 %2427, 0
  %2429 = and i32 %2428, 32
  %2430 = icmp ne i32 %2429, 0
  %2431 = and i1 %2425, %2430
  %2432 = select i1 %2431, float 1.000000e+00, float %2419
  %2433 = select i1 %2431, float 0x3FD3333340000000, float %2420
  %2434 = select i1 %2431, float 0x3FD3333340000000, float %2421
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = and i32 %2436, 32
  %2438 = icmp eq i32 %2437, 0
  br i1 %2438, label %2511, label %2439

; <label>:2439                                    ; preds = %2418
  %2440 = add i32 %55, 140
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = add i32 %55, 404
  %2444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2443, i32 undef)  ; BufferLoad(srv,index,wot)
  %2445 = extractvalue %dx.types.ResRet.i32 %2444, 0
  %2446 = add i32 %2445, 0
  %2447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2446, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2448 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2447, %dx.types.Handle %101, float %2163, float %2164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2449 = extractvalue %dx.types.ResRet.f32 %2448, 0
  %2450 = extractvalue %dx.types.ResRet.f32 %2448, 1
  %2451 = extractvalue %dx.types.ResRet.f32 %2448, 2
  %2452 = extractvalue %dx.types.ResRet.f32 %2448, 3
  %2453 = and i32 %2442, 255
  %2454 = uitofp i32 %2453 to float
  %2455 = lshr i32 %2442, 8
  %2456 = and i32 %2455, 255
  %2457 = uitofp i32 %2456 to float
  %2458 = lshr i32 %2442, 16
  %2459 = and i32 %2458, 255
  %2460 = uitofp i32 %2459 to float
  %2461 = fmul fast float %2460, 0x3F70101000000000
  %2462 = fmul fast float %2449, %2454
  %2463 = fadd fast float %2462, %2457
  %2464 = fmul fast float %2463, 0x3F70101000000000
  %2465 = fadd fast float %2450, -5.000000e-01
  %2466 = fadd fast float %2452, -5.000000e-01
  %2467 = fmul fast float %2465, %2461
  %2468 = fmul fast float %2466, %2461
  %2469 = fadd fast float %2467, 5.000000e-01
  %2470 = fadd fast float %2468, 5.000000e-01
  %2471 = fmul fast float %2469, 2.000000e+00
  %2472 = fadd fast float %2471, -1.000000e+00
  %2473 = fmul fast float %2470, 2.000000e+00
  %2474 = fadd fast float %2473, -1.000000e+00
  %2475 = fadd fast float %2472, %2474
  %2476 = fmul fast float %2475, 5.000000e-01
  %2477 = fsub fast float %2472, %2474
  %2478 = fmul fast float %2477, 5.000000e-01
  %2479 = call float @dx.op.unary.f32(i32 6, float %2476)  ; FAbs(value)
  %2480 = fsub fast float 1.000000e+00, %2479
  %2481 = call float @dx.op.unary.f32(i32 6, float %2478)  ; FAbs(value)
  %2482 = fsub fast float %2480, %2481
  %2483 = call float @dx.op.dot3.f32(i32 55, float %2476, float %2478, float %2482, float %2476, float %2478, float %2482)  ; Dot3(ax,ay,az,bx,by,bz)
  %2484 = call float @dx.op.unary.f32(i32 25, float %2483)  ; Rsqrt(value)
  %2485 = fmul fast float %2476, %2484
  %2486 = fmul fast float %2478, %2484
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = and i32 %2488, 67108864
  %2490 = icmp eq i32 %2489, 0
  br i1 %2490, label %2507, label %2491

; <label>:2491                                    ; preds = %2439
  %2492 = add i32 %55, 328
  %2493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2492, i32 undef)  ; BufferLoad(srv,index,wot)
  %2494 = extractvalue %dx.types.ResRet.i32 %2493, 0
  %2495 = and i32 %2494, 65535
  %2496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2495)  ; LegacyF16ToF32(value)
  %2497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2498 = extractvalue %dx.types.ResRet.i32 %2497, 0
  %2499 = and i32 %2498, 65535
  %2500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2499)  ; LegacyF16ToF32(value)
  %2501 = lshr i32 %2494, 16
  %2502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2501)  ; LegacyF16ToF32(value)
  %2503 = fsub fast float %2464, %2502
  %2504 = fmul fast float %2503, %2496
  %2505 = fadd fast float %2504, %2500
  %2506 = call float @dx.op.unary.f32(i32 7, float %2505)  ; Saturate(value)
  br label %2507

; <label>:2507                                    ; preds = %2491, %2439
  %2508 = phi float [ %2506, %2491 ], [ %2464, %2439 ]
  %2509 = call float @dx.op.dot2.f32(i32 54, float %2485, float %2486, float %2067, float %2068)  ; Dot2(ax,ay,bx,by)
  %2510 = call float @dx.op.dot2.f32(i32 54, float %2485, float %2486, float %2069, float %2070)  ; Dot2(ax,ay,bx,by)
  br label %2511

; <label>:2511                                    ; preds = %2507, %2418
  %2512 = phi float [ %2508, %2507 ], [ 0x3FD6666660000000, %2418 ]
  %2513 = phi float [ %2509, %2507 ], [ 0.000000e+00, %2418 ]
  %2514 = phi float [ %2510, %2507 ], [ 0.000000e+00, %2418 ]
  %2515 = phi float [ %2451, %2507 ], [ 1.000000e+00, %2418 ]
  %2516 = add i32 %55, 144
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2516, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = and i32 %2520, 3
  %2522 = icmp eq i32 %2521, 0
  br i1 %2522, label %2523, label %2540

; <label>:2523                                    ; preds = %2511
  %2524 = lshr i32 %2518, 8
  %2525 = and i32 %2524, 255
  %2526 = uitofp i32 %2525 to float
  %2527 = call float @dx.op.dot3.f32(i32 55, float %2432, float %2433, float %2434, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2528 = fmul fast float %2526, %2527
  %2529 = and i32 %2518, 255
  %2530 = uitofp i32 %2529 to float
  %2531 = fadd fast float %2528, %2530
  %2532 = fmul fast float %2531, 0x3F70101020000000
  %2533 = call float @dx.op.unary.f32(i32 7, float %2532)  ; Saturate(value)
  %2534 = and i32 %2520, 16
  %2535 = icmp ne i32 %2534, 0
  %2536 = select i1 %2535, float %2236, float 0.000000e+00
  %2537 = fsub fast float %2533, %2054
  %2538 = fmul fast float %2536, %2537
  %2539 = fadd fast float %2538, %2054
  br label %2540

; <label>:2540                                    ; preds = %2523, %2511
  %2541 = phi float [ %2054, %2511 ], [ %2539, %2523 ]
  %2542 = and i32 %2520, 12
  %2543 = icmp eq i32 %2542, 12
  br i1 %2543, label %2616, label %2544

; <label>:2544                                    ; preds = %2540
  %2545 = and i32 %2520, 2097184
  %2546 = icmp eq i32 %2545, 2097184
  %2547 = select i1 %2546, float %2236, float 0.000000e+00
  %2548 = and i32 %2520, 4194336
  %2549 = icmp eq i32 %2548, 4194336
  %2550 = select i1 %2549, float %2236, float 0.000000e+00
  %2551 = and i32 %2520, 8388640
  %2552 = icmp eq i32 %2551, 8388640
  %2553 = select i1 %2552, float %2236, float 0.000000e+00
  %2554 = icmp eq i32 %2542, 0
  br i1 %2554, label %2555, label %2568

; <label>:2555                                    ; preds = %2544
  %2556 = fsub fast float %2513, %2050
  %2557 = fsub fast float %2514, %2051
  %2558 = fmul fast float %2547, %2556
  %2559 = fmul fast float %2547, %2557
  %2560 = fadd fast float %2558, %2050
  %2561 = fadd fast float %2559, %2051
  %2562 = fsub fast float %2515, %2053
  %2563 = fmul fast float %2550, %2562
  %2564 = fadd fast float %2563, %2053
  %2565 = fsub fast float %2512, %2052
  %2566 = fmul fast float %2553, %2565
  %2567 = fadd fast float %2566, %2052
  br label %2616

; <label>:2568                                    ; preds = %2544
  %2569 = icmp eq i32 %2542, 4
  br i1 %2569, label %2570, label %2602

; <label>:2570                                    ; preds = %2568
  %2571 = fmul fast float %2547, %2513
  %2572 = fmul fast float %2547, %2514
  %2573 = fadd fast float %2571, %2050
  %2574 = fadd fast float %2572, %2051
  %2575 = call float @dx.op.binary.f32(i32 36, float %2053, float %2515)  ; FMin(a,b)
  %2576 = fsub fast float %2575, %2053
  %2577 = fmul fast float %2576, %2550
  %2578 = fadd fast float %2577, %2053
  %2579 = fadd fast float %2512, %2052
  %2580 = fmul fast float %2579, 0x3FF337FAE0000000
  %2581 = fmul fast float %2052, %2052
  %2582 = fmul fast float %2512, %2512
  %2583 = fadd fast float %2582, %2581
  %2584 = fmul fast float %2583, 0x3FE5152B00000000
  %2585 = fmul fast float %2052, 0xBFCC1F85E0000000
  %2586 = fmul fast float %2585, %2512
  %2587 = fadd fast float %2586, 0xBFE1363700000000
  %2588 = fadd fast float %2587, %2580
  %2589 = fsub fast float %2588, %2584
  %2590 = fmul fast float %2579, 0x3FBA6F0D00000000
  %2591 = fmul fast float %2583, 0x3FD0432880000000
  %2592 = fmul fast float %2052, 0xBFEF110800000000
  %2593 = fmul fast float %2592, %2512
  %2594 = fadd fast float %2593, 1.000000e+00
  %2595 = fsub fast float %2594, %2590
  %2596 = fadd fast float %2595, %2591
  %2597 = fdiv fast float %2589, %2596
  %2598 = call float @dx.op.unary.f32(i32 7, float %2597)  ; Saturate(value)
  %2599 = fsub fast float %2598, %2052
  %2600 = fmul fast float %2599, %2553
  %2601 = fadd fast float %2600, %2052
  br label %2616

; <label>:2602                                    ; preds = %2568
  %2603 = icmp eq i32 %2542, 8
  br i1 %2603, label %2604, label %2616

; <label>:2604                                    ; preds = %2602
  %2605 = fmul fast float %2547, %2513
  %2606 = fmul fast float %2547, %2514
  %2607 = fadd fast float %2605, %2050
  %2608 = fadd fast float %2606, %2051
  %2609 = call float @dx.op.binary.f32(i32 36, float %2053, float %2515)  ; FMin(a,b)
  %2610 = fsub fast float %2609, %2053
  %2611 = fmul fast float %2610, %2550
  %2612 = fadd fast float %2611, %2053
  %2613 = fsub fast float %2512, %2052
  %2614 = fmul fast float %2553, %2613
  %2615 = fadd fast float %2614, %2052
  br label %2616

; <label>:2616                                    ; preds = %2604, %2602, %2570, %2555, %2540, %2235, %2055, %2049
  %2617 = phi float [ %2050, %2540 ], [ %2050, %2235 ], [ %2050, %2049 ], [ %2050, %2055 ], [ %2560, %2555 ], [ %2573, %2570 ], [ %2050, %2602 ], [ %2607, %2604 ]
  %2618 = phi float [ %2051, %2540 ], [ %2051, %2235 ], [ %2051, %2049 ], [ %2051, %2055 ], [ %2561, %2555 ], [ %2574, %2570 ], [ %2051, %2602 ], [ %2608, %2604 ]
  %2619 = phi float [ %2052, %2540 ], [ %2052, %2235 ], [ %2052, %2049 ], [ %2052, %2055 ], [ %2567, %2555 ], [ %2601, %2570 ], [ %2052, %2602 ], [ %2615, %2604 ]
  %2620 = phi float [ %2053, %2540 ], [ %2053, %2235 ], [ %2053, %2049 ], [ %2053, %2055 ], [ %2564, %2555 ], [ %2578, %2570 ], [ %2053, %2602 ], [ %2612, %2604 ]
  %2621 = phi float [ %2541, %2540 ], [ %2054, %2235 ], [ %2054, %2049 ], [ %2054, %2055 ], [ %2541, %2555 ], [ %2541, %2570 ], [ %2541, %2602 ], [ %2541, %2604 ]
  %2622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2623 = extractvalue %dx.types.CBufRet.f32 %2622, 0
  %2624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %2625 = extractvalue %dx.types.CBufRet.f32 %2624, 2
  %2626 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2627 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %1, %dx.types.Handle %2626, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float %2625, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %2628 = extractvalue %dx.types.ResRet.f32 %2627, 0
  %2629 = extractvalue %dx.types.ResRet.f32 %2627, 1
  %2630 = extractvalue %dx.types.ResRet.f32 %2627, 2
  %2631 = extractvalue %dx.types.ResRet.f32 %2627, 3
  %2632 = add i32 %55, 360
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2632, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = extractvalue %dx.types.ResRet.i32 %2633, 1
  %2636 = extractvalue %dx.types.ResRet.i32 %2633, 2
  %2637 = bitcast i32 %2634 to float
  %2638 = bitcast i32 %2635 to float
  %2639 = bitcast i32 %2636 to float
  %2640 = fmul fast float %2637, %2628
  %2641 = fmul fast float %2638, %2629
  %2642 = fmul fast float %2639, %2630
  %2643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2644 = extractvalue %dx.types.CBufRet.f32 %2643, 0
  %2645 = fmul fast float %2640, %2644
  %2646 = fmul fast float %2641, %2644
  %2647 = fmul fast float %2642, %2644
  %2648 = call float @dx.op.dot2.f32(i32 54, float %2617, float %2618, float %2617, float %2618)  ; Dot2(ax,ay,bx,by)
  %2649 = fmul fast float %2648, 0x3FE3333340000000
  %2650 = fsub fast float 1.000000e+00, %2649
  %2651 = call float @dx.op.dot3.f32(i32 55, float %2617, float %2618, float %2650, float %2617, float %2618, float %2650)  ; Dot3(ax,ay,az,bx,by,bz)
  %2652 = call float @dx.op.unary.f32(i32 25, float %2651)  ; Rsqrt(value)
  %2653 = fmul fast float %2652, %2617
  %2654 = fmul fast float %2652, %2618
  %2655 = fmul fast float %2650, %2652
  %2656 = fmul fast float %2655, %112
  %2657 = fmul fast float %2655, %113
  %2658 = fmul fast float %2655, %114
  %2659 = fmul fast float %2653, %80
  %2660 = fmul fast float %2653, %81
  %2661 = fmul fast float %2653, %82
  %2662 = fadd fast float %2656, %2659
  %2663 = fadd fast float %2657, %2660
  %2664 = fadd fast float %2658, %2661
  %2665 = fmul fast float %124, %2654
  %2666 = fmul fast float %125, %2654
  %2667 = fmul fast float %126, %2654
  %2668 = fadd fast float %2662, %2665
  %2669 = fadd fast float %2663, %2666
  %2670 = fadd fast float %2664, %2667
  %2671 = call float @dx.op.dot3.f32(i32 55, float %2668, float %2669, float %2670, float %2668, float %2669, float %2670)  ; Dot3(ax,ay,az,bx,by,bz)
  %2672 = call float @dx.op.unary.f32(i32 25, float %2671)  ; Rsqrt(value)
  %2673 = fmul fast float %2668, %2672
  %2674 = fmul fast float %2669, %2672
  %2675 = fmul fast float %2670, %2672
  %2676 = icmp eq i32 %56, 65535
  br i1 %2676, label %3195, label %2677

; <label>:2677                                    ; preds = %2616
  %2678 = call float @dx.op.unary.f32(i32 83, float %57)  ; DerivCoarseX(value)
  %2679 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %2680 = call float @dx.op.unary.f32(i32 83, float %59)  ; DerivCoarseX(value)
  %2681 = call float @dx.op.unary.f32(i32 84, float %57)  ; DerivCoarseY(value)
  %2682 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %2683 = call float @dx.op.unary.f32(i32 84, float %59)  ; DerivCoarseY(value)
  %2684 = fadd fast float %2678, %57
  %2685 = fadd fast float %2679, %58
  %2686 = fadd fast float %2680, %59
  %2687 = fadd fast float %2681, %57
  %2688 = fadd fast float %2682, %58
  %2689 = fadd fast float %2683, %59
  %2690 = mul i32 %56, 48
  %2691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2690, i32 undef)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.f32 %2691, 0
  %2693 = extractvalue %dx.types.ResRet.f32 %2691, 1
  %2694 = extractvalue %dx.types.ResRet.f32 %2691, 2
  %2695 = add i32 %2690, 16
  %2696 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2695, i32 undef)  ; BufferLoad(srv,index,wot)
  %2697 = extractvalue %dx.types.ResRet.f32 %2696, 0
  %2698 = extractvalue %dx.types.ResRet.f32 %2696, 1
  %2699 = extractvalue %dx.types.ResRet.f32 %2696, 2
  %2700 = add i32 %2690, 32
  %2701 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2700, i32 undef)  ; BufferLoad(srv,index,wot)
  %2702 = extractvalue %dx.types.ResRet.f32 %2701, 0
  %2703 = extractvalue %dx.types.ResRet.f32 %2701, 1
  %2704 = extractvalue %dx.types.ResRet.f32 %2701, 2
  %2705 = extractvalue %dx.types.ResRet.f32 %2701, 3
  %2706 = bitcast float %2705 to i32
  %2707 = fmul fast float %2692, %57
  %2708 = fmul fast float %2693, %58
  %2709 = fmul fast float %2694, %59
  %2710 = fsub fast float %2707, %2697
  %2711 = fsub fast float %2708, %2698
  %2712 = fsub fast float %2709, %2699
  %2713 = call float @dx.op.unary.f32(i32 7, float %2710)  ; Saturate(value)
  %2714 = call float @dx.op.unary.f32(i32 7, float %2711)  ; Saturate(value)
  %2715 = call float @dx.op.unary.f32(i32 7, float %2712)  ; Saturate(value)
  %2716 = fmul fast float %2713, %2702
  %2717 = fmul fast float %2714, %2703
  %2718 = fmul fast float %2715, %2704
  %2719 = fadd fast float %2702, -1.000000e+00
  %2720 = fadd fast float %2703, -1.000000e+00
  %2721 = fadd fast float %2704, -1.000000e+00
  %2722 = call float @dx.op.unary.f32(i32 27, float %2716)  ; Round_ni(value)
  %2723 = call float @dx.op.unary.f32(i32 27, float %2717)  ; Round_ni(value)
  %2724 = call float @dx.op.unary.f32(i32 27, float %2718)  ; Round_ni(value)
  %2725 = call float @dx.op.binary.f32(i32 36, float %2722, float %2719)  ; FMin(a,b)
  %2726 = call float @dx.op.binary.f32(i32 36, float %2723, float %2720)  ; FMin(a,b)
  %2727 = call float @dx.op.binary.f32(i32 36, float %2724, float %2721)  ; FMin(a,b)
  %2728 = fmul fast float %2727, %2703
  %2729 = fadd fast float %2728, %2726
  %2730 = fmul fast float %2729, %2702
  %2731 = fadd fast float %2730, %2725
  %2732 = fptosi float %2731 to i32
  %2733 = add nsw i32 %2732, %2706
  %2734 = shl nsw i32 %2733, 2
  %2735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2734, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.i32 %2735, 0
  %2737 = lshr i32 %2736, 16
  %2738 = icmp eq i32 %2737, 0
  br i1 %2738, label %3163, label %2739

; <label>:2739                                    ; preds = %2677
  br label %2740

; <label>:2740                                    ; preds = %2862, %2739
  %2741 = phi i32 [ %2764, %2862 ], [ %2737, %2739 ]
  %2742 = phi float [ %2863, %2862 ], [ 0.000000e+00, %2739 ]
  %2743 = phi float [ %2864, %2862 ], [ %917, %2739 ]
  %2744 = phi float [ %2865, %2862 ], [ %2623, %2739 ]
  %2745 = phi float [ %2866, %2862 ], [ %2621, %2739 ]
  %2746 = phi float [ %2867, %2862 ], [ 0.000000e+00, %2739 ]
  %2747 = phi float [ %2868, %2862 ], [ 0.000000e+00, %2739 ]
  %2748 = phi float [ %2869, %2862 ], [ %2645, %2739 ]
  %2749 = phi float [ %2870, %2862 ], [ %2646, %2739 ]
  %2750 = phi float [ %2871, %2862 ], [ %2647, %2739 ]
  %2751 = phi float [ %2872, %2862 ], [ %2673, %2739 ]
  %2752 = phi float [ %2873, %2862 ], [ %2674, %2739 ]
  %2753 = phi float [ %2874, %2862 ], [ %2675, %2739 ]
  %2754 = phi float [ %2875, %2862 ], [ %2620, %2739 ]
  %2755 = phi float [ %2876, %2862 ], [ %2619, %2739 ]
  %2756 = phi float [ %2877, %2862 ], [ 0.000000e+00, %2739 ]
  %2757 = phi float [ %2878, %2862 ], [ 0x3FA23C0BE0000000, %2739 ]
  %2758 = phi float [ %2879, %2862 ], [ %2628, %2739 ]
  %2759 = phi float [ %2880, %2862 ], [ %2629, %2739 ]
  %2760 = phi float [ %2881, %2862 ], [ %2630, %2739 ]
  %2761 = shl nuw nsw i32 %2741, 2
  %2762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.i32 %2762, 0
  %2764 = lshr i32 %2763, 16
  %2765 = shl i32 %2763, 8
  %2766 = and i32 %2765, 16776960
  %2767 = or i32 %2766, 48
  %2768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2767, i32 undef)  ; BufferLoad(srv,index,wot)
  %2769 = extractvalue %dx.types.ResRet.f32 %2768, 0
  %2770 = extractvalue %dx.types.ResRet.f32 %2768, 1
  %2771 = extractvalue %dx.types.ResRet.f32 %2768, 2
  %2772 = or i32 %2766, 64
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = extractvalue %dx.types.ResRet.i32 %2773, 1
  %2776 = or i32 %2766, 80
  %2777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2776, i32 undef)  ; BufferLoad(srv,index,wot)
  %2778 = extractvalue %dx.types.ResRet.f32 %2777, 2
  %2779 = extractvalue %dx.types.ResRet.f32 %2777, 3
  %2780 = or i32 %2766, 96
  %2781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2782 = extractvalue %dx.types.ResRet.f32 %2781, 0
  %2783 = extractvalue %dx.types.ResRet.f32 %2781, 1
  %2784 = extractvalue %dx.types.ResRet.f32 %2781, 2
  %2785 = extractvalue %dx.types.ResRet.f32 %2781, 3
  %2786 = or i32 %2766, 112
  %2787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2786, i32 undef)  ; BufferLoad(srv,index,wot)
  %2788 = extractvalue %dx.types.ResRet.f32 %2787, 2
  %2789 = or i32 %2766, 128
  %2790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2789, i32 undef)  ; BufferLoad(srv,index,wot)
  %2791 = extractvalue %dx.types.ResRet.f32 %2790, 0
  %2792 = extractvalue %dx.types.ResRet.f32 %2790, 1
  %2793 = extractvalue %dx.types.ResRet.f32 %2790, 2
  %2794 = extractvalue %dx.types.ResRet.f32 %2790, 3
  %2795 = or i32 %2766, 144
  %2796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2797 = extractvalue %dx.types.ResRet.f32 %2796, 0
  %2798 = extractvalue %dx.types.ResRet.f32 %2796, 1
  %2799 = extractvalue %dx.types.ResRet.f32 %2796, 2
  %2800 = extractvalue %dx.types.ResRet.f32 %2796, 3
  %2801 = or i32 %2766, 160
  %2802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.f32 %2802, 0
  %2804 = extractvalue %dx.types.ResRet.f32 %2802, 1
  %2805 = extractvalue %dx.types.ResRet.f32 %2802, 2
  %2806 = extractvalue %dx.types.ResRet.f32 %2802, 3
  %2807 = or i32 %2766, 192
  %2808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2809 = extractvalue %dx.types.ResRet.i32 %2808, 0
  %2810 = or i32 %2766, 208
  %2811 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2812 = extractvalue %dx.types.ResRet.f32 %2811, 0
  %2813 = or i32 %2766, 248
  %2814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.f32 %2814, 0
  %2816 = extractvalue %dx.types.ResRet.f32 %2814, 1
  %2817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.f32 %2817, 0
  %2819 = extractvalue %dx.types.ResRet.f32 %2817, 1
  %2820 = extractvalue %dx.types.ResRet.f32 %2817, 2
  %2821 = extractvalue %dx.types.ResRet.f32 %2817, 3
  %2822 = call float @dx.op.dot4.f32(i32 56, float %2818, float %2819, float %2820, float %2821, float %57, float %58, float %59, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2823 = or i32 %2766, 16
  %2824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2825 = extractvalue %dx.types.ResRet.f32 %2824, 0
  %2826 = extractvalue %dx.types.ResRet.f32 %2824, 1
  %2827 = extractvalue %dx.types.ResRet.f32 %2824, 2
  %2828 = extractvalue %dx.types.ResRet.f32 %2824, 3
  %2829 = call float @dx.op.dot4.f32(i32 56, float %2825, float %2826, float %2827, float %2828, float %57, float %58, float %59, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2830 = or i32 %2766, 32
  %2831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.f32 %2831, 0
  %2833 = extractvalue %dx.types.ResRet.f32 %2831, 1
  %2834 = extractvalue %dx.types.ResRet.f32 %2831, 2
  %2835 = extractvalue %dx.types.ResRet.f32 %2831, 3
  %2836 = call float @dx.op.dot4.f32(i32 56, float %2832, float %2833, float %2834, float %2835, float %57, float %58, float %59, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2837 = call float @dx.op.unary.f32(i32 27, float %2822)  ; Round_ni(value)
  %2838 = call float @dx.op.unary.f32(i32 6, float %2837)  ; FAbs(value)
  %2839 = call float @dx.op.unary.f32(i32 27, float %2829)  ; Round_ni(value)
  %2840 = call float @dx.op.unary.f32(i32 6, float %2839)  ; FAbs(value)
  %2841 = call float @dx.op.unary.f32(i32 6, float %2836)  ; FAbs(value)
  %2842 = call float @dx.op.unary.f32(i32 27, float %2841)  ; Round_ni(value)
  %2843 = fadd fast float %2840, %2838
  %2844 = fadd fast float %2843, %2842
  %2845 = fcmp fast oeq float %2844, 0.000000e+00
  %2846 = call float @dx.op.dot4.f32(i32 56, float %2818, float %2819, float %2820, float %2821, float %2684, float %2685, float %2686, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2847 = call float @dx.op.dot4.f32(i32 56, float %2825, float %2826, float %2827, float %2828, float %2684, float %2685, float %2686, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2848 = call float @dx.op.dot4.f32(i32 56, float %2818, float %2819, float %2820, float %2821, float %2687, float %2688, float %2689, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2849 = call float @dx.op.dot4.f32(i32 56, float %2825, float %2826, float %2827, float %2828, float %2687, float %2688, float %2689, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2850 = fsub fast float %2846, %2822
  %2851 = fsub fast float %2848, %2822
  %2852 = fsub fast float %2847, %2829
  %2853 = fsub fast float %2849, %2829
  %2854 = call float @dx.op.dot3.f32(i32 55, float %2769, float %2770, float %2771, float %112, float %113, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %2855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2856 = extractvalue %dx.types.CBufRet.f32 %2855, 2
  %2857 = fadd fast float %2856, %2854
  %2858 = call float @dx.op.unary.f32(i32 7, float %2857)  ; Saturate(value)
  %2859 = extractvalue %dx.types.CBufRet.f32 %2855, 0
  %2860 = fcmp fast ogt float %2858, %2859
  %2861 = and i1 %2845, %2860
  br i1 %2861, label %2883, label %2862

; <label>:2862                                    ; preds = %3149, %2966, %2883, %2740
  %2863 = phi float [ %2742, %2883 ], [ %2969, %2966 ], [ %2969, %3149 ], [ %2742, %2740 ]
  %2864 = phi float [ %2743, %2883 ], [ %2743, %2966 ], [ %3124, %3149 ], [ %2743, %2740 ]
  %2865 = phi float [ %2744, %2883 ], [ %2744, %2966 ], [ %3123, %3149 ], [ %2744, %2740 ]
  %2866 = phi float [ %2745, %2883 ], [ %2745, %2966 ], [ %3121, %3149 ], [ %2745, %2740 ]
  %2867 = phi float [ %2746, %2883 ], [ %2746, %2966 ], [ %3093, %3149 ], [ %2746, %2740 ]
  %2868 = phi float [ %2747, %2883 ], [ %2747, %2966 ], [ %3091, %3149 ], [ %2747, %2740 ]
  %2869 = phi float [ %2748, %2883 ], [ %2748, %2966 ], [ %3159, %3149 ], [ %2748, %2740 ]
  %2870 = phi float [ %2749, %2883 ], [ %2749, %2966 ], [ %3160, %3149 ], [ %2749, %2740 ]
  %2871 = phi float [ %2750, %2883 ], [ %2750, %2966 ], [ %3161, %3149 ], [ %2750, %2740 ]
  %2872 = phi float [ %2751, %2883 ], [ %2751, %2966 ], [ %3072, %3149 ], [ %2751, %2740 ]
  %2873 = phi float [ %2752, %2883 ], [ %2752, %2966 ], [ %3073, %3149 ], [ %2752, %2740 ]
  %2874 = phi float [ %2753, %2883 ], [ %2753, %2966 ], [ %3074, %3149 ], [ %2753, %2740 ]
  %2875 = phi float [ %2754, %2883 ], [ %2754, %2966 ], [ %3101, %3149 ], [ %2754, %2740 ]
  %2876 = phi float [ %2755, %2883 ], [ %2755, %2966 ], [ %3098, %3149 ], [ %2755, %2740 ]
  %2877 = phi float [ %2756, %2883 ], [ %2756, %2966 ], [ %3095, %3149 ], [ %2756, %2740 ]
  %2878 = phi float [ %2757, %2883 ], [ %2757, %2966 ], [ %3089, %3149 ], [ %2757, %2740 ]
  %2879 = phi float [ %2758, %2883 ], [ %2758, %2966 ], [ %3084, %3149 ], [ %2758, %2740 ]
  %2880 = phi float [ %2759, %2883 ], [ %2759, %2966 ], [ %3085, %3149 ], [ %2759, %2740 ]
  %2881 = phi float [ %2760, %2883 ], [ %2760, %2966 ], [ %3086, %3149 ], [ %2760, %2740 ]
  %2882 = icmp eq i32 %2764, 0
  br i1 %2882, label %3162, label %2740

; <label>:2883                                    ; preds = %2740
  %2884 = extractvalue %dx.types.ResRet.f32 %2768, 3
  %2885 = extractvalue %dx.types.ResRet.f32 %2787, 3
  %2886 = extractvalue %dx.types.ResRet.f32 %2787, 1
  %2887 = extractvalue %dx.types.ResRet.f32 %2787, 0
  %2888 = extractvalue %dx.types.ResRet.f32 %2777, 1
  %2889 = extractvalue %dx.types.ResRet.f32 %2777, 0
  %2890 = extractvalue %dx.types.ResRet.i32 %2773, 3
  %2891 = extractvalue %dx.types.ResRet.i32 %2773, 2
  %2892 = bitcast float %2884 to i32
  %2893 = add i32 %2890, 0
  %2894 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2893, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2896 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2894, %dx.types.Handle %2895, float %2822, float %2829, float undef, float undef, i32 0, i32 0, i32 undef, float %2850, float %2852, float undef, float %2851, float %2853, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2897 = extractvalue %dx.types.ResRet.f32 %2896, 0
  %2898 = fmul fast float %2897, %2889
  %2899 = fadd fast float %2898, %2888
  %2900 = call float @dx.op.unary.f32(i32 7, float %2899)  ; Saturate(value)
  %2901 = fmul fast float %2822, %2782
  %2902 = call float @dx.op.tertiary.f32(i32 46, float %2783, float %2829, float %2901)  ; FMad(a,b,c)
  %2903 = fadd fast float %2902, %2887
  %2904 = fmul fast float %2822, %2784
  %2905 = call float @dx.op.tertiary.f32(i32 46, float %2785, float %2829, float %2904)  ; FMad(a,b,c)
  %2906 = fadd fast float %2905, %2886
  %2907 = fmul fast float %2850, %2782
  %2908 = call float @dx.op.tertiary.f32(i32 46, float %2783, float %2852, float %2907)  ; FMad(a,b,c)
  %2909 = fmul fast float %2850, %2784
  %2910 = call float @dx.op.tertiary.f32(i32 46, float %2785, float %2852, float %2909)  ; FMad(a,b,c)
  %2911 = fmul fast float %2851, %2782
  %2912 = call float @dx.op.tertiary.f32(i32 46, float %2783, float %2853, float %2911)  ; FMad(a,b,c)
  %2913 = fmul fast float %2851, %2784
  %2914 = call float @dx.op.tertiary.f32(i32 46, float %2785, float %2853, float %2913)  ; FMad(a,b,c)
  %2915 = add i32 %2891, 0
  %2916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2915, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2917 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2916, %dx.types.Handle %2895, float %2903, float %2906, float undef, float undef, i32 0, i32 0, i32 undef, float %2908, float %2910, float undef, float %2912, float %2914, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2918 = extractvalue %dx.types.ResRet.f32 %2917, 0
  %2919 = and i32 %2892, 1024
  %2920 = icmp ne i32 %2919, 0
  %2921 = fcmp fast ogt float %2918, 0x3FE0101020000000
  %2922 = uitofp i1 %2921 to float
  %2923 = select i1 %2920, float %2922, float %2918
  %2924 = and i32 %2892, 8192
  %2925 = icmp ne i32 %2924, 0
  %2926 = select i1 %2925, float %2885, float 1.000000e+00
  %2927 = fmul fast float %2822, 2.000000e+00
  %2928 = fadd fast float %2927, -1.000000e+00
  %2929 = call float @dx.op.unary.f32(i32 6, float %2928)  ; FAbs(value)
  %2930 = fmul fast float %2929, %2815
  %2931 = fsub fast float %2930, %2815
  %2932 = call float @dx.op.unary.f32(i32 7, float %2931)  ; Saturate(value)
  %2933 = fmul fast float %2829, 2.000000e+00
  %2934 = fadd fast float %2933, -1.000000e+00
  %2935 = call float @dx.op.unary.f32(i32 6, float %2934)  ; FAbs(value)
  %2936 = fmul fast float %2935, %2816
  %2937 = fsub fast float %2936, %2816
  %2938 = call float @dx.op.unary.f32(i32 7, float %2937)  ; Saturate(value)
  %2939 = fmul fast float %2841, %2778
  %2940 = fsub fast float %2939, %2778
  %2941 = call float @dx.op.unary.f32(i32 7, float %2940)  ; Saturate(value)
  %2942 = fmul fast float %2900, %2926
  %2943 = fmul fast float %2942, %2897
  %2944 = fmul fast float %2943, %2932
  %2945 = fmul fast float %2944, %2923
  %2946 = fmul fast float %2945, %2938
  %2947 = fmul fast float %2946, %2941
  %2948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2949 = extractvalue %dx.types.CBufRet.f32 %2948, 1
  %2950 = extractvalue %dx.types.CBufRet.f32 %2948, 0
  %2951 = fsub fast float %2858, %2950
  %2952 = fmul fast float %2951, %2949
  %2953 = call float @dx.op.unary.f32(i32 7, float %2952)  ; Saturate(value)
  %2954 = fmul fast float %2947, %2779
  %2955 = fadd fast float %2947, %2779
  %2956 = fmul fast float %2955, %2788
  %2957 = fsub fast float %2956, %2788
  %2958 = call float @dx.op.unary.f32(i32 7, float %2957)  ; Saturate(value)
  %2959 = and i32 %2892, 128
  %2960 = icmp ne i32 %2959, 0
  %2961 = select i1 %2960, float %2958, float %2954
  %2962 = fmul fast float %2961, %2953
  %2963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2964 = extractvalue %dx.types.CBufRet.f32 %2963, 0
  %2965 = fcmp fast ugt float %2962, %2964
  br i1 %2965, label %2966, label %2862

; <label>:2966                                    ; preds = %2883
  %2967 = select i1 %2925, float %2962, float 0.000000e+00
  %2968 = fadd fast float %2967, %2742
  %2969 = call float @dx.op.unary.f32(i32 7, float %2968)  ; Saturate(value)
  br i1 %2925, label %2862, label %2970

; <label>:2970                                    ; preds = %2966
  %2971 = and i32 %2892, 4
  %2972 = and i32 %2892, 8
  %2973 = add i32 %2774, 0
  %2974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2973, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2976 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2974, %dx.types.Handle %2975, float %2903, float %2906, float undef, float undef, i32 0, i32 0, i32 undef, float %2908, float %2910, float undef, float %2912, float %2914, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2977 = extractvalue %dx.types.ResRet.f32 %2976, 0
  %2978 = extractvalue %dx.types.ResRet.f32 %2976, 1
  %2979 = extractvalue %dx.types.ResRet.f32 %2976, 2
  %2980 = extractvalue %dx.types.ResRet.f32 %2976, 3
  %2981 = bitcast float %2800 to i32
  %2982 = and i32 %2981, 255
  %2983 = uitofp i32 %2982 to float
  %2984 = lshr i32 %2981, 8
  %2985 = and i32 %2984, 255
  %2986 = uitofp i32 %2985 to float
  %2987 = fmul fast float %2980, %2983
  %2988 = fadd fast float %2987, %2986
  %2989 = fmul fast float %2988, 0x3F70101000000000
  %2990 = add i32 %2775, 0
  %2991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2990, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2992 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2991, %dx.types.Handle %2975, float %2903, float %2906, float undef, float undef, i32 0, i32 0, i32 undef, float %2908, float %2910, float undef, float %2912, float %2914, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2993 = extractvalue %dx.types.ResRet.f32 %2992, 0
  %2994 = extractvalue %dx.types.ResRet.f32 %2992, 1
  %2995 = extractvalue %dx.types.ResRet.f32 %2992, 2
  %2996 = extractvalue %dx.types.ResRet.f32 %2992, 3
  %2997 = bitcast float %2794 to i32
  %2998 = and i32 %2997, 255
  %2999 = uitofp i32 %2998 to float
  %3000 = lshr i32 %2997, 8
  %3001 = and i32 %3000, 255
  %3002 = uitofp i32 %3001 to float
  %3003 = lshr i32 %2997, 16
  %3004 = and i32 %3003, 255
  %3005 = uitofp i32 %3004 to float
  %3006 = fmul fast float %3005, 0x3F70101000000000
  %3007 = fmul fast float %2993, %2999
  %3008 = fadd fast float %3007, %3002
  %3009 = fmul fast float %3008, 0x3F70101000000000
  %3010 = fadd fast float %2994, -5.000000e-01
  %3011 = fadd fast float %2996, -5.000000e-01
  %3012 = fmul fast float %3010, %3006
  %3013 = fmul fast float %3011, %3006
  %3014 = fadd fast float %3012, 5.000000e-01
  %3015 = fadd fast float %3013, 5.000000e-01
  %3016 = fmul fast float %2977, %2803
  %3017 = fmul fast float %2978, %2804
  %3018 = fmul fast float %2979, %2805
  %3019 = fmul fast float %3014, 2.000000e+00
  %3020 = fadd fast float %3019, -1.000000e+00
  %3021 = fmul fast float %3015, 2.000000e+00
  %3022 = fadd fast float %3021, -1.000000e+00
  %3023 = fadd fast float %3020, %3022
  %3024 = fmul fast float %3023, 5.000000e-01
  %3025 = fsub fast float %3020, %3022
  %3026 = fmul fast float %3025, 5.000000e-01
  %3027 = call float @dx.op.unary.f32(i32 6, float %3024)  ; FAbs(value)
  %3028 = fsub fast float 1.000000e+00, %3027
  %3029 = call float @dx.op.unary.f32(i32 6, float %3026)  ; FAbs(value)
  %3030 = fsub fast float %3028, %3029
  %3031 = call float @dx.op.dot3.f32(i32 55, float %3024, float %3026, float %3030, float %3024, float %3026, float %3030)  ; Dot3(ax,ay,az,bx,by,bz)
  %3032 = call float @dx.op.unary.f32(i32 25, float %3031)  ; Rsqrt(value)
  %3033 = fmul fast float %3024, %3032
  %3034 = fmul fast float %3026, %3032
  %3035 = fmul fast float %3032, %3030
  %3036 = fmul fast float %3035, %2769
  %3037 = fmul fast float %3035, %2770
  %3038 = fmul fast float %3035, %2771
  %3039 = fmul fast float %3033, %2791
  %3040 = fmul fast float %3033, %2792
  %3041 = fmul fast float %3033, %2793
  %3042 = fadd fast float %3039, %3036
  %3043 = fadd fast float %3040, %3037
  %3044 = fadd fast float %3041, %3038
  %3045 = fmul fast float %3034, %2797
  %3046 = fmul fast float %3034, %2798
  %3047 = fmul fast float %3034, %2799
  %3048 = fadd fast float %3042, %3045
  %3049 = fadd fast float %3043, %3046
  %3050 = fadd fast float %3044, %3047
  %3051 = call float @dx.op.dot3.f32(i32 55, float %3048, float %3049, float %3050, float %3048, float %3049, float %3050)  ; Dot3(ax,ay,az,bx,by,bz)
  %3052 = call float @dx.op.unary.f32(i32 25, float %3051)  ; Rsqrt(value)
  %3053 = fmul fast float %3048, %3052
  %3054 = fmul fast float %3049, %3052
  %3055 = fmul fast float %3050, %3052
  %3056 = icmp ne i32 %2972, 0
  %3057 = select i1 %3056, float 1.000000e+00, float 0.000000e+00
  %3058 = fmul fast float %2962, %3057
  %3059 = and i32 %2892, 1
  %3060 = icmp eq i32 %3059, 0
  br i1 %3060, label %3061, label %3065

; <label>:3061                                    ; preds = %2970
  %3062 = fsub fast float %3053, %2751
  %3063 = fsub fast float %3054, %2752
  %3064 = fsub fast float %3055, %2753
  br label %3065

; <label>:3065                                    ; preds = %3061, %2970
  %3066 = phi float [ %3062, %3061 ], [ %3053, %2970 ]
  %3067 = phi float [ %3063, %3061 ], [ %3054, %2970 ]
  %3068 = phi float [ %3064, %3061 ], [ %3055, %2970 ]
  %3069 = fmul float %3068, %3058
  %3070 = fmul float %3067, %3058
  %3071 = fmul float %3066, %3058
  %3072 = fadd fast float %3071, %2751
  %3073 = fadd fast float %3070, %2752
  %3074 = fadd fast float %3069, %2753
  %3075 = icmp ne i32 %2971, 0
  %3076 = select i1 %3075, float 1.000000e+00, float 0.000000e+00
  %3077 = fmul fast float %2962, %3076
  %3078 = fsub fast float %3016, %2758
  %3079 = fsub fast float %3017, %2759
  %3080 = fsub fast float %3018, %2760
  %3081 = fmul fast float %3078, %3077
  %3082 = fmul fast float %3079, %3077
  %3083 = fmul fast float %3080, %3077
  %3084 = fadd fast float %3081, %2758
  %3085 = fadd fast float %3082, %2759
  %3086 = fadd fast float %3083, %2760
  %3087 = fsub fast float %2989, %2757
  %3088 = fmul fast float %3087, %3077
  %3089 = fadd fast float %3088, %2757
  %3090 = fmul fast float %3077, %2747
  %3091 = fsub fast float %2747, %3090
  %3092 = fmul fast float %3077, %2746
  %3093 = fsub fast float %2746, %3092
  %3094 = fadd fast float %2962, %2756
  %3095 = call float @dx.op.unary.f32(i32 7, float %3094)  ; Saturate(value)
  %3096 = fsub fast float %3009, %2755
  %3097 = fmul fast float %3096, %3058
  %3098 = fadd fast float %3097, %2755
  %3099 = fsub fast float %2995, %2754
  %3100 = fmul fast float %3099, %3058
  %3101 = fadd fast float %3100, %2754
  %3102 = call float @dx.op.dot3.f32(i32 55, float %3016, float %3017, float %3018, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3104 = extractvalue %dx.types.CBufRet.f32 %3103, 0
  %3105 = extractvalue %dx.types.CBufRet.f32 %3103, 1
  %3106 = fmul fast float %3105, %3102
  %3107 = fadd fast float %3106, %3104
  %3108 = call float @dx.op.unary.f32(i32 7, float %3107)  ; Saturate(value)
  %3109 = bitcast float %2806 to i32
  %3110 = and i32 %3109, 65535
  %3111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3110)  ; LegacyF16ToF32(value)
  %3112 = lshr i32 %3109, 16
  %3113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3112)  ; LegacyF16ToF32(value)
  %3114 = fcmp fast oge float %3111, 0.000000e+00
  %3115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3116 = extractvalue %dx.types.CBufRet.f32 %3115, 0
  %3117 = select i1 %3114, float %3111, float %3116
  %3118 = fadd fast float %3117, %3113
  %3119 = fsub fast float %3108, %2745
  %3120 = fmul fast float %3119, %2962
  %3121 = fadd fast float %3120, %2745
  %3122 = fmul fast float %3118, %2962
  %3123 = call float @dx.op.binary.f32(i32 35, float %2744, float %3122)  ; FMax(a,b)
  %3124 = call float @dx.op.binary.f32(i32 35, float %2743, float %2962)  ; FMax(a,b)
  %3125 = and i32 %2892, 16
  %3126 = icmp eq i32 %3125, 0
  br i1 %3126, label %3149, label %3127

; <label>:3127                                    ; preds = %3065
  %3128 = bitcast float %2812 to i32
  %3129 = add i32 %2809, 0
  %3130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3129, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3131 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3130, %dx.types.Handle %2975, float %2903, float %2906, float undef, float undef, i32 0, i32 0, i32 undef, float %2908, float %2910, float undef, float %2912, float %2914, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3132 = extractvalue %dx.types.ResRet.f32 %3131, 0
  %3133 = extractvalue %dx.types.ResRet.f32 %3131, 1
  %3134 = extractvalue %dx.types.ResRet.f32 %3131, 2
  %3135 = and i32 %3128, 65535
  %3136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3135)  ; LegacyF16ToF32(value)
  %3137 = fmul fast float %3132, %2803
  %3138 = fmul fast float %3133, %2804
  %3139 = fmul fast float %3134, %2805
  %3140 = and i32 %2892, 16384
  %3141 = icmp ne i32 %3140, 0
  %3142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3143 = extractvalue %dx.types.CBufRet.f32 %3142, 0
  %3144 = select i1 %3141, float %3143, float 1.000000e+00
  %3145 = fmul fast float %3144, %3136
  %3146 = fmul fast float %3137, %3145
  %3147 = fmul fast float %3138, %3145
  %3148 = fmul fast float %3139, %3145
  br label %3149

; <label>:3149                                    ; preds = %3127, %3065
  %3150 = phi float [ %3146, %3127 ], [ 0.000000e+00, %3065 ]
  %3151 = phi float [ %3147, %3127 ], [ 0.000000e+00, %3065 ]
  %3152 = phi float [ %3148, %3127 ], [ 0.000000e+00, %3065 ]
  %3153 = fsub fast float %3150, %2748
  %3154 = fsub fast float %3151, %2749
  %3155 = fsub fast float %3152, %2750
  %3156 = fmul fast float %3153, %2962
  %3157 = fmul fast float %3154, %2962
  %3158 = fmul fast float %3155, %2962
  %3159 = fadd fast float %3156, %2748
  %3160 = fadd fast float %3157, %2749
  %3161 = fadd fast float %3158, %2750
  br label %2862

; <label>:3162                                    ; preds = %2862
  br label %3163

; <label>:3163                                    ; preds = %3162, %2677
  %3164 = phi float [ 0.000000e+00, %2677 ], [ %2863, %3162 ]
  %3165 = phi float [ %917, %2677 ], [ %2864, %3162 ]
  %3166 = phi float [ %2623, %2677 ], [ %2865, %3162 ]
  %3167 = phi float [ %2621, %2677 ], [ %2866, %3162 ]
  %3168 = phi float [ 0.000000e+00, %2677 ], [ %2867, %3162 ]
  %3169 = phi float [ 0.000000e+00, %2677 ], [ %2868, %3162 ]
  %3170 = phi float [ %2645, %2677 ], [ %2869, %3162 ]
  %3171 = phi float [ %2646, %2677 ], [ %2870, %3162 ]
  %3172 = phi float [ %2647, %2677 ], [ %2871, %3162 ]
  %3173 = phi float [ %2673, %2677 ], [ %2872, %3162 ]
  %3174 = phi float [ %2674, %2677 ], [ %2873, %3162 ]
  %3175 = phi float [ %2675, %2677 ], [ %2874, %3162 ]
  %3176 = phi float [ %2620, %2677 ], [ %2875, %3162 ]
  %3177 = phi float [ %2619, %2677 ], [ %2876, %3162 ]
  %3178 = phi float [ 0.000000e+00, %2677 ], [ %2877, %3162 ]
  %3179 = phi float [ 0x3FA23C0BE0000000, %2677 ], [ %2878, %3162 ]
  %3180 = phi float [ %2628, %2677 ], [ %2879, %3162 ]
  %3181 = phi float [ %2629, %2677 ], [ %2880, %3162 ]
  %3182 = phi float [ %2630, %2677 ], [ %2881, %3162 ]
  %3183 = call float @dx.op.dot3.f32(i32 55, float %3173, float %3174, float %3175, float %3173, float %3174, float %3175)  ; Dot3(ax,ay,az,bx,by,bz)
  %3184 = call float @dx.op.unary.f32(i32 25, float %3183)  ; Rsqrt(value)
  %3185 = fmul fast float %3184, %3173
  %3186 = fmul fast float %3184, %3174
  %3187 = fmul fast float %3184, %3175
  %3188 = fadd fast float %3178, %2631
  %3189 = call float @dx.op.unary.f32(i32 7, float %3188)  ; Saturate(value)
  %3190 = call float @dx.op.dot3.f32(i32 55, float %3185, float %3186, float %3187, float %3185, float %3186, float %3187)  ; Dot3(ax,ay,az,bx,by,bz)
  %3191 = call float @dx.op.unary.f32(i32 25, float %3190)  ; Rsqrt(value)
  %3192 = fmul fast float %3191, %3185
  %3193 = fmul fast float %3191, %3186
  %3194 = fmul fast float %3191, %3187
  br label %3195

; <label>:3195                                    ; preds = %3163, %2616
  %3196 = phi float [ %3180, %3163 ], [ %2628, %2616 ]
  %3197 = phi float [ %3181, %3163 ], [ %2629, %2616 ]
  %3198 = phi float [ %3182, %3163 ], [ %2630, %2616 ]
  %3199 = phi float [ %3192, %3163 ], [ %2673, %2616 ]
  %3200 = phi float [ %3193, %3163 ], [ %2674, %2616 ]
  %3201 = phi float [ %3194, %3163 ], [ %2675, %2616 ]
  %3202 = phi float [ %3170, %3163 ], [ %2645, %2616 ]
  %3203 = phi float [ %3171, %3163 ], [ %2646, %2616 ]
  %3204 = phi float [ %3172, %3163 ], [ %2647, %2616 ]
  %3205 = phi float [ %3179, %3163 ], [ 0x3FA23C0BE0000000, %2616 ]
  %3206 = phi float [ %3189, %3163 ], [ %2631, %2616 ]
  %3207 = phi float [ %3177, %3163 ], [ %2619, %2616 ]
  %3208 = phi float [ %3176, %3163 ], [ %2620, %2616 ]
  %3209 = phi float [ %3169, %3163 ], [ 0.000000e+00, %2616 ]
  %3210 = phi float [ %3168, %3163 ], [ 0.000000e+00, %2616 ]
  %3211 = phi float [ %3164, %3163 ], [ 0.000000e+00, %2616 ]
  %3212 = phi float [ %3166, %3163 ], [ %2623, %2616 ]
  %3213 = phi float [ %3165, %3163 ], [ %917, %2616 ]
  %3214 = phi float [ %3167, %3163 ], [ %2621, %2616 ]
  %3215 = fadd fast float %3205, 0xBFB99999A0000000
  %3216 = call float @dx.op.unary.f32(i32 7, float %3215)  ; Saturate(value)
  %3217 = fmul fast float %3216, 0x3FF1C71C80000000
  %3218 = call float @dx.op.binary.f32(i32 36, float %3205, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3219 = fsub fast float 1.000000e+00, %3217
  %3220 = call float @dx.op.unary.f32(i32 7, float %3219)  ; Saturate(value)
  %3221 = fmul fast float %3220, %3196
  %3222 = fmul fast float %3220, %3197
  %3223 = fmul fast float %3220, %3198
  %3224 = call float @dx.op.unary.f32(i32 7, float %3221)  ; Saturate(value)
  %3225 = call float @dx.op.unary.f32(i32 7, float %3222)  ; Saturate(value)
  %3226 = call float @dx.op.unary.f32(i32 7, float %3223)  ; Saturate(value)
  %3227 = fmul fast float %3217, %3196
  %3228 = fmul fast float %3217, %3197
  %3229 = fmul fast float %3217, %3198
  %3230 = fadd fast float %3227, %3218
  %3231 = fadd fast float %3228, %3218
  %3232 = fadd fast float %3229, %3218
  %3233 = call float @dx.op.unary.f32(i32 7, float %3230)  ; Saturate(value)
  %3234 = call float @dx.op.unary.f32(i32 7, float %3231)  ; Saturate(value)
  %3235 = call float @dx.op.unary.f32(i32 7, float %3232)  ; Saturate(value)
  %3236 = call float @dx.op.unary.f32(i32 7, float %3207)  ; Saturate(value)
  %3237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3238 = extractvalue %dx.types.CBufRet.i32 %3237, 3
  %3239 = and i32 %3238, 8
  %3240 = icmp ne i32 %3239, 0
  %3241 = call float @dx.op.binary.f32(i32 35, float %3224, float %3196)  ; FMax(a,b)
  %3242 = call float @dx.op.binary.f32(i32 35, float %3225, float %3196)  ; FMax(a,b)
  %3243 = call float @dx.op.binary.f32(i32 35, float %3226, float %3196)  ; FMax(a,b)
  %3244 = call float @dx.op.dot3.f32(i32 55, float %3224, float %3225, float %3226, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3245 = select i1 %251, float %3196, float %3224
  %3246 = select i1 %251, float %3244, float %3225
  %3247 = select i1 %251, float 1.000000e+00, float %3226
  %3248 = select i1 %3240, float %3241, float %3245
  %3249 = select i1 %3240, float %3242, float %3246
  %3250 = select i1 %3240, float %3243, float %3247
  %3251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3252 = extractvalue %dx.types.CBufRet.f32 %3251, 0
  %3253 = extractvalue %dx.types.CBufRet.f32 %3251, 1
  %3254 = extractvalue %dx.types.CBufRet.f32 %3251, 2
  %3255 = fadd fast float %3252, %192
  %3256 = fadd fast float %3253, %193
  %3257 = fadd fast float %3254, %194
  %3258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3259 = extractvalue %dx.types.CBufRet.f32 %3258, 0
  %3260 = extractvalue %dx.types.CBufRet.f32 %3258, 1
  %3261 = fsub fast float %3255, %3259
  %3262 = fsub fast float %3256, %3260
  %3263 = fmul fast float %3261, %3261
  %3264 = fmul fast float %3262, %3262
  %3265 = fadd fast float %3263, %3264
  %3266 = call float @dx.op.unary.f32(i32 24, float %3265)  ; Sqrt(value)
  %3267 = extractvalue %dx.types.CBufRet.f32 %3258, 2
  %3268 = fcmp fast olt float %3266, %3267
  br i1 %3268, label %3269, label %3336

; <label>:3269                                    ; preds = %3195
  %3270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3271 = extractvalue %dx.types.CBufRet.f32 %3270, 0
  %3272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3273 = extractvalue %dx.types.CBufRet.f32 %3272, 0
  %3274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3275 = extractvalue %dx.types.CBufRet.f32 %3274, 0
  %3276 = extractvalue %dx.types.CBufRet.f32 %3270, 1
  %3277 = extractvalue %dx.types.CBufRet.f32 %3272, 1
  %3278 = extractvalue %dx.types.CBufRet.f32 %3274, 1
  %3279 = extractvalue %dx.types.CBufRet.f32 %3270, 3
  %3280 = extractvalue %dx.types.CBufRet.f32 %3272, 3
  %3281 = extractvalue %dx.types.CBufRet.f32 %3274, 3
  %3282 = fadd fast float %3279, %3255
  %3283 = fadd fast float %3280, %3256
  %3284 = fadd fast float %3281, %3257
  %3285 = fmul fast float %3282, %3271
  %3286 = call float @dx.op.tertiary.f32(i32 46, float %3283, float %3273, float %3285)  ; FMad(a,b,c)
  %3287 = call float @dx.op.tertiary.f32(i32 46, float %3284, float %3275, float %3286)  ; FMad(a,b,c)
  %3288 = fmul fast float %3282, %3276
  %3289 = call float @dx.op.tertiary.f32(i32 46, float %3283, float %3277, float %3288)  ; FMad(a,b,c)
  %3290 = call float @dx.op.tertiary.f32(i32 46, float %3284, float %3278, float %3289)  ; FMad(a,b,c)
  %3291 = fsub fast float %3287, %3279
  %3292 = fsub fast float %3290, %3280
  %3293 = fsub fast float %3291, %3259
  %3294 = fadd fast float %3293, %3267
  %3295 = fsub fast float %3292, %3260
  %3296 = fadd fast float %3295, %3267
  %3297 = extractvalue %dx.types.CBufRet.f32 %3258, 3
  %3298 = fmul fast float %3294, %3297
  %3299 = fmul fast float %3296, %3297
  %3300 = call float @dx.op.unary.f32(i32 7, float %3298)  ; Saturate(value)
  %3301 = call float @dx.op.unary.f32(i32 7, float %3299)  ; Saturate(value)
  %3302 = fsub fast float 1.000000e+00, %3300
  %3303 = fsub fast float 1.000000e+00, %3301
  %3304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %49, float %3302, float %3303, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3305 = extractvalue %dx.types.ResRet.f32 %3304, 0
  %3306 = fcmp fast ugt float %3305, 0.000000e+00
  br i1 %3306, label %3307, label %3610

; <label>:3307                                    ; preds = %3269
  %3308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3309 = extractvalue %dx.types.CBufRet.f32 %3308, 2
  %3310 = fmul fast float %3309, %3305
  %3311 = extractvalue %dx.types.CBufRet.f32 %3308, 3
  %3312 = fadd fast float %3311, %3310
  %3313 = extractvalue %dx.types.CBufRet.f32 %3274, 2
  %3314 = fadd fast float %3312, %3281
  %3315 = fmul fast float %3287, %3275
  %3316 = call float @dx.op.tertiary.f32(i32 46, float %3290, float %3278, float %3315)  ; FMad(a,b,c)
  %3317 = call float @dx.op.tertiary.f32(i32 46, float %3314, float %3313, float %3316)  ; FMad(a,b,c)
  %3318 = fsub fast float %3317, %3281
  %3319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3320 = extractvalue %dx.types.CBufRet.f32 %3319, 2
  %3321 = fsub fast float %3318, %3320
  %3322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %3302, float %3303, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3323 = extractvalue %dx.types.ResRet.f32 %3322, 0
  %3324 = extractvalue %dx.types.ResRet.f32 %3322, 1
  %3325 = extractvalue %dx.types.ResRet.f32 %3322, 2
  %3326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %3302, float %3303, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3327 = extractvalue %dx.types.ResRet.f32 %3326, 0
  %3328 = extractvalue %dx.types.ResRet.f32 %3326, 1
  %3329 = extractvalue %dx.types.ResRet.f32 %3326, 2
  %3330 = fadd fast float %3327, %3323
  %3331 = fmul fast float %3330, 0x3F847AE140000000
  %3332 = fadd fast float %3328, %3324
  %3333 = fmul fast float %3332, 0x3F847AE140000000
  %3334 = fadd fast float %3329, %3325
  %3335 = fmul fast float %3334, 0x3F847AE140000000
  br label %3610

; <label>:3336                                    ; preds = %3195
  %3337 = and i32 %230, 1
  %3338 = icmp eq i32 %3337, 0
  br i1 %3338, label %3610, label %3339

; <label>:3339                                    ; preds = %3336
  %3340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3341 = extractvalue %dx.types.CBufRet.f32 %3340, 0
  %3342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3343 = extractvalue %dx.types.CBufRet.f32 %3342, 0
  %3344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3345 = extractvalue %dx.types.CBufRet.f32 %3344, 0
  %3346 = extractvalue %dx.types.CBufRet.f32 %3340, 1
  %3347 = extractvalue %dx.types.CBufRet.f32 %3342, 1
  %3348 = extractvalue %dx.types.CBufRet.f32 %3344, 1
  %3349 = extractvalue %dx.types.CBufRet.f32 %3340, 3
  %3350 = extractvalue %dx.types.CBufRet.f32 %3342, 3
  %3351 = extractvalue %dx.types.CBufRet.f32 %3344, 3
  %3352 = fadd fast float %3349, %3255
  %3353 = fadd fast float %3350, %3256
  %3354 = fadd fast float %3351, %3257
  %3355 = fmul fast float %3352, %3341
  %3356 = call float @dx.op.tertiary.f32(i32 46, float %3353, float %3343, float %3355)  ; FMad(a,b,c)
  %3357 = call float @dx.op.tertiary.f32(i32 46, float %3354, float %3345, float %3356)  ; FMad(a,b,c)
  %3358 = fmul fast float %3352, %3346
  %3359 = call float @dx.op.tertiary.f32(i32 46, float %3353, float %3347, float %3358)  ; FMad(a,b,c)
  %3360 = call float @dx.op.tertiary.f32(i32 46, float %3354, float %3348, float %3359)  ; FMad(a,b,c)
  %3361 = fsub fast float %3357, %3349
  %3362 = fsub fast float %3360, %3350
  %3363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3364 = extractvalue %dx.types.CBufRet.f32 %3363, 0
  %3365 = extractvalue %dx.types.CBufRet.f32 %3363, 1
  %3366 = extractvalue %dx.types.CBufRet.f32 %3363, 2
  %3367 = extractvalue %dx.types.CBufRet.f32 %3363, 3
  %3368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3369 = extractvalue %dx.types.CBufRet.f32 %3368, 3
  %3370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3371 = extractvalue %dx.types.CBufRet.i32 %3370, 0
  %3372 = extractvalue %dx.types.CBufRet.i32 %3370, 1
  %3373 = udiv i32 %3372, %3371
  %3374 = fsub fast float %3361, %3364
  %3375 = fsub fast float %3362, %3365
  %3376 = call float @dx.op.binary.f32(i32 35, float %3374, float 0.000000e+00)  ; FMax(a,b)
  %3377 = call float @dx.op.binary.f32(i32 35, float %3375, float 0.000000e+00)  ; FMax(a,b)
  %3378 = call float @dx.op.binary.f32(i32 36, float %3376, float %3366)  ; FMin(a,b)
  %3379 = call float @dx.op.binary.f32(i32 36, float %3377, float %3367)  ; FMin(a,b)
  %3380 = add i32 %3371, -1
  %3381 = add i32 %3373, -1
  %3382 = fmul fast float %3378, %3369
  %3383 = fmul fast float %3379, %3369
  %3384 = fptoui float %3382 to i32
  %3385 = fptoui float %3383 to i32
  %3386 = call i32 @dx.op.binary.i32(i32 40, i32 %3384, i32 %3380)  ; UMin(a,b)
  %3387 = call i32 @dx.op.binary.i32(i32 40, i32 %3385, i32 %3381)  ; UMin(a,b)
  %3388 = mul i32 %3387, %3371
  %3389 = add i32 %3388, %3386
  %3390 = shl i32 %3389, 2
  %3391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.i32 %3391, 0
  %3393 = icmp eq i32 %3392, -1
  br i1 %3393, label %3610, label %3394

; <label>:3394                                    ; preds = %3339
  %3395 = mul i32 %3392, 148
  %3396 = add i32 %3395, 4
  %3397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.f32 %3397, 0
  %3399 = add i32 %3395, 8
  %3400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.f32 %3400, 0
  %3402 = add i32 %3395, 36
  %3403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.f32 %3403, 0
  %3405 = add i32 %3395, 60
  %3406 = add i32 %3395, 92
  %3407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.i32 %3407, 0
  %3409 = add i32 %3395, 116
  %3410 = fsub fast float %3361, %3398
  %3411 = fsub fast float %3362, %3401
  %3412 = fmul fast float %3369, %3410
  %3413 = fmul fast float %3369, %3411
  %3414 = call float @dx.op.unary.f32(i32 7, float %3412)  ; Saturate(value)
  %3415 = call float @dx.op.unary.f32(i32 7, float %3413)  ; Saturate(value)
  %3416 = fsub fast float 1.000000e+00, %3415
  %3417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3418 = extractvalue %dx.types.CBufRet.f32 %3417, 2
  %3419 = call float @dx.op.unary.f32(i32 83, float %3414)  ; DerivCoarseX(value)
  %3420 = call float @dx.op.unary.f32(i32 83, float %3416)  ; DerivCoarseX(value)
  %3421 = call float @dx.op.unary.f32(i32 84, float %3414)  ; DerivCoarseY(value)
  %3422 = call float @dx.op.unary.f32(i32 84, float %3416)  ; DerivCoarseY(value)
  %3423 = fmul fast float %3419, %3418
  %3424 = fmul fast float %3420, %3418
  %3425 = fmul fast float %3421, %3418
  %3426 = fmul fast float %3422, %3418
  %3427 = call float @dx.op.dot2.f32(i32 54, float %3425, float %3426, float %3425, float %3426)  ; Dot2(ax,ay,bx,by)
  %3428 = call float @dx.op.dot2.f32(i32 54, float %3423, float %3424, float %3423, float %3424)  ; Dot2(ax,ay,bx,by)
  %3429 = call float @dx.op.binary.f32(i32 35, float %3428, float %3427)  ; FMax(a,b)
  %3430 = call float @dx.op.unary.f32(i32 23, float %3429)  ; Log(value)
  %3431 = fmul fast float %3430, 5.000000e-01
  %3432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3433 = extractvalue %dx.types.CBufRet.f32 %3432, 1
  %3434 = fadd fast float %3433, %3431
  %3435 = call float @dx.op.binary.f32(i32 35, float %3434, float 0.000000e+00)  ; FMax(a,b)
  %3436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3437 = extractvalue %dx.types.CBufRet.f32 %3436, 3
  %3438 = fadd fast float %3437, %3435
  %3439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3440 = extractvalue %dx.types.CBufRet.f32 %3439, 3
  %3441 = fadd fast float %3438, %3440
  %3442 = add i32 %3408, 0
  %3443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3442, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3444 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3443, i32 0)  ; GetDimensions(handle,mipLevel)
  %3445 = extractvalue %dx.types.Dimensions %3444, 0
  %3446 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3445)  ; FirstbitLo(value)
  %3447 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3448 = extractvalue %dx.types.CBufRet.i32 %3447, 1
  %3449 = sub nsw i32 %3448, %3446
  %3450 = sitofp i32 %3449 to float
  %3451 = fsub fast float %3441, %3450
  %3452 = call float @dx.op.binary.f32(i32 35, float %3451, float 0.000000e+00)  ; FMax(a,b)
  %3453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3443, %dx.types.Handle %47, float %3414, float %3416, float %3404, float undef, i32 0, i32 0, i32 undef, float %3452)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3454 = extractvalue %dx.types.ResRet.f32 %3453, 0
  %3455 = fcmp ule float %3454, 0x3FE0101020000000
  %3456 = extractvalue %dx.types.CBufRet.i32 %3447, 0
  %3457 = and i32 %3456, 128
  %3458 = icmp ne i32 %3457, 0
  %3459 = and i1 %3455, %3458
  br i1 %3459, label %3610, label %3460

; <label>:3460                                    ; preds = %3394
  %3461 = add i32 %3395, 20
  %3462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3461, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.f32 %3462, 0
  %3464 = add i32 %3395, 24
  %3465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3464, i32 undef)  ; BufferLoad(srv,index,wot)
  %3466 = extractvalue %dx.types.ResRet.f32 %3465, 0
  %3467 = add i32 %3395, 40
  %3468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.f32 %3468, 0
  %3470 = add i32 %3395, 96
  %3471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3470, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.i32 %3471, 0
  %3473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3474 = extractvalue %dx.types.CBufRet.f32 %3473, 2
  %3475 = fmul fast float %3474, %3414
  %3476 = fmul fast float %3474, %3416
  %3477 = extractvalue %dx.types.CBufRet.f32 %3473, 3
  %3478 = fadd fast float %3475, %3477
  %3479 = fadd fast float %3476, %3477
  %3480 = add i32 %3472, 0
  %3481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3480, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3482 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3481, i32 0)  ; GetDimensions(handle,mipLevel)
  %3483 = extractvalue %dx.types.Dimensions %3482, 0
  %3484 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3483)  ; FirstbitLo(value)
  %3485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3486 = extractvalue %dx.types.CBufRet.i32 %3485, 1
  %3487 = sub nsw i32 %3486, %3484
  %3488 = sitofp i32 %3487 to float
  %3489 = fsub fast float %3438, %3488
  %3490 = call float @dx.op.binary.f32(i32 35, float %3489, float 0.000000e+00)  ; FMax(a,b)
  %3491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3481, %dx.types.Handle %47, float %3478, float %3479, float %3469, float undef, i32 0, i32 0, i32 undef, float %3490)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3492 = extractvalue %dx.types.ResRet.f32 %3491, 0
  %3493 = fmul fast float %3492, %3463
  %3494 = fadd fast float %3493, %3466
  %3495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3496 = extractvalue %dx.types.CBufRet.f32 %3495, 0
  %3497 = extractvalue %dx.types.CBufRet.f32 %3495, 1
  %3498 = extractvalue %dx.types.CBufRet.f32 %3495, 2
  %3499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3500 = extractvalue %dx.types.CBufRet.f32 %3499, 3
  %3501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3502 = extractvalue %dx.types.CBufRet.f32 %3501, 3
  %3503 = extractvalue %dx.types.CBufRet.f32 %3495, 3
  %3504 = fadd fast float %3500, %3361
  %3505 = fadd fast float %3502, %3362
  %3506 = fadd fast float %3494, %3503
  %3507 = fmul fast float %3504, %3496
  %3508 = call float @dx.op.tertiary.f32(i32 46, float %3505, float %3497, float %3507)  ; FMad(a,b,c)
  %3509 = call float @dx.op.tertiary.f32(i32 46, float %3506, float %3498, float %3508)  ; FMad(a,b,c)
  %3510 = fsub fast float %3509, %3503
  %3511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3512 = extractvalue %dx.types.CBufRet.f32 %3511, 2
  %3513 = fsub fast float %3510, %3512
  %3514 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3515 = extractvalue %dx.types.CBufRet.i32 %3514, 0
  %3516 = call i32 @dx.op.binary.i32(i32 40, i32 %3392, i32 %3515)  ; UMin(a,b)
  %3517 = mul i32 %3516, 36
  %3518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3517, i32 undef)  ; BufferLoad(srv,index,wot)
  %3519 = extractvalue %dx.types.ResRet.i32 %3518, 0
  %3520 = add i32 %3517, 4
  %3521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.f32 %3521, 0
  %3523 = fmul fast float %3522, %3414
  %3524 = fmul fast float %3522, %3416
  %3525 = extractvalue %dx.types.CBufRet.f32 %3521, 1
  %3526 = fadd fast float %3523, %3525
  %3527 = fadd fast float %3524, %3525
  %3528 = icmp eq i32 %3519, 0
  br i1 %3528, label %3597, label %3529

; <label>:3529                                    ; preds = %3460
  br label %3530

; <label>:3530                                    ; preds = %3587, %3529
  %3531 = phi float [ %3588, %3587 ], [ 0.000000e+00, %3529 ]
  %3532 = phi float [ %3589, %3587 ], [ 0.000000e+00, %3529 ]
  %3533 = phi float [ %3590, %3587 ], [ 0.000000e+00, %3529 ]
  %3534 = phi float [ %3591, %3587 ], [ 0.000000e+00, %3529 ]
  %3535 = phi float [ %3592, %3587 ], [ 0.000000e+00, %3529 ]
  %3536 = phi float [ %3593, %3587 ], [ 0.000000e+00, %3529 ]
  %3537 = phi i32 [ %3594, %3587 ], [ 0, %3529 ]
  %3538 = shl i32 %3537, 2
  %3539 = add i32 %3405, %3538
  %3540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.f32 %3540, 0
  %3542 = add i32 %3409, %3538
  %3543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3544 = extractvalue %dx.types.ResRet.i32 %3543, 0
  %3545 = add i32 %3544, 0
  %3546 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3545, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3547 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3546, i32 0)  ; GetDimensions(handle,mipLevel)
  %3548 = extractvalue %dx.types.Dimensions %3547, 0
  %3549 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3548)  ; FirstbitLo(value)
  %3550 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3551 = extractvalue %dx.types.CBufRet.i32 %3550, 1
  %3552 = sub nsw i32 %3551, %3549
  %3553 = sitofp i32 %3552 to float
  %3554 = fsub fast float %3438, %3553
  %3555 = call float @dx.op.binary.f32(i32 35, float %3554, float 0.000000e+00)  ; FMax(a,b)
  %3556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3546, %dx.types.Handle %47, float %3526, float %3527, float %3541, float undef, i32 0, i32 0, i32 undef, float %3555)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3557 = extractvalue %dx.types.ResRet.f32 %3556, 0
  %3558 = fcmp fast ogt float %3557, 0.000000e+00
  br i1 %3558, label %3559, label %3587

; <label>:3559                                    ; preds = %3530
  %3560 = add i32 %3520, %3538
  %3561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3560, i32 undef)  ; BufferLoad(srv,index,wot)
  %3562 = extractvalue %dx.types.ResRet.i32 %3561, 0
  %3563 = and i32 %3562, 32767
  %3564 = mul nuw nsw i32 %3563, 928
  %3565 = add nuw nsw i32 %3564, 48
  %3566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3567 = extractvalue %dx.types.ResRet.f32 %3566, 0
  %3568 = extractvalue %dx.types.ResRet.f32 %3566, 1
  %3569 = extractvalue %dx.types.ResRet.f32 %3566, 2
  %3570 = add nuw nsw i32 %3564, 60
  %3571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3570, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.f32 %3571, 0
  %3573 = extractvalue %dx.types.ResRet.f32 %3571, 1
  %3574 = extractvalue %dx.types.ResRet.f32 %3571, 2
  %3575 = fmul fast float %3567, %3557
  %3576 = fmul fast float %3568, %3557
  %3577 = fmul fast float %3569, %3557
  %3578 = fadd fast float %3575, %3531
  %3579 = fadd fast float %3576, %3532
  %3580 = fadd fast float %3577, %3533
  %3581 = fmul fast float %3572, %3557
  %3582 = fmul fast float %3573, %3557
  %3583 = fmul fast float %3574, %3557
  %3584 = fadd fast float %3581, %3534
  %3585 = fadd fast float %3582, %3535
  %3586 = fadd fast float %3583, %3536
  br label %3587

; <label>:3587                                    ; preds = %3559, %3530
  %3588 = phi float [ %3578, %3559 ], [ %3531, %3530 ]
  %3589 = phi float [ %3579, %3559 ], [ %3532, %3530 ]
  %3590 = phi float [ %3580, %3559 ], [ %3533, %3530 ]
  %3591 = phi float [ %3584, %3559 ], [ %3534, %3530 ]
  %3592 = phi float [ %3585, %3559 ], [ %3535, %3530 ]
  %3593 = phi float [ %3586, %3559 ], [ %3536, %3530 ]
  %3594 = add nuw i32 %3537, 1
  %3595 = icmp eq i32 %3594, %3519
  br i1 %3595, label %3596, label %3530

; <label>:3596                                    ; preds = %3587
  br label %3597

; <label>:3597                                    ; preds = %3596, %3460
  %3598 = phi float [ 0.000000e+00, %3460 ], [ %3588, %3596 ]
  %3599 = phi float [ 0.000000e+00, %3460 ], [ %3589, %3596 ]
  %3600 = phi float [ 0.000000e+00, %3460 ], [ %3590, %3596 ]
  %3601 = phi float [ 0.000000e+00, %3460 ], [ %3591, %3596 ]
  %3602 = phi float [ 0.000000e+00, %3460 ], [ %3592, %3596 ]
  %3603 = phi float [ 0.000000e+00, %3460 ], [ %3593, %3596 ]
  %3604 = fadd fast float %3601, %3598
  %3605 = fmul fast float %3604, 0x3F847AE140000000
  %3606 = fadd fast float %3602, %3599
  %3607 = fmul fast float %3606, 0x3F847AE140000000
  %3608 = fadd fast float %3603, %3600
  %3609 = fmul fast float %3608, 0x3F847AE140000000
  br label %3610

; <label>:3610                                    ; preds = %3597, %3394, %3339, %3336, %3307, %3269
  %3611 = phi float [ %3321, %3307 ], [ -1.310720e+05, %3269 ], [ %3513, %3597 ], [ -1.310720e+05, %3339 ], [ -1.310720e+05, %3394 ], [ -1.310720e+05, %3336 ]
  %3612 = phi float [ %3331, %3307 ], [ 0.000000e+00, %3269 ], [ %3605, %3597 ], [ 0.000000e+00, %3339 ], [ 0.000000e+00, %3394 ], [ 0.000000e+00, %3336 ]
  %3613 = phi float [ %3333, %3307 ], [ 0.000000e+00, %3269 ], [ %3607, %3597 ], [ 0.000000e+00, %3339 ], [ 0.000000e+00, %3394 ], [ 0.000000e+00, %3336 ]
  %3614 = phi float [ %3335, %3307 ], [ 0.000000e+00, %3269 ], [ %3609, %3597 ], [ 0.000000e+00, %3339 ], [ 0.000000e+00, %3394 ], [ 0.000000e+00, %3336 ]
  %3615 = phi i1 [ true, %3307 ], [ false, %3269 ], [ true, %3597 ], [ false, %3339 ], [ false, %3394 ], [ false, %3336 ]
  %3616 = and i32 %230, 3
  %3617 = icmp eq i32 %3616, 1
  %3618 = select i1 %3617, float 1.000000e+00, float 0.000000e+00
  %3619 = fsub fast float %3611, %194
  %3620 = call float @dx.op.unary.f32(i32 7, float %3619)  ; Saturate(value)
  %3621 = select i1 %3615, float %3620, float 1.000000e+00
  %3622 = fmul fast float %3621, %3618
  %3623 = icmp eq i32 %3616, 3
  %3624 = select i1 %3623, float 1.000000e+00, float %3622
  %3625 = call float @dx.op.binary.f32(i32 35, float %3211, float %3624)  ; FMax(a,b)
  %3626 = fcmp fast olt float %3624, 1.000000e+00
  %3627 = fcmp uge float %70, 0.000000e+00
  %3628 = and i1 %3627, %3626
  br i1 %3628, label %3629, label %3639

; <label>:3629                                    ; preds = %3610
  %3630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %47, float %70, float %71, float %72, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3631 = extractvalue %dx.types.ResRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.ResRet.f32 %3630, 1
  %3633 = extractvalue %dx.types.ResRet.f32 %3630, 2
  %3634 = fadd fast float %3631, %3625
  %3635 = fcmp ule float %69, 0.000000e+00
  %3636 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3637 = select i1 %3635, float %3636, float 1.000000e+00
  %3638 = fmul fast float %3637, %3633
  br label %3639

; <label>:3639                                    ; preds = %3629, %3610
  %3640 = phi float [ %3634, %3629 ], [ %3625, %3610 ]
  %3641 = phi float [ %3632, %3629 ], [ 0.000000e+00, %3610 ]
  %3642 = phi float [ %3638, %3629 ], [ 0.000000e+00, %3610 ]
  %3643 = call float @dx.op.unary.f32(i32 7, float %3640)  ; Saturate(value)
  %3644 = call float @dx.op.unary.f32(i32 7, float %3641)  ; Saturate(value)
  %3645 = call float @dx.op.unary.f32(i32 7, float %3642)  ; Saturate(value)
  %3646 = fcmp fast une float %3644, 0.000000e+00
  %3647 = fcmp fast une float %3645, 0.000000e+00
  %3648 = or i1 %3646, %3647
  br i1 %3648, label %3649, label %4208

; <label>:3649                                    ; preds = %3639
  br i1 %3646, label %3650, label %3923

; <label>:3650                                    ; preds = %3649
  %3651 = call float @dx.op.unary.f32(i32 23, float %3208)  ; Log(value)
  %3652 = fmul fast float %3651, 4.000000e+00
  %3653 = call float @dx.op.unary.f32(i32 21, float %3652)  ; Exp(value)
  %3654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3655 = extractvalue %dx.types.CBufRet.f32 %3654, 0
  %3656 = fmul fast float %3655, %57
  %3657 = fmul fast float %3655, %58
  %3658 = fmul fast float %3655, %59
  %3659 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %3660 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %3661 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %3662 = call float @dx.op.unary.f32(i32 23, float %3659)  ; Log(value)
  %3663 = call float @dx.op.unary.f32(i32 23, float %3660)  ; Log(value)
  %3664 = call float @dx.op.unary.f32(i32 23, float %3661)  ; Log(value)
  %3665 = fmul fast float %3662, 4.000000e+00
  %3666 = fmul fast float %3663, 4.000000e+00
  %3667 = fmul fast float %3664, 4.000000e+00
  %3668 = call float @dx.op.unary.f32(i32 21, float %3665)  ; Exp(value)
  %3669 = call float @dx.op.unary.f32(i32 21, float %3666)  ; Exp(value)
  %3670 = call float @dx.op.unary.f32(i32 21, float %3667)  ; Exp(value)
  %3671 = fadd fast float %3669, %3668
  %3672 = fadd fast float %3671, %3670
  %3673 = fdiv fast float 1.000000e+00, %3672
  %3674 = fmul fast float %3673, %3668
  %3675 = fcmp fast ogt float %66, 0.000000e+00
  %3676 = fcmp fast ogt float %67, 0.000000e+00
  %3677 = fcmp fast ogt float %68, 0.000000e+00
  %3678 = fcmp fast olt float %66, 0.000000e+00
  %3679 = fcmp fast olt float %67, 0.000000e+00
  %3680 = fcmp fast olt float %68, 0.000000e+00
  %3681 = zext i1 %3675 to i32
  %3682 = zext i1 %3676 to i32
  %3683 = zext i1 %3677 to i32
  %3684 = zext i1 %3678 to i32
  %3685 = zext i1 %3679 to i32
  %3686 = zext i1 %3680 to i32
  %3687 = sub nsw i32 %3681, %3684
  %3688 = sub nsw i32 %3682, %3685
  %3689 = sub nsw i32 %3683, %3686
  %3690 = call float @dx.op.unary.f32(i32 83, float %3656)  ; DerivCoarseX(value)
  %3691 = call float @dx.op.unary.f32(i32 83, float %3657)  ; DerivCoarseX(value)
  %3692 = call float @dx.op.unary.f32(i32 83, float %3658)  ; DerivCoarseX(value)
  %3693 = call float @dx.op.unary.f32(i32 84, float %3656)  ; DerivCoarseY(value)
  %3694 = call float @dx.op.unary.f32(i32 84, float %3657)  ; DerivCoarseY(value)
  %3695 = call float @dx.op.unary.f32(i32 84, float %3658)  ; DerivCoarseY(value)
  %3696 = fcmp fast ole float %262, %3674
  %3697 = fmul fast float %3673, %3671
  %3698 = fcmp fast ole float %262, %3697
  %3699 = select i1 %3698, float %3658, float %3656
  %3700 = select i1 %3698, float %3656, float %3657
  %3701 = select i1 %3696, float %3657, float %3699
  %3702 = select i1 %3696, float %3658, float %3700
  %3703 = select i1 %3698, float %3692, float %3690
  %3704 = select i1 %3698, float %3690, float %3691
  %3705 = select i1 %3696, float %3691, float %3703
  %3706 = select i1 %3696, float %3692, float %3704
  %3707 = select i1 %3698, float %3695, float %3693
  %3708 = select i1 %3698, float %3693, float %3694
  %3709 = select i1 %3696, float %3694, float %3707
  %3710 = select i1 %3696, float %3695, float %3708
  %3711 = call float @dx.op.unary.f32(i32 27, float %3701)  ; Round_ni(value)
  %3712 = call float @dx.op.unary.f32(i32 27, float %3702)  ; Round_ni(value)
  %3713 = fptosi float %3711 to i32
  %3714 = fptosi float %3712 to i32
  %3715 = xor i32 %3714, %3713
  %3716 = sitofp i32 %3715 to float
  %3717 = fptosi float %3716 to i32
  %3718 = sitofp i32 %3717 to float
  %3719 = fmul fast float %3718, 0x3FE3C6EF40000000
  %3720 = frem fast float %3711, 2.560000e+02
  %3721 = frem fast float %3712, 2.560000e+02
  %3722 = fptoui float %3720 to i32
  %3723 = fptoui float %3721 to i32
  %3724 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %3722, i32 %3723, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3725 = extractvalue %dx.types.ResRet.f32 %3724, 0
  %3726 = extractvalue %dx.types.ResRet.f32 %3724, 1
  %3727 = extractvalue %dx.types.ResRet.f32 %3724, 2
  %3728 = fadd fast float %3725, %3719
  %3729 = fadd fast float %3726, %3719
  %3730 = fadd fast float %3727, %3719
  %3731 = call float @dx.op.unary.f32(i32 22, float %3728)  ; Frc(value)
  %3732 = call float @dx.op.unary.f32(i32 22, float %3729)  ; Frc(value)
  %3733 = call float @dx.op.unary.f32(i32 22, float %3730)  ; Frc(value)
  %3734 = fmul fast float %3733, 0x401921FB60000000
  %3735 = call float @dx.op.unary.f32(i32 13, float %3734)  ; Sin(value)
  %3736 = call float @dx.op.unary.f32(i32 12, float %3734)  ; Cos(value)
  %3737 = fsub fast float -0.000000e+00, %3736
  %3738 = fmul fast float %3736, %3701
  %3739 = call float @dx.op.tertiary.f32(i32 46, float %3735, float %3702, float %3738)  ; FMad(a,b,c)
  %3740 = fmul fast float %3735, %3701
  %3741 = call float @dx.op.tertiary.f32(i32 46, float %3737, float %3702, float %3740)  ; FMad(a,b,c)
  %3742 = fadd fast float %3739, %3731
  %3743 = fadd fast float %3741, %3732
  %3744 = extractvalue %dx.types.CBufRet.f32 %3654, 3
  %3745 = bitcast float %3744 to i32
  %3746 = icmp eq i32 %3745, 0
  br i1 %3746, label %3785, label %3747

; <label>:3747                                    ; preds = %3650
  %3748 = add i32 %3745, 0
  %3749 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3748, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3750 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3749, %dx.types.Handle %102, float %3742, float %3743, float undef, float undef, i32 0, i32 0, i32 undef, float %3705, float %3706, float undef, float %3709, float %3710, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3751 = extractvalue %dx.types.ResRet.f32 %3750, 0
  %3752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3753 = extractvalue %dx.types.CBufRet.f32 %3752, 1
  %3754 = extractvalue %dx.types.CBufRet.f32 %3752, 2
  %3755 = fsub fast float 1.000000e+00, %3644
  %3756 = call float @dx.op.binary.f32(i32 35, float %3755, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3757 = bitcast float %3644 to i32
  %3758 = sitofp i32 %3757 to float
  %3759 = fadd fast float %3758, 0xC1CFBF8940000000
  %3760 = fmul fast float %3754, %3759
  %3761 = fadd fast float %3760, 0x41CFBF8940000000
  %3762 = fptosi float %3761 to i32
  %3763 = bitcast i32 %3762 to float
  %3764 = bitcast float %3756 to i32
  %3765 = sitofp i32 %3764 to float
  %3766 = fadd fast float %3765, 0xC1CFBF8940000000
  %3767 = fmul fast float %3766, %3754
  %3768 = fadd fast float %3767, 0x41CFBF8940000000
  %3769 = fptosi float %3768 to i32
  %3770 = bitcast i32 %3769 to float
  %3771 = fmul fast float %3763, %3753
  %3772 = fmul fast float %3770, %3753
  %3773 = fsub fast float %3756, %3771
  %3774 = fadd fast float %3772, %3756
  %3775 = call float @dx.op.unary.f32(i32 7, float %3773)  ; Saturate(value)
  %3776 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3777 = fsub fast float %3751, %3775
  %3778 = fsub fast float %3776, %3775
  %3779 = bitcast float %3778 to i32
  %3780 = sub nsw i32 2129859010, %3779
  %3781 = bitcast i32 %3780 to float
  %3782 = fmul fast float %3781, %3777
  %3783 = call float @dx.op.unary.f32(i32 7, float %3782)  ; Saturate(value)
  %3784 = fcmp fast olt float %3783, 0x3F70101020000000
  br i1 %3784, label %3923, label %3785

; <label>:3785                                    ; preds = %3747, %3650
  %3786 = phi float [ %3783, %3747 ], [ %3644, %3650 ]
  %3787 = fmul fast float %3786, %3653
  %3788 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3789 = extractvalue %dx.types.CBufRet.i32 %3788, 1
  %3790 = extractvalue %dx.types.CBufRet.i32 %3788, 0
  %3791 = add i32 %3790, 0
  %3792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3791, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3793 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3792, %dx.types.Handle %101, float %3742, float %3743, float undef, float undef, i32 0, i32 0, i32 undef, float %3705, float %3706, float undef, float %3709, float %3710, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3794 = extractvalue %dx.types.ResRet.f32 %3793, 0
  %3795 = extractvalue %dx.types.ResRet.f32 %3793, 1
  %3796 = extractvalue %dx.types.ResRet.f32 %3793, 2
  %3797 = extractvalue %dx.types.ResRet.f32 %3793, 3
  %3798 = and i32 %3789, 255
  %3799 = uitofp i32 %3798 to float
  %3800 = lshr i32 %3789, 8
  %3801 = and i32 %3800, 255
  %3802 = uitofp i32 %3801 to float
  %3803 = fmul fast float %3797, %3799
  %3804 = fadd fast float %3803, %3802
  %3805 = fmul fast float %3804, 0x3F70101000000000
  %3806 = fadd fast float %3805, 0xBFB99999A0000000
  %3807 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3808 = fmul fast float %3807, 0x3FF1C71C80000000
  %3809 = call float @dx.op.binary.f32(i32 36, float %3805, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3810 = fsub fast float 1.000000e+00, %3808
  %3811 = call float @dx.op.unary.f32(i32 7, float %3810)  ; Saturate(value)
  %3812 = fmul fast float %3811, %3794
  %3813 = fmul fast float %3811, %3795
  %3814 = fmul fast float %3811, %3796
  %3815 = call float @dx.op.unary.f32(i32 7, float %3812)  ; Saturate(value)
  %3816 = call float @dx.op.unary.f32(i32 7, float %3813)  ; Saturate(value)
  %3817 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  %3818 = fmul fast float %3808, %3794
  %3819 = fmul fast float %3808, %3795
  %3820 = fmul fast float %3808, %3796
  %3821 = fadd fast float %3818, %3809
  %3822 = fadd fast float %3819, %3809
  %3823 = fadd fast float %3820, %3809
  %3824 = call float @dx.op.unary.f32(i32 7, float %3821)  ; Saturate(value)
  %3825 = call float @dx.op.unary.f32(i32 7, float %3822)  ; Saturate(value)
  %3826 = call float @dx.op.unary.f32(i32 7, float %3823)  ; Saturate(value)
  %3827 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3828 = extractvalue %dx.types.CBufRet.i32 %3827, 3
  %3829 = extractvalue %dx.types.CBufRet.i32 %3827, 2
  %3830 = add i32 %3829, 0
  %3831 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3830, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3832 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3831, %dx.types.Handle %101, float %3742, float %3743, float undef, float undef, i32 0, i32 0, i32 undef, float %3705, float %3706, float undef, float %3709, float %3710, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3833 = extractvalue %dx.types.ResRet.f32 %3832, 0
  %3834 = extractvalue %dx.types.ResRet.f32 %3832, 1
  %3835 = extractvalue %dx.types.ResRet.f32 %3832, 2
  %3836 = extractvalue %dx.types.ResRet.f32 %3832, 3
  %3837 = and i32 %3828, 255
  %3838 = uitofp i32 %3837 to float
  %3839 = lshr i32 %3828, 8
  %3840 = and i32 %3839, 255
  %3841 = uitofp i32 %3840 to float
  %3842 = lshr i32 %3828, 16
  %3843 = and i32 %3842, 255
  %3844 = uitofp i32 %3843 to float
  %3845 = fmul fast float %3844, 0x3F70101000000000
  %3846 = fmul fast float %3833, %3838
  %3847 = fadd fast float %3846, %3841
  %3848 = fmul fast float %3847, 0x3F70101000000000
  %3849 = fadd fast float %3834, -5.000000e-01
  %3850 = fadd fast float %3836, -5.000000e-01
  %3851 = fmul fast float %3849, %3845
  %3852 = fmul fast float %3850, %3845
  %3853 = fadd fast float %3851, 5.000000e-01
  %3854 = fadd fast float %3852, 5.000000e-01
  %3855 = fmul fast float %3853, 2.000000e+00
  %3856 = fadd fast float %3855, -1.000000e+00
  %3857 = fmul fast float %3854, 2.000000e+00
  %3858 = fadd fast float %3857, -1.000000e+00
  %3859 = fadd fast float %3856, %3858
  %3860 = fmul fast float %3859, 5.000000e-01
  %3861 = fsub fast float %3856, %3858
  %3862 = fmul fast float %3861, 5.000000e-01
  %3863 = call float @dx.op.unary.f32(i32 6, float %3860)  ; FAbs(value)
  %3864 = fsub fast float 1.000000e+00, %3863
  %3865 = call float @dx.op.unary.f32(i32 6, float %3862)  ; FAbs(value)
  %3866 = fsub fast float %3864, %3865
  %3867 = call float @dx.op.dot3.f32(i32 55, float %3860, float %3862, float %3866, float %3860, float %3862, float %3866)  ; Dot3(ax,ay,az,bx,by,bz)
  %3868 = call float @dx.op.unary.f32(i32 25, float %3867)  ; Rsqrt(value)
  %3869 = fmul fast float %3860, %3868
  %3870 = fmul fast float %3862, %3868
  %3871 = select i1 %3698, i32 %3688, i32 %3689
  %3872 = select i1 %3696, i32 %3687, i32 %3871
  %3873 = sitofp i32 %3872 to float
  %3874 = fmul fast float %3866, %3873
  %3875 = fmul fast float %3874, %3868
  %3876 = select i1 %3698, float %3875, float %3870
  %3877 = select i1 %3698, float %3870, float %3875
  %3878 = select i1 %3696, float %3875, float %3869
  %3879 = select i1 %3696, float %3870, float %3876
  %3880 = select i1 %3696, float %3869, float %3877
  %3881 = fsub fast float %3815, %3248
  %3882 = fsub fast float %3816, %3249
  %3883 = fsub fast float %3817, %3250
  %3884 = fmul fast float %3881, %3787
  %3885 = fmul fast float %3882, %3787
  %3886 = fmul fast float %3883, %3787
  %3887 = fadd fast float %3884, %3248
  %3888 = fadd fast float %3885, %3249
  %3889 = fadd fast float %3886, %3250
  %3890 = fsub fast float %3824, %3233
  %3891 = fsub fast float %3825, %3234
  %3892 = fsub fast float %3826, %3235
  %3893 = fmul fast float %3890, %3787
  %3894 = fmul fast float %3891, %3787
  %3895 = fmul fast float %3892, %3787
  %3896 = fadd fast float %3893, %3233
  %3897 = fadd fast float %3894, %3234
  %3898 = fadd fast float %3895, %3235
  %3899 = fadd fast float %3878, %3199
  %3900 = fadd fast float %3879, %3200
  %3901 = fadd fast float %3880, %3201
  %3902 = call float @dx.op.dot3.f32(i32 55, float %3899, float %3900, float %3901, float %3899, float %3900, float %3901)  ; Dot3(ax,ay,az,bx,by,bz)
  %3903 = call float @dx.op.unary.f32(i32 25, float %3902)  ; Rsqrt(value)
  %3904 = fmul fast float %3899, %3903
  %3905 = fmul fast float %3900, %3903
  %3906 = fmul fast float %3901, %3903
  %3907 = fsub fast float %3904, %3199
  %3908 = fsub fast float %3905, %3200
  %3909 = fsub fast float %3906, %3201
  %3910 = fmul fast float %3907, %3787
  %3911 = fmul fast float %3908, %3787
  %3912 = fmul fast float %3909, %3787
  %3913 = fadd fast float %3910, %3199
  %3914 = fadd fast float %3911, %3200
  %3915 = fadd fast float %3912, %3201
  %3916 = call float @dx.op.binary.f32(i32 36, float %3208, float %3835)  ; FMin(a,b)
  %3917 = fsub fast float %3916, %3208
  %3918 = fmul fast float %3917, %3787
  %3919 = fadd fast float %3918, %3208
  %3920 = fsub fast float %3848, %3236
  %3921 = fmul fast float %3920, %3787
  %3922 = fadd fast float %3921, %3236
  br label %3923

; <label>:3923                                    ; preds = %3785, %3747, %3649
  %3924 = phi float [ %3896, %3785 ], [ %3233, %3747 ], [ %3233, %3649 ]
  %3925 = phi float [ %3897, %3785 ], [ %3234, %3747 ], [ %3234, %3649 ]
  %3926 = phi float [ %3898, %3785 ], [ %3235, %3747 ], [ %3235, %3649 ]
  %3927 = phi float [ %3913, %3785 ], [ %3199, %3747 ], [ %3199, %3649 ]
  %3928 = phi float [ %3914, %3785 ], [ %3200, %3747 ], [ %3200, %3649 ]
  %3929 = phi float [ %3915, %3785 ], [ %3201, %3747 ], [ %3201, %3649 ]
  %3930 = phi float [ %3887, %3785 ], [ %3248, %3747 ], [ %3248, %3649 ]
  %3931 = phi float [ %3888, %3785 ], [ %3249, %3747 ], [ %3249, %3649 ]
  %3932 = phi float [ %3889, %3785 ], [ %3250, %3747 ], [ %3250, %3649 ]
  %3933 = phi float [ %3922, %3785 ], [ %3236, %3747 ], [ %3236, %3649 ]
  %3934 = phi float [ %3919, %3785 ], [ %3208, %3747 ], [ %3208, %3649 ]
  br i1 %3647, label %3935, label %4208

; <label>:3935                                    ; preds = %3923
  %3936 = call float @dx.op.unary.f32(i32 23, float %3934)  ; Log(value)
  %3937 = fmul fast float %3936, 4.000000e+00
  %3938 = call float @dx.op.unary.f32(i32 21, float %3937)  ; Exp(value)
  %3939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %3940 = extractvalue %dx.types.CBufRet.f32 %3939, 0
  %3941 = fmul fast float %3940, %57
  %3942 = fmul fast float %3940, %58
  %3943 = fmul fast float %3940, %59
  %3944 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %3945 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %3946 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %3947 = call float @dx.op.unary.f32(i32 23, float %3944)  ; Log(value)
  %3948 = call float @dx.op.unary.f32(i32 23, float %3945)  ; Log(value)
  %3949 = call float @dx.op.unary.f32(i32 23, float %3946)  ; Log(value)
  %3950 = fmul fast float %3947, 4.000000e+00
  %3951 = fmul fast float %3948, 4.000000e+00
  %3952 = fmul fast float %3949, 4.000000e+00
  %3953 = call float @dx.op.unary.f32(i32 21, float %3950)  ; Exp(value)
  %3954 = call float @dx.op.unary.f32(i32 21, float %3951)  ; Exp(value)
  %3955 = call float @dx.op.unary.f32(i32 21, float %3952)  ; Exp(value)
  %3956 = fadd fast float %3954, %3953
  %3957 = fadd fast float %3956, %3955
  %3958 = fdiv fast float 1.000000e+00, %3957
  %3959 = fmul fast float %3958, %3953
  %3960 = fcmp fast ogt float %66, 0.000000e+00
  %3961 = fcmp fast ogt float %67, 0.000000e+00
  %3962 = fcmp fast ogt float %68, 0.000000e+00
  %3963 = fcmp fast olt float %66, 0.000000e+00
  %3964 = fcmp fast olt float %67, 0.000000e+00
  %3965 = fcmp fast olt float %68, 0.000000e+00
  %3966 = zext i1 %3960 to i32
  %3967 = zext i1 %3961 to i32
  %3968 = zext i1 %3962 to i32
  %3969 = zext i1 %3963 to i32
  %3970 = zext i1 %3964 to i32
  %3971 = zext i1 %3965 to i32
  %3972 = sub nsw i32 %3966, %3969
  %3973 = sub nsw i32 %3967, %3970
  %3974 = sub nsw i32 %3968, %3971
  %3975 = call float @dx.op.unary.f32(i32 83, float %3941)  ; DerivCoarseX(value)
  %3976 = call float @dx.op.unary.f32(i32 83, float %3942)  ; DerivCoarseX(value)
  %3977 = call float @dx.op.unary.f32(i32 83, float %3943)  ; DerivCoarseX(value)
  %3978 = call float @dx.op.unary.f32(i32 84, float %3941)  ; DerivCoarseY(value)
  %3979 = call float @dx.op.unary.f32(i32 84, float %3942)  ; DerivCoarseY(value)
  %3980 = call float @dx.op.unary.f32(i32 84, float %3943)  ; DerivCoarseY(value)
  %3981 = fcmp fast ole float %262, %3959
  %3982 = fmul fast float %3958, %3956
  %3983 = fcmp fast ole float %262, %3982
  %3984 = select i1 %3983, float %3943, float %3941
  %3985 = select i1 %3983, float %3941, float %3942
  %3986 = select i1 %3981, float %3942, float %3984
  %3987 = select i1 %3981, float %3943, float %3985
  %3988 = select i1 %3983, float %3977, float %3975
  %3989 = select i1 %3983, float %3975, float %3976
  %3990 = select i1 %3981, float %3976, float %3988
  %3991 = select i1 %3981, float %3977, float %3989
  %3992 = select i1 %3983, float %3980, float %3978
  %3993 = select i1 %3983, float %3978, float %3979
  %3994 = select i1 %3981, float %3979, float %3992
  %3995 = select i1 %3981, float %3980, float %3993
  %3996 = call float @dx.op.unary.f32(i32 27, float %3986)  ; Round_ni(value)
  %3997 = call float @dx.op.unary.f32(i32 27, float %3987)  ; Round_ni(value)
  %3998 = fptosi float %3996 to i32
  %3999 = fptosi float %3997 to i32
  %4000 = xor i32 %3999, %3998
  %4001 = sitofp i32 %4000 to float
  %4002 = fptosi float %4001 to i32
  %4003 = sitofp i32 %4002 to float
  %4004 = fmul fast float %4003, 0x3FE3C6EF40000000
  %4005 = frem fast float %3996, 2.560000e+02
  %4006 = frem fast float %3997, 2.560000e+02
  %4007 = fptoui float %4005 to i32
  %4008 = fptoui float %4006 to i32
  %4009 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %4007, i32 %4008, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4010 = extractvalue %dx.types.ResRet.f32 %4009, 0
  %4011 = extractvalue %dx.types.ResRet.f32 %4009, 1
  %4012 = extractvalue %dx.types.ResRet.f32 %4009, 2
  %4013 = fadd fast float %4010, %4004
  %4014 = fadd fast float %4011, %4004
  %4015 = fadd fast float %4012, %4004
  %4016 = call float @dx.op.unary.f32(i32 22, float %4013)  ; Frc(value)
  %4017 = call float @dx.op.unary.f32(i32 22, float %4014)  ; Frc(value)
  %4018 = call float @dx.op.unary.f32(i32 22, float %4015)  ; Frc(value)
  %4019 = fmul fast float %4018, 0x401921FB60000000
  %4020 = call float @dx.op.unary.f32(i32 13, float %4019)  ; Sin(value)
  %4021 = call float @dx.op.unary.f32(i32 12, float %4019)  ; Cos(value)
  %4022 = fsub fast float -0.000000e+00, %4021
  %4023 = fmul fast float %4021, %3986
  %4024 = call float @dx.op.tertiary.f32(i32 46, float %4020, float %3987, float %4023)  ; FMad(a,b,c)
  %4025 = fmul fast float %4020, %3986
  %4026 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %3987, float %4025)  ; FMad(a,b,c)
  %4027 = fadd fast float %4024, %4016
  %4028 = fadd fast float %4026, %4017
  %4029 = extractvalue %dx.types.CBufRet.f32 %3939, 3
  %4030 = bitcast float %4029 to i32
  %4031 = icmp eq i32 %4030, 0
  br i1 %4031, label %4070, label %4032

; <label>:4032                                    ; preds = %3935
  %4033 = add i32 %4030, 0
  %4034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4035 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4034, %dx.types.Handle %102, float %4027, float %4028, float undef, float undef, i32 0, i32 0, i32 undef, float %3990, float %3991, float undef, float %3994, float %3995, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4036 = extractvalue %dx.types.ResRet.f32 %4035, 0
  %4037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4038 = extractvalue %dx.types.CBufRet.f32 %4037, 1
  %4039 = extractvalue %dx.types.CBufRet.f32 %4037, 2
  %4040 = fsub fast float 1.000000e+00, %3645
  %4041 = call float @dx.op.binary.f32(i32 35, float %4040, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4042 = bitcast float %3645 to i32
  %4043 = sitofp i32 %4042 to float
  %4044 = fadd fast float %4043, 0xC1CFBF8940000000
  %4045 = fmul fast float %4039, %4044
  %4046 = fadd fast float %4045, 0x41CFBF8940000000
  %4047 = fptosi float %4046 to i32
  %4048 = bitcast i32 %4047 to float
  %4049 = bitcast float %4041 to i32
  %4050 = sitofp i32 %4049 to float
  %4051 = fadd fast float %4050, 0xC1CFBF8940000000
  %4052 = fmul fast float %4051, %4039
  %4053 = fadd fast float %4052, 0x41CFBF8940000000
  %4054 = fptosi float %4053 to i32
  %4055 = bitcast i32 %4054 to float
  %4056 = fmul fast float %4048, %4038
  %4057 = fmul fast float %4055, %4038
  %4058 = fsub fast float %4041, %4056
  %4059 = fadd fast float %4057, %4041
  %4060 = call float @dx.op.unary.f32(i32 7, float %4058)  ; Saturate(value)
  %4061 = call float @dx.op.unary.f32(i32 7, float %4059)  ; Saturate(value)
  %4062 = fsub fast float %4036, %4060
  %4063 = fsub fast float %4061, %4060
  %4064 = bitcast float %4063 to i32
  %4065 = sub nsw i32 2129859010, %4064
  %4066 = bitcast i32 %4065 to float
  %4067 = fmul fast float %4066, %4062
  %4068 = call float @dx.op.unary.f32(i32 7, float %4067)  ; Saturate(value)
  %4069 = fcmp fast olt float %4068, 0x3F70101020000000
  br i1 %4069, label %4208, label %4070

; <label>:4070                                    ; preds = %4032, %3935
  %4071 = phi float [ %4068, %4032 ], [ %3645, %3935 ]
  %4072 = fmul fast float %4071, %3938
  %4073 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4074 = extractvalue %dx.types.CBufRet.i32 %4073, 1
  %4075 = extractvalue %dx.types.CBufRet.i32 %4073, 0
  %4076 = add i32 %4075, 0
  %4077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4076, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4078 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4077, %dx.types.Handle %101, float %4027, float %4028, float undef, float undef, i32 0, i32 0, i32 undef, float %3990, float %3991, float undef, float %3994, float %3995, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4079 = extractvalue %dx.types.ResRet.f32 %4078, 0
  %4080 = extractvalue %dx.types.ResRet.f32 %4078, 1
  %4081 = extractvalue %dx.types.ResRet.f32 %4078, 2
  %4082 = extractvalue %dx.types.ResRet.f32 %4078, 3
  %4083 = and i32 %4074, 255
  %4084 = uitofp i32 %4083 to float
  %4085 = lshr i32 %4074, 8
  %4086 = and i32 %4085, 255
  %4087 = uitofp i32 %4086 to float
  %4088 = fmul fast float %4082, %4084
  %4089 = fadd fast float %4088, %4087
  %4090 = fmul fast float %4089, 0x3F70101000000000
  %4091 = fadd fast float %4090, 0xBFB99999A0000000
  %4092 = call float @dx.op.unary.f32(i32 7, float %4091)  ; Saturate(value)
  %4093 = fmul fast float %4092, 0x3FF1C71C80000000
  %4094 = call float @dx.op.binary.f32(i32 36, float %4090, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4095 = fsub fast float 1.000000e+00, %4093
  %4096 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4097 = fmul fast float %4096, %4079
  %4098 = fmul fast float %4096, %4080
  %4099 = fmul fast float %4096, %4081
  %4100 = call float @dx.op.unary.f32(i32 7, float %4097)  ; Saturate(value)
  %4101 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  %4102 = call float @dx.op.unary.f32(i32 7, float %4099)  ; Saturate(value)
  %4103 = fmul fast float %4093, %4079
  %4104 = fmul fast float %4093, %4080
  %4105 = fmul fast float %4093, %4081
  %4106 = fadd fast float %4103, %4094
  %4107 = fadd fast float %4104, %4094
  %4108 = fadd fast float %4105, %4094
  %4109 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4110 = call float @dx.op.unary.f32(i32 7, float %4107)  ; Saturate(value)
  %4111 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  %4112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4113 = extractvalue %dx.types.CBufRet.i32 %4112, 3
  %4114 = extractvalue %dx.types.CBufRet.i32 %4112, 2
  %4115 = add i32 %4114, 0
  %4116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4115, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4117 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4116, %dx.types.Handle %101, float %4027, float %4028, float undef, float undef, i32 0, i32 0, i32 undef, float %3990, float %3991, float undef, float %3994, float %3995, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4118 = extractvalue %dx.types.ResRet.f32 %4117, 0
  %4119 = extractvalue %dx.types.ResRet.f32 %4117, 1
  %4120 = extractvalue %dx.types.ResRet.f32 %4117, 2
  %4121 = extractvalue %dx.types.ResRet.f32 %4117, 3
  %4122 = and i32 %4113, 255
  %4123 = uitofp i32 %4122 to float
  %4124 = lshr i32 %4113, 8
  %4125 = and i32 %4124, 255
  %4126 = uitofp i32 %4125 to float
  %4127 = lshr i32 %4113, 16
  %4128 = and i32 %4127, 255
  %4129 = uitofp i32 %4128 to float
  %4130 = fmul fast float %4129, 0x3F70101000000000
  %4131 = fmul fast float %4118, %4123
  %4132 = fadd fast float %4131, %4126
  %4133 = fmul fast float %4132, 0x3F70101000000000
  %4134 = fadd fast float %4119, -5.000000e-01
  %4135 = fadd fast float %4121, -5.000000e-01
  %4136 = fmul fast float %4134, %4130
  %4137 = fmul fast float %4135, %4130
  %4138 = fadd fast float %4136, 5.000000e-01
  %4139 = fadd fast float %4137, 5.000000e-01
  %4140 = fmul fast float %4138, 2.000000e+00
  %4141 = fadd fast float %4140, -1.000000e+00
  %4142 = fmul fast float %4139, 2.000000e+00
  %4143 = fadd fast float %4142, -1.000000e+00
  %4144 = fadd fast float %4141, %4143
  %4145 = fmul fast float %4144, 5.000000e-01
  %4146 = fsub fast float %4141, %4143
  %4147 = fmul fast float %4146, 5.000000e-01
  %4148 = call float @dx.op.unary.f32(i32 6, float %4145)  ; FAbs(value)
  %4149 = fsub fast float 1.000000e+00, %4148
  %4150 = call float @dx.op.unary.f32(i32 6, float %4147)  ; FAbs(value)
  %4151 = fsub fast float %4149, %4150
  %4152 = call float @dx.op.dot3.f32(i32 55, float %4145, float %4147, float %4151, float %4145, float %4147, float %4151)  ; Dot3(ax,ay,az,bx,by,bz)
  %4153 = call float @dx.op.unary.f32(i32 25, float %4152)  ; Rsqrt(value)
  %4154 = fmul fast float %4145, %4153
  %4155 = fmul fast float %4147, %4153
  %4156 = select i1 %3983, i32 %3973, i32 %3974
  %4157 = select i1 %3981, i32 %3972, i32 %4156
  %4158 = sitofp i32 %4157 to float
  %4159 = fmul fast float %4151, %4158
  %4160 = fmul fast float %4159, %4153
  %4161 = select i1 %3983, float %4160, float %4155
  %4162 = select i1 %3983, float %4155, float %4160
  %4163 = select i1 %3981, float %4160, float %4154
  %4164 = select i1 %3981, float %4155, float %4161
  %4165 = select i1 %3981, float %4154, float %4162
  %4166 = fsub fast float %4100, %3930
  %4167 = fsub fast float %4101, %3931
  %4168 = fsub fast float %4102, %3932
  %4169 = fmul fast float %4166, %4072
  %4170 = fmul fast float %4167, %4072
  %4171 = fmul fast float %4168, %4072
  %4172 = fadd fast float %4169, %3930
  %4173 = fadd fast float %4170, %3931
  %4174 = fadd fast float %4171, %3932
  %4175 = fsub fast float %4109, %3924
  %4176 = fsub fast float %4110, %3925
  %4177 = fsub fast float %4111, %3926
  %4178 = fmul fast float %4175, %4072
  %4179 = fmul fast float %4176, %4072
  %4180 = fmul fast float %4177, %4072
  %4181 = fadd fast float %4178, %3924
  %4182 = fadd fast float %4179, %3925
  %4183 = fadd fast float %4180, %3926
  %4184 = fadd fast float %4163, %3927
  %4185 = fadd fast float %4164, %3928
  %4186 = fadd fast float %4165, %3929
  %4187 = call float @dx.op.dot3.f32(i32 55, float %4184, float %4185, float %4186, float %4184, float %4185, float %4186)  ; Dot3(ax,ay,az,bx,by,bz)
  %4188 = call float @dx.op.unary.f32(i32 25, float %4187)  ; Rsqrt(value)
  %4189 = fmul fast float %4184, %4188
  %4190 = fmul fast float %4185, %4188
  %4191 = fmul fast float %4186, %4188
  %4192 = fsub fast float %4189, %3927
  %4193 = fsub fast float %4190, %3928
  %4194 = fsub fast float %4191, %3929
  %4195 = fmul fast float %4192, %4072
  %4196 = fmul fast float %4193, %4072
  %4197 = fmul fast float %4194, %4072
  %4198 = fadd fast float %4195, %3927
  %4199 = fadd fast float %4196, %3928
  %4200 = fadd fast float %4197, %3929
  %4201 = call float @dx.op.binary.f32(i32 36, float %3934, float %4120)  ; FMin(a,b)
  %4202 = fsub fast float %4201, %3934
  %4203 = fmul fast float %4202, %4072
  %4204 = fadd fast float %4203, %3934
  %4205 = fsub fast float %4133, %3933
  %4206 = fmul fast float %4205, %4072
  %4207 = fadd fast float %4206, %3933
  br label %4208

; <label>:4208                                    ; preds = %4070, %4032, %3923, %3639
  %4209 = phi float [ %4181, %4070 ], [ %3924, %4032 ], [ %3924, %3923 ], [ %3233, %3639 ]
  %4210 = phi float [ %4182, %4070 ], [ %3925, %4032 ], [ %3925, %3923 ], [ %3234, %3639 ]
  %4211 = phi float [ %4183, %4070 ], [ %3926, %4032 ], [ %3926, %3923 ], [ %3235, %3639 ]
  %4212 = phi float [ %4198, %4070 ], [ %3927, %4032 ], [ %3927, %3923 ], [ %3199, %3639 ]
  %4213 = phi float [ %4199, %4070 ], [ %3928, %4032 ], [ %3928, %3923 ], [ %3200, %3639 ]
  %4214 = phi float [ %4200, %4070 ], [ %3929, %4032 ], [ %3929, %3923 ], [ %3201, %3639 ]
  %4215 = phi float [ %4172, %4070 ], [ %3930, %4032 ], [ %3930, %3923 ], [ %3248, %3639 ]
  %4216 = phi float [ %4173, %4070 ], [ %3931, %4032 ], [ %3931, %3923 ], [ %3249, %3639 ]
  %4217 = phi float [ %4174, %4070 ], [ %3932, %4032 ], [ %3932, %3923 ], [ %3250, %3639 ]
  %4218 = phi float [ %4207, %4070 ], [ %3933, %4032 ], [ %3933, %3923 ], [ %3236, %3639 ]
  %4219 = phi float [ %4204, %4070 ], [ %3934, %4032 ], [ %3934, %3923 ], [ %3208, %3639 ]
  %4220 = fcmp fast une float %3643, 0.000000e+00
  %4221 = call float @dx.op.dot3.f32(i32 55, float %192, float %193, float %194, float %192, float %193, float %194)  ; Dot3(ax,ay,az,bx,by,bz)
  %4222 = call float @dx.op.unary.f32(i32 25, float %4221)  ; Rsqrt(value)
  br i1 %4220, label %4230, label %4223

; <label>:4223                                    ; preds = %4208
  %4224 = fmul fast float %4222, %192
  %4225 = fmul fast float %4222, %193
  %4226 = fmul fast float %4222, %194
  %4227 = fsub fast float -0.000000e+00, %4224
  %4228 = fsub fast float -0.000000e+00, %4225
  %4229 = fsub fast float -0.000000e+00, %4226
  br label %4397

; <label>:4230                                    ; preds = %4208
  %4231 = fmul fast float %192, %4222
  %4232 = fsub fast float -0.000000e+00, %4231
  %4233 = fmul fast float %193, %4222
  %4234 = fsub fast float -0.000000e+00, %4233
  %4235 = fmul fast float %194, %4222
  %4236 = fsub fast float -0.000000e+00, %4235
  %4237 = call float @dx.op.dot3.f32(i32 55, float %4232, float %4234, float %4236, float %112, float %113, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %4238 = fmul fast float %3643, 2.500000e+00
  %4239 = call float @dx.op.unary.f32(i32 7, float %4238)  ; Saturate(value)
  %4240 = fmul fast float %3643, 0x4013FFFFE0000000
  %4241 = fadd fast float %4240, 0xBFFFFFFFE0000000
  %4242 = call float @dx.op.unary.f32(i32 7, float %4241)  ; Saturate(value)
  %4243 = fmul fast float %3643, 0x4004000020000000
  %4244 = fadd fast float %4243, 0xBFF8000040000000
  %4245 = call float @dx.op.unary.f32(i32 7, float %4244)  ; Saturate(value)
  %4246 = fmul fast float %3215, 1.000000e+01
  %4247 = call float @dx.op.unary.f32(i32 7, float %4246)  ; Saturate(value)
  %4248 = fmul fast float %4247, 2.000000e+00
  %4249 = fsub fast float 3.000000e+00, %4248
  %4250 = fmul fast float %4247, %4247
  %4251 = fmul fast float %4250, %4249
  %4252 = fsub fast float 1.000000e+00, %4251
  %4253 = fsub fast float 0x3FE3333340000000, %4218
  %4254 = fmul fast float %4253, 0x400AAAAAA0000000
  %4255 = call float @dx.op.unary.f32(i32 7, float %4254)  ; Saturate(value)
  %4256 = fmul fast float %4252, %4255
  %4257 = fmul fast float %4215, 0x3FEA2B8620000000
  %4258 = fmul fast float %4216, 0x3FEA2B8620000000
  %4259 = fmul fast float %4217, 0x3FEA2B8620000000
  %4260 = fadd fast float %4257, 0x3FC81DFBA0000000
  %4261 = fmul fast float %4260, %4215
  %4262 = fadd fast float %4261, 0x3F910E6020000000
  %4263 = fadd fast float %4258, 0x3FC81DFBA0000000
  %4264 = fmul fast float %4263, %4216
  %4265 = fadd fast float %4264, 0x3F910E6020000000
  %4266 = fadd fast float %4259, 0x3FC81DFBA0000000
  %4267 = fmul fast float %4266, %4217
  %4268 = fadd fast float %4267, 0x3F910E6020000000
  %4269 = call float @dx.op.unary.f32(i32 7, float %4262)  ; Saturate(value)
  %4270 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4271 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4272 = fsub fast float %4269, %4215
  %4273 = fsub fast float %4270, %4216
  %4274 = fsub fast float %4271, %4217
  %4275 = fmul fast float %4272, %4239
  %4276 = fmul fast float %4275, %4256
  %4277 = fmul fast float %4273, %4239
  %4278 = fmul fast float %4277, %4256
  %4279 = fmul fast float %4274, %4239
  %4280 = fmul fast float %4279, %4256
  %4281 = fadd fast float %4276, %4215
  %4282 = fadd fast float %4278, %4216
  %4283 = fadd fast float %4280, %4217
  %4284 = fmul fast float %4219, %4219
  %4285 = fmul fast float %4284, %4284
  %4286 = fadd fast float %4242, 1.000000e+00
  %4287 = fsub fast float %4286, %4256
  %4288 = call float @dx.op.unary.f32(i32 7, float %4287)  ; Saturate(value)
  %4289 = call float @dx.op.dot3.f32(i32 55, float %112, float %113, float %114, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4290 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4291 = fsub fast float 1.000000e+00, %4285
  %4292 = call float @dx.op.binary.f32(i32 36, float %4288, float %4291)  ; FMin(a,b)
  %4293 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4294 = call float @dx.op.binary.f32(i32 35, float %4292, float %4293)  ; FMax(a,b)
  %4295 = fadd fast float %4290, 0xBFE4CCCCC0000000
  %4296 = fmul fast float %4295, 0x4006DB6DA0000000
  %4297 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4298 = fmul fast float %4297, 2.000000e+00
  %4299 = fsub fast float 3.000000e+00, %4298
  %4300 = bitcast float %4209 to i32
  %4301 = ashr i32 %4300, 1
  %4302 = add nsw i32 %4301, 532487669
  %4303 = bitcast i32 %4302 to float
  %4304 = fsub fast float 1.000000e+00, %4303
  %4305 = bitcast float %4304 to i32
  %4306 = sub nsw i32 2129859010, %4305
  %4307 = bitcast i32 %4306 to float
  %4308 = fmul fast float %4307, 2.000000e+00
  %4309 = bitcast float %4210 to i32
  %4310 = ashr i32 %4309, 1
  %4311 = add nsw i32 %4310, 532487669
  %4312 = bitcast i32 %4311 to float
  %4313 = fsub fast float 1.000000e+00, %4312
  %4314 = bitcast float %4313 to i32
  %4315 = sub nsw i32 2129859010, %4314
  %4316 = bitcast i32 %4315 to float
  %4317 = fmul fast float %4316, 2.000000e+00
  %4318 = bitcast float %4211 to i32
  %4319 = ashr i32 %4318, 1
  %4320 = add nsw i32 %4319, 532487669
  %4321 = bitcast i32 %4320 to float
  %4322 = fsub fast float 1.000000e+00, %4321
  %4323 = bitcast float %4322 to i32
  %4324 = sub nsw i32 2129859010, %4323
  %4325 = bitcast i32 %4324 to float
  %4326 = fmul fast float %4325, 2.000000e+00
  %4327 = fsub fast float 0x4002A9FBE0000000, %4308
  %4328 = fadd fast float %4308, 0x3FD54FDF00000000
  %4329 = bitcast float %4328 to i32
  %4330 = sub nsw i32 2129859010, %4329
  %4331 = bitcast i32 %4330 to float
  %4332 = fmul fast float %4331, %4327
  %4333 = fmul fast float %4332, %4332
  %4334 = fsub fast float 0x4002A9FBE0000000, %4317
  %4335 = fadd fast float %4317, 0x3FD54FDF00000000
  %4336 = bitcast float %4335 to i32
  %4337 = sub nsw i32 2129859010, %4336
  %4338 = bitcast i32 %4337 to float
  %4339 = fmul fast float %4338, %4334
  %4340 = fmul fast float %4339, %4339
  %4341 = fsub fast float 0x4002A9FBE0000000, %4326
  %4342 = fadd fast float %4326, 0x3FD54FDF00000000
  %4343 = bitcast float %4342 to i32
  %4344 = sub nsw i32 2129859010, %4343
  %4345 = bitcast i32 %4344 to float
  %4346 = fmul fast float %4345, %4341
  %4347 = fmul fast float %4346, %4346
  %4348 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4333)  ; FMax(a,b)
  %4349 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4340)  ; FMax(a,b)
  %4350 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4347)  ; FMax(a,b)
  %4351 = fsub fast float 1.000000e+00, %4237
  %4352 = fadd fast float %4351, %4252
  %4353 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4354 = fsub fast float 1.000000e+00, %3624
  %4355 = fmul fast float %4294, %4354
  %4356 = fmul fast float %4297, %4297
  %4357 = fmul fast float %4356, %4355
  %4358 = fmul fast float %4357, %4299
  %4359 = fmul fast float %4354, 0xBFE99999A0000000
  %4360 = fmul fast float %4359, %4239
  %4361 = fmul fast float %4360, %4256
  %4362 = fadd fast float %4361, 1.000000e+00
  %4363 = fadd fast float %4218, -1.000000e+00
  %4364 = fmul fast float %4362, %4363
  %4365 = fadd fast float %4364, 1.000000e+00
  %4366 = fsub fast float %4348, %4209
  %4367 = fsub fast float %4349, %4210
  %4368 = fsub fast float %4350, %4211
  %4369 = fmul fast float %4358, %4366
  %4370 = fmul fast float %4358, %4367
  %4371 = fmul fast float %4358, %4368
  %4372 = fadd fast float %4369, %4209
  %4373 = fadd fast float %4370, %4210
  %4374 = fadd fast float %4371, %4211
  %4375 = fsub fast float %112, %4212
  %4376 = fsub fast float %113, %4213
  %4377 = fsub fast float %114, %4214
  %4378 = fmul fast float %4358, %4375
  %4379 = fmul fast float %4358, %4376
  %4380 = fmul fast float %4358, %4377
  %4381 = fadd fast float %4378, %4212
  %4382 = fadd fast float %4379, %4213
  %4383 = fadd fast float %4380, %4214
  %4384 = fmul fast float %4358, %4353
  %4385 = call float @dx.op.unary.f32(i32 7, float %4365)  ; Saturate(value)
  %4386 = fsub fast float 1.000000e+00, %4385
  %4387 = fmul fast float %4384, %4386
  %4388 = fadd fast float %4387, %4385
  %4389 = fsub fast float 1.000000e+00, %4219
  %4390 = fmul fast float %4358, %4389
  %4391 = fadd fast float %4390, %4219
  %4392 = call float @dx.op.dot3.f32(i32 55, float %4381, float %4382, float %4383, float %4381, float %4382, float %4383)  ; Dot3(ax,ay,az,bx,by,bz)
  %4393 = call float @dx.op.unary.f32(i32 25, float %4392)  ; Rsqrt(value)
  %4394 = fmul fast float %4381, %4393
  %4395 = fmul fast float %4382, %4393
  %4396 = fmul fast float %4383, %4393
  br label %4397

; <label>:4397                                    ; preds = %4230, %4223
  %4398 = phi float [ %4229, %4223 ], [ %4236, %4230 ]
  %4399 = phi float [ %4228, %4223 ], [ %4234, %4230 ]
  %4400 = phi float [ %4227, %4223 ], [ %4232, %4230 ]
  %4401 = phi float [ %4226, %4223 ], [ %4235, %4230 ]
  %4402 = phi float [ %4225, %4223 ], [ %4233, %4230 ]
  %4403 = phi float [ %4224, %4223 ], [ %4231, %4230 ]
  %4404 = phi float [ %4209, %4223 ], [ %4372, %4230 ]
  %4405 = phi float [ %4210, %4223 ], [ %4373, %4230 ]
  %4406 = phi float [ %4211, %4223 ], [ %4374, %4230 ]
  %4407 = phi float [ %4212, %4223 ], [ %4394, %4230 ]
  %4408 = phi float [ %4213, %4223 ], [ %4395, %4230 ]
  %4409 = phi float [ %4214, %4223 ], [ %4396, %4230 ]
  %4410 = phi float [ %4215, %4223 ], [ %4281, %4230 ]
  %4411 = phi float [ %4216, %4223 ], [ %4282, %4230 ]
  %4412 = phi float [ %4217, %4223 ], [ %4283, %4230 ]
  %4413 = phi float [ %4218, %4223 ], [ %4388, %4230 ]
  %4414 = phi float [ %4219, %4223 ], [ %4391, %4230 ]
  %4415 = fsub fast float -0.000000e+00, %194
  %4416 = select i1 %251, float 0.000000e+00, float %4406
  %4417 = call float @dx.op.dot3.f32(i32 55, float %4407, float %4408, float %4409, float %4400, float %4399, float %4398)  ; Dot3(ax,ay,az,bx,by,bz)
  %4418 = call float @dx.op.unary.f32(i32 7, float %4417)  ; Saturate(value)
  %4419 = call float @dx.op.dot3.f32(i32 55, float %4403, float %4402, float %4401, float %4407, float %4408, float %4409)  ; Dot3(ax,ay,az,bx,by,bz)
  %4420 = fmul fast float %4419, 2.000000e+00
  %4421 = fmul fast float %4420, %4407
  %4422 = fmul fast float %4420, %4408
  %4423 = fmul fast float %4420, %4409
  %4424 = fsub fast float %4403, %4421
  %4425 = fsub fast float %4402, %4422
  %4426 = fsub fast float %4401, %4423
  %4427 = call float @dx.op.binary.f32(i32 36, float %4414, float 1.000000e+00)  ; FMin(a,b)
  %4428 = fsub fast float 1.000000e+00, %4414
  %4429 = bitcast float %4428 to i32
  %4430 = sub nsw i32 2129859010, %4429
  %4431 = bitcast i32 %4430 to float
  %4432 = fsub fast float 1.000000e+00, %76
  %4433 = call float @dx.op.dot3.f32(i32 55, float %132, float %133, float %134, float %112, float %113, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %4434 = call float @dx.op.binary.f32(i32 35, float %4433, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4435 = fdiv fast float %4432, %4434
  %4436 = call float @dx.op.dot3.f32(i32 55, float %4407, float %4408, float %4409, float %112, float %113, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %4437 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4438 = fmul fast float %4437, 5.000000e-01
  %4439 = fadd fast float %4438, 5.000000e-01
  %4440 = fmul fast float %4439, %76
  %4441 = call float @dx.op.dot3.f32(i32 55, float %4407, float %4408, float %4409, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %4442 = call float @dx.op.unary.f32(i32 7, float %4441)  ; Saturate(value)
  %4443 = fmul fast float %4442, %4435
  %4444 = fadd fast float %4440, %4443
  %4445 = fsub fast float 5.000000e-01, %4438
  %4446 = fmul fast float %4445, %4410
  %4447 = fmul fast float %4445, %4411
  %4448 = fmul fast float %4445, %4412
  %4449 = fadd fast float %4444, %4446
  %4450 = fadd fast float %4444, %4447
  %4451 = fadd fast float %4444, %4448
  %4452 = call float @dx.op.dot3.f32(i32 55, float %4424, float %4425, float %4426, float %112, float %113, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %4453 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4454 = fmul fast float %4453, 5.000000e-01
  %4455 = fadd fast float %4454, 5.000000e-01
  %4456 = fmul fast float %4455, %76
  %4457 = call float @dx.op.dot3.f32(i32 55, float %4424, float %4425, float %4426, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %4458 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4459 = fmul fast float %4458, %4435
  %4460 = fadd fast float %4456, %4459
  %4461 = fsub fast float 5.000000e-01, %4454
  %4462 = fmul fast float %4461, %4410
  %4463 = fmul fast float %4461, %4411
  %4464 = fmul fast float %4461, %4412
  %4465 = fadd fast float %4460, %4462
  %4466 = fadd fast float %4460, %4463
  %4467 = fadd fast float %4460, %4464
  %4468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.f32 %4468, 0
  %4470 = call float @dx.op.binary.f32(i32 36, float %4410, float %4469)  ; FMin(a,b)
  %4471 = fsub fast float 1.000000e+00, %4427
  %4472 = fmul fast float %4470, %4471
  %4473 = fsub fast float 1.000000e+00, %4472
  %4474 = bitcast float %4473 to i32
  %4475 = sub nsw i32 2129859010, %4474
  %4476 = bitcast i32 %4475 to float
  %4477 = call float @dx.op.binary.f32(i32 36, float %4411, float %4469)  ; FMin(a,b)
  %4478 = fmul fast float %4477, %4471
  %4479 = fsub fast float 1.000000e+00, %4478
  %4480 = bitcast float %4479 to i32
  %4481 = sub nsw i32 2129859010, %4480
  %4482 = bitcast i32 %4481 to float
  %4483 = call float @dx.op.binary.f32(i32 36, float %4412, float %4469)  ; FMin(a,b)
  %4484 = fmul fast float %4483, %4471
  %4485 = fsub fast float 1.000000e+00, %4484
  %4486 = bitcast float %4485 to i32
  %4487 = sub nsw i32 2129859010, %4486
  %4488 = bitcast i32 %4487 to float
  %4489 = fmul fast float %4427, %77
  %4490 = fmul fast float %4489, %4449
  %4491 = fmul fast float %4490, %4476
  %4492 = fmul fast float %4427, %78
  %4493 = fmul fast float %4492, %4450
  %4494 = fmul fast float %4493, %4482
  %4495 = fmul fast float %4427, %79
  %4496 = fmul fast float %4495, %4451
  %4497 = fmul fast float %4496, %4488
  %4498 = call float @dx.op.binary.f32(i32 36, float %4404, float %4469)  ; FMin(a,b)
  %4499 = fmul fast float %4498, %4471
  %4500 = fsub fast float 1.000000e+00, %4499
  %4501 = bitcast float %4500 to i32
  %4502 = sub nsw i32 2129859010, %4501
  %4503 = bitcast i32 %4502 to float
  %4504 = call float @dx.op.binary.f32(i32 36, float %4405, float %4469)  ; FMin(a,b)
  %4505 = fmul fast float %4504, %4471
  %4506 = fsub fast float 1.000000e+00, %4505
  %4507 = bitcast float %4506 to i32
  %4508 = sub nsw i32 2129859010, %4507
  %4509 = bitcast i32 %4508 to float
  %4510 = call float @dx.op.binary.f32(i32 36, float %4416, float %4469)  ; FMin(a,b)
  %4511 = fmul fast float %4510, %4471
  %4512 = fsub fast float 1.000000e+00, %4511
  %4513 = bitcast float %4512 to i32
  %4514 = sub nsw i32 2129859010, %4513
  %4515 = bitcast i32 %4514 to float
  %4516 = fmul fast float %4489, %4465
  %4517 = fmul fast float %4516, %4503
  %4518 = fmul fast float %4492, %4466
  %4519 = fmul fast float %4518, %4509
  %4520 = fmul fast float %4495, %4467
  %4521 = fmul fast float %4520, %4515
  %4522 = call float @dx.op.dot3.f32(i32 55, float %4491, float %4494, float %4497, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4523 = select i1 %251, float 0.000000e+00, float %4491
  %4524 = select i1 %251, float %4522, float %4494
  %4525 = select i1 %251, float 0.000000e+00, float %4497
  %4526 = call float @dx.op.dot3.f32(i32 55, float %4517, float %4519, float %4521, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4527 = select i1 %251, float 0.000000e+00, float %4517
  %4528 = select i1 %251, float %4526, float %4519
  %4529 = select i1 %251, float 0.000000e+00, float %4521
  %4530 = fmul fast float %4418, 9.843750e-01
  %4531 = fmul fast float %4413, 9.843750e-01
  %4532 = fadd fast float %4530, 7.812500e-03
  %4533 = fadd fast float %4531, 7.812500e-03
  %4534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %49, float %4532, float %4533, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4535 = extractvalue %dx.types.ResRet.f32 %4534, 2
  %4536 = extractvalue %dx.types.ResRet.f32 %4534, 3
  %4537 = fmul fast float %4535, %4404
  %4538 = fmul fast float %4535, %4405
  %4539 = fmul fast float %4535, %4416
  %4540 = fadd fast float %4537, %4536
  %4541 = fadd fast float %4538, %4536
  %4542 = fadd fast float %4539, %4536
  %4543 = fcmp fast ogt float %3209, 0.000000e+00
  br i1 %4543, label %4544, label %4570

; <label>:4544                                    ; preds = %4397
  %4545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %49, float %3209, float %4418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4546 = extractvalue %dx.types.ResRet.f32 %4545, 0
  %4547 = extractvalue %dx.types.ResRet.f32 %4545, 1
  %4548 = extractvalue %dx.types.ResRet.f32 %4545, 2
  %4549 = fadd fast float %4546, -5.000000e-01
  %4550 = fadd fast float %4547, -5.000000e-01
  %4551 = fadd fast float %4548, -5.000000e-01
  %4552 = fsub fast float 1.000000e+00, %4404
  %4553 = fsub fast float 1.000000e+00, %4405
  %4554 = fsub fast float 1.000000e+00, %4416
  %4555 = fmul fast float %4404, 4.000000e+00
  %4556 = fmul fast float %4555, %4552
  %4557 = fmul fast float %4556, %4549
  %4558 = fmul fast float %4405, 4.000000e+00
  %4559 = fmul fast float %4558, %4553
  %4560 = fmul fast float %4559, %4550
  %4561 = fmul fast float %4416, 4.000000e+00
  %4562 = fmul fast float %4561, %4554
  %4563 = fmul fast float %4562, %4551
  %4564 = fadd fast float %4557, %4540
  %4565 = fadd fast float %4560, %4541
  %4566 = fadd fast float %4563, %4542
  %4567 = call float @dx.op.unary.f32(i32 7, float %4564)  ; Saturate(value)
  %4568 = call float @dx.op.unary.f32(i32 7, float %4565)  ; Saturate(value)
  %4569 = call float @dx.op.unary.f32(i32 7, float %4566)  ; Saturate(value)
  br label %4570

; <label>:4570                                    ; preds = %4544, %4397
  %4571 = phi float [ %4567, %4544 ], [ %4540, %4397 ]
  %4572 = phi float [ %4568, %4544 ], [ %4541, %4397 ]
  %4573 = phi float [ %4569, %4544 ], [ %4542, %4397 ]
  %4574 = call float @dx.op.binary.f32(i32 35, float %4572, float %4573)  ; FMax(a,b)
  %4575 = call float @dx.op.binary.f32(i32 35, float %4571, float %4574)  ; FMax(a,b)
  %4576 = fsub fast float 1.000000e+00, %4575
  %4577 = fmul fast float %4576, %4523
  %4578 = fmul fast float %4576, %4524
  %4579 = fmul fast float %4576, %4525
  %4580 = call float @dx.op.dot3.f32(i32 55, float %4410, float %4411, float %4412, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4581 = fcmp fast ogt float %4580, 0x3E7FF19E20000000
  %4582 = fdiv fast float 1.000000e+00, %4580
  %4583 = select i1 %4581, float %4582, float 0.000000e+00
  %4584 = fmul fast float %4583, %4410
  %4585 = fmul fast float %4583, %4411
  %4586 = fmul fast float %4583, %4412
  %4587 = fadd fast float %4584, -1.000000e+00
  %4588 = fadd fast float %4585, -1.000000e+00
  %4589 = fadd fast float %4586, -1.000000e+00
  %4590 = fmul fast float %4587, 5.000000e-01
  %4591 = fmul fast float %4588, 5.000000e-01
  %4592 = fmul fast float %4589, 5.000000e-01
  %4593 = fadd fast float %4590, 1.000000e+00
  %4594 = fadd fast float %4591, 1.000000e+00
  %4595 = fadd fast float %4592, 1.000000e+00
  %4596 = fmul fast float %4571, %4527
  %4597 = fmul fast float %4572, %4528
  %4598 = fmul fast float %4573, %4529
  %4599 = fsub fast float 1.000000e+00, %4418
  %4600 = bitcast float %4599 to i32
  %4601 = sitofp i32 %4600 to float
  %4602 = fmul fast float %4601, 5.000000e+00
  %4603 = fadd fast float %4602, 0xC1EFBF8940000000
  %4604 = fptosi float %4603 to i32
  %4605 = bitcast i32 %4604 to float
  %4606 = fmul fast float %4605, %3210
  %4607 = fmul fast float %4523, %4606
  %4608 = fmul fast float %4607, %4576
  %4609 = fmul fast float %4608, %4593
  %4610 = fmul fast float %4524, %4606
  %4611 = fmul fast float %4610, %4576
  %4612 = fmul fast float %4611, %4594
  %4613 = fmul fast float %4525, %4606
  %4614 = fmul fast float %4613, %4576
  %4615 = fmul fast float %4614, %4595
  %4616 = fmul fast float %4577, %3206
  %4617 = fmul fast float %4578, %3206
  %4618 = fmul fast float %4579, %3206
  %4619 = fadd fast float %4596, %3202
  %4620 = fadd fast float %4619, %4609
  %4621 = fmul fast float %4620, %3206
  %4622 = fadd fast float %4597, %3203
  %4623 = fadd fast float %4622, %4612
  %4624 = fmul fast float %4623, %3206
  %4625 = fadd fast float %4598, %3204
  %4626 = fadd fast float %4625, %4615
  %4627 = fmul fast float %4626, %3206
  %4628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4629 = extractvalue %dx.types.CBufRet.f32 %4628, 3
  %4630 = fcmp fast oeq float %4629, 0.000000e+00
  br i1 %4630, label %5715, label %4631

; <label>:4631                                    ; preds = %4570
  %4632 = extractvalue %dx.types.CBufRet.f32 %4628, 0
  %4633 = extractvalue %dx.types.CBufRet.f32 %4628, 1
  %4634 = extractvalue %dx.types.CBufRet.f32 %4628, 2
  %4635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4636 = extractvalue %dx.types.CBufRet.f32 %4635, 0
  %4637 = extractvalue %dx.types.CBufRet.f32 %4635, 1
  %4638 = extractvalue %dx.types.CBufRet.f32 %4635, 2
  %4639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.f32 %4639, 0
  %4641 = extractvalue %dx.types.CBufRet.f32 %4639, 1
  %4642 = call float @dx.op.dot3.f32(i32 55, float %4636, float %4637, float %4638, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4643 = select i1 %251, float %4640, float %4636
  %4644 = select i1 %251, float %4642, float %4637
  %4645 = select i1 %251, float %4641, float %4638
  %4646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4646, 2
  %4648 = fmul fast float %4647, %112
  %4649 = fmul fast float %4647, %113
  %4650 = fmul fast float %4647, %114
  %4651 = fadd fast float %4648, %192
  %4652 = fadd fast float %4649, %193
  %4653 = fadd fast float %4650, %194
  %4654 = fcmp fast olt float %4629, 0.000000e+00
  br i1 %4654, label %5294, label %4655

; <label>:4655                                    ; preds = %4631
  %4656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4657 = extractvalue %dx.types.CBufRet.f32 %4656, 0
  %4658 = extractvalue %dx.types.CBufRet.f32 %4656, 1
  %4659 = extractvalue %dx.types.CBufRet.f32 %4656, 2
  %4660 = extractvalue %dx.types.CBufRet.f32 %4656, 3
  %4661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4662 = extractvalue %dx.types.CBufRet.f32 %4661, 0
  %4663 = extractvalue %dx.types.CBufRet.f32 %4661, 1
  %4664 = extractvalue %dx.types.CBufRet.f32 %4661, 2
  %4665 = extractvalue %dx.types.CBufRet.f32 %4661, 3
  %4666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4667 = extractvalue %dx.types.CBufRet.f32 %4666, 0
  %4668 = extractvalue %dx.types.CBufRet.f32 %4666, 1
  %4669 = extractvalue %dx.types.CBufRet.f32 %4666, 2
  %4670 = extractvalue %dx.types.CBufRet.f32 %4666, 3
  %4671 = fmul fast float %4657, %4651
  %4672 = call float @dx.op.tertiary.f32(i32 46, float %4652, float %4658, float %4671)  ; FMad(a,b,c)
  %4673 = call float @dx.op.tertiary.f32(i32 46, float %4653, float %4659, float %4672)  ; FMad(a,b,c)
  %4674 = fadd fast float %4673, %4660
  %4675 = fmul fast float %4662, %4651
  %4676 = call float @dx.op.tertiary.f32(i32 46, float %4652, float %4663, float %4675)  ; FMad(a,b,c)
  %4677 = call float @dx.op.tertiary.f32(i32 46, float %4653, float %4664, float %4676)  ; FMad(a,b,c)
  %4678 = fadd fast float %4677, %4665
  %4679 = fmul fast float %4667, %4651
  %4680 = call float @dx.op.tertiary.f32(i32 46, float %4652, float %4668, float %4679)  ; FMad(a,b,c)
  %4681 = call float @dx.op.tertiary.f32(i32 46, float %4653, float %4669, float %4680)  ; FMad(a,b,c)
  %4682 = fadd fast float %4681, %4670
  %4683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4684 = extractvalue %dx.types.CBufRet.f32 %4683, 0
  %4685 = fcmp fast une float %4684, 0.000000e+00
  %4686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4687 = extractvalue %dx.types.CBufRet.f32 %4686, 0
  %4688 = extractvalue %dx.types.CBufRet.f32 %4686, 1
  %4689 = extractvalue %dx.types.CBufRet.f32 %4686, 3
  %4690 = fmul fast float %4689, %4674
  %4691 = fmul fast float %4689, %4678
  %4692 = fadd fast float %4690, %4687
  %4693 = fadd fast float %4691, %4688
  %4694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4695 = extractvalue %dx.types.CBufRet.f32 %4694, 0
  %4696 = extractvalue %dx.types.CBufRet.f32 %4694, 1
  %4697 = extractvalue %dx.types.CBufRet.f32 %4694, 3
  %4698 = fmul fast float %4697, %4674
  %4699 = fmul fast float %4697, %4678
  %4700 = fadd fast float %4698, %4695
  %4701 = fadd fast float %4699, %4696
  %4702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4703 = extractvalue %dx.types.CBufRet.f32 %4702, 1
  %4704 = fsub fast float %4703, %4682
  %4705 = extractvalue %dx.types.CBufRet.f32 %4702, 2
  %4706 = fmul fast float %4704, %4705
  %4707 = fsub fast float 1.000000e+00, %4706
  %4708 = call float @dx.op.unary.f32(i32 7, float %4707)  ; Saturate(value)
  br i1 %4685, label %4769, label %4709

; <label>:4709                                    ; preds = %4655
  %4710 = extractvalue %dx.types.CBufRet.f32 %4694, 2
  %4711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4712 = extractvalue %dx.types.CBufRet.f32 %4711, 2
  %4713 = fadd fast float %4712, %4710
  %4714 = fcmp fast ogt float %4713, 0.000000e+00
  br i1 %4714, label %4715, label %4739

; <label>:4715                                    ; preds = %4709
  %4716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4717 = extractvalue %dx.types.CBufRet.f32 %4716, 0
  %4718 = extractvalue %dx.types.CBufRet.f32 %4716, 1
  %4719 = fsub fast float %4700, %4717
  %4720 = fsub fast float %4701, %4718
  %4721 = fcmp fast olt float %4719, 0.000000e+00
  %4722 = fcmp fast olt float %4720, 0.000000e+00
  %4723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4724 = extractvalue %dx.types.CBufRet.f32 %4723, 0
  %4725 = extractvalue %dx.types.CBufRet.f32 %4723, 1
  %4726 = extractvalue %dx.types.CBufRet.f32 %4723, 2
  %4727 = extractvalue %dx.types.CBufRet.f32 %4723, 3
  %4728 = select i1 %4721, float %4724, float %4726
  %4729 = select i1 %4722, float %4725, float %4727
  %4730 = fmul fast float %4728, %4719
  %4731 = fmul fast float %4729, %4720
  %4732 = call float @dx.op.unary.f32(i32 6, float %4730)  ; FAbs(value)
  %4733 = call float @dx.op.unary.f32(i32 6, float %4731)  ; FAbs(value)
  %4734 = extractvalue %dx.types.CBufRet.f32 %4646, 0
  %4735 = call float @dx.op.binary.f32(i32 35, float %4732, float %4733)  ; FMax(a,b)
  %4736 = fsub fast float %4734, %4735
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4738 = fmul fast float %4737, %4708
  br label %4739

; <label>:4739                                    ; preds = %4715, %4709
  %4740 = phi float [ %4738, %4715 ], [ 0.000000e+00, %4709 ]
  %4741 = extractvalue %dx.types.CBufRet.f32 %4686, 2
  %4742 = extractvalue %dx.types.CBufRet.f32 %4711, 1
  %4743 = fadd fast float %4742, %4741
  %4744 = fcmp fast ogt float %4743, 0.000000e+00
  br i1 %4744, label %4745, label %4769

; <label>:4745                                    ; preds = %4739
  %4746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4747 = extractvalue %dx.types.CBufRet.f32 %4746, 0
  %4748 = extractvalue %dx.types.CBufRet.f32 %4746, 1
  %4749 = fsub fast float %4692, %4747
  %4750 = fsub fast float %4693, %4748
  %4751 = fcmp fast olt float %4749, 0.000000e+00
  %4752 = fcmp fast olt float %4750, 0.000000e+00
  %4753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.f32 %4753, 0
  %4755 = extractvalue %dx.types.CBufRet.f32 %4753, 1
  %4756 = extractvalue %dx.types.CBufRet.f32 %4753, 2
  %4757 = extractvalue %dx.types.CBufRet.f32 %4753, 3
  %4758 = select i1 %4751, float %4754, float %4756
  %4759 = select i1 %4752, float %4755, float %4757
  %4760 = fmul fast float %4758, %4749
  %4761 = fmul fast float %4759, %4750
  %4762 = call float @dx.op.unary.f32(i32 6, float %4760)  ; FAbs(value)
  %4763 = call float @dx.op.unary.f32(i32 6, float %4761)  ; FAbs(value)
  %4764 = extractvalue %dx.types.CBufRet.f32 %4646, 0
  %4765 = call float @dx.op.binary.f32(i32 35, float %4762, float %4763)  ; FMax(a,b)
  %4766 = fsub fast float %4764, %4765
  %4767 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4768 = fmul fast float %4767, %4708
  br label %4769

; <label>:4769                                    ; preds = %4745, %4739, %4655
  %4770 = phi float [ 0.000000e+00, %4655 ], [ %4768, %4745 ], [ 0.000000e+00, %4739 ]
  %4771 = phi float [ 0.000000e+00, %4655 ], [ %4740, %4745 ], [ %4740, %4739 ]
  %4772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4773 = extractvalue %dx.types.CBufRet.f32 %4772, 1
  %4774 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  %4775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4776 = extractvalue %dx.types.CBufRet.f32 %4775, 0
  %4777 = extractvalue %dx.types.CBufRet.f32 %4775, 1
  %4778 = fsub fast float %4674, %4776
  %4779 = fsub fast float %4678, %4777
  %4780 = fcmp fast olt float %4778, 0.000000e+00
  %4781 = fcmp fast olt float %4779, 0.000000e+00
  %4782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4783 = extractvalue %dx.types.CBufRet.f32 %4782, 0
  %4784 = extractvalue %dx.types.CBufRet.f32 %4782, 1
  %4785 = extractvalue %dx.types.CBufRet.f32 %4782, 2
  %4786 = extractvalue %dx.types.CBufRet.f32 %4782, 3
  %4787 = select i1 %4780, float %4783, float %4785
  %4788 = select i1 %4781, float %4784, float %4786
  %4789 = fmul fast float %4787, %4778
  %4790 = fmul fast float %4788, %4779
  %4791 = call float @dx.op.unary.f32(i32 6, float %4789)  ; FAbs(value)
  %4792 = call float @dx.op.unary.f32(i32 6, float %4790)  ; FAbs(value)
  %4793 = extractvalue %dx.types.CBufRet.f32 %4646, 0
  %4794 = call float @dx.op.binary.f32(i32 35, float %4791, float %4792)  ; FMax(a,b)
  %4795 = fsub fast float %4793, %4794
  %4796 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  %4797 = call float @dx.op.binary.f32(i32 36, float %4796, float %4774)  ; FMin(a,b)
  %4798 = fmul fast float %4797, %4708
  %4799 = fsub fast float %4770, %4798
  %4800 = fsub fast float %4771, %4770
  %4801 = fsub fast float %4800, %4798
  %4802 = call float @dx.op.binary.f32(i32 35, float %4770, float %4771)  ; FMax(a,b)
  %4803 = call float @dx.op.binary.f32(i32 35, float %4798, float %4802)  ; FMax(a,b)
  %4804 = fcmp fast olt float %4803, 1.000000e+00
  br i1 %4804, label %4805, label %5203, !dx.controlflow.hints !95

; <label>:4805                                    ; preds = %4769
  %4806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4807 = extractvalue %dx.types.CBufRet.f32 %4806, 0
  %4808 = fcmp fast une float %4807, 0.000000e+00
  br i1 %4808, label %4809, label %5203, !dx.controlflow.hints !96

; <label>:4809                                    ; preds = %4805
  %4810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4811 = extractvalue %dx.types.CBufRet.f32 %4810, 0
  %4812 = extractvalue %dx.types.CBufRet.f32 %4810, 1
  %4813 = extractvalue %dx.types.CBufRet.f32 %4810, 2
  %4814 = extractvalue %dx.types.CBufRet.f32 %4810, 3
  %4815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4816 = extractvalue %dx.types.CBufRet.f32 %4815, 0
  %4817 = extractvalue %dx.types.CBufRet.f32 %4815, 1
  %4818 = extractvalue %dx.types.CBufRet.f32 %4815, 2
  %4819 = extractvalue %dx.types.CBufRet.f32 %4815, 3
  %4820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4821 = extractvalue %dx.types.CBufRet.f32 %4820, 0
  %4822 = extractvalue %dx.types.CBufRet.f32 %4820, 1
  %4823 = extractvalue %dx.types.CBufRet.f32 %4820, 2
  %4824 = extractvalue %dx.types.CBufRet.f32 %4820, 3
  %4825 = fmul fast float %4811, %4651
  %4826 = call float @dx.op.tertiary.f32(i32 46, float %4652, float %4812, float %4825)  ; FMad(a,b,c)
  %4827 = call float @dx.op.tertiary.f32(i32 46, float %4653, float %4813, float %4826)  ; FMad(a,b,c)
  %4828 = fadd fast float %4827, %4814
  %4829 = fmul fast float %4816, %4651
  %4830 = call float @dx.op.tertiary.f32(i32 46, float %4652, float %4817, float %4829)  ; FMad(a,b,c)
  %4831 = call float @dx.op.tertiary.f32(i32 46, float %4653, float %4818, float %4830)  ; FMad(a,b,c)
  %4832 = fadd fast float %4831, %4819
  %4833 = fmul fast float %4821, %4651
  %4834 = call float @dx.op.tertiary.f32(i32 46, float %4652, float %4822, float %4833)  ; FMad(a,b,c)
  %4835 = call float @dx.op.tertiary.f32(i32 46, float %4653, float %4823, float %4834)  ; FMad(a,b,c)
  %4836 = fadd fast float %4835, %4824
  %4837 = fcmp fast oge float %4828, 1.000000e+00
  %4838 = fcmp fast oge float %4832, 1.000000e+00
  %4839 = or i1 %4837, %4838
  %4840 = fcmp fast olt float %4828, 0.000000e+00
  %4841 = fcmp fast olt float %4832, 0.000000e+00
  %4842 = or i1 %4840, %4841
  %4843 = or i1 %4839, %4842
  br i1 %4843, label %5203, label %4844, !dx.controlflow.hints !97

; <label>:4844                                    ; preds = %4809
  %4845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4846 = extractvalue %dx.types.CBufRet.f32 %4845, 0
  %4847 = extractvalue %dx.types.CBufRet.f32 %4845, 1
  %4848 = extractvalue %dx.types.CBufRet.f32 %4845, 2
  %4849 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4850 = extractvalue %dx.types.CBufRet.i32 %4849, 2
  %4851 = uitofp i32 %4850 to float
  %4852 = extractvalue %dx.types.CBufRet.i32 %4849, 3
  %4853 = uitofp i32 %4852 to float
  %4854 = extractvalue %dx.types.CBufRet.f32 %4845, 3
  %4855 = fmul fast float %4854, 2.000000e+00
  %4856 = fsub fast float %4828, %4846
  %4857 = fsub fast float %4832, %4847
  %4858 = fmul fast float %4855, %4856
  %4859 = fmul fast float %4855, %4857
  %4860 = fdiv fast float 1.000000e+00, %4634
  %4861 = fmul fast float %4859, %4860
  %4862 = call float @dx.op.unary.f32(i32 6, float %4861)  ; FAbs(value)
  %4863 = fmul fast float %4848, %4653
  %4864 = fmul fast float %4863, %4855
  %4865 = call float @dx.op.unary.f32(i32 6, float %4864)  ; FAbs(value)
  %4866 = call float @dx.op.unary.f32(i32 6, float %4858)  ; FAbs(value)
  %4867 = call float @dx.op.binary.f32(i32 35, float %4865, float %4862)  ; FMax(a,b)
  %4868 = call float @dx.op.binary.f32(i32 35, float %4866, float %4867)  ; FMax(a,b)
  %4869 = fmul fast float %4868, 2.000000e+00
  %4870 = call float @dx.op.unary.f32(i32 23, float %4869)  ; Log(value)
  %4871 = call float @dx.op.binary.f32(i32 35, float %4870, float %4851)  ; FMax(a,b)
  %4872 = call float @dx.op.unary.f32(i32 22, float %4871)  ; Frc(value)
  %4873 = fadd fast float %4872, 0xBFEA666660000000
  %4874 = fmul fast float %4873, 8.000000e+00
  %4875 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4876 = call float @dx.op.unary.f32(i32 27, float %4871)  ; Round_ni(value)
  %4877 = fadd fast float %4876, %4875
  %4878 = call float @dx.op.binary.f32(i32 36, float %4877, float %4853)  ; FMin(a,b)
  %4879 = call float @dx.op.unary.f32(i32 27, float %4878)  ; Round_ni(value)
  %4880 = fsub fast float -0.000000e+00, %4879
  %4881 = call float @dx.op.unary.f32(i32 21, float %4880)  ; Exp(value)
  %4882 = fmul fast float %4881, %4855
  %4883 = fmul fast float %4882, %4828
  %4884 = fmul fast float %4882, %4832
  %4885 = fmul fast float %4883, 2.500000e-01
  %4886 = fmul fast float %4884, 2.500000e-01
  %4887 = fadd fast float %4885, 5.000000e-01
  %4888 = fadd fast float %4886, 5.000000e-01
  %4889 = fsub fast float %4853, %4851
  %4890 = fptoui float %4889 to i32
  %4891 = add i32 %4890, 320
  %4892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %4891)  ; CBufferLoadLegacy(handle,regIndex)
  %4893 = extractvalue %dx.types.CBufRet.f32 %4892, 0
  %4894 = extractvalue %dx.types.CBufRet.f32 %4892, 1
  %4895 = fcmp fast une float %4878, %4853
  %4896 = fsub fast float %4828, %4893
  %4897 = fsub fast float %4832, %4894
  %4898 = call float @dx.op.unary.f32(i32 6, float %4896)  ; FAbs(value)
  %4899 = call float @dx.op.unary.f32(i32 6, float %4897)  ; FAbs(value)
  %4900 = fmul fast float %4898, %4882
  %4901 = fmul fast float %4899, %4882
  %4902 = fcmp fast olt float %4900, 1.000000e+00
  %4903 = fcmp fast olt float %4901, 1.000000e+00
  %4904 = and i1 %4902, %4903
  %4905 = or i1 %4895, %4904
  br i1 %4905, label %4906, label %5203, !dx.controlflow.hints !98

; <label>:4906                                    ; preds = %4844
  %4907 = fmul fast float %4884, 5.000000e-01
  %4908 = fmul fast float %4883, 5.000000e-01
  %4909 = fadd fast float %4907, 5.000000e-01
  %4910 = fadd fast float %4908, 5.000000e-01
  %4911 = sitofp i32 %4850 to float
  %4912 = fsub fast float %4878, %4911
  %4913 = call float @dx.op.unary.f32(i32 27, float %4912)  ; Round_ni(value)
  %4914 = call float @dx.op.unary.f32(i32 22, float %4878)  ; Frc(value)
  %4915 = call float @dx.op.unary.f32(i32 22, float %4910)  ; Frc(value)
  %4916 = call float @dx.op.unary.f32(i32 22, float %4909)  ; Frc(value)
  %4917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %48, float %4915, float %4916, float %4913, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4918 = extractvalue %dx.types.ResRet.f32 %4917, 0
  %4919 = extractvalue %dx.types.ResRet.f32 %4917, 1
  %4920 = extractvalue %dx.types.ResRet.f32 %4917, 2
  %4921 = extractvalue %dx.types.ResRet.f32 %4917, 3
  %4922 = fcmp fast ogt float %4914, 0.000000e+00
  br i1 %4922, label %4923, label %4944, !dx.controlflow.hints !99

; <label>:4923                                    ; preds = %4906
  %4924 = fadd fast float %4913, 1.000000e+00
  %4925 = call float @dx.op.unary.f32(i32 22, float %4887)  ; Frc(value)
  %4926 = call float @dx.op.unary.f32(i32 22, float %4888)  ; Frc(value)
  %4927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %48, float %4925, float %4926, float %4924, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4928 = extractvalue %dx.types.ResRet.f32 %4927, 0
  %4929 = extractvalue %dx.types.ResRet.f32 %4927, 1
  %4930 = extractvalue %dx.types.ResRet.f32 %4927, 2
  %4931 = extractvalue %dx.types.ResRet.f32 %4927, 3
  %4932 = fsub fast float %4928, %4918
  %4933 = fsub fast float %4929, %4919
  %4934 = fsub fast float %4930, %4920
  %4935 = fsub fast float %4931, %4921
  %4936 = fmul fast float %4932, %4914
  %4937 = fmul fast float %4933, %4914
  %4938 = fmul fast float %4934, %4914
  %4939 = fmul fast float %4935, %4914
  %4940 = fadd fast float %4936, %4918
  %4941 = fadd fast float %4937, %4919
  %4942 = fadd fast float %4938, %4920
  %4943 = fadd fast float %4939, %4921
  br label %4944

; <label>:4944                                    ; preds = %4923, %4906
  %4945 = phi float [ %4940, %4923 ], [ %4918, %4906 ]
  %4946 = phi float [ %4941, %4923 ], [ %4919, %4906 ]
  %4947 = phi float [ %4942, %4923 ], [ %4920, %4906 ]
  %4948 = phi float [ %4943, %4923 ], [ %4921, %4906 ]
  %4949 = fadd fast float %4945, -5.000000e-01
  %4950 = fadd fast float %4947, -5.000000e-01
  %4951 = fmul fast float %4949, 0xBFD5555560000000
  %4952 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4950, float %4951)  ; FMad(a,b,c)
  %4953 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4946, float 0.000000e+00)  ; FMad(a,b,c)
  %4954 = fadd fast float %4953, %4948
  %4955 = fmul fast float %4949, -7.500000e-01
  %4956 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4950, float %4955)  ; FMad(a,b,c)
  %4957 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4946, float 0.000000e+00)  ; FMad(a,b,c)
  %4958 = fadd fast float %4957, %4948
  %4959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.f32 %4959, 0
  %4961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.f32 %4961, 0
  %4963 = extractvalue %dx.types.CBufRet.f32 %4961, 1
  %4964 = extractvalue %dx.types.CBufRet.f32 %4961, 2
  %4965 = extractvalue %dx.types.CBufRet.f32 %4961, 3
  %4966 = fsub fast float %4962, %4952
  %4967 = fsub fast float %4963, %4954
  %4968 = fsub fast float %4964, %4956
  %4969 = fsub fast float %4965, %4958
  %4970 = fmul fast float %4966, %4960
  %4971 = fmul fast float %4967, %4960
  %4972 = fmul fast float %4968, %4960
  %4973 = fmul fast float %4969, %4960
  %4974 = fadd fast float %4970, %4952
  %4975 = fadd fast float %4971, %4954
  %4976 = fadd fast float %4972, %4956
  %4977 = fadd fast float %4973, %4958
  %4978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4979 = extractvalue %dx.types.ResRet.i32 %4978, 0
  %4980 = and i32 %4979, 536870911
  %4981 = uitofp i32 %4980 to float
  %4982 = fmul fast float %4981, %4828
  %4983 = fmul fast float %4981, %4832
  %4984 = fptoui float %4982 to i32
  %4985 = fptoui float %4983 to i32
  %4986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4987 = extractvalue %dx.types.ResRet.i32 %4986, 0
  %4988 = and i32 %4987, 31
  %4989 = lshr i32 %4984, %4988
  %4990 = lshr i32 %4985, %4988
  %4991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4992 = extractvalue %dx.types.ResRet.i32 %4991, 0
  %4993 = and i32 %4992, 31
  %4994 = shl i32 1, %4993
  %4995 = call i32 @dx.op.binary.i32(i32 40, i32 %4994, i32 4)  ; UMin(a,b)
  %4996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4997 = extractvalue %dx.types.ResRet.i32 %4996, 0
  %4998 = extractvalue %dx.types.ResRet.i32 %4996, 1
  %4999 = icmp eq i32 %4995, 0
  br i1 %4999, label %5041, label %5000

; <label>:5000                                    ; preds = %4944
  br label %5001

; <label>:5001                                    ; preds = %5029, %5000
  %5002 = phi i32 [ %5032, %5029 ], [ 0, %5000 ]
  %5003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5004 = extractvalue %dx.types.ResRet.i32 %5003, 0
  %5005 = lshr i32 %5004, 16
  %5006 = and i32 %5005, 31
  %5007 = shl i32 %4990, %5006
  %5008 = add i32 %5007, %4989
  %5009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5010 = extractvalue %dx.types.ResRet.i32 %5009, 0
  %5011 = and i32 %5010, 31
  %5012 = shl i32 %5008, %5011
  %5013 = add i32 %5012, %5002
  %5014 = shl i32 %5013, 2
  %5015 = add i32 %5014, 32
  %5016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5015, i32 undef)  ; BufferLoad(srv,index,wot)
  %5017 = extractvalue %dx.types.ResRet.i32 %5016, 0
  %5018 = icmp slt i32 %5017, 0
  %5019 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5002
  %5020 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5002
  %5021 = bitcast float* %5019 to i32*
  %5022 = bitcast float* %5020 to i32*
  br i1 %5018, label %5023, label %5029

; <label>:5023                                    ; preds = %5001
  %5024 = and i32 %5017, 1073741823
  %5025 = add nuw nsw i32 %5024, 20
  %5026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5025, i32 undef)  ; BufferLoad(srv,index,wot)
  %5027 = extractvalue %dx.types.ResRet.i32 %5026, 0
  %5028 = extractvalue %dx.types.ResRet.i32 %5026, 1
  br label %5029

; <label>:5029                                    ; preds = %5023, %5001
  %5030 = phi i32 [ %5027, %5023 ], [ %4997, %5001 ]
  %5031 = phi i32 [ %5028, %5023 ], [ %4998, %5001 ]
  store i32 %5030, i32* %5021, align 4
  store i32 %5031, i32* %5022, align 4
  %5032 = add nuw i32 %5002, 1
  %5033 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5034 = extractvalue %dx.types.CBufRet.i32 %5033, 2
  %5035 = icmp eq i32 %5034, 0
  %5036 = icmp ugt i32 %5017, -1073741825
  %5037 = and i1 %5036, %5035
  %5038 = icmp ult i32 %5032, %4995
  %5039 = and i1 %5037, %5038
  br i1 %5039, label %5001, label %5040

; <label>:5040                                    ; preds = %5029
  br label %5041

; <label>:5041                                    ; preds = %5040, %4944
  %5042 = phi i32 [ 0, %4944 ], [ %5032, %5040 ]
  %5043 = extractvalue %dx.types.CBufRet.f32 %4806, 2
  %5044 = fptoui float %5043 to i32
  %5045 = icmp eq i32 %5044, 0
  br i1 %5045, label %5097, label %5046

; <label>:5046                                    ; preds = %5041
  br label %5047

; <label>:5047                                    ; preds = %5092, %5046
  %5048 = phi i32 [ %5093, %5092 ], [ %5042, %5046 ]
  %5049 = phi i32 [ %5094, %5092 ], [ 0, %5046 ]
  %5050 = lshr i32 %5049, 2
  %5051 = and i32 %5049, 3
  %5052 = add nuw nsw i32 %5050, 83
  %5053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %5052)  ; CBufferLoadLegacy(handle,regIndex)
  %5054 = extractvalue %dx.types.CBufRet.i32 %5053, 0
  %5055 = extractvalue %dx.types.CBufRet.i32 %5053, 1
  %5056 = extractvalue %dx.types.CBufRet.i32 %5053, 2
  %5057 = extractvalue %dx.types.CBufRet.i32 %5053, 3
  %5058 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %5054, i32* %5058, align 4
  %5059 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %5055, i32* %5059, align 4
  %5060 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %5056, i32* %5060, align 4
  %5061 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %5057, i32* %5061, align 4
  %5062 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %5051
  %5063 = load i32, i32* %5062, align 4, !tbaa !100, !noalias !104
  %5064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5065 = extractvalue %dx.types.ResRet.i32 %5064, 0
  %5066 = lshr i32 %5065, 16
  %5067 = and i32 %5066, 31
  %5068 = shl i32 %4990, %5067
  %5069 = add i32 %5068, %4989
  %5070 = shl i32 %5069, 2
  %5071 = add i32 %5070, %5063
  %5072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5071, i32 undef)  ; BufferLoad(srv,index,wot)
  %5073 = extractvalue %dx.types.ResRet.i32 %5072, 0
  %5074 = icmp eq i32 %5073, 0
  br i1 %5074, label %5092, label %5075

; <label>:5075                                    ; preds = %5047
  %5076 = icmp slt i32 %5073, 0
  %5077 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5048
  %5078 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5048
  %5079 = bitcast float* %5077 to i32*
  %5080 = bitcast float* %5078 to i32*
  br i1 %5076, label %5081, label %5088

; <label>:5081                                    ; preds = %5075
  %5082 = and i32 %5073, 1073741823
  %5083 = add i32 %5063, 20
  %5084 = add i32 %5083, %5082
  %5085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5084, i32 undef)  ; BufferLoad(srv,index,wot)
  %5086 = extractvalue %dx.types.ResRet.i32 %5085, 0
  %5087 = extractvalue %dx.types.ResRet.i32 %5085, 1
  br label %5088

; <label>:5088                                    ; preds = %5081, %5075
  %5089 = phi i32 [ %5086, %5081 ], [ %4997, %5075 ]
  %5090 = phi i32 [ %5087, %5081 ], [ %4998, %5075 ]
  store i32 %5089, i32* %5079, align 4
  store i32 %5090, i32* %5080, align 4
  %5091 = add i32 %5048, 1
  br label %5092

; <label>:5092                                    ; preds = %5088, %5047
  %5093 = phi i32 [ %5048, %5047 ], [ %5091, %5088 ]
  %5094 = add nuw i32 %5049, 1
  %5095 = icmp eq i32 %5094, %5044
  br i1 %5095, label %5096, label %5047

; <label>:5096                                    ; preds = %5092
  br label %5097

; <label>:5097                                    ; preds = %5096, %5041
  %5098 = phi i32 [ %5042, %5041 ], [ %5093, %5096 ]
  %5099 = icmp eq i32 %5098, 1
  %5100 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  %5101 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  br i1 %5099, label %5102, label %5105

; <label>:5102                                    ; preds = %5097
  %5103 = load float, float* %5100, align 4
  %5104 = load float, float* %5101, align 4
  br label %5132

; <label>:5105                                    ; preds = %5097
  %5106 = load float, float* %5100, align 4
  %5107 = load float, float* %5101, align 4
  %5108 = fdiv fast float 1.000000e+00, %5107
  %5109 = fsub fast float %5106, %5108
  %5110 = icmp ugt i32 %5098, 1
  br i1 %5110, label %5111, label %5127

; <label>:5111                                    ; preds = %5105
  br label %5112

; <label>:5112                                    ; preds = %5112, %5111
  %5113 = phi float [ %5122, %5112 ], [ %5109, %5111 ]
  %5114 = phi float [ %5123, %5112 ], [ %5106, %5111 ]
  %5115 = phi i32 [ %5124, %5112 ], [ 1, %5111 ]
  %5116 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5115
  %5117 = load float, float* %5116, align 4
  %5118 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5115
  %5119 = load float, float* %5118, align 4
  %5120 = fdiv fast float 1.000000e+00, %5119
  %5121 = fsub fast float %5117, %5120
  %5122 = call float @dx.op.binary.f32(i32 36, float %5113, float %5121)  ; FMin(a,b)
  %5123 = call float @dx.op.binary.f32(i32 35, float %5114, float %5117)  ; FMax(a,b)
  %5124 = add nuw i32 %5115, 1
  %5125 = icmp eq i32 %5124, %5098
  br i1 %5125, label %5126, label %5112

; <label>:5126                                    ; preds = %5112
  br label %5127

; <label>:5127                                    ; preds = %5126, %5105
  %5128 = phi float [ %5109, %5105 ], [ %5122, %5126 ]
  %5129 = phi float [ %5106, %5105 ], [ %5123, %5126 ]
  %5130 = fsub fast float %5129, %5128
  %5131 = fdiv fast float 1.000000e+00, %5130
  br label %5132

; <label>:5132                                    ; preds = %5127, %5102
  %5133 = phi float [ %5103, %5102 ], [ %5129, %5127 ]
  %5134 = phi float [ %5104, %5102 ], [ %5131, %5127 ]
  %5135 = fadd fast float %4836, %5133
  %5136 = fmul fast float %5135, %5134
  %5137 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5138 = fmul fast float %5137, 2.000000e+00
  %5139 = fsub fast float 1.000000e+00, %5138
  %5140 = fmul fast float %4974, %4974
  %5141 = fsub fast float %4975, %5140
  %5142 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5141)  ; FMax(a,b)
  %5143 = fdiv fast float 1.000000e+00, %5142
  %5144 = fmul fast float %4975, %4974
  %5145 = fsub fast float %4976, %5144
  %5146 = fsub fast float %5139, %4974
  %5147 = fmul fast float %5139, %5139
  %5148 = fsub fast float %5147, %4975
  %5149 = fmul fast float %5143, %5145
  %5150 = fmul fast float %5149, %5146
  %5151 = fsub fast float %5148, %5150
  %5152 = fmul fast float %4975, %4975
  %5153 = fsub fast float %4977, %5152
  %5154 = fmul fast float %5145, %5145
  %5155 = fmul fast float %5154, %5143
  %5156 = fsub fast float %5153, %5155
  %5157 = fdiv fast float %5151, %5156
  %5158 = fmul fast float %5157, %5145
  %5159 = fsub fast float %5146, %5158
  %5160 = fmul fast float %5159, %5143
  %5161 = fmul fast float %5160, %4974
  %5162 = fsub fast float 1.000000e+00, %5161
  %5163 = fmul fast float %5157, %4975
  %5164 = fsub fast float %5162, %5163
  %5165 = fmul fast float %5160, %5160
  %5166 = fmul fast float %5157, 4.000000e+00
  %5167 = fmul fast float %5166, %5164
  %5168 = fsub fast float %5165, %5167
  %5169 = call float @dx.op.unary.f32(i32 24, float %5168)  ; Sqrt(value)
  %5170 = fcmp fast oge float %5160, 0.000000e+00
  %5171 = fsub fast float -0.000000e+00, %5169
  %5172 = select i1 %5170, float %5171, float %5169
  %5173 = fsub fast float %5172, %5160
  %5174 = fdiv fast float %5173, %5157
  %5175 = fdiv fast float %5164, %5173
  %5176 = fmul fast float %5174, 5.000000e-01
  %5177 = fmul fast float %5175, 2.000000e+00
  %5178 = select i1 %5170, float %5176, float %5177
  %5179 = select i1 %5170, float %5177, float %5176
  %5180 = call float @dx.op.binary.f32(i32 35, float %5178, float %5179)  ; FMax(a,b)
  %5181 = call float @dx.op.binary.f32(i32 36, float %5178, float %5179)  ; FMin(a,b)
  %5182 = fcmp fast ogt float %5139, %5180
  %5183 = fsub fast float %5139, %5181
  %5184 = fsub fast float %5139, %5180
  %5185 = fsub fast float %5180, %5181
  %5186 = select i1 %5182, float %5184, float %5185
  %5187 = fmul float %5183, %5186
  %5188 = select i1 %5182, float %5181, float %5139
  %5189 = fcmp fast ogt float %5139, %5181
  %5190 = fmul fast float %5188, %5180
  %5191 = fadd fast float %5188, %5180
  %5192 = fmul fast float %5191, %4974
  %5193 = fadd fast float %5190, %4975
  %5194 = fsub fast float %5193, %5192
  %5195 = fdiv fast float %5194, %5187
  %5196 = select i1 %5189, float %5195, float 0.000000e+00
  %5197 = fsub fast float 1.000000e+00, %5196
  %5198 = select i1 %5182, float %5197, float %5196
  %5199 = call float @dx.op.unary.f32(i32 7, float %5198)  ; Saturate(value)
  %5200 = extractvalue %dx.types.CBufRet.f32 %4959, 3
  %5201 = fmul fast float %5200, %5199
  %5202 = fsub fast float 1.000000e+00, %5201
  br label %5203

; <label>:5203                                    ; preds = %5132, %4844, %4809, %4805, %4769
  %5204 = phi float [ 1.000000e+00, %4769 ], [ %5202, %5132 ], [ 1.000000e+00, %4809 ], [ 1.000000e+00, %4844 ], [ 1.000000e+00, %4805 ]
  %5205 = fcmp fast ogt float %4801, 0.000000e+00
  br i1 %5205, label %5206, label %5214, !dx.controlflow.hints !113

; <label>:5206                                    ; preds = %5203
  %5207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5208 = extractvalue %dx.types.CBufRet.f32 %5207, 2
  %5209 = fadd fast float %5208, %4682
  %5210 = call float @dx.op.binary.f32(i32 35, float %5209, float 0.000000e+00)  ; FMax(a,b)
  %5211 = fadd fast float %5210, 0x3F10000000000000
  %5212 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %4700, float %4701, float undef, float undef, i32 0, i32 0, i32 undef, float %5211)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5213 = extractvalue %dx.types.ResRet.f32 %5212, 0
  br label %5214

; <label>:5214                                    ; preds = %5206, %5203
  %5215 = phi float [ %5213, %5206 ], [ 1.000000e+00, %5203 ]
  %5216 = fcmp fast ogt float %4799, 0.000000e+00
  br i1 %5216, label %5217, label %5225, !dx.controlflow.hints !114

; <label>:5217                                    ; preds = %5214
  %5218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5219 = extractvalue %dx.types.CBufRet.f32 %5218, 1
  %5220 = fadd fast float %5219, %4682
  %5221 = call float @dx.op.binary.f32(i32 35, float %5220, float 0.000000e+00)  ; FMax(a,b)
  %5222 = fadd fast float %5221, 0x3F10000000000000
  %5223 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %4692, float %4693, float undef, float undef, i32 0, i32 0, i32 undef, float %5222)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5224 = extractvalue %dx.types.ResRet.f32 %5223, 0
  br label %5225

; <label>:5225                                    ; preds = %5217, %5214
  %5226 = phi float [ %5224, %5217 ], [ 1.000000e+00, %5214 ]
  %5227 = fcmp fast ogt float %4798, 0.000000e+00
  br i1 %5227, label %5228, label %5240, !dx.controlflow.hints !115

; <label>:5228                                    ; preds = %5225
  %5229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5230 = extractvalue %dx.types.CBufRet.f32 %5229, 0
  %5231 = fadd fast float %5230, %4682
  %5232 = call float @dx.op.binary.f32(i32 35, float %5231, float 0.000000e+00)  ; FMax(a,b)
  %5233 = fadd fast float %5232, 0x3F10000000000000
  br i1 %4685, label %5234, label %5237, !dx.controlflow.hints !116

; <label>:5234                                    ; preds = %5228
  %5235 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %4674, float %4678, float undef, float undef, i32 0, i32 0, i32 undef, float %5233)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5236 = extractvalue %dx.types.ResRet.f32 %5235, 0
  br label %5240

; <label>:5237                                    ; preds = %5228
  %5238 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %4674, float %4678, float undef, float undef, i32 0, i32 0, i32 undef, float %5233)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5239 = extractvalue %dx.types.ResRet.f32 %5238, 0
  br label %5240

; <label>:5240                                    ; preds = %5237, %5234, %5225
  %5241 = phi float [ %5236, %5234 ], [ %5239, %5237 ], [ 1.000000e+00, %5225 ]
  %5242 = fsub fast float %5215, %5204
  %5243 = fmul fast float %5242, %4771
  %5244 = fadd fast float %5243, %5204
  %5245 = fsub fast float %5226, %5244
  %5246 = fmul fast float %5245, %4770
  %5247 = fadd fast float %5246, %5244
  %5248 = fsub fast float %5241, %5247
  %5249 = fmul fast float %5248, %4798
  %5250 = fadd fast float %5249, %5247
  %5251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5252 = extractvalue %dx.types.CBufRet.f32 %5251, 2
  %5253 = fcmp fast ogt float %5252, 0.000000e+00
  br i1 %5253, label %5254, label %5294, !dx.controlflow.hints !117

; <label>:5254                                    ; preds = %5240
  %5255 = fcmp fast ugt float %5252, 0.000000e+00
  br i1 %5255, label %5256, label %5291

; <label>:5256                                    ; preds = %5254
  %5257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5258 = extractvalue %dx.types.CBufRet.f32 %5257, 0
  %5259 = extractvalue %dx.types.CBufRet.f32 %5257, 1
  %5260 = extractvalue %dx.types.CBufRet.f32 %5257, 2
  %5261 = extractvalue %dx.types.CBufRet.f32 %5257, 3
  %5262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5263 = extractvalue %dx.types.CBufRet.f32 %5262, 0
  %5264 = extractvalue %dx.types.CBufRet.f32 %5262, 1
  %5265 = extractvalue %dx.types.CBufRet.f32 %5262, 2
  %5266 = extractvalue %dx.types.CBufRet.f32 %5262, 3
  %5267 = extractvalue %dx.types.CBufRet.f32 %5251, 0
  %5268 = extractvalue %dx.types.CBufRet.f32 %5251, 1
  %5269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5270 = extractvalue %dx.types.CBufRet.f32 %5269, 0
  %5271 = extractvalue %dx.types.CBufRet.f32 %5269, 1
  %5272 = extractvalue %dx.types.CBufRet.f32 %5269, 2
  %5273 = fadd fast float %5270, %4651
  %5274 = fadd fast float %5271, %4652
  %5275 = fadd fast float %5272, %4653
  %5276 = fmul fast float %5273, %5258
  %5277 = call float @dx.op.tertiary.f32(i32 46, float %5259, float %5274, float %5276)  ; FMad(a,b,c)
  %5278 = call float @dx.op.tertiary.f32(i32 46, float %5260, float %5275, float %5277)  ; FMad(a,b,c)
  %5279 = fadd fast float %5278, %5261
  %5280 = fmul fast float %5273, %5263
  %5281 = call float @dx.op.tertiary.f32(i32 46, float %5264, float %5274, float %5280)  ; FMad(a,b,c)
  %5282 = call float @dx.op.tertiary.f32(i32 46, float %5265, float %5275, float %5281)  ; FMad(a,b,c)
  %5283 = fadd fast float %5282, %5266
  %5284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %14, %dx.types.Handle %46, float %5279, float %5283, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5285 = extractvalue %dx.types.ResRet.f32 %5284, 0
  %5286 = fmul fast float %5285, %5268
  %5287 = fadd fast float %5286, %5267
  %5288 = call float @dx.op.unary.f32(i32 7, float %5287)  ; Saturate(value)
  %5289 = fmul fast float %5288, %5252
  %5290 = fsub fast float 1.000000e+00, %5289
  br label %5291

; <label>:5291                                    ; preds = %5256, %5254
  %5292 = phi float [ %5290, %5256 ], [ 1.000000e+00, %5254 ]
  %5293 = fmul fast float %5292, %5250
  br label %5294

; <label>:5294                                    ; preds = %5291, %5240, %4631
  %5295 = phi float [ 1.000000e+00, %4631 ], [ %5293, %5291 ], [ %5250, %5240 ]
  %5296 = call float @dx.op.binary.f32(i32 36, float %5295, float %5295)  ; FMin(a,b)
  %5297 = call float @dx.op.binary.f32(i32 36, float %5295, float %5296)  ; FMin(a,b)
  %5298 = fcmp fast ogt float %5297, 0.000000e+00
  br i1 %5298, label %5299, label %5459, !dx.controlflow.hints !118

; <label>:5299                                    ; preds = %5294
  %5300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5301 = extractvalue %dx.types.CBufRet.f32 %5300, 0
  %5302 = extractvalue %dx.types.CBufRet.f32 %5300, 1
  %5303 = extractvalue %dx.types.CBufRet.f32 %5300, 2
  %5304 = extractvalue %dx.types.CBufRet.f32 %5300, 3
  %5305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5306 = extractvalue %dx.types.CBufRet.f32 %5305, 0
  %5307 = extractvalue %dx.types.CBufRet.f32 %5305, 1
  %5308 = extractvalue %dx.types.CBufRet.f32 %5305, 2
  %5309 = extractvalue %dx.types.CBufRet.f32 %5305, 3
  %5310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5311 = extractvalue %dx.types.CBufRet.f32 %5310, 0
  %5312 = extractvalue %dx.types.CBufRet.f32 %5310, 1
  %5313 = extractvalue %dx.types.CBufRet.f32 %5310, 2
  %5314 = extractvalue %dx.types.CBufRet.f32 %5310, 3
  %5315 = fmul fast float %5301, %4651
  %5316 = call float @dx.op.tertiary.f32(i32 46, float %4652, float %5302, float %5315)  ; FMad(a,b,c)
  %5317 = call float @dx.op.tertiary.f32(i32 46, float %4653, float %5303, float %5316)  ; FMad(a,b,c)
  %5318 = fadd fast float %5317, %5304
  %5319 = fmul fast float %5306, %4651
  %5320 = call float @dx.op.tertiary.f32(i32 46, float %4652, float %5307, float %5319)  ; FMad(a,b,c)
  %5321 = call float @dx.op.tertiary.f32(i32 46, float %4653, float %5308, float %5320)  ; FMad(a,b,c)
  %5322 = fadd fast float %5321, %5309
  %5323 = fmul fast float %5311, %4651
  %5324 = call float @dx.op.tertiary.f32(i32 46, float %4652, float %5312, float %5323)  ; FMad(a,b,c)
  %5325 = call float @dx.op.tertiary.f32(i32 46, float %4653, float %5313, float %5324)  ; FMad(a,b,c)
  %5326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5327 = extractvalue %dx.types.CBufRet.f32 %5326, 0
  %5328 = extractvalue %dx.types.CBufRet.f32 %5326, 1
  %5329 = extractvalue %dx.types.CBufRet.f32 %5326, 3
  %5330 = fmul fast float %5329, %5318
  %5331 = fmul fast float %5329, %5322
  %5332 = fadd fast float %5330, %5327
  %5333 = fadd fast float %5331, %5328
  %5334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5335 = extractvalue %dx.types.CBufRet.f32 %5334, 0
  %5336 = extractvalue %dx.types.CBufRet.f32 %5334, 1
  %5337 = fsub fast float %5332, %5335
  %5338 = fsub fast float %5333, %5336
  %5339 = fcmp fast olt float %5337, 0.000000e+00
  %5340 = fcmp fast olt float %5338, 0.000000e+00
  %5341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5342 = extractvalue %dx.types.CBufRet.f32 %5341, 0
  %5343 = extractvalue %dx.types.CBufRet.f32 %5341, 1
  %5344 = extractvalue %dx.types.CBufRet.f32 %5341, 2
  %5345 = extractvalue %dx.types.CBufRet.f32 %5341, 3
  %5346 = select i1 %5339, float %5342, float %5344
  %5347 = select i1 %5340, float %5343, float %5345
  %5348 = fmul fast float %5346, %5337
  %5349 = fmul fast float %5347, %5338
  %5350 = call float @dx.op.unary.f32(i32 6, float %5348)  ; FAbs(value)
  %5351 = call float @dx.op.unary.f32(i32 6, float %5349)  ; FAbs(value)
  %5352 = extractvalue %dx.types.CBufRet.f32 %4646, 0
  %5353 = call float @dx.op.binary.f32(i32 35, float %5350, float %5351)  ; FMax(a,b)
  %5354 = fsub fast float %5352, %5353
  %5355 = call float @dx.op.unary.f32(i32 7, float %5354)  ; Saturate(value)
  %5356 = fcmp fast ogt float %5355, 0.000000e+00
  br i1 %5356, label %5357, label %5398, !dx.controlflow.hints !119

; <label>:5357                                    ; preds = %5299
  %5358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %49, float %5332, float %5333, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5359 = extractvalue %dx.types.ResRet.f32 %5358, 1
  %5360 = fcmp fast ogt float %5359, 0.000000e+00
  br i1 %5360, label %5361, label %5393

; <label>:5361                                    ; preds = %5357
  %5362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %5332, float %5333, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5363 = extractvalue %dx.types.ResRet.f32 %5362, 0
  %5364 = extractvalue %dx.types.ResRet.f32 %5362, 1
  %5365 = extractvalue %dx.types.ResRet.f32 %5362, 2
  %5366 = extractvalue %dx.types.ResRet.f32 %5362, 3
  %5367 = fsub fast float 1.000000e+00, %5314
  %5368 = fsub fast float %5367, %5325
  %5369 = fmul fast float %5368, 0x400921FB60000000
  %5370 = fadd fast float %5369, 0x3FF921FB60000000
  %5371 = call float @dx.op.unary.f32(i32 13, float %5370)  ; Sin(value)
  %5372 = fadd fast float %5371, -1.000000e+00
  %5373 = fmul fast float %5372, 0x3FD45F3060000000
  %5374 = fmul fast float %5368, 0x401921FB60000000
  %5375 = fadd fast float %5374, 0x400921FB60000000
  %5376 = call float @dx.op.unary.f32(i32 13, float %5375)  ; Sin(value)
  %5377 = fadd fast float %5376, 0x3E7777A5C0000000
  %5378 = fmul fast float %5377, 0x3FC45F3060000000
  %5379 = fmul fast float %5368, 0x4022D97C80000000
  %5380 = fadd fast float %5379, 0x4012D97C80000000
  %5381 = call float @dx.op.unary.f32(i32 13, float %5380)  ; Sin(value)
  %5382 = fadd fast float %5381, 1.000000e+00
  %5383 = fmul fast float %5382, 0x3FBB2995E0000000
  %5384 = fmul fast float %5368, 0x402921FB60000000
  %5385 = fadd fast float %5384, 0x401921FB60000000
  %5386 = call float @dx.op.unary.f32(i32 13, float %5385)  ; Sin(value)
  %5387 = fadd fast float %5386, 0xBE8777A5C0000000
  %5388 = fmul fast float %5387, 0x3FB45F3060000000
  %5389 = call float @dx.op.dot4.f32(i32 56, float %5363, float %5364, float %5365, float %5366, float %5373, float %5378, float %5383, float %5388)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5390 = fmul fast float %5389, 0xBFF7154760000000
  %5391 = call float @dx.op.unary.f32(i32 21, float %5390)  ; Exp(value)
  %5392 = call float @dx.op.unary.f32(i32 7, float %5391)  ; Saturate(value)
  br label %5393

; <label>:5393                                    ; preds = %5361, %5357
  %5394 = phi float [ %5392, %5361 ], [ 1.000000e+00, %5357 ]
  %5395 = fadd fast float %5394, -1.000000e+00
  %5396 = fmul fast float %5395, %5355
  %5397 = fadd fast float %5396, 1.000000e+00
  br label %5398

; <label>:5398                                    ; preds = %5393, %5299
  %5399 = phi float [ %5397, %5393 ], [ 1.000000e+00, %5299 ]
  %5400 = fmul fast float %5399, %5295
  %5401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5402 = extractvalue %dx.types.CBufRet.f32 %5401, 0
  %5403 = extractvalue %dx.types.CBufRet.f32 %5401, 1
  %5404 = extractvalue %dx.types.CBufRet.f32 %5401, 2
  %5405 = fadd fast float %5402, %192
  %5406 = fadd fast float %5403, %193
  %5407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5408 = extractvalue %dx.types.CBufRet.f32 %5407, 1
  %5409 = fsub fast float -0.000000e+00, %5405
  %5410 = fsub fast float -0.000000e+00, %5406
  %5411 = fsub fast float %4415, %5404
  %5412 = fadd fast float %5411, %5408
  %5413 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5409, float %5410, float %5412)  ; Dot3(ax,ay,az,bx,by,bz)
  %5414 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4632, float %4633, float %4634)  ; Dot3(ax,ay,az,bx,by,bz)
  %5415 = fdiv fast float 1.000000e+00, %5414
  %5416 = fmul fast float %5415, %5413
  %5417 = fmul fast float %4632, %5416
  %5418 = fmul fast float %4633, %5416
  %5419 = fadd fast float %5417, %5405
  %5420 = fadd fast float %5418, %5406
  %5421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5422 = extractvalue %dx.types.CBufRet.f32 %5421, 0
  %5423 = extractvalue %dx.types.CBufRet.f32 %5421, 1
  %5424 = fsub fast float %5419, %5422
  %5425 = fsub fast float %5420, %5423
  %5426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.f32 %5426, 2
  %5428 = extractvalue %dx.types.CBufRet.f32 %5426, 3
  %5429 = fmul fast float %5424, %5427
  %5430 = fmul fast float %5425, %5428
  %5431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5432 = extractvalue %dx.types.CBufRet.i32 %5431, 3
  %5433 = icmp eq i32 %5432, 0
  br i1 %5433, label %5439, label %5434

; <label>:5434                                    ; preds = %5398
  %5435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %5429, float %5430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5436 = extractvalue %dx.types.ResRet.f32 %5435, 0
  %5437 = extractvalue %dx.types.ResRet.f32 %5435, 1
  %5438 = extractvalue %dx.types.ResRet.f32 %5435, 2
  br label %5444

; <label>:5439                                    ; preds = %5398
  %5440 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %5429, float %5430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5441 = extractvalue %dx.types.ResRet.f32 %5440, 0
  %5442 = extractvalue %dx.types.ResRet.f32 %5440, 1
  %5443 = extractvalue %dx.types.ResRet.f32 %5440, 2
  br label %5444

; <label>:5444                                    ; preds = %5439, %5434
  %5445 = phi float [ %5436, %5434 ], [ %5441, %5439 ]
  %5446 = phi float [ %5437, %5434 ], [ %5442, %5439 ]
  %5447 = phi float [ %5438, %5434 ], [ %5443, %5439 ]
  %5448 = extractvalue %dx.types.CBufRet.f32 %5407, 2
  %5449 = fmul fast float %5448, %5445
  %5450 = extractvalue %dx.types.CBufRet.f32 %5407, 0
  %5451 = fsub fast float %5416, %5450
  %5452 = fsub fast float %5451, %5449
  %5453 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5452)  ; FMax(a,b)
  %5454 = fmul fast float %5453, %5446
  %5455 = call float @dx.op.binary.f32(i32 36, float %5447, float %5454)  ; FMin(a,b)
  %5456 = fmul fast float %5455, 0xBFF7154760000000
  %5457 = call float @dx.op.unary.f32(i32 21, float %5456)  ; Exp(value)
  %5458 = fmul fast float %5400, %5457
  br label %5459

; <label>:5459                                    ; preds = %5444, %5294
  %5460 = phi float [ %5458, %5444 ], [ %5295, %5294 ]
  %5461 = call float @dx.op.binary.f32(i32 36, float %5460, float %5460)  ; FMin(a,b)
  %5462 = call float @dx.op.binary.f32(i32 36, float %5460, float %5461)  ; FMin(a,b)
  %5463 = fcmp fast ogt float %5462, 0.000000e+00
  br i1 %5463, label %5464, label %5715, !dx.controlflow.hints !120

; <label>:5464                                    ; preds = %5459
  %5465 = fmul fast float %5460, %4643
  %5466 = fmul fast float %5460, %4644
  %5467 = fmul fast float %5460, %4645
  %5468 = fsub fast float %194, %3611
  %5469 = fcmp fast ogt float %5468, 0.000000e+00
  %5470 = fmul fast float %4632, 5.120000e+02
  %5471 = fmul fast float %4633, 5.120000e+02
  %5472 = fmul fast float %4634, 5.120000e+02
  %5473 = fadd fast float %5472, %194
  %5474 = fsub fast float %3611, %5473
  %5475 = fmul fast float %5474, 2.000000e+00
  %5476 = fadd fast float %5475, %5473
  %5477 = select i1 %5469, float %5476, float %5473
  %5478 = fsub fast float %5477, %194
  %5479 = call float @dx.op.dot3.f32(i32 55, float %5470, float %5471, float %5478, float %5470, float %5471, float %5478)  ; Dot3(ax,ay,az,bx,by,bz)
  %5480 = call float @dx.op.unary.f32(i32 25, float %5479)  ; Rsqrt(value)
  %5481 = fmul fast float %5480, %5470
  %5482 = fmul fast float %5480, %5471
  %5483 = fmul fast float %5480, %5478
  %5484 = fsub fast float %3611, %194
  %5485 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5484)  ; Dot3(ax,ay,az,bx,by,bz)
  %5486 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5481, float %5482, float %5483)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = fdiv fast float 1.000000e+00, %5486
  %5488 = fmul fast float %5487, %5485
  %5489 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5468, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5490 = fcmp fast ogt float %5489, 0.000000e+00
  %5491 = fcmp fast olt float %5489, 0.000000e+00
  %5492 = zext i1 %5490 to i32
  %5493 = zext i1 %5491 to i32
  %5494 = sub nsw i32 %5492, %5493
  %5495 = sitofp i32 %5494 to float
  %5496 = fsub fast float %5477, %3611
  %5497 = call float @dx.op.dot3.f32(i32 55, float %5470, float %5471, float %5496, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = fcmp fast ogt float %5497, 0.000000e+00
  %5499 = fcmp fast olt float %5497, 0.000000e+00
  %5500 = zext i1 %5498 to i32
  %5501 = zext i1 %5499 to i32
  %5502 = sub nsw i32 %5500, %5501
  %5503 = sitofp i32 %5502 to float
  %5504 = fcmp fast une float %5495, %5503
  br i1 %5504, label %5505, label %5515

; <label>:5505                                    ; preds = %5464
  %5506 = fmul fast float %5488, %5483
  %5507 = fmul fast float %5488, %5482
  %5508 = fmul fast float %5488, %5481
  %5509 = fmul fast float %5508, %5508
  %5510 = fmul fast float %5507, %5507
  %5511 = fadd fast float %5509, %5510
  %5512 = fmul fast float %5506, %5506
  %5513 = fadd fast float %5511, %5512
  %5514 = call float @dx.op.unary.f32(i32 24, float %5513)  ; Sqrt(value)
  br label %5525

; <label>:5515                                    ; preds = %5464
  %5516 = icmp slt i32 %5494, 0
  br i1 %5516, label %5517, label %5525

; <label>:5517                                    ; preds = %5515
  %5518 = fsub fast float %194, %5477
  %5519 = fmul fast float %5470, %5470
  %5520 = fmul fast float %5471, %5471
  %5521 = fadd fast float %5519, %5520
  %5522 = fmul fast float %5518, %5518
  %5523 = fadd fast float %5521, %5522
  %5524 = call float @dx.op.unary.f32(i32 24, float %5523)  ; Sqrt(value)
  br label %5525

; <label>:5525                                    ; preds = %5517, %5515, %5505
  %5526 = phi float [ %5514, %5505 ], [ %5524, %5517 ], [ 0.000000e+00, %5515 ]
  %5527 = fsub fast float -0.000000e+00, %5526
  %5528 = select i1 %5469, float -0.000000e+00, float %5527
  %5529 = fmul fast float %3612, 0x3FF7154760000000
  %5530 = fmul fast float %5529, %5528
  %5531 = fmul fast float %3613, 0x3FF7154760000000
  %5532 = fmul fast float %5531, %5528
  %5533 = fmul fast float %3614, 0x3FF7154760000000
  %5534 = fmul fast float %5533, %5528
  %5535 = call float @dx.op.unary.f32(i32 21, float %5530)  ; Exp(value)
  %5536 = call float @dx.op.unary.f32(i32 21, float %5532)  ; Exp(value)
  %5537 = call float @dx.op.unary.f32(i32 21, float %5534)  ; Exp(value)
  %5538 = call float @dx.op.unary.f32(i32 7, float %5535)  ; Saturate(value)
  %5539 = call float @dx.op.unary.f32(i32 7, float %5536)  ; Saturate(value)
  %5540 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5541 = fmul fast float %5465, %5538
  %5542 = fmul fast float %5466, %5539
  %5543 = fmul fast float %5467, %5540
  %5544 = fsub fast float %4632, %4403
  %5545 = fsub fast float %4633, %4402
  %5546 = fsub fast float %4634, %4401
  %5547 = call float @dx.op.dot3.f32(i32 55, float %5544, float %5545, float %5546, float %5544, float %5545, float %5546)  ; Dot3(ax,ay,az,bx,by,bz)
  %5548 = call float @dx.op.unary.f32(i32 25, float %5547)  ; Rsqrt(value)
  %5549 = fmul fast float %5548, %5544
  %5550 = fmul fast float %5548, %5545
  %5551 = fmul fast float %5548, %5546
  %5552 = call float @dx.op.dot3.f32(i32 55, float %4632, float %4633, float %4634, float %4407, float %4408, float %4409)  ; Dot3(ax,ay,az,bx,by,bz)
  %5553 = call float @dx.op.dot3.f32(i32 55, float %4400, float %4399, float %4398, float %5549, float %5550, float %5551)  ; Dot3(ax,ay,az,bx,by,bz)
  %5554 = call float @dx.op.unary.f32(i32 7, float %5552)  ; Saturate(value)
  %5555 = fmul fast float %5554, %5554
  %5556 = fmul fast float %5555, %4431
  %5557 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5558 = fmul fast float %5557, %5554
  %5559 = call float @dx.op.dot3.f32(i32 55, float %4407, float %4408, float %4409, float %5549, float %5550, float %5551)  ; Dot3(ax,ay,az,bx,by,bz)
  %5560 = fmul fast float %5559, %5559
  %5561 = call float @dx.op.unary.f32(i32 6, float %5552)  ; FAbs(value)
  %5562 = fsub fast float 1.000000e+00, %4413
  %5563 = call float @dx.op.binary.f32(i32 35, float %5562, float 0x3F847AE140000000)  ; FMax(a,b)
  %5564 = fmul fast float %5563, %5563
  %5565 = fmul fast float %5564, %5564
  %5566 = fsub fast float 1.000000e+00, %5565
  %5567 = fmul fast float %4418, %4418
  %5568 = fmul fast float %5567, %5566
  %5569 = fadd fast float %5568, %5565
  %5570 = bitcast float %5569 to i32
  %5571 = ashr i32 %5570, 1
  %5572 = add nsw i32 %5571, 532487669
  %5573 = bitcast i32 %5572 to float
  %5574 = fadd fast float %5573, %4418
  %5575 = fmul fast float %5565, %5560
  %5576 = fsub fast float 1.000000e+00, %5560
  %5577 = fadd fast float %5576, %5575
  %5578 = fmul fast float %5561, %5561
  %5579 = fmul fast float %5578, %5566
  %5580 = fadd fast float %5579, %5565
  %5581 = bitcast float %5580 to i32
  %5582 = ashr i32 %5581, 1
  %5583 = add nsw i32 %5582, 532487669
  %5584 = bitcast i32 %5583 to float
  %5585 = fadd fast float %5584, %5561
  %5586 = fmul fast float %5577, %5577
  %5587 = fmul fast float %5586, %5574
  %5588 = fmul fast float %5587, %5585
  %5589 = fdiv fast float 0x3FF0A00000000000, %5588
  %5590 = fmul fast float %5589, %5565
  %5591 = call float @dx.op.unary.f32(i32 6, float %5553)  ; FAbs(value)
  %5592 = fsub fast float 1.000000e+00, %5591
  %5593 = bitcast float %5592 to i32
  %5594 = sitofp i32 %5593 to float
  %5595 = fmul fast float %5594, 5.000000e+00
  %5596 = fadd fast float %5595, 0xC1EFBF8940000000
  %5597 = fptosi float %5596 to i32
  %5598 = bitcast i32 %5597 to float
  %5599 = fsub fast float 1.000000e+00, %4404
  %5600 = fsub fast float 1.000000e+00, %4405
  %5601 = fsub fast float 1.000000e+00, %4416
  %5602 = fmul fast float %5598, %5599
  %5603 = fmul fast float %5598, %5600
  %5604 = fmul fast float %5598, %5601
  %5605 = fadd fast float %5602, %4404
  %5606 = fadd fast float %5603, %4405
  %5607 = fadd fast float %5604, %4416
  br i1 %4543, label %5608, label %5631

; <label>:5608                                    ; preds = %5525
  %5609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %49, float %3209, float %5591, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5610 = extractvalue %dx.types.ResRet.f32 %5609, 0
  %5611 = extractvalue %dx.types.ResRet.f32 %5609, 1
  %5612 = extractvalue %dx.types.ResRet.f32 %5609, 2
  %5613 = fadd fast float %5610, -5.000000e-01
  %5614 = fadd fast float %5611, -5.000000e-01
  %5615 = fadd fast float %5612, -5.000000e-01
  %5616 = fmul fast float %4404, 4.000000e+00
  %5617 = fmul fast float %5616, %5599
  %5618 = fmul fast float %5617, %5613
  %5619 = fmul fast float %4405, 4.000000e+00
  %5620 = fmul fast float %5619, %5600
  %5621 = fmul fast float %5620, %5614
  %5622 = fmul fast float %4416, 4.000000e+00
  %5623 = fmul fast float %5622, %5601
  %5624 = fmul fast float %5623, %5615
  %5625 = fadd fast float %5618, %5605
  %5626 = fadd fast float %5621, %5606
  %5627 = fadd fast float %5624, %5607
  %5628 = call float @dx.op.unary.f32(i32 7, float %5625)  ; Saturate(value)
  %5629 = call float @dx.op.unary.f32(i32 7, float %5626)  ; Saturate(value)
  %5630 = call float @dx.op.unary.f32(i32 7, float %5627)  ; Saturate(value)
  br label %5631

; <label>:5631                                    ; preds = %5608, %5525
  %5632 = phi float [ %5628, %5608 ], [ %5605, %5525 ]
  %5633 = phi float [ %5629, %5608 ], [ %5606, %5525 ]
  %5634 = phi float [ %5630, %5608 ], [ %5607, %5525 ]
  %5635 = fmul fast float %5552, 9.843750e-01
  %5636 = fadd fast float %5635, 7.812500e-03
  %5637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %49, float %5636, float %4533, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5638 = extractvalue %dx.types.ResRet.f32 %5637, 2
  %5639 = extractvalue %dx.types.ResRet.f32 %5637, 3
  %5640 = fmul fast float %5638, %4404
  %5641 = fmul fast float %5638, %4405
  %5642 = fmul fast float %5638, %4416
  %5643 = fadd fast float %5640, %5639
  %5644 = fadd fast float %5641, %5639
  %5645 = fadd fast float %5642, %5639
  br i1 %4543, label %5646, label %5669

; <label>:5646                                    ; preds = %5631
  %5647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %49, float %3209, float %5552, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5648 = extractvalue %dx.types.ResRet.f32 %5647, 0
  %5649 = extractvalue %dx.types.ResRet.f32 %5647, 1
  %5650 = extractvalue %dx.types.ResRet.f32 %5647, 2
  %5651 = fadd fast float %5648, -5.000000e-01
  %5652 = fadd fast float %5649, -5.000000e-01
  %5653 = fadd fast float %5650, -5.000000e-01
  %5654 = fmul fast float %4404, 4.000000e+00
  %5655 = fmul fast float %5654, %5599
  %5656 = fmul fast float %5655, %5651
  %5657 = fmul fast float %4405, 4.000000e+00
  %5658 = fmul fast float %5657, %5600
  %5659 = fmul fast float %5658, %5652
  %5660 = fmul fast float %4416, 4.000000e+00
  %5661 = fmul fast float %5660, %5601
  %5662 = fmul fast float %5661, %5653
  %5663 = fadd fast float %5656, %5643
  %5664 = fadd fast float %5659, %5644
  %5665 = fadd fast float %5662, %5645
  %5666 = call float @dx.op.unary.f32(i32 7, float %5663)  ; Saturate(value)
  %5667 = call float @dx.op.unary.f32(i32 7, float %5664)  ; Saturate(value)
  %5668 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  br label %5669

; <label>:5669                                    ; preds = %5646, %5631
  %5670 = phi float [ %5666, %5646 ], [ %5643, %5631 ]
  %5671 = phi float [ %5667, %5646 ], [ %5644, %5631 ]
  %5672 = phi float [ %5668, %5646 ], [ %5645, %5631 ]
  %5673 = call float @dx.op.binary.f32(i32 35, float %5671, float %5672)  ; FMax(a,b)
  %5674 = call float @dx.op.binary.f32(i32 35, float %5670, float %5673)  ; FMax(a,b)
  %5675 = fsub fast float 1.000000e+00, %5674
  %5676 = fmul fast float %5632, %5590
  %5677 = fmul fast float %5633, %5590
  %5678 = fmul fast float %5634, %5590
  %5679 = fsub fast float 1.000000e+00, %5553
  %5680 = bitcast float %5679 to i32
  %5681 = sitofp i32 %5680 to float
  %5682 = fmul fast float %5681, 5.000000e+00
  %5683 = fadd fast float %5682, 0xC1EFBF8940000000
  %5684 = fptosi float %5683 to i32
  %5685 = bitcast i32 %5684 to float
  %5686 = fmul fast float %5685, %3210
  %5687 = fmul fast float %5675, %5686
  %5688 = fmul fast float %5687, %4593
  %5689 = fmul fast float %5687, %4594
  %5690 = fmul fast float %5687, %4595
  %5691 = fadd fast float %5688, %5676
  %5692 = fadd fast float %5689, %5677
  %5693 = fadd fast float %5690, %5678
  %5694 = fmul fast float %5558, %5541
  %5695 = fmul fast float %5694, %5675
  %5696 = fmul fast float %5558, %5542
  %5697 = fmul fast float %5696, %5675
  %5698 = fmul fast float %5558, %5543
  %5699 = fmul fast float %5698, %5675
  %5700 = fmul fast float %5694, %5691
  %5701 = fmul fast float %5696, %5692
  %5702 = fmul fast float %5698, %5693
  %5703 = fadd fast float %5695, %4577
  %5704 = fmul fast float %5703, %3206
  %5705 = fadd fast float %5697, %4578
  %5706 = fmul fast float %5705, %3206
  %5707 = fadd fast float %5699, %4579
  %5708 = fmul fast float %5707, %3206
  %5709 = fadd fast float %5700, %4620
  %5710 = fmul fast float %5709, %3206
  %5711 = fadd fast float %5701, %4623
  %5712 = fmul fast float %5711, %3206
  %5713 = fadd fast float %5702, %4626
  %5714 = fmul fast float %5713, %3206
  br label %5715

; <label>:5715                                    ; preds = %5669, %5459, %4570
  %5716 = phi float [ %4621, %4570 ], [ %4621, %5459 ], [ %5710, %5669 ]
  %5717 = phi float [ %4624, %4570 ], [ %4624, %5459 ], [ %5712, %5669 ]
  %5718 = phi float [ %4627, %4570 ], [ %4627, %5459 ], [ %5714, %5669 ]
  %5719 = phi float [ %4616, %4570 ], [ %4616, %5459 ], [ %5704, %5669 ]
  %5720 = phi float [ %4617, %4570 ], [ %4617, %5459 ], [ %5706, %5669 ]
  %5721 = phi float [ %4618, %4570 ], [ %4618, %5459 ], [ %5708, %5669 ]
  %5722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5723 = extractvalue %dx.types.CBufRet.i32 %5722, 0
  %5724 = icmp eq i32 %5723, 0
  br i1 %5724, label %6345, label %5725

; <label>:5725                                    ; preds = %5715
  %5726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.f32 %5726, 2
  %5728 = extractvalue %dx.types.CBufRet.f32 %5726, 3
  %5729 = fmul fast float %5727, %105
  %5730 = fmul fast float %5728, %106
  %5731 = fptoui float %5729 to i32
  %5732 = fptoui float %5730 to i32
  %5733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5733, 0
  %5735 = extractvalue %dx.types.CBufRet.f32 %5733, 2
  %5736 = extractvalue %dx.types.CBufRet.f32 %5733, 3
  %5737 = fadd fast float %96, -4.000000e+00
  %5738 = call float @dx.op.binary.f32(i32 35, float %5737, float 0.000000e+00)  ; FMax(a,b)
  %5739 = fadd fast float %5738, %5734
  %5740 = fmul fast float %5739, %5735
  %5741 = call float @dx.op.unary.f32(i32 23, float %5740)  ; Log(value)
  %5742 = fmul fast float %5741, %5736
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 2
  %5745 = fmul fast float %5742, %5744
  %5746 = call float @dx.op.unary.f32(i32 7, float %5745)  ; Saturate(value)
  %5747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5748 = extractvalue %dx.types.CBufRet.i32 %5747, 1
  %5749 = add i32 %5748, -1
  %5750 = uitofp i32 %5748 to float
  %5751 = fmul fast float %5750, %5746
  %5752 = fptoui float %5751 to i32
  %5753 = call i32 @dx.op.binary.i32(i32 40, i32 %5752, i32 %5749)  ; UMin(a,b)
  %5754 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5755 = extractvalue %dx.types.CBufRet.i32 %5754, 2
  %5756 = extractvalue %dx.types.CBufRet.i32 %5754, 3
  %5757 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5732, i32 %5755, i32 %5731)  ; UMad(a,b,c)
  %5758 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5753, i32 %5756, i32 %5757)  ; UMad(a,b,c)
  %5759 = add nsw i32 %5723, -1
  %5760 = call i32 @dx.op.binary.i32(i32 37, i32 %5759, i32 0)  ; IMax(a,b)
  %5761 = call float @dx.op.binary.f32(i32 35, float %96, float 0.000000e+00)  ; FMax(a,b)
  %5762 = fptoui float %5761 to i32
  %5763 = lshr i32 %5762, 5
  %5764 = call i32 @dx.op.binary.i32(i32 40, i32 %5763, i32 8191)  ; UMin(a,b)
  %5765 = shl i32 %5764, 2
  %5766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5765, i32 undef)  ; BufferLoad(srv,index,wot)
  %5767 = extractvalue %dx.types.ResRet.i32 %5766, 0
  %5768 = lshr i32 %5767, 16
  %5769 = and i32 %5767, 65535
  %5770 = lshr i32 %5767, 21
  %5771 = lshr i32 %5769, 5
  %5772 = call i32 @dx.op.binary.i32(i32 40, i32 %5771, i32 %5760)  ; UMin(a,b)
  %5773 = icmp ugt i32 %5770, %5772
  br i1 %5773, label %6345, label %5774

; <label>:5774                                    ; preds = %5725
  br label %5775

; <label>:5775                                    ; preds = %6335, %5774
  %5776 = phi i32 [ %6342, %6335 ], [ %5770, %5774 ]
  %5777 = phi float [ %6336, %6335 ], [ %5716, %5774 ]
  %5778 = phi float [ %6337, %6335 ], [ %5717, %5774 ]
  %5779 = phi float [ %6338, %6335 ], [ %5718, %5774 ]
  %5780 = phi float [ %6339, %6335 ], [ %5719, %5774 ]
  %5781 = phi float [ %6340, %6335 ], [ %5720, %5774 ]
  %5782 = phi float [ %6341, %6335 ], [ %5721, %5774 ]
  %5783 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5784 = extractvalue %dx.types.CBufRet.i32 %5783, 0
  %5785 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5758, i32 %5784, i32 %5776)  ; UMad(a,b,c)
  %5786 = shl i32 %5785, 2
  %5787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %5786, i32 undef)  ; BufferLoad(srv,index,wot)
  %5788 = extractvalue %dx.types.ResRet.i32 %5787, 0
  %5789 = shl i32 %5776, 5
  %5790 = sub nsw i32 %5768, %5789
  %5791 = call i32 @dx.op.binary.i32(i32 37, i32 %5790, i32 0)  ; IMax(a,b)
  %5792 = call i32 @dx.op.binary.i32(i32 38, i32 %5791, i32 31)  ; IMin(a,b)
  %5793 = sub nsw i32 1, %5768
  %5794 = add nsw i32 %5793, %5769
  %5795 = call i32 @dx.op.binary.i32(i32 37, i32 %5794, i32 0)  ; IMax(a,b)
  %5796 = call i32 @dx.op.binary.i32(i32 38, i32 %5795, i32 32)  ; IMin(a,b)
  %5797 = and i32 %5796, 31
  %5798 = shl i32 -1, %5797
  %5799 = xor i32 %5798, -1
  %5800 = and i32 %5792, 31
  %5801 = shl i32 %5799, %5800
  %5802 = icmp eq i32 %5796, 32
  %5803 = select i1 %5802, i32 -1, i32 %5801
  %5804 = and i32 %5803, %5788
  %5805 = icmp eq i32 %5804, 0
  br i1 %5805, label %6335, label %5806

; <label>:5806                                    ; preds = %5775
  br label %5807

; <label>:5807                                    ; preds = %5941, %5806
  %5808 = phi i32 [ %5819, %5941 ], [ %5804, %5806 ]
  %5809 = phi float [ %5942, %5941 ], [ %5777, %5806 ]
  %5810 = phi float [ %5943, %5941 ], [ %5778, %5806 ]
  %5811 = phi float [ %5944, %5941 ], [ %5779, %5806 ]
  %5812 = phi float [ %5945, %5941 ], [ %5780, %5806 ]
  %5813 = phi float [ %5946, %5941 ], [ %5781, %5806 ]
  %5814 = phi float [ %5947, %5941 ], [ %5782, %5806 ]
  %5815 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5808)  ; FirstbitLo(value)
  %5816 = add i32 %5815, %5789
  %5817 = and i32 %5815, 31
  %5818 = shl i32 1, %5817
  %5819 = xor i32 %5818, %5808
  %5820 = mul i32 %5816, 112
  %5821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %5820, i32 undef)  ; BufferLoad(srv,index,wot)
  %5822 = extractvalue %dx.types.ResRet.f32 %5821, 0
  %5823 = extractvalue %dx.types.ResRet.f32 %5821, 1
  %5824 = extractvalue %dx.types.ResRet.f32 %5821, 2
  %5825 = or i32 %5820, 12
  %5826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %5825, i32 undef)  ; BufferLoad(srv,index,wot)
  %5827 = extractvalue %dx.types.ResRet.f32 %5826, 0
  %5828 = add i32 %5820, 16
  %5829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %5828, i32 undef)  ; BufferLoad(srv,index,wot)
  %5830 = extractvalue %dx.types.ResRet.f32 %5829, 0
  %5831 = extractvalue %dx.types.ResRet.f32 %5829, 1
  %5832 = extractvalue %dx.types.ResRet.f32 %5829, 2
  %5833 = add i32 %5820, 28
  %5834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %5833, i32 undef)  ; BufferLoad(srv,index,wot)
  %5835 = extractvalue %dx.types.ResRet.i32 %5834, 0
  %5836 = add i32 %5820, 44
  %5837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %5836, i32 undef)  ; BufferLoad(srv,index,wot)
  %5838 = extractvalue %dx.types.ResRet.f32 %5837, 0
  %5839 = add i32 %5820, 48
  %5840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %5839, i32 undef)  ; BufferLoad(srv,index,wot)
  %5841 = extractvalue %dx.types.ResRet.f32 %5840, 0
  %5842 = extractvalue %dx.types.ResRet.f32 %5840, 1
  %5843 = extractvalue %dx.types.ResRet.f32 %5840, 2
  %5844 = extractvalue %dx.types.ResRet.f32 %5840, 3
  %5845 = add i32 %5820, 64
  %5846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %5845, i32 undef)  ; BufferLoad(srv,index,wot)
  %5847 = extractvalue %dx.types.ResRet.f32 %5846, 0
  %5848 = extractvalue %dx.types.ResRet.f32 %5846, 1
  %5849 = extractvalue %dx.types.ResRet.f32 %5846, 2
  %5850 = extractvalue %dx.types.ResRet.f32 %5846, 3
  %5851 = add i32 %5820, 80
  %5852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %5851, i32 undef)  ; BufferLoad(srv,index,wot)
  %5853 = extractvalue %dx.types.ResRet.f32 %5852, 1
  %5854 = extractvalue %dx.types.ResRet.f32 %5852, 2
  %5855 = add i32 %5820, 92
  %5856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %5855, i32 undef)  ; BufferLoad(srv,index,wot)
  %5857 = extractvalue %dx.types.ResRet.i32 %5856, 0
  %5858 = call float @dx.op.dot3.f32(i32 55, float %5822, float %5823, float %5824, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5859 = select i1 %251, float %5853, float %5822
  %5860 = select i1 %251, float %5858, float %5823
  %5861 = select i1 %251, float %5854, float %5824
  %5862 = and i32 %5857, 65535
  %5863 = uitofp i32 %5862 to float
  %5864 = lshr i32 %5857, 16
  %5865 = uitofp i32 %5864 to float
  %5866 = and i32 %5835, 65535
  %5867 = and i32 %5835, 50331648
  %5868 = icmp eq i32 %5867, 33554432
  %5869 = fsub fast float %5841, %192
  %5870 = fsub fast float %5842, %193
  %5871 = fsub fast float %5843, %194
  %5872 = call float @dx.op.dot3.f32(i32 55, float %5869, float %5870, float %5871, float %5869, float %5870, float %5871)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = call float @dx.op.unary.f32(i32 24, float %5872)  ; Sqrt(value)
  %5874 = fdiv fast float 1.000000e+00, %5873
  %5875 = fmul fast float %5874, %5869
  %5876 = fmul fast float %5874, %5870
  %5877 = fmul fast float %5874, %5871
  %5878 = fadd fast float %5873, %5827
  %5879 = fdiv fast float 1.000000e+00, %5878
  %5880 = fmul float %5838, %5879
  %5881 = fmul float %5880, %5880
  %5882 = call float @dx.op.unary.f32(i32 7, float %5881)  ; Saturate(value)
  br i1 %5868, label %5883, label %5904

; <label>:5883                                    ; preds = %5807
  %5884 = fmul fast float %5849, %5830
  %5885 = fmul fast float %5849, %5831
  %5886 = fmul fast float %5849, %5832
  %5887 = fadd fast float %5869, %5884
  %5888 = fadd fast float %5870, %5885
  %5889 = fadd fast float %5871, %5886
  %5890 = call float @dx.op.dot3.f32(i32 55, float %5887, float %5888, float %5889, float %5887, float %5888, float %5889)  ; Dot3(ax,ay,az,bx,by,bz)
  %5891 = call float @dx.op.unary.f32(i32 25, float %5890)  ; Rsqrt(value)
  %5892 = fmul fast float %5891, %5887
  %5893 = fmul fast float %5891, %5888
  %5894 = fmul fast float %5891, %5889
  %5895 = fsub fast float %192, %5841
  %5896 = fsub fast float %193, %5842
  %5897 = fsub fast float %194, %5843
  %5898 = fsub fast float -0.000000e+00, %5895
  %5899 = fsub fast float -0.000000e+00, %5896
  %5900 = fsub fast float -0.000000e+00, %5897
  %5901 = call float @dx.op.dot3.f32(i32 55, float %5898, float %5899, float %5900, float %5830, float %5831, float %5832)  ; Dot3(ax,ay,az,bx,by,bz)
  %5902 = fcmp fast ogt float %5901, 0.000000e+00
  %5903 = uitofp i1 %5902 to float
  br label %5904

; <label>:5904                                    ; preds = %5883, %5807
  %5905 = phi float [ %5903, %5883 ], [ 1.000000e+00, %5807 ]
  %5906 = phi float [ %5892, %5883 ], [ %5875, %5807 ]
  %5907 = phi float [ %5893, %5883 ], [ %5876, %5807 ]
  %5908 = phi float [ %5894, %5883 ], [ %5877, %5807 ]
  %5909 = call float @dx.op.dot3.f32(i32 55, float %5830, float %5831, float %5832, float %5906, float %5907, float %5908)  ; Dot3(ax,ay,az,bx,by,bz)
  %5910 = fmul fast float %5909, %5909
  %5911 = call float @dx.op.unary.f32(i32 7, float %5910)  ; Saturate(value)
  %5912 = fsub fast float 1.000000e+00, %5911
  %5913 = fmul fast float %5912, 5.000000e-01
  %5914 = fcmp fast ogt float %5909, 0.000000e+00
  %5915 = fsub fast float 1.000000e+00, %5913
  %5916 = select i1 %5914, float %5913, float %5915
  %5917 = fmul fast float %5916, %5865
  %5918 = fadd fast float %5917, %5863
  %5919 = fmul fast float %5918, 0x3EF0001000000000
  %5920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %49, float %5919, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5921 = extractvalue %dx.types.ResRet.f32 %5920, 0
  %5922 = fmul fast float %5909, %5847
  %5923 = fadd fast float %5922, %5848
  %5924 = call float @dx.op.unary.f32(i32 7, float %5923)  ; Saturate(value)
  %5925 = select i1 %5868, float 1.000000e+00, float %5924
  %5926 = select i1 %5868, float %5924, float 1.000000e+00
  %5927 = fmul fast float %5873, %5844
  %5928 = fsub fast float 1.000000e+00, %5927
  %5929 = fmul fast float %5928, %5850
  %5930 = call float @dx.op.unary.f32(i32 7, float %5929)  ; Saturate(value)
  %5931 = fmul fast float %5930, %5926
  %5932 = fmul fast float %5931, 2.000000e+00
  %5933 = fsub fast float 3.000000e+00, %5932
  %5934 = fmul fast float %5921, %5905
  %5935 = fmul fast float %5931, %5931
  %5936 = fmul fast float %5935, %5934
  %5937 = fmul fast float %5936, %5933
  %5938 = call float @dx.op.binary.f32(i32 36, float %5937, float %5937)  ; FMin(a,b)
  %5939 = call float @dx.op.binary.f32(i32 36, float %5937, float %5938)  ; FMin(a,b)
  %5940 = fcmp fast ogt float %5939, 0.000000e+00
  br i1 %5940, label %5949, label %5941, !dx.controlflow.hints !121

; <label>:5941                                    ; preds = %6291, %6049, %5904
  %5942 = phi float [ %5809, %6049 ], [ %5809, %5904 ], [ %6331, %6291 ]
  %5943 = phi float [ %5810, %6049 ], [ %5810, %5904 ], [ %6332, %6291 ]
  %5944 = phi float [ %5811, %6049 ], [ %5811, %5904 ], [ %6333, %6291 ]
  %5945 = phi float [ %5812, %6049 ], [ %5812, %5904 ], [ %6325, %6291 ]
  %5946 = phi float [ %5813, %6049 ], [ %5813, %5904 ], [ %6326, %6291 ]
  %5947 = phi float [ %5814, %6049 ], [ %5814, %5904 ], [ %6327, %6291 ]
  %5948 = icmp eq i32 %5808, %5818
  br i1 %5948, label %6334, label %5807

; <label>:5949                                    ; preds = %5904
  %5950 = icmp eq i32 %5866, 255
  br i1 %5950, label %6049, label %5951, !dx.controlflow.hints !122

; <label>:5951                                    ; preds = %5949
  %5952 = mul nuw nsw i32 %5866, 176
  %5953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5952, i32 undef)  ; BufferLoad(srv,index,wot)
  %5954 = extractvalue %dx.types.ResRet.f32 %5953, 0
  %5955 = extractvalue %dx.types.ResRet.f32 %5953, 1
  %5956 = extractvalue %dx.types.ResRet.f32 %5953, 2
  %5957 = extractvalue %dx.types.ResRet.f32 %5953, 3
  %5958 = add nuw nsw i32 %5952, 16
  %5959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5958, i32 undef)  ; BufferLoad(srv,index,wot)
  %5960 = extractvalue %dx.types.ResRet.f32 %5959, 0
  %5961 = extractvalue %dx.types.ResRet.f32 %5959, 1
  %5962 = add nuw nsw i32 %5952, 32
  %5963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5962, i32 undef)  ; BufferLoad(srv,index,wot)
  %5964 = extractvalue %dx.types.ResRet.f32 %5963, 0
  %5965 = extractvalue %dx.types.ResRet.f32 %5963, 1
  %5966 = extractvalue %dx.types.ResRet.f32 %5963, 2
  %5967 = add nuw nsw i32 %5952, 48
  %5968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5967, i32 undef)  ; BufferLoad(srv,index,wot)
  %5969 = extractvalue %dx.types.ResRet.f32 %5968, 0
  %5970 = extractvalue %dx.types.ResRet.f32 %5968, 1
  %5971 = extractvalue %dx.types.ResRet.f32 %5968, 2
  %5972 = extractvalue %dx.types.ResRet.f32 %5968, 3
  %5973 = add nuw nsw i32 %5952, 64
  %5974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5973, i32 undef)  ; BufferLoad(srv,index,wot)
  %5975 = extractvalue %dx.types.ResRet.f32 %5974, 0
  %5976 = extractvalue %dx.types.ResRet.f32 %5974, 1
  %5977 = extractvalue %dx.types.ResRet.f32 %5974, 2
  %5978 = extractvalue %dx.types.ResRet.f32 %5974, 3
  %5979 = add nuw nsw i32 %5952, 80
  %5980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5979, i32 undef)  ; BufferLoad(srv,index,wot)
  %5981 = extractvalue %dx.types.ResRet.f32 %5980, 0
  %5982 = extractvalue %dx.types.ResRet.f32 %5980, 1
  %5983 = extractvalue %dx.types.ResRet.f32 %5980, 2
  %5984 = extractvalue %dx.types.ResRet.f32 %5980, 3
  %5985 = add nuw nsw i32 %5952, 96
  %5986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5985, i32 undef)  ; BufferLoad(srv,index,wot)
  %5987 = extractvalue %dx.types.ResRet.f32 %5986, 0
  %5988 = extractvalue %dx.types.ResRet.f32 %5986, 1
  %5989 = extractvalue %dx.types.ResRet.f32 %5986, 2
  %5990 = extractvalue %dx.types.ResRet.f32 %5986, 3
  %5991 = bitcast float %5961 to i32
  %5992 = fmul fast float %5966, %112
  %5993 = fmul fast float %5966, %113
  %5994 = fmul fast float %5966, %114
  %5995 = fadd fast float %5992, %192
  %5996 = fadd fast float %5993, %193
  %5997 = fadd fast float %5994, %194
  %5998 = fmul fast float %5995, %5969
  %5999 = call float @dx.op.tertiary.f32(i32 46, float %5996, float %5975, float %5998)  ; FMad(a,b,c)
  %6000 = call float @dx.op.tertiary.f32(i32 46, float %5997, float %5981, float %5999)  ; FMad(a,b,c)
  %6001 = fadd fast float %6000, %5987
  %6002 = fmul fast float %5995, %5970
  %6003 = call float @dx.op.tertiary.f32(i32 46, float %5996, float %5976, float %6002)  ; FMad(a,b,c)
  %6004 = call float @dx.op.tertiary.f32(i32 46, float %5997, float %5982, float %6003)  ; FMad(a,b,c)
  %6005 = fadd fast float %6004, %5988
  %6006 = fmul fast float %5995, %5971
  %6007 = call float @dx.op.tertiary.f32(i32 46, float %5996, float %5977, float %6006)  ; FMad(a,b,c)
  %6008 = call float @dx.op.tertiary.f32(i32 46, float %5997, float %5983, float %6007)  ; FMad(a,b,c)
  %6009 = fadd fast float %6008, %5989
  %6010 = fmul fast float %5995, %5972
  %6011 = call float @dx.op.tertiary.f32(i32 46, float %5996, float %5978, float %6010)  ; FMad(a,b,c)
  %6012 = call float @dx.op.tertiary.f32(i32 46, float %5997, float %5984, float %6011)  ; FMad(a,b,c)
  %6013 = fadd fast float %6012, %5990
  %6014 = fdiv fast float %6001, %6013
  %6015 = fdiv fast float %6005, %6013
  %6016 = fdiv fast float %6009, %6013
  %6017 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6016)  ; FMax(a,b)
  %6018 = fmul fast float %262, 0x401921FB60000000
  %6019 = call float @dx.op.unary.f32(i32 13, float %6018)  ; Sin(value)
  %6020 = call float @dx.op.unary.f32(i32 12, float %6018)  ; Cos(value)
  %6021 = fsub fast float -0.000000e+00, %6019
  %6022 = fmul fast float %5956, 5.000000e-01
  %6023 = call float @dx.op.dot2.f32(i32 54, float %262, float %262, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6024 = call float @dx.op.unary.f32(i32 22, float %6023)  ; Frc(value)
  %6025 = fmul fast float %6024, 0x404A7DD040000000
  %6026 = call float @dx.op.unary.f32(i32 22, float %6025)  ; Frc(value)
  %6027 = fmul fast float %6026, %5965
  %6028 = fadd fast float %6027, %6022
  %6029 = call float @dx.op.tertiary.f32(i32 46, float %6028, float %6021, float 0.000000e+00)  ; FMad(a,b,c)
  %6030 = call float @dx.op.tertiary.f32(i32 46, float %6028, float %6020, float 0.000000e+00)  ; FMad(a,b,c)
  %6031 = fadd fast float %6029, %6014
  %6032 = fadd fast float %6030, %6015
  %6033 = fmul fast float %6031, %5960
  %6034 = fmul fast float %6032, %5960
  %6035 = call float @dx.op.binary.f32(i32 35, float %6033, float %5956)  ; FMax(a,b)
  %6036 = call float @dx.op.binary.f32(i32 35, float %6034, float %5956)  ; FMax(a,b)
  %6037 = call float @dx.op.binary.f32(i32 36, float %6035, float %5957)  ; FMin(a,b)
  %6038 = call float @dx.op.binary.f32(i32 36, float %6036, float %5957)  ; FMin(a,b)
  %6039 = fadd fast float %6037, %5954
  %6040 = fadd fast float %6038, %5955
  %6041 = uitofp i32 %5991 to float
  %6042 = fadd fast float %6017, %5964
  %6043 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %21, %dx.types.Handle %51, float %6039, float %6040, float %6041, float undef, i32 0, i32 0, i32 undef, float %6042)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6044 = extractvalue %dx.types.ResRet.f32 %6043, 0
  %6045 = fadd fast float %6044, -1.000000e+00
  %6046 = fmul fast float %6045, %5925
  %6047 = fadd fast float %6046, 1.000000e+00
  %6048 = fmul fast float %6047, %5937
  br label %6049

; <label>:6049                                    ; preds = %5951, %5949
  %6050 = phi float [ %6048, %5951 ], [ %5937, %5949 ]
  %6051 = call float @dx.op.binary.f32(i32 36, float %6050, float %6050)  ; FMin(a,b)
  %6052 = call float @dx.op.binary.f32(i32 36, float %6050, float %6051)  ; FMin(a,b)
  %6053 = fcmp fast ogt float %6052, 0.000000e+00
  br i1 %6053, label %6054, label %5941, !dx.controlflow.hints !123

; <label>:6054                                    ; preds = %6049
  %6055 = fmul fast float %6050, %5859
  %6056 = fmul fast float %6050, %5860
  %6057 = fmul fast float %6050, %5861
  %6058 = fsub fast float %5843, %3611
  %6059 = fcmp fast ogt float %6058, 0.000000e+00
  %6060 = fsub fast float %194, %3611
  %6061 = fcmp fast ogt float %6060, 0.000000e+00
  %6062 = xor i1 %6061, %6059
  %6063 = fsub fast float %3611, %5843
  %6064 = fmul fast float %6063, 2.000000e+00
  %6065 = fadd fast float %6064, %5843
  %6066 = select i1 %6062, float %5843, float %6065
  %6067 = fsub fast float %6066, %194
  %6068 = call float @dx.op.dot3.f32(i32 55, float %5869, float %5870, float %6067, float %5869, float %5870, float %6067)  ; Dot3(ax,ay,az,bx,by,bz)
  %6069 = call float @dx.op.unary.f32(i32 25, float %6068)  ; Rsqrt(value)
  %6070 = fmul fast float %6069, %5869
  %6071 = fmul fast float %6069, %5870
  %6072 = fmul fast float %6069, %6067
  %6073 = fsub fast float %3611, %194
  %6074 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6073)  ; Dot3(ax,ay,az,bx,by,bz)
  %6075 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6070, float %6071, float %6072)  ; Dot3(ax,ay,az,bx,by,bz)
  %6076 = fdiv fast float 1.000000e+00, %6075
  %6077 = fmul fast float %6076, %6074
  %6078 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6060, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6079 = fcmp fast ogt float %6078, 0.000000e+00
  %6080 = fcmp fast olt float %6078, 0.000000e+00
  %6081 = zext i1 %6079 to i32
  %6082 = zext i1 %6080 to i32
  %6083 = sub nsw i32 %6081, %6082
  %6084 = sitofp i32 %6083 to float
  %6085 = fsub fast float %6066, %3611
  %6086 = call float @dx.op.dot3.f32(i32 55, float %5869, float %5870, float %6085, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6087 = fcmp fast ogt float %6086, 0.000000e+00
  %6088 = fcmp fast olt float %6086, 0.000000e+00
  %6089 = zext i1 %6087 to i32
  %6090 = zext i1 %6088 to i32
  %6091 = sub nsw i32 %6089, %6090
  %6092 = sitofp i32 %6091 to float
  %6093 = fcmp fast une float %6084, %6092
  br i1 %6093, label %6094, label %6104

; <label>:6094                                    ; preds = %6054
  %6095 = fmul fast float %6077, %6072
  %6096 = fmul fast float %6077, %6071
  %6097 = fmul fast float %6077, %6070
  %6098 = fmul fast float %6097, %6097
  %6099 = fmul fast float %6096, %6096
  %6100 = fadd fast float %6098, %6099
  %6101 = fmul fast float %6095, %6095
  %6102 = fadd fast float %6100, %6101
  %6103 = call float @dx.op.unary.f32(i32 24, float %6102)  ; Sqrt(value)
  br label %6116

; <label>:6104                                    ; preds = %6054
  %6105 = icmp slt i32 %6083, 0
  br i1 %6105, label %6106, label %6116

; <label>:6106                                    ; preds = %6104
  %6107 = fsub fast float %192, %5841
  %6108 = fsub fast float %193, %5842
  %6109 = fsub fast float %194, %6066
  %6110 = fmul fast float %6107, %6107
  %6111 = fmul fast float %6108, %6108
  %6112 = fadd fast float %6110, %6111
  %6113 = fmul fast float %6109, %6109
  %6114 = fadd fast float %6112, %6113
  %6115 = call float @dx.op.unary.f32(i32 24, float %6114)  ; Sqrt(value)
  br label %6116

; <label>:6116                                    ; preds = %6106, %6104, %6094
  %6117 = phi float [ %6103, %6094 ], [ %6115, %6106 ], [ 0.000000e+00, %6104 ]
  %6118 = and i1 %6061, %6059
  %6119 = fsub fast float -0.000000e+00, %6117
  %6120 = select i1 %6118, float -0.000000e+00, float %6119
  %6121 = fmul fast float %3612, 0x3FF7154760000000
  %6122 = fmul fast float %6121, %6120
  %6123 = fmul fast float %3613, 0x3FF7154760000000
  %6124 = fmul fast float %6123, %6120
  %6125 = fmul fast float %3614, 0x3FF7154760000000
  %6126 = fmul fast float %6125, %6120
  %6127 = call float @dx.op.unary.f32(i32 21, float %6122)  ; Exp(value)
  %6128 = call float @dx.op.unary.f32(i32 21, float %6124)  ; Exp(value)
  %6129 = call float @dx.op.unary.f32(i32 21, float %6126)  ; Exp(value)
  %6130 = call float @dx.op.unary.f32(i32 7, float %6127)  ; Saturate(value)
  %6131 = call float @dx.op.unary.f32(i32 7, float %6128)  ; Saturate(value)
  %6132 = call float @dx.op.unary.f32(i32 7, float %6129)  ; Saturate(value)
  %6133 = fmul fast float %6055, %6130
  %6134 = fmul fast float %6056, %6131
  %6135 = fmul fast float %6057, %6132
  %6136 = fsub fast float %5875, %4403
  %6137 = fsub fast float %5876, %4402
  %6138 = fsub fast float %5877, %4401
  %6139 = call float @dx.op.dot3.f32(i32 55, float %6136, float %6137, float %6138, float %6136, float %6137, float %6138)  ; Dot3(ax,ay,az,bx,by,bz)
  %6140 = call float @dx.op.unary.f32(i32 25, float %6139)  ; Rsqrt(value)
  %6141 = fmul fast float %6140, %6136
  %6142 = fmul fast float %6140, %6137
  %6143 = fmul fast float %6140, %6138
  %6144 = call float @dx.op.dot3.f32(i32 55, float %5875, float %5876, float %5877, float %4407, float %4408, float %4409)  ; Dot3(ax,ay,az,bx,by,bz)
  %6145 = call float @dx.op.dot3.f32(i32 55, float %4400, float %4399, float %4398, float %6141, float %6142, float %6143)  ; Dot3(ax,ay,az,bx,by,bz)
  %6146 = call float @dx.op.unary.f32(i32 7, float %6144)  ; Saturate(value)
  %6147 = fmul fast float %6146, %5882
  %6148 = fmul fast float %6146, %6146
  %6149 = fmul fast float %6148, %4431
  %6150 = call float @dx.op.unary.f32(i32 7, float %6149)  ; Saturate(value)
  %6151 = fmul fast float %6147, %6150
  %6152 = bitcast float %5872 to i32
  %6153 = ashr i32 %6152, 1
  %6154 = sub nsw i32 1597463007, %6153
  %6155 = bitcast i32 %6154 to float
  %6156 = fmul fast float %6155, %5869
  %6157 = fmul fast float %6155, %5870
  %6158 = fmul fast float %6155, %5871
  %6159 = fsub fast float %6156, %4403
  %6160 = fsub fast float %6157, %4402
  %6161 = fsub fast float %6158, %4401
  %6162 = call float @dx.op.dot3.f32(i32 55, float %6159, float %6160, float %6161, float %6159, float %6160, float %6161)  ; Dot3(ax,ay,az,bx,by,bz)
  %6163 = call float @dx.op.unary.f32(i32 25, float %6162)  ; Rsqrt(value)
  %6164 = fmul fast float %6159, %6163
  %6165 = fmul fast float %6160, %6163
  %6166 = fmul fast float %6161, %6163
  %6167 = call float @dx.op.dot3.f32(i32 55, float %4407, float %4408, float %4409, float %6164, float %6165, float %6166)  ; Dot3(ax,ay,az,bx,by,bz)
  %6168 = fmul fast float %6167, %6167
  %6169 = call float @dx.op.unary.f32(i32 6, float %6144)  ; FAbs(value)
  %6170 = fsub fast float 1.000000e+00, %4413
  %6171 = call float @dx.op.binary.f32(i32 35, float %6170, float 0x3F847AE140000000)  ; FMax(a,b)
  %6172 = fmul fast float %6171, %6171
  %6173 = fmul fast float %6172, %6172
  %6174 = fsub fast float 1.000000e+00, %6173
  %6175 = fmul fast float %4418, %4418
  %6176 = fmul fast float %6175, %6174
  %6177 = fadd fast float %6176, %6173
  %6178 = bitcast float %6177 to i32
  %6179 = ashr i32 %6178, 1
  %6180 = add nsw i32 %6179, 532487669
  %6181 = bitcast i32 %6180 to float
  %6182 = fadd fast float %6181, %4418
  %6183 = fmul fast float %6173, %6168
  %6184 = fsub fast float 1.000000e+00, %6168
  %6185 = fadd fast float %6184, %6183
  %6186 = fmul fast float %6169, %6169
  %6187 = fmul fast float %6186, %6174
  %6188 = fadd fast float %6187, %6173
  %6189 = bitcast float %6188 to i32
  %6190 = ashr i32 %6189, 1
  %6191 = add nsw i32 %6190, 532487669
  %6192 = bitcast i32 %6191 to float
  %6193 = fadd fast float %6192, %6169
  %6194 = fmul fast float %6185, %6185
  %6195 = fmul fast float %6194, %6182
  %6196 = fmul fast float %6195, %6193
  %6197 = fdiv fast float 1.000000e+00, %6196
  %6198 = bitcast float %6173 to i32
  %6199 = sitofp i32 %6198 to float
  %6200 = fmul fast float %6199, 0x3FE7F73180000000
  %6201 = fadd fast float %6200, 0x41AFE27C40000000
  %6202 = fptosi float %6201 to i32
  %6203 = bitcast i32 %6202 to float
  %6204 = fmul fast float %5838, 0x3FD80E9D60000000
  %6205 = fmul fast float %6204, %6155
  %6206 = fadd fast float %6203, %6205
  %6207 = bitcast float %6206 to i32
  %6208 = sub nsw i32 2129859010, %6207
  %6209 = bitcast i32 %6208 to float
  %6210 = fmul fast float %6173, %6197
  %6211 = fmul fast float %6210, %6203
  %6212 = fmul fast float %6211, %6209
  %6213 = call float @dx.op.unary.f32(i32 6, float %6145)  ; FAbs(value)
  %6214 = fsub fast float 1.000000e+00, %6213
  %6215 = bitcast float %6214 to i32
  %6216 = sitofp i32 %6215 to float
  %6217 = fmul fast float %6216, 5.000000e+00
  %6218 = fadd fast float %6217, 0xC1EFBF8940000000
  %6219 = fptosi float %6218 to i32
  %6220 = bitcast i32 %6219 to float
  %6221 = fsub fast float 1.000000e+00, %4404
  %6222 = fsub fast float 1.000000e+00, %4405
  %6223 = fsub fast float 1.000000e+00, %4416
  %6224 = fmul fast float %6220, %6221
  %6225 = fmul fast float %6220, %6222
  %6226 = fmul fast float %6220, %6223
  %6227 = fadd fast float %6224, %4404
  %6228 = fadd fast float %6225, %4405
  %6229 = fadd fast float %6226, %4416
  br i1 %4543, label %6230, label %6253

; <label>:6230                                    ; preds = %6116
  %6231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %49, float %3209, float %6213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6232 = extractvalue %dx.types.ResRet.f32 %6231, 0
  %6233 = extractvalue %dx.types.ResRet.f32 %6231, 1
  %6234 = extractvalue %dx.types.ResRet.f32 %6231, 2
  %6235 = fadd fast float %6232, -5.000000e-01
  %6236 = fadd fast float %6233, -5.000000e-01
  %6237 = fadd fast float %6234, -5.000000e-01
  %6238 = fmul fast float %4404, 4.000000e+00
  %6239 = fmul fast float %6238, %6221
  %6240 = fmul fast float %6239, %6235
  %6241 = fmul fast float %4405, 4.000000e+00
  %6242 = fmul fast float %6241, %6222
  %6243 = fmul fast float %6242, %6236
  %6244 = fmul fast float %4416, 4.000000e+00
  %6245 = fmul fast float %6244, %6223
  %6246 = fmul fast float %6245, %6237
  %6247 = fadd fast float %6240, %6227
  %6248 = fadd fast float %6243, %6228
  %6249 = fadd fast float %6246, %6229
  %6250 = call float @dx.op.unary.f32(i32 7, float %6247)  ; Saturate(value)
  %6251 = call float @dx.op.unary.f32(i32 7, float %6248)  ; Saturate(value)
  %6252 = call float @dx.op.unary.f32(i32 7, float %6249)  ; Saturate(value)
  br label %6253

; <label>:6253                                    ; preds = %6230, %6116
  %6254 = phi float [ %6250, %6230 ], [ %6227, %6116 ]
  %6255 = phi float [ %6251, %6230 ], [ %6228, %6116 ]
  %6256 = phi float [ %6252, %6230 ], [ %6229, %6116 ]
  %6257 = fmul fast float %6144, 9.843750e-01
  %6258 = fadd fast float %6257, 7.812500e-03
  %6259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %49, float %6258, float %4533, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6260 = extractvalue %dx.types.ResRet.f32 %6259, 2
  %6261 = extractvalue %dx.types.ResRet.f32 %6259, 3
  %6262 = fmul fast float %6260, %4404
  %6263 = fmul fast float %6260, %4405
  %6264 = fmul fast float %6260, %4416
  %6265 = fadd fast float %6262, %6261
  %6266 = fadd fast float %6263, %6261
  %6267 = fadd fast float %6264, %6261
  br i1 %4543, label %6268, label %6291

; <label>:6268                                    ; preds = %6253
  %6269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %49, float %3209, float %6144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6270 = extractvalue %dx.types.ResRet.f32 %6269, 0
  %6271 = extractvalue %dx.types.ResRet.f32 %6269, 1
  %6272 = extractvalue %dx.types.ResRet.f32 %6269, 2
  %6273 = fadd fast float %6270, -5.000000e-01
  %6274 = fadd fast float %6271, -5.000000e-01
  %6275 = fadd fast float %6272, -5.000000e-01
  %6276 = fmul fast float %4404, 4.000000e+00
  %6277 = fmul fast float %6276, %6221
  %6278 = fmul fast float %6277, %6273
  %6279 = fmul fast float %4405, 4.000000e+00
  %6280 = fmul fast float %6279, %6222
  %6281 = fmul fast float %6280, %6274
  %6282 = fmul fast float %4416, 4.000000e+00
  %6283 = fmul fast float %6282, %6223
  %6284 = fmul fast float %6283, %6275
  %6285 = fadd fast float %6278, %6265
  %6286 = fadd fast float %6281, %6266
  %6287 = fadd fast float %6284, %6267
  %6288 = call float @dx.op.unary.f32(i32 7, float %6285)  ; Saturate(value)
  %6289 = call float @dx.op.unary.f32(i32 7, float %6286)  ; Saturate(value)
  %6290 = call float @dx.op.unary.f32(i32 7, float %6287)  ; Saturate(value)
  br label %6291

; <label>:6291                                    ; preds = %6268, %6253
  %6292 = phi float [ %6288, %6268 ], [ %6265, %6253 ]
  %6293 = phi float [ %6289, %6268 ], [ %6266, %6253 ]
  %6294 = phi float [ %6290, %6268 ], [ %6267, %6253 ]
  %6295 = call float @dx.op.binary.f32(i32 35, float %6293, float %6294)  ; FMax(a,b)
  %6296 = call float @dx.op.binary.f32(i32 35, float %6292, float %6295)  ; FMax(a,b)
  %6297 = fsub fast float 1.000000e+00, %6296
  %6298 = fmul fast float %6254, %6212
  %6299 = fmul fast float %6255, %6212
  %6300 = fmul fast float %6256, %6212
  %6301 = fsub fast float 1.000000e+00, %6145
  %6302 = bitcast float %6301 to i32
  %6303 = sitofp i32 %6302 to float
  %6304 = fmul fast float %6303, 5.000000e+00
  %6305 = fadd fast float %6304, 0xC1EFBF8940000000
  %6306 = fptosi float %6305 to i32
  %6307 = bitcast i32 %6306 to float
  %6308 = fmul fast float %6307, %3210
  %6309 = fmul fast float %6297, %6308
  %6310 = fmul fast float %6309, %4593
  %6311 = fmul fast float %6309, %4594
  %6312 = fmul fast float %6309, %4595
  %6313 = fadd fast float %6310, %6298
  %6314 = fadd fast float %6311, %6299
  %6315 = fadd fast float %6312, %6300
  %6316 = fmul fast float %6133, %3206
  %6317 = fmul fast float %6316, %6151
  %6318 = fmul fast float %6317, %6297
  %6319 = fmul fast float %6134, %3206
  %6320 = fmul fast float %6319, %6151
  %6321 = fmul fast float %6320, %6297
  %6322 = fmul fast float %6135, %3206
  %6323 = fmul fast float %6322, %6151
  %6324 = fmul fast float %6323, %6297
  %6325 = fadd fast float %6318, %5812
  %6326 = fadd fast float %6321, %5813
  %6327 = fadd fast float %6324, %5814
  %6328 = fmul fast float %6317, %6313
  %6329 = fmul fast float %6320, %6314
  %6330 = fmul fast float %6323, %6315
  %6331 = fadd fast float %6328, %5809
  %6332 = fadd fast float %6329, %5810
  %6333 = fadd fast float %6330, %5811
  br label %5941

; <label>:6334                                    ; preds = %5941
  br label %6335

; <label>:6335                                    ; preds = %6334, %5775
  %6336 = phi float [ %5777, %5775 ], [ %5942, %6334 ]
  %6337 = phi float [ %5778, %5775 ], [ %5943, %6334 ]
  %6338 = phi float [ %5779, %5775 ], [ %5944, %6334 ]
  %6339 = phi float [ %5780, %5775 ], [ %5945, %6334 ]
  %6340 = phi float [ %5781, %5775 ], [ %5946, %6334 ]
  %6341 = phi float [ %5782, %5775 ], [ %5947, %6334 ]
  %6342 = add i32 %5776, 1
  %6343 = icmp ugt i32 %6342, %5772
  br i1 %6343, label %6344, label %5775

; <label>:6344                                    ; preds = %6335
  br label %6345

; <label>:6345                                    ; preds = %6344, %5725, %5715
  %6346 = phi float [ %5716, %5715 ], [ %5716, %5725 ], [ %6336, %6344 ]
  %6347 = phi float [ %5717, %5715 ], [ %5717, %5725 ], [ %6337, %6344 ]
  %6348 = phi float [ %5718, %5715 ], [ %5718, %5725 ], [ %6338, %6344 ]
  %6349 = phi float [ %5719, %5715 ], [ %5719, %5725 ], [ %6339, %6344 ]
  %6350 = phi float [ %5720, %5715 ], [ %5720, %5725 ], [ %6340, %6344 ]
  %6351 = phi float [ %5721, %5715 ], [ %5721, %5725 ], [ %6341, %6344 ]
  %6352 = fmul fast float %3206, %3206
  %6353 = fsub fast float 1.000000e+00, %6352
  %6354 = call float @dx.op.dot3.f32(i32 55, float %6353, float %6353, float %6353, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6355 = fsub fast float 1.000000e+00, %6354
  %6356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6357 = extractvalue %dx.types.CBufRet.f32 %6356, 0
  %6358 = fmul fast float %6357, %4599
  %6359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6360 = extractvalue %dx.types.CBufRet.f32 %6359, 3
  %6361 = fsub fast float 1.000000e+00, %3214
  %6362 = call float @dx.op.unary.f32(i32 7, float %6361)  ; Saturate(value)
  %6363 = fadd fast float %6351, %3212
  %6364 = fmul fast float %6363, %3214
  %6365 = fmul fast float %6362, %6360
  %6366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6367 = extractvalue %dx.types.CBufRet.f32 %6366, 3
  %6368 = fmul fast float %6349, %4410
  %6369 = fmul fast float %6350, %4411
  %6370 = fmul fast float %6351, %4412
  %6371 = fcmp fast ogt float %96, %214
  %6372 = and i1 %6371, %3617
  %6373 = or i1 %3623, %6372
  %6374 = icmp eq i32 %3616, 2
  %6375 = fcmp fast ole float %96, %214
  %6376 = and i1 %6375, %6374
  %6377 = or i1 %6376, %6373
  br i1 %6372, label %6378, label %6635

; <label>:6378                                    ; preds = %6345
  %6379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6380 = extractvalue %dx.types.CBufRet.f32 %6379, 2
  %6381 = extractvalue %dx.types.CBufRet.f32 %6379, 3
  %6382 = fmul fast float %6380, %105
  %6383 = fmul fast float %6381, %106
  %6384 = call float @dx.op.unary.f32(i32 7, float %6382)  ; Saturate(value)
  %6385 = call float @dx.op.unary.f32(i32 7, float %6383)  ; Saturate(value)
  %6386 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %49, float %6384, float %6385, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6387 = extractvalue %dx.types.ResRet.f32 %6386, 0
  %6388 = extractvalue %dx.types.ResRet.f32 %6386, 1
  %6389 = extractvalue %dx.types.ResRet.f32 %6386, 2
  %6390 = extractvalue %dx.types.ResRet.f32 %6386, 3
  %6391 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %49, float %6384, float %6385, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6392 = extractvalue %dx.types.ResRet.f32 %6391, 0
  %6393 = extractvalue %dx.types.ResRet.f32 %6391, 1
  %6394 = extractvalue %dx.types.ResRet.f32 %6391, 2
  %6395 = extractvalue %dx.types.ResRet.f32 %6391, 3
  %6396 = call float @dx.op.binary.f32(i32 35, float %6388, float %6389)  ; FMax(a,b)
  %6397 = call float @dx.op.binary.f32(i32 35, float %6387, float %6396)  ; FMax(a,b)
  %6398 = call float @dx.op.binary.f32(i32 35, float %6397, float %6390)  ; FMax(a,b)
  %6399 = call float @dx.op.binary.f32(i32 36, float %6393, float %6394)  ; FMin(a,b)
  %6400 = call float @dx.op.binary.f32(i32 36, float %6392, float %6399)  ; FMin(a,b)
  %6401 = call float @dx.op.binary.f32(i32 36, float %6400, float %6395)  ; FMin(a,b)
  %6402 = fmul fast float %6398, 2.550000e+02
  %6403 = fadd fast float %6402, 0x3F70101020000000
  %6404 = fptoui float %6403 to i32
  %6405 = fmul fast float %6401, 2.550000e+02
  %6406 = fadd fast float %6405, 0x3F70101020000000
  %6407 = fptoui float %6406 to i32
  %6408 = icmp ult i32 %6404, %6407
  br i1 %6408, label %6409, label %6577

; <label>:6409                                    ; preds = %6378
  %6410 = fcmp fast ogt float %95, 9.843750e-01
  %6411 = fadd fast float %96, -4.000000e+00
  %6412 = select i1 %6410, float -4.000000e+00, float %6411
  %6413 = call float @dx.op.binary.f32(i32 35, float %6412, float 0.000000e+00)  ; FMax(a,b)
  %6414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6415 = extractvalue %dx.types.CBufRet.f32 %6414, 0
  %6416 = fadd fast float %6415, %6413
  %6417 = extractvalue %dx.types.CBufRet.f32 %6414, 2
  %6418 = fmul fast float %6416, %6417
  %6419 = call float @dx.op.unary.f32(i32 23, float %6418)  ; Log(value)
  %6420 = extractvalue %dx.types.CBufRet.f32 %6414, 3
  %6421 = fmul fast float %6420, %6419
  %6422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6423 = extractvalue %dx.types.CBufRet.f32 %6422, 2
  %6424 = fmul fast float %6421, %6423
  %6425 = call float @dx.op.unary.f32(i32 7, float %6424)  ; Saturate(value)
  %6426 = uitofp i32 %6404 to float
  %6427 = uitofp i32 %6407 to float
  %6428 = fadd fast float %6426, 5.000000e-01
  %6429 = fadd fast float %6427, 5.000000e-01
  %6430 = fmul fast float %6423, %6428
  %6431 = fmul fast float %6423, %6429
  %6432 = fadd fast float %6430, 0x3F0FFB4800000000
  %6433 = fadd fast float %6431, 0xBF0FFB4800000000
  %6434 = call float @dx.op.binary.f32(i32 35, float %6425, float %6432)  ; FMax(a,b)
  %6435 = call float @dx.op.binary.f32(i32 36, float %6434, float %6433)  ; FMin(a,b)
  %6436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6437 = extractvalue %dx.types.CBufRet.f32 %6436, 1
  %6438 = extractvalue %dx.types.CBufRet.f32 %6436, 2
  %6439 = extractvalue %dx.types.CBufRet.f32 %6436, 0
  %6440 = fmul fast float %6437, %6435
  %6441 = fadd fast float %6439, %6440
  %6442 = fadd fast float %6439, %6438
  %6443 = fsub fast float %6437, %6438
  %6444 = fadd fast float %6443, %6439
  %6445 = call float @dx.op.binary.f32(i32 35, float %6441, float %6442)  ; FMax(a,b)
  %6446 = call float @dx.op.binary.f32(i32 36, float %6445, float %6444)  ; FMin(a,b)
  %6447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %6384, float %6385, float %6446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6448 = extractvalue %dx.types.ResRet.f32 %6447, 0
  %6449 = extractvalue %dx.types.ResRet.f32 %6447, 1
  %6450 = extractvalue %dx.types.ResRet.f32 %6447, 2
  %6451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6452 = extractvalue %dx.types.CBufRet.i32 %6451, 0
  %6453 = extractvalue %dx.types.CBufRet.i32 %6451, 1
  %6454 = uitofp i32 %6452 to float
  %6455 = uitofp i32 %6453 to float
  %6456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6457 = extractvalue %dx.types.CBufRet.f32 %6456, 0
  %6458 = extractvalue %dx.types.CBufRet.f32 %6456, 1
  %6459 = fmul fast float %6454, %6384
  %6460 = fmul fast float %6455, %6385
  %6461 = fadd fast float %6459, -5.000000e-01
  %6462 = fadd fast float %6460, -5.000000e-01
  %6463 = call float @dx.op.unary.f32(i32 22, float %6461)  ; Frc(value)
  %6464 = call float @dx.op.unary.f32(i32 22, float %6462)  ; Frc(value)
  %6465 = fmul fast float %6463, %6463
  %6466 = fmul fast float %6465, %6463
  %6467 = fsub fast float 3.000000e+00, %6463
  %6468 = fmul fast float %6465, %6467
  %6469 = fmul fast float %6463, 3.000000e+00
  %6470 = fmul fast float %6466, 3.000000e+00
  %6471 = fmul fast float %6465, 6.000000e+00
  %6472 = fsub fast float %6470, %6471
  %6473 = fadd fast float %6472, 4.000000e+00
  %6474 = fmul fast float %6473, 0x3FC5555560000000
  %6475 = fmul fast float %6466, -3.000000e+00
  %6476 = fadd fast float %6465, %6463
  %6477 = fmul fast float %6476, 3.000000e+00
  %6478 = fadd fast float %6475, 1.000000e+00
  %6479 = fadd fast float %6478, %6477
  %6480 = fmul fast float %6466, 0x3FC5555560000000
  %6481 = fmul fast float %6464, %6464
  %6482 = fmul fast float %6481, %6464
  %6483 = fsub fast float 3.000000e+00, %6464
  %6484 = fmul fast float %6481, %6483
  %6485 = fmul fast float %6464, 3.000000e+00
  %6486 = fmul fast float %6482, 3.000000e+00
  %6487 = fmul fast float %6481, 6.000000e+00
  %6488 = fsub fast float %6486, %6487
  %6489 = fadd fast float %6488, 4.000000e+00
  %6490 = fmul fast float %6489, 0x3FC5555560000000
  %6491 = fmul fast float %6482, -3.000000e+00
  %6492 = fadd fast float %6481, %6464
  %6493 = fmul fast float %6492, 3.000000e+00
  %6494 = fadd fast float %6491, 1.000000e+00
  %6495 = fadd fast float %6494, %6493
  %6496 = fmul fast float %6482, 0x3FC5555560000000
  %6497 = fadd fast float %6463, 1.000000e+00
  %6498 = fsub fast float 1.000000e+00, %6469
  %6499 = fadd fast float %6498, %6468
  %6500 = fadd fast float %6499, %6473
  %6501 = fmul fast float %6500, 0x3FC5555560000000
  %6502 = fdiv fast float %6474, %6501
  %6503 = fsub fast float %6497, %6502
  %6504 = fsub fast float 1.000000e+00, %6463
  %6505 = fadd fast float %6479, %6466
  %6506 = fmul fast float %6505, 0x3FC5555560000000
  %6507 = fdiv fast float %6480, %6506
  %6508 = fadd fast float %6504, %6507
  %6509 = fadd fast float %6464, 1.000000e+00
  %6510 = fsub fast float 1.000000e+00, %6485
  %6511 = fadd fast float %6510, %6484
  %6512 = fadd fast float %6511, %6489
  %6513 = fmul fast float %6512, 0x3FC5555560000000
  %6514 = fdiv fast float %6490, %6513
  %6515 = fsub fast float %6509, %6514
  %6516 = fsub fast float 1.000000e+00, %6464
  %6517 = fadd fast float %6495, %6482
  %6518 = fmul fast float %6517, 0x3FC5555560000000
  %6519 = fdiv fast float %6496, %6518
  %6520 = fadd fast float %6519, %6516
  %6521 = fmul fast float %6503, %6457
  %6522 = fsub fast float %6384, %6521
  %6523 = fmul fast float %6508, %6457
  %6524 = fadd fast float %6523, %6384
  %6525 = fmul fast float %6520, %6458
  %6526 = fadd fast float %6525, %6385
  %6527 = fmul fast float %6515, %6458
  %6528 = fsub fast float %6385, %6527
  %6529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %47, float %6522, float %6528, float %6446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6530 = extractvalue %dx.types.ResRet.f32 %6529, 0
  %6531 = extractvalue %dx.types.ResRet.f32 %6529, 1
  %6532 = extractvalue %dx.types.ResRet.f32 %6529, 2
  %6533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %47, float %6524, float %6528, float %6446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6534 = extractvalue %dx.types.ResRet.f32 %6533, 0
  %6535 = extractvalue %dx.types.ResRet.f32 %6533, 1
  %6536 = extractvalue %dx.types.ResRet.f32 %6533, 2
  %6537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %47, float %6522, float %6526, float %6446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6538 = extractvalue %dx.types.ResRet.f32 %6537, 0
  %6539 = extractvalue %dx.types.ResRet.f32 %6537, 1
  %6540 = extractvalue %dx.types.ResRet.f32 %6537, 2
  %6541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %47, float %6524, float %6526, float %6446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6542 = extractvalue %dx.types.ResRet.f32 %6541, 0
  %6543 = extractvalue %dx.types.ResRet.f32 %6541, 1
  %6544 = extractvalue %dx.types.ResRet.f32 %6541, 2
  %6545 = fsub fast float %6538, %6530
  %6546 = fsub fast float %6539, %6531
  %6547 = fsub fast float %6540, %6532
  %6548 = fmul fast float %6545, %6518
  %6549 = fmul fast float %6546, %6518
  %6550 = fmul fast float %6547, %6518
  %6551 = fadd fast float %6548, %6530
  %6552 = fadd fast float %6549, %6531
  %6553 = fadd fast float %6550, %6532
  %6554 = fsub fast float %6542, %6534
  %6555 = fsub fast float %6543, %6535
  %6556 = fsub fast float %6544, %6536
  %6557 = fmul fast float %6554, %6518
  %6558 = fmul fast float %6555, %6518
  %6559 = fmul fast float %6556, %6518
  %6560 = fsub fast float %6534, %6551
  %6561 = fadd fast float %6560, %6557
  %6562 = fsub fast float %6535, %6552
  %6563 = fadd fast float %6562, %6558
  %6564 = fsub fast float %6536, %6553
  %6565 = fadd fast float %6564, %6559
  %6566 = fmul fast float %6561, %6506
  %6567 = fmul fast float %6563, %6506
  %6568 = fmul fast float %6565, %6506
  %6569 = fadd fast float %6566, %6551
  %6570 = fadd fast float %6567, %6552
  %6571 = fadd fast float %6568, %6553
  %6572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6573 = extractvalue %dx.types.CBufRet.f32 %6572, 1
  %6574 = fmul fast float %6569, %6573
  %6575 = fmul fast float %6570, %6573
  %6576 = fmul fast float %6571, %6573
  br label %6577

; <label>:6577                                    ; preds = %6409, %6378
  %6578 = phi float [ %6448, %6409 ], [ 1.000000e+00, %6378 ]
  %6579 = phi float [ %6449, %6409 ], [ 1.000000e+00, %6378 ]
  %6580 = phi float [ %6450, %6409 ], [ 1.000000e+00, %6378 ]
  %6581 = phi float [ %6574, %6409 ], [ 0.000000e+00, %6378 ]
  %6582 = phi float [ %6575, %6409 ], [ 0.000000e+00, %6378 ]
  %6583 = phi float [ %6576, %6409 ], [ 0.000000e+00, %6378 ]
  %6584 = fmul fast float %6581, %6355
  %6585 = fmul fast float %6582, %6355
  %6586 = fmul fast float %6583, %6355
  %6587 = call float @dx.op.dot3.f32(i32 55, float %6578, float %6579, float %6580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6588 = call float @dx.op.dot3.f32(i32 55, float %6584, float %6585, float %6586, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6589 = select i1 %251, float %6587, float %6578
  %6590 = select i1 %251, float %6587, float %6579
  %6591 = select i1 %251, float 1.000000e+00, float %6580
  %6592 = select i1 %251, float %6588, float %6584
  %6593 = select i1 %251, float 0.000000e+00, float %6585
  %6594 = select i1 %251, float 0.000000e+00, float %6586
  %6595 = fmul fast float %6589, %6368
  %6596 = fmul fast float %6590, %6369
  %6597 = fmul fast float %6591, %6370
  %6598 = fadd fast float %6595, %6592
  %6599 = fadd fast float %6596, %6593
  %6600 = fadd fast float %6594, %6597
  %6601 = fmul fast float %6589, %6346
  %6602 = fmul fast float %6590, %6347
  %6603 = fmul fast float %6591, %6348
  %6604 = fmul fast float %141, %6380
  %6605 = fmul fast float %143, %6381
  %6606 = fsub fast float 1.000000e+00, %6604
  %6607 = fsub fast float 1.000000e+00, %6605
  %6608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6609 = extractvalue %dx.types.CBufRet.f32 %6608, 0
  %6610 = extractvalue %dx.types.CBufRet.f32 %6608, 1
  %6611 = extractvalue %dx.types.CBufRet.f32 %6608, 2
  %6612 = fmul fast float %6606, %6609
  %6613 = fmul fast float %6606, %6610
  %6614 = fmul fast float %6606, %6611
  %6615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6616 = extractvalue %dx.types.CBufRet.f32 %6615, 0
  %6617 = extractvalue %dx.types.CBufRet.f32 %6615, 1
  %6618 = extractvalue %dx.types.CBufRet.f32 %6615, 2
  %6619 = fmul fast float %6607, %6616
  %6620 = fmul fast float %6607, %6617
  %6621 = fmul fast float %6607, %6618
  %6622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6623 = extractvalue %dx.types.CBufRet.f32 %6622, 0
  %6624 = extractvalue %dx.types.CBufRet.f32 %6622, 1
  %6625 = extractvalue %dx.types.CBufRet.f32 %6622, 2
  %6626 = fadd fast float %6619, %6623
  %6627 = fadd fast float %6626, %6612
  %6628 = fadd fast float %6620, %6624
  %6629 = fadd fast float %6628, %6613
  %6630 = fadd fast float %6621, %6625
  %6631 = fadd fast float %6630, %6614
  %6632 = fmul fast float %6627, %214
  %6633 = fmul fast float %6629, %214
  %6634 = fmul fast float %6631, %214
  br label %6635

; <label>:6635                                    ; preds = %6577, %6345
  %6636 = phi float [ %6632, %6577 ], [ %192, %6345 ]
  %6637 = phi float [ %6633, %6577 ], [ %193, %6345 ]
  %6638 = phi float [ %6634, %6577 ], [ %194, %6345 ]
  %6639 = phi float [ %214, %6577 ], [ %96, %6345 ]
  %6640 = phi float [ %6598, %6577 ], [ %6368, %6345 ]
  %6641 = phi float [ %6599, %6577 ], [ %6369, %6345 ]
  %6642 = phi float [ %6600, %6577 ], [ %6370, %6345 ]
  %6643 = phi float [ %6601, %6577 ], [ %6346, %6345 ]
  %6644 = phi float [ %6602, %6577 ], [ %6347, %6345 ]
  %6645 = phi float [ %6603, %6577 ], [ %6348, %6345 ]
  %6646 = phi float [ %6578, %6577 ], [ 1.000000e+00, %6345 ]
  br i1 %6377, label %7801, label %6647

; <label>:6647                                    ; preds = %6635
  %6648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6649 = extractvalue %dx.types.CBufRet.f32 %6648, 0
  %6650 = extractvalue %dx.types.CBufRet.f32 %6648, 1
  %6651 = extractvalue %dx.types.CBufRet.f32 %6648, 2
  %6652 = extractvalue %dx.types.CBufRet.f32 %6648, 3
  %6653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6654 = extractvalue %dx.types.CBufRet.f32 %6653, 0
  %6655 = extractvalue %dx.types.CBufRet.f32 %6653, 1
  %6656 = extractvalue %dx.types.CBufRet.f32 %6653, 2
  %6657 = extractvalue %dx.types.CBufRet.f32 %6653, 3
  %6658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6659 = extractvalue %dx.types.CBufRet.f32 %6658, 0
  %6660 = extractvalue %dx.types.CBufRet.f32 %6658, 1
  %6661 = extractvalue %dx.types.CBufRet.f32 %6658, 2
  %6662 = extractvalue %dx.types.CBufRet.f32 %6658, 3
  %6663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6664 = extractvalue %dx.types.CBufRet.f32 %6663, 0
  %6665 = extractvalue %dx.types.CBufRet.f32 %6663, 1
  %6666 = extractvalue %dx.types.CBufRet.f32 %6663, 2
  %6667 = extractvalue %dx.types.CBufRet.f32 %6663, 3
  %6668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6669 = extractvalue %dx.types.CBufRet.f32 %6668, 3
  %6670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6671 = extractvalue %dx.types.CBufRet.f32 %6670, 3
  %6672 = extractvalue %dx.types.CBufRet.f32 %6670, 0
  %6673 = extractvalue %dx.types.CBufRet.f32 %6670, 1
  %6674 = extractvalue %dx.types.CBufRet.f32 %6670, 2
  %6675 = fcmp fast olt float %6674, -5.000000e-01
  %6676 = call float @dx.op.dot3.f32(i32 55, float %6636, float %6637, float %6638, float %6636, float %6637, float %6638)  ; Dot3(ax,ay,az,bx,by,bz)
  %6677 = call float @dx.op.unary.f32(i32 25, float %6676)  ; Rsqrt(value)
  %6678 = fmul fast float %6677, %6676
  %6679 = fmul fast float %6677, %6636
  %6680 = fmul fast float %6677, %6637
  %6681 = fmul fast float %6677, %6638
  %6682 = fadd fast float %6678, %6652
  %6683 = call float @dx.op.dot3.f32(i32 55, float %6679, float %6680, float %6681, float %6649, float %6650, float %6651)  ; Dot3(ax,ay,az,bx,by,bz)
  %6684 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6685 = extractvalue %dx.types.CBufRet.i32 %6684, 1
  %6686 = and i32 %6685, 1
  %6687 = icmp ne i32 %6686, 0
  %6688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6689 = extractvalue %dx.types.CBufRet.f32 %6688, 2
  %6690 = fcmp fast ogt float %6689, 0.000000e+00
  %6691 = and i1 %6687, %6690
  br i1 %6691, label %6692, label %7098, !dx.controlflow.hints !124

; <label>:6692                                    ; preds = %6647
  %6693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6694 = extractvalue %dx.types.CBufRet.f32 %6693, 3
  %6695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6696 = extractvalue %dx.types.CBufRet.f32 %6695, 2
  %6697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6698 = extractvalue %dx.types.CBufRet.f32 %6697, 2
  %6699 = fsub fast float %6696, %6698
  %6700 = and i32 %6685, 2
  %6701 = extractvalue %dx.types.CBufRet.i32 %6684, 0
  %6702 = call i32 @dx.op.binary.i32(i32 40, i32 %6701, i32 3)  ; UMin(a,b)
  %6703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6704 = extractvalue %dx.types.CBufRet.f32 %6703, 0
  %6705 = extractvalue %dx.types.CBufRet.f32 %6703, 1
  %6706 = extractvalue %dx.types.CBufRet.f32 %6697, 0
  %6707 = extractvalue %dx.types.CBufRet.f32 %6697, 1
  %6708 = fsub fast float %6704, %6706
  %6709 = fsub fast float %6705, %6707
  %6710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6711 = extractvalue %dx.types.CBufRet.f32 %6710, 0
  %6712 = fcmp fast ogt float %6711, 0.000000e+00
  %6713 = fsub fast float -0.000000e+00, %6708
  %6714 = fsub fast float -0.000000e+00, %6709
  %6715 = call float @dx.op.dot2.f32(i32 54, float %6679, float %6680, float %6679, float %6680)  ; Dot2(ax,ay,bx,by)
  %6716 = call float @dx.op.dot2.f32(i32 54, float %6679, float %6680, float %6713, float %6714)  ; Dot2(ax,ay,bx,by)
  %6717 = fmul fast float %6716, 2.000000e+00
  %6718 = call float @dx.op.dot2.f32(i32 54, float %6713, float %6714, float %6713, float %6714)  ; Dot2(ax,ay,bx,by)
  %6719 = fmul fast float %6711, %6711
  %6720 = fsub fast float %6718, %6719
  %6721 = fmul fast float %6717, %6717
  %6722 = fmul fast float %6715, 4.000000e+00
  %6723 = fmul fast float %6722, %6720
  %6724 = fsub fast float %6721, %6723
  %6725 = fcmp fast ogt float %6724, 0.000000e+00
  br i1 %6725, label %6726, label %6741

; <label>:6726                                    ; preds = %6692
  %6727 = fcmp fast ogt float %6717, 0.000000e+00
  %6728 = call float @dx.op.unary.f32(i32 24, float %6724)  ; Sqrt(value)
  %6729 = fsub fast float -0.000000e+00, %6728
  %6730 = select i1 %6727, float %6728, float %6729
  %6731 = fadd fast float %6730, %6717
  %6732 = fmul float %6731, -5.000000e-01
  %6733 = fdiv fast float %6732, %6715
  %6734 = call float @dx.op.binary.f32(i32 35, float %6733, float 0.000000e+00)  ; FMax(a,b)
  %6735 = call float @dx.op.binary.f32(i32 36, float %6678, float %6734)  ; FMin(a,b)
  %6736 = fdiv fast float %6720, %6732
  %6737 = call float @dx.op.binary.f32(i32 35, float %6736, float 0.000000e+00)  ; FMax(a,b)
  %6738 = call float @dx.op.binary.f32(i32 36, float %6678, float %6737)  ; FMin(a,b)
  %6739 = call float @dx.op.binary.f32(i32 36, float %6735, float %6738)  ; FMin(a,b)
  %6740 = call float @dx.op.binary.f32(i32 35, float %6735, float %6738)  ; FMax(a,b)
  br label %6741

; <label>:6741                                    ; preds = %6726, %6692
  %6742 = phi float [ %6740, %6726 ], [ -1.000000e+00, %6692 ]
  %6743 = phi float [ %6739, %6726 ], [ -1.000000e+00, %6692 ]
  %6744 = phi i1 [ true, %6726 ], [ false, %6692 ]
  %6745 = and i1 %6712, %6744
  br i1 %6745, label %6746, label %6748

; <label>:6746                                    ; preds = %6741
  %6747 = fcmp fast oeq float %6743, %6742
  br i1 %6747, label %7051, label %6749

; <label>:6748                                    ; preds = %6741
  br i1 %6712, label %7051, label %6749

; <label>:6749                                    ; preds = %6748, %6746
  %6750 = phi float [ %6678, %6748 ], [ %6742, %6746 ]
  %6751 = phi float [ 0.000000e+00, %6748 ], [ %6743, %6746 ]
  %6752 = icmp ne i32 %6700, 0
  %6753 = fmul fast float %6750, %6681
  %6754 = fadd fast float %6753, %6694
  %6755 = fmul fast float %6754, %6750
  %6756 = select i1 %6752, float 0.000000e+00, float %6755
  %6757 = fcmp fast oeq float %6681, 0.000000e+00
  %6758 = fdiv fast float %6699, %6681
  %6759 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6758)  ; FMax(a,b)
  %6760 = select i1 %6757, float %6750, float %6759
  %6761 = call float @dx.op.binary.f32(i32 36, float %6750, float %6760)  ; FMin(a,b)
  %6762 = fcmp fast ogt float %6681, 0.000000e+00
  %6763 = fcmp fast olt float %6699, 0.000000e+00
  br i1 %6762, label %6764, label %6821

; <label>:6764                                    ; preds = %6749
  %6765 = icmp eq i32 %6700, 0
  br i1 %6763, label %6766, label %6810

; <label>:6766                                    ; preds = %6764
  %6767 = select i1 %6765, float %6750, float 0.000000e+00
  %6768 = fsub fast float -0.000000e+00, %6767
  %6769 = call float @dx.op.unary.f32(i32 6, float %6768)  ; FAbs(value)
  %6770 = fmul fast float %6767, %6681
  %6771 = fadd fast float %6770, %6694
  %6772 = fmul fast float %6769, %6771
  %6773 = fsub fast float %6756, %6772
  %6774 = fsub fast float %6750, %6769
  %6775 = select i1 %6765, float %6774, float 0.000000e+00
  %6776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6777 = extractvalue %dx.types.CBufRet.f32 %6776, 0
  %6778 = extractvalue %dx.types.CBufRet.f32 %6776, 1
  %6779 = extractvalue %dx.types.CBufRet.f32 %6776, 2
  %6780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6781 = extractvalue %dx.types.CBufRet.f32 %6780, 0
  %6782 = extractvalue %dx.types.CBufRet.f32 %6780, 1
  %6783 = extractvalue %dx.types.CBufRet.f32 %6780, 2
  %6784 = extractvalue %dx.types.CBufRet.f32 %6780, 3
  %6785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6786 = extractvalue %dx.types.CBufRet.f32 %6785, 3
  %6787 = call float @dx.op.binary.f32(i32 36, float %6773, float %6786)  ; FMin(a,b)
  %6788 = fmul fast float %6784, %6775
  %6789 = call float @dx.op.unary.f32(i32 7, float %6788)  ; Saturate(value)
  %6790 = fsub fast float %6781, %6777
  %6791 = fsub fast float %6782, %6778
  %6792 = fsub fast float %6783, %6779
  %6793 = fmul fast float %6789, %6790
  %6794 = fmul fast float %6789, %6791
  %6795 = fmul fast float %6789, %6792
  %6796 = fadd fast float %6793, %6777
  %6797 = fadd fast float %6794, %6778
  %6798 = fadd fast float %6795, %6779
  %6799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6800 = extractvalue %dx.types.CBufRet.f32 %6799, 0
  %6801 = extractvalue %dx.types.CBufRet.f32 %6799, 1
  %6802 = fadd fast float %6801, %6800
  %6803 = call float @dx.op.unary.f32(i32 7, float %6802)  ; Saturate(value)
  %6804 = extractvalue %dx.types.CBufRet.f32 %6799, 2
  %6805 = extractvalue %dx.types.CBufRet.f32 %6799, 3
  %6806 = fadd fast float %6805, %6804
  %6807 = call float @dx.op.unary.f32(i32 7, float %6806)  ; Saturate(value)
  %6808 = fmul fast float %6803, %6787
  %6809 = fmul fast float %6808, %6807
  br label %7051

; <label>:6810                                    ; preds = %6764
  br i1 %6765, label %6811, label %6832

; <label>:6811                                    ; preds = %6810
  %6812 = call float @dx.op.binary.f32(i32 36, float %6761, float %6751)  ; FMin(a,b)
  %6813 = fsub fast float %6761, %6812
  %6814 = fsub fast float %6813, %6750
  %6815 = call float @dx.op.unary.f32(i32 6, float %6814)  ; FAbs(value)
  %6816 = fadd fast float %6813, %6750
  %6817 = fmul fast float %6816, %6681
  %6818 = fadd fast float %6817, %6694
  %6819 = fmul fast float %6818, %6815
  %6820 = fsub fast float %6756, %6819
  br label %6832

; <label>:6821                                    ; preds = %6749
  br i1 %6763, label %6822, label %6832

; <label>:6822                                    ; preds = %6821
  %6823 = call float @dx.op.binary.f32(i32 35, float %6751, float %6761)  ; FMax(a,b)
  %6824 = icmp eq i32 %6700, 0
  %6825 = select i1 %6824, float %6761, float 0.000000e+00
  %6826 = fsub fast float -0.000000e+00, %6825
  %6827 = call float @dx.op.unary.f32(i32 6, float %6826)  ; FAbs(value)
  %6828 = fmul fast float %6825, %6681
  %6829 = fadd fast float %6828, %6694
  %6830 = fmul fast float %6827, %6829
  %6831 = fsub fast float %6756, %6830
  br label %6832

; <label>:6832                                    ; preds = %6822, %6821, %6811, %6810
  %6833 = phi float [ %6751, %6810 ], [ %6751, %6811 ], [ %6823, %6822 ], [ %6751, %6821 ]
  %6834 = phi float [ 0.000000e+00, %6810 ], [ %6815, %6811 ], [ %6827, %6822 ], [ 0.000000e+00, %6821 ]
  %6835 = phi float [ %6756, %6810 ], [ %6820, %6811 ], [ %6831, %6822 ], [ %6756, %6821 ]
  %6836 = phi float [ %6761, %6810 ], [ %6761, %6811 ], [ %6750, %6822 ], [ %6750, %6821 ]
  %6837 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %6837, align 4, !tbaa !125, !noalias !127
  %6838 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %6838, align 4, !tbaa !125, !noalias !127
  %6839 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %6839, align 4, !tbaa !125, !noalias !127
  %6840 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 0
  store float -1.000000e+00, float* %6840, align 4, !tbaa !125, !noalias !127
  %6841 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 1
  store float -1.000000e+00, float* %6841, align 4, !tbaa !125, !noalias !127
  %6842 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 2
  store float -1.000000e+00, float* %6842, align 4, !tbaa !125, !noalias !127
  %6843 = icmp sgt i32 %6702, 0
  br i1 %6843, label %6844, label %6905

; <label>:6844                                    ; preds = %6832
  br label %6845

; <label>:6845                                    ; preds = %6894, %6844
  %6846 = phi i32 [ %6895, %6894 ], [ 0, %6844 ]
  %6847 = phi i32 [ %6896, %6894 ], [ 0, %6844 ]
  %6848 = add nuw i32 %6847, 171
  %6849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %6848)  ; CBufferLoadLegacy(handle,regIndex)
  %6850 = extractvalue %dx.types.CBufRet.f32 %6849, 0
  %6851 = extractvalue %dx.types.CBufRet.f32 %6849, 1
  %6852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6853 = extractvalue %dx.types.CBufRet.f32 %6852, 0
  %6854 = extractvalue %dx.types.CBufRet.f32 %6852, 1
  %6855 = fsub fast float %6850, %6853
  %6856 = fsub fast float %6851, %6854
  %6857 = extractvalue %dx.types.CBufRet.f32 %6849, 2
  %6858 = fsub fast float -0.000000e+00, %6855
  %6859 = fsub fast float -0.000000e+00, %6856
  %6860 = call float @dx.op.dot2.f32(i32 54, float %6679, float %6680, float %6858, float %6859)  ; Dot2(ax,ay,bx,by)
  %6861 = fmul fast float %6860, 2.000000e+00
  %6862 = call float @dx.op.dot2.f32(i32 54, float %6858, float %6859, float %6858, float %6859)  ; Dot2(ax,ay,bx,by)
  %6863 = fmul fast float %6857, %6857
  %6864 = fsub fast float %6862, %6863
  %6865 = fmul fast float %6861, %6861
  %6866 = fmul fast float %6722, %6864
  %6867 = fsub fast float %6865, %6866
  %6868 = fcmp fast ogt float %6867, 0.000000e+00
  br i1 %6868, label %6869, label %6884

; <label>:6869                                    ; preds = %6845
  %6870 = fcmp fast ogt float %6861, 0.000000e+00
  %6871 = call float @dx.op.unary.f32(i32 24, float %6867)  ; Sqrt(value)
  %6872 = fsub fast float -0.000000e+00, %6871
  %6873 = select i1 %6870, float %6871, float %6872
  %6874 = fadd fast float %6873, %6861
  %6875 = fmul float %6874, -5.000000e-01
  %6876 = fdiv fast float %6875, %6715
  %6877 = call float @dx.op.binary.f32(i32 35, float %6876, float 0.000000e+00)  ; FMax(a,b)
  %6878 = call float @dx.op.binary.f32(i32 36, float %6750, float %6877)  ; FMin(a,b)
  %6879 = fdiv fast float %6864, %6875
  %6880 = call float @dx.op.binary.f32(i32 35, float %6879, float 0.000000e+00)  ; FMax(a,b)
  %6881 = call float @dx.op.binary.f32(i32 36, float %6750, float %6880)  ; FMin(a,b)
  %6882 = call float @dx.op.binary.f32(i32 36, float %6878, float %6881)  ; FMin(a,b)
  %6883 = call float @dx.op.binary.f32(i32 35, float %6878, float %6881)  ; FMax(a,b)
  br label %6884

; <label>:6884                                    ; preds = %6869, %6845
  %6885 = phi float [ %6883, %6869 ], [ -1.000000e+00, %6845 ]
  %6886 = phi float [ %6882, %6869 ], [ -1.000000e+00, %6845 ]
  %6887 = phi i1 [ true, %6869 ], [ false, %6845 ]
  br i1 %6887, label %6888, label %6894

; <label>:6888                                    ; preds = %6884
  %6889 = call float @dx.op.binary.f32(i32 35, float %6833, float %6886)  ; FMax(a,b)
  %6890 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %6847
  store float %6889, float* %6890, align 4, !tbaa !125, !noalias !127
  %6891 = call float @dx.op.binary.f32(i32 35, float %6833, float %6885)  ; FMax(a,b)
  %6892 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %6847
  store float %6891, float* %6892, align 4, !tbaa !125, !noalias !127
  %6893 = add nsw i32 %6846, 1
  br label %6894

; <label>:6894                                    ; preds = %6888, %6884
  %6895 = phi i32 [ %6893, %6888 ], [ %6846, %6884 ]
  %6896 = add nuw nsw i32 %6847, 1
  %6897 = icmp eq i32 %6896, %6702
  br i1 %6897, label %6898, label %6845

; <label>:6898                                    ; preds = %6894
  %6899 = load float, float* %6839, align 4, !tbaa !125, !alias.scope !143, !noalias !146
  %6900 = load float, float* %6838, align 4, !tbaa !125, !alias.scope !149, !noalias !150
  %6901 = load float, float* %6837, align 4, !tbaa !125, !alias.scope !151, !noalias !152
  %6902 = load float, float* %6842, align 4, !tbaa !125, !alias.scope !153, !noalias !156
  %6903 = load float, float* %6841, align 4, !tbaa !125, !alias.scope !159, !noalias !160
  %6904 = load float, float* %6840, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  br label %6905

; <label>:6905                                    ; preds = %6898, %6832
  %6906 = phi float [ -1.000000e+00, %6832 ], [ %6904, %6898 ]
  %6907 = phi float [ -1.000000e+00, %6832 ], [ %6903, %6898 ]
  %6908 = phi float [ -1.000000e+00, %6832 ], [ %6902, %6898 ]
  %6909 = phi float [ -1.000000e+00, %6832 ], [ %6901, %6898 ]
  %6910 = phi float [ -1.000000e+00, %6832 ], [ %6900, %6898 ]
  %6911 = phi float [ -1.000000e+00, %6832 ], [ %6899, %6898 ]
  %6912 = phi i32 [ 0, %6832 ], [ %6895, %6898 ]
  %6913 = call float @dx.op.binary.f32(i32 36, float %6910, float %6911)  ; FMin(a,b)
  %6914 = call float @dx.op.binary.f32(i32 36, float %6909, float %6913)  ; FMin(a,b)
  %6915 = call float @dx.op.binary.f32(i32 35, float %6909, float %6910)  ; FMax(a,b)
  %6916 = call float @dx.op.binary.f32(i32 36, float %6915, float %6911)  ; FMin(a,b)
  %6917 = call float @dx.op.binary.f32(i32 36, float %6909, float %6910)  ; FMin(a,b)
  %6918 = call float @dx.op.binary.f32(i32 35, float %6917, float %6916)  ; FMax(a,b)
  %6919 = call float @dx.op.binary.f32(i32 35, float %6910, float %6911)  ; FMax(a,b)
  %6920 = call float @dx.op.binary.f32(i32 35, float %6909, float %6919)  ; FMax(a,b)
  store float %6914, float* %6837, align 4, !tbaa !125, !alias.scope !151, !noalias !152
  store float %6918, float* %6838, align 4, !tbaa !125, !alias.scope !149, !noalias !150
  store float %6920, float* %6839, align 4, !tbaa !125, !alias.scope !143, !noalias !146
  %6921 = call float @dx.op.binary.f32(i32 36, float %6907, float %6908)  ; FMin(a,b)
  %6922 = call float @dx.op.binary.f32(i32 36, float %6906, float %6921)  ; FMin(a,b)
  %6923 = call float @dx.op.binary.f32(i32 35, float %6906, float %6907)  ; FMax(a,b)
  %6924 = call float @dx.op.binary.f32(i32 36, float %6923, float %6908)  ; FMin(a,b)
  %6925 = call float @dx.op.binary.f32(i32 36, float %6906, float %6907)  ; FMin(a,b)
  %6926 = call float @dx.op.binary.f32(i32 35, float %6925, float %6924)  ; FMax(a,b)
  %6927 = call float @dx.op.binary.f32(i32 35, float %6907, float %6908)  ; FMax(a,b)
  %6928 = call float @dx.op.binary.f32(i32 35, float %6906, float %6927)  ; FMax(a,b)
  store float %6922, float* %6840, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  store float %6926, float* %6841, align 4, !tbaa !125, !alias.scope !159, !noalias !160
  store float %6928, float* %6842, align 4, !tbaa !125, !alias.scope !153, !noalias !156
  %6929 = sub nsw i32 3, %6912
  %6930 = icmp sgt i32 %6929, 2
  br i1 %6930, label %6931, label %6969

; <label>:6931                                    ; preds = %6905
  %6932 = icmp eq i32 %6700, 0
  %6933 = fsub fast float %6750, %6834
  %6934 = select i1 %6932, float %6933, float %6834
  %6935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6936 = extractvalue %dx.types.CBufRet.f32 %6935, 0
  %6937 = extractvalue %dx.types.CBufRet.f32 %6935, 1
  %6938 = extractvalue %dx.types.CBufRet.f32 %6935, 2
  %6939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6940 = extractvalue %dx.types.CBufRet.f32 %6939, 0
  %6941 = extractvalue %dx.types.CBufRet.f32 %6939, 1
  %6942 = extractvalue %dx.types.CBufRet.f32 %6939, 2
  %6943 = extractvalue %dx.types.CBufRet.f32 %6939, 3
  %6944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6945 = extractvalue %dx.types.CBufRet.f32 %6944, 3
  %6946 = call float @dx.op.binary.f32(i32 36, float %6835, float %6945)  ; FMin(a,b)
  %6947 = fmul fast float %6943, %6934
  %6948 = call float @dx.op.unary.f32(i32 7, float %6947)  ; Saturate(value)
  %6949 = fsub fast float %6940, %6936
  %6950 = fsub fast float %6941, %6937
  %6951 = fsub fast float %6942, %6938
  %6952 = fmul fast float %6948, %6949
  %6953 = fmul fast float %6948, %6950
  %6954 = fmul fast float %6948, %6951
  %6955 = fadd fast float %6952, %6936
  %6956 = fadd fast float %6953, %6937
  %6957 = fadd fast float %6954, %6938
  %6958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6959 = extractvalue %dx.types.CBufRet.f32 %6958, 0
  %6960 = extractvalue %dx.types.CBufRet.f32 %6958, 1
  %6961 = fadd fast float %6960, %6959
  %6962 = call float @dx.op.unary.f32(i32 7, float %6961)  ; Saturate(value)
  %6963 = extractvalue %dx.types.CBufRet.f32 %6958, 2
  %6964 = extractvalue %dx.types.CBufRet.f32 %6958, 3
  %6965 = fadd fast float %6964, %6963
  %6966 = call float @dx.op.unary.f32(i32 7, float %6965)  ; Saturate(value)
  %6967 = fmul fast float %6962, %6946
  %6968 = fmul fast float %6967, %6966
  br label %7051

; <label>:6969                                    ; preds = %6905
  %6970 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %6929
  %6971 = load float, float* %6970, align 4, !tbaa !125, !noalias !127
  %6972 = fcmp fast olt float %6971, %6836
  %6973 = icmp sgt i32 %6912, 0
  %6974 = and i1 %6973, %6972
  br i1 %6974, label %6975, label %7012

; <label>:6975                                    ; preds = %6969
  br label %6976

; <label>:6976                                    ; preds = %7005, %6975
  %6977 = phi float [ %7006, %7005 ], [ %6834, %6975 ]
  %6978 = phi float [ %7007, %7005 ], [ %6835, %6975 ]
  %6979 = phi float [ %6987, %7005 ], [ %6971, %6975 ]
  %6980 = phi i32 [ %6984, %7005 ], [ %6929, %6975 ]
  %6981 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %6980
  %6982 = load float, float* %6981, align 4, !tbaa !125, !noalias !127
  %6983 = icmp slt i32 %6980, 2
  %6984 = add nsw i32 %6980, 1
  %6985 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %6984
  %6986 = load float, float* %6985, align 4, !tbaa !125, !noalias !127
  %6987 = select i1 %6983, float %6986, float %6750
  %6988 = call float @dx.op.binary.f32(i32 36, float %6987, float %6982)  ; FMin(a,b)
  %6989 = call float @dx.op.binary.f32(i32 36, float %6836, float %6988)  ; FMin(a,b)
  %6990 = icmp eq i32 %6700, 0
  %6991 = fadd fast float %6989, %6979
  %6992 = fmul fast float %6991, %6681
  %6993 = fadd fast float %6992, %6694
  br i1 %6990, label %6999, label %6994

; <label>:6994                                    ; preds = %6976
  %6995 = fsub fast float %6989, %6979
  %6996 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6995)  ; FMax(a,b)
  %6997 = fmul fast float %6996, %6993
  %6998 = fadd fast float %6997, %6978
  br label %7005

; <label>:6999                                    ; preds = %6976
  %7000 = fsub fast float %6979, %6989
  %7001 = call float @dx.op.unary.f32(i32 6, float %7000)  ; FAbs(value)
  %7002 = fadd fast float %7001, %6977
  %7003 = fmul fast float %7001, %6993
  %7004 = fsub fast float %6978, %7003
  br label %7005

; <label>:7005                                    ; preds = %6999, %6994
  %7006 = phi float [ %6996, %6994 ], [ %7002, %6999 ]
  %7007 = phi float [ %6998, %6994 ], [ %7004, %6999 ]
  %7008 = fcmp fast olt float %6987, %6836
  %7009 = icmp slt i32 %6984, 3
  %7010 = and i1 %7009, %7008
  br i1 %7010, label %6976, label %7011

; <label>:7011                                    ; preds = %7005
  br label %7012

; <label>:7012                                    ; preds = %7011, %6969
  %7013 = phi float [ %6834, %6969 ], [ %7006, %7011 ]
  %7014 = phi float [ %6835, %6969 ], [ %7007, %7011 ]
  %7015 = fsub fast float %6750, %7013
  %7016 = select i1 %6752, float %7013, float %7015
  %7017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7018 = extractvalue %dx.types.CBufRet.f32 %7017, 0
  %7019 = extractvalue %dx.types.CBufRet.f32 %7017, 1
  %7020 = extractvalue %dx.types.CBufRet.f32 %7017, 2
  %7021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7022 = extractvalue %dx.types.CBufRet.f32 %7021, 0
  %7023 = extractvalue %dx.types.CBufRet.f32 %7021, 1
  %7024 = extractvalue %dx.types.CBufRet.f32 %7021, 2
  %7025 = extractvalue %dx.types.CBufRet.f32 %7021, 3
  %7026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7027 = extractvalue %dx.types.CBufRet.f32 %7026, 3
  %7028 = call float @dx.op.binary.f32(i32 36, float %7014, float %7027)  ; FMin(a,b)
  %7029 = fmul fast float %7025, %7016
  %7030 = call float @dx.op.unary.f32(i32 7, float %7029)  ; Saturate(value)
  %7031 = fsub fast float %7022, %7018
  %7032 = fsub fast float %7023, %7019
  %7033 = fsub fast float %7024, %7020
  %7034 = fmul fast float %7030, %7031
  %7035 = fmul fast float %7030, %7032
  %7036 = fmul fast float %7030, %7033
  %7037 = fadd fast float %7034, %7018
  %7038 = fadd fast float %7035, %7019
  %7039 = fadd fast float %7036, %7020
  %7040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7041 = extractvalue %dx.types.CBufRet.f32 %7040, 0
  %7042 = extractvalue %dx.types.CBufRet.f32 %7040, 1
  %7043 = fadd fast float %7042, %7041
  %7044 = call float @dx.op.unary.f32(i32 7, float %7043)  ; Saturate(value)
  %7045 = extractvalue %dx.types.CBufRet.f32 %7040, 2
  %7046 = extractvalue %dx.types.CBufRet.f32 %7040, 3
  %7047 = fadd fast float %7046, %7045
  %7048 = call float @dx.op.unary.f32(i32 7, float %7047)  ; Saturate(value)
  %7049 = fmul fast float %7044, %7028
  %7050 = fmul fast float %7049, %7048
  br label %7051

; <label>:7051                                    ; preds = %7012, %6931, %6766, %6748, %6746
  %7052 = phi float [ %6775, %6766 ], [ %6934, %6931 ], [ %7016, %7012 ], [ 0.000000e+00, %6746 ], [ 0.000000e+00, %6748 ]
  %7053 = phi float [ %6809, %6766 ], [ %6968, %6931 ], [ %7050, %7012 ], [ 0.000000e+00, %6746 ], [ 0.000000e+00, %6748 ]
  %7054 = phi float [ %6796, %6766 ], [ %6955, %6931 ], [ %7037, %7012 ], [ 0.000000e+00, %6746 ], [ 0.000000e+00, %6748 ]
  %7055 = phi float [ %6797, %6766 ], [ %6956, %6931 ], [ %7038, %7012 ], [ 0.000000e+00, %6746 ], [ 0.000000e+00, %6748 ]
  %7056 = phi float [ %6798, %6766 ], [ %6957, %6931 ], [ %7039, %7012 ], [ 0.000000e+00, %6746 ], [ 0.000000e+00, %6748 ]
  %7057 = fmul fast float %6689, %7053
  %7058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7059 = extractvalue %dx.types.CBufRet.f32 %7058, 2
  %7060 = fsub fast float %6696, %7059
  %7061 = fcmp fast olt float %7057, -2.000000e+01
  %7062 = call float @dx.op.unary.f32(i32 21, float %7057)  ; Exp(value)
  %7063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7064 = extractvalue %dx.types.CBufRet.f32 %7063, 2
  %7065 = extractvalue %dx.types.CBufRet.f32 %7063, 3
  %7066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7067 = extractvalue %dx.types.CBufRet.f32 %7066, 2
  %7068 = fmul fast float %7065, %7060
  %7069 = call float @dx.op.unary.f32(i32 7, float %7068)  ; Saturate(value)
  %7070 = fsub fast float 1.000000e+00, %7069
  %7071 = fmul fast float %6681, 5.000000e-01
  %7072 = fadd fast float %7071, 5.000000e-01
  %7073 = call float @dx.op.unary.f32(i32 7, float %7072)  ; Saturate(value)
  %7074 = fsub fast float 1.000000e+00, %7073
  %7075 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7070)  ; FMax(a,b)
  %7076 = fdiv fast float %7074, %7075
  %7077 = fsub fast float %7060, %6638
  %7078 = call float @dx.op.unary.f32(i32 6, float %7077)  ; FAbs(value)
  %7079 = fmul fast float %7078, %7064
  %7080 = call float @dx.op.unary.f32(i32 7, float %7076)  ; Saturate(value)
  %7081 = fsub fast float 1.000000e+00, %7079
  %7082 = fmul fast float %7081, %7080
  %7083 = fadd fast float %7082, %7079
  %7084 = fmul fast float %7067, %7060
  %7085 = call float @dx.op.unary.f32(i32 7, float %7084)  ; Saturate(value)
  %7086 = fsub fast float 1.000000e+00, %7083
  %7087 = fmul fast float %7086, %7085
  %7088 = fadd fast float %7087, %7083
  %7089 = call float @dx.op.unary.f32(i32 7, float %7088)  ; Saturate(value)
  %7090 = fadd fast float %7062, -1.000000e+00
  %7091 = select i1 %7061, float -1.000000e+00, float %7090
  %7092 = fmul fast float %7089, %7091
  %7093 = fadd fast float %7092, 1.000000e+00
  %7094 = fsub fast float -0.000000e+00, %7092
  %7095 = fmul fast float %7054, %7094
  %7096 = fmul fast float %7055, %7094
  %7097 = fmul fast float %7056, %7094
  br label %7098

; <label>:7098                                    ; preds = %7051, %6647
  %7099 = phi float [ %7052, %7051 ], [ 0.000000e+00, %6647 ]
  %7100 = phi float [ %7093, %7051 ], [ 1.000000e+00, %6647 ]
  %7101 = phi float [ %7095, %7051 ], [ 0.000000e+00, %6647 ]
  %7102 = phi float [ %7096, %7051 ], [ 0.000000e+00, %6647 ]
  %7103 = phi float [ %7097, %7051 ], [ 0.000000e+00, %6647 ]
  %7104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7105 = extractvalue %dx.types.CBufRet.f32 %7104, 1
  %7106 = fsub fast float 1.000000e+00, %7100
  %7107 = fmul fast float %7106, %6682
  %7108 = fmul fast float %7107, %7105
  %7109 = fsub fast float %6682, %7108
  br i1 %6675, label %7110, label %7139, !dx.controlflow.hints !163

; <label>:7110                                    ; preds = %7098
  %7111 = fmul fast float %6683, %6672
  %7112 = fadd fast float %7111, %6673
  %7113 = call float @dx.op.unary.f32(i32 7, float %7112)  ; Saturate(value)
  %7114 = fmul fast float %6654, %7109
  %7115 = fsub fast float -0.000000e+00, %7114
  %7116 = fmul fast float %6655, %7109
  %7117 = fsub fast float -0.000000e+00, %7116
  %7118 = call float @dx.op.unary.f32(i32 21, float %7115)  ; Exp(value)
  %7119 = call float @dx.op.unary.f32(i32 21, float %7117)  ; Exp(value)
  %7120 = call float @dx.op.binary.f32(i32 35, float %6662, float %7118)  ; FMax(a,b)
  %7121 = call float @dx.op.binary.f32(i32 35, float %6662, float %7119)  ; FMax(a,b)
  %7122 = fsub fast float %7121, %7120
  %7123 = fmul fast float %7122, %7113
  %7124 = fadd fast float %7123, %7120
  %7125 = call float @dx.op.unary.f32(i32 7, float %7124)  ; Saturate(value)
  %7126 = fsub fast float %6659, %6664
  %7127 = fsub fast float %6660, %6665
  %7128 = fsub fast float %6661, %6666
  %7129 = fmul fast float %7113, %7126
  %7130 = fmul fast float %7113, %7127
  %7131 = fmul fast float %7113, %7128
  %7132 = fadd fast float %7129, %6664
  %7133 = fadd fast float %7130, %6665
  %7134 = fadd fast float %7131, %6666
  %7135 = fsub fast float 1.000000e+00, %7125
  %7136 = fmul fast float %7135, %7132
  %7137 = fmul fast float %7135, %7133
  %7138 = fmul fast float %7135, %7134
  br label %7198

; <label>:7139                                    ; preds = %7098
  %7140 = fmul fast float %7109, %6671
  %7141 = call float @dx.op.unary.f32(i32 7, float %7140)  ; Saturate(value)
  %7142 = fsub fast float 2.000000e+00, %7141
  %7143 = fmul fast float %7141, 9.921875e-01
  %7144 = fmul fast float %7143, %7142
  %7145 = fadd fast float %7144, 3.906250e-03
  %7146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %49, float %7145, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7147 = extractvalue %dx.types.ResRet.f32 %7146, 0
  %7148 = fsub fast float %7141, %7147
  %7149 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7148)  ; FMax(a,b)
  %7150 = fmul fast float %6657, %6638
  %7151 = call float @dx.op.unary.f32(i32 6, float %7150)  ; FAbs(value)
  %7152 = fcmp fast ogt float %7151, 0x3EB0C6F7A0000000
  br i1 %7152, label %7153, label %7159, !dx.controlflow.hints !164

; <label>:7153                                    ; preds = %7139
  %7154 = fmul fast float %7150, 0xBFF7154760000000
  %7155 = call float @dx.op.unary.f32(i32 21, float %7154)  ; Exp(value)
  %7156 = fsub fast float 1.000000e+00, %7155
  %7157 = fdiv fast float %7156, %7150
  %7158 = fmul fast float %7157, %6667
  br label %7159

; <label>:7159                                    ; preds = %7153, %7139
  %7160 = phi float [ %7158, %7153 ], [ %6667, %7139 ]
  %7161 = fadd fast float %7160, %6669
  %7162 = fmul fast float %7161, %7149
  %7163 = fmul fast float %6654, %7162
  %7164 = fsub fast float -0.000000e+00, %7163
  %7165 = fmul fast float %6655, %7162
  %7166 = fsub fast float -0.000000e+00, %7165
  %7167 = fmul fast float %6656, %7162
  %7168 = fsub fast float -0.000000e+00, %7167
  %7169 = call float @dx.op.unary.f32(i32 21, float %7164)  ; Exp(value)
  %7170 = call float @dx.op.unary.f32(i32 21, float %7166)  ; Exp(value)
  %7171 = call float @dx.op.unary.f32(i32 21, float %7168)  ; Exp(value)
  %7172 = fmul fast float %6683, %6683
  %7173 = fadd fast float %7172, 1.000000e+00
  %7174 = fmul fast float %7173, 0x3FAE8EC8A0000000
  %7175 = fmul fast float %7174, %6664
  %7176 = fmul fast float %7174, %6665
  %7177 = fmul fast float %7174, %6666
  %7178 = fmul fast float %6683, %6662
  %7179 = fsub fast float 1.000000e+00, %7178
  %7180 = fmul fast float %6662, %6662
  %7181 = fsub fast float 1.000000e+00, %7180
  %7182 = fmul fast float %7181, 0x3FB45F3060000000
  %7183 = fmul fast float %7179, %7179
  %7184 = fdiv fast float 1.000000e+00, %7183
  %7185 = fmul fast float %7182, %7184
  %7186 = fmul fast float %7185, %6659
  %7187 = fmul fast float %7185, %6660
  %7188 = fmul fast float %7185, %6661
  %7189 = fadd fast float %7186, %7175
  %7190 = fadd fast float %7187, %7176
  %7191 = fadd fast float %7188, %7177
  %7192 = fsub fast float 1.000000e+00, %7169
  %7193 = fsub fast float 1.000000e+00, %7170
  %7194 = fsub fast float 1.000000e+00, %7171
  %7195 = fmul fast float %7189, %7192
  %7196 = fmul fast float %7190, %7193
  %7197 = fmul fast float %7191, %7194
  br label %7198

; <label>:7198                                    ; preds = %7159, %7110
  %7199 = phi float [ %7136, %7110 ], [ %7195, %7159 ]
  %7200 = phi float [ %7137, %7110 ], [ %7196, %7159 ]
  %7201 = phi float [ %7138, %7110 ], [ %7197, %7159 ]
  %7202 = phi float [ %7125, %7110 ], [ %7169, %7159 ]
  %7203 = phi float [ %7125, %7110 ], [ %7170, %7159 ]
  %7204 = phi float [ %7125, %7110 ], [ %7171, %7159 ]
  br i1 %6691, label %7205, label %7403, !dx.controlflow.hints !165

; <label>:7205                                    ; preds = %7198
  %7206 = extractvalue %dx.types.CBufRet.f32 %7104, 0
  %7207 = fmul fast float %7206, %7106
  %7208 = fsub fast float %7101, %7199
  %7209 = fsub fast float %7102, %7200
  %7210 = fsub fast float %7103, %7201
  %7211 = fmul fast float %7207, %7208
  %7212 = fmul fast float %7207, %7209
  %7213 = fmul fast float %7207, %7210
  %7214 = fadd fast float %7211, %7199
  %7215 = fadd fast float %7212, %7200
  %7216 = fadd fast float %7213, %7201
  %7217 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7202)  ; FMax(a,b)
  %7218 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7203)  ; FMax(a,b)
  %7219 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7204)  ; FMax(a,b)
  %7220 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7100)  ; FMax(a,b)
  %7221 = call float @dx.op.binary.f32(i32 35, float %7099, float %7109)  ; FMax(a,b)
  %7222 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7221)  ; FMax(a,b)
  %7223 = fdiv fast float %7099, %7222
  %7224 = call float @dx.op.unary.f32(i32 7, float %7223)  ; Saturate(value)
  %7225 = fdiv fast float %7109, %7222
  %7226 = call float @dx.op.unary.f32(i32 7, float %7225)  ; Saturate(value)
  %7227 = fcmp fast une float %7220, 1.000000e+00
  br i1 %7227, label %7228, label %7241, !dx.controlflow.hints !166

; <label>:7228                                    ; preds = %7205
  %7229 = call float @dx.op.unary.f32(i32 23, float %7220)  ; Log(value)
  %7230 = fmul fast float %7229, 0x3FE62E4300000000
  %7231 = fmul fast float %7101, %7230
  %7232 = fsub fast float -0.000000e+00, %7231
  %7233 = fmul fast float %7102, %7230
  %7234 = fsub fast float -0.000000e+00, %7233
  %7235 = fmul fast float %7103, %7230
  %7236 = fsub fast float -0.000000e+00, %7235
  %7237 = fsub fast float 1.000000e+00, %7220
  %7238 = fdiv fast float %7232, %7237
  %7239 = fdiv fast float %7234, %7237
  %7240 = fdiv fast float %7236, %7237
  br label %7241

; <label>:7241                                    ; preds = %7228, %7205
  %7242 = phi float [ %7238, %7228 ], [ %7101, %7205 ]
  %7243 = phi float [ %7239, %7228 ], [ %7102, %7205 ]
  %7244 = phi float [ %7240, %7228 ], [ %7103, %7205 ]
  %7245 = phi float [ %7230, %7228 ], [ 0.000000e+00, %7205 ]
  %7246 = fcmp fast une float %7217, 1.000000e+00
  br i1 %7246, label %7247, label %7254, !dx.controlflow.hints !167

; <label>:7247                                    ; preds = %7241
  %7248 = call float @dx.op.unary.f32(i32 23, float %7217)  ; Log(value)
  %7249 = fmul fast float %7248, 0x3FE62E4300000000
  %7250 = fmul fast float %7214, %7249
  %7251 = fsub fast float -0.000000e+00, %7250
  %7252 = fsub fast float 1.000000e+00, %7217
  %7253 = fdiv fast float %7251, %7252
  br label %7254

; <label>:7254                                    ; preds = %7247, %7241
  %7255 = phi float [ %7253, %7247 ], [ %7214, %7241 ]
  %7256 = phi float [ %7249, %7247 ], [ 0.000000e+00, %7241 ]
  %7257 = fcmp fast une float %7218, 1.000000e+00
  br i1 %7257, label %7258, label %7265, !dx.controlflow.hints !167

; <label>:7258                                    ; preds = %7254
  %7259 = call float @dx.op.unary.f32(i32 23, float %7218)  ; Log(value)
  %7260 = fmul fast float %7259, 0x3FE62E4300000000
  %7261 = fmul fast float %7215, %7260
  %7262 = fsub fast float -0.000000e+00, %7261
  %7263 = fsub fast float 1.000000e+00, %7218
  %7264 = fdiv fast float %7262, %7263
  br label %7265

; <label>:7265                                    ; preds = %7258, %7254
  %7266 = phi float [ %7264, %7258 ], [ %7215, %7254 ]
  %7267 = phi float [ %7260, %7258 ], [ 0.000000e+00, %7254 ]
  %7268 = fcmp fast une float %7219, 1.000000e+00
  br i1 %7268, label %7269, label %7276, !dx.controlflow.hints !167

; <label>:7269                                    ; preds = %7265
  %7270 = call float @dx.op.unary.f32(i32 23, float %7219)  ; Log(value)
  %7271 = fmul fast float %7270, 0x3FE62E4300000000
  %7272 = fmul fast float %7216, %7271
  %7273 = fsub fast float -0.000000e+00, %7272
  %7274 = fsub fast float 1.000000e+00, %7219
  %7275 = fdiv fast float %7273, %7274
  br label %7276

; <label>:7276                                    ; preds = %7269, %7265
  %7277 = phi float [ %7275, %7269 ], [ %7216, %7265 ]
  %7278 = phi float [ %7271, %7269 ], [ 0.000000e+00, %7265 ]
  %7279 = fmul fast float %7242, %7226
  %7280 = fmul fast float %7243, %7226
  %7281 = fmul fast float %7244, %7226
  %7282 = fmul fast float %7245, %7226
  %7283 = fmul fast float %7255, %7224
  %7284 = fmul fast float %7266, %7224
  %7285 = fmul fast float %7277, %7224
  %7286 = fmul fast float %7256, %7224
  %7287 = fmul fast float %7267, %7224
  %7288 = fmul fast float %7278, %7224
  %7289 = fadd fast float %7283, %7279
  %7290 = fadd fast float %7284, %7280
  %7291 = fadd fast float %7285, %7281
  %7292 = fadd fast float %7286, %7282
  %7293 = fadd fast float %7287, %7282
  %7294 = fadd fast float %7288, %7282
  %7295 = fcmp fast une float %7292, 0.000000e+00
  br i1 %7295, label %7296, label %7303, !dx.controlflow.hints !168

; <label>:7296                                    ; preds = %7276
  %7297 = fmul fast float %7292, 0x3FF7154760000000
  %7298 = call float @dx.op.unary.f32(i32 21, float %7297)  ; Exp(value)
  %7299 = fsub fast float 1.000000e+00, %7298
  %7300 = fmul fast float %7289, %7299
  %7301 = fsub fast float -0.000000e+00, %7300
  %7302 = fdiv fast float %7301, %7292
  br label %7303

; <label>:7303                                    ; preds = %7296, %7276
  %7304 = phi float [ %7298, %7296 ], [ 1.000000e+00, %7276 ]
  %7305 = phi float [ %7302, %7296 ], [ %7289, %7276 ]
  %7306 = fcmp fast une float %7293, 0.000000e+00
  br i1 %7306, label %7307, label %7314, !dx.controlflow.hints !168

; <label>:7307                                    ; preds = %7303
  %7308 = fmul fast float %7293, 0x3FF7154760000000
  %7309 = call float @dx.op.unary.f32(i32 21, float %7308)  ; Exp(value)
  %7310 = fsub fast float 1.000000e+00, %7309
  %7311 = fmul fast float %7290, %7310
  %7312 = fsub fast float -0.000000e+00, %7311
  %7313 = fdiv fast float %7312, %7293
  br label %7314

; <label>:7314                                    ; preds = %7307, %7303
  %7315 = phi float [ %7309, %7307 ], [ 1.000000e+00, %7303 ]
  %7316 = phi float [ %7313, %7307 ], [ %7290, %7303 ]
  %7317 = fcmp fast une float %7294, 0.000000e+00
  br i1 %7317, label %7318, label %7325, !dx.controlflow.hints !168

; <label>:7318                                    ; preds = %7314
  %7319 = fmul fast float %7294, 0x3FF7154760000000
  %7320 = call float @dx.op.unary.f32(i32 21, float %7319)  ; Exp(value)
  %7321 = fsub fast float 1.000000e+00, %7320
  %7322 = fmul fast float %7291, %7321
  %7323 = fsub fast float -0.000000e+00, %7322
  %7324 = fdiv fast float %7323, %7294
  br label %7325

; <label>:7325                                    ; preds = %7318, %7314
  %7326 = phi float [ %7320, %7318 ], [ 1.000000e+00, %7314 ]
  %7327 = phi float [ %7324, %7318 ], [ %7291, %7314 ]
  %7328 = fcmp fast ogt float %7224, %7226
  br i1 %7328, label %7329, label %7349

; <label>:7329                                    ; preds = %7325
  %7330 = fsub fast float 1.000000e+00, %7226
  %7331 = fmul fast float %7242, %7330
  %7332 = fmul fast float %7243, %7330
  %7333 = fmul fast float %7244, %7330
  %7334 = fmul fast float %7245, %7330
  %7335 = fcmp fast une float %7334, 0.000000e+00
  br i1 %7335, label %7336, label %7387, !dx.controlflow.hints !169

; <label>:7336                                    ; preds = %7329
  %7337 = fmul fast float %7334, 0x3FF7154760000000
  %7338 = call float @dx.op.unary.f32(i32 21, float %7337)  ; Exp(value)
  %7339 = fsub fast float 1.000000e+00, %7338
  %7340 = fmul fast float %7331, %7339
  %7341 = fsub fast float -0.000000e+00, %7340
  %7342 = fmul fast float %7332, %7339
  %7343 = fsub fast float -0.000000e+00, %7342
  %7344 = fmul fast float %7333, %7339
  %7345 = fsub fast float -0.000000e+00, %7344
  %7346 = fdiv fast float %7341, %7334
  %7347 = fdiv fast float %7343, %7334
  %7348 = fdiv fast float %7345, %7334
  br label %7387

; <label>:7349                                    ; preds = %7325
  %7350 = fsub fast float 1.000000e+00, %7224
  %7351 = fmul fast float %7255, %7350
  %7352 = fmul fast float %7266, %7350
  %7353 = fmul fast float %7277, %7350
  %7354 = fmul fast float %7256, %7350
  %7355 = fmul fast float %7267, %7350
  %7356 = fmul fast float %7278, %7350
  %7357 = fcmp fast une float %7354, 0.000000e+00
  br i1 %7357, label %7358, label %7365, !dx.controlflow.hints !168

; <label>:7358                                    ; preds = %7349
  %7359 = fmul fast float %7354, 0x3FF7154760000000
  %7360 = call float @dx.op.unary.f32(i32 21, float %7359)  ; Exp(value)
  %7361 = fsub fast float 1.000000e+00, %7360
  %7362 = fmul fast float %7351, %7361
  %7363 = fsub fast float -0.000000e+00, %7362
  %7364 = fdiv fast float %7363, %7354
  br label %7365

; <label>:7365                                    ; preds = %7358, %7349
  %7366 = phi float [ %7364, %7358 ], [ %7351, %7349 ]
  %7367 = phi float [ %7360, %7358 ], [ 1.000000e+00, %7349 ]
  %7368 = fcmp fast une float %7355, 0.000000e+00
  br i1 %7368, label %7369, label %7376, !dx.controlflow.hints !168

; <label>:7369                                    ; preds = %7365
  %7370 = fmul fast float %7355, 0x3FF7154760000000
  %7371 = call float @dx.op.unary.f32(i32 21, float %7370)  ; Exp(value)
  %7372 = fsub fast float 1.000000e+00, %7371
  %7373 = fmul fast float %7352, %7372
  %7374 = fsub fast float -0.000000e+00, %7373
  %7375 = fdiv fast float %7374, %7355
  br label %7376

; <label>:7376                                    ; preds = %7369, %7365
  %7377 = phi float [ %7375, %7369 ], [ %7352, %7365 ]
  %7378 = phi float [ %7371, %7369 ], [ 1.000000e+00, %7365 ]
  %7379 = fcmp fast une float %7356, 0.000000e+00
  br i1 %7379, label %7380, label %7387, !dx.controlflow.hints !168

; <label>:7380                                    ; preds = %7376
  %7381 = fmul fast float %7356, 0x3FF7154760000000
  %7382 = call float @dx.op.unary.f32(i32 21, float %7381)  ; Exp(value)
  %7383 = fsub fast float 1.000000e+00, %7382
  %7384 = fmul fast float %7353, %7383
  %7385 = fsub fast float -0.000000e+00, %7384
  %7386 = fdiv fast float %7385, %7356
  br label %7387

; <label>:7387                                    ; preds = %7380, %7376, %7336, %7329
  %7388 = phi float [ %7386, %7380 ], [ %7348, %7336 ], [ %7333, %7329 ], [ %7353, %7376 ]
  %7389 = phi float [ %7377, %7380 ], [ %7347, %7336 ], [ %7332, %7329 ], [ %7377, %7376 ]
  %7390 = phi float [ %7366, %7380 ], [ %7346, %7336 ], [ %7331, %7329 ], [ %7366, %7376 ]
  %7391 = phi float [ %7382, %7380 ], [ %7338, %7336 ], [ 1.000000e+00, %7329 ], [ 1.000000e+00, %7376 ]
  %7392 = phi float [ %7378, %7380 ], [ %7338, %7336 ], [ 1.000000e+00, %7329 ], [ %7378, %7376 ]
  %7393 = phi float [ %7367, %7380 ], [ %7338, %7336 ], [ 1.000000e+00, %7329 ], [ %7367, %7376 ]
  %7394 = fmul fast float %7393, %7305
  %7395 = fmul fast float %7392, %7316
  %7396 = fmul fast float %7391, %7327
  %7397 = fadd fast float %7394, %7390
  %7398 = fadd fast float %7395, %7389
  %7399 = fadd fast float %7396, %7388
  %7400 = fmul fast float %7393, %7304
  %7401 = fmul fast float %7392, %7315
  %7402 = fmul fast float %7391, %7326
  br label %7403

; <label>:7403                                    ; preds = %7387, %7198
  %7404 = phi float [ %7402, %7387 ], [ %7204, %7198 ]
  %7405 = phi float [ %7401, %7387 ], [ %7203, %7198 ]
  %7406 = phi float [ %7400, %7387 ], [ %7202, %7198 ]
  %7407 = phi float [ %7399, %7387 ], [ %7201, %7198 ]
  %7408 = phi float [ %7398, %7387 ], [ %7200, %7198 ]
  %7409 = phi float [ %7397, %7387 ], [ %7199, %7198 ]
  %7410 = fmul fast float %7409, %6355
  %7411 = fmul fast float %7408, %6355
  %7412 = fmul fast float %7407, %6355
  %7413 = fmul fast float %7406, %6646
  %7414 = call float @dx.op.dot3.f32(i32 55, float %7406, float %7405, float %7404, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7415 = call float @dx.op.dot3.f32(i32 55, float %7410, float %7411, float %7412, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7416 = select i1 %251, float %7414, float %7406
  %7417 = select i1 %251, float %7414, float %7405
  %7418 = select i1 %251, float 1.000000e+00, float %7404
  %7419 = select i1 %251, float %7415, float %7410
  %7420 = select i1 %251, float 0.000000e+00, float %7411
  %7421 = select i1 %251, float 0.000000e+00, float %7412
  %7422 = fmul fast float %7416, %6640
  %7423 = fmul fast float %7417, %6641
  %7424 = fmul fast float %7418, %6642
  %7425 = fadd fast float %7422, %7419
  %7426 = fadd fast float %7423, %7420
  %7427 = fadd fast float %7421, %7424
  %7428 = fmul fast float %7416, %6643
  %7429 = fmul fast float %7417, %6644
  %7430 = fmul fast float %7418, %6645
  %7431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7432 = extractvalue %dx.types.CBufRet.i32 %7431, 0
  %7433 = icmp eq i32 %7432, 0
  br i1 %7433, label %7801, label %7434, !dx.controlflow.hints !170

; <label>:7434                                    ; preds = %7403
  %7435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7436 = extractvalue %dx.types.CBufRet.f32 %7435, 2
  %7437 = extractvalue %dx.types.CBufRet.f32 %7435, 3
  %7438 = fmul fast float %7436, %105
  %7439 = fmul fast float %7437, %106
  %7440 = fmul fast float %7438, 2.000000e+00
  %7441 = fmul fast float %7439, 2.000000e+00
  %7442 = fsub fast float 1.000000e+00, %7440
  %7443 = fsub fast float 1.000000e+00, %7441
  %7444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7445 = extractvalue %dx.types.CBufRet.f32 %7444, 0
  %7446 = extractvalue %dx.types.CBufRet.f32 %7444, 1
  %7447 = extractvalue %dx.types.CBufRet.f32 %7444, 2
  %7448 = fmul fast float %7442, %7445
  %7449 = fmul fast float %7442, %7446
  %7450 = fmul fast float %7442, %7447
  %7451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7452 = extractvalue %dx.types.CBufRet.f32 %7451, 0
  %7453 = extractvalue %dx.types.CBufRet.f32 %7451, 1
  %7454 = extractvalue %dx.types.CBufRet.f32 %7451, 2
  %7455 = fmul fast float %7443, %7452
  %7456 = fmul fast float %7443, %7453
  %7457 = fmul fast float %7443, %7454
  %7458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7459 = extractvalue %dx.types.CBufRet.f32 %7458, 0
  %7460 = extractvalue %dx.types.CBufRet.f32 %7458, 1
  %7461 = extractvalue %dx.types.CBufRet.f32 %7458, 2
  %7462 = fadd fast float %7455, %7459
  %7463 = fadd fast float %7462, %7448
  %7464 = fadd fast float %7456, %7460
  %7465 = fadd fast float %7464, %7449
  %7466 = fadd fast float %7457, %7461
  %7467 = fadd fast float %7466, %7450
  %7468 = fmul fast float %7463, %6639
  %7469 = fmul fast float %7465, %6639
  %7470 = fmul fast float %7467, %6639
  %7471 = fmul fast float %7468, %7468
  %7472 = fmul fast float %7469, %7469
  %7473 = fadd fast float %7471, %7472
  %7474 = fmul fast float %7470, %7470
  %7475 = fadd fast float %7473, %7474
  %7476 = call float @dx.op.unary.f32(i32 24, float %7475)  ; Sqrt(value)
  %7477 = extractvalue %dx.types.CBufRet.f32 %6366, 0
  %7478 = fsub fast float %7476, %7477
  %7479 = extractvalue %dx.types.CBufRet.f32 %6366, 2
  %7480 = fmul fast float %7478, %7479
  %7481 = call float @dx.op.unary.f32(i32 7, float %7480)  ; Saturate(value)
  %7482 = fadd fast float %7481, -5.000000e-01
  %7483 = fmul fast float %7482, 2.000000e+00
  %7484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7485 = extractvalue %dx.types.CBufRet.f32 %7484, 2
  %7486 = call float @dx.op.binary.f32(i32 36, float %7485, float %7483)  ; FMin(a,b)
  %7487 = fsub fast float -0.000000e+00, %7485
  %7488 = fcmp fast ogt float %7486, %7487
  br i1 %7488, label %7489, label %7801, !dx.controlflow.hints !171

; <label>:7489                                    ; preds = %7434
  %7490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7491 = extractvalue %dx.types.CBufRet.f32 %7490, 3
  %7492 = fcmp fast ogt float %7491, 0.000000e+00
  br i1 %7492, label %7493, label %7568, !dx.controlflow.hints !172

; <label>:7493                                    ; preds = %7489
  %7494 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7495 = extractvalue %dx.types.Dimensions %7494, 0
  %7496 = sitofp i32 %7495 to float
  %7497 = extractvalue %dx.types.Dimensions %7494, 1
  %7498 = sitofp i32 %7497 to float
  %7499 = fmul fast float %7438, %7496
  %7500 = fmul fast float %7439, %7498
  %7501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7502 = extractvalue %dx.types.CBufRet.f32 %7501, 1
  %7503 = fsub fast float -0.000000e+00, %7502
  %7504 = fptoui float %7503 to i32
  %7505 = fptoui float %7499 to i32
  %7506 = fptoui float %7500 to i32
  %7507 = and i32 %7504, 31
  %7508 = lshr i32 %7505, %7507
  %7509 = lshr i32 %7506, %7507
  %7510 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %7504, i32 %7508, i32 %7509, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7511 = extractvalue %dx.types.ResRet.f32 %7510, 0
  %7512 = fcmp fast olt float %7511, -1.000000e+00
  %7513 = fcmp fast ogt float %7511, -1.000000e+00
  %7514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7515 = extractvalue %dx.types.CBufRet.f32 %7514, 1
  %7516 = select i1 %7513, float %7515, float 1.000000e+00
  %7517 = fadd fast float %7511, 1.000000e+00
  %7518 = fmul fast float %7516, %7517
  %7519 = call float @dx.op.unary.f32(i32 6, float %7518)  ; FAbs(value)
  %7520 = extractvalue %dx.types.CBufRet.f32 %7514, 3
  %7521 = fcmp fast oge float %7519, %7520
  %7522 = select i1 %7521, float 0x4197782600000000, float %7519
  %7523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7524 = extractvalue %dx.types.CBufRet.f32 %7523, 0
  %7525 = extractvalue %dx.types.CBufRet.f32 %7523, 1
  %7526 = extractvalue %dx.types.CBufRet.f32 %7523, 2
  %7527 = select i1 %7512, float %7524, float %7445
  %7528 = select i1 %7512, float %7525, float %7446
  %7529 = select i1 %7512, float %7526, float %7447
  %7530 = fmul fast float %7527, %7442
  %7531 = fmul fast float %7528, %7442
  %7532 = fmul fast float %7529, %7442
  %7533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7534 = extractvalue %dx.types.CBufRet.f32 %7533, 0
  %7535 = extractvalue %dx.types.CBufRet.f32 %7533, 1
  %7536 = extractvalue %dx.types.CBufRet.f32 %7533, 2
  %7537 = select i1 %7512, float %7534, float %7452
  %7538 = select i1 %7512, float %7535, float %7453
  %7539 = select i1 %7512, float %7536, float %7454
  %7540 = fmul fast float %7537, %7443
  %7541 = fmul fast float %7538, %7443
  %7542 = fmul fast float %7539, %7443
  %7543 = fadd fast float %7540, %7530
  %7544 = fadd fast float %7541, %7531
  %7545 = fadd fast float %7542, %7532
  %7546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7547 = extractvalue %dx.types.CBufRet.f32 %7546, 0
  %7548 = extractvalue %dx.types.CBufRet.f32 %7546, 1
  %7549 = extractvalue %dx.types.CBufRet.f32 %7546, 2
  %7550 = select i1 %7512, float %7547, float %7459
  %7551 = select i1 %7512, float %7548, float %7460
  %7552 = select i1 %7512, float %7549, float %7461
  %7553 = fadd fast float %7543, %7550
  %7554 = fadd fast float %7544, %7551
  %7555 = fadd fast float %7545, %7552
  %7556 = fmul fast float %7553, %7522
  %7557 = fmul fast float %7554, %7522
  %7558 = fmul fast float %7555, %7522
  %7559 = fmul fast float %7556, %7556
  %7560 = fmul fast float %7557, %7557
  %7561 = fadd fast float %7559, %7560
  %7562 = fmul fast float %7558, %7558
  %7563 = fadd fast float %7561, %7562
  %7564 = call float @dx.op.unary.f32(i32 24, float %7563)  ; Sqrt(value)
  %7565 = fsub fast float %7564, %7477
  %7566 = fmul fast float %7565, %7479
  %7567 = call float @dx.op.unary.f32(i32 7, float %7566)  ; Saturate(value)
  br label %7568

; <label>:7568                                    ; preds = %7493, %7489
  %7569 = phi float [ %7567, %7493 ], [ 1.000000e+00, %7489 ]
  %7570 = fmul fast float %7486, 5.000000e-01
  %7571 = fadd fast float %7570, 5.000000e-01
  %7572 = call float @dx.op.unary.f32(i32 22, float %7571)  ; Frc(value)
  %7573 = call float @dx.op.unary.f32(i32 27, float %7572)  ; Round_ni(value)
  %7574 = call float @dx.op.unary.f32(i32 22, float %7572)  ; Frc(value)
  %7575 = fmul fast float %7574, 2.000000e+00
  %7576 = fadd fast float %7575, -1.000000e+00
  %7577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %49, float %7438, float %7439, float %7573, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7578 = extractvalue %dx.types.ResRet.f32 %7577, 0
  %7579 = extractvalue %dx.types.ResRet.f32 %7577, 1
  %7580 = extractvalue %dx.types.ResRet.f32 %7577, 2
  %7581 = extractvalue %dx.types.ResRet.f32 %7577, 3
  %7582 = fadd fast float %7578, -5.000000e-01
  %7583 = fadd fast float %7580, -5.000000e-01
  %7584 = fmul fast float %7582, 0xBFD5555560000000
  %7585 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7583, float %7584)  ; FMad(a,b,c)
  %7586 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7579, float 0.000000e+00)  ; FMad(a,b,c)
  %7587 = fadd fast float %7586, %7581
  %7588 = fmul fast float %7582, -7.500000e-01
  %7589 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7583, float %7588)  ; FMad(a,b,c)
  %7590 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7579, float 0.000000e+00)  ; FMad(a,b,c)
  %7591 = fadd fast float %7590, %7581
  %7592 = call float @dx.op.binary.f32(i32 35, float %7585, float -1.000000e+00)  ; FMax(a,b)
  %7593 = call float @dx.op.binary.f32(i32 35, float %7587, float -1.000000e+00)  ; FMax(a,b)
  %7594 = call float @dx.op.binary.f32(i32 35, float %7589, float -1.000000e+00)  ; FMax(a,b)
  %7595 = call float @dx.op.binary.f32(i32 35, float %7591, float -1.000000e+00)  ; FMax(a,b)
  %7596 = call float @dx.op.binary.f32(i32 36, float %7592, float 1.000000e+00)  ; FMin(a,b)
  %7597 = call float @dx.op.binary.f32(i32 36, float %7593, float 1.000000e+00)  ; FMin(a,b)
  %7598 = call float @dx.op.binary.f32(i32 36, float %7594, float 1.000000e+00)  ; FMin(a,b)
  %7599 = call float @dx.op.binary.f32(i32 36, float %7595, float 1.000000e+00)  ; FMin(a,b)
  %7600 = fcmp fast olt float %7596, 0x3FEFFF8020000000
  br i1 %7600, label %7601, label %7716, !dx.controlflow.hints !173

; <label>:7601                                    ; preds = %7568
  %7602 = extractvalue %dx.types.CBufRet.f32 %7484, 3
  %7603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7604 = extractvalue %dx.types.CBufRet.f32 %7603, 0
  %7605 = extractvalue %dx.types.CBufRet.f32 %7603, 1
  %7606 = extractvalue %dx.types.CBufRet.f32 %7603, 2
  %7607 = extractvalue %dx.types.CBufRet.f32 %7603, 3
  %7608 = fsub fast float %7604, %7596
  %7609 = fsub fast float %7605, %7597
  %7610 = fsub fast float %7606, %7598
  %7611 = fsub fast float %7607, %7599
  %7612 = fmul fast float %7608, %7602
  %7613 = fmul fast float %7609, %7602
  %7614 = fmul fast float %7610, %7602
  %7615 = fmul fast float %7611, %7602
  %7616 = fadd fast float %7612, %7596
  %7617 = fadd fast float %7613, %7597
  %7618 = fsub fast float -0.000000e+00, %7617
  %7619 = fadd fast float %7614, %7598
  %7620 = fadd fast float %7615, %7599
  %7621 = fmul fast float %7616, %7616
  %7622 = fsub fast float %7617, %7621
  %7623 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7622)  ; FMax(a,b)
  %7624 = fdiv fast float 1.000000e+00, %7623
  %7625 = fmul fast float %7617, %7616
  %7626 = fsub fast float %7619, %7625
  %7627 = fsub fast float %7576, %7616
  %7628 = fmul fast float %7576, %7576
  %7629 = fsub fast float %7628, %7617
  %7630 = fmul fast float %7627, %7624
  %7631 = fmul fast float %7630, %7626
  %7632 = fsub fast float %7629, %7631
  %7633 = fmul fast float %7617, %7617
  %7634 = fsub fast float %7620, %7633
  %7635 = fmul fast float %7626, %7626
  %7636 = fmul fast float %7635, %7624
  %7637 = fsub fast float %7634, %7636
  %7638 = fdiv fast float %7632, %7637
  %7639 = fmul fast float %7626, %7638
  %7640 = fsub fast float %7627, %7639
  %7641 = fmul fast float %7640, %7624
  %7642 = fmul fast float %7641, %7616
  %7643 = fsub fast float 1.000000e+00, %7642
  %7644 = fmul fast float %7617, %7638
  %7645 = fsub fast float %7643, %7644
  %7646 = fmul fast float %7641, %7641
  %7647 = fmul fast float %7638, 4.000000e+00
  %7648 = fmul fast float %7647, %7645
  %7649 = fsub fast float %7646, %7648
  %7650 = call float @dx.op.unary.f32(i32 24, float %7649)  ; Sqrt(value)
  %7651 = fcmp fast oge float %7641, 0.000000e+00
  %7652 = fsub fast float -0.000000e+00, %7650
  %7653 = select i1 %7651, float %7652, float %7650
  %7654 = fsub fast float %7653, %7641
  %7655 = fdiv fast float %7654, %7638
  %7656 = fdiv fast float %7645, %7654
  %7657 = fmul fast float %7655, 5.000000e-01
  %7658 = fmul fast float %7656, 2.000000e+00
  %7659 = select i1 %7651, float %7657, float %7658
  %7660 = select i1 %7651, float %7658, float %7657
  %7661 = call float @dx.op.binary.f32(i32 35, float %7659, float %7660)  ; FMax(a,b)
  %7662 = call float @dx.op.binary.f32(i32 36, float %7659, float %7660)  ; FMin(a,b)
  %7663 = fcmp fast ogt float %7576, %7662
  br i1 %7663, label %7664, label %7674

; <label>:7664                                    ; preds = %7601
  %7665 = fsub fast float %7576, %7662
  %7666 = fsub fast float %7661, %7662
  %7667 = fmul fast float %7665, %7666
  %7668 = fmul fast float %7661, %7576
  %7669 = fadd fast float %7661, %7576
  %7670 = fmul fast float %7669, %7616
  %7671 = fadd fast float %7668, %7617
  %7672 = fsub fast float %7671, %7670
  %7673 = fdiv fast float %7672, %7667
  br label %7674

; <label>:7674                                    ; preds = %7664, %7601
  %7675 = phi float [ %7673, %7664 ], [ 0.000000e+00, %7601 ]
  %7676 = fcmp fast ogt float %7576, %7661
  %7677 = fsub fast float %7576, %7661
  br i1 %7676, label %7678, label %7688

; <label>:7678                                    ; preds = %7674
  %7679 = fsub fast float %7661, %7662
  %7680 = fmul fast float %7679, %7677
  %7681 = fmul fast float %7662, %7576
  %7682 = fadd fast float %7662, %7576
  %7683 = fmul fast float %7682, %7616
  %7684 = fsub fast float %7618, %7681
  %7685 = fadd fast float %7684, %7683
  %7686 = fdiv fast float %7685, %7680
  %7687 = fadd fast float %7686, %7675
  br label %7688

; <label>:7688                                    ; preds = %7678, %7674
  %7689 = phi float [ %7687, %7678 ], [ %7675, %7674 ]
  %7690 = fsub fast float %7576, %7662
  %7691 = fmul fast float %7690, %7677
  %7692 = fmul fast float %7662, %7661
  %7693 = fadd fast float %7662, %7661
  %7694 = fmul fast float %7693, %7616
  %7695 = fadd fast float %7692, %7617
  %7696 = fsub fast float %7695, %7694
  %7697 = fdiv fast float %7696, %7691
  %7698 = call float @dx.op.unary.f32(i32 7, float %7689)  ; Saturate(value)
  %7699 = fcmp fast oeq float %6367, 0.000000e+00
  %7700 = extractvalue %dx.types.CBufRet.f32 %7484, 0
  %7701 = fcmp fast oeq float %7700, 0.000000e+00
  %7702 = or i1 %7699, %7701
  %7703 = fmul fast float %7700, 2.000000e+00
  %7704 = fadd fast float %7485, %7486
  %7705 = fdiv fast float %7704, %7703
  %7706 = call float @dx.op.unary.f32(i32 7, float %7705)  ; Saturate(value)
  %7707 = fmul fast float %7706, 2.000000e+00
  %7708 = fsub fast float 3.000000e+00, %7707
  %7709 = fmul fast float %7706, %7706
  %7710 = fmul fast float %7709, %7708
  %7711 = select i1 %7702, float 1.000000e+00, float %7710
  %7712 = fmul fast float %7697, %6367
  %7713 = fadd fast float %7698, %7712
  %7714 = call float @dx.op.unary.f32(i32 7, float %7713)  ; Saturate(value)
  %7715 = fmul fast float %7711, %7714
  br label %7716

; <label>:7716                                    ; preds = %7688, %7568
  %7717 = phi float [ %7715, %7688 ], [ 0.000000e+00, %7568 ]
  %7718 = fsub fast float 1.000000e+00, %7717
  %7719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %7438, float %7439, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7720 = extractvalue %dx.types.ResRet.f32 %7719, 0
  %7721 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7722 = extractvalue %dx.types.CBufRet.i32 %7721, 2
  %7723 = icmp eq i32 %7722, 0
  br i1 %7723, label %7729, label %7724

; <label>:7724                                    ; preds = %7716
  %7725 = call float @dx.op.unary.f32(i32 7, float %7717)  ; Saturate(value)
  %7726 = fadd fast float %7720, -1.000000e+00
  %7727 = fmul fast float %7725, %7726
  %7728 = fadd fast float %7727, 1.000000e+00
  br label %7729

; <label>:7729                                    ; preds = %7724, %7716
  %7730 = phi float [ %7728, %7724 ], [ %7718, %7716 ]
  br i1 %7492, label %7731, label %7749

; <label>:7731                                    ; preds = %7729
  %7732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7733 = extractvalue %dx.types.CBufRet.f32 %7732, 1
  %7734 = fsub fast float %7569, %7733
  %7735 = call float @dx.op.unary.f32(i32 7, float %7734)  ; Saturate(value)
  %7736 = fsub fast float %7569, %7491
  %7737 = call float @dx.op.unary.f32(i32 7, float %7736)  ; Saturate(value)
  %7738 = fsub fast float %7735, %7737
  %7739 = fsub fast float %7571, %7737
  %7740 = fdiv fast float %7739, %7738
  %7741 = call float @dx.op.unary.f32(i32 7, float %7740)  ; Saturate(value)
  %7742 = fmul fast float %7741, 2.000000e+00
  %7743 = fsub fast float 3.000000e+00, %7742
  %7744 = fsub fast float %7720, %7730
  %7745 = fmul fast float %7741, %7741
  %7746 = fmul fast float %7745, %7744
  %7747 = fmul fast float %7746, %7743
  %7748 = fadd fast float %7747, %7730
  br label %7749

; <label>:7749                                    ; preds = %7731, %7729
  %7750 = phi float [ %7748, %7731 ], [ %7730, %7729 ]
  %7751 = call float @dx.op.binary.f32(i32 35, float %7720, float %7750)  ; FMax(a,b)
  %7752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7753 = extractvalue %dx.types.CBufRet.i32 %7752, 2
  %7754 = and i32 %7753, 1
  %7755 = icmp eq i32 %7754, 0
  %7756 = fcmp fast une float %7751, 1.000000e+00
  %7757 = and i1 %7756, %7755
  br i1 %7757, label %7758, label %7777

; <label>:7758                                    ; preds = %7749
  %7759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %7438, float %7439, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7760 = extractvalue %dx.types.ResRet.f32 %7759, 0
  %7761 = extractvalue %dx.types.ResRet.f32 %7759, 1
  %7762 = extractvalue %dx.types.ResRet.f32 %7759, 2
  %7763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7764 = extractvalue %dx.types.CBufRet.f32 %7763, 1
  %7765 = fmul fast float %7764, %7760
  %7766 = fmul fast float %7764, %7761
  %7767 = fmul fast float %7764, %7762
  %7768 = fcmp fast ogt float %7720, 0x3FEFFF2E40000000
  %7769 = fsub fast float 1.000000e+00, %7751
  %7770 = fsub fast float 1.000000e+00, %7720
  %7771 = fdiv fast float %7769, %7770
  %7772 = call float @dx.op.unary.f32(i32 7, float %7771)  ; Saturate(value)
  %7773 = select i1 %7768, float 0.000000e+00, float %7772
  %7774 = fmul fast float %7765, %7773
  %7775 = fmul fast float %7766, %7773
  %7776 = fmul fast float %7767, %7773
  br label %7777

; <label>:7777                                    ; preds = %7758, %7749
  %7778 = phi float [ 0.000000e+00, %7749 ], [ %7774, %7758 ]
  %7779 = phi float [ 0.000000e+00, %7749 ], [ %7775, %7758 ]
  %7780 = phi float [ 0.000000e+00, %7749 ], [ %7776, %7758 ]
  %7781 = fmul fast float %7778, %6355
  %7782 = fmul fast float %7779, %6355
  %7783 = fmul fast float %7780, %6355
  %7784 = fmul fast float %7751, %7413
  %7785 = call float @dx.op.dot3.f32(i32 55, float %7751, float %7751, float %7751, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7786 = call float @dx.op.dot3.f32(i32 55, float %7781, float %7782, float %7783, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7787 = select i1 %251, float %7785, float %7751
  %7788 = select i1 %251, float 1.000000e+00, float %7751
  %7789 = select i1 %251, float %7786, float %7781
  %7790 = select i1 %251, float 0.000000e+00, float %7782
  %7791 = select i1 %251, float 0.000000e+00, float %7783
  %7792 = fmul fast float %7787, %7425
  %7793 = fmul fast float %7787, %7426
  %7794 = fmul fast float %7788, %7427
  %7795 = fadd fast float %7792, %7789
  %7796 = fadd fast float %7793, %7790
  %7797 = fadd fast float %7791, %7794
  %7798 = fmul fast float %7787, %7428
  %7799 = fmul fast float %7787, %7429
  %7800 = fmul fast float %7788, %7430
  br label %7801

; <label>:7801                                    ; preds = %7777, %7434, %7403, %6635
  %7802 = phi float [ %6640, %6635 ], [ %7425, %7403 ], [ %7795, %7777 ], [ %7425, %7434 ]
  %7803 = phi float [ %6641, %6635 ], [ %7426, %7403 ], [ %7796, %7777 ], [ %7426, %7434 ]
  %7804 = phi float [ %6642, %6635 ], [ %7427, %7403 ], [ %7797, %7777 ], [ %7427, %7434 ]
  %7805 = phi float [ %6643, %6635 ], [ %7428, %7403 ], [ %7798, %7777 ], [ %7428, %7434 ]
  %7806 = phi float [ %6644, %6635 ], [ %7429, %7403 ], [ %7799, %7777 ], [ %7429, %7434 ]
  %7807 = phi float [ %6645, %6635 ], [ %7430, %7403 ], [ %7800, %7777 ], [ %7430, %7434 ]
  %7808 = phi float [ %6646, %6635 ], [ %7413, %7403 ], [ %7784, %7777 ], [ %7413, %7434 ]
  %7809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7810 = extractvalue %dx.types.CBufRet.f32 %7809, 2
  %7811 = extractvalue %dx.types.CBufRet.f32 %7809, 3
  %7812 = fmul fast float %7810, %105
  %7813 = fmul fast float %7811, %106
  %7814 = call float @dx.op.unary.f32(i32 7, float %7812)  ; Saturate(value)
  %7815 = call float @dx.op.unary.f32(i32 7, float %7813)  ; Saturate(value)
  %7816 = select i1 %6377, i32 2, i32 0
  %7817 = or i32 %7816, 1
  %7818 = uitofp i32 %7817 to float
  %7819 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %49, float %7814, float %7815, float %7818, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7820 = extractvalue %dx.types.ResRet.f32 %7819, 0
  %7821 = extractvalue %dx.types.ResRet.f32 %7819, 1
  %7822 = extractvalue %dx.types.ResRet.f32 %7819, 2
  %7823 = extractvalue %dx.types.ResRet.f32 %7819, 3
  %7824 = add nuw nsw i32 %7816, 2
  %7825 = uitofp i32 %7824 to float
  %7826 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %49, float %7814, float %7815, float %7825, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7827 = extractvalue %dx.types.ResRet.f32 %7826, 0
  %7828 = extractvalue %dx.types.ResRet.f32 %7826, 1
  %7829 = extractvalue %dx.types.ResRet.f32 %7826, 2
  %7830 = extractvalue %dx.types.ResRet.f32 %7826, 3
  %7831 = call float @dx.op.binary.f32(i32 35, float %7821, float %7822)  ; FMax(a,b)
  %7832 = call float @dx.op.binary.f32(i32 35, float %7820, float %7831)  ; FMax(a,b)
  %7833 = call float @dx.op.binary.f32(i32 35, float %7832, float %7823)  ; FMax(a,b)
  %7834 = call float @dx.op.binary.f32(i32 36, float %7828, float %7829)  ; FMin(a,b)
  %7835 = call float @dx.op.binary.f32(i32 36, float %7827, float %7834)  ; FMin(a,b)
  %7836 = call float @dx.op.binary.f32(i32 36, float %7835, float %7830)  ; FMin(a,b)
  %7837 = fmul fast float %7833, 2.550000e+02
  %7838 = fadd fast float %7837, 0x3F70101020000000
  %7839 = fptoui float %7838 to i32
  %7840 = fmul fast float %7836, 2.550000e+02
  %7841 = fadd fast float %7840, 0x3F70101020000000
  %7842 = fptoui float %7841 to i32
  %7843 = icmp ult i32 %7839, %7842
  br i1 %7843, label %7844, label %8013

; <label>:7844                                    ; preds = %7801
  %7845 = fcmp fast ogt float %95, 9.843750e-01
  %7846 = fadd fast float %6639, -4.000000e+00
  %7847 = select i1 %7845, float -4.000000e+00, float %7846
  %7848 = call float @dx.op.binary.f32(i32 35, float %7847, float 0.000000e+00)  ; FMax(a,b)
  %7849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7850 = extractvalue %dx.types.CBufRet.f32 %7849, 0
  %7851 = fadd fast float %7850, %7848
  %7852 = extractvalue %dx.types.CBufRet.f32 %7849, 2
  %7853 = fmul fast float %7851, %7852
  %7854 = call float @dx.op.unary.f32(i32 23, float %7853)  ; Log(value)
  %7855 = extractvalue %dx.types.CBufRet.f32 %7849, 3
  %7856 = fmul fast float %7855, %7854
  %7857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7858 = extractvalue %dx.types.CBufRet.f32 %7857, 2
  %7859 = fmul fast float %7856, %7858
  %7860 = call float @dx.op.unary.f32(i32 7, float %7859)  ; Saturate(value)
  %7861 = uitofp i32 %7839 to float
  %7862 = uitofp i32 %7842 to float
  %7863 = fadd fast float %7861, 5.000000e-01
  %7864 = fadd fast float %7862, 5.000000e-01
  %7865 = fmul fast float %7858, %7863
  %7866 = fmul fast float %7858, %7864
  %7867 = fadd fast float %7865, 0x3F0FFB4800000000
  %7868 = fadd fast float %7866, 0xBF0FFB4800000000
  %7869 = call float @dx.op.binary.f32(i32 35, float %7860, float %7867)  ; FMax(a,b)
  %7870 = call float @dx.op.binary.f32(i32 36, float %7869, float %7868)  ; FMin(a,b)
  %7871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7872 = extractvalue %dx.types.CBufRet.f32 %7871, 1
  %7873 = extractvalue %dx.types.CBufRet.f32 %7871, 2
  %7874 = extractvalue %dx.types.CBufRet.f32 %7871, 0
  %7875 = select i1 %6377, float %7874, float 0.000000e+00
  %7876 = fmul fast float %7872, %7870
  %7877 = fadd fast float %7875, %7876
  %7878 = fadd fast float %7875, %7873
  %7879 = fsub fast float %7872, %7873
  %7880 = fadd fast float %7879, %7875
  %7881 = call float @dx.op.binary.f32(i32 35, float %7877, float %7878)  ; FMax(a,b)
  %7882 = call float @dx.op.binary.f32(i32 36, float %7881, float %7880)  ; FMin(a,b)
  %7883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7814, float %7815, float %7882, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7884 = extractvalue %dx.types.ResRet.f32 %7883, 0
  %7885 = extractvalue %dx.types.ResRet.f32 %7883, 1
  %7886 = extractvalue %dx.types.ResRet.f32 %7883, 2
  %7887 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7888 = extractvalue %dx.types.CBufRet.i32 %7887, 0
  %7889 = extractvalue %dx.types.CBufRet.i32 %7887, 1
  %7890 = uitofp i32 %7888 to float
  %7891 = uitofp i32 %7889 to float
  %7892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7893 = extractvalue %dx.types.CBufRet.f32 %7892, 0
  %7894 = extractvalue %dx.types.CBufRet.f32 %7892, 1
  %7895 = fmul fast float %7890, %7814
  %7896 = fmul fast float %7891, %7815
  %7897 = fadd fast float %7895, -5.000000e-01
  %7898 = fadd fast float %7896, -5.000000e-01
  %7899 = call float @dx.op.unary.f32(i32 22, float %7897)  ; Frc(value)
  %7900 = call float @dx.op.unary.f32(i32 22, float %7898)  ; Frc(value)
  %7901 = fmul fast float %7899, %7899
  %7902 = fmul fast float %7901, %7899
  %7903 = fsub fast float 3.000000e+00, %7899
  %7904 = fmul fast float %7901, %7903
  %7905 = fmul fast float %7899, 3.000000e+00
  %7906 = fmul fast float %7902, 3.000000e+00
  %7907 = fmul fast float %7901, 6.000000e+00
  %7908 = fsub fast float %7906, %7907
  %7909 = fadd fast float %7908, 4.000000e+00
  %7910 = fmul fast float %7909, 0x3FC5555560000000
  %7911 = fmul fast float %7902, -3.000000e+00
  %7912 = fadd fast float %7901, %7899
  %7913 = fmul fast float %7912, 3.000000e+00
  %7914 = fadd fast float %7911, 1.000000e+00
  %7915 = fadd fast float %7914, %7913
  %7916 = fmul fast float %7902, 0x3FC5555560000000
  %7917 = fmul fast float %7900, %7900
  %7918 = fmul fast float %7917, %7900
  %7919 = fsub fast float 3.000000e+00, %7900
  %7920 = fmul fast float %7917, %7919
  %7921 = fmul fast float %7900, 3.000000e+00
  %7922 = fmul fast float %7918, 3.000000e+00
  %7923 = fmul fast float %7917, 6.000000e+00
  %7924 = fsub fast float %7922, %7923
  %7925 = fadd fast float %7924, 4.000000e+00
  %7926 = fmul fast float %7925, 0x3FC5555560000000
  %7927 = fmul fast float %7918, -3.000000e+00
  %7928 = fadd fast float %7917, %7900
  %7929 = fmul fast float %7928, 3.000000e+00
  %7930 = fadd fast float %7927, 1.000000e+00
  %7931 = fadd fast float %7930, %7929
  %7932 = fmul fast float %7918, 0x3FC5555560000000
  %7933 = fadd fast float %7899, 1.000000e+00
  %7934 = fsub fast float 1.000000e+00, %7905
  %7935 = fadd fast float %7934, %7904
  %7936 = fadd fast float %7935, %7909
  %7937 = fmul fast float %7936, 0x3FC5555560000000
  %7938 = fdiv fast float %7910, %7937
  %7939 = fsub fast float %7933, %7938
  %7940 = fsub fast float 1.000000e+00, %7899
  %7941 = fadd fast float %7915, %7902
  %7942 = fmul fast float %7941, 0x3FC5555560000000
  %7943 = fdiv fast float %7916, %7942
  %7944 = fadd fast float %7940, %7943
  %7945 = fadd fast float %7900, 1.000000e+00
  %7946 = fsub fast float 1.000000e+00, %7921
  %7947 = fadd fast float %7946, %7920
  %7948 = fadd fast float %7947, %7925
  %7949 = fmul fast float %7948, 0x3FC5555560000000
  %7950 = fdiv fast float %7926, %7949
  %7951 = fsub fast float %7945, %7950
  %7952 = fsub fast float 1.000000e+00, %7900
  %7953 = fadd fast float %7931, %7918
  %7954 = fmul fast float %7953, 0x3FC5555560000000
  %7955 = fdiv fast float %7932, %7954
  %7956 = fadd fast float %7955, %7952
  %7957 = fmul fast float %7939, %7893
  %7958 = fsub fast float %7814, %7957
  %7959 = fmul fast float %7944, %7893
  %7960 = fadd fast float %7959, %7814
  %7961 = fmul fast float %7956, %7894
  %7962 = fadd fast float %7961, %7815
  %7963 = fmul fast float %7951, %7894
  %7964 = fsub fast float %7815, %7963
  %7965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %47, float %7958, float %7964, float %7882, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7966 = extractvalue %dx.types.ResRet.f32 %7965, 0
  %7967 = extractvalue %dx.types.ResRet.f32 %7965, 1
  %7968 = extractvalue %dx.types.ResRet.f32 %7965, 2
  %7969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %47, float %7960, float %7964, float %7882, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7970 = extractvalue %dx.types.ResRet.f32 %7969, 0
  %7971 = extractvalue %dx.types.ResRet.f32 %7969, 1
  %7972 = extractvalue %dx.types.ResRet.f32 %7969, 2
  %7973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %47, float %7958, float %7962, float %7882, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7974 = extractvalue %dx.types.ResRet.f32 %7973, 0
  %7975 = extractvalue %dx.types.ResRet.f32 %7973, 1
  %7976 = extractvalue %dx.types.ResRet.f32 %7973, 2
  %7977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %47, float %7960, float %7962, float %7882, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7978 = extractvalue %dx.types.ResRet.f32 %7977, 0
  %7979 = extractvalue %dx.types.ResRet.f32 %7977, 1
  %7980 = extractvalue %dx.types.ResRet.f32 %7977, 2
  %7981 = fsub fast float %7974, %7966
  %7982 = fsub fast float %7975, %7967
  %7983 = fsub fast float %7976, %7968
  %7984 = fmul fast float %7981, %7954
  %7985 = fmul fast float %7982, %7954
  %7986 = fmul fast float %7983, %7954
  %7987 = fadd fast float %7984, %7966
  %7988 = fadd fast float %7985, %7967
  %7989 = fadd fast float %7986, %7968
  %7990 = fsub fast float %7978, %7970
  %7991 = fsub fast float %7979, %7971
  %7992 = fsub fast float %7980, %7972
  %7993 = fmul fast float %7990, %7954
  %7994 = fmul fast float %7991, %7954
  %7995 = fmul fast float %7992, %7954
  %7996 = fsub fast float %7970, %7987
  %7997 = fadd fast float %7996, %7993
  %7998 = fsub fast float %7971, %7988
  %7999 = fadd fast float %7998, %7994
  %8000 = fsub fast float %7972, %7989
  %8001 = fadd fast float %8000, %7995
  %8002 = fmul fast float %7997, %7942
  %8003 = fmul fast float %7999, %7942
  %8004 = fmul fast float %8001, %7942
  %8005 = fadd fast float %8002, %7987
  %8006 = fadd fast float %8003, %7988
  %8007 = fadd fast float %8004, %7989
  %8008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8009 = extractvalue %dx.types.CBufRet.f32 %8008, 1
  %8010 = fmul fast float %8005, %8009
  %8011 = fmul fast float %8006, %8009
  %8012 = fmul fast float %8007, %8009
  br label %8013

; <label>:8013                                    ; preds = %7844, %7801
  %8014 = phi float [ %7884, %7844 ], [ 1.000000e+00, %7801 ]
  %8015 = phi float [ %7885, %7844 ], [ 1.000000e+00, %7801 ]
  %8016 = phi float [ %7886, %7844 ], [ 1.000000e+00, %7801 ]
  %8017 = phi float [ %8010, %7844 ], [ 0.000000e+00, %7801 ]
  %8018 = phi float [ %8011, %7844 ], [ 0.000000e+00, %7801 ]
  %8019 = phi float [ %8012, %7844 ], [ 0.000000e+00, %7801 ]
  %8020 = fmul fast float %8017, %6355
  %8021 = fmul fast float %8018, %6355
  %8022 = fmul fast float %8019, %6355
  %8023 = fmul fast float %8014, %7808
  %8024 = call float @dx.op.dot3.f32(i32 55, float %8014, float %8015, float %8016, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8025 = call float @dx.op.dot3.f32(i32 55, float %8020, float %8021, float %8022, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8026 = select i1 %251, float %8024, float %8014
  %8027 = select i1 %251, float %8024, float %8015
  %8028 = select i1 %251, float 1.000000e+00, float %8016
  %8029 = select i1 %251, float %8025, float %8020
  %8030 = select i1 %251, float 0.000000e+00, float %8021
  %8031 = select i1 %251, float 0.000000e+00, float %8022
  %8032 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8033 = extractvalue %dx.types.CBufRet.i32 %8032, 3
  %8034 = and i32 %8033, 3
  %8035 = icmp ne i32 %8034, 0
  %8036 = and i32 %8033, 4
  %8037 = icmp ne i32 %8036, 0
  %8038 = and i1 %8035, %8037
  %8039 = and i1 %251, %8038
  br i1 %8039, label %8040, label %8046

; <label>:8040                                    ; preds = %8013
  %8041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8042 = extractvalue %dx.types.CBufRet.f32 %8041, 1
  %8043 = fadd fast float %8023, -1.000000e+00
  %8044 = fmul fast float %8042, %8043
  %8045 = fadd fast float %8044, 1.000000e+00
  br label %8046

; <label>:8046                                    ; preds = %8040, %8013
  %8047 = phi float [ %8045, %8040 ], [ %8023, %8013 ]
  %8048 = fadd fast float %7805, %7802
  %8049 = fmul fast float %8026, %8048
  %8050 = fadd fast float %8049, %8029
  %8051 = fadd fast float %7806, %7803
  %8052 = fmul fast float %8027, %8051
  %8053 = fadd fast float %8052, %8030
  %8054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8055 = extractvalue %dx.types.CBufRet.f32 %8054, 0
  br i1 %251, label %8056, label %8080

; <label>:8056                                    ; preds = %8046
  %8057 = fadd fast float %8050, %8053
  %8058 = fmul fast float %8055, %8057
  %8059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8060 = extractvalue %dx.types.CBufRet.f32 %8059, 3
  %8061 = extractvalue %dx.types.CBufRet.f32 %6359, 1
  %8062 = fsub fast float %6364, %6358
  %8063 = fadd fast float %8062, %6365
  %8064 = fsub fast float %8063, %8061
  %8065 = extractvalue %dx.types.CBufRet.f32 %6359, 2
  %8066 = fmul fast float %8064, %8065
  %8067 = call float @dx.op.unary.f32(i32 7, float %8066)  ; Saturate(value)
  %8068 = fsub fast float %8067, %8060
  %8069 = fmul fast float %8068, %8047
  %8070 = fadd fast float %8069, %8060
  %8071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8072 = extractvalue %dx.types.CBufRet.f32 %8071, 0
  %8073 = fsub fast float %8070, %8072
  %8074 = fmul fast float %8073, 1.000000e+01
  %8075 = call float @dx.op.unary.f32(i32 7, float %8074)  ; Saturate(value)
  %8076 = fsub fast float %3213, %6355
  %8077 = fmul fast float %8075, %8076
  %8078 = fadd fast float %8077, %6355
  %8079 = fmul fast float %8078, %8070
  br label %8104

; <label>:8080                                    ; preds = %8046
  %8081 = fadd fast float %7807, %7804
  %8082 = fmul fast float %8028, %8081
  %8083 = fadd fast float %8082, %8031
  %8084 = fmul fast float %8055, %8050
  %8085 = fmul fast float %8055, %8053
  %8086 = fmul fast float %8055, %8083
  %8087 = call float @dx.op.binary.f32(i32 35, float %8085, float %8086)  ; FMax(a,b)
  %8088 = call float @dx.op.binary.f32(i32 35, float %8084, float %8087)  ; FMax(a,b)
  %8089 = call float @dx.op.binary.f32(i32 35, float %8088, float %6355)  ; FMax(a,b)
  %8090 = fcmp fast ugt float %8089, 0x3F10000000000000
  br i1 %8090, label %8092, label %8091

; <label>:8091                                    ; preds = %8080
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8092

; <label>:8092                                    ; preds = %8091, %8080
  %8093 = add i32 %55, 356
  %8094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %8093, i32 undef)  ; BufferLoad(srv,index,wot)
  %8095 = extractvalue %dx.types.ResRet.i32 %8094, 0
  %8096 = and i32 %8095, 32
  %8097 = icmp eq i32 %8096, 0
  br i1 %8097, label %8104, label %8098

; <label>:8098                                    ; preds = %8092
  %8099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8100 = extractvalue %dx.types.CBufRet.f32 %8099, 0
  %8101 = fmul fast float %8100, 0x3FE99999A0000000
  %8102 = fadd fast float %8100, %8084
  %8103 = fadd fast float %8101, %8086
  br label %8104

; <label>:8104                                    ; preds = %8098, %8092, %8056
  %8105 = phi float [ %8058, %8056 ], [ %8102, %8098 ], [ %8084, %8092 ]
  %8106 = phi float [ %8079, %8056 ], [ %8085, %8098 ], [ %8085, %8092 ]
  %8107 = phi float [ %8078, %8056 ], [ %8103, %8098 ], [ %8086, %8092 ]
  %8108 = phi float [ %8078, %8056 ], [ %6355, %8098 ], [ %6355, %8092 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8109 = call float @dx.op.binary.f32(i32 36, float %8105, float 3.225500e+04)  ; FMin(a,b)
  %8110 = call float @dx.op.binary.f32(i32 36, float %8106, float 3.225500e+04)  ; FMin(a,b)
  %8111 = call float @dx.op.binary.f32(i32 36, float %8107, float 3.225500e+04)  ; FMin(a,b)
  %8112 = call float @dx.op.binary.f32(i32 36, float %8108, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8109)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8110)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8111)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8112)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

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
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
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
!56 = !{i32 47, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
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
!68 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 14, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !94}
!70 = !{!71, !92, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !90, !91}
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
!83 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 7, i8 0, !79}
!84 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 8, i8 0, !74}
!85 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 2, i32 9, i8 0, !77}
!86 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 10, i8 0, !74}
!87 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 11, i8 0, !79}
!88 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !73, i8 1, i32 1, i8 1, i32 12, i8 0, !89}
!89 = !{i32 3, i32 1}
!90 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 13, i8 0, !89}
!91 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!92 = !{!93}
!93 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!94 = !{i32 0, i64 16}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = !{!101, !101, i64 0}
!101 = !{!"int", !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !{!105, !107, !109, !111}
!105 = distinct !{!105, !106, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!106 = distinct !{!106, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!107 = distinct !{!107, !108, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!108 = distinct !{!108, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!109 = distinct !{!109, !110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!110 = distinct !{!110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!111 = distinct !{!111, !112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!112 = distinct !{!112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = !{!126, !126, i64 0}
!126 = !{!"float", !102, i64 0}
!127 = !{!128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!128 = distinct !{!128, !129, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!129 = distinct !{!129, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!130 = distinct !{!130, !131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!131 = distinct !{!131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!132 = distinct !{!132, !131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!133 = distinct !{!133, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!134 = distinct !{!134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!135 = distinct !{!135, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!136 = distinct !{!136, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!137 = distinct !{!137, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!138 = distinct !{!138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!139 = distinct !{!139, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!140 = distinct !{!140, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!141 = distinct !{!141, !142, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!142 = distinct !{!142, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"\01?sort@@YAXAIAM00@Z: %c"}
!145 = distinct !{!145, !"\01?sort@@YAXAIAM00@Z"}
!146 = !{!147, !148, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!147 = distinct !{!147, !145, !"\01?sort@@YAXAIAM00@Z: %a"}
!148 = distinct !{!148, !145, !"\01?sort@@YAXAIAM00@Z: %b"}
!149 = !{!148}
!150 = !{!147, !144, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!151 = !{!147}
!152 = !{!148, !144, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!153 = !{!154}
!154 = distinct !{!154, !155, !"\01?sort@@YAXAIAM00@Z: %c"}
!155 = distinct !{!155, !"\01?sort@@YAXAIAM00@Z"}
!156 = !{!157, !158, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!157 = distinct !{!157, !155, !"\01?sort@@YAXAIAM00@Z: %a"}
!158 = distinct !{!158, !155, !"\01?sort@@YAXAIAM00@Z: %b"}
!159 = !{!158}
!160 = !{!157, !154, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!161 = !{!157}
!162 = !{!158, !154, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 2}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}

