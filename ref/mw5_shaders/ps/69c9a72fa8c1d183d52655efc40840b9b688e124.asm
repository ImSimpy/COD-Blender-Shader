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
; shader hash: 6e9ec3d7ebe4056d2bcce2e7db5c1fef
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
  %194 = add i32 %54, 360
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
  %476 = add i32 %54, 520
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
  %637 = add i32 %54, 472
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
  %689 = add i32 %54, 456
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
  %713 = add i32 %54, 408
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
  %736 = add i32 %54, 488
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
  %934 = add i32 %54, 424
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
  %1018 = add i32 %54, 440
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
  %1195 = add i32 %54, 476
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
  %1247 = add i32 %54, 460
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
  %1273 = add i32 %54, 412
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
  %1296 = add i32 %54, 492
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
  %1494 = add i32 %54, 428
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
  %1578 = add i32 %54, 444
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
  %1934 = add i32 %54, 480
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
  %1986 = add i32 %54, 464
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
  %2012 = add i32 %54, 416
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
  %2035 = add i32 %54, 496
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
  %2233 = add i32 %54, 432
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
  %2317 = add i32 %54, 448
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
  %2673 = add i32 %54, 484
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
  %2725 = add i32 %54, 468
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
  %2751 = add i32 %54, 420
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
  %2774 = add i32 %54, 500
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
  %2972 = add i32 %54, 436
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
  %3056 = add i32 %54, 452
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
  %3298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3299 = extractvalue %dx.types.CBufRet.f32 %3298, 0
  %3300 = call float @dx.op.dot2.f32(i32 54, float %3286, float %3287, float %3286, float %3287)  ; Dot2(ax,ay,bx,by)
  %3301 = fmul fast float %3300, 0x3FE3333340000000
  %3302 = fsub fast float 1.000000e+00, %3301
  %3303 = call float @dx.op.dot3.f32(i32 55, float %3286, float %3287, float %3302, float %3286, float %3287, float %3302)  ; Dot3(ax,ay,az,bx,by,bz)
  %3304 = call float @dx.op.unary.f32(i32 25, float %3303)  ; Rsqrt(value)
  %3305 = fmul fast float %3304, %3286
  %3306 = fmul fast float %3304, %3287
  %3307 = fmul fast float %3302, %3304
  %3308 = fmul fast float %3307, %111
  %3309 = fmul fast float %3307, %112
  %3310 = fmul fast float %3307, %113
  %3311 = fmul fast float %3305, %79
  %3312 = fmul fast float %3305, %80
  %3313 = fmul fast float %3305, %81
  %3314 = fadd fast float %3308, %3311
  %3315 = fadd fast float %3309, %3312
  %3316 = fadd fast float %3310, %3313
  %3317 = fmul fast float %123, %3306
  %3318 = fmul fast float %124, %3306
  %3319 = fmul fast float %125, %3306
  %3320 = fadd fast float %3314, %3317
  %3321 = fadd fast float %3315, %3318
  %3322 = fadd fast float %3316, %3319
  %3323 = call float @dx.op.dot3.f32(i32 55, float %3320, float %3321, float %3322, float %3320, float %3321, float %3322)  ; Dot3(ax,ay,az,bx,by,bz)
  %3324 = call float @dx.op.unary.f32(i32 25, float %3323)  ; Rsqrt(value)
  %3325 = fmul fast float %3320, %3324
  %3326 = fmul fast float %3321, %3324
  %3327 = fmul fast float %3322, %3324
  %3328 = icmp eq i32 %55, 65535
  br i1 %3328, label %3843, label %3329

; <label>:3329                                    ; preds = %3285
  %3330 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %3331 = call float @dx.op.unary.f32(i32 83, float %57)  ; DerivCoarseX(value)
  %3332 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3333 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %3334 = call float @dx.op.unary.f32(i32 84, float %57)  ; DerivCoarseY(value)
  %3335 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3336 = fadd fast float %3330, %56
  %3337 = fadd fast float %3331, %57
  %3338 = fadd fast float %3332, %58
  %3339 = fadd fast float %3333, %56
  %3340 = fadd fast float %3334, %57
  %3341 = fadd fast float %3335, %58
  %3342 = mul i32 %55, 48
  %3343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3342, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.f32 %3343, 0
  %3345 = extractvalue %dx.types.ResRet.f32 %3343, 1
  %3346 = extractvalue %dx.types.ResRet.f32 %3343, 2
  %3347 = add i32 %3342, 16
  %3348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3347, i32 undef)  ; BufferLoad(srv,index,wot)
  %3349 = extractvalue %dx.types.ResRet.f32 %3348, 0
  %3350 = extractvalue %dx.types.ResRet.f32 %3348, 1
  %3351 = extractvalue %dx.types.ResRet.f32 %3348, 2
  %3352 = add i32 %3342, 32
  %3353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3352, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.f32 %3353, 0
  %3355 = extractvalue %dx.types.ResRet.f32 %3353, 1
  %3356 = extractvalue %dx.types.ResRet.f32 %3353, 2
  %3357 = extractvalue %dx.types.ResRet.f32 %3353, 3
  %3358 = bitcast float %3357 to i32
  %3359 = fmul fast float %3344, %56
  %3360 = fmul fast float %3345, %57
  %3361 = fmul fast float %3346, %58
  %3362 = fsub fast float %3359, %3349
  %3363 = fsub fast float %3360, %3350
  %3364 = fsub fast float %3361, %3351
  %3365 = call float @dx.op.unary.f32(i32 7, float %3362)  ; Saturate(value)
  %3366 = call float @dx.op.unary.f32(i32 7, float %3363)  ; Saturate(value)
  %3367 = call float @dx.op.unary.f32(i32 7, float %3364)  ; Saturate(value)
  %3368 = fmul fast float %3365, %3354
  %3369 = fmul fast float %3366, %3355
  %3370 = fmul fast float %3367, %3356
  %3371 = fadd fast float %3354, -1.000000e+00
  %3372 = fadd fast float %3355, -1.000000e+00
  %3373 = fadd fast float %3356, -1.000000e+00
  %3374 = call float @dx.op.unary.f32(i32 27, float %3368)  ; Round_ni(value)
  %3375 = call float @dx.op.unary.f32(i32 27, float %3369)  ; Round_ni(value)
  %3376 = call float @dx.op.unary.f32(i32 27, float %3370)  ; Round_ni(value)
  %3377 = call float @dx.op.binary.f32(i32 36, float %3374, float %3371)  ; FMin(a,b)
  %3378 = call float @dx.op.binary.f32(i32 36, float %3375, float %3372)  ; FMin(a,b)
  %3379 = call float @dx.op.binary.f32(i32 36, float %3376, float %3373)  ; FMin(a,b)
  %3380 = fmul fast float %3379, %3355
  %3381 = fadd fast float %3380, %3378
  %3382 = fmul fast float %3381, %3354
  %3383 = fadd fast float %3382, %3377
  %3384 = fptosi float %3383 to i32
  %3385 = add nsw i32 %3384, %3358
  %3386 = shl nsw i32 %3385, 2
  %3387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3386, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = lshr i32 %3388, 16
  %3390 = icmp eq i32 %3389, 0
  br i1 %3390, label %3812, label %3391

; <label>:3391                                    ; preds = %3329
  br label %3392

; <label>:3392                                    ; preds = %3513, %3391
  %3393 = phi i32 [ %3415, %3513 ], [ %3389, %3391 ]
  %3394 = phi float [ %3514, %3513 ], [ 0.000000e+00, %3391 ]
  %3395 = phi float [ %3515, %3513 ], [ %3299, %3391 ]
  %3396 = phi float [ %3516, %3513 ], [ %3297, %3391 ]
  %3397 = phi float [ %3517, %3513 ], [ 0.000000e+00, %3391 ]
  %3398 = phi float [ %3518, %3513 ], [ 0.000000e+00, %3391 ]
  %3399 = phi float [ %3519, %3513 ], [ %3291, %3391 ]
  %3400 = phi float [ %3520, %3513 ], [ %3292, %3391 ]
  %3401 = phi float [ %3521, %3513 ], [ %3293, %3391 ]
  %3402 = phi float [ %3522, %3513 ], [ %3325, %3391 ]
  %3403 = phi float [ %3523, %3513 ], [ %3326, %3391 ]
  %3404 = phi float [ %3524, %3513 ], [ %3327, %3391 ]
  %3405 = phi float [ %3525, %3513 ], [ %3296, %3391 ]
  %3406 = phi float [ %3526, %3513 ], [ %3295, %3391 ]
  %3407 = phi float [ %3527, %3513 ], [ 0.000000e+00, %3391 ]
  %3408 = phi float [ %3528, %3513 ], [ %3294, %3391 ]
  %3409 = phi float [ %3529, %3513 ], [ %3288, %3391 ]
  %3410 = phi float [ %3530, %3513 ], [ %3289, %3391 ]
  %3411 = phi float [ %3531, %3513 ], [ %3290, %3391 ]
  %3412 = shl nuw nsw i32 %3393, 2
  %3413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.i32 %3413, 0
  %3415 = lshr i32 %3414, 16
  %3416 = shl i32 %3414, 8
  %3417 = and i32 %3416, 16776960
  %3418 = or i32 %3417, 48
  %3419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.f32 %3419, 0
  %3421 = extractvalue %dx.types.ResRet.f32 %3419, 1
  %3422 = extractvalue %dx.types.ResRet.f32 %3419, 2
  %3423 = or i32 %3417, 64
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3423, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = extractvalue %dx.types.ResRet.i32 %3424, 1
  %3427 = or i32 %3417, 80
  %3428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3427, i32 undef)  ; BufferLoad(srv,index,wot)
  %3429 = extractvalue %dx.types.ResRet.f32 %3428, 2
  %3430 = extractvalue %dx.types.ResRet.f32 %3428, 3
  %3431 = or i32 %3417, 96
  %3432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.f32 %3432, 0
  %3434 = extractvalue %dx.types.ResRet.f32 %3432, 1
  %3435 = extractvalue %dx.types.ResRet.f32 %3432, 2
  %3436 = extractvalue %dx.types.ResRet.f32 %3432, 3
  %3437 = or i32 %3417, 112
  %3438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.f32 %3438, 2
  %3440 = or i32 %3417, 128
  %3441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3440, i32 undef)  ; BufferLoad(srv,index,wot)
  %3442 = extractvalue %dx.types.ResRet.f32 %3441, 0
  %3443 = extractvalue %dx.types.ResRet.f32 %3441, 1
  %3444 = extractvalue %dx.types.ResRet.f32 %3441, 2
  %3445 = extractvalue %dx.types.ResRet.f32 %3441, 3
  %3446 = or i32 %3417, 144
  %3447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.f32 %3447, 0
  %3449 = extractvalue %dx.types.ResRet.f32 %3447, 1
  %3450 = extractvalue %dx.types.ResRet.f32 %3447, 2
  %3451 = extractvalue %dx.types.ResRet.f32 %3447, 3
  %3452 = or i32 %3417, 160
  %3453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3452, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.f32 %3453, 0
  %3455 = extractvalue %dx.types.ResRet.f32 %3453, 1
  %3456 = extractvalue %dx.types.ResRet.f32 %3453, 2
  %3457 = extractvalue %dx.types.ResRet.f32 %3453, 3
  %3458 = or i32 %3417, 192
  %3459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3458, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.i32 %3459, 0
  %3461 = or i32 %3417, 208
  %3462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3461, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.f32 %3462, 0
  %3464 = or i32 %3417, 248
  %3465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3464, i32 undef)  ; BufferLoad(srv,index,wot)
  %3466 = extractvalue %dx.types.ResRet.f32 %3465, 0
  %3467 = extractvalue %dx.types.ResRet.f32 %3465, 1
  %3468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3417, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.f32 %3468, 0
  %3470 = extractvalue %dx.types.ResRet.f32 %3468, 1
  %3471 = extractvalue %dx.types.ResRet.f32 %3468, 2
  %3472 = extractvalue %dx.types.ResRet.f32 %3468, 3
  %3473 = call float @dx.op.dot4.f32(i32 56, float %3469, float %3470, float %3471, float %3472, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3474 = or i32 %3417, 16
  %3475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3474, i32 undef)  ; BufferLoad(srv,index,wot)
  %3476 = extractvalue %dx.types.ResRet.f32 %3475, 0
  %3477 = extractvalue %dx.types.ResRet.f32 %3475, 1
  %3478 = extractvalue %dx.types.ResRet.f32 %3475, 2
  %3479 = extractvalue %dx.types.ResRet.f32 %3475, 3
  %3480 = call float @dx.op.dot4.f32(i32 56, float %3476, float %3477, float %3478, float %3479, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3481 = or i32 %3417, 32
  %3482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3481, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.f32 %3482, 0
  %3484 = extractvalue %dx.types.ResRet.f32 %3482, 1
  %3485 = extractvalue %dx.types.ResRet.f32 %3482, 2
  %3486 = extractvalue %dx.types.ResRet.f32 %3482, 3
  %3487 = call float @dx.op.dot4.f32(i32 56, float %3483, float %3484, float %3485, float %3486, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3488 = call float @dx.op.unary.f32(i32 27, float %3473)  ; Round_ni(value)
  %3489 = call float @dx.op.unary.f32(i32 6, float %3488)  ; FAbs(value)
  %3490 = call float @dx.op.unary.f32(i32 27, float %3480)  ; Round_ni(value)
  %3491 = call float @dx.op.unary.f32(i32 6, float %3490)  ; FAbs(value)
  %3492 = call float @dx.op.unary.f32(i32 6, float %3487)  ; FAbs(value)
  %3493 = call float @dx.op.unary.f32(i32 27, float %3492)  ; Round_ni(value)
  %3494 = fadd fast float %3491, %3489
  %3495 = fadd fast float %3494, %3493
  %3496 = fcmp fast oeq float %3495, 0.000000e+00
  %3497 = call float @dx.op.dot4.f32(i32 56, float %3469, float %3470, float %3471, float %3472, float %3336, float %3337, float %3338, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3498 = call float @dx.op.dot4.f32(i32 56, float %3476, float %3477, float %3478, float %3479, float %3336, float %3337, float %3338, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3499 = call float @dx.op.dot4.f32(i32 56, float %3469, float %3470, float %3471, float %3472, float %3339, float %3340, float %3341, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3500 = call float @dx.op.dot4.f32(i32 56, float %3476, float %3477, float %3478, float %3479, float %3339, float %3340, float %3341, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3501 = fsub fast float %3497, %3473
  %3502 = fsub fast float %3499, %3473
  %3503 = fsub fast float %3498, %3480
  %3504 = fsub fast float %3500, %3480
  %3505 = call float @dx.op.dot3.f32(i32 55, float %3420, float %3421, float %3422, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3507 = extractvalue %dx.types.CBufRet.f32 %3506, 2
  %3508 = fadd fast float %3507, %3505
  %3509 = call float @dx.op.unary.f32(i32 7, float %3508)  ; Saturate(value)
  %3510 = extractvalue %dx.types.CBufRet.f32 %3506, 0
  %3511 = fcmp fast ogt float %3509, %3510
  %3512 = and i1 %3496, %3511
  br i1 %3512, label %3533, label %3513

; <label>:3513                                    ; preds = %3798, %3616, %3533, %3392
  %3514 = phi float [ %3394, %3533 ], [ %3619, %3616 ], [ %3619, %3798 ], [ %3394, %3392 ]
  %3515 = phi float [ %3395, %3533 ], [ %3395, %3616 ], [ %3773, %3798 ], [ %3395, %3392 ]
  %3516 = phi float [ %3396, %3533 ], [ %3396, %3616 ], [ %3771, %3798 ], [ %3396, %3392 ]
  %3517 = phi float [ %3397, %3533 ], [ %3397, %3616 ], [ %3743, %3798 ], [ %3397, %3392 ]
  %3518 = phi float [ %3398, %3533 ], [ %3398, %3616 ], [ %3741, %3798 ], [ %3398, %3392 ]
  %3519 = phi float [ %3399, %3533 ], [ %3399, %3616 ], [ %3808, %3798 ], [ %3399, %3392 ]
  %3520 = phi float [ %3400, %3533 ], [ %3400, %3616 ], [ %3809, %3798 ], [ %3400, %3392 ]
  %3521 = phi float [ %3401, %3533 ], [ %3401, %3616 ], [ %3810, %3798 ], [ %3401, %3392 ]
  %3522 = phi float [ %3402, %3533 ], [ %3402, %3616 ], [ %3722, %3798 ], [ %3402, %3392 ]
  %3523 = phi float [ %3403, %3533 ], [ %3403, %3616 ], [ %3723, %3798 ], [ %3403, %3392 ]
  %3524 = phi float [ %3404, %3533 ], [ %3404, %3616 ], [ %3724, %3798 ], [ %3404, %3392 ]
  %3525 = phi float [ %3405, %3533 ], [ %3405, %3616 ], [ %3751, %3798 ], [ %3405, %3392 ]
  %3526 = phi float [ %3406, %3533 ], [ %3406, %3616 ], [ %3748, %3798 ], [ %3406, %3392 ]
  %3527 = phi float [ %3407, %3533 ], [ %3407, %3616 ], [ %3745, %3798 ], [ %3407, %3392 ]
  %3528 = phi float [ %3408, %3533 ], [ %3408, %3616 ], [ %3739, %3798 ], [ %3408, %3392 ]
  %3529 = phi float [ %3409, %3533 ], [ %3409, %3616 ], [ %3734, %3798 ], [ %3409, %3392 ]
  %3530 = phi float [ %3410, %3533 ], [ %3410, %3616 ], [ %3735, %3798 ], [ %3410, %3392 ]
  %3531 = phi float [ %3411, %3533 ], [ %3411, %3616 ], [ %3736, %3798 ], [ %3411, %3392 ]
  %3532 = icmp eq i32 %3415, 0
  br i1 %3532, label %3811, label %3392

; <label>:3533                                    ; preds = %3392
  %3534 = extractvalue %dx.types.ResRet.f32 %3419, 3
  %3535 = extractvalue %dx.types.ResRet.f32 %3438, 3
  %3536 = extractvalue %dx.types.ResRet.f32 %3438, 1
  %3537 = extractvalue %dx.types.ResRet.f32 %3438, 0
  %3538 = extractvalue %dx.types.ResRet.f32 %3428, 1
  %3539 = extractvalue %dx.types.ResRet.f32 %3428, 0
  %3540 = extractvalue %dx.types.ResRet.i32 %3424, 3
  %3541 = extractvalue %dx.types.ResRet.i32 %3424, 2
  %3542 = bitcast float %3534 to i32
  %3543 = add i32 %3540, 0
  %3544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3543, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3546 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3544, %dx.types.Handle %3545, float %3473, float %3480, float undef, float undef, i32 0, i32 0, i32 undef, float %3501, float %3503, float undef, float %3502, float %3504, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3547 = extractvalue %dx.types.ResRet.f32 %3546, 0
  %3548 = fmul fast float %3547, %3539
  %3549 = fadd fast float %3548, %3538
  %3550 = call float @dx.op.unary.f32(i32 7, float %3549)  ; Saturate(value)
  %3551 = fmul fast float %3473, %3433
  %3552 = call float @dx.op.tertiary.f32(i32 46, float %3434, float %3480, float %3551)  ; FMad(a,b,c)
  %3553 = fadd fast float %3552, %3537
  %3554 = fmul fast float %3473, %3435
  %3555 = call float @dx.op.tertiary.f32(i32 46, float %3436, float %3480, float %3554)  ; FMad(a,b,c)
  %3556 = fadd fast float %3555, %3536
  %3557 = fmul fast float %3501, %3433
  %3558 = call float @dx.op.tertiary.f32(i32 46, float %3434, float %3503, float %3557)  ; FMad(a,b,c)
  %3559 = fmul fast float %3501, %3435
  %3560 = call float @dx.op.tertiary.f32(i32 46, float %3436, float %3503, float %3559)  ; FMad(a,b,c)
  %3561 = fmul fast float %3502, %3433
  %3562 = call float @dx.op.tertiary.f32(i32 46, float %3434, float %3504, float %3561)  ; FMad(a,b,c)
  %3563 = fmul fast float %3502, %3435
  %3564 = call float @dx.op.tertiary.f32(i32 46, float %3436, float %3504, float %3563)  ; FMad(a,b,c)
  %3565 = add i32 %3541, 0
  %3566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3565, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3567 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3566, %dx.types.Handle %3545, float %3553, float %3556, float undef, float undef, i32 0, i32 0, i32 undef, float %3558, float %3560, float undef, float %3562, float %3564, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3568 = extractvalue %dx.types.ResRet.f32 %3567, 0
  %3569 = and i32 %3542, 1024
  %3570 = icmp ne i32 %3569, 0
  %3571 = fcmp fast ogt float %3568, 0x3FE0101020000000
  %3572 = uitofp i1 %3571 to float
  %3573 = select i1 %3570, float %3572, float %3568
  %3574 = and i32 %3542, 8192
  %3575 = icmp ne i32 %3574, 0
  %3576 = select i1 %3575, float %3535, float 1.000000e+00
  %3577 = fmul fast float %3473, 2.000000e+00
  %3578 = fadd fast float %3577, -1.000000e+00
  %3579 = call float @dx.op.unary.f32(i32 6, float %3578)  ; FAbs(value)
  %3580 = fmul fast float %3579, %3466
  %3581 = fsub fast float %3580, %3466
  %3582 = call float @dx.op.unary.f32(i32 7, float %3581)  ; Saturate(value)
  %3583 = fmul fast float %3480, 2.000000e+00
  %3584 = fadd fast float %3583, -1.000000e+00
  %3585 = call float @dx.op.unary.f32(i32 6, float %3584)  ; FAbs(value)
  %3586 = fmul fast float %3585, %3467
  %3587 = fsub fast float %3586, %3467
  %3588 = call float @dx.op.unary.f32(i32 7, float %3587)  ; Saturate(value)
  %3589 = fmul fast float %3492, %3429
  %3590 = fsub fast float %3589, %3429
  %3591 = call float @dx.op.unary.f32(i32 7, float %3590)  ; Saturate(value)
  %3592 = fmul fast float %3550, %3576
  %3593 = fmul fast float %3592, %3547
  %3594 = fmul fast float %3593, %3582
  %3595 = fmul fast float %3594, %3573
  %3596 = fmul fast float %3595, %3588
  %3597 = fmul fast float %3596, %3591
  %3598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3599 = extractvalue %dx.types.CBufRet.f32 %3598, 1
  %3600 = extractvalue %dx.types.CBufRet.f32 %3598, 0
  %3601 = fsub fast float %3509, %3600
  %3602 = fmul fast float %3601, %3599
  %3603 = call float @dx.op.unary.f32(i32 7, float %3602)  ; Saturate(value)
  %3604 = fmul fast float %3597, %3430
  %3605 = fadd fast float %3597, %3430
  %3606 = fmul fast float %3605, %3439
  %3607 = fsub fast float %3606, %3439
  %3608 = call float @dx.op.unary.f32(i32 7, float %3607)  ; Saturate(value)
  %3609 = and i32 %3542, 128
  %3610 = icmp ne i32 %3609, 0
  %3611 = select i1 %3610, float %3608, float %3604
  %3612 = fmul fast float %3611, %3603
  %3613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3614 = extractvalue %dx.types.CBufRet.f32 %3613, 0
  %3615 = fcmp fast ugt float %3612, %3614
  br i1 %3615, label %3616, label %3513

; <label>:3616                                    ; preds = %3533
  %3617 = select i1 %3575, float %3612, float 0.000000e+00
  %3618 = fadd fast float %3617, %3394
  %3619 = call float @dx.op.unary.f32(i32 7, float %3618)  ; Saturate(value)
  br i1 %3575, label %3513, label %3620

; <label>:3620                                    ; preds = %3616
  %3621 = and i32 %3542, 4
  %3622 = and i32 %3542, 8
  %3623 = add i32 %3425, 0
  %3624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3623, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3625 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3626 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3624, %dx.types.Handle %3625, float %3553, float %3556, float undef, float undef, i32 0, i32 0, i32 undef, float %3558, float %3560, float undef, float %3562, float %3564, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3627 = extractvalue %dx.types.ResRet.f32 %3626, 0
  %3628 = extractvalue %dx.types.ResRet.f32 %3626, 1
  %3629 = extractvalue %dx.types.ResRet.f32 %3626, 2
  %3630 = extractvalue %dx.types.ResRet.f32 %3626, 3
  %3631 = bitcast float %3451 to i32
  %3632 = and i32 %3631, 255
  %3633 = uitofp i32 %3632 to float
  %3634 = lshr i32 %3631, 8
  %3635 = and i32 %3634, 255
  %3636 = uitofp i32 %3635 to float
  %3637 = fmul fast float %3630, %3633
  %3638 = fadd fast float %3637, %3636
  %3639 = fmul fast float %3638, 0x3F70101000000000
  %3640 = add i32 %3426, 0
  %3641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3640, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3642 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3641, %dx.types.Handle %3625, float %3553, float %3556, float undef, float undef, i32 0, i32 0, i32 undef, float %3558, float %3560, float undef, float %3562, float %3564, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3643 = extractvalue %dx.types.ResRet.f32 %3642, 0
  %3644 = extractvalue %dx.types.ResRet.f32 %3642, 1
  %3645 = extractvalue %dx.types.ResRet.f32 %3642, 2
  %3646 = extractvalue %dx.types.ResRet.f32 %3642, 3
  %3647 = bitcast float %3445 to i32
  %3648 = and i32 %3647, 255
  %3649 = uitofp i32 %3648 to float
  %3650 = lshr i32 %3647, 8
  %3651 = and i32 %3650, 255
  %3652 = uitofp i32 %3651 to float
  %3653 = lshr i32 %3647, 16
  %3654 = and i32 %3653, 255
  %3655 = uitofp i32 %3654 to float
  %3656 = fmul fast float %3655, 0x3F70101000000000
  %3657 = fmul fast float %3643, %3649
  %3658 = fadd fast float %3657, %3652
  %3659 = fmul fast float %3658, 0x3F70101000000000
  %3660 = fadd fast float %3644, -5.000000e-01
  %3661 = fadd fast float %3646, -5.000000e-01
  %3662 = fmul fast float %3660, %3656
  %3663 = fmul fast float %3661, %3656
  %3664 = fadd fast float %3662, 5.000000e-01
  %3665 = fadd fast float %3663, 5.000000e-01
  %3666 = fmul fast float %3627, %3454
  %3667 = fmul fast float %3628, %3455
  %3668 = fmul fast float %3629, %3456
  %3669 = fmul fast float %3664, 2.000000e+00
  %3670 = fadd fast float %3669, -1.000000e+00
  %3671 = fmul fast float %3665, 2.000000e+00
  %3672 = fadd fast float %3671, -1.000000e+00
  %3673 = fadd fast float %3670, %3672
  %3674 = fmul fast float %3673, 5.000000e-01
  %3675 = fsub fast float %3670, %3672
  %3676 = fmul fast float %3675, 5.000000e-01
  %3677 = call float @dx.op.unary.f32(i32 6, float %3674)  ; FAbs(value)
  %3678 = fsub fast float 1.000000e+00, %3677
  %3679 = call float @dx.op.unary.f32(i32 6, float %3676)  ; FAbs(value)
  %3680 = fsub fast float %3678, %3679
  %3681 = call float @dx.op.dot3.f32(i32 55, float %3674, float %3676, float %3680, float %3674, float %3676, float %3680)  ; Dot3(ax,ay,az,bx,by,bz)
  %3682 = call float @dx.op.unary.f32(i32 25, float %3681)  ; Rsqrt(value)
  %3683 = fmul fast float %3674, %3682
  %3684 = fmul fast float %3676, %3682
  %3685 = fmul fast float %3682, %3680
  %3686 = fmul fast float %3685, %3420
  %3687 = fmul fast float %3685, %3421
  %3688 = fmul fast float %3685, %3422
  %3689 = fmul fast float %3683, %3442
  %3690 = fmul fast float %3683, %3443
  %3691 = fmul fast float %3683, %3444
  %3692 = fadd fast float %3689, %3686
  %3693 = fadd fast float %3690, %3687
  %3694 = fadd fast float %3691, %3688
  %3695 = fmul fast float %3684, %3448
  %3696 = fmul fast float %3684, %3449
  %3697 = fmul fast float %3684, %3450
  %3698 = fadd fast float %3692, %3695
  %3699 = fadd fast float %3693, %3696
  %3700 = fadd fast float %3694, %3697
  %3701 = call float @dx.op.dot3.f32(i32 55, float %3698, float %3699, float %3700, float %3698, float %3699, float %3700)  ; Dot3(ax,ay,az,bx,by,bz)
  %3702 = call float @dx.op.unary.f32(i32 25, float %3701)  ; Rsqrt(value)
  %3703 = fmul fast float %3698, %3702
  %3704 = fmul fast float %3699, %3702
  %3705 = fmul fast float %3700, %3702
  %3706 = icmp ne i32 %3622, 0
  %3707 = select i1 %3706, float 1.000000e+00, float 0.000000e+00
  %3708 = fmul fast float %3612, %3707
  %3709 = and i32 %3542, 1
  %3710 = icmp eq i32 %3709, 0
  br i1 %3710, label %3711, label %3715

; <label>:3711                                    ; preds = %3620
  %3712 = fsub fast float %3703, %3402
  %3713 = fsub fast float %3704, %3403
  %3714 = fsub fast float %3705, %3404
  br label %3715

; <label>:3715                                    ; preds = %3711, %3620
  %3716 = phi float [ %3712, %3711 ], [ %3703, %3620 ]
  %3717 = phi float [ %3713, %3711 ], [ %3704, %3620 ]
  %3718 = phi float [ %3714, %3711 ], [ %3705, %3620 ]
  %3719 = fmul float %3718, %3708
  %3720 = fmul float %3717, %3708
  %3721 = fmul float %3716, %3708
  %3722 = fadd fast float %3721, %3402
  %3723 = fadd fast float %3720, %3403
  %3724 = fadd fast float %3719, %3404
  %3725 = icmp ne i32 %3621, 0
  %3726 = select i1 %3725, float 1.000000e+00, float 0.000000e+00
  %3727 = fmul fast float %3612, %3726
  %3728 = fsub fast float %3666, %3409
  %3729 = fsub fast float %3667, %3410
  %3730 = fsub fast float %3668, %3411
  %3731 = fmul fast float %3728, %3727
  %3732 = fmul fast float %3729, %3727
  %3733 = fmul fast float %3730, %3727
  %3734 = fadd fast float %3731, %3409
  %3735 = fadd fast float %3732, %3410
  %3736 = fadd fast float %3733, %3411
  %3737 = fsub fast float %3639, %3408
  %3738 = fmul fast float %3737, %3727
  %3739 = fadd fast float %3738, %3408
  %3740 = fmul fast float %3727, %3398
  %3741 = fsub fast float %3398, %3740
  %3742 = fmul fast float %3727, %3397
  %3743 = fsub fast float %3397, %3742
  %3744 = fadd fast float %3612, %3407
  %3745 = call float @dx.op.unary.f32(i32 7, float %3744)  ; Saturate(value)
  %3746 = fsub fast float %3659, %3406
  %3747 = fmul fast float %3746, %3708
  %3748 = fadd fast float %3747, %3406
  %3749 = fsub fast float %3645, %3405
  %3750 = fmul fast float %3749, %3708
  %3751 = fadd fast float %3750, %3405
  %3752 = call float @dx.op.dot3.f32(i32 55, float %3666, float %3667, float %3668, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3754 = extractvalue %dx.types.CBufRet.f32 %3753, 0
  %3755 = extractvalue %dx.types.CBufRet.f32 %3753, 1
  %3756 = fmul fast float %3755, %3752
  %3757 = fadd fast float %3756, %3754
  %3758 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3759 = bitcast float %3457 to i32
  %3760 = and i32 %3759, 65535
  %3761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3760)  ; LegacyF16ToF32(value)
  %3762 = lshr i32 %3759, 16
  %3763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3762)  ; LegacyF16ToF32(value)
  %3764 = fcmp fast oge float %3761, 0.000000e+00
  %3765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3766 = extractvalue %dx.types.CBufRet.f32 %3765, 0
  %3767 = select i1 %3764, float %3761, float %3766
  %3768 = fadd fast float %3767, %3763
  %3769 = fsub fast float %3758, %3396
  %3770 = fmul fast float %3769, %3612
  %3771 = fadd fast float %3770, %3396
  %3772 = fmul fast float %3768, %3612
  %3773 = call float @dx.op.binary.f32(i32 35, float %3395, float %3772)  ; FMax(a,b)
  %3774 = and i32 %3542, 16
  %3775 = icmp eq i32 %3774, 0
  br i1 %3775, label %3798, label %3776

; <label>:3776                                    ; preds = %3715
  %3777 = bitcast float %3463 to i32
  %3778 = add i32 %3460, 0
  %3779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3778, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3780 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3779, %dx.types.Handle %3625, float %3553, float %3556, float undef, float undef, i32 0, i32 0, i32 undef, float %3558, float %3560, float undef, float %3562, float %3564, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3781 = extractvalue %dx.types.ResRet.f32 %3780, 0
  %3782 = extractvalue %dx.types.ResRet.f32 %3780, 1
  %3783 = extractvalue %dx.types.ResRet.f32 %3780, 2
  %3784 = and i32 %3777, 65535
  %3785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3784)  ; LegacyF16ToF32(value)
  %3786 = fmul fast float %3781, %3454
  %3787 = fmul fast float %3782, %3455
  %3788 = fmul fast float %3783, %3456
  %3789 = and i32 %3542, 16384
  %3790 = icmp ne i32 %3789, 0
  %3791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3792 = extractvalue %dx.types.CBufRet.f32 %3791, 0
  %3793 = select i1 %3790, float %3792, float 1.000000e+00
  %3794 = fmul fast float %3793, %3785
  %3795 = fmul fast float %3786, %3794
  %3796 = fmul fast float %3787, %3794
  %3797 = fmul fast float %3788, %3794
  br label %3798

; <label>:3798                                    ; preds = %3776, %3715
  %3799 = phi float [ %3795, %3776 ], [ 0.000000e+00, %3715 ]
  %3800 = phi float [ %3796, %3776 ], [ 0.000000e+00, %3715 ]
  %3801 = phi float [ %3797, %3776 ], [ 0.000000e+00, %3715 ]
  %3802 = fsub fast float %3799, %3399
  %3803 = fsub fast float %3800, %3400
  %3804 = fsub fast float %3801, %3401
  %3805 = fmul fast float %3802, %3612
  %3806 = fmul fast float %3803, %3612
  %3807 = fmul fast float %3804, %3612
  %3808 = fadd fast float %3805, %3399
  %3809 = fadd fast float %3806, %3400
  %3810 = fadd fast float %3807, %3401
  br label %3513

; <label>:3811                                    ; preds = %3513
  br label %3812

; <label>:3812                                    ; preds = %3811, %3329
  %3813 = phi float [ 0.000000e+00, %3329 ], [ %3514, %3811 ]
  %3814 = phi float [ %3299, %3329 ], [ %3515, %3811 ]
  %3815 = phi float [ %3297, %3329 ], [ %3516, %3811 ]
  %3816 = phi float [ 0.000000e+00, %3329 ], [ %3517, %3811 ]
  %3817 = phi float [ 0.000000e+00, %3329 ], [ %3518, %3811 ]
  %3818 = phi float [ %3291, %3329 ], [ %3519, %3811 ]
  %3819 = phi float [ %3292, %3329 ], [ %3520, %3811 ]
  %3820 = phi float [ %3293, %3329 ], [ %3521, %3811 ]
  %3821 = phi float [ %3325, %3329 ], [ %3522, %3811 ]
  %3822 = phi float [ %3326, %3329 ], [ %3523, %3811 ]
  %3823 = phi float [ %3327, %3329 ], [ %3524, %3811 ]
  %3824 = phi float [ %3296, %3329 ], [ %3525, %3811 ]
  %3825 = phi float [ %3295, %3329 ], [ %3526, %3811 ]
  %3826 = phi float [ 0.000000e+00, %3329 ], [ %3527, %3811 ]
  %3827 = phi float [ %3294, %3329 ], [ %3528, %3811 ]
  %3828 = phi float [ %3288, %3329 ], [ %3529, %3811 ]
  %3829 = phi float [ %3289, %3329 ], [ %3530, %3811 ]
  %3830 = phi float [ %3290, %3329 ], [ %3531, %3811 ]
  %3831 = call float @dx.op.dot3.f32(i32 55, float %3821, float %3822, float %3823, float %3821, float %3822, float %3823)  ; Dot3(ax,ay,az,bx,by,bz)
  %3832 = call float @dx.op.unary.f32(i32 25, float %3831)  ; Rsqrt(value)
  %3833 = fmul fast float %3832, %3821
  %3834 = fmul fast float %3832, %3822
  %3835 = fmul fast float %3832, %3823
  %3836 = fadd fast float %3826, %1077
  %3837 = call float @dx.op.unary.f32(i32 7, float %3836)  ; Saturate(value)
  %3838 = call float @dx.op.dot3.f32(i32 55, float %3833, float %3834, float %3835, float %3833, float %3834, float %3835)  ; Dot3(ax,ay,az,bx,by,bz)
  %3839 = call float @dx.op.unary.f32(i32 25, float %3838)  ; Rsqrt(value)
  %3840 = fmul fast float %3839, %3833
  %3841 = fmul fast float %3839, %3834
  %3842 = fmul fast float %3839, %3835
  br label %3843

; <label>:3843                                    ; preds = %3812, %3285
  %3844 = phi float [ %3828, %3812 ], [ %3288, %3285 ]
  %3845 = phi float [ %3829, %3812 ], [ %3289, %3285 ]
  %3846 = phi float [ %3830, %3812 ], [ %3290, %3285 ]
  %3847 = phi float [ %3840, %3812 ], [ %3325, %3285 ]
  %3848 = phi float [ %3841, %3812 ], [ %3326, %3285 ]
  %3849 = phi float [ %3842, %3812 ], [ %3327, %3285 ]
  %3850 = phi float [ %3818, %3812 ], [ %3291, %3285 ]
  %3851 = phi float [ %3819, %3812 ], [ %3292, %3285 ]
  %3852 = phi float [ %3820, %3812 ], [ %3293, %3285 ]
  %3853 = phi float [ %3827, %3812 ], [ %3294, %3285 ]
  %3854 = phi float [ %3837, %3812 ], [ %1077, %3285 ]
  %3855 = phi float [ %3825, %3812 ], [ %3295, %3285 ]
  %3856 = phi float [ %3824, %3812 ], [ %3296, %3285 ]
  %3857 = phi float [ %3817, %3812 ], [ 0.000000e+00, %3285 ]
  %3858 = phi float [ %3816, %3812 ], [ 0.000000e+00, %3285 ]
  %3859 = phi float [ %3813, %3812 ], [ 0.000000e+00, %3285 ]
  %3860 = phi float [ %3814, %3812 ], [ %3299, %3285 ]
  %3861 = phi float [ %3815, %3812 ], [ %3297, %3285 ]
  %3862 = add i32 %54, 392
  %3863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3862, i32 undef)  ; BufferLoad(srv,index,wot)
  %3864 = extractvalue %dx.types.ResRet.i32 %3863, 0
  %3865 = extractvalue %dx.types.ResRet.i32 %3863, 1
  %3866 = extractvalue %dx.types.ResRet.i32 %3863, 2
  %3867 = extractvalue %dx.types.ResRet.i32 %3863, 3
  %3868 = bitcast i32 %3864 to float
  %3869 = bitcast i32 %3865 to float
  %3870 = bitcast i32 %3866 to float
  %3871 = bitcast i32 %3867 to float
  %3872 = fsub fast float %3844, %3868
  %3873 = fsub fast float %3845, %3869
  %3874 = fsub fast float %3846, %3870
  %3875 = fmul fast float %3872, %225
  %3876 = fmul fast float %3873, %225
  %3877 = fmul fast float %3874, %225
  %3878 = fadd fast float %3875, %3868
  %3879 = fadd fast float %3876, %3869
  %3880 = fadd fast float %3877, %3870
  %3881 = fsub fast float %3854, %3871
  %3882 = fmul fast float %3881, %225
  %3883 = fadd fast float %3882, %3871
  %3884 = fadd fast float %3853, 0xBFB99999A0000000
  %3885 = call float @dx.op.unary.f32(i32 7, float %3884)  ; Saturate(value)
  %3886 = fmul fast float %3885, 0x3FF1C71C80000000
  %3887 = call float @dx.op.binary.f32(i32 36, float %3853, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3888 = fsub fast float 1.000000e+00, %3886
  %3889 = call float @dx.op.unary.f32(i32 7, float %3888)  ; Saturate(value)
  %3890 = fmul fast float %3878, %3889
  %3891 = fmul fast float %3879, %3889
  %3892 = fmul fast float %3880, %3889
  %3893 = call float @dx.op.unary.f32(i32 7, float %3890)  ; Saturate(value)
  %3894 = call float @dx.op.unary.f32(i32 7, float %3891)  ; Saturate(value)
  %3895 = call float @dx.op.unary.f32(i32 7, float %3892)  ; Saturate(value)
  %3896 = fmul fast float %3878, %3886
  %3897 = fmul fast float %3879, %3886
  %3898 = fmul fast float %3880, %3886
  %3899 = fadd fast float %3896, %3887
  %3900 = fadd fast float %3897, %3887
  %3901 = fadd fast float %3898, %3887
  %3902 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3903 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3904 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3905 = call float @dx.op.unary.f32(i32 7, float %3855)  ; Saturate(value)
  %3906 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3907 = extractvalue %dx.types.CBufRet.i32 %3906, 3
  %3908 = and i32 %3907, 8
  %3909 = icmp ne i32 %3908, 0
  %3910 = call float @dx.op.binary.f32(i32 35, float %3893, float %3878)  ; FMax(a,b)
  %3911 = call float @dx.op.binary.f32(i32 35, float %3894, float %3878)  ; FMax(a,b)
  %3912 = call float @dx.op.binary.f32(i32 35, float %3895, float %3878)  ; FMax(a,b)
  %3913 = call float @dx.op.dot3.f32(i32 55, float %3893, float %3894, float %3895, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3914 = select i1 %282, float %3878, float %3893
  %3915 = select i1 %282, float %3913, float %3894
  %3916 = select i1 %282, float 1.000000e+00, float %3895
  %3917 = select i1 %3909, float %3910, float %3914
  %3918 = select i1 %3909, float %3911, float %3915
  %3919 = select i1 %3909, float %3912, float %3916
  %3920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3921 = extractvalue %dx.types.CBufRet.f32 %3920, 0
  %3922 = extractvalue %dx.types.CBufRet.f32 %3920, 1
  %3923 = extractvalue %dx.types.CBufRet.f32 %3920, 2
  %3924 = fadd fast float %3921, %191
  %3925 = fadd fast float %3922, %192
  %3926 = fadd fast float %3923, %193
  %3927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3928 = extractvalue %dx.types.CBufRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.CBufRet.f32 %3927, 1
  %3930 = fsub fast float %3924, %3928
  %3931 = fsub fast float %3925, %3929
  %3932 = fmul fast float %3930, %3930
  %3933 = fmul fast float %3931, %3931
  %3934 = fadd fast float %3932, %3933
  %3935 = call float @dx.op.unary.f32(i32 24, float %3934)  ; Sqrt(value)
  %3936 = extractvalue %dx.types.CBufRet.f32 %3927, 2
  %3937 = fcmp fast olt float %3935, %3936
  br i1 %3937, label %3938, label %4005

; <label>:3938                                    ; preds = %3843
  %3939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3940 = extractvalue %dx.types.CBufRet.f32 %3939, 0
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 0
  %3943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3944 = extractvalue %dx.types.CBufRet.f32 %3943, 0
  %3945 = extractvalue %dx.types.CBufRet.f32 %3939, 1
  %3946 = extractvalue %dx.types.CBufRet.f32 %3941, 1
  %3947 = extractvalue %dx.types.CBufRet.f32 %3943, 1
  %3948 = extractvalue %dx.types.CBufRet.f32 %3939, 3
  %3949 = extractvalue %dx.types.CBufRet.f32 %3941, 3
  %3950 = extractvalue %dx.types.CBufRet.f32 %3943, 3
  %3951 = fadd fast float %3948, %3924
  %3952 = fadd fast float %3949, %3925
  %3953 = fadd fast float %3950, %3926
  %3954 = fmul fast float %3951, %3940
  %3955 = call float @dx.op.tertiary.f32(i32 46, float %3952, float %3942, float %3954)  ; FMad(a,b,c)
  %3956 = call float @dx.op.tertiary.f32(i32 46, float %3953, float %3944, float %3955)  ; FMad(a,b,c)
  %3957 = fmul fast float %3951, %3945
  %3958 = call float @dx.op.tertiary.f32(i32 46, float %3952, float %3946, float %3957)  ; FMad(a,b,c)
  %3959 = call float @dx.op.tertiary.f32(i32 46, float %3953, float %3947, float %3958)  ; FMad(a,b,c)
  %3960 = fsub fast float %3956, %3948
  %3961 = fsub fast float %3959, %3949
  %3962 = fsub fast float %3960, %3928
  %3963 = fadd fast float %3962, %3936
  %3964 = fsub fast float %3961, %3929
  %3965 = fadd fast float %3964, %3936
  %3966 = extractvalue %dx.types.CBufRet.f32 %3927, 3
  %3967 = fmul fast float %3963, %3966
  %3968 = fmul fast float %3965, %3966
  %3969 = call float @dx.op.unary.f32(i32 7, float %3967)  ; Saturate(value)
  %3970 = call float @dx.op.unary.f32(i32 7, float %3968)  ; Saturate(value)
  %3971 = fsub fast float 1.000000e+00, %3969
  %3972 = fsub fast float 1.000000e+00, %3970
  %3973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %3971, float %3972, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3974 = extractvalue %dx.types.ResRet.f32 %3973, 0
  %3975 = fcmp fast ugt float %3974, 0.000000e+00
  br i1 %3975, label %3976, label %4279

; <label>:3976                                    ; preds = %3938
  %3977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3977, 2
  %3979 = fmul fast float %3978, %3974
  %3980 = extractvalue %dx.types.CBufRet.f32 %3977, 3
  %3981 = fadd fast float %3980, %3979
  %3982 = extractvalue %dx.types.CBufRet.f32 %3943, 2
  %3983 = fadd fast float %3981, %3950
  %3984 = fmul fast float %3956, %3944
  %3985 = call float @dx.op.tertiary.f32(i32 46, float %3959, float %3947, float %3984)  ; FMad(a,b,c)
  %3986 = call float @dx.op.tertiary.f32(i32 46, float %3983, float %3982, float %3985)  ; FMad(a,b,c)
  %3987 = fsub fast float %3986, %3950
  %3988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3989 = extractvalue %dx.types.CBufRet.f32 %3988, 2
  %3990 = fsub fast float %3987, %3989
  %3991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %3971, float %3972, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3992 = extractvalue %dx.types.ResRet.f32 %3991, 0
  %3993 = extractvalue %dx.types.ResRet.f32 %3991, 1
  %3994 = extractvalue %dx.types.ResRet.f32 %3991, 2
  %3995 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %3971, float %3972, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3996 = extractvalue %dx.types.ResRet.f32 %3995, 0
  %3997 = extractvalue %dx.types.ResRet.f32 %3995, 1
  %3998 = extractvalue %dx.types.ResRet.f32 %3995, 2
  %3999 = fadd fast float %3996, %3992
  %4000 = fmul fast float %3999, 0x3F847AE140000000
  %4001 = fadd fast float %3997, %3993
  %4002 = fmul fast float %4001, 0x3F847AE140000000
  %4003 = fadd fast float %3998, %3994
  %4004 = fmul fast float %4003, 0x3F847AE140000000
  br label %4279

; <label>:4005                                    ; preds = %3843
  %4006 = and i32 %261, 1
  %4007 = icmp eq i32 %4006, 0
  br i1 %4007, label %4279, label %4008

; <label>:4008                                    ; preds = %4005
  %4009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4010 = extractvalue %dx.types.CBufRet.f32 %4009, 0
  %4011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4012 = extractvalue %dx.types.CBufRet.f32 %4011, 0
  %4013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4014 = extractvalue %dx.types.CBufRet.f32 %4013, 0
  %4015 = extractvalue %dx.types.CBufRet.f32 %4009, 1
  %4016 = extractvalue %dx.types.CBufRet.f32 %4011, 1
  %4017 = extractvalue %dx.types.CBufRet.f32 %4013, 1
  %4018 = extractvalue %dx.types.CBufRet.f32 %4009, 3
  %4019 = extractvalue %dx.types.CBufRet.f32 %4011, 3
  %4020 = extractvalue %dx.types.CBufRet.f32 %4013, 3
  %4021 = fadd fast float %4018, %3924
  %4022 = fadd fast float %4019, %3925
  %4023 = fadd fast float %4020, %3926
  %4024 = fmul fast float %4021, %4010
  %4025 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %4012, float %4024)  ; FMad(a,b,c)
  %4026 = call float @dx.op.tertiary.f32(i32 46, float %4023, float %4014, float %4025)  ; FMad(a,b,c)
  %4027 = fmul fast float %4021, %4015
  %4028 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %4016, float %4027)  ; FMad(a,b,c)
  %4029 = call float @dx.op.tertiary.f32(i32 46, float %4023, float %4017, float %4028)  ; FMad(a,b,c)
  %4030 = fsub fast float %4026, %4018
  %4031 = fsub fast float %4029, %4019
  %4032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4033 = extractvalue %dx.types.CBufRet.f32 %4032, 0
  %4034 = extractvalue %dx.types.CBufRet.f32 %4032, 1
  %4035 = extractvalue %dx.types.CBufRet.f32 %4032, 2
  %4036 = extractvalue %dx.types.CBufRet.f32 %4032, 3
  %4037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4038 = extractvalue %dx.types.CBufRet.f32 %4037, 3
  %4039 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4040 = extractvalue %dx.types.CBufRet.i32 %4039, 0
  %4041 = extractvalue %dx.types.CBufRet.i32 %4039, 1
  %4042 = udiv i32 %4041, %4040
  %4043 = fsub fast float %4030, %4033
  %4044 = fsub fast float %4031, %4034
  %4045 = call float @dx.op.binary.f32(i32 35, float %4043, float 0.000000e+00)  ; FMax(a,b)
  %4046 = call float @dx.op.binary.f32(i32 35, float %4044, float 0.000000e+00)  ; FMax(a,b)
  %4047 = call float @dx.op.binary.f32(i32 36, float %4045, float %4035)  ; FMin(a,b)
  %4048 = call float @dx.op.binary.f32(i32 36, float %4046, float %4036)  ; FMin(a,b)
  %4049 = add i32 %4040, -1
  %4050 = add i32 %4042, -1
  %4051 = fmul fast float %4047, %4038
  %4052 = fmul fast float %4048, %4038
  %4053 = fptoui float %4051 to i32
  %4054 = fptoui float %4052 to i32
  %4055 = call i32 @dx.op.binary.i32(i32 40, i32 %4053, i32 %4049)  ; UMin(a,b)
  %4056 = call i32 @dx.op.binary.i32(i32 40, i32 %4054, i32 %4050)  ; UMin(a,b)
  %4057 = mul i32 %4056, %4040
  %4058 = add i32 %4057, %4055
  %4059 = shl i32 %4058, 2
  %4060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4059, i32 undef)  ; BufferLoad(srv,index,wot)
  %4061 = extractvalue %dx.types.ResRet.i32 %4060, 0
  %4062 = icmp eq i32 %4061, -1
  br i1 %4062, label %4279, label %4063

; <label>:4063                                    ; preds = %4008
  %4064 = mul i32 %4061, 148
  %4065 = add i32 %4064, 4
  %4066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4065, i32 undef)  ; BufferLoad(srv,index,wot)
  %4067 = extractvalue %dx.types.ResRet.f32 %4066, 0
  %4068 = add i32 %4064, 8
  %4069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4068, i32 undef)  ; BufferLoad(srv,index,wot)
  %4070 = extractvalue %dx.types.ResRet.f32 %4069, 0
  %4071 = add i32 %4064, 36
  %4072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4071, i32 undef)  ; BufferLoad(srv,index,wot)
  %4073 = extractvalue %dx.types.ResRet.f32 %4072, 0
  %4074 = add i32 %4064, 60
  %4075 = add i32 %4064, 92
  %4076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4075, i32 undef)  ; BufferLoad(srv,index,wot)
  %4077 = extractvalue %dx.types.ResRet.i32 %4076, 0
  %4078 = add i32 %4064, 116
  %4079 = fsub fast float %4030, %4067
  %4080 = fsub fast float %4031, %4070
  %4081 = fmul fast float %4038, %4079
  %4082 = fmul fast float %4038, %4080
  %4083 = call float @dx.op.unary.f32(i32 7, float %4081)  ; Saturate(value)
  %4084 = call float @dx.op.unary.f32(i32 7, float %4082)  ; Saturate(value)
  %4085 = fsub fast float 1.000000e+00, %4084
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 2
  %4088 = call float @dx.op.unary.f32(i32 83, float %4083)  ; DerivCoarseX(value)
  %4089 = call float @dx.op.unary.f32(i32 83, float %4085)  ; DerivCoarseX(value)
  %4090 = call float @dx.op.unary.f32(i32 84, float %4083)  ; DerivCoarseY(value)
  %4091 = call float @dx.op.unary.f32(i32 84, float %4085)  ; DerivCoarseY(value)
  %4092 = fmul fast float %4088, %4087
  %4093 = fmul fast float %4089, %4087
  %4094 = fmul fast float %4090, %4087
  %4095 = fmul fast float %4091, %4087
  %4096 = call float @dx.op.dot2.f32(i32 54, float %4094, float %4095, float %4094, float %4095)  ; Dot2(ax,ay,bx,by)
  %4097 = call float @dx.op.dot2.f32(i32 54, float %4092, float %4093, float %4092, float %4093)  ; Dot2(ax,ay,bx,by)
  %4098 = call float @dx.op.binary.f32(i32 35, float %4097, float %4096)  ; FMax(a,b)
  %4099 = call float @dx.op.unary.f32(i32 23, float %4098)  ; Log(value)
  %4100 = fmul fast float %4099, 5.000000e-01
  %4101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4102 = extractvalue %dx.types.CBufRet.f32 %4101, 1
  %4103 = fadd fast float %4102, %4100
  %4104 = call float @dx.op.binary.f32(i32 35, float %4103, float 0.000000e+00)  ; FMax(a,b)
  %4105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4106 = extractvalue %dx.types.CBufRet.f32 %4105, 3
  %4107 = fadd fast float %4106, %4104
  %4108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4109 = extractvalue %dx.types.CBufRet.f32 %4108, 3
  %4110 = fadd fast float %4107, %4109
  %4111 = add i32 %4077, 0
  %4112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4111, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4113 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4112, i32 0)  ; GetDimensions(handle,mipLevel)
  %4114 = extractvalue %dx.types.Dimensions %4113, 0
  %4115 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4114)  ; FirstbitLo(value)
  %4116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4117 = extractvalue %dx.types.CBufRet.i32 %4116, 1
  %4118 = sub nsw i32 %4117, %4115
  %4119 = sitofp i32 %4118 to float
  %4120 = fsub fast float %4110, %4119
  %4121 = call float @dx.op.binary.f32(i32 35, float %4120, float 0.000000e+00)  ; FMax(a,b)
  %4122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4112, %dx.types.Handle %46, float %4083, float %4085, float %4073, float undef, i32 0, i32 0, i32 undef, float %4121)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4123 = extractvalue %dx.types.ResRet.f32 %4122, 0
  %4124 = fcmp ule float %4123, 0x3FE0101020000000
  %4125 = extractvalue %dx.types.CBufRet.i32 %4116, 0
  %4126 = and i32 %4125, 128
  %4127 = icmp ne i32 %4126, 0
  %4128 = and i1 %4124, %4127
  br i1 %4128, label %4279, label %4129

; <label>:4129                                    ; preds = %4063
  %4130 = add i32 %4064, 20
  %4131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4130, i32 undef)  ; BufferLoad(srv,index,wot)
  %4132 = extractvalue %dx.types.ResRet.f32 %4131, 0
  %4133 = add i32 %4064, 24
  %4134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4133, i32 undef)  ; BufferLoad(srv,index,wot)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4136 = add i32 %4064, 40
  %4137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4136, i32 undef)  ; BufferLoad(srv,index,wot)
  %4138 = extractvalue %dx.types.ResRet.f32 %4137, 0
  %4139 = add i32 %4064, 96
  %4140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4139, i32 undef)  ; BufferLoad(srv,index,wot)
  %4141 = extractvalue %dx.types.ResRet.i32 %4140, 0
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 2
  %4144 = fmul fast float %4143, %4083
  %4145 = fmul fast float %4143, %4085
  %4146 = extractvalue %dx.types.CBufRet.f32 %4142, 3
  %4147 = fadd fast float %4144, %4146
  %4148 = fadd fast float %4145, %4146
  %4149 = add i32 %4141, 0
  %4150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4149, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4151 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4150, i32 0)  ; GetDimensions(handle,mipLevel)
  %4152 = extractvalue %dx.types.Dimensions %4151, 0
  %4153 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4152)  ; FirstbitLo(value)
  %4154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.i32 %4154, 1
  %4156 = sub nsw i32 %4155, %4153
  %4157 = sitofp i32 %4156 to float
  %4158 = fsub fast float %4107, %4157
  %4159 = call float @dx.op.binary.f32(i32 35, float %4158, float 0.000000e+00)  ; FMax(a,b)
  %4160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4150, %dx.types.Handle %46, float %4147, float %4148, float %4138, float undef, i32 0, i32 0, i32 undef, float %4159)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = fmul fast float %4161, %4132
  %4163 = fadd fast float %4162, %4135
  %4164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.f32 %4164, 0
  %4166 = extractvalue %dx.types.CBufRet.f32 %4164, 1
  %4167 = extractvalue %dx.types.CBufRet.f32 %4164, 2
  %4168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.f32 %4168, 3
  %4170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.f32 %4170, 3
  %4172 = extractvalue %dx.types.CBufRet.f32 %4164, 3
  %4173 = fadd fast float %4169, %4030
  %4174 = fadd fast float %4171, %4031
  %4175 = fadd fast float %4163, %4172
  %4176 = fmul fast float %4173, %4165
  %4177 = call float @dx.op.tertiary.f32(i32 46, float %4174, float %4166, float %4176)  ; FMad(a,b,c)
  %4178 = call float @dx.op.tertiary.f32(i32 46, float %4175, float %4167, float %4177)  ; FMad(a,b,c)
  %4179 = fsub fast float %4178, %4172
  %4180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4181 = extractvalue %dx.types.CBufRet.f32 %4180, 2
  %4182 = fsub fast float %4179, %4181
  %4183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.i32 %4183, 0
  %4185 = call i32 @dx.op.binary.i32(i32 40, i32 %4061, i32 %4184)  ; UMin(a,b)
  %4186 = mul i32 %4185, 36
  %4187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4186, i32 undef)  ; BufferLoad(srv,index,wot)
  %4188 = extractvalue %dx.types.ResRet.i32 %4187, 0
  %4189 = add i32 %4186, 4
  %4190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.f32 %4190, 0
  %4192 = fmul fast float %4191, %4083
  %4193 = fmul fast float %4191, %4085
  %4194 = extractvalue %dx.types.CBufRet.f32 %4190, 1
  %4195 = fadd fast float %4192, %4194
  %4196 = fadd fast float %4193, %4194
  %4197 = icmp eq i32 %4188, 0
  br i1 %4197, label %4266, label %4198

; <label>:4198                                    ; preds = %4129
  br label %4199

; <label>:4199                                    ; preds = %4256, %4198
  %4200 = phi float [ %4257, %4256 ], [ 0.000000e+00, %4198 ]
  %4201 = phi float [ %4258, %4256 ], [ 0.000000e+00, %4198 ]
  %4202 = phi float [ %4259, %4256 ], [ 0.000000e+00, %4198 ]
  %4203 = phi float [ %4260, %4256 ], [ 0.000000e+00, %4198 ]
  %4204 = phi float [ %4261, %4256 ], [ 0.000000e+00, %4198 ]
  %4205 = phi float [ %4262, %4256 ], [ 0.000000e+00, %4198 ]
  %4206 = phi i32 [ %4263, %4256 ], [ 0, %4198 ]
  %4207 = shl i32 %4206, 2
  %4208 = add i32 %4074, %4207
  %4209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4208, i32 undef)  ; BufferLoad(srv,index,wot)
  %4210 = extractvalue %dx.types.ResRet.f32 %4209, 0
  %4211 = add i32 %4078, %4207
  %4212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4211, i32 undef)  ; BufferLoad(srv,index,wot)
  %4213 = extractvalue %dx.types.ResRet.i32 %4212, 0
  %4214 = add i32 %4213, 0
  %4215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4214, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4216 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4215, i32 0)  ; GetDimensions(handle,mipLevel)
  %4217 = extractvalue %dx.types.Dimensions %4216, 0
  %4218 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4217)  ; FirstbitLo(value)
  %4219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.i32 %4219, 1
  %4221 = sub nsw i32 %4220, %4218
  %4222 = sitofp i32 %4221 to float
  %4223 = fsub fast float %4107, %4222
  %4224 = call float @dx.op.binary.f32(i32 35, float %4223, float 0.000000e+00)  ; FMax(a,b)
  %4225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4215, %dx.types.Handle %46, float %4195, float %4196, float %4210, float undef, i32 0, i32 0, i32 undef, float %4224)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4226 = extractvalue %dx.types.ResRet.f32 %4225, 0
  %4227 = fcmp fast ogt float %4226, 0.000000e+00
  br i1 %4227, label %4228, label %4256

; <label>:4228                                    ; preds = %4199
  %4229 = add i32 %4189, %4207
  %4230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4229, i32 undef)  ; BufferLoad(srv,index,wot)
  %4231 = extractvalue %dx.types.ResRet.i32 %4230, 0
  %4232 = and i32 %4231, 32767
  %4233 = mul nuw nsw i32 %4232, 928
  %4234 = add nuw nsw i32 %4233, 48
  %4235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4234, i32 undef)  ; BufferLoad(srv,index,wot)
  %4236 = extractvalue %dx.types.ResRet.f32 %4235, 0
  %4237 = extractvalue %dx.types.ResRet.f32 %4235, 1
  %4238 = extractvalue %dx.types.ResRet.f32 %4235, 2
  %4239 = add nuw nsw i32 %4233, 60
  %4240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4239, i32 undef)  ; BufferLoad(srv,index,wot)
  %4241 = extractvalue %dx.types.ResRet.f32 %4240, 0
  %4242 = extractvalue %dx.types.ResRet.f32 %4240, 1
  %4243 = extractvalue %dx.types.ResRet.f32 %4240, 2
  %4244 = fmul fast float %4236, %4226
  %4245 = fmul fast float %4237, %4226
  %4246 = fmul fast float %4238, %4226
  %4247 = fadd fast float %4244, %4200
  %4248 = fadd fast float %4245, %4201
  %4249 = fadd fast float %4246, %4202
  %4250 = fmul fast float %4241, %4226
  %4251 = fmul fast float %4242, %4226
  %4252 = fmul fast float %4243, %4226
  %4253 = fadd fast float %4250, %4203
  %4254 = fadd fast float %4251, %4204
  %4255 = fadd fast float %4252, %4205
  br label %4256

; <label>:4256                                    ; preds = %4228, %4199
  %4257 = phi float [ %4247, %4228 ], [ %4200, %4199 ]
  %4258 = phi float [ %4248, %4228 ], [ %4201, %4199 ]
  %4259 = phi float [ %4249, %4228 ], [ %4202, %4199 ]
  %4260 = phi float [ %4253, %4228 ], [ %4203, %4199 ]
  %4261 = phi float [ %4254, %4228 ], [ %4204, %4199 ]
  %4262 = phi float [ %4255, %4228 ], [ %4205, %4199 ]
  %4263 = add nuw i32 %4206, 1
  %4264 = icmp eq i32 %4263, %4188
  br i1 %4264, label %4265, label %4199

; <label>:4265                                    ; preds = %4256
  br label %4266

; <label>:4266                                    ; preds = %4265, %4129
  %4267 = phi float [ 0.000000e+00, %4129 ], [ %4257, %4265 ]
  %4268 = phi float [ 0.000000e+00, %4129 ], [ %4258, %4265 ]
  %4269 = phi float [ 0.000000e+00, %4129 ], [ %4259, %4265 ]
  %4270 = phi float [ 0.000000e+00, %4129 ], [ %4260, %4265 ]
  %4271 = phi float [ 0.000000e+00, %4129 ], [ %4261, %4265 ]
  %4272 = phi float [ 0.000000e+00, %4129 ], [ %4262, %4265 ]
  %4273 = fadd fast float %4270, %4267
  %4274 = fmul fast float %4273, 0x3F847AE140000000
  %4275 = fadd fast float %4271, %4268
  %4276 = fmul fast float %4275, 0x3F847AE140000000
  %4277 = fadd fast float %4272, %4269
  %4278 = fmul fast float %4277, 0x3F847AE140000000
  br label %4279

; <label>:4279                                    ; preds = %4266, %4063, %4008, %4005, %3976, %3938
  %4280 = phi float [ %3990, %3976 ], [ -1.310720e+05, %3938 ], [ %4182, %4266 ], [ -1.310720e+05, %4008 ], [ -1.310720e+05, %4063 ], [ -1.310720e+05, %4005 ]
  %4281 = phi float [ %4000, %3976 ], [ 0.000000e+00, %3938 ], [ %4274, %4266 ], [ 0.000000e+00, %4008 ], [ 0.000000e+00, %4063 ], [ 0.000000e+00, %4005 ]
  %4282 = phi float [ %4002, %3976 ], [ 0.000000e+00, %3938 ], [ %4276, %4266 ], [ 0.000000e+00, %4008 ], [ 0.000000e+00, %4063 ], [ 0.000000e+00, %4005 ]
  %4283 = phi float [ %4004, %3976 ], [ 0.000000e+00, %3938 ], [ %4278, %4266 ], [ 0.000000e+00, %4008 ], [ 0.000000e+00, %4063 ], [ 0.000000e+00, %4005 ]
  %4284 = phi i1 [ true, %3976 ], [ false, %3938 ], [ true, %4266 ], [ false, %4008 ], [ false, %4063 ], [ false, %4005 ]
  %4285 = and i32 %261, 3
  %4286 = icmp eq i32 %4285, 1
  %4287 = select i1 %4286, float 1.000000e+00, float 0.000000e+00
  %4288 = fsub fast float %4280, %193
  %4289 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4290 = select i1 %4284, float %4289, float 1.000000e+00
  %4291 = fmul fast float %4290, %4287
  %4292 = icmp eq i32 %4285, 3
  %4293 = select i1 %4292, float 1.000000e+00, float %4291
  %4294 = call float @dx.op.binary.f32(i32 35, float %3859, float %4293)  ; FMax(a,b)
  %4295 = fcmp fast olt float %4293, 1.000000e+00
  %4296 = fcmp uge float %69, 0.000000e+00
  %4297 = and i1 %4296, %4295
  br i1 %4297, label %4298, label %4308

; <label>:4298                                    ; preds = %4279
  %4299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %46, float %69, float %70, float %71, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4300 = extractvalue %dx.types.ResRet.f32 %4299, 0
  %4301 = extractvalue %dx.types.ResRet.f32 %4299, 1
  %4302 = extractvalue %dx.types.ResRet.f32 %4299, 2
  %4303 = fadd fast float %4300, %4294
  %4304 = fcmp ule float %68, 0.000000e+00
  %4305 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4306 = select i1 %4304, float %4305, float 1.000000e+00
  %4307 = fmul fast float %4306, %4302
  br label %4308

; <label>:4308                                    ; preds = %4298, %4279
  %4309 = phi float [ %4303, %4298 ], [ %4294, %4279 ]
  %4310 = phi float [ %4301, %4298 ], [ 0.000000e+00, %4279 ]
  %4311 = phi float [ %4307, %4298 ], [ 0.000000e+00, %4279 ]
  %4312 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  %4313 = call float @dx.op.unary.f32(i32 7, float %4310)  ; Saturate(value)
  %4314 = call float @dx.op.unary.f32(i32 7, float %4311)  ; Saturate(value)
  %4315 = fcmp fast une float %4313, 0.000000e+00
  %4316 = fcmp fast une float %4314, 0.000000e+00
  %4317 = or i1 %4315, %4316
  br i1 %4317, label %4318, label %4877

; <label>:4318                                    ; preds = %4308
  br i1 %4315, label %4319, label %4592

; <label>:4319                                    ; preds = %4318
  %4320 = call float @dx.op.unary.f32(i32 23, float %3856)  ; Log(value)
  %4321 = fmul fast float %4320, 4.000000e+00
  %4322 = call float @dx.op.unary.f32(i32 21, float %4321)  ; Exp(value)
  %4323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4324 = extractvalue %dx.types.CBufRet.f32 %4323, 0
  %4325 = fmul fast float %4324, %56
  %4326 = fmul fast float %4324, %57
  %4327 = fmul fast float %4324, %58
  %4328 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4329 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4330 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4331 = call float @dx.op.unary.f32(i32 23, float %4328)  ; Log(value)
  %4332 = call float @dx.op.unary.f32(i32 23, float %4329)  ; Log(value)
  %4333 = call float @dx.op.unary.f32(i32 23, float %4330)  ; Log(value)
  %4334 = fmul fast float %4331, 4.000000e+00
  %4335 = fmul fast float %4332, 4.000000e+00
  %4336 = fmul fast float %4333, 4.000000e+00
  %4337 = call float @dx.op.unary.f32(i32 21, float %4334)  ; Exp(value)
  %4338 = call float @dx.op.unary.f32(i32 21, float %4335)  ; Exp(value)
  %4339 = call float @dx.op.unary.f32(i32 21, float %4336)  ; Exp(value)
  %4340 = fadd fast float %4338, %4337
  %4341 = fadd fast float %4340, %4339
  %4342 = fdiv fast float 1.000000e+00, %4341
  %4343 = fmul fast float %4342, %4337
  %4344 = fcmp fast ogt float %65, 0.000000e+00
  %4345 = fcmp fast ogt float %66, 0.000000e+00
  %4346 = fcmp fast ogt float %67, 0.000000e+00
  %4347 = fcmp fast olt float %65, 0.000000e+00
  %4348 = fcmp fast olt float %66, 0.000000e+00
  %4349 = fcmp fast olt float %67, 0.000000e+00
  %4350 = zext i1 %4344 to i32
  %4351 = zext i1 %4345 to i32
  %4352 = zext i1 %4346 to i32
  %4353 = zext i1 %4347 to i32
  %4354 = zext i1 %4348 to i32
  %4355 = zext i1 %4349 to i32
  %4356 = sub nsw i32 %4350, %4353
  %4357 = sub nsw i32 %4351, %4354
  %4358 = sub nsw i32 %4352, %4355
  %4359 = call float @dx.op.unary.f32(i32 83, float %4325)  ; DerivCoarseX(value)
  %4360 = call float @dx.op.unary.f32(i32 83, float %4326)  ; DerivCoarseX(value)
  %4361 = call float @dx.op.unary.f32(i32 83, float %4327)  ; DerivCoarseX(value)
  %4362 = call float @dx.op.unary.f32(i32 84, float %4325)  ; DerivCoarseY(value)
  %4363 = call float @dx.op.unary.f32(i32 84, float %4326)  ; DerivCoarseY(value)
  %4364 = call float @dx.op.unary.f32(i32 84, float %4327)  ; DerivCoarseY(value)
  %4365 = fcmp fast ole float %293, %4343
  %4366 = fmul fast float %4342, %4340
  %4367 = fcmp fast ole float %293, %4366
  %4368 = select i1 %4367, float %4327, float %4325
  %4369 = select i1 %4367, float %4325, float %4326
  %4370 = select i1 %4365, float %4326, float %4368
  %4371 = select i1 %4365, float %4327, float %4369
  %4372 = select i1 %4367, float %4361, float %4359
  %4373 = select i1 %4367, float %4359, float %4360
  %4374 = select i1 %4365, float %4360, float %4372
  %4375 = select i1 %4365, float %4361, float %4373
  %4376 = select i1 %4367, float %4364, float %4362
  %4377 = select i1 %4367, float %4362, float %4363
  %4378 = select i1 %4365, float %4363, float %4376
  %4379 = select i1 %4365, float %4364, float %4377
  %4380 = call float @dx.op.unary.f32(i32 27, float %4370)  ; Round_ni(value)
  %4381 = call float @dx.op.unary.f32(i32 27, float %4371)  ; Round_ni(value)
  %4382 = fptosi float %4380 to i32
  %4383 = fptosi float %4381 to i32
  %4384 = xor i32 %4383, %4382
  %4385 = sitofp i32 %4384 to float
  %4386 = fptosi float %4385 to i32
  %4387 = sitofp i32 %4386 to float
  %4388 = fmul fast float %4387, 0x3FE3C6EF40000000
  %4389 = frem fast float %4380, 2.560000e+02
  %4390 = frem fast float %4381, 2.560000e+02
  %4391 = fptoui float %4389 to i32
  %4392 = fptoui float %4390 to i32
  %4393 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4391, i32 %4392, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4394 = extractvalue %dx.types.ResRet.f32 %4393, 0
  %4395 = extractvalue %dx.types.ResRet.f32 %4393, 1
  %4396 = extractvalue %dx.types.ResRet.f32 %4393, 2
  %4397 = fadd fast float %4394, %4388
  %4398 = fadd fast float %4395, %4388
  %4399 = fadd fast float %4396, %4388
  %4400 = call float @dx.op.unary.f32(i32 22, float %4397)  ; Frc(value)
  %4401 = call float @dx.op.unary.f32(i32 22, float %4398)  ; Frc(value)
  %4402 = call float @dx.op.unary.f32(i32 22, float %4399)  ; Frc(value)
  %4403 = fmul fast float %4402, 0x401921FB60000000
  %4404 = call float @dx.op.unary.f32(i32 13, float %4403)  ; Sin(value)
  %4405 = call float @dx.op.unary.f32(i32 12, float %4403)  ; Cos(value)
  %4406 = fsub fast float -0.000000e+00, %4405
  %4407 = fmul fast float %4405, %4370
  %4408 = call float @dx.op.tertiary.f32(i32 46, float %4404, float %4371, float %4407)  ; FMad(a,b,c)
  %4409 = fmul fast float %4404, %4370
  %4410 = call float @dx.op.tertiary.f32(i32 46, float %4406, float %4371, float %4409)  ; FMad(a,b,c)
  %4411 = fadd fast float %4408, %4400
  %4412 = fadd fast float %4410, %4401
  %4413 = extractvalue %dx.types.CBufRet.f32 %4323, 3
  %4414 = bitcast float %4413 to i32
  %4415 = icmp eq i32 %4414, 0
  br i1 %4415, label %4454, label %4416

; <label>:4416                                    ; preds = %4319
  %4417 = add i32 %4414, 0
  %4418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4417, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4419 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4418, %dx.types.Handle %101, float %4411, float %4412, float undef, float undef, i32 0, i32 0, i32 undef, float %4374, float %4375, float undef, float %4378, float %4379, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4420 = extractvalue %dx.types.ResRet.f32 %4419, 0
  %4421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4422 = extractvalue %dx.types.CBufRet.f32 %4421, 1
  %4423 = extractvalue %dx.types.CBufRet.f32 %4421, 2
  %4424 = fsub fast float 1.000000e+00, %4313
  %4425 = call float @dx.op.binary.f32(i32 35, float %4424, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4426 = bitcast float %4313 to i32
  %4427 = sitofp i32 %4426 to float
  %4428 = fadd fast float %4427, 0xC1CFBF8940000000
  %4429 = fmul fast float %4423, %4428
  %4430 = fadd fast float %4429, 0x41CFBF8940000000
  %4431 = fptosi float %4430 to i32
  %4432 = bitcast i32 %4431 to float
  %4433 = bitcast float %4425 to i32
  %4434 = sitofp i32 %4433 to float
  %4435 = fadd fast float %4434, 0xC1CFBF8940000000
  %4436 = fmul fast float %4435, %4423
  %4437 = fadd fast float %4436, 0x41CFBF8940000000
  %4438 = fptosi float %4437 to i32
  %4439 = bitcast i32 %4438 to float
  %4440 = fmul fast float %4432, %4422
  %4441 = fmul fast float %4439, %4422
  %4442 = fsub fast float %4425, %4440
  %4443 = fadd fast float %4441, %4425
  %4444 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4445 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4446 = fsub fast float %4420, %4444
  %4447 = fsub fast float %4445, %4444
  %4448 = bitcast float %4447 to i32
  %4449 = sub nsw i32 2129859010, %4448
  %4450 = bitcast i32 %4449 to float
  %4451 = fmul fast float %4450, %4446
  %4452 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4453 = fcmp fast olt float %4452, 0x3F70101020000000
  br i1 %4453, label %4592, label %4454

; <label>:4454                                    ; preds = %4416, %4319
  %4455 = phi float [ %4452, %4416 ], [ %4313, %4319 ]
  %4456 = fmul fast float %4455, %4322
  %4457 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4458 = extractvalue %dx.types.CBufRet.i32 %4457, 1
  %4459 = extractvalue %dx.types.CBufRet.i32 %4457, 0
  %4460 = add i32 %4459, 0
  %4461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4462 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4461, %dx.types.Handle %100, float %4411, float %4412, float undef, float undef, i32 0, i32 0, i32 undef, float %4374, float %4375, float undef, float %4378, float %4379, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4463 = extractvalue %dx.types.ResRet.f32 %4462, 0
  %4464 = extractvalue %dx.types.ResRet.f32 %4462, 1
  %4465 = extractvalue %dx.types.ResRet.f32 %4462, 2
  %4466 = extractvalue %dx.types.ResRet.f32 %4462, 3
  %4467 = and i32 %4458, 255
  %4468 = uitofp i32 %4467 to float
  %4469 = lshr i32 %4458, 8
  %4470 = and i32 %4469, 255
  %4471 = uitofp i32 %4470 to float
  %4472 = fmul fast float %4466, %4468
  %4473 = fadd fast float %4472, %4471
  %4474 = fmul fast float %4473, 0x3F70101000000000
  %4475 = fadd fast float %4474, 0xBFB99999A0000000
  %4476 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4477 = fmul fast float %4476, 0x3FF1C71C80000000
  %4478 = call float @dx.op.binary.f32(i32 36, float %4474, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4479 = fsub fast float 1.000000e+00, %4477
  %4480 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4481 = fmul fast float %4480, %4463
  %4482 = fmul fast float %4480, %4464
  %4483 = fmul fast float %4480, %4465
  %4484 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4485 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4486 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4487 = fmul fast float %4477, %4463
  %4488 = fmul fast float %4477, %4464
  %4489 = fmul fast float %4477, %4465
  %4490 = fadd fast float %4487, %4478
  %4491 = fadd fast float %4488, %4478
  %4492 = fadd fast float %4489, %4478
  %4493 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4494 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4495 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4497 = extractvalue %dx.types.CBufRet.i32 %4496, 3
  %4498 = extractvalue %dx.types.CBufRet.i32 %4496, 2
  %4499 = add i32 %4498, 0
  %4500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4499, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4501 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4500, %dx.types.Handle %100, float %4411, float %4412, float undef, float undef, i32 0, i32 0, i32 undef, float %4374, float %4375, float undef, float %4378, float %4379, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4502 = extractvalue %dx.types.ResRet.f32 %4501, 0
  %4503 = extractvalue %dx.types.ResRet.f32 %4501, 1
  %4504 = extractvalue %dx.types.ResRet.f32 %4501, 2
  %4505 = extractvalue %dx.types.ResRet.f32 %4501, 3
  %4506 = and i32 %4497, 255
  %4507 = uitofp i32 %4506 to float
  %4508 = lshr i32 %4497, 8
  %4509 = and i32 %4508, 255
  %4510 = uitofp i32 %4509 to float
  %4511 = lshr i32 %4497, 16
  %4512 = and i32 %4511, 255
  %4513 = uitofp i32 %4512 to float
  %4514 = fmul fast float %4513, 0x3F70101000000000
  %4515 = fmul fast float %4502, %4507
  %4516 = fadd fast float %4515, %4510
  %4517 = fmul fast float %4516, 0x3F70101000000000
  %4518 = fadd fast float %4503, -5.000000e-01
  %4519 = fadd fast float %4505, -5.000000e-01
  %4520 = fmul fast float %4518, %4514
  %4521 = fmul fast float %4519, %4514
  %4522 = fadd fast float %4520, 5.000000e-01
  %4523 = fadd fast float %4521, 5.000000e-01
  %4524 = fmul fast float %4522, 2.000000e+00
  %4525 = fadd fast float %4524, -1.000000e+00
  %4526 = fmul fast float %4523, 2.000000e+00
  %4527 = fadd fast float %4526, -1.000000e+00
  %4528 = fadd fast float %4525, %4527
  %4529 = fmul fast float %4528, 5.000000e-01
  %4530 = fsub fast float %4525, %4527
  %4531 = fmul fast float %4530, 5.000000e-01
  %4532 = call float @dx.op.unary.f32(i32 6, float %4529)  ; FAbs(value)
  %4533 = fsub fast float 1.000000e+00, %4532
  %4534 = call float @dx.op.unary.f32(i32 6, float %4531)  ; FAbs(value)
  %4535 = fsub fast float %4533, %4534
  %4536 = call float @dx.op.dot3.f32(i32 55, float %4529, float %4531, float %4535, float %4529, float %4531, float %4535)  ; Dot3(ax,ay,az,bx,by,bz)
  %4537 = call float @dx.op.unary.f32(i32 25, float %4536)  ; Rsqrt(value)
  %4538 = fmul fast float %4529, %4537
  %4539 = fmul fast float %4531, %4537
  %4540 = select i1 %4367, i32 %4357, i32 %4358
  %4541 = select i1 %4365, i32 %4356, i32 %4540
  %4542 = sitofp i32 %4541 to float
  %4543 = fmul fast float %4535, %4542
  %4544 = fmul fast float %4543, %4537
  %4545 = select i1 %4367, float %4544, float %4539
  %4546 = select i1 %4367, float %4539, float %4544
  %4547 = select i1 %4365, float %4544, float %4538
  %4548 = select i1 %4365, float %4539, float %4545
  %4549 = select i1 %4365, float %4538, float %4546
  %4550 = fsub fast float %4484, %3917
  %4551 = fsub fast float %4485, %3918
  %4552 = fsub fast float %4486, %3919
  %4553 = fmul fast float %4550, %4456
  %4554 = fmul fast float %4551, %4456
  %4555 = fmul fast float %4552, %4456
  %4556 = fadd fast float %4553, %3917
  %4557 = fadd fast float %4554, %3918
  %4558 = fadd fast float %4555, %3919
  %4559 = fsub fast float %4493, %3902
  %4560 = fsub fast float %4494, %3903
  %4561 = fsub fast float %4495, %3904
  %4562 = fmul fast float %4559, %4456
  %4563 = fmul fast float %4560, %4456
  %4564 = fmul fast float %4561, %4456
  %4565 = fadd fast float %4562, %3902
  %4566 = fadd fast float %4563, %3903
  %4567 = fadd fast float %4564, %3904
  %4568 = fadd fast float %4547, %3847
  %4569 = fadd fast float %4548, %3848
  %4570 = fadd fast float %4549, %3849
  %4571 = call float @dx.op.dot3.f32(i32 55, float %4568, float %4569, float %4570, float %4568, float %4569, float %4570)  ; Dot3(ax,ay,az,bx,by,bz)
  %4572 = call float @dx.op.unary.f32(i32 25, float %4571)  ; Rsqrt(value)
  %4573 = fmul fast float %4568, %4572
  %4574 = fmul fast float %4569, %4572
  %4575 = fmul fast float %4570, %4572
  %4576 = fsub fast float %4573, %3847
  %4577 = fsub fast float %4574, %3848
  %4578 = fsub fast float %4575, %3849
  %4579 = fmul fast float %4576, %4456
  %4580 = fmul fast float %4577, %4456
  %4581 = fmul fast float %4578, %4456
  %4582 = fadd fast float %4579, %3847
  %4583 = fadd fast float %4580, %3848
  %4584 = fadd fast float %4581, %3849
  %4585 = call float @dx.op.binary.f32(i32 36, float %3856, float %4504)  ; FMin(a,b)
  %4586 = fsub fast float %4585, %3856
  %4587 = fmul fast float %4586, %4456
  %4588 = fadd fast float %4587, %3856
  %4589 = fsub fast float %4517, %3905
  %4590 = fmul fast float %4589, %4456
  %4591 = fadd fast float %4590, %3905
  br label %4592

; <label>:4592                                    ; preds = %4454, %4416, %4318
  %4593 = phi float [ %4565, %4454 ], [ %3902, %4416 ], [ %3902, %4318 ]
  %4594 = phi float [ %4566, %4454 ], [ %3903, %4416 ], [ %3903, %4318 ]
  %4595 = phi float [ %4567, %4454 ], [ %3904, %4416 ], [ %3904, %4318 ]
  %4596 = phi float [ %4582, %4454 ], [ %3847, %4416 ], [ %3847, %4318 ]
  %4597 = phi float [ %4583, %4454 ], [ %3848, %4416 ], [ %3848, %4318 ]
  %4598 = phi float [ %4584, %4454 ], [ %3849, %4416 ], [ %3849, %4318 ]
  %4599 = phi float [ %4556, %4454 ], [ %3917, %4416 ], [ %3917, %4318 ]
  %4600 = phi float [ %4557, %4454 ], [ %3918, %4416 ], [ %3918, %4318 ]
  %4601 = phi float [ %4558, %4454 ], [ %3919, %4416 ], [ %3919, %4318 ]
  %4602 = phi float [ %4591, %4454 ], [ %3905, %4416 ], [ %3905, %4318 ]
  %4603 = phi float [ %4588, %4454 ], [ %3856, %4416 ], [ %3856, %4318 ]
  br i1 %4316, label %4604, label %4877

; <label>:4604                                    ; preds = %4592
  %4605 = call float @dx.op.unary.f32(i32 23, float %4603)  ; Log(value)
  %4606 = fmul fast float %4605, 4.000000e+00
  %4607 = call float @dx.op.unary.f32(i32 21, float %4606)  ; Exp(value)
  %4608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4609 = extractvalue %dx.types.CBufRet.f32 %4608, 0
  %4610 = fmul fast float %4609, %56
  %4611 = fmul fast float %4609, %57
  %4612 = fmul fast float %4609, %58
  %4613 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4614 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4615 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4616 = call float @dx.op.unary.f32(i32 23, float %4613)  ; Log(value)
  %4617 = call float @dx.op.unary.f32(i32 23, float %4614)  ; Log(value)
  %4618 = call float @dx.op.unary.f32(i32 23, float %4615)  ; Log(value)
  %4619 = fmul fast float %4616, 4.000000e+00
  %4620 = fmul fast float %4617, 4.000000e+00
  %4621 = fmul fast float %4618, 4.000000e+00
  %4622 = call float @dx.op.unary.f32(i32 21, float %4619)  ; Exp(value)
  %4623 = call float @dx.op.unary.f32(i32 21, float %4620)  ; Exp(value)
  %4624 = call float @dx.op.unary.f32(i32 21, float %4621)  ; Exp(value)
  %4625 = fadd fast float %4623, %4622
  %4626 = fadd fast float %4625, %4624
  %4627 = fdiv fast float 1.000000e+00, %4626
  %4628 = fmul fast float %4627, %4622
  %4629 = fcmp fast ogt float %65, 0.000000e+00
  %4630 = fcmp fast ogt float %66, 0.000000e+00
  %4631 = fcmp fast ogt float %67, 0.000000e+00
  %4632 = fcmp fast olt float %65, 0.000000e+00
  %4633 = fcmp fast olt float %66, 0.000000e+00
  %4634 = fcmp fast olt float %67, 0.000000e+00
  %4635 = zext i1 %4629 to i32
  %4636 = zext i1 %4630 to i32
  %4637 = zext i1 %4631 to i32
  %4638 = zext i1 %4632 to i32
  %4639 = zext i1 %4633 to i32
  %4640 = zext i1 %4634 to i32
  %4641 = sub nsw i32 %4635, %4638
  %4642 = sub nsw i32 %4636, %4639
  %4643 = sub nsw i32 %4637, %4640
  %4644 = call float @dx.op.unary.f32(i32 83, float %4610)  ; DerivCoarseX(value)
  %4645 = call float @dx.op.unary.f32(i32 83, float %4611)  ; DerivCoarseX(value)
  %4646 = call float @dx.op.unary.f32(i32 83, float %4612)  ; DerivCoarseX(value)
  %4647 = call float @dx.op.unary.f32(i32 84, float %4610)  ; DerivCoarseY(value)
  %4648 = call float @dx.op.unary.f32(i32 84, float %4611)  ; DerivCoarseY(value)
  %4649 = call float @dx.op.unary.f32(i32 84, float %4612)  ; DerivCoarseY(value)
  %4650 = fcmp fast ole float %293, %4628
  %4651 = fmul fast float %4627, %4625
  %4652 = fcmp fast ole float %293, %4651
  %4653 = select i1 %4652, float %4612, float %4610
  %4654 = select i1 %4652, float %4610, float %4611
  %4655 = select i1 %4650, float %4611, float %4653
  %4656 = select i1 %4650, float %4612, float %4654
  %4657 = select i1 %4652, float %4646, float %4644
  %4658 = select i1 %4652, float %4644, float %4645
  %4659 = select i1 %4650, float %4645, float %4657
  %4660 = select i1 %4650, float %4646, float %4658
  %4661 = select i1 %4652, float %4649, float %4647
  %4662 = select i1 %4652, float %4647, float %4648
  %4663 = select i1 %4650, float %4648, float %4661
  %4664 = select i1 %4650, float %4649, float %4662
  %4665 = call float @dx.op.unary.f32(i32 27, float %4655)  ; Round_ni(value)
  %4666 = call float @dx.op.unary.f32(i32 27, float %4656)  ; Round_ni(value)
  %4667 = fptosi float %4665 to i32
  %4668 = fptosi float %4666 to i32
  %4669 = xor i32 %4668, %4667
  %4670 = sitofp i32 %4669 to float
  %4671 = fptosi float %4670 to i32
  %4672 = sitofp i32 %4671 to float
  %4673 = fmul fast float %4672, 0x3FE3C6EF40000000
  %4674 = frem fast float %4665, 2.560000e+02
  %4675 = frem fast float %4666, 2.560000e+02
  %4676 = fptoui float %4674 to i32
  %4677 = fptoui float %4675 to i32
  %4678 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4676, i32 %4677, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4679 = extractvalue %dx.types.ResRet.f32 %4678, 0
  %4680 = extractvalue %dx.types.ResRet.f32 %4678, 1
  %4681 = extractvalue %dx.types.ResRet.f32 %4678, 2
  %4682 = fadd fast float %4679, %4673
  %4683 = fadd fast float %4680, %4673
  %4684 = fadd fast float %4681, %4673
  %4685 = call float @dx.op.unary.f32(i32 22, float %4682)  ; Frc(value)
  %4686 = call float @dx.op.unary.f32(i32 22, float %4683)  ; Frc(value)
  %4687 = call float @dx.op.unary.f32(i32 22, float %4684)  ; Frc(value)
  %4688 = fmul fast float %4687, 0x401921FB60000000
  %4689 = call float @dx.op.unary.f32(i32 13, float %4688)  ; Sin(value)
  %4690 = call float @dx.op.unary.f32(i32 12, float %4688)  ; Cos(value)
  %4691 = fsub fast float -0.000000e+00, %4690
  %4692 = fmul fast float %4690, %4655
  %4693 = call float @dx.op.tertiary.f32(i32 46, float %4689, float %4656, float %4692)  ; FMad(a,b,c)
  %4694 = fmul fast float %4689, %4655
  %4695 = call float @dx.op.tertiary.f32(i32 46, float %4691, float %4656, float %4694)  ; FMad(a,b,c)
  %4696 = fadd fast float %4693, %4685
  %4697 = fadd fast float %4695, %4686
  %4698 = extractvalue %dx.types.CBufRet.f32 %4608, 3
  %4699 = bitcast float %4698 to i32
  %4700 = icmp eq i32 %4699, 0
  br i1 %4700, label %4739, label %4701

; <label>:4701                                    ; preds = %4604
  %4702 = add i32 %4699, 0
  %4703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4702, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4704 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4703, %dx.types.Handle %101, float %4696, float %4697, float undef, float undef, i32 0, i32 0, i32 undef, float %4659, float %4660, float undef, float %4663, float %4664, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4705 = extractvalue %dx.types.ResRet.f32 %4704, 0
  %4706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4707 = extractvalue %dx.types.CBufRet.f32 %4706, 1
  %4708 = extractvalue %dx.types.CBufRet.f32 %4706, 2
  %4709 = fsub fast float 1.000000e+00, %4314
  %4710 = call float @dx.op.binary.f32(i32 35, float %4709, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4711 = bitcast float %4314 to i32
  %4712 = sitofp i32 %4711 to float
  %4713 = fadd fast float %4712, 0xC1CFBF8940000000
  %4714 = fmul fast float %4708, %4713
  %4715 = fadd fast float %4714, 0x41CFBF8940000000
  %4716 = fptosi float %4715 to i32
  %4717 = bitcast i32 %4716 to float
  %4718 = bitcast float %4710 to i32
  %4719 = sitofp i32 %4718 to float
  %4720 = fadd fast float %4719, 0xC1CFBF8940000000
  %4721 = fmul fast float %4720, %4708
  %4722 = fadd fast float %4721, 0x41CFBF8940000000
  %4723 = fptosi float %4722 to i32
  %4724 = bitcast i32 %4723 to float
  %4725 = fmul fast float %4717, %4707
  %4726 = fmul fast float %4724, %4707
  %4727 = fsub fast float %4710, %4725
  %4728 = fadd fast float %4726, %4710
  %4729 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4730 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4731 = fsub fast float %4705, %4729
  %4732 = fsub fast float %4730, %4729
  %4733 = bitcast float %4732 to i32
  %4734 = sub nsw i32 2129859010, %4733
  %4735 = bitcast i32 %4734 to float
  %4736 = fmul fast float %4735, %4731
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4738 = fcmp fast olt float %4737, 0x3F70101020000000
  br i1 %4738, label %4877, label %4739

; <label>:4739                                    ; preds = %4701, %4604
  %4740 = phi float [ %4737, %4701 ], [ %4314, %4604 ]
  %4741 = fmul fast float %4740, %4607
  %4742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.i32 %4742, 1
  %4744 = extractvalue %dx.types.CBufRet.i32 %4742, 0
  %4745 = add i32 %4744, 0
  %4746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4745, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4747 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4746, %dx.types.Handle %100, float %4696, float %4697, float undef, float undef, i32 0, i32 0, i32 undef, float %4659, float %4660, float undef, float %4663, float %4664, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4748 = extractvalue %dx.types.ResRet.f32 %4747, 0
  %4749 = extractvalue %dx.types.ResRet.f32 %4747, 1
  %4750 = extractvalue %dx.types.ResRet.f32 %4747, 2
  %4751 = extractvalue %dx.types.ResRet.f32 %4747, 3
  %4752 = and i32 %4743, 255
  %4753 = uitofp i32 %4752 to float
  %4754 = lshr i32 %4743, 8
  %4755 = and i32 %4754, 255
  %4756 = uitofp i32 %4755 to float
  %4757 = fmul fast float %4751, %4753
  %4758 = fadd fast float %4757, %4756
  %4759 = fmul fast float %4758, 0x3F70101000000000
  %4760 = fadd fast float %4759, 0xBFB99999A0000000
  %4761 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4762 = fmul fast float %4761, 0x3FF1C71C80000000
  %4763 = call float @dx.op.binary.f32(i32 36, float %4759, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4764 = fsub fast float 1.000000e+00, %4762
  %4765 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4766 = fmul fast float %4765, %4748
  %4767 = fmul fast float %4765, %4749
  %4768 = fmul fast float %4765, %4750
  %4769 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4770 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4771 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4772 = fmul fast float %4762, %4748
  %4773 = fmul fast float %4762, %4749
  %4774 = fmul fast float %4762, %4750
  %4775 = fadd fast float %4772, %4763
  %4776 = fadd fast float %4773, %4763
  %4777 = fadd fast float %4774, %4763
  %4778 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4779 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4780 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4782 = extractvalue %dx.types.CBufRet.i32 %4781, 3
  %4783 = extractvalue %dx.types.CBufRet.i32 %4781, 2
  %4784 = add i32 %4783, 0
  %4785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4784, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4786 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4785, %dx.types.Handle %100, float %4696, float %4697, float undef, float undef, i32 0, i32 0, i32 undef, float %4659, float %4660, float undef, float %4663, float %4664, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4787 = extractvalue %dx.types.ResRet.f32 %4786, 0
  %4788 = extractvalue %dx.types.ResRet.f32 %4786, 1
  %4789 = extractvalue %dx.types.ResRet.f32 %4786, 2
  %4790 = extractvalue %dx.types.ResRet.f32 %4786, 3
  %4791 = and i32 %4782, 255
  %4792 = uitofp i32 %4791 to float
  %4793 = lshr i32 %4782, 8
  %4794 = and i32 %4793, 255
  %4795 = uitofp i32 %4794 to float
  %4796 = lshr i32 %4782, 16
  %4797 = and i32 %4796, 255
  %4798 = uitofp i32 %4797 to float
  %4799 = fmul fast float %4798, 0x3F70101000000000
  %4800 = fmul fast float %4787, %4792
  %4801 = fadd fast float %4800, %4795
  %4802 = fmul fast float %4801, 0x3F70101000000000
  %4803 = fadd fast float %4788, -5.000000e-01
  %4804 = fadd fast float %4790, -5.000000e-01
  %4805 = fmul fast float %4803, %4799
  %4806 = fmul fast float %4804, %4799
  %4807 = fadd fast float %4805, 5.000000e-01
  %4808 = fadd fast float %4806, 5.000000e-01
  %4809 = fmul fast float %4807, 2.000000e+00
  %4810 = fadd fast float %4809, -1.000000e+00
  %4811 = fmul fast float %4808, 2.000000e+00
  %4812 = fadd fast float %4811, -1.000000e+00
  %4813 = fadd fast float %4810, %4812
  %4814 = fmul fast float %4813, 5.000000e-01
  %4815 = fsub fast float %4810, %4812
  %4816 = fmul fast float %4815, 5.000000e-01
  %4817 = call float @dx.op.unary.f32(i32 6, float %4814)  ; FAbs(value)
  %4818 = fsub fast float 1.000000e+00, %4817
  %4819 = call float @dx.op.unary.f32(i32 6, float %4816)  ; FAbs(value)
  %4820 = fsub fast float %4818, %4819
  %4821 = call float @dx.op.dot3.f32(i32 55, float %4814, float %4816, float %4820, float %4814, float %4816, float %4820)  ; Dot3(ax,ay,az,bx,by,bz)
  %4822 = call float @dx.op.unary.f32(i32 25, float %4821)  ; Rsqrt(value)
  %4823 = fmul fast float %4814, %4822
  %4824 = fmul fast float %4816, %4822
  %4825 = select i1 %4652, i32 %4642, i32 %4643
  %4826 = select i1 %4650, i32 %4641, i32 %4825
  %4827 = sitofp i32 %4826 to float
  %4828 = fmul fast float %4820, %4827
  %4829 = fmul fast float %4828, %4822
  %4830 = select i1 %4652, float %4829, float %4824
  %4831 = select i1 %4652, float %4824, float %4829
  %4832 = select i1 %4650, float %4829, float %4823
  %4833 = select i1 %4650, float %4824, float %4830
  %4834 = select i1 %4650, float %4823, float %4831
  %4835 = fsub fast float %4769, %4599
  %4836 = fsub fast float %4770, %4600
  %4837 = fsub fast float %4771, %4601
  %4838 = fmul fast float %4835, %4741
  %4839 = fmul fast float %4836, %4741
  %4840 = fmul fast float %4837, %4741
  %4841 = fadd fast float %4838, %4599
  %4842 = fadd fast float %4839, %4600
  %4843 = fadd fast float %4840, %4601
  %4844 = fsub fast float %4778, %4593
  %4845 = fsub fast float %4779, %4594
  %4846 = fsub fast float %4780, %4595
  %4847 = fmul fast float %4844, %4741
  %4848 = fmul fast float %4845, %4741
  %4849 = fmul fast float %4846, %4741
  %4850 = fadd fast float %4847, %4593
  %4851 = fadd fast float %4848, %4594
  %4852 = fadd fast float %4849, %4595
  %4853 = fadd fast float %4832, %4596
  %4854 = fadd fast float %4833, %4597
  %4855 = fadd fast float %4834, %4598
  %4856 = call float @dx.op.dot3.f32(i32 55, float %4853, float %4854, float %4855, float %4853, float %4854, float %4855)  ; Dot3(ax,ay,az,bx,by,bz)
  %4857 = call float @dx.op.unary.f32(i32 25, float %4856)  ; Rsqrt(value)
  %4858 = fmul fast float %4853, %4857
  %4859 = fmul fast float %4854, %4857
  %4860 = fmul fast float %4855, %4857
  %4861 = fsub fast float %4858, %4596
  %4862 = fsub fast float %4859, %4597
  %4863 = fsub fast float %4860, %4598
  %4864 = fmul fast float %4861, %4741
  %4865 = fmul fast float %4862, %4741
  %4866 = fmul fast float %4863, %4741
  %4867 = fadd fast float %4864, %4596
  %4868 = fadd fast float %4865, %4597
  %4869 = fadd fast float %4866, %4598
  %4870 = call float @dx.op.binary.f32(i32 36, float %4603, float %4789)  ; FMin(a,b)
  %4871 = fsub fast float %4870, %4603
  %4872 = fmul fast float %4871, %4741
  %4873 = fadd fast float %4872, %4603
  %4874 = fsub fast float %4802, %4602
  %4875 = fmul fast float %4874, %4741
  %4876 = fadd fast float %4875, %4602
  br label %4877

; <label>:4877                                    ; preds = %4739, %4701, %4592, %4308
  %4878 = phi float [ %4850, %4739 ], [ %4593, %4701 ], [ %4593, %4592 ], [ %3902, %4308 ]
  %4879 = phi float [ %4851, %4739 ], [ %4594, %4701 ], [ %4594, %4592 ], [ %3903, %4308 ]
  %4880 = phi float [ %4852, %4739 ], [ %4595, %4701 ], [ %4595, %4592 ], [ %3904, %4308 ]
  %4881 = phi float [ %4867, %4739 ], [ %4596, %4701 ], [ %4596, %4592 ], [ %3847, %4308 ]
  %4882 = phi float [ %4868, %4739 ], [ %4597, %4701 ], [ %4597, %4592 ], [ %3848, %4308 ]
  %4883 = phi float [ %4869, %4739 ], [ %4598, %4701 ], [ %4598, %4592 ], [ %3849, %4308 ]
  %4884 = phi float [ %4841, %4739 ], [ %4599, %4701 ], [ %4599, %4592 ], [ %3917, %4308 ]
  %4885 = phi float [ %4842, %4739 ], [ %4600, %4701 ], [ %4600, %4592 ], [ %3918, %4308 ]
  %4886 = phi float [ %4843, %4739 ], [ %4601, %4701 ], [ %4601, %4592 ], [ %3919, %4308 ]
  %4887 = phi float [ %4876, %4739 ], [ %4602, %4701 ], [ %4602, %4592 ], [ %3905, %4308 ]
  %4888 = phi float [ %4873, %4739 ], [ %4603, %4701 ], [ %4603, %4592 ], [ %3856, %4308 ]
  %4889 = fcmp fast une float %4312, 0.000000e+00
  %4890 = fsub fast float -0.000000e+00, %211
  %4891 = fsub fast float -0.000000e+00, %212
  %4892 = fsub fast float -0.000000e+00, %213
  br i1 %4889, label %4893, label %5054

; <label>:4893                                    ; preds = %4877
  %4894 = call float @dx.op.dot3.f32(i32 55, float %4890, float %4891, float %4892, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4895 = fmul fast float %4312, 2.500000e+00
  %4896 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4897 = fmul fast float %4312, 0x4013FFFFE0000000
  %4898 = fadd fast float %4897, 0xBFFFFFFFE0000000
  %4899 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4900 = fmul fast float %4312, 0x4004000020000000
  %4901 = fadd fast float %4900, 0xBFF8000040000000
  %4902 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4903 = fmul fast float %3884, 1.000000e+01
  %4904 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4905 = fmul fast float %4904, 2.000000e+00
  %4906 = fsub fast float 3.000000e+00, %4905
  %4907 = fmul fast float %4904, %4904
  %4908 = fmul fast float %4907, %4906
  %4909 = fsub fast float 1.000000e+00, %4908
  %4910 = fsub fast float 0x3FE3333340000000, %4887
  %4911 = fmul fast float %4910, 0x400AAAAAA0000000
  %4912 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4913 = fmul fast float %4909, %4912
  %4914 = fmul fast float %4884, 0x3FEA2B8620000000
  %4915 = fmul fast float %4885, 0x3FEA2B8620000000
  %4916 = fmul fast float %4886, 0x3FEA2B8620000000
  %4917 = fadd fast float %4914, 0x3FC81DFBA0000000
  %4918 = fmul fast float %4917, %4884
  %4919 = fadd fast float %4918, 0x3F910E6020000000
  %4920 = fadd fast float %4915, 0x3FC81DFBA0000000
  %4921 = fmul fast float %4920, %4885
  %4922 = fadd fast float %4921, 0x3F910E6020000000
  %4923 = fadd fast float %4916, 0x3FC81DFBA0000000
  %4924 = fmul fast float %4923, %4886
  %4925 = fadd fast float %4924, 0x3F910E6020000000
  %4926 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4927 = call float @dx.op.unary.f32(i32 7, float %4922)  ; Saturate(value)
  %4928 = call float @dx.op.unary.f32(i32 7, float %4925)  ; Saturate(value)
  %4929 = fsub fast float %4926, %4884
  %4930 = fsub fast float %4927, %4885
  %4931 = fsub fast float %4928, %4886
  %4932 = fmul fast float %4929, %4896
  %4933 = fmul fast float %4932, %4913
  %4934 = fmul fast float %4930, %4896
  %4935 = fmul fast float %4934, %4913
  %4936 = fmul fast float %4931, %4896
  %4937 = fmul fast float %4936, %4913
  %4938 = fadd fast float %4933, %4884
  %4939 = fadd fast float %4935, %4885
  %4940 = fadd fast float %4937, %4886
  %4941 = fmul fast float %4888, %4888
  %4942 = fmul fast float %4941, %4941
  %4943 = fadd fast float %4899, 1.000000e+00
  %4944 = fsub fast float %4943, %4913
  %4945 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4946 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4947 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4948 = fsub fast float 1.000000e+00, %4942
  %4949 = call float @dx.op.binary.f32(i32 36, float %4945, float %4948)  ; FMin(a,b)
  %4950 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  %4951 = call float @dx.op.binary.f32(i32 35, float %4949, float %4950)  ; FMax(a,b)
  %4952 = fadd fast float %4947, 0xBFE4CCCCC0000000
  %4953 = fmul fast float %4952, 0x4006DB6DA0000000
  %4954 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %4955 = fmul fast float %4954, 2.000000e+00
  %4956 = fsub fast float 3.000000e+00, %4955
  %4957 = bitcast float %4878 to i32
  %4958 = ashr i32 %4957, 1
  %4959 = add nsw i32 %4958, 532487669
  %4960 = bitcast i32 %4959 to float
  %4961 = fsub fast float 1.000000e+00, %4960
  %4962 = bitcast float %4961 to i32
  %4963 = sub nsw i32 2129859010, %4962
  %4964 = bitcast i32 %4963 to float
  %4965 = fmul fast float %4964, 2.000000e+00
  %4966 = bitcast float %4879 to i32
  %4967 = ashr i32 %4966, 1
  %4968 = add nsw i32 %4967, 532487669
  %4969 = bitcast i32 %4968 to float
  %4970 = fsub fast float 1.000000e+00, %4969
  %4971 = bitcast float %4970 to i32
  %4972 = sub nsw i32 2129859010, %4971
  %4973 = bitcast i32 %4972 to float
  %4974 = fmul fast float %4973, 2.000000e+00
  %4975 = bitcast float %4880 to i32
  %4976 = ashr i32 %4975, 1
  %4977 = add nsw i32 %4976, 532487669
  %4978 = bitcast i32 %4977 to float
  %4979 = fsub fast float 1.000000e+00, %4978
  %4980 = bitcast float %4979 to i32
  %4981 = sub nsw i32 2129859010, %4980
  %4982 = bitcast i32 %4981 to float
  %4983 = fmul fast float %4982, 2.000000e+00
  %4984 = fsub fast float 0x4002A9FBE0000000, %4965
  %4985 = fadd fast float %4965, 0x3FD54FDF00000000
  %4986 = bitcast float %4985 to i32
  %4987 = sub nsw i32 2129859010, %4986
  %4988 = bitcast i32 %4987 to float
  %4989 = fmul fast float %4988, %4984
  %4990 = fmul fast float %4989, %4989
  %4991 = fsub fast float 0x4002A9FBE0000000, %4974
  %4992 = fadd fast float %4974, 0x3FD54FDF00000000
  %4993 = bitcast float %4992 to i32
  %4994 = sub nsw i32 2129859010, %4993
  %4995 = bitcast i32 %4994 to float
  %4996 = fmul fast float %4995, %4991
  %4997 = fmul fast float %4996, %4996
  %4998 = fsub fast float 0x4002A9FBE0000000, %4983
  %4999 = fadd fast float %4983, 0x3FD54FDF00000000
  %5000 = bitcast float %4999 to i32
  %5001 = sub nsw i32 2129859010, %5000
  %5002 = bitcast i32 %5001 to float
  %5003 = fmul fast float %5002, %4998
  %5004 = fmul fast float %5003, %5003
  %5005 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4990)  ; FMax(a,b)
  %5006 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4997)  ; FMax(a,b)
  %5007 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5004)  ; FMax(a,b)
  %5008 = fsub fast float 1.000000e+00, %4894
  %5009 = fadd fast float %5008, %4909
  %5010 = call float @dx.op.unary.f32(i32 7, float %5009)  ; Saturate(value)
  %5011 = fsub fast float 1.000000e+00, %4293
  %5012 = fmul fast float %4951, %5011
  %5013 = fmul fast float %4954, %4954
  %5014 = fmul fast float %5013, %5012
  %5015 = fmul fast float %5014, %4956
  %5016 = fmul fast float %5011, 0xBFE99999A0000000
  %5017 = fmul fast float %5016, %4896
  %5018 = fmul fast float %5017, %4913
  %5019 = fadd fast float %5018, 1.000000e+00
  %5020 = fadd fast float %4887, -1.000000e+00
  %5021 = fmul fast float %5019, %5020
  %5022 = fadd fast float %5021, 1.000000e+00
  %5023 = fsub fast float %5005, %4878
  %5024 = fsub fast float %5006, %4879
  %5025 = fsub fast float %5007, %4880
  %5026 = fmul fast float %5015, %5023
  %5027 = fmul fast float %5015, %5024
  %5028 = fmul fast float %5015, %5025
  %5029 = fadd fast float %5026, %4878
  %5030 = fadd fast float %5027, %4879
  %5031 = fadd fast float %5028, %4880
  %5032 = fsub fast float %111, %4881
  %5033 = fsub fast float %112, %4882
  %5034 = fsub fast float %113, %4883
  %5035 = fmul fast float %5015, %5032
  %5036 = fmul fast float %5015, %5033
  %5037 = fmul fast float %5015, %5034
  %5038 = fadd fast float %5035, %4881
  %5039 = fadd fast float %5036, %4882
  %5040 = fadd fast float %5037, %4883
  %5041 = fmul fast float %5015, %5010
  %5042 = call float @dx.op.unary.f32(i32 7, float %5022)  ; Saturate(value)
  %5043 = fsub fast float 1.000000e+00, %5042
  %5044 = fmul fast float %5041, %5043
  %5045 = fadd fast float %5044, %5042
  %5046 = fsub fast float 1.000000e+00, %4888
  %5047 = fmul fast float %5015, %5046
  %5048 = fadd fast float %5047, %4888
  %5049 = call float @dx.op.dot3.f32(i32 55, float %5038, float %5039, float %5040, float %5038, float %5039, float %5040)  ; Dot3(ax,ay,az,bx,by,bz)
  %5050 = call float @dx.op.unary.f32(i32 25, float %5049)  ; Rsqrt(value)
  %5051 = fmul fast float %5038, %5050
  %5052 = fmul fast float %5039, %5050
  %5053 = fmul fast float %5040, %5050
  br label %5054

; <label>:5054                                    ; preds = %4893, %4877
  %5055 = phi float [ %5029, %4893 ], [ %4878, %4877 ]
  %5056 = phi float [ %5030, %4893 ], [ %4879, %4877 ]
  %5057 = phi float [ %5031, %4893 ], [ %4880, %4877 ]
  %5058 = phi float [ %5051, %4893 ], [ %4881, %4877 ]
  %5059 = phi float [ %5052, %4893 ], [ %4882, %4877 ]
  %5060 = phi float [ %5053, %4893 ], [ %4883, %4877 ]
  %5061 = phi float [ %4938, %4893 ], [ %4884, %4877 ]
  %5062 = phi float [ %4939, %4893 ], [ %4885, %4877 ]
  %5063 = phi float [ %4940, %4893 ], [ %4886, %4877 ]
  %5064 = phi float [ %5045, %4893 ], [ %4887, %4877 ]
  %5065 = phi float [ %5048, %4893 ], [ %4888, %4877 ]
  %5066 = fsub fast float -0.000000e+00, %193
  %5067 = select i1 %282, float 0.000000e+00, float %5057
  %5068 = call float @dx.op.dot3.f32(i32 55, float %5058, float %5059, float %5060, float %4890, float %4891, float %4892)  ; Dot3(ax,ay,az,bx,by,bz)
  %5069 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5070 = call float @dx.op.dot3.f32(i32 55, float %211, float %212, float %213, float %5058, float %5059, float %5060)  ; Dot3(ax,ay,az,bx,by,bz)
  %5071 = fmul fast float %5070, 2.000000e+00
  %5072 = fmul fast float %5071, %5058
  %5073 = fmul fast float %5071, %5059
  %5074 = fmul fast float %5071, %5060
  %5075 = fsub fast float %211, %5072
  %5076 = fsub fast float %212, %5073
  %5077 = fsub fast float %213, %5074
  %5078 = call float @dx.op.binary.f32(i32 36, float %5065, float 1.000000e+00)  ; FMin(a,b)
  %5079 = fsub fast float 1.000000e+00, %5065
  %5080 = bitcast float %5079 to i32
  %5081 = sub nsw i32 2129859010, %5080
  %5082 = bitcast i32 %5081 to float
  %5083 = fsub fast float 1.000000e+00, %75
  %5084 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5085 = call float @dx.op.binary.f32(i32 35, float %5084, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5086 = fdiv fast float %5083, %5085
  %5087 = call float @dx.op.dot3.f32(i32 55, float %5058, float %5059, float %5060, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5088 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5089 = fmul fast float %5088, 5.000000e-01
  %5090 = fadd fast float %5089, 5.000000e-01
  %5091 = fmul fast float %5090, %75
  %5092 = call float @dx.op.dot3.f32(i32 55, float %5058, float %5059, float %5060, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5093 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5094 = fmul fast float %5093, %5086
  %5095 = fadd fast float %5091, %5094
  %5096 = fsub fast float 5.000000e-01, %5089
  %5097 = fmul fast float %5096, %5061
  %5098 = fmul fast float %5096, %5062
  %5099 = fmul fast float %5096, %5063
  %5100 = fadd fast float %5095, %5097
  %5101 = fadd fast float %5095, %5098
  %5102 = fadd fast float %5095, %5099
  %5103 = call float @dx.op.dot3.f32(i32 55, float %5075, float %5076, float %5077, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5104 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5105 = fmul fast float %5104, 5.000000e-01
  %5106 = fadd fast float %5105, 5.000000e-01
  %5107 = fmul fast float %5106, %75
  %5108 = call float @dx.op.dot3.f32(i32 55, float %5075, float %5076, float %5077, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5109 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5110 = fmul fast float %5109, %5086
  %5111 = fadd fast float %5107, %5110
  %5112 = fsub fast float 5.000000e-01, %5105
  %5113 = fmul fast float %5112, %5061
  %5114 = fmul fast float %5112, %5062
  %5115 = fmul fast float %5112, %5063
  %5116 = fadd fast float %5111, %5113
  %5117 = fadd fast float %5111, %5114
  %5118 = fadd fast float %5111, %5115
  %5119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5120 = extractvalue %dx.types.CBufRet.f32 %5119, 0
  %5121 = call float @dx.op.binary.f32(i32 36, float %5061, float %5120)  ; FMin(a,b)
  %5122 = fsub fast float 1.000000e+00, %5078
  %5123 = fmul fast float %5121, %5122
  %5124 = fsub fast float 1.000000e+00, %5123
  %5125 = bitcast float %5124 to i32
  %5126 = sub nsw i32 2129859010, %5125
  %5127 = bitcast i32 %5126 to float
  %5128 = call float @dx.op.binary.f32(i32 36, float %5062, float %5120)  ; FMin(a,b)
  %5129 = fmul fast float %5128, %5122
  %5130 = fsub fast float 1.000000e+00, %5129
  %5131 = bitcast float %5130 to i32
  %5132 = sub nsw i32 2129859010, %5131
  %5133 = bitcast i32 %5132 to float
  %5134 = call float @dx.op.binary.f32(i32 36, float %5063, float %5120)  ; FMin(a,b)
  %5135 = fmul fast float %5134, %5122
  %5136 = fsub fast float 1.000000e+00, %5135
  %5137 = bitcast float %5136 to i32
  %5138 = sub nsw i32 2129859010, %5137
  %5139 = bitcast i32 %5138 to float
  %5140 = fmul fast float %5078, %76
  %5141 = fmul fast float %5140, %5100
  %5142 = fmul fast float %5141, %5127
  %5143 = fmul fast float %5078, %77
  %5144 = fmul fast float %5143, %5101
  %5145 = fmul fast float %5144, %5133
  %5146 = fmul fast float %5078, %78
  %5147 = fmul fast float %5146, %5102
  %5148 = fmul fast float %5147, %5139
  %5149 = call float @dx.op.binary.f32(i32 36, float %5055, float %5120)  ; FMin(a,b)
  %5150 = fmul fast float %5149, %5122
  %5151 = fsub fast float 1.000000e+00, %5150
  %5152 = bitcast float %5151 to i32
  %5153 = sub nsw i32 2129859010, %5152
  %5154 = bitcast i32 %5153 to float
  %5155 = call float @dx.op.binary.f32(i32 36, float %5056, float %5120)  ; FMin(a,b)
  %5156 = fmul fast float %5155, %5122
  %5157 = fsub fast float 1.000000e+00, %5156
  %5158 = bitcast float %5157 to i32
  %5159 = sub nsw i32 2129859010, %5158
  %5160 = bitcast i32 %5159 to float
  %5161 = call float @dx.op.binary.f32(i32 36, float %5067, float %5120)  ; FMin(a,b)
  %5162 = fmul fast float %5161, %5122
  %5163 = fsub fast float 1.000000e+00, %5162
  %5164 = bitcast float %5163 to i32
  %5165 = sub nsw i32 2129859010, %5164
  %5166 = bitcast i32 %5165 to float
  %5167 = fmul fast float %5140, %5116
  %5168 = fmul fast float %5167, %5154
  %5169 = fmul fast float %5143, %5117
  %5170 = fmul fast float %5169, %5160
  %5171 = fmul fast float %5146, %5118
  %5172 = fmul fast float %5171, %5166
  %5173 = call float @dx.op.dot3.f32(i32 55, float %5142, float %5145, float %5148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = select i1 %282, float 0.000000e+00, float %5142
  %5175 = select i1 %282, float %5173, float %5145
  %5176 = select i1 %282, float 0.000000e+00, float %5148
  %5177 = call float @dx.op.dot3.f32(i32 55, float %5168, float %5170, float %5172, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5178 = select i1 %282, float 0.000000e+00, float %5168
  %5179 = select i1 %282, float %5177, float %5170
  %5180 = select i1 %282, float 0.000000e+00, float %5172
  %5181 = fmul fast float %5069, 9.843750e-01
  %5182 = fmul fast float %5064, 9.843750e-01
  %5183 = fadd fast float %5181, 7.812500e-03
  %5184 = fadd fast float %5182, 7.812500e-03
  %5185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %5183, float %5184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5186 = extractvalue %dx.types.ResRet.f32 %5185, 2
  %5187 = extractvalue %dx.types.ResRet.f32 %5185, 3
  %5188 = fmul fast float %5186, %5055
  %5189 = fmul fast float %5186, %5056
  %5190 = fmul fast float %5186, %5067
  %5191 = fadd fast float %5188, %5187
  %5192 = fadd fast float %5189, %5187
  %5193 = fadd fast float %5190, %5187
  %5194 = fcmp fast ogt float %3857, 0.000000e+00
  br i1 %5194, label %5195, label %5221

; <label>:5195                                    ; preds = %5054
  %5196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3857, float %5069, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5197 = extractvalue %dx.types.ResRet.f32 %5196, 0
  %5198 = extractvalue %dx.types.ResRet.f32 %5196, 1
  %5199 = extractvalue %dx.types.ResRet.f32 %5196, 2
  %5200 = fadd fast float %5197, -5.000000e-01
  %5201 = fadd fast float %5198, -5.000000e-01
  %5202 = fadd fast float %5199, -5.000000e-01
  %5203 = fsub fast float 1.000000e+00, %5055
  %5204 = fsub fast float 1.000000e+00, %5056
  %5205 = fsub fast float 1.000000e+00, %5067
  %5206 = fmul fast float %5055, 4.000000e+00
  %5207 = fmul fast float %5206, %5203
  %5208 = fmul fast float %5207, %5200
  %5209 = fmul fast float %5056, 4.000000e+00
  %5210 = fmul fast float %5209, %5204
  %5211 = fmul fast float %5210, %5201
  %5212 = fmul fast float %5067, 4.000000e+00
  %5213 = fmul fast float %5212, %5205
  %5214 = fmul fast float %5213, %5202
  %5215 = fadd fast float %5208, %5191
  %5216 = fadd fast float %5211, %5192
  %5217 = fadd fast float %5214, %5193
  %5218 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  %5219 = call float @dx.op.unary.f32(i32 7, float %5216)  ; Saturate(value)
  %5220 = call float @dx.op.unary.f32(i32 7, float %5217)  ; Saturate(value)
  br label %5221

; <label>:5221                                    ; preds = %5195, %5054
  %5222 = phi float [ %5218, %5195 ], [ %5191, %5054 ]
  %5223 = phi float [ %5219, %5195 ], [ %5192, %5054 ]
  %5224 = phi float [ %5220, %5195 ], [ %5193, %5054 ]
  %5225 = call float @dx.op.binary.f32(i32 35, float %5223, float %5224)  ; FMax(a,b)
  %5226 = call float @dx.op.binary.f32(i32 35, float %5222, float %5225)  ; FMax(a,b)
  %5227 = fsub fast float 1.000000e+00, %5226
  %5228 = fmul fast float %5227, %5174
  %5229 = fmul fast float %5227, %5175
  %5230 = fmul fast float %5227, %5176
  %5231 = call float @dx.op.dot3.f32(i32 55, float %5061, float %5062, float %5063, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5232 = fcmp fast ogt float %5231, 0x3E7FF19E20000000
  %5233 = fdiv fast float 1.000000e+00, %5231
  %5234 = select i1 %5232, float %5233, float 0.000000e+00
  %5235 = fmul fast float %5234, %5061
  %5236 = fmul fast float %5234, %5062
  %5237 = fmul fast float %5234, %5063
  %5238 = fadd fast float %5235, -1.000000e+00
  %5239 = fadd fast float %5236, -1.000000e+00
  %5240 = fadd fast float %5237, -1.000000e+00
  %5241 = fmul fast float %5238, 5.000000e-01
  %5242 = fmul fast float %5239, 5.000000e-01
  %5243 = fmul fast float %5240, 5.000000e-01
  %5244 = fadd fast float %5241, 1.000000e+00
  %5245 = fadd fast float %5242, 1.000000e+00
  %5246 = fadd fast float %5243, 1.000000e+00
  %5247 = fmul fast float %5222, %5178
  %5248 = fmul fast float %5223, %5179
  %5249 = fmul fast float %5224, %5180
  %5250 = fsub fast float 1.000000e+00, %5069
  %5251 = bitcast float %5250 to i32
  %5252 = sitofp i32 %5251 to float
  %5253 = fmul fast float %5252, 5.000000e+00
  %5254 = fadd fast float %5253, 0xC1EFBF8940000000
  %5255 = fptosi float %5254 to i32
  %5256 = bitcast i32 %5255 to float
  %5257 = fmul fast float %5256, %3858
  %5258 = fmul fast float %5174, %5257
  %5259 = fmul fast float %5258, %5227
  %5260 = fmul fast float %5259, %5244
  %5261 = fmul fast float %5175, %5257
  %5262 = fmul fast float %5261, %5227
  %5263 = fmul fast float %5262, %5245
  %5264 = fmul fast float %5176, %5257
  %5265 = fmul fast float %5264, %5227
  %5266 = fmul fast float %5265, %5246
  %5267 = fmul fast float %5228, %3883
  %5268 = fmul fast float %5229, %3883
  %5269 = fmul fast float %5230, %3883
  %5270 = fadd fast float %5247, %3850
  %5271 = fadd fast float %5270, %5260
  %5272 = fmul fast float %5271, %3883
  %5273 = fadd fast float %5248, %3851
  %5274 = fadd fast float %5273, %5263
  %5275 = fmul fast float %5274, %3883
  %5276 = fadd fast float %5249, %3852
  %5277 = fadd fast float %5276, %5266
  %5278 = fmul fast float %5277, %3883
  %5279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.f32 %5279, 3
  %5281 = fcmp fast oeq float %5280, 0.000000e+00
  br i1 %5281, label %6366, label %5282

; <label>:5282                                    ; preds = %5221
  %5283 = extractvalue %dx.types.CBufRet.f32 %5279, 0
  %5284 = extractvalue %dx.types.CBufRet.f32 %5279, 1
  %5285 = extractvalue %dx.types.CBufRet.f32 %5279, 2
  %5286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5287 = extractvalue %dx.types.CBufRet.f32 %5286, 0
  %5288 = extractvalue %dx.types.CBufRet.f32 %5286, 1
  %5289 = extractvalue %dx.types.CBufRet.f32 %5286, 2
  %5290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5291 = extractvalue %dx.types.CBufRet.f32 %5290, 0
  %5292 = extractvalue %dx.types.CBufRet.f32 %5290, 1
  %5293 = call float @dx.op.dot3.f32(i32 55, float %5287, float %5288, float %5289, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5294 = select i1 %282, float %5291, float %5287
  %5295 = select i1 %282, float %5293, float %5288
  %5296 = select i1 %282, float %5292, float %5289
  %5297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5298 = extractvalue %dx.types.CBufRet.f32 %5297, 2
  %5299 = fmul fast float %5298, %111
  %5300 = fmul fast float %5298, %112
  %5301 = fmul fast float %5298, %113
  %5302 = fadd fast float %5299, %191
  %5303 = fadd fast float %5300, %192
  %5304 = fadd fast float %5301, %193
  %5305 = fcmp fast olt float %5280, 0.000000e+00
  br i1 %5305, label %5945, label %5306

; <label>:5306                                    ; preds = %5282
  %5307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5308 = extractvalue %dx.types.CBufRet.f32 %5307, 0
  %5309 = extractvalue %dx.types.CBufRet.f32 %5307, 1
  %5310 = extractvalue %dx.types.CBufRet.f32 %5307, 2
  %5311 = extractvalue %dx.types.CBufRet.f32 %5307, 3
  %5312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5313 = extractvalue %dx.types.CBufRet.f32 %5312, 0
  %5314 = extractvalue %dx.types.CBufRet.f32 %5312, 1
  %5315 = extractvalue %dx.types.CBufRet.f32 %5312, 2
  %5316 = extractvalue %dx.types.CBufRet.f32 %5312, 3
  %5317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5318 = extractvalue %dx.types.CBufRet.f32 %5317, 0
  %5319 = extractvalue %dx.types.CBufRet.f32 %5317, 1
  %5320 = extractvalue %dx.types.CBufRet.f32 %5317, 2
  %5321 = extractvalue %dx.types.CBufRet.f32 %5317, 3
  %5322 = fmul fast float %5308, %5302
  %5323 = call float @dx.op.tertiary.f32(i32 46, float %5303, float %5309, float %5322)  ; FMad(a,b,c)
  %5324 = call float @dx.op.tertiary.f32(i32 46, float %5304, float %5310, float %5323)  ; FMad(a,b,c)
  %5325 = fadd fast float %5324, %5311
  %5326 = fmul fast float %5313, %5302
  %5327 = call float @dx.op.tertiary.f32(i32 46, float %5303, float %5314, float %5326)  ; FMad(a,b,c)
  %5328 = call float @dx.op.tertiary.f32(i32 46, float %5304, float %5315, float %5327)  ; FMad(a,b,c)
  %5329 = fadd fast float %5328, %5316
  %5330 = fmul fast float %5318, %5302
  %5331 = call float @dx.op.tertiary.f32(i32 46, float %5303, float %5319, float %5330)  ; FMad(a,b,c)
  %5332 = call float @dx.op.tertiary.f32(i32 46, float %5304, float %5320, float %5331)  ; FMad(a,b,c)
  %5333 = fadd fast float %5332, %5321
  %5334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5335 = extractvalue %dx.types.CBufRet.f32 %5334, 0
  %5336 = fcmp fast une float %5335, 0.000000e+00
  %5337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5338 = extractvalue %dx.types.CBufRet.f32 %5337, 0
  %5339 = extractvalue %dx.types.CBufRet.f32 %5337, 1
  %5340 = extractvalue %dx.types.CBufRet.f32 %5337, 3
  %5341 = fmul fast float %5340, %5325
  %5342 = fmul fast float %5340, %5329
  %5343 = fadd fast float %5341, %5338
  %5344 = fadd fast float %5342, %5339
  %5345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5346 = extractvalue %dx.types.CBufRet.f32 %5345, 0
  %5347 = extractvalue %dx.types.CBufRet.f32 %5345, 1
  %5348 = extractvalue %dx.types.CBufRet.f32 %5345, 3
  %5349 = fmul fast float %5348, %5325
  %5350 = fmul fast float %5348, %5329
  %5351 = fadd fast float %5349, %5346
  %5352 = fadd fast float %5350, %5347
  %5353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5354 = extractvalue %dx.types.CBufRet.f32 %5353, 1
  %5355 = fsub fast float %5354, %5333
  %5356 = extractvalue %dx.types.CBufRet.f32 %5353, 2
  %5357 = fmul fast float %5355, %5356
  %5358 = fsub fast float 1.000000e+00, %5357
  %5359 = call float @dx.op.unary.f32(i32 7, float %5358)  ; Saturate(value)
  br i1 %5336, label %5420, label %5360

; <label>:5360                                    ; preds = %5306
  %5361 = extractvalue %dx.types.CBufRet.f32 %5345, 2
  %5362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5363 = extractvalue %dx.types.CBufRet.f32 %5362, 2
  %5364 = fadd fast float %5363, %5361
  %5365 = fcmp fast ogt float %5364, 0.000000e+00
  br i1 %5365, label %5366, label %5390

; <label>:5366                                    ; preds = %5360
  %5367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5368 = extractvalue %dx.types.CBufRet.f32 %5367, 0
  %5369 = extractvalue %dx.types.CBufRet.f32 %5367, 1
  %5370 = fsub fast float %5351, %5368
  %5371 = fsub fast float %5352, %5369
  %5372 = fcmp fast olt float %5370, 0.000000e+00
  %5373 = fcmp fast olt float %5371, 0.000000e+00
  %5374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.f32 %5374, 0
  %5376 = extractvalue %dx.types.CBufRet.f32 %5374, 1
  %5377 = extractvalue %dx.types.CBufRet.f32 %5374, 2
  %5378 = extractvalue %dx.types.CBufRet.f32 %5374, 3
  %5379 = select i1 %5372, float %5375, float %5377
  %5380 = select i1 %5373, float %5376, float %5378
  %5381 = fmul fast float %5379, %5370
  %5382 = fmul fast float %5380, %5371
  %5383 = call float @dx.op.unary.f32(i32 6, float %5381)  ; FAbs(value)
  %5384 = call float @dx.op.unary.f32(i32 6, float %5382)  ; FAbs(value)
  %5385 = extractvalue %dx.types.CBufRet.f32 %5297, 0
  %5386 = call float @dx.op.binary.f32(i32 35, float %5383, float %5384)  ; FMax(a,b)
  %5387 = fsub fast float %5385, %5386
  %5388 = call float @dx.op.unary.f32(i32 7, float %5387)  ; Saturate(value)
  %5389 = fmul fast float %5388, %5359
  br label %5390

; <label>:5390                                    ; preds = %5366, %5360
  %5391 = phi float [ %5389, %5366 ], [ 0.000000e+00, %5360 ]
  %5392 = extractvalue %dx.types.CBufRet.f32 %5337, 2
  %5393 = extractvalue %dx.types.CBufRet.f32 %5362, 1
  %5394 = fadd fast float %5393, %5392
  %5395 = fcmp fast ogt float %5394, 0.000000e+00
  br i1 %5395, label %5396, label %5420

; <label>:5396                                    ; preds = %5390
  %5397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5398 = extractvalue %dx.types.CBufRet.f32 %5397, 0
  %5399 = extractvalue %dx.types.CBufRet.f32 %5397, 1
  %5400 = fsub fast float %5343, %5398
  %5401 = fsub fast float %5344, %5399
  %5402 = fcmp fast olt float %5400, 0.000000e+00
  %5403 = fcmp fast olt float %5401, 0.000000e+00
  %5404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5405 = extractvalue %dx.types.CBufRet.f32 %5404, 0
  %5406 = extractvalue %dx.types.CBufRet.f32 %5404, 1
  %5407 = extractvalue %dx.types.CBufRet.f32 %5404, 2
  %5408 = extractvalue %dx.types.CBufRet.f32 %5404, 3
  %5409 = select i1 %5402, float %5405, float %5407
  %5410 = select i1 %5403, float %5406, float %5408
  %5411 = fmul fast float %5409, %5400
  %5412 = fmul fast float %5410, %5401
  %5413 = call float @dx.op.unary.f32(i32 6, float %5411)  ; FAbs(value)
  %5414 = call float @dx.op.unary.f32(i32 6, float %5412)  ; FAbs(value)
  %5415 = extractvalue %dx.types.CBufRet.f32 %5297, 0
  %5416 = call float @dx.op.binary.f32(i32 35, float %5413, float %5414)  ; FMax(a,b)
  %5417 = fsub fast float %5415, %5416
  %5418 = call float @dx.op.unary.f32(i32 7, float %5417)  ; Saturate(value)
  %5419 = fmul fast float %5418, %5359
  br label %5420

; <label>:5420                                    ; preds = %5396, %5390, %5306
  %5421 = phi float [ 0.000000e+00, %5306 ], [ %5419, %5396 ], [ 0.000000e+00, %5390 ]
  %5422 = phi float [ 0.000000e+00, %5306 ], [ %5391, %5396 ], [ %5391, %5390 ]
  %5423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5424 = extractvalue %dx.types.CBufRet.f32 %5423, 1
  %5425 = call float @dx.op.unary.f32(i32 7, float %5424)  ; Saturate(value)
  %5426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.f32 %5426, 0
  %5428 = extractvalue %dx.types.CBufRet.f32 %5426, 1
  %5429 = fsub fast float %5325, %5427
  %5430 = fsub fast float %5329, %5428
  %5431 = fcmp fast olt float %5429, 0.000000e+00
  %5432 = fcmp fast olt float %5430, 0.000000e+00
  %5433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5434 = extractvalue %dx.types.CBufRet.f32 %5433, 0
  %5435 = extractvalue %dx.types.CBufRet.f32 %5433, 1
  %5436 = extractvalue %dx.types.CBufRet.f32 %5433, 2
  %5437 = extractvalue %dx.types.CBufRet.f32 %5433, 3
  %5438 = select i1 %5431, float %5434, float %5436
  %5439 = select i1 %5432, float %5435, float %5437
  %5440 = fmul fast float %5438, %5429
  %5441 = fmul fast float %5439, %5430
  %5442 = call float @dx.op.unary.f32(i32 6, float %5440)  ; FAbs(value)
  %5443 = call float @dx.op.unary.f32(i32 6, float %5441)  ; FAbs(value)
  %5444 = extractvalue %dx.types.CBufRet.f32 %5297, 0
  %5445 = call float @dx.op.binary.f32(i32 35, float %5442, float %5443)  ; FMax(a,b)
  %5446 = fsub fast float %5444, %5445
  %5447 = call float @dx.op.unary.f32(i32 7, float %5446)  ; Saturate(value)
  %5448 = call float @dx.op.binary.f32(i32 36, float %5447, float %5425)  ; FMin(a,b)
  %5449 = fmul fast float %5448, %5359
  %5450 = fsub fast float %5421, %5449
  %5451 = fsub fast float %5422, %5421
  %5452 = fsub fast float %5451, %5449
  %5453 = call float @dx.op.binary.f32(i32 35, float %5421, float %5422)  ; FMax(a,b)
  %5454 = call float @dx.op.binary.f32(i32 35, float %5449, float %5453)  ; FMax(a,b)
  %5455 = fcmp fast olt float %5454, 1.000000e+00
  br i1 %5455, label %5456, label %5854, !dx.controlflow.hints !94

; <label>:5456                                    ; preds = %5420
  %5457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5458 = extractvalue %dx.types.CBufRet.f32 %5457, 0
  %5459 = fcmp fast une float %5458, 0.000000e+00
  br i1 %5459, label %5460, label %5854, !dx.controlflow.hints !95

; <label>:5460                                    ; preds = %5456
  %5461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5462 = extractvalue %dx.types.CBufRet.f32 %5461, 0
  %5463 = extractvalue %dx.types.CBufRet.f32 %5461, 1
  %5464 = extractvalue %dx.types.CBufRet.f32 %5461, 2
  %5465 = extractvalue %dx.types.CBufRet.f32 %5461, 3
  %5466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5467 = extractvalue %dx.types.CBufRet.f32 %5466, 0
  %5468 = extractvalue %dx.types.CBufRet.f32 %5466, 1
  %5469 = extractvalue %dx.types.CBufRet.f32 %5466, 2
  %5470 = extractvalue %dx.types.CBufRet.f32 %5466, 3
  %5471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5472 = extractvalue %dx.types.CBufRet.f32 %5471, 0
  %5473 = extractvalue %dx.types.CBufRet.f32 %5471, 1
  %5474 = extractvalue %dx.types.CBufRet.f32 %5471, 2
  %5475 = extractvalue %dx.types.CBufRet.f32 %5471, 3
  %5476 = fmul fast float %5462, %5302
  %5477 = call float @dx.op.tertiary.f32(i32 46, float %5303, float %5463, float %5476)  ; FMad(a,b,c)
  %5478 = call float @dx.op.tertiary.f32(i32 46, float %5304, float %5464, float %5477)  ; FMad(a,b,c)
  %5479 = fadd fast float %5478, %5465
  %5480 = fmul fast float %5467, %5302
  %5481 = call float @dx.op.tertiary.f32(i32 46, float %5303, float %5468, float %5480)  ; FMad(a,b,c)
  %5482 = call float @dx.op.tertiary.f32(i32 46, float %5304, float %5469, float %5481)  ; FMad(a,b,c)
  %5483 = fadd fast float %5482, %5470
  %5484 = fmul fast float %5472, %5302
  %5485 = call float @dx.op.tertiary.f32(i32 46, float %5303, float %5473, float %5484)  ; FMad(a,b,c)
  %5486 = call float @dx.op.tertiary.f32(i32 46, float %5304, float %5474, float %5485)  ; FMad(a,b,c)
  %5487 = fadd fast float %5486, %5475
  %5488 = fcmp fast oge float %5479, 1.000000e+00
  %5489 = fcmp fast oge float %5483, 1.000000e+00
  %5490 = or i1 %5488, %5489
  %5491 = fcmp fast olt float %5479, 0.000000e+00
  %5492 = fcmp fast olt float %5483, 0.000000e+00
  %5493 = or i1 %5491, %5492
  %5494 = or i1 %5490, %5493
  br i1 %5494, label %5854, label %5495, !dx.controlflow.hints !96

; <label>:5495                                    ; preds = %5460
  %5496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5497 = extractvalue %dx.types.CBufRet.f32 %5496, 0
  %5498 = extractvalue %dx.types.CBufRet.f32 %5496, 1
  %5499 = extractvalue %dx.types.CBufRet.f32 %5496, 2
  %5500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5501 = extractvalue %dx.types.CBufRet.i32 %5500, 2
  %5502 = uitofp i32 %5501 to float
  %5503 = extractvalue %dx.types.CBufRet.i32 %5500, 3
  %5504 = uitofp i32 %5503 to float
  %5505 = extractvalue %dx.types.CBufRet.f32 %5496, 3
  %5506 = fmul fast float %5505, 2.000000e+00
  %5507 = fsub fast float %5479, %5497
  %5508 = fsub fast float %5483, %5498
  %5509 = fmul fast float %5506, %5507
  %5510 = fmul fast float %5506, %5508
  %5511 = fdiv fast float 1.000000e+00, %5285
  %5512 = fmul fast float %5510, %5511
  %5513 = call float @dx.op.unary.f32(i32 6, float %5512)  ; FAbs(value)
  %5514 = fmul fast float %5499, %5304
  %5515 = fmul fast float %5514, %5506
  %5516 = call float @dx.op.unary.f32(i32 6, float %5515)  ; FAbs(value)
  %5517 = call float @dx.op.unary.f32(i32 6, float %5509)  ; FAbs(value)
  %5518 = call float @dx.op.binary.f32(i32 35, float %5516, float %5513)  ; FMax(a,b)
  %5519 = call float @dx.op.binary.f32(i32 35, float %5517, float %5518)  ; FMax(a,b)
  %5520 = fmul fast float %5519, 2.000000e+00
  %5521 = call float @dx.op.unary.f32(i32 23, float %5520)  ; Log(value)
  %5522 = call float @dx.op.binary.f32(i32 35, float %5521, float %5502)  ; FMax(a,b)
  %5523 = call float @dx.op.unary.f32(i32 22, float %5522)  ; Frc(value)
  %5524 = fadd fast float %5523, 0xBFEA666660000000
  %5525 = fmul fast float %5524, 8.000000e+00
  %5526 = call float @dx.op.unary.f32(i32 7, float %5525)  ; Saturate(value)
  %5527 = call float @dx.op.unary.f32(i32 27, float %5522)  ; Round_ni(value)
  %5528 = fadd fast float %5527, %5526
  %5529 = call float @dx.op.binary.f32(i32 36, float %5528, float %5504)  ; FMin(a,b)
  %5530 = call float @dx.op.unary.f32(i32 27, float %5529)  ; Round_ni(value)
  %5531 = fsub fast float -0.000000e+00, %5530
  %5532 = call float @dx.op.unary.f32(i32 21, float %5531)  ; Exp(value)
  %5533 = fmul fast float %5532, %5506
  %5534 = fmul fast float %5533, %5479
  %5535 = fmul fast float %5533, %5483
  %5536 = fmul fast float %5534, 2.500000e-01
  %5537 = fmul fast float %5535, 2.500000e-01
  %5538 = fadd fast float %5536, 5.000000e-01
  %5539 = fadd fast float %5537, 5.000000e-01
  %5540 = fsub fast float %5504, %5502
  %5541 = fptoui float %5540 to i32
  %5542 = add i32 %5541, 320
  %5543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5542)  ; CBufferLoadLegacy(handle,regIndex)
  %5544 = extractvalue %dx.types.CBufRet.f32 %5543, 0
  %5545 = extractvalue %dx.types.CBufRet.f32 %5543, 1
  %5546 = fcmp fast une float %5529, %5504
  %5547 = fsub fast float %5479, %5544
  %5548 = fsub fast float %5483, %5545
  %5549 = call float @dx.op.unary.f32(i32 6, float %5547)  ; FAbs(value)
  %5550 = call float @dx.op.unary.f32(i32 6, float %5548)  ; FAbs(value)
  %5551 = fmul fast float %5549, %5533
  %5552 = fmul fast float %5550, %5533
  %5553 = fcmp fast olt float %5551, 1.000000e+00
  %5554 = fcmp fast olt float %5552, 1.000000e+00
  %5555 = and i1 %5553, %5554
  %5556 = or i1 %5546, %5555
  br i1 %5556, label %5557, label %5854, !dx.controlflow.hints !97

; <label>:5557                                    ; preds = %5495
  %5558 = fmul fast float %5535, 5.000000e-01
  %5559 = fmul fast float %5534, 5.000000e-01
  %5560 = fadd fast float %5558, 5.000000e-01
  %5561 = fadd fast float %5559, 5.000000e-01
  %5562 = sitofp i32 %5501 to float
  %5563 = fsub fast float %5529, %5562
  %5564 = call float @dx.op.unary.f32(i32 27, float %5563)  ; Round_ni(value)
  %5565 = call float @dx.op.unary.f32(i32 22, float %5529)  ; Frc(value)
  %5566 = call float @dx.op.unary.f32(i32 22, float %5561)  ; Frc(value)
  %5567 = call float @dx.op.unary.f32(i32 22, float %5560)  ; Frc(value)
  %5568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5566, float %5567, float %5564, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5569 = extractvalue %dx.types.ResRet.f32 %5568, 0
  %5570 = extractvalue %dx.types.ResRet.f32 %5568, 1
  %5571 = extractvalue %dx.types.ResRet.f32 %5568, 2
  %5572 = extractvalue %dx.types.ResRet.f32 %5568, 3
  %5573 = fcmp fast ogt float %5565, 0.000000e+00
  br i1 %5573, label %5574, label %5595, !dx.controlflow.hints !98

; <label>:5574                                    ; preds = %5557
  %5575 = fadd fast float %5564, 1.000000e+00
  %5576 = call float @dx.op.unary.f32(i32 22, float %5538)  ; Frc(value)
  %5577 = call float @dx.op.unary.f32(i32 22, float %5539)  ; Frc(value)
  %5578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5576, float %5577, float %5575, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5579 = extractvalue %dx.types.ResRet.f32 %5578, 0
  %5580 = extractvalue %dx.types.ResRet.f32 %5578, 1
  %5581 = extractvalue %dx.types.ResRet.f32 %5578, 2
  %5582 = extractvalue %dx.types.ResRet.f32 %5578, 3
  %5583 = fsub fast float %5579, %5569
  %5584 = fsub fast float %5580, %5570
  %5585 = fsub fast float %5581, %5571
  %5586 = fsub fast float %5582, %5572
  %5587 = fmul fast float %5583, %5565
  %5588 = fmul fast float %5584, %5565
  %5589 = fmul fast float %5585, %5565
  %5590 = fmul fast float %5586, %5565
  %5591 = fadd fast float %5587, %5569
  %5592 = fadd fast float %5588, %5570
  %5593 = fadd fast float %5589, %5571
  %5594 = fadd fast float %5590, %5572
  br label %5595

; <label>:5595                                    ; preds = %5574, %5557
  %5596 = phi float [ %5591, %5574 ], [ %5569, %5557 ]
  %5597 = phi float [ %5592, %5574 ], [ %5570, %5557 ]
  %5598 = phi float [ %5593, %5574 ], [ %5571, %5557 ]
  %5599 = phi float [ %5594, %5574 ], [ %5572, %5557 ]
  %5600 = fadd fast float %5596, -5.000000e-01
  %5601 = fadd fast float %5598, -5.000000e-01
  %5602 = fmul fast float %5600, 0xBFD5555560000000
  %5603 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5601, float %5602)  ; FMad(a,b,c)
  %5604 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5597, float 0.000000e+00)  ; FMad(a,b,c)
  %5605 = fadd fast float %5604, %5599
  %5606 = fmul fast float %5600, -7.500000e-01
  %5607 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5601, float %5606)  ; FMad(a,b,c)
  %5608 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5597, float 0.000000e+00)  ; FMad(a,b,c)
  %5609 = fadd fast float %5608, %5599
  %5610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5611 = extractvalue %dx.types.CBufRet.f32 %5610, 0
  %5612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5613 = extractvalue %dx.types.CBufRet.f32 %5612, 0
  %5614 = extractvalue %dx.types.CBufRet.f32 %5612, 1
  %5615 = extractvalue %dx.types.CBufRet.f32 %5612, 2
  %5616 = extractvalue %dx.types.CBufRet.f32 %5612, 3
  %5617 = fsub fast float %5613, %5603
  %5618 = fsub fast float %5614, %5605
  %5619 = fsub fast float %5615, %5607
  %5620 = fsub fast float %5616, %5609
  %5621 = fmul fast float %5617, %5611
  %5622 = fmul fast float %5618, %5611
  %5623 = fmul fast float %5619, %5611
  %5624 = fmul fast float %5620, %5611
  %5625 = fadd fast float %5621, %5603
  %5626 = fadd fast float %5622, %5605
  %5627 = fadd fast float %5623, %5607
  %5628 = fadd fast float %5624, %5609
  %5629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5630 = extractvalue %dx.types.ResRet.i32 %5629, 0
  %5631 = and i32 %5630, 536870911
  %5632 = uitofp i32 %5631 to float
  %5633 = fmul fast float %5632, %5479
  %5634 = fmul fast float %5632, %5483
  %5635 = fptoui float %5633 to i32
  %5636 = fptoui float %5634 to i32
  %5637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5638 = extractvalue %dx.types.ResRet.i32 %5637, 0
  %5639 = and i32 %5638, 31
  %5640 = lshr i32 %5635, %5639
  %5641 = lshr i32 %5636, %5639
  %5642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5643 = extractvalue %dx.types.ResRet.i32 %5642, 0
  %5644 = and i32 %5643, 31
  %5645 = shl i32 1, %5644
  %5646 = call i32 @dx.op.binary.i32(i32 40, i32 %5645, i32 4)  ; UMin(a,b)
  %5647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5648 = extractvalue %dx.types.ResRet.i32 %5647, 0
  %5649 = extractvalue %dx.types.ResRet.i32 %5647, 1
  %5650 = icmp eq i32 %5646, 0
  br i1 %5650, label %5692, label %5651

; <label>:5651                                    ; preds = %5595
  br label %5652

; <label>:5652                                    ; preds = %5680, %5651
  %5653 = phi i32 [ %5683, %5680 ], [ 0, %5651 ]
  %5654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5655 = extractvalue %dx.types.ResRet.i32 %5654, 0
  %5656 = lshr i32 %5655, 16
  %5657 = and i32 %5656, 31
  %5658 = shl i32 %5641, %5657
  %5659 = add i32 %5658, %5640
  %5660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5661 = extractvalue %dx.types.ResRet.i32 %5660, 0
  %5662 = and i32 %5661, 31
  %5663 = shl i32 %5659, %5662
  %5664 = add i32 %5663, %5653
  %5665 = shl i32 %5664, 2
  %5666 = add i32 %5665, 32
  %5667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5666, i32 undef)  ; BufferLoad(srv,index,wot)
  %5668 = extractvalue %dx.types.ResRet.i32 %5667, 0
  %5669 = icmp slt i32 %5668, 0
  %5670 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5653
  %5671 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5653
  %5672 = bitcast float* %5670 to i32*
  %5673 = bitcast float* %5671 to i32*
  br i1 %5669, label %5674, label %5680

; <label>:5674                                    ; preds = %5652
  %5675 = and i32 %5668, 1073741823
  %5676 = add nuw nsw i32 %5675, 20
  %5677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5676, i32 undef)  ; BufferLoad(srv,index,wot)
  %5678 = extractvalue %dx.types.ResRet.i32 %5677, 0
  %5679 = extractvalue %dx.types.ResRet.i32 %5677, 1
  br label %5680

; <label>:5680                                    ; preds = %5674, %5652
  %5681 = phi i32 [ %5678, %5674 ], [ %5648, %5652 ]
  %5682 = phi i32 [ %5679, %5674 ], [ %5649, %5652 ]
  store i32 %5681, i32* %5672, align 4
  store i32 %5682, i32* %5673, align 4
  %5683 = add nuw i32 %5653, 1
  %5684 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5685 = extractvalue %dx.types.CBufRet.i32 %5684, 2
  %5686 = icmp eq i32 %5685, 0
  %5687 = icmp ugt i32 %5668, -1073741825
  %5688 = and i1 %5687, %5686
  %5689 = icmp ult i32 %5683, %5646
  %5690 = and i1 %5688, %5689
  br i1 %5690, label %5652, label %5691

; <label>:5691                                    ; preds = %5680
  br label %5692

; <label>:5692                                    ; preds = %5691, %5595
  %5693 = phi i32 [ 0, %5595 ], [ %5683, %5691 ]
  %5694 = extractvalue %dx.types.CBufRet.f32 %5457, 2
  %5695 = fptoui float %5694 to i32
  %5696 = icmp eq i32 %5695, 0
  br i1 %5696, label %5748, label %5697

; <label>:5697                                    ; preds = %5692
  br label %5698

; <label>:5698                                    ; preds = %5743, %5697
  %5699 = phi i32 [ %5744, %5743 ], [ %5693, %5697 ]
  %5700 = phi i32 [ %5745, %5743 ], [ 0, %5697 ]
  %5701 = lshr i32 %5700, 2
  %5702 = and i32 %5700, 3
  %5703 = add nuw nsw i32 %5701, 83
  %5704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5703)  ; CBufferLoadLegacy(handle,regIndex)
  %5705 = extractvalue %dx.types.CBufRet.i32 %5704, 0
  %5706 = extractvalue %dx.types.CBufRet.i32 %5704, 1
  %5707 = extractvalue %dx.types.CBufRet.i32 %5704, 2
  %5708 = extractvalue %dx.types.CBufRet.i32 %5704, 3
  %5709 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5705, i32* %5709, align 4
  %5710 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5706, i32* %5710, align 4
  %5711 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5707, i32* %5711, align 4
  %5712 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5708, i32* %5712, align 4
  %5713 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5702
  %5714 = load i32, i32* %5713, align 4, !tbaa !99, !noalias !103
  %5715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5716 = extractvalue %dx.types.ResRet.i32 %5715, 0
  %5717 = lshr i32 %5716, 16
  %5718 = and i32 %5717, 31
  %5719 = shl i32 %5641, %5718
  %5720 = add i32 %5719, %5640
  %5721 = shl i32 %5720, 2
  %5722 = add i32 %5721, %5714
  %5723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5722, i32 undef)  ; BufferLoad(srv,index,wot)
  %5724 = extractvalue %dx.types.ResRet.i32 %5723, 0
  %5725 = icmp eq i32 %5724, 0
  br i1 %5725, label %5743, label %5726

; <label>:5726                                    ; preds = %5698
  %5727 = icmp slt i32 %5724, 0
  %5728 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5699
  %5729 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5699
  %5730 = bitcast float* %5728 to i32*
  %5731 = bitcast float* %5729 to i32*
  br i1 %5727, label %5732, label %5739

; <label>:5732                                    ; preds = %5726
  %5733 = and i32 %5724, 1073741823
  %5734 = add i32 %5714, 20
  %5735 = add i32 %5734, %5733
  %5736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5735, i32 undef)  ; BufferLoad(srv,index,wot)
  %5737 = extractvalue %dx.types.ResRet.i32 %5736, 0
  %5738 = extractvalue %dx.types.ResRet.i32 %5736, 1
  br label %5739

; <label>:5739                                    ; preds = %5732, %5726
  %5740 = phi i32 [ %5737, %5732 ], [ %5648, %5726 ]
  %5741 = phi i32 [ %5738, %5732 ], [ %5649, %5726 ]
  store i32 %5740, i32* %5730, align 4
  store i32 %5741, i32* %5731, align 4
  %5742 = add i32 %5699, 1
  br label %5743

; <label>:5743                                    ; preds = %5739, %5698
  %5744 = phi i32 [ %5699, %5698 ], [ %5742, %5739 ]
  %5745 = add nuw i32 %5700, 1
  %5746 = icmp eq i32 %5745, %5695
  br i1 %5746, label %5747, label %5698

; <label>:5747                                    ; preds = %5743
  br label %5748

; <label>:5748                                    ; preds = %5747, %5692
  %5749 = phi i32 [ %5693, %5692 ], [ %5744, %5747 ]
  %5750 = icmp eq i32 %5749, 1
  %5751 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 0
  %5752 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  br i1 %5750, label %5753, label %5756

; <label>:5753                                    ; preds = %5748
  %5754 = load float, float* %5751, align 4
  %5755 = load float, float* %5752, align 4
  br label %5783

; <label>:5756                                    ; preds = %5748
  %5757 = load float, float* %5751, align 4
  %5758 = load float, float* %5752, align 4
  %5759 = fdiv fast float 1.000000e+00, %5758
  %5760 = fsub fast float %5757, %5759
  %5761 = icmp ugt i32 %5749, 1
  br i1 %5761, label %5762, label %5778

; <label>:5762                                    ; preds = %5756
  br label %5763

; <label>:5763                                    ; preds = %5763, %5762
  %5764 = phi float [ %5773, %5763 ], [ %5760, %5762 ]
  %5765 = phi float [ %5774, %5763 ], [ %5757, %5762 ]
  %5766 = phi i32 [ %5775, %5763 ], [ 1, %5762 ]
  %5767 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5766
  %5768 = load float, float* %5767, align 4
  %5769 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5766
  %5770 = load float, float* %5769, align 4
  %5771 = fdiv fast float 1.000000e+00, %5770
  %5772 = fsub fast float %5768, %5771
  %5773 = call float @dx.op.binary.f32(i32 36, float %5764, float %5772)  ; FMin(a,b)
  %5774 = call float @dx.op.binary.f32(i32 35, float %5765, float %5768)  ; FMax(a,b)
  %5775 = add nuw i32 %5766, 1
  %5776 = icmp eq i32 %5775, %5749
  br i1 %5776, label %5777, label %5763

; <label>:5777                                    ; preds = %5763
  br label %5778

; <label>:5778                                    ; preds = %5777, %5756
  %5779 = phi float [ %5760, %5756 ], [ %5773, %5777 ]
  %5780 = phi float [ %5757, %5756 ], [ %5774, %5777 ]
  %5781 = fsub fast float %5780, %5779
  %5782 = fdiv fast float 1.000000e+00, %5781
  br label %5783

; <label>:5783                                    ; preds = %5778, %5753
  %5784 = phi float [ %5754, %5753 ], [ %5780, %5778 ]
  %5785 = phi float [ %5755, %5753 ], [ %5782, %5778 ]
  %5786 = fadd fast float %5487, %5784
  %5787 = fmul fast float %5786, %5785
  %5788 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  %5789 = fmul fast float %5788, 2.000000e+00
  %5790 = fsub fast float 1.000000e+00, %5789
  %5791 = fmul fast float %5625, %5625
  %5792 = fsub fast float %5626, %5791
  %5793 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5792)  ; FMax(a,b)
  %5794 = fdiv fast float 1.000000e+00, %5793
  %5795 = fmul fast float %5626, %5625
  %5796 = fsub fast float %5627, %5795
  %5797 = fsub fast float %5790, %5625
  %5798 = fmul fast float %5790, %5790
  %5799 = fsub fast float %5798, %5626
  %5800 = fmul fast float %5794, %5796
  %5801 = fmul fast float %5800, %5797
  %5802 = fsub fast float %5799, %5801
  %5803 = fmul fast float %5626, %5626
  %5804 = fsub fast float %5628, %5803
  %5805 = fmul fast float %5796, %5796
  %5806 = fmul fast float %5805, %5794
  %5807 = fsub fast float %5804, %5806
  %5808 = fdiv fast float %5802, %5807
  %5809 = fmul fast float %5808, %5796
  %5810 = fsub fast float %5797, %5809
  %5811 = fmul fast float %5810, %5794
  %5812 = fmul fast float %5811, %5625
  %5813 = fsub fast float 1.000000e+00, %5812
  %5814 = fmul fast float %5808, %5626
  %5815 = fsub fast float %5813, %5814
  %5816 = fmul fast float %5811, %5811
  %5817 = fmul fast float %5808, 4.000000e+00
  %5818 = fmul fast float %5817, %5815
  %5819 = fsub fast float %5816, %5818
  %5820 = call float @dx.op.unary.f32(i32 24, float %5819)  ; Sqrt(value)
  %5821 = fcmp fast oge float %5811, 0.000000e+00
  %5822 = fsub fast float -0.000000e+00, %5820
  %5823 = select i1 %5821, float %5822, float %5820
  %5824 = fsub fast float %5823, %5811
  %5825 = fdiv fast float %5824, %5808
  %5826 = fdiv fast float %5815, %5824
  %5827 = fmul fast float %5825, 5.000000e-01
  %5828 = fmul fast float %5826, 2.000000e+00
  %5829 = select i1 %5821, float %5827, float %5828
  %5830 = select i1 %5821, float %5828, float %5827
  %5831 = call float @dx.op.binary.f32(i32 35, float %5829, float %5830)  ; FMax(a,b)
  %5832 = call float @dx.op.binary.f32(i32 36, float %5829, float %5830)  ; FMin(a,b)
  %5833 = fcmp fast ogt float %5790, %5831
  %5834 = fsub fast float %5790, %5832
  %5835 = fsub fast float %5790, %5831
  %5836 = fsub fast float %5831, %5832
  %5837 = select i1 %5833, float %5835, float %5836
  %5838 = fmul float %5834, %5837
  %5839 = select i1 %5833, float %5832, float %5790
  %5840 = fcmp fast ogt float %5790, %5832
  %5841 = fmul fast float %5839, %5831
  %5842 = fadd fast float %5839, %5831
  %5843 = fmul fast float %5842, %5625
  %5844 = fadd fast float %5841, %5626
  %5845 = fsub fast float %5844, %5843
  %5846 = fdiv fast float %5845, %5838
  %5847 = select i1 %5840, float %5846, float 0.000000e+00
  %5848 = fsub fast float 1.000000e+00, %5847
  %5849 = select i1 %5833, float %5848, float %5847
  %5850 = call float @dx.op.unary.f32(i32 7, float %5849)  ; Saturate(value)
  %5851 = extractvalue %dx.types.CBufRet.f32 %5610, 3
  %5852 = fmul fast float %5851, %5850
  %5853 = fsub fast float 1.000000e+00, %5852
  br label %5854

; <label>:5854                                    ; preds = %5783, %5495, %5460, %5456, %5420
  %5855 = phi float [ 1.000000e+00, %5420 ], [ %5853, %5783 ], [ 1.000000e+00, %5460 ], [ 1.000000e+00, %5495 ], [ 1.000000e+00, %5456 ]
  %5856 = fcmp fast ogt float %5452, 0.000000e+00
  br i1 %5856, label %5857, label %5865, !dx.controlflow.hints !112

; <label>:5857                                    ; preds = %5854
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 2
  %5860 = fadd fast float %5859, %5333
  %5861 = call float @dx.op.binary.f32(i32 35, float %5860, float 0.000000e+00)  ; FMax(a,b)
  %5862 = fadd fast float %5861, 0x3F10000000000000
  %5863 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5351, float %5352, float undef, float undef, i32 0, i32 0, i32 undef, float %5862)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5864 = extractvalue %dx.types.ResRet.f32 %5863, 0
  br label %5865

; <label>:5865                                    ; preds = %5857, %5854
  %5866 = phi float [ %5864, %5857 ], [ 1.000000e+00, %5854 ]
  %5867 = fcmp fast ogt float %5450, 0.000000e+00
  br i1 %5867, label %5868, label %5876, !dx.controlflow.hints !113

; <label>:5868                                    ; preds = %5865
  %5869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5870 = extractvalue %dx.types.CBufRet.f32 %5869, 1
  %5871 = fadd fast float %5870, %5333
  %5872 = call float @dx.op.binary.f32(i32 35, float %5871, float 0.000000e+00)  ; FMax(a,b)
  %5873 = fadd fast float %5872, 0x3F10000000000000
  %5874 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5343, float %5344, float undef, float undef, i32 0, i32 0, i32 undef, float %5873)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5875 = extractvalue %dx.types.ResRet.f32 %5874, 0
  br label %5876

; <label>:5876                                    ; preds = %5868, %5865
  %5877 = phi float [ %5875, %5868 ], [ 1.000000e+00, %5865 ]
  %5878 = fcmp fast ogt float %5449, 0.000000e+00
  br i1 %5878, label %5879, label %5891, !dx.controlflow.hints !114

; <label>:5879                                    ; preds = %5876
  %5880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.f32 %5880, 0
  %5882 = fadd fast float %5881, %5333
  %5883 = call float @dx.op.binary.f32(i32 35, float %5882, float 0.000000e+00)  ; FMax(a,b)
  %5884 = fadd fast float %5883, 0x3F10000000000000
  br i1 %5336, label %5885, label %5888, !dx.controlflow.hints !115

; <label>:5885                                    ; preds = %5879
  %5886 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %5325, float %5329, float undef, float undef, i32 0, i32 0, i32 undef, float %5884)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5887 = extractvalue %dx.types.ResRet.f32 %5886, 0
  br label %5891

; <label>:5888                                    ; preds = %5879
  %5889 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5325, float %5329, float undef, float undef, i32 0, i32 0, i32 undef, float %5884)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5890 = extractvalue %dx.types.ResRet.f32 %5889, 0
  br label %5891

; <label>:5891                                    ; preds = %5888, %5885, %5876
  %5892 = phi float [ %5887, %5885 ], [ %5890, %5888 ], [ 1.000000e+00, %5876 ]
  %5893 = fsub fast float %5866, %5855
  %5894 = fmul fast float %5893, %5422
  %5895 = fadd fast float %5894, %5855
  %5896 = fsub fast float %5877, %5895
  %5897 = fmul fast float %5896, %5421
  %5898 = fadd fast float %5897, %5895
  %5899 = fsub fast float %5892, %5898
  %5900 = fmul fast float %5899, %5449
  %5901 = fadd fast float %5900, %5898
  %5902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5903 = extractvalue %dx.types.CBufRet.f32 %5902, 2
  %5904 = fcmp fast ogt float %5903, 0.000000e+00
  br i1 %5904, label %5905, label %5945, !dx.controlflow.hints !116

; <label>:5905                                    ; preds = %5891
  %5906 = fcmp fast ugt float %5903, 0.000000e+00
  br i1 %5906, label %5907, label %5942

; <label>:5907                                    ; preds = %5905
  %5908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5909 = extractvalue %dx.types.CBufRet.f32 %5908, 0
  %5910 = extractvalue %dx.types.CBufRet.f32 %5908, 1
  %5911 = extractvalue %dx.types.CBufRet.f32 %5908, 2
  %5912 = extractvalue %dx.types.CBufRet.f32 %5908, 3
  %5913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5914 = extractvalue %dx.types.CBufRet.f32 %5913, 0
  %5915 = extractvalue %dx.types.CBufRet.f32 %5913, 1
  %5916 = extractvalue %dx.types.CBufRet.f32 %5913, 2
  %5917 = extractvalue %dx.types.CBufRet.f32 %5913, 3
  %5918 = extractvalue %dx.types.CBufRet.f32 %5902, 0
  %5919 = extractvalue %dx.types.CBufRet.f32 %5902, 1
  %5920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5921 = extractvalue %dx.types.CBufRet.f32 %5920, 0
  %5922 = extractvalue %dx.types.CBufRet.f32 %5920, 1
  %5923 = extractvalue %dx.types.CBufRet.f32 %5920, 2
  %5924 = fadd fast float %5921, %5302
  %5925 = fadd fast float %5922, %5303
  %5926 = fadd fast float %5923, %5304
  %5927 = fmul fast float %5924, %5909
  %5928 = call float @dx.op.tertiary.f32(i32 46, float %5910, float %5925, float %5927)  ; FMad(a,b,c)
  %5929 = call float @dx.op.tertiary.f32(i32 46, float %5911, float %5926, float %5928)  ; FMad(a,b,c)
  %5930 = fadd fast float %5929, %5912
  %5931 = fmul fast float %5924, %5914
  %5932 = call float @dx.op.tertiary.f32(i32 46, float %5915, float %5925, float %5931)  ; FMad(a,b,c)
  %5933 = call float @dx.op.tertiary.f32(i32 46, float %5916, float %5926, float %5932)  ; FMad(a,b,c)
  %5934 = fadd fast float %5933, %5917
  %5935 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5930, float %5934, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5936 = extractvalue %dx.types.ResRet.f32 %5935, 0
  %5937 = fmul fast float %5936, %5919
  %5938 = fadd fast float %5937, %5918
  %5939 = call float @dx.op.unary.f32(i32 7, float %5938)  ; Saturate(value)
  %5940 = fmul fast float %5939, %5903
  %5941 = fsub fast float 1.000000e+00, %5940
  br label %5942

; <label>:5942                                    ; preds = %5907, %5905
  %5943 = phi float [ %5941, %5907 ], [ 1.000000e+00, %5905 ]
  %5944 = fmul fast float %5943, %5901
  br label %5945

; <label>:5945                                    ; preds = %5942, %5891, %5282
  %5946 = phi float [ 1.000000e+00, %5282 ], [ %5944, %5942 ], [ %5901, %5891 ]
  %5947 = call float @dx.op.binary.f32(i32 36, float %5946, float %5946)  ; FMin(a,b)
  %5948 = call float @dx.op.binary.f32(i32 36, float %5946, float %5947)  ; FMin(a,b)
  %5949 = fcmp fast ogt float %5948, 0.000000e+00
  br i1 %5949, label %5950, label %6110, !dx.controlflow.hints !117

; <label>:5950                                    ; preds = %5945
  %5951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5952 = extractvalue %dx.types.CBufRet.f32 %5951, 0
  %5953 = extractvalue %dx.types.CBufRet.f32 %5951, 1
  %5954 = extractvalue %dx.types.CBufRet.f32 %5951, 2
  %5955 = extractvalue %dx.types.CBufRet.f32 %5951, 3
  %5956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5957 = extractvalue %dx.types.CBufRet.f32 %5956, 0
  %5958 = extractvalue %dx.types.CBufRet.f32 %5956, 1
  %5959 = extractvalue %dx.types.CBufRet.f32 %5956, 2
  %5960 = extractvalue %dx.types.CBufRet.f32 %5956, 3
  %5961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5962 = extractvalue %dx.types.CBufRet.f32 %5961, 0
  %5963 = extractvalue %dx.types.CBufRet.f32 %5961, 1
  %5964 = extractvalue %dx.types.CBufRet.f32 %5961, 2
  %5965 = extractvalue %dx.types.CBufRet.f32 %5961, 3
  %5966 = fmul fast float %5952, %5302
  %5967 = call float @dx.op.tertiary.f32(i32 46, float %5303, float %5953, float %5966)  ; FMad(a,b,c)
  %5968 = call float @dx.op.tertiary.f32(i32 46, float %5304, float %5954, float %5967)  ; FMad(a,b,c)
  %5969 = fadd fast float %5968, %5955
  %5970 = fmul fast float %5957, %5302
  %5971 = call float @dx.op.tertiary.f32(i32 46, float %5303, float %5958, float %5970)  ; FMad(a,b,c)
  %5972 = call float @dx.op.tertiary.f32(i32 46, float %5304, float %5959, float %5971)  ; FMad(a,b,c)
  %5973 = fadd fast float %5972, %5960
  %5974 = fmul fast float %5962, %5302
  %5975 = call float @dx.op.tertiary.f32(i32 46, float %5303, float %5963, float %5974)  ; FMad(a,b,c)
  %5976 = call float @dx.op.tertiary.f32(i32 46, float %5304, float %5964, float %5975)  ; FMad(a,b,c)
  %5977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5978 = extractvalue %dx.types.CBufRet.f32 %5977, 0
  %5979 = extractvalue %dx.types.CBufRet.f32 %5977, 1
  %5980 = extractvalue %dx.types.CBufRet.f32 %5977, 3
  %5981 = fmul fast float %5980, %5969
  %5982 = fmul fast float %5980, %5973
  %5983 = fadd fast float %5981, %5978
  %5984 = fadd fast float %5982, %5979
  %5985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5986 = extractvalue %dx.types.CBufRet.f32 %5985, 0
  %5987 = extractvalue %dx.types.CBufRet.f32 %5985, 1
  %5988 = fsub fast float %5983, %5986
  %5989 = fsub fast float %5984, %5987
  %5990 = fcmp fast olt float %5988, 0.000000e+00
  %5991 = fcmp fast olt float %5989, 0.000000e+00
  %5992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5993 = extractvalue %dx.types.CBufRet.f32 %5992, 0
  %5994 = extractvalue %dx.types.CBufRet.f32 %5992, 1
  %5995 = extractvalue %dx.types.CBufRet.f32 %5992, 2
  %5996 = extractvalue %dx.types.CBufRet.f32 %5992, 3
  %5997 = select i1 %5990, float %5993, float %5995
  %5998 = select i1 %5991, float %5994, float %5996
  %5999 = fmul fast float %5997, %5988
  %6000 = fmul fast float %5998, %5989
  %6001 = call float @dx.op.unary.f32(i32 6, float %5999)  ; FAbs(value)
  %6002 = call float @dx.op.unary.f32(i32 6, float %6000)  ; FAbs(value)
  %6003 = extractvalue %dx.types.CBufRet.f32 %5297, 0
  %6004 = call float @dx.op.binary.f32(i32 35, float %6001, float %6002)  ; FMax(a,b)
  %6005 = fsub fast float %6003, %6004
  %6006 = call float @dx.op.unary.f32(i32 7, float %6005)  ; Saturate(value)
  %6007 = fcmp fast ogt float %6006, 0.000000e+00
  br i1 %6007, label %6008, label %6049, !dx.controlflow.hints !118

; <label>:6008                                    ; preds = %5950
  %6009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %5983, float %5984, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6010 = extractvalue %dx.types.ResRet.f32 %6009, 1
  %6011 = fcmp fast ogt float %6010, 0.000000e+00
  br i1 %6011, label %6012, label %6044

; <label>:6012                                    ; preds = %6008
  %6013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %5983, float %5984, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6014 = extractvalue %dx.types.ResRet.f32 %6013, 0
  %6015 = extractvalue %dx.types.ResRet.f32 %6013, 1
  %6016 = extractvalue %dx.types.ResRet.f32 %6013, 2
  %6017 = extractvalue %dx.types.ResRet.f32 %6013, 3
  %6018 = fsub fast float 1.000000e+00, %5965
  %6019 = fsub fast float %6018, %5976
  %6020 = fmul fast float %6019, 0x400921FB60000000
  %6021 = fadd fast float %6020, 0x3FF921FB60000000
  %6022 = call float @dx.op.unary.f32(i32 13, float %6021)  ; Sin(value)
  %6023 = fadd fast float %6022, -1.000000e+00
  %6024 = fmul fast float %6023, 0x3FD45F3060000000
  %6025 = fmul fast float %6019, 0x401921FB60000000
  %6026 = fadd fast float %6025, 0x400921FB60000000
  %6027 = call float @dx.op.unary.f32(i32 13, float %6026)  ; Sin(value)
  %6028 = fadd fast float %6027, 0x3E7777A5C0000000
  %6029 = fmul fast float %6028, 0x3FC45F3060000000
  %6030 = fmul fast float %6019, 0x4022D97C80000000
  %6031 = fadd fast float %6030, 0x4012D97C80000000
  %6032 = call float @dx.op.unary.f32(i32 13, float %6031)  ; Sin(value)
  %6033 = fadd fast float %6032, 1.000000e+00
  %6034 = fmul fast float %6033, 0x3FBB2995E0000000
  %6035 = fmul fast float %6019, 0x402921FB60000000
  %6036 = fadd fast float %6035, 0x401921FB60000000
  %6037 = call float @dx.op.unary.f32(i32 13, float %6036)  ; Sin(value)
  %6038 = fadd fast float %6037, 0xBE8777A5C0000000
  %6039 = fmul fast float %6038, 0x3FB45F3060000000
  %6040 = call float @dx.op.dot4.f32(i32 56, float %6014, float %6015, float %6016, float %6017, float %6024, float %6029, float %6034, float %6039)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6041 = fmul fast float %6040, 0xBFF7154760000000
  %6042 = call float @dx.op.unary.f32(i32 21, float %6041)  ; Exp(value)
  %6043 = call float @dx.op.unary.f32(i32 7, float %6042)  ; Saturate(value)
  br label %6044

; <label>:6044                                    ; preds = %6012, %6008
  %6045 = phi float [ %6043, %6012 ], [ 1.000000e+00, %6008 ]
  %6046 = fadd fast float %6045, -1.000000e+00
  %6047 = fmul fast float %6046, %6006
  %6048 = fadd fast float %6047, 1.000000e+00
  br label %6049

; <label>:6049                                    ; preds = %6044, %5950
  %6050 = phi float [ %6048, %6044 ], [ 1.000000e+00, %5950 ]
  %6051 = fmul fast float %6050, %5946
  %6052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6053 = extractvalue %dx.types.CBufRet.f32 %6052, 0
  %6054 = extractvalue %dx.types.CBufRet.f32 %6052, 1
  %6055 = extractvalue %dx.types.CBufRet.f32 %6052, 2
  %6056 = fadd fast float %6053, %191
  %6057 = fadd fast float %6054, %192
  %6058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6059 = extractvalue %dx.types.CBufRet.f32 %6058, 1
  %6060 = fsub fast float -0.000000e+00, %6056
  %6061 = fsub fast float -0.000000e+00, %6057
  %6062 = fsub fast float %5066, %6055
  %6063 = fadd fast float %6062, %6059
  %6064 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6060, float %6061, float %6063)  ; Dot3(ax,ay,az,bx,by,bz)
  %6065 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5283, float %5284, float %5285)  ; Dot3(ax,ay,az,bx,by,bz)
  %6066 = fdiv fast float 1.000000e+00, %6065
  %6067 = fmul fast float %6066, %6064
  %6068 = fmul fast float %5283, %6067
  %6069 = fmul fast float %5284, %6067
  %6070 = fadd fast float %6068, %6056
  %6071 = fadd fast float %6069, %6057
  %6072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6073 = extractvalue %dx.types.CBufRet.f32 %6072, 0
  %6074 = extractvalue %dx.types.CBufRet.f32 %6072, 1
  %6075 = fsub fast float %6070, %6073
  %6076 = fsub fast float %6071, %6074
  %6077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6078 = extractvalue %dx.types.CBufRet.f32 %6077, 2
  %6079 = extractvalue %dx.types.CBufRet.f32 %6077, 3
  %6080 = fmul fast float %6075, %6078
  %6081 = fmul fast float %6076, %6079
  %6082 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6083 = extractvalue %dx.types.CBufRet.i32 %6082, 3
  %6084 = icmp eq i32 %6083, 0
  br i1 %6084, label %6090, label %6085

; <label>:6085                                    ; preds = %6049
  %6086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6080, float %6081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6087 = extractvalue %dx.types.ResRet.f32 %6086, 0
  %6088 = extractvalue %dx.types.ResRet.f32 %6086, 1
  %6089 = extractvalue %dx.types.ResRet.f32 %6086, 2
  br label %6095

; <label>:6090                                    ; preds = %6049
  %6091 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6080, float %6081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6092 = extractvalue %dx.types.ResRet.f32 %6091, 0
  %6093 = extractvalue %dx.types.ResRet.f32 %6091, 1
  %6094 = extractvalue %dx.types.ResRet.f32 %6091, 2
  br label %6095

; <label>:6095                                    ; preds = %6090, %6085
  %6096 = phi float [ %6087, %6085 ], [ %6092, %6090 ]
  %6097 = phi float [ %6088, %6085 ], [ %6093, %6090 ]
  %6098 = phi float [ %6089, %6085 ], [ %6094, %6090 ]
  %6099 = extractvalue %dx.types.CBufRet.f32 %6058, 2
  %6100 = fmul fast float %6099, %6096
  %6101 = extractvalue %dx.types.CBufRet.f32 %6058, 0
  %6102 = fsub fast float %6067, %6101
  %6103 = fsub fast float %6102, %6100
  %6104 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6103)  ; FMax(a,b)
  %6105 = fmul fast float %6104, %6097
  %6106 = call float @dx.op.binary.f32(i32 36, float %6098, float %6105)  ; FMin(a,b)
  %6107 = fmul fast float %6106, 0xBFF7154760000000
  %6108 = call float @dx.op.unary.f32(i32 21, float %6107)  ; Exp(value)
  %6109 = fmul fast float %6051, %6108
  br label %6110

; <label>:6110                                    ; preds = %6095, %5945
  %6111 = phi float [ %6109, %6095 ], [ %5946, %5945 ]
  %6112 = call float @dx.op.binary.f32(i32 36, float %6111, float %6111)  ; FMin(a,b)
  %6113 = call float @dx.op.binary.f32(i32 36, float %6111, float %6112)  ; FMin(a,b)
  %6114 = fcmp fast ogt float %6113, 0.000000e+00
  br i1 %6114, label %6115, label %6366, !dx.controlflow.hints !119

; <label>:6115                                    ; preds = %6110
  %6116 = fmul fast float %6111, %5294
  %6117 = fmul fast float %6111, %5295
  %6118 = fmul fast float %6111, %5296
  %6119 = fsub fast float %193, %4280
  %6120 = fcmp fast ogt float %6119, 0.000000e+00
  %6121 = fmul fast float %5283, 5.120000e+02
  %6122 = fmul fast float %5284, 5.120000e+02
  %6123 = fmul fast float %5285, 5.120000e+02
  %6124 = fadd fast float %6123, %193
  %6125 = fsub fast float %4280, %6124
  %6126 = fmul fast float %6125, 2.000000e+00
  %6127 = fadd fast float %6126, %6124
  %6128 = select i1 %6120, float %6127, float %6124
  %6129 = fsub fast float %6128, %193
  %6130 = call float @dx.op.dot3.f32(i32 55, float %6121, float %6122, float %6129, float %6121, float %6122, float %6129)  ; Dot3(ax,ay,az,bx,by,bz)
  %6131 = call float @dx.op.unary.f32(i32 25, float %6130)  ; Rsqrt(value)
  %6132 = fmul fast float %6131, %6121
  %6133 = fmul fast float %6131, %6122
  %6134 = fmul fast float %6131, %6129
  %6135 = fsub fast float %4280, %193
  %6136 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6135)  ; Dot3(ax,ay,az,bx,by,bz)
  %6137 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6132, float %6133, float %6134)  ; Dot3(ax,ay,az,bx,by,bz)
  %6138 = fdiv fast float 1.000000e+00, %6137
  %6139 = fmul fast float %6138, %6136
  %6140 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6119, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6141 = fcmp fast ogt float %6140, 0.000000e+00
  %6142 = fcmp fast olt float %6140, 0.000000e+00
  %6143 = zext i1 %6141 to i32
  %6144 = zext i1 %6142 to i32
  %6145 = sub nsw i32 %6143, %6144
  %6146 = sitofp i32 %6145 to float
  %6147 = fsub fast float %6128, %4280
  %6148 = call float @dx.op.dot3.f32(i32 55, float %6121, float %6122, float %6147, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6149 = fcmp fast ogt float %6148, 0.000000e+00
  %6150 = fcmp fast olt float %6148, 0.000000e+00
  %6151 = zext i1 %6149 to i32
  %6152 = zext i1 %6150 to i32
  %6153 = sub nsw i32 %6151, %6152
  %6154 = sitofp i32 %6153 to float
  %6155 = fcmp fast une float %6146, %6154
  br i1 %6155, label %6156, label %6166

; <label>:6156                                    ; preds = %6115
  %6157 = fmul fast float %6139, %6134
  %6158 = fmul fast float %6139, %6133
  %6159 = fmul fast float %6139, %6132
  %6160 = fmul fast float %6159, %6159
  %6161 = fmul fast float %6158, %6158
  %6162 = fadd fast float %6160, %6161
  %6163 = fmul fast float %6157, %6157
  %6164 = fadd fast float %6162, %6163
  %6165 = call float @dx.op.unary.f32(i32 24, float %6164)  ; Sqrt(value)
  br label %6176

; <label>:6166                                    ; preds = %6115
  %6167 = icmp slt i32 %6145, 0
  br i1 %6167, label %6168, label %6176

; <label>:6168                                    ; preds = %6166
  %6169 = fsub fast float %193, %6128
  %6170 = fmul fast float %6121, %6121
  %6171 = fmul fast float %6122, %6122
  %6172 = fadd fast float %6170, %6171
  %6173 = fmul fast float %6169, %6169
  %6174 = fadd fast float %6172, %6173
  %6175 = call float @dx.op.unary.f32(i32 24, float %6174)  ; Sqrt(value)
  br label %6176

; <label>:6176                                    ; preds = %6168, %6166, %6156
  %6177 = phi float [ %6165, %6156 ], [ %6175, %6168 ], [ 0.000000e+00, %6166 ]
  %6178 = fsub fast float -0.000000e+00, %6177
  %6179 = select i1 %6120, float -0.000000e+00, float %6178
  %6180 = fmul fast float %4281, 0x3FF7154760000000
  %6181 = fmul fast float %6180, %6179
  %6182 = fmul fast float %4282, 0x3FF7154760000000
  %6183 = fmul fast float %6182, %6179
  %6184 = fmul fast float %4283, 0x3FF7154760000000
  %6185 = fmul fast float %6184, %6179
  %6186 = call float @dx.op.unary.f32(i32 21, float %6181)  ; Exp(value)
  %6187 = call float @dx.op.unary.f32(i32 21, float %6183)  ; Exp(value)
  %6188 = call float @dx.op.unary.f32(i32 21, float %6185)  ; Exp(value)
  %6189 = call float @dx.op.unary.f32(i32 7, float %6186)  ; Saturate(value)
  %6190 = call float @dx.op.unary.f32(i32 7, float %6187)  ; Saturate(value)
  %6191 = call float @dx.op.unary.f32(i32 7, float %6188)  ; Saturate(value)
  %6192 = fmul fast float %6116, %6189
  %6193 = fmul fast float %6117, %6190
  %6194 = fmul fast float %6118, %6191
  %6195 = fsub fast float %5283, %211
  %6196 = fsub fast float %5284, %212
  %6197 = fsub fast float %5285, %213
  %6198 = call float @dx.op.dot3.f32(i32 55, float %6195, float %6196, float %6197, float %6195, float %6196, float %6197)  ; Dot3(ax,ay,az,bx,by,bz)
  %6199 = call float @dx.op.unary.f32(i32 25, float %6198)  ; Rsqrt(value)
  %6200 = fmul fast float %6199, %6195
  %6201 = fmul fast float %6199, %6196
  %6202 = fmul fast float %6199, %6197
  %6203 = call float @dx.op.dot3.f32(i32 55, float %5283, float %5284, float %5285, float %5058, float %5059, float %5060)  ; Dot3(ax,ay,az,bx,by,bz)
  %6204 = call float @dx.op.dot3.f32(i32 55, float %4890, float %4891, float %4892, float %6200, float %6201, float %6202)  ; Dot3(ax,ay,az,bx,by,bz)
  %6205 = call float @dx.op.unary.f32(i32 7, float %6203)  ; Saturate(value)
  %6206 = fmul fast float %6205, %6205
  %6207 = fmul fast float %6206, %5082
  %6208 = call float @dx.op.unary.f32(i32 7, float %6207)  ; Saturate(value)
  %6209 = fmul fast float %6208, %6205
  %6210 = call float @dx.op.dot3.f32(i32 55, float %5058, float %5059, float %5060, float %6200, float %6201, float %6202)  ; Dot3(ax,ay,az,bx,by,bz)
  %6211 = fmul fast float %6210, %6210
  %6212 = call float @dx.op.unary.f32(i32 6, float %6203)  ; FAbs(value)
  %6213 = fsub fast float 1.000000e+00, %5064
  %6214 = call float @dx.op.binary.f32(i32 35, float %6213, float 0x3F847AE140000000)  ; FMax(a,b)
  %6215 = fmul fast float %6214, %6214
  %6216 = fmul fast float %6215, %6215
  %6217 = fsub fast float 1.000000e+00, %6216
  %6218 = fmul fast float %5069, %5069
  %6219 = fmul fast float %6218, %6217
  %6220 = fadd fast float %6219, %6216
  %6221 = bitcast float %6220 to i32
  %6222 = ashr i32 %6221, 1
  %6223 = add nsw i32 %6222, 532487669
  %6224 = bitcast i32 %6223 to float
  %6225 = fadd fast float %6224, %5069
  %6226 = fmul fast float %6216, %6211
  %6227 = fsub fast float 1.000000e+00, %6211
  %6228 = fadd fast float %6227, %6226
  %6229 = fmul fast float %6212, %6212
  %6230 = fmul fast float %6229, %6217
  %6231 = fadd fast float %6230, %6216
  %6232 = bitcast float %6231 to i32
  %6233 = ashr i32 %6232, 1
  %6234 = add nsw i32 %6233, 532487669
  %6235 = bitcast i32 %6234 to float
  %6236 = fadd fast float %6235, %6212
  %6237 = fmul fast float %6228, %6228
  %6238 = fmul fast float %6237, %6225
  %6239 = fmul fast float %6238, %6236
  %6240 = fdiv fast float 0x3FF0A00000000000, %6239
  %6241 = fmul fast float %6240, %6216
  %6242 = call float @dx.op.unary.f32(i32 6, float %6204)  ; FAbs(value)
  %6243 = fsub fast float 1.000000e+00, %6242
  %6244 = bitcast float %6243 to i32
  %6245 = sitofp i32 %6244 to float
  %6246 = fmul fast float %6245, 5.000000e+00
  %6247 = fadd fast float %6246, 0xC1EFBF8940000000
  %6248 = fptosi float %6247 to i32
  %6249 = bitcast i32 %6248 to float
  %6250 = fsub fast float 1.000000e+00, %5055
  %6251 = fsub fast float 1.000000e+00, %5056
  %6252 = fsub fast float 1.000000e+00, %5067
  %6253 = fmul fast float %6249, %6250
  %6254 = fmul fast float %6249, %6251
  %6255 = fmul fast float %6249, %6252
  %6256 = fadd fast float %6253, %5055
  %6257 = fadd fast float %6254, %5056
  %6258 = fadd fast float %6255, %5067
  br i1 %5194, label %6259, label %6282

; <label>:6259                                    ; preds = %6176
  %6260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3857, float %6242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6261 = extractvalue %dx.types.ResRet.f32 %6260, 0
  %6262 = extractvalue %dx.types.ResRet.f32 %6260, 1
  %6263 = extractvalue %dx.types.ResRet.f32 %6260, 2
  %6264 = fadd fast float %6261, -5.000000e-01
  %6265 = fadd fast float %6262, -5.000000e-01
  %6266 = fadd fast float %6263, -5.000000e-01
  %6267 = fmul fast float %5055, 4.000000e+00
  %6268 = fmul fast float %6267, %6250
  %6269 = fmul fast float %6268, %6264
  %6270 = fmul fast float %5056, 4.000000e+00
  %6271 = fmul fast float %6270, %6251
  %6272 = fmul fast float %6271, %6265
  %6273 = fmul fast float %5067, 4.000000e+00
  %6274 = fmul fast float %6273, %6252
  %6275 = fmul fast float %6274, %6266
  %6276 = fadd fast float %6269, %6256
  %6277 = fadd fast float %6272, %6257
  %6278 = fadd fast float %6275, %6258
  %6279 = call float @dx.op.unary.f32(i32 7, float %6276)  ; Saturate(value)
  %6280 = call float @dx.op.unary.f32(i32 7, float %6277)  ; Saturate(value)
  %6281 = call float @dx.op.unary.f32(i32 7, float %6278)  ; Saturate(value)
  br label %6282

; <label>:6282                                    ; preds = %6259, %6176
  %6283 = phi float [ %6279, %6259 ], [ %6256, %6176 ]
  %6284 = phi float [ %6280, %6259 ], [ %6257, %6176 ]
  %6285 = phi float [ %6281, %6259 ], [ %6258, %6176 ]
  %6286 = fmul fast float %6203, 9.843750e-01
  %6287 = fadd fast float %6286, 7.812500e-03
  %6288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6287, float %5184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6289 = extractvalue %dx.types.ResRet.f32 %6288, 2
  %6290 = extractvalue %dx.types.ResRet.f32 %6288, 3
  %6291 = fmul fast float %6289, %5055
  %6292 = fmul fast float %6289, %5056
  %6293 = fmul fast float %6289, %5067
  %6294 = fadd fast float %6291, %6290
  %6295 = fadd fast float %6292, %6290
  %6296 = fadd fast float %6293, %6290
  br i1 %5194, label %6297, label %6320

; <label>:6297                                    ; preds = %6282
  %6298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3857, float %6203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6299 = extractvalue %dx.types.ResRet.f32 %6298, 0
  %6300 = extractvalue %dx.types.ResRet.f32 %6298, 1
  %6301 = extractvalue %dx.types.ResRet.f32 %6298, 2
  %6302 = fadd fast float %6299, -5.000000e-01
  %6303 = fadd fast float %6300, -5.000000e-01
  %6304 = fadd fast float %6301, -5.000000e-01
  %6305 = fmul fast float %5055, 4.000000e+00
  %6306 = fmul fast float %6305, %6250
  %6307 = fmul fast float %6306, %6302
  %6308 = fmul fast float %5056, 4.000000e+00
  %6309 = fmul fast float %6308, %6251
  %6310 = fmul fast float %6309, %6303
  %6311 = fmul fast float %5067, 4.000000e+00
  %6312 = fmul fast float %6311, %6252
  %6313 = fmul fast float %6312, %6304
  %6314 = fadd fast float %6307, %6294
  %6315 = fadd fast float %6310, %6295
  %6316 = fadd fast float %6313, %6296
  %6317 = call float @dx.op.unary.f32(i32 7, float %6314)  ; Saturate(value)
  %6318 = call float @dx.op.unary.f32(i32 7, float %6315)  ; Saturate(value)
  %6319 = call float @dx.op.unary.f32(i32 7, float %6316)  ; Saturate(value)
  br label %6320

; <label>:6320                                    ; preds = %6297, %6282
  %6321 = phi float [ %6317, %6297 ], [ %6294, %6282 ]
  %6322 = phi float [ %6318, %6297 ], [ %6295, %6282 ]
  %6323 = phi float [ %6319, %6297 ], [ %6296, %6282 ]
  %6324 = call float @dx.op.binary.f32(i32 35, float %6322, float %6323)  ; FMax(a,b)
  %6325 = call float @dx.op.binary.f32(i32 35, float %6321, float %6324)  ; FMax(a,b)
  %6326 = fsub fast float 1.000000e+00, %6325
  %6327 = fmul fast float %6283, %6241
  %6328 = fmul fast float %6284, %6241
  %6329 = fmul fast float %6285, %6241
  %6330 = fsub fast float 1.000000e+00, %6204
  %6331 = bitcast float %6330 to i32
  %6332 = sitofp i32 %6331 to float
  %6333 = fmul fast float %6332, 5.000000e+00
  %6334 = fadd fast float %6333, 0xC1EFBF8940000000
  %6335 = fptosi float %6334 to i32
  %6336 = bitcast i32 %6335 to float
  %6337 = fmul fast float %6336, %3858
  %6338 = fmul fast float %6326, %6337
  %6339 = fmul fast float %6338, %5244
  %6340 = fmul fast float %6338, %5245
  %6341 = fmul fast float %6338, %5246
  %6342 = fadd fast float %6339, %6327
  %6343 = fadd fast float %6340, %6328
  %6344 = fadd fast float %6341, %6329
  %6345 = fmul fast float %6209, %6192
  %6346 = fmul fast float %6345, %6326
  %6347 = fmul fast float %6209, %6193
  %6348 = fmul fast float %6347, %6326
  %6349 = fmul fast float %6209, %6194
  %6350 = fmul fast float %6349, %6326
  %6351 = fmul fast float %6345, %6342
  %6352 = fmul fast float %6347, %6343
  %6353 = fmul fast float %6349, %6344
  %6354 = fadd fast float %6346, %5228
  %6355 = fmul fast float %6354, %3883
  %6356 = fadd fast float %6348, %5229
  %6357 = fmul fast float %6356, %3883
  %6358 = fadd fast float %6350, %5230
  %6359 = fmul fast float %6358, %3883
  %6360 = fadd fast float %6351, %5271
  %6361 = fmul fast float %6360, %3883
  %6362 = fadd fast float %6352, %5274
  %6363 = fmul fast float %6362, %3883
  %6364 = fadd fast float %6353, %5277
  %6365 = fmul fast float %6364, %3883
  br label %6366

; <label>:6366                                    ; preds = %6320, %6110, %5221
  %6367 = phi float [ %5272, %5221 ], [ %5272, %6110 ], [ %6361, %6320 ]
  %6368 = phi float [ %5275, %5221 ], [ %5275, %6110 ], [ %6363, %6320 ]
  %6369 = phi float [ %5278, %5221 ], [ %5278, %6110 ], [ %6365, %6320 ]
  %6370 = phi float [ %5267, %5221 ], [ %5267, %6110 ], [ %6355, %6320 ]
  %6371 = phi float [ %5268, %5221 ], [ %5268, %6110 ], [ %6357, %6320 ]
  %6372 = phi float [ %5269, %5221 ], [ %5269, %6110 ], [ %6359, %6320 ]
  %6373 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6374 = extractvalue %dx.types.CBufRet.i32 %6373, 0
  %6375 = icmp eq i32 %6374, 0
  br i1 %6375, label %6996, label %6376

; <label>:6376                                    ; preds = %6366
  %6377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6378 = extractvalue %dx.types.CBufRet.f32 %6377, 2
  %6379 = extractvalue %dx.types.CBufRet.f32 %6377, 3
  %6380 = fmul fast float %6378, %104
  %6381 = fmul fast float %6379, %105
  %6382 = fptoui float %6380 to i32
  %6383 = fptoui float %6381 to i32
  %6384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.f32 %6384, 0
  %6386 = extractvalue %dx.types.CBufRet.f32 %6384, 2
  %6387 = extractvalue %dx.types.CBufRet.f32 %6384, 3
  %6388 = fadd fast float %95, -4.000000e+00
  %6389 = call float @dx.op.binary.f32(i32 35, float %6388, float 0.000000e+00)  ; FMax(a,b)
  %6390 = fadd fast float %6389, %6385
  %6391 = fmul fast float %6390, %6386
  %6392 = call float @dx.op.unary.f32(i32 23, float %6391)  ; Log(value)
  %6393 = fmul fast float %6392, %6387
  %6394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6394, 2
  %6396 = fmul fast float %6393, %6395
  %6397 = call float @dx.op.unary.f32(i32 7, float %6396)  ; Saturate(value)
  %6398 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6399 = extractvalue %dx.types.CBufRet.i32 %6398, 1
  %6400 = add i32 %6399, -1
  %6401 = uitofp i32 %6399 to float
  %6402 = fmul fast float %6401, %6397
  %6403 = fptoui float %6402 to i32
  %6404 = call i32 @dx.op.binary.i32(i32 40, i32 %6403, i32 %6400)  ; UMin(a,b)
  %6405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6406 = extractvalue %dx.types.CBufRet.i32 %6405, 2
  %6407 = extractvalue %dx.types.CBufRet.i32 %6405, 3
  %6408 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6383, i32 %6406, i32 %6382)  ; UMad(a,b,c)
  %6409 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6404, i32 %6407, i32 %6408)  ; UMad(a,b,c)
  %6410 = add nsw i32 %6374, -1
  %6411 = call i32 @dx.op.binary.i32(i32 37, i32 %6410, i32 0)  ; IMax(a,b)
  %6412 = call float @dx.op.binary.f32(i32 35, float %95, float 0.000000e+00)  ; FMax(a,b)
  %6413 = fptoui float %6412 to i32
  %6414 = lshr i32 %6413, 5
  %6415 = call i32 @dx.op.binary.i32(i32 40, i32 %6414, i32 8191)  ; UMin(a,b)
  %6416 = shl i32 %6415, 2
  %6417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6416, i32 undef)  ; BufferLoad(srv,index,wot)
  %6418 = extractvalue %dx.types.ResRet.i32 %6417, 0
  %6419 = lshr i32 %6418, 16
  %6420 = and i32 %6418, 65535
  %6421 = lshr i32 %6418, 21
  %6422 = lshr i32 %6420, 5
  %6423 = call i32 @dx.op.binary.i32(i32 40, i32 %6422, i32 %6411)  ; UMin(a,b)
  %6424 = icmp ugt i32 %6421, %6423
  br i1 %6424, label %6996, label %6425

; <label>:6425                                    ; preds = %6376
  br label %6426

; <label>:6426                                    ; preds = %6986, %6425
  %6427 = phi i32 [ %6993, %6986 ], [ %6421, %6425 ]
  %6428 = phi float [ %6987, %6986 ], [ %6367, %6425 ]
  %6429 = phi float [ %6988, %6986 ], [ %6368, %6425 ]
  %6430 = phi float [ %6989, %6986 ], [ %6369, %6425 ]
  %6431 = phi float [ %6990, %6986 ], [ %6370, %6425 ]
  %6432 = phi float [ %6991, %6986 ], [ %6371, %6425 ]
  %6433 = phi float [ %6992, %6986 ], [ %6372, %6425 ]
  %6434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6435 = extractvalue %dx.types.CBufRet.i32 %6434, 0
  %6436 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6409, i32 %6435, i32 %6427)  ; UMad(a,b,c)
  %6437 = shl i32 %6436, 2
  %6438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6437, i32 undef)  ; BufferLoad(srv,index,wot)
  %6439 = extractvalue %dx.types.ResRet.i32 %6438, 0
  %6440 = shl i32 %6427, 5
  %6441 = sub nsw i32 %6419, %6440
  %6442 = call i32 @dx.op.binary.i32(i32 37, i32 %6441, i32 0)  ; IMax(a,b)
  %6443 = call i32 @dx.op.binary.i32(i32 38, i32 %6442, i32 31)  ; IMin(a,b)
  %6444 = sub nsw i32 1, %6419
  %6445 = add nsw i32 %6444, %6420
  %6446 = call i32 @dx.op.binary.i32(i32 37, i32 %6445, i32 0)  ; IMax(a,b)
  %6447 = call i32 @dx.op.binary.i32(i32 38, i32 %6446, i32 32)  ; IMin(a,b)
  %6448 = and i32 %6447, 31
  %6449 = shl i32 -1, %6448
  %6450 = xor i32 %6449, -1
  %6451 = and i32 %6443, 31
  %6452 = shl i32 %6450, %6451
  %6453 = icmp eq i32 %6447, 32
  %6454 = select i1 %6453, i32 -1, i32 %6452
  %6455 = and i32 %6454, %6439
  %6456 = icmp eq i32 %6455, 0
  br i1 %6456, label %6986, label %6457

; <label>:6457                                    ; preds = %6426
  br label %6458

; <label>:6458                                    ; preds = %6592, %6457
  %6459 = phi i32 [ %6470, %6592 ], [ %6455, %6457 ]
  %6460 = phi float [ %6593, %6592 ], [ %6428, %6457 ]
  %6461 = phi float [ %6594, %6592 ], [ %6429, %6457 ]
  %6462 = phi float [ %6595, %6592 ], [ %6430, %6457 ]
  %6463 = phi float [ %6596, %6592 ], [ %6431, %6457 ]
  %6464 = phi float [ %6597, %6592 ], [ %6432, %6457 ]
  %6465 = phi float [ %6598, %6592 ], [ %6433, %6457 ]
  %6466 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6459)  ; FirstbitLo(value)
  %6467 = add i32 %6466, %6440
  %6468 = and i32 %6466, 31
  %6469 = shl i32 1, %6468
  %6470 = xor i32 %6469, %6459
  %6471 = mul i32 %6467, 112
  %6472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6471, i32 undef)  ; BufferLoad(srv,index,wot)
  %6473 = extractvalue %dx.types.ResRet.f32 %6472, 0
  %6474 = extractvalue %dx.types.ResRet.f32 %6472, 1
  %6475 = extractvalue %dx.types.ResRet.f32 %6472, 2
  %6476 = or i32 %6471, 12
  %6477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6476, i32 undef)  ; BufferLoad(srv,index,wot)
  %6478 = extractvalue %dx.types.ResRet.f32 %6477, 0
  %6479 = add i32 %6471, 16
  %6480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6479, i32 undef)  ; BufferLoad(srv,index,wot)
  %6481 = extractvalue %dx.types.ResRet.f32 %6480, 0
  %6482 = extractvalue %dx.types.ResRet.f32 %6480, 1
  %6483 = extractvalue %dx.types.ResRet.f32 %6480, 2
  %6484 = add i32 %6471, 28
  %6485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6484, i32 undef)  ; BufferLoad(srv,index,wot)
  %6486 = extractvalue %dx.types.ResRet.i32 %6485, 0
  %6487 = add i32 %6471, 44
  %6488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6487, i32 undef)  ; BufferLoad(srv,index,wot)
  %6489 = extractvalue %dx.types.ResRet.f32 %6488, 0
  %6490 = add i32 %6471, 48
  %6491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6490, i32 undef)  ; BufferLoad(srv,index,wot)
  %6492 = extractvalue %dx.types.ResRet.f32 %6491, 0
  %6493 = extractvalue %dx.types.ResRet.f32 %6491, 1
  %6494 = extractvalue %dx.types.ResRet.f32 %6491, 2
  %6495 = extractvalue %dx.types.ResRet.f32 %6491, 3
  %6496 = add i32 %6471, 64
  %6497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6496, i32 undef)  ; BufferLoad(srv,index,wot)
  %6498 = extractvalue %dx.types.ResRet.f32 %6497, 0
  %6499 = extractvalue %dx.types.ResRet.f32 %6497, 1
  %6500 = extractvalue %dx.types.ResRet.f32 %6497, 2
  %6501 = extractvalue %dx.types.ResRet.f32 %6497, 3
  %6502 = add i32 %6471, 80
  %6503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6502, i32 undef)  ; BufferLoad(srv,index,wot)
  %6504 = extractvalue %dx.types.ResRet.f32 %6503, 1
  %6505 = extractvalue %dx.types.ResRet.f32 %6503, 2
  %6506 = add i32 %6471, 92
  %6507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6506, i32 undef)  ; BufferLoad(srv,index,wot)
  %6508 = extractvalue %dx.types.ResRet.i32 %6507, 0
  %6509 = call float @dx.op.dot3.f32(i32 55, float %6473, float %6474, float %6475, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6510 = select i1 %282, float %6504, float %6473
  %6511 = select i1 %282, float %6509, float %6474
  %6512 = select i1 %282, float %6505, float %6475
  %6513 = and i32 %6508, 65535
  %6514 = uitofp i32 %6513 to float
  %6515 = lshr i32 %6508, 16
  %6516 = uitofp i32 %6515 to float
  %6517 = and i32 %6486, 65535
  %6518 = and i32 %6486, 50331648
  %6519 = icmp eq i32 %6518, 33554432
  %6520 = fsub fast float %6492, %191
  %6521 = fsub fast float %6493, %192
  %6522 = fsub fast float %6494, %193
  %6523 = call float @dx.op.dot3.f32(i32 55, float %6520, float %6521, float %6522, float %6520, float %6521, float %6522)  ; Dot3(ax,ay,az,bx,by,bz)
  %6524 = call float @dx.op.unary.f32(i32 24, float %6523)  ; Sqrt(value)
  %6525 = fdiv fast float 1.000000e+00, %6524
  %6526 = fmul fast float %6525, %6520
  %6527 = fmul fast float %6525, %6521
  %6528 = fmul fast float %6525, %6522
  %6529 = fadd fast float %6524, %6478
  %6530 = fdiv fast float 1.000000e+00, %6529
  %6531 = fmul float %6489, %6530
  %6532 = fmul float %6531, %6531
  %6533 = call float @dx.op.unary.f32(i32 7, float %6532)  ; Saturate(value)
  br i1 %6519, label %6534, label %6555

; <label>:6534                                    ; preds = %6458
  %6535 = fmul fast float %6500, %6481
  %6536 = fmul fast float %6500, %6482
  %6537 = fmul fast float %6500, %6483
  %6538 = fadd fast float %6520, %6535
  %6539 = fadd fast float %6521, %6536
  %6540 = fadd fast float %6522, %6537
  %6541 = call float @dx.op.dot3.f32(i32 55, float %6538, float %6539, float %6540, float %6538, float %6539, float %6540)  ; Dot3(ax,ay,az,bx,by,bz)
  %6542 = call float @dx.op.unary.f32(i32 25, float %6541)  ; Rsqrt(value)
  %6543 = fmul fast float %6542, %6538
  %6544 = fmul fast float %6542, %6539
  %6545 = fmul fast float %6542, %6540
  %6546 = fsub fast float %191, %6492
  %6547 = fsub fast float %192, %6493
  %6548 = fsub fast float %193, %6494
  %6549 = fsub fast float -0.000000e+00, %6546
  %6550 = fsub fast float -0.000000e+00, %6547
  %6551 = fsub fast float -0.000000e+00, %6548
  %6552 = call float @dx.op.dot3.f32(i32 55, float %6549, float %6550, float %6551, float %6481, float %6482, float %6483)  ; Dot3(ax,ay,az,bx,by,bz)
  %6553 = fcmp fast ogt float %6552, 0.000000e+00
  %6554 = uitofp i1 %6553 to float
  br label %6555

; <label>:6555                                    ; preds = %6534, %6458
  %6556 = phi float [ %6554, %6534 ], [ 1.000000e+00, %6458 ]
  %6557 = phi float [ %6543, %6534 ], [ %6526, %6458 ]
  %6558 = phi float [ %6544, %6534 ], [ %6527, %6458 ]
  %6559 = phi float [ %6545, %6534 ], [ %6528, %6458 ]
  %6560 = call float @dx.op.dot3.f32(i32 55, float %6481, float %6482, float %6483, float %6557, float %6558, float %6559)  ; Dot3(ax,ay,az,bx,by,bz)
  %6561 = fmul fast float %6560, %6560
  %6562 = call float @dx.op.unary.f32(i32 7, float %6561)  ; Saturate(value)
  %6563 = fsub fast float 1.000000e+00, %6562
  %6564 = fmul fast float %6563, 5.000000e-01
  %6565 = fcmp fast ogt float %6560, 0.000000e+00
  %6566 = fsub fast float 1.000000e+00, %6564
  %6567 = select i1 %6565, float %6564, float %6566
  %6568 = fmul fast float %6567, %6516
  %6569 = fadd fast float %6568, %6514
  %6570 = fmul fast float %6569, 0x3EF0001000000000
  %6571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %48, float %6570, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6572 = extractvalue %dx.types.ResRet.f32 %6571, 0
  %6573 = fmul fast float %6560, %6498
  %6574 = fadd fast float %6573, %6499
  %6575 = call float @dx.op.unary.f32(i32 7, float %6574)  ; Saturate(value)
  %6576 = select i1 %6519, float 1.000000e+00, float %6575
  %6577 = select i1 %6519, float %6575, float 1.000000e+00
  %6578 = fmul fast float %6524, %6495
  %6579 = fsub fast float 1.000000e+00, %6578
  %6580 = fmul fast float %6579, %6501
  %6581 = call float @dx.op.unary.f32(i32 7, float %6580)  ; Saturate(value)
  %6582 = fmul fast float %6581, %6577
  %6583 = fmul fast float %6582, 2.000000e+00
  %6584 = fsub fast float 3.000000e+00, %6583
  %6585 = fmul fast float %6572, %6556
  %6586 = fmul fast float %6582, %6582
  %6587 = fmul fast float %6586, %6585
  %6588 = fmul fast float %6587, %6584
  %6589 = call float @dx.op.binary.f32(i32 36, float %6588, float %6588)  ; FMin(a,b)
  %6590 = call float @dx.op.binary.f32(i32 36, float %6588, float %6589)  ; FMin(a,b)
  %6591 = fcmp fast ogt float %6590, 0.000000e+00
  br i1 %6591, label %6600, label %6592, !dx.controlflow.hints !120

; <label>:6592                                    ; preds = %6942, %6700, %6555
  %6593 = phi float [ %6460, %6700 ], [ %6460, %6555 ], [ %6982, %6942 ]
  %6594 = phi float [ %6461, %6700 ], [ %6461, %6555 ], [ %6983, %6942 ]
  %6595 = phi float [ %6462, %6700 ], [ %6462, %6555 ], [ %6984, %6942 ]
  %6596 = phi float [ %6463, %6700 ], [ %6463, %6555 ], [ %6976, %6942 ]
  %6597 = phi float [ %6464, %6700 ], [ %6464, %6555 ], [ %6977, %6942 ]
  %6598 = phi float [ %6465, %6700 ], [ %6465, %6555 ], [ %6978, %6942 ]
  %6599 = icmp eq i32 %6459, %6469
  br i1 %6599, label %6985, label %6458

; <label>:6600                                    ; preds = %6555
  %6601 = icmp eq i32 %6517, 255
  br i1 %6601, label %6700, label %6602, !dx.controlflow.hints !121

; <label>:6602                                    ; preds = %6600
  %6603 = mul nuw nsw i32 %6517, 176
  %6604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6603, i32 undef)  ; BufferLoad(srv,index,wot)
  %6605 = extractvalue %dx.types.ResRet.f32 %6604, 0
  %6606 = extractvalue %dx.types.ResRet.f32 %6604, 1
  %6607 = extractvalue %dx.types.ResRet.f32 %6604, 2
  %6608 = extractvalue %dx.types.ResRet.f32 %6604, 3
  %6609 = add nuw nsw i32 %6603, 16
  %6610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6609, i32 undef)  ; BufferLoad(srv,index,wot)
  %6611 = extractvalue %dx.types.ResRet.f32 %6610, 0
  %6612 = extractvalue %dx.types.ResRet.f32 %6610, 1
  %6613 = add nuw nsw i32 %6603, 32
  %6614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6613, i32 undef)  ; BufferLoad(srv,index,wot)
  %6615 = extractvalue %dx.types.ResRet.f32 %6614, 0
  %6616 = extractvalue %dx.types.ResRet.f32 %6614, 1
  %6617 = extractvalue %dx.types.ResRet.f32 %6614, 2
  %6618 = add nuw nsw i32 %6603, 48
  %6619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6618, i32 undef)  ; BufferLoad(srv,index,wot)
  %6620 = extractvalue %dx.types.ResRet.f32 %6619, 0
  %6621 = extractvalue %dx.types.ResRet.f32 %6619, 1
  %6622 = extractvalue %dx.types.ResRet.f32 %6619, 2
  %6623 = extractvalue %dx.types.ResRet.f32 %6619, 3
  %6624 = add nuw nsw i32 %6603, 64
  %6625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6624, i32 undef)  ; BufferLoad(srv,index,wot)
  %6626 = extractvalue %dx.types.ResRet.f32 %6625, 0
  %6627 = extractvalue %dx.types.ResRet.f32 %6625, 1
  %6628 = extractvalue %dx.types.ResRet.f32 %6625, 2
  %6629 = extractvalue %dx.types.ResRet.f32 %6625, 3
  %6630 = add nuw nsw i32 %6603, 80
  %6631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6630, i32 undef)  ; BufferLoad(srv,index,wot)
  %6632 = extractvalue %dx.types.ResRet.f32 %6631, 0
  %6633 = extractvalue %dx.types.ResRet.f32 %6631, 1
  %6634 = extractvalue %dx.types.ResRet.f32 %6631, 2
  %6635 = extractvalue %dx.types.ResRet.f32 %6631, 3
  %6636 = add nuw nsw i32 %6603, 96
  %6637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6636, i32 undef)  ; BufferLoad(srv,index,wot)
  %6638 = extractvalue %dx.types.ResRet.f32 %6637, 0
  %6639 = extractvalue %dx.types.ResRet.f32 %6637, 1
  %6640 = extractvalue %dx.types.ResRet.f32 %6637, 2
  %6641 = extractvalue %dx.types.ResRet.f32 %6637, 3
  %6642 = bitcast float %6612 to i32
  %6643 = fmul fast float %6617, %111
  %6644 = fmul fast float %6617, %112
  %6645 = fmul fast float %6617, %113
  %6646 = fadd fast float %6643, %191
  %6647 = fadd fast float %6644, %192
  %6648 = fadd fast float %6645, %193
  %6649 = fmul fast float %6646, %6620
  %6650 = call float @dx.op.tertiary.f32(i32 46, float %6647, float %6626, float %6649)  ; FMad(a,b,c)
  %6651 = call float @dx.op.tertiary.f32(i32 46, float %6648, float %6632, float %6650)  ; FMad(a,b,c)
  %6652 = fadd fast float %6651, %6638
  %6653 = fmul fast float %6646, %6621
  %6654 = call float @dx.op.tertiary.f32(i32 46, float %6647, float %6627, float %6653)  ; FMad(a,b,c)
  %6655 = call float @dx.op.tertiary.f32(i32 46, float %6648, float %6633, float %6654)  ; FMad(a,b,c)
  %6656 = fadd fast float %6655, %6639
  %6657 = fmul fast float %6646, %6622
  %6658 = call float @dx.op.tertiary.f32(i32 46, float %6647, float %6628, float %6657)  ; FMad(a,b,c)
  %6659 = call float @dx.op.tertiary.f32(i32 46, float %6648, float %6634, float %6658)  ; FMad(a,b,c)
  %6660 = fadd fast float %6659, %6640
  %6661 = fmul fast float %6646, %6623
  %6662 = call float @dx.op.tertiary.f32(i32 46, float %6647, float %6629, float %6661)  ; FMad(a,b,c)
  %6663 = call float @dx.op.tertiary.f32(i32 46, float %6648, float %6635, float %6662)  ; FMad(a,b,c)
  %6664 = fadd fast float %6663, %6641
  %6665 = fdiv fast float %6652, %6664
  %6666 = fdiv fast float %6656, %6664
  %6667 = fdiv fast float %6660, %6664
  %6668 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6667)  ; FMax(a,b)
  %6669 = fmul fast float %293, 0x401921FB60000000
  %6670 = call float @dx.op.unary.f32(i32 13, float %6669)  ; Sin(value)
  %6671 = call float @dx.op.unary.f32(i32 12, float %6669)  ; Cos(value)
  %6672 = fsub fast float -0.000000e+00, %6670
  %6673 = fmul fast float %6607, 5.000000e-01
  %6674 = call float @dx.op.dot2.f32(i32 54, float %293, float %293, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6675 = call float @dx.op.unary.f32(i32 22, float %6674)  ; Frc(value)
  %6676 = fmul fast float %6675, 0x404A7DD040000000
  %6677 = call float @dx.op.unary.f32(i32 22, float %6676)  ; Frc(value)
  %6678 = fmul fast float %6677, %6616
  %6679 = fadd fast float %6678, %6673
  %6680 = call float @dx.op.tertiary.f32(i32 46, float %6679, float %6672, float 0.000000e+00)  ; FMad(a,b,c)
  %6681 = call float @dx.op.tertiary.f32(i32 46, float %6679, float %6671, float 0.000000e+00)  ; FMad(a,b,c)
  %6682 = fadd fast float %6680, %6665
  %6683 = fadd fast float %6681, %6666
  %6684 = fmul fast float %6682, %6611
  %6685 = fmul fast float %6683, %6611
  %6686 = call float @dx.op.binary.f32(i32 35, float %6684, float %6607)  ; FMax(a,b)
  %6687 = call float @dx.op.binary.f32(i32 35, float %6685, float %6607)  ; FMax(a,b)
  %6688 = call float @dx.op.binary.f32(i32 36, float %6686, float %6608)  ; FMin(a,b)
  %6689 = call float @dx.op.binary.f32(i32 36, float %6687, float %6608)  ; FMin(a,b)
  %6690 = fadd fast float %6688, %6605
  %6691 = fadd fast float %6689, %6606
  %6692 = uitofp i32 %6642 to float
  %6693 = fadd fast float %6668, %6615
  %6694 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %50, float %6690, float %6691, float %6692, float undef, i32 0, i32 0, i32 undef, float %6693)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6695 = extractvalue %dx.types.ResRet.f32 %6694, 0
  %6696 = fadd fast float %6695, -1.000000e+00
  %6697 = fmul fast float %6696, %6576
  %6698 = fadd fast float %6697, 1.000000e+00
  %6699 = fmul fast float %6698, %6588
  br label %6700

; <label>:6700                                    ; preds = %6602, %6600
  %6701 = phi float [ %6699, %6602 ], [ %6588, %6600 ]
  %6702 = call float @dx.op.binary.f32(i32 36, float %6701, float %6701)  ; FMin(a,b)
  %6703 = call float @dx.op.binary.f32(i32 36, float %6701, float %6702)  ; FMin(a,b)
  %6704 = fcmp fast ogt float %6703, 0.000000e+00
  br i1 %6704, label %6705, label %6592, !dx.controlflow.hints !122

; <label>:6705                                    ; preds = %6700
  %6706 = fmul fast float %6701, %6510
  %6707 = fmul fast float %6701, %6511
  %6708 = fmul fast float %6701, %6512
  %6709 = fsub fast float %6494, %4280
  %6710 = fcmp fast ogt float %6709, 0.000000e+00
  %6711 = fsub fast float %193, %4280
  %6712 = fcmp fast ogt float %6711, 0.000000e+00
  %6713 = xor i1 %6712, %6710
  %6714 = fsub fast float %4280, %6494
  %6715 = fmul fast float %6714, 2.000000e+00
  %6716 = fadd fast float %6715, %6494
  %6717 = select i1 %6713, float %6494, float %6716
  %6718 = fsub fast float %6717, %193
  %6719 = call float @dx.op.dot3.f32(i32 55, float %6520, float %6521, float %6718, float %6520, float %6521, float %6718)  ; Dot3(ax,ay,az,bx,by,bz)
  %6720 = call float @dx.op.unary.f32(i32 25, float %6719)  ; Rsqrt(value)
  %6721 = fmul fast float %6720, %6520
  %6722 = fmul fast float %6720, %6521
  %6723 = fmul fast float %6720, %6718
  %6724 = fsub fast float %4280, %193
  %6725 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6724)  ; Dot3(ax,ay,az,bx,by,bz)
  %6726 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6721, float %6722, float %6723)  ; Dot3(ax,ay,az,bx,by,bz)
  %6727 = fdiv fast float 1.000000e+00, %6726
  %6728 = fmul fast float %6727, %6725
  %6729 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6711, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6730 = fcmp fast ogt float %6729, 0.000000e+00
  %6731 = fcmp fast olt float %6729, 0.000000e+00
  %6732 = zext i1 %6730 to i32
  %6733 = zext i1 %6731 to i32
  %6734 = sub nsw i32 %6732, %6733
  %6735 = sitofp i32 %6734 to float
  %6736 = fsub fast float %6717, %4280
  %6737 = call float @dx.op.dot3.f32(i32 55, float %6520, float %6521, float %6736, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6738 = fcmp fast ogt float %6737, 0.000000e+00
  %6739 = fcmp fast olt float %6737, 0.000000e+00
  %6740 = zext i1 %6738 to i32
  %6741 = zext i1 %6739 to i32
  %6742 = sub nsw i32 %6740, %6741
  %6743 = sitofp i32 %6742 to float
  %6744 = fcmp fast une float %6735, %6743
  br i1 %6744, label %6745, label %6755

; <label>:6745                                    ; preds = %6705
  %6746 = fmul fast float %6728, %6723
  %6747 = fmul fast float %6728, %6722
  %6748 = fmul fast float %6728, %6721
  %6749 = fmul fast float %6748, %6748
  %6750 = fmul fast float %6747, %6747
  %6751 = fadd fast float %6749, %6750
  %6752 = fmul fast float %6746, %6746
  %6753 = fadd fast float %6751, %6752
  %6754 = call float @dx.op.unary.f32(i32 24, float %6753)  ; Sqrt(value)
  br label %6767

; <label>:6755                                    ; preds = %6705
  %6756 = icmp slt i32 %6734, 0
  br i1 %6756, label %6757, label %6767

; <label>:6757                                    ; preds = %6755
  %6758 = fsub fast float %191, %6492
  %6759 = fsub fast float %192, %6493
  %6760 = fsub fast float %193, %6717
  %6761 = fmul fast float %6758, %6758
  %6762 = fmul fast float %6759, %6759
  %6763 = fadd fast float %6761, %6762
  %6764 = fmul fast float %6760, %6760
  %6765 = fadd fast float %6763, %6764
  %6766 = call float @dx.op.unary.f32(i32 24, float %6765)  ; Sqrt(value)
  br label %6767

; <label>:6767                                    ; preds = %6757, %6755, %6745
  %6768 = phi float [ %6754, %6745 ], [ %6766, %6757 ], [ 0.000000e+00, %6755 ]
  %6769 = and i1 %6712, %6710
  %6770 = fsub fast float -0.000000e+00, %6768
  %6771 = select i1 %6769, float -0.000000e+00, float %6770
  %6772 = fmul fast float %4281, 0x3FF7154760000000
  %6773 = fmul fast float %6772, %6771
  %6774 = fmul fast float %4282, 0x3FF7154760000000
  %6775 = fmul fast float %6774, %6771
  %6776 = fmul fast float %4283, 0x3FF7154760000000
  %6777 = fmul fast float %6776, %6771
  %6778 = call float @dx.op.unary.f32(i32 21, float %6773)  ; Exp(value)
  %6779 = call float @dx.op.unary.f32(i32 21, float %6775)  ; Exp(value)
  %6780 = call float @dx.op.unary.f32(i32 21, float %6777)  ; Exp(value)
  %6781 = call float @dx.op.unary.f32(i32 7, float %6778)  ; Saturate(value)
  %6782 = call float @dx.op.unary.f32(i32 7, float %6779)  ; Saturate(value)
  %6783 = call float @dx.op.unary.f32(i32 7, float %6780)  ; Saturate(value)
  %6784 = fmul fast float %6706, %6781
  %6785 = fmul fast float %6707, %6782
  %6786 = fmul fast float %6708, %6783
  %6787 = fsub fast float %6526, %211
  %6788 = fsub fast float %6527, %212
  %6789 = fsub fast float %6528, %213
  %6790 = call float @dx.op.dot3.f32(i32 55, float %6787, float %6788, float %6789, float %6787, float %6788, float %6789)  ; Dot3(ax,ay,az,bx,by,bz)
  %6791 = call float @dx.op.unary.f32(i32 25, float %6790)  ; Rsqrt(value)
  %6792 = fmul fast float %6791, %6787
  %6793 = fmul fast float %6791, %6788
  %6794 = fmul fast float %6791, %6789
  %6795 = call float @dx.op.dot3.f32(i32 55, float %6526, float %6527, float %6528, float %5058, float %5059, float %5060)  ; Dot3(ax,ay,az,bx,by,bz)
  %6796 = call float @dx.op.dot3.f32(i32 55, float %4890, float %4891, float %4892, float %6792, float %6793, float %6794)  ; Dot3(ax,ay,az,bx,by,bz)
  %6797 = call float @dx.op.unary.f32(i32 7, float %6795)  ; Saturate(value)
  %6798 = fmul fast float %6797, %6533
  %6799 = fmul fast float %6797, %6797
  %6800 = fmul fast float %6799, %5082
  %6801 = call float @dx.op.unary.f32(i32 7, float %6800)  ; Saturate(value)
  %6802 = fmul fast float %6798, %6801
  %6803 = bitcast float %6523 to i32
  %6804 = ashr i32 %6803, 1
  %6805 = sub nsw i32 1597463007, %6804
  %6806 = bitcast i32 %6805 to float
  %6807 = fmul fast float %6806, %6520
  %6808 = fmul fast float %6806, %6521
  %6809 = fmul fast float %6806, %6522
  %6810 = fsub fast float %6807, %211
  %6811 = fsub fast float %6808, %212
  %6812 = fsub fast float %6809, %213
  %6813 = call float @dx.op.dot3.f32(i32 55, float %6810, float %6811, float %6812, float %6810, float %6811, float %6812)  ; Dot3(ax,ay,az,bx,by,bz)
  %6814 = call float @dx.op.unary.f32(i32 25, float %6813)  ; Rsqrt(value)
  %6815 = fmul fast float %6810, %6814
  %6816 = fmul fast float %6811, %6814
  %6817 = fmul fast float %6812, %6814
  %6818 = call float @dx.op.dot3.f32(i32 55, float %5058, float %5059, float %5060, float %6815, float %6816, float %6817)  ; Dot3(ax,ay,az,bx,by,bz)
  %6819 = fmul fast float %6818, %6818
  %6820 = call float @dx.op.unary.f32(i32 6, float %6795)  ; FAbs(value)
  %6821 = fsub fast float 1.000000e+00, %5064
  %6822 = call float @dx.op.binary.f32(i32 35, float %6821, float 0x3F847AE140000000)  ; FMax(a,b)
  %6823 = fmul fast float %6822, %6822
  %6824 = fmul fast float %6823, %6823
  %6825 = fsub fast float 1.000000e+00, %6824
  %6826 = fmul fast float %5069, %5069
  %6827 = fmul fast float %6826, %6825
  %6828 = fadd fast float %6827, %6824
  %6829 = bitcast float %6828 to i32
  %6830 = ashr i32 %6829, 1
  %6831 = add nsw i32 %6830, 532487669
  %6832 = bitcast i32 %6831 to float
  %6833 = fadd fast float %6832, %5069
  %6834 = fmul fast float %6824, %6819
  %6835 = fsub fast float 1.000000e+00, %6819
  %6836 = fadd fast float %6835, %6834
  %6837 = fmul fast float %6820, %6820
  %6838 = fmul fast float %6837, %6825
  %6839 = fadd fast float %6838, %6824
  %6840 = bitcast float %6839 to i32
  %6841 = ashr i32 %6840, 1
  %6842 = add nsw i32 %6841, 532487669
  %6843 = bitcast i32 %6842 to float
  %6844 = fadd fast float %6843, %6820
  %6845 = fmul fast float %6836, %6836
  %6846 = fmul fast float %6845, %6833
  %6847 = fmul fast float %6846, %6844
  %6848 = fdiv fast float 1.000000e+00, %6847
  %6849 = bitcast float %6824 to i32
  %6850 = sitofp i32 %6849 to float
  %6851 = fmul fast float %6850, 0x3FE7F73180000000
  %6852 = fadd fast float %6851, 0x41AFE27C40000000
  %6853 = fptosi float %6852 to i32
  %6854 = bitcast i32 %6853 to float
  %6855 = fmul fast float %6489, 0x3FD80E9D60000000
  %6856 = fmul fast float %6855, %6806
  %6857 = fadd fast float %6854, %6856
  %6858 = bitcast float %6857 to i32
  %6859 = sub nsw i32 2129859010, %6858
  %6860 = bitcast i32 %6859 to float
  %6861 = fmul fast float %6824, %6848
  %6862 = fmul fast float %6861, %6854
  %6863 = fmul fast float %6862, %6860
  %6864 = call float @dx.op.unary.f32(i32 6, float %6796)  ; FAbs(value)
  %6865 = fsub fast float 1.000000e+00, %6864
  %6866 = bitcast float %6865 to i32
  %6867 = sitofp i32 %6866 to float
  %6868 = fmul fast float %6867, 5.000000e+00
  %6869 = fadd fast float %6868, 0xC1EFBF8940000000
  %6870 = fptosi float %6869 to i32
  %6871 = bitcast i32 %6870 to float
  %6872 = fsub fast float 1.000000e+00, %5055
  %6873 = fsub fast float 1.000000e+00, %5056
  %6874 = fsub fast float 1.000000e+00, %5067
  %6875 = fmul fast float %6871, %6872
  %6876 = fmul fast float %6871, %6873
  %6877 = fmul fast float %6871, %6874
  %6878 = fadd fast float %6875, %5055
  %6879 = fadd fast float %6876, %5056
  %6880 = fadd fast float %6877, %5067
  br i1 %5194, label %6881, label %6904

; <label>:6881                                    ; preds = %6767
  %6882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3857, float %6864, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6883 = extractvalue %dx.types.ResRet.f32 %6882, 0
  %6884 = extractvalue %dx.types.ResRet.f32 %6882, 1
  %6885 = extractvalue %dx.types.ResRet.f32 %6882, 2
  %6886 = fadd fast float %6883, -5.000000e-01
  %6887 = fadd fast float %6884, -5.000000e-01
  %6888 = fadd fast float %6885, -5.000000e-01
  %6889 = fmul fast float %5055, 4.000000e+00
  %6890 = fmul fast float %6889, %6872
  %6891 = fmul fast float %6890, %6886
  %6892 = fmul fast float %5056, 4.000000e+00
  %6893 = fmul fast float %6892, %6873
  %6894 = fmul fast float %6893, %6887
  %6895 = fmul fast float %5067, 4.000000e+00
  %6896 = fmul fast float %6895, %6874
  %6897 = fmul fast float %6896, %6888
  %6898 = fadd fast float %6891, %6878
  %6899 = fadd fast float %6894, %6879
  %6900 = fadd fast float %6897, %6880
  %6901 = call float @dx.op.unary.f32(i32 7, float %6898)  ; Saturate(value)
  %6902 = call float @dx.op.unary.f32(i32 7, float %6899)  ; Saturate(value)
  %6903 = call float @dx.op.unary.f32(i32 7, float %6900)  ; Saturate(value)
  br label %6904

; <label>:6904                                    ; preds = %6881, %6767
  %6905 = phi float [ %6901, %6881 ], [ %6878, %6767 ]
  %6906 = phi float [ %6902, %6881 ], [ %6879, %6767 ]
  %6907 = phi float [ %6903, %6881 ], [ %6880, %6767 ]
  %6908 = fmul fast float %6795, 9.843750e-01
  %6909 = fadd fast float %6908, 7.812500e-03
  %6910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6909, float %5184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6911 = extractvalue %dx.types.ResRet.f32 %6910, 2
  %6912 = extractvalue %dx.types.ResRet.f32 %6910, 3
  %6913 = fmul fast float %6911, %5055
  %6914 = fmul fast float %6911, %5056
  %6915 = fmul fast float %6911, %5067
  %6916 = fadd fast float %6913, %6912
  %6917 = fadd fast float %6914, %6912
  %6918 = fadd fast float %6915, %6912
  br i1 %5194, label %6919, label %6942

; <label>:6919                                    ; preds = %6904
  %6920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3857, float %6795, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6921 = extractvalue %dx.types.ResRet.f32 %6920, 0
  %6922 = extractvalue %dx.types.ResRet.f32 %6920, 1
  %6923 = extractvalue %dx.types.ResRet.f32 %6920, 2
  %6924 = fadd fast float %6921, -5.000000e-01
  %6925 = fadd fast float %6922, -5.000000e-01
  %6926 = fadd fast float %6923, -5.000000e-01
  %6927 = fmul fast float %5055, 4.000000e+00
  %6928 = fmul fast float %6927, %6872
  %6929 = fmul fast float %6928, %6924
  %6930 = fmul fast float %5056, 4.000000e+00
  %6931 = fmul fast float %6930, %6873
  %6932 = fmul fast float %6931, %6925
  %6933 = fmul fast float %5067, 4.000000e+00
  %6934 = fmul fast float %6933, %6874
  %6935 = fmul fast float %6934, %6926
  %6936 = fadd fast float %6929, %6916
  %6937 = fadd fast float %6932, %6917
  %6938 = fadd fast float %6935, %6918
  %6939 = call float @dx.op.unary.f32(i32 7, float %6936)  ; Saturate(value)
  %6940 = call float @dx.op.unary.f32(i32 7, float %6937)  ; Saturate(value)
  %6941 = call float @dx.op.unary.f32(i32 7, float %6938)  ; Saturate(value)
  br label %6942

; <label>:6942                                    ; preds = %6919, %6904
  %6943 = phi float [ %6939, %6919 ], [ %6916, %6904 ]
  %6944 = phi float [ %6940, %6919 ], [ %6917, %6904 ]
  %6945 = phi float [ %6941, %6919 ], [ %6918, %6904 ]
  %6946 = call float @dx.op.binary.f32(i32 35, float %6944, float %6945)  ; FMax(a,b)
  %6947 = call float @dx.op.binary.f32(i32 35, float %6943, float %6946)  ; FMax(a,b)
  %6948 = fsub fast float 1.000000e+00, %6947
  %6949 = fmul fast float %6905, %6863
  %6950 = fmul fast float %6906, %6863
  %6951 = fmul fast float %6907, %6863
  %6952 = fsub fast float 1.000000e+00, %6796
  %6953 = bitcast float %6952 to i32
  %6954 = sitofp i32 %6953 to float
  %6955 = fmul fast float %6954, 5.000000e+00
  %6956 = fadd fast float %6955, 0xC1EFBF8940000000
  %6957 = fptosi float %6956 to i32
  %6958 = bitcast i32 %6957 to float
  %6959 = fmul fast float %6958, %3858
  %6960 = fmul fast float %6948, %6959
  %6961 = fmul fast float %6960, %5244
  %6962 = fmul fast float %6960, %5245
  %6963 = fmul fast float %6960, %5246
  %6964 = fadd fast float %6961, %6949
  %6965 = fadd fast float %6962, %6950
  %6966 = fadd fast float %6963, %6951
  %6967 = fmul fast float %6784, %3883
  %6968 = fmul fast float %6967, %6802
  %6969 = fmul fast float %6968, %6948
  %6970 = fmul fast float %6785, %3883
  %6971 = fmul fast float %6970, %6802
  %6972 = fmul fast float %6971, %6948
  %6973 = fmul fast float %6786, %3883
  %6974 = fmul fast float %6973, %6802
  %6975 = fmul fast float %6974, %6948
  %6976 = fadd fast float %6969, %6463
  %6977 = fadd fast float %6972, %6464
  %6978 = fadd fast float %6975, %6465
  %6979 = fmul fast float %6968, %6964
  %6980 = fmul fast float %6971, %6965
  %6981 = fmul fast float %6974, %6966
  %6982 = fadd fast float %6979, %6460
  %6983 = fadd fast float %6980, %6461
  %6984 = fadd fast float %6981, %6462
  br label %6592

; <label>:6985                                    ; preds = %6592
  br label %6986

; <label>:6986                                    ; preds = %6985, %6426
  %6987 = phi float [ %6428, %6426 ], [ %6593, %6985 ]
  %6988 = phi float [ %6429, %6426 ], [ %6594, %6985 ]
  %6989 = phi float [ %6430, %6426 ], [ %6595, %6985 ]
  %6990 = phi float [ %6431, %6426 ], [ %6596, %6985 ]
  %6991 = phi float [ %6432, %6426 ], [ %6597, %6985 ]
  %6992 = phi float [ %6433, %6426 ], [ %6598, %6985 ]
  %6993 = add i32 %6427, 1
  %6994 = icmp ugt i32 %6993, %6423
  br i1 %6994, label %6995, label %6426

; <label>:6995                                    ; preds = %6986
  br label %6996

; <label>:6996                                    ; preds = %6995, %6376, %6366
  %6997 = phi float [ %6367, %6366 ], [ %6367, %6376 ], [ %6987, %6995 ]
  %6998 = phi float [ %6368, %6366 ], [ %6368, %6376 ], [ %6988, %6995 ]
  %6999 = phi float [ %6369, %6366 ], [ %6369, %6376 ], [ %6989, %6995 ]
  %7000 = phi float [ %6370, %6366 ], [ %6370, %6376 ], [ %6990, %6995 ]
  %7001 = phi float [ %6371, %6366 ], [ %6371, %6376 ], [ %6991, %6995 ]
  %7002 = phi float [ %6372, %6366 ], [ %6372, %6376 ], [ %6992, %6995 ]
  %7003 = fmul fast float %3883, %3883
  %7004 = fsub fast float 1.000000e+00, %7003
  %7005 = call float @dx.op.dot3.f32(i32 55, float %7004, float %7004, float %7004, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7006 = fsub fast float 1.000000e+00, %7005
  %7007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7008 = extractvalue %dx.types.CBufRet.f32 %7007, 0
  %7009 = fmul fast float %7008, %5250
  %7010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7011 = extractvalue %dx.types.CBufRet.f32 %7010, 3
  %7012 = fsub fast float 1.000000e+00, %3861
  %7013 = call float @dx.op.unary.f32(i32 7, float %7012)  ; Saturate(value)
  %7014 = fadd fast float %7002, %3860
  %7015 = fmul fast float %7014, %3861
  %7016 = fmul fast float %7013, %7011
  %7017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3862, i32 undef)  ; BufferLoad(srv,index,wot)
  %7018 = extractvalue %dx.types.ResRet.i32 %7017, 3
  %7019 = bitcast i32 %7018 to float
  %7020 = fsub fast float %7006, %7019
  %7021 = fmul fast float %7020, %225
  %7022 = fadd fast float %7021, %7019
  %7023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7024 = extractvalue %dx.types.CBufRet.f32 %7023, 3
  %7025 = fmul fast float %7000, %5061
  %7026 = fmul fast float %7001, %5062
  %7027 = fmul fast float %7002, %5063
  %7028 = fcmp fast ogt float %95, %245
  %7029 = and i1 %7028, %4286
  %7030 = or i1 %4292, %7029
  %7031 = icmp eq i32 %4285, 2
  %7032 = fcmp fast ole float %95, %245
  %7033 = and i1 %7032, %7031
  %7034 = or i1 %7033, %7030
  br i1 %7029, label %7035, label %7292

; <label>:7035                                    ; preds = %6996
  %7036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7037 = extractvalue %dx.types.CBufRet.f32 %7036, 2
  %7038 = extractvalue %dx.types.CBufRet.f32 %7036, 3
  %7039 = fmul fast float %7037, %104
  %7040 = fmul fast float %7038, %105
  %7041 = call float @dx.op.unary.f32(i32 7, float %7039)  ; Saturate(value)
  %7042 = call float @dx.op.unary.f32(i32 7, float %7040)  ; Saturate(value)
  %7043 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7041, float %7042, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7044 = extractvalue %dx.types.ResRet.f32 %7043, 0
  %7045 = extractvalue %dx.types.ResRet.f32 %7043, 1
  %7046 = extractvalue %dx.types.ResRet.f32 %7043, 2
  %7047 = extractvalue %dx.types.ResRet.f32 %7043, 3
  %7048 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7041, float %7042, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7049 = extractvalue %dx.types.ResRet.f32 %7048, 0
  %7050 = extractvalue %dx.types.ResRet.f32 %7048, 1
  %7051 = extractvalue %dx.types.ResRet.f32 %7048, 2
  %7052 = extractvalue %dx.types.ResRet.f32 %7048, 3
  %7053 = call float @dx.op.binary.f32(i32 35, float %7045, float %7046)  ; FMax(a,b)
  %7054 = call float @dx.op.binary.f32(i32 35, float %7044, float %7053)  ; FMax(a,b)
  %7055 = call float @dx.op.binary.f32(i32 35, float %7054, float %7047)  ; FMax(a,b)
  %7056 = call float @dx.op.binary.f32(i32 36, float %7050, float %7051)  ; FMin(a,b)
  %7057 = call float @dx.op.binary.f32(i32 36, float %7049, float %7056)  ; FMin(a,b)
  %7058 = call float @dx.op.binary.f32(i32 36, float %7057, float %7052)  ; FMin(a,b)
  %7059 = fmul fast float %7055, 2.550000e+02
  %7060 = fadd fast float %7059, 0x3F70101020000000
  %7061 = fptoui float %7060 to i32
  %7062 = fmul fast float %7058, 2.550000e+02
  %7063 = fadd fast float %7062, 0x3F70101020000000
  %7064 = fptoui float %7063 to i32
  %7065 = icmp ult i32 %7061, %7064
  br i1 %7065, label %7066, label %7234

; <label>:7066                                    ; preds = %7035
  %7067 = fcmp fast ogt float %94, 9.843750e-01
  %7068 = fadd fast float %95, -4.000000e+00
  %7069 = select i1 %7067, float -4.000000e+00, float %7068
  %7070 = call float @dx.op.binary.f32(i32 35, float %7069, float 0.000000e+00)  ; FMax(a,b)
  %7071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7072 = extractvalue %dx.types.CBufRet.f32 %7071, 0
  %7073 = fadd fast float %7072, %7070
  %7074 = extractvalue %dx.types.CBufRet.f32 %7071, 2
  %7075 = fmul fast float %7073, %7074
  %7076 = call float @dx.op.unary.f32(i32 23, float %7075)  ; Log(value)
  %7077 = extractvalue %dx.types.CBufRet.f32 %7071, 3
  %7078 = fmul fast float %7077, %7076
  %7079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7080 = extractvalue %dx.types.CBufRet.f32 %7079, 2
  %7081 = fmul fast float %7078, %7080
  %7082 = call float @dx.op.unary.f32(i32 7, float %7081)  ; Saturate(value)
  %7083 = uitofp i32 %7061 to float
  %7084 = uitofp i32 %7064 to float
  %7085 = fadd fast float %7083, 5.000000e-01
  %7086 = fadd fast float %7084, 5.000000e-01
  %7087 = fmul fast float %7080, %7085
  %7088 = fmul fast float %7080, %7086
  %7089 = fadd fast float %7087, 0x3F0FFB4800000000
  %7090 = fadd fast float %7088, 0xBF0FFB4800000000
  %7091 = call float @dx.op.binary.f32(i32 35, float %7082, float %7089)  ; FMax(a,b)
  %7092 = call float @dx.op.binary.f32(i32 36, float %7091, float %7090)  ; FMin(a,b)
  %7093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7094 = extractvalue %dx.types.CBufRet.f32 %7093, 1
  %7095 = extractvalue %dx.types.CBufRet.f32 %7093, 2
  %7096 = extractvalue %dx.types.CBufRet.f32 %7093, 0
  %7097 = fmul fast float %7094, %7092
  %7098 = fadd fast float %7096, %7097
  %7099 = fadd fast float %7096, %7095
  %7100 = fsub fast float %7094, %7095
  %7101 = fadd fast float %7100, %7096
  %7102 = call float @dx.op.binary.f32(i32 35, float %7098, float %7099)  ; FMax(a,b)
  %7103 = call float @dx.op.binary.f32(i32 36, float %7102, float %7101)  ; FMin(a,b)
  %7104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7041, float %7042, float %7103, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7105 = extractvalue %dx.types.ResRet.f32 %7104, 0
  %7106 = extractvalue %dx.types.ResRet.f32 %7104, 1
  %7107 = extractvalue %dx.types.ResRet.f32 %7104, 2
  %7108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7109 = extractvalue %dx.types.CBufRet.i32 %7108, 0
  %7110 = extractvalue %dx.types.CBufRet.i32 %7108, 1
  %7111 = uitofp i32 %7109 to float
  %7112 = uitofp i32 %7110 to float
  %7113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7114 = extractvalue %dx.types.CBufRet.f32 %7113, 0
  %7115 = extractvalue %dx.types.CBufRet.f32 %7113, 1
  %7116 = fmul fast float %7111, %7041
  %7117 = fmul fast float %7112, %7042
  %7118 = fadd fast float %7116, -5.000000e-01
  %7119 = fadd fast float %7117, -5.000000e-01
  %7120 = call float @dx.op.unary.f32(i32 22, float %7118)  ; Frc(value)
  %7121 = call float @dx.op.unary.f32(i32 22, float %7119)  ; Frc(value)
  %7122 = fmul fast float %7120, %7120
  %7123 = fmul fast float %7122, %7120
  %7124 = fsub fast float 3.000000e+00, %7120
  %7125 = fmul fast float %7122, %7124
  %7126 = fmul fast float %7120, 3.000000e+00
  %7127 = fmul fast float %7123, 3.000000e+00
  %7128 = fmul fast float %7122, 6.000000e+00
  %7129 = fsub fast float %7127, %7128
  %7130 = fadd fast float %7129, 4.000000e+00
  %7131 = fmul fast float %7130, 0x3FC5555560000000
  %7132 = fmul fast float %7123, -3.000000e+00
  %7133 = fadd fast float %7122, %7120
  %7134 = fmul fast float %7133, 3.000000e+00
  %7135 = fadd fast float %7132, 1.000000e+00
  %7136 = fadd fast float %7135, %7134
  %7137 = fmul fast float %7123, 0x3FC5555560000000
  %7138 = fmul fast float %7121, %7121
  %7139 = fmul fast float %7138, %7121
  %7140 = fsub fast float 3.000000e+00, %7121
  %7141 = fmul fast float %7138, %7140
  %7142 = fmul fast float %7121, 3.000000e+00
  %7143 = fmul fast float %7139, 3.000000e+00
  %7144 = fmul fast float %7138, 6.000000e+00
  %7145 = fsub fast float %7143, %7144
  %7146 = fadd fast float %7145, 4.000000e+00
  %7147 = fmul fast float %7146, 0x3FC5555560000000
  %7148 = fmul fast float %7139, -3.000000e+00
  %7149 = fadd fast float %7138, %7121
  %7150 = fmul fast float %7149, 3.000000e+00
  %7151 = fadd fast float %7148, 1.000000e+00
  %7152 = fadd fast float %7151, %7150
  %7153 = fmul fast float %7139, 0x3FC5555560000000
  %7154 = fadd fast float %7120, 1.000000e+00
  %7155 = fsub fast float 1.000000e+00, %7126
  %7156 = fadd fast float %7155, %7125
  %7157 = fadd fast float %7156, %7130
  %7158 = fmul fast float %7157, 0x3FC5555560000000
  %7159 = fdiv fast float %7131, %7158
  %7160 = fsub fast float %7154, %7159
  %7161 = fsub fast float 1.000000e+00, %7120
  %7162 = fadd fast float %7136, %7123
  %7163 = fmul fast float %7162, 0x3FC5555560000000
  %7164 = fdiv fast float %7137, %7163
  %7165 = fadd fast float %7161, %7164
  %7166 = fadd fast float %7121, 1.000000e+00
  %7167 = fsub fast float 1.000000e+00, %7142
  %7168 = fadd fast float %7167, %7141
  %7169 = fadd fast float %7168, %7146
  %7170 = fmul fast float %7169, 0x3FC5555560000000
  %7171 = fdiv fast float %7147, %7170
  %7172 = fsub fast float %7166, %7171
  %7173 = fsub fast float 1.000000e+00, %7121
  %7174 = fadd fast float %7152, %7139
  %7175 = fmul fast float %7174, 0x3FC5555560000000
  %7176 = fdiv fast float %7153, %7175
  %7177 = fadd fast float %7176, %7173
  %7178 = fmul fast float %7160, %7114
  %7179 = fsub fast float %7041, %7178
  %7180 = fmul fast float %7165, %7114
  %7181 = fadd fast float %7180, %7041
  %7182 = fmul fast float %7177, %7115
  %7183 = fadd fast float %7182, %7042
  %7184 = fmul fast float %7172, %7115
  %7185 = fsub fast float %7042, %7184
  %7186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7179, float %7185, float %7103, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7187 = extractvalue %dx.types.ResRet.f32 %7186, 0
  %7188 = extractvalue %dx.types.ResRet.f32 %7186, 1
  %7189 = extractvalue %dx.types.ResRet.f32 %7186, 2
  %7190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7181, float %7185, float %7103, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7191 = extractvalue %dx.types.ResRet.f32 %7190, 0
  %7192 = extractvalue %dx.types.ResRet.f32 %7190, 1
  %7193 = extractvalue %dx.types.ResRet.f32 %7190, 2
  %7194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7179, float %7183, float %7103, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7195 = extractvalue %dx.types.ResRet.f32 %7194, 0
  %7196 = extractvalue %dx.types.ResRet.f32 %7194, 1
  %7197 = extractvalue %dx.types.ResRet.f32 %7194, 2
  %7198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7181, float %7183, float %7103, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7199 = extractvalue %dx.types.ResRet.f32 %7198, 0
  %7200 = extractvalue %dx.types.ResRet.f32 %7198, 1
  %7201 = extractvalue %dx.types.ResRet.f32 %7198, 2
  %7202 = fsub fast float %7195, %7187
  %7203 = fsub fast float %7196, %7188
  %7204 = fsub fast float %7197, %7189
  %7205 = fmul fast float %7202, %7175
  %7206 = fmul fast float %7203, %7175
  %7207 = fmul fast float %7204, %7175
  %7208 = fadd fast float %7205, %7187
  %7209 = fadd fast float %7206, %7188
  %7210 = fadd fast float %7207, %7189
  %7211 = fsub fast float %7199, %7191
  %7212 = fsub fast float %7200, %7192
  %7213 = fsub fast float %7201, %7193
  %7214 = fmul fast float %7211, %7175
  %7215 = fmul fast float %7212, %7175
  %7216 = fmul fast float %7213, %7175
  %7217 = fsub fast float %7191, %7208
  %7218 = fadd fast float %7217, %7214
  %7219 = fsub fast float %7192, %7209
  %7220 = fadd fast float %7219, %7215
  %7221 = fsub fast float %7193, %7210
  %7222 = fadd fast float %7221, %7216
  %7223 = fmul fast float %7218, %7163
  %7224 = fmul fast float %7220, %7163
  %7225 = fmul fast float %7222, %7163
  %7226 = fadd fast float %7223, %7208
  %7227 = fadd fast float %7224, %7209
  %7228 = fadd fast float %7225, %7210
  %7229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7230 = extractvalue %dx.types.CBufRet.f32 %7229, 1
  %7231 = fmul fast float %7226, %7230
  %7232 = fmul fast float %7227, %7230
  %7233 = fmul fast float %7228, %7230
  br label %7234

; <label>:7234                                    ; preds = %7066, %7035
  %7235 = phi float [ %7105, %7066 ], [ 1.000000e+00, %7035 ]
  %7236 = phi float [ %7106, %7066 ], [ 1.000000e+00, %7035 ]
  %7237 = phi float [ %7107, %7066 ], [ 1.000000e+00, %7035 ]
  %7238 = phi float [ %7231, %7066 ], [ 0.000000e+00, %7035 ]
  %7239 = phi float [ %7232, %7066 ], [ 0.000000e+00, %7035 ]
  %7240 = phi float [ %7233, %7066 ], [ 0.000000e+00, %7035 ]
  %7241 = fmul fast float %7238, %7022
  %7242 = fmul fast float %7239, %7022
  %7243 = fmul fast float %7240, %7022
  %7244 = call float @dx.op.dot3.f32(i32 55, float %7235, float %7236, float %7237, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7245 = call float @dx.op.dot3.f32(i32 55, float %7241, float %7242, float %7243, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7246 = select i1 %282, float %7244, float %7235
  %7247 = select i1 %282, float %7244, float %7236
  %7248 = select i1 %282, float 1.000000e+00, float %7237
  %7249 = select i1 %282, float %7245, float %7241
  %7250 = select i1 %282, float 0.000000e+00, float %7242
  %7251 = select i1 %282, float 0.000000e+00, float %7243
  %7252 = fmul fast float %7246, %7025
  %7253 = fmul fast float %7247, %7026
  %7254 = fmul fast float %7248, %7027
  %7255 = fadd fast float %7252, %7249
  %7256 = fadd fast float %7253, %7250
  %7257 = fadd fast float %7251, %7254
  %7258 = fmul fast float %7246, %6997
  %7259 = fmul fast float %7247, %6998
  %7260 = fmul fast float %7248, %6999
  %7261 = fmul fast float %140, %7037
  %7262 = fmul fast float %142, %7038
  %7263 = fsub fast float 1.000000e+00, %7261
  %7264 = fsub fast float 1.000000e+00, %7262
  %7265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7266 = extractvalue %dx.types.CBufRet.f32 %7265, 0
  %7267 = extractvalue %dx.types.CBufRet.f32 %7265, 1
  %7268 = extractvalue %dx.types.CBufRet.f32 %7265, 2
  %7269 = fmul fast float %7263, %7266
  %7270 = fmul fast float %7263, %7267
  %7271 = fmul fast float %7263, %7268
  %7272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7273 = extractvalue %dx.types.CBufRet.f32 %7272, 0
  %7274 = extractvalue %dx.types.CBufRet.f32 %7272, 1
  %7275 = extractvalue %dx.types.CBufRet.f32 %7272, 2
  %7276 = fmul fast float %7264, %7273
  %7277 = fmul fast float %7264, %7274
  %7278 = fmul fast float %7264, %7275
  %7279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7280 = extractvalue %dx.types.CBufRet.f32 %7279, 0
  %7281 = extractvalue %dx.types.CBufRet.f32 %7279, 1
  %7282 = extractvalue %dx.types.CBufRet.f32 %7279, 2
  %7283 = fadd fast float %7276, %7280
  %7284 = fadd fast float %7283, %7269
  %7285 = fadd fast float %7277, %7281
  %7286 = fadd fast float %7285, %7270
  %7287 = fadd fast float %7278, %7282
  %7288 = fadd fast float %7287, %7271
  %7289 = fmul fast float %7284, %245
  %7290 = fmul fast float %7286, %245
  %7291 = fmul fast float %7288, %245
  br label %7292

; <label>:7292                                    ; preds = %7234, %6996
  %7293 = phi float [ %7289, %7234 ], [ %191, %6996 ]
  %7294 = phi float [ %7290, %7234 ], [ %192, %6996 ]
  %7295 = phi float [ %7291, %7234 ], [ %193, %6996 ]
  %7296 = phi float [ %245, %7234 ], [ %95, %6996 ]
  %7297 = phi float [ %7255, %7234 ], [ %7025, %6996 ]
  %7298 = phi float [ %7256, %7234 ], [ %7026, %6996 ]
  %7299 = phi float [ %7257, %7234 ], [ %7027, %6996 ]
  %7300 = phi float [ %7258, %7234 ], [ %6997, %6996 ]
  %7301 = phi float [ %7259, %7234 ], [ %6998, %6996 ]
  %7302 = phi float [ %7260, %7234 ], [ %6999, %6996 ]
  %7303 = phi float [ %7235, %7234 ], [ 1.000000e+00, %6996 ]
  br i1 %7034, label %8458, label %7304

; <label>:7304                                    ; preds = %7292
  %7305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7306 = extractvalue %dx.types.CBufRet.f32 %7305, 0
  %7307 = extractvalue %dx.types.CBufRet.f32 %7305, 1
  %7308 = extractvalue %dx.types.CBufRet.f32 %7305, 2
  %7309 = extractvalue %dx.types.CBufRet.f32 %7305, 3
  %7310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7311 = extractvalue %dx.types.CBufRet.f32 %7310, 0
  %7312 = extractvalue %dx.types.CBufRet.f32 %7310, 1
  %7313 = extractvalue %dx.types.CBufRet.f32 %7310, 2
  %7314 = extractvalue %dx.types.CBufRet.f32 %7310, 3
  %7315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7316 = extractvalue %dx.types.CBufRet.f32 %7315, 0
  %7317 = extractvalue %dx.types.CBufRet.f32 %7315, 1
  %7318 = extractvalue %dx.types.CBufRet.f32 %7315, 2
  %7319 = extractvalue %dx.types.CBufRet.f32 %7315, 3
  %7320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7321 = extractvalue %dx.types.CBufRet.f32 %7320, 0
  %7322 = extractvalue %dx.types.CBufRet.f32 %7320, 1
  %7323 = extractvalue %dx.types.CBufRet.f32 %7320, 2
  %7324 = extractvalue %dx.types.CBufRet.f32 %7320, 3
  %7325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7326 = extractvalue %dx.types.CBufRet.f32 %7325, 3
  %7327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7328 = extractvalue %dx.types.CBufRet.f32 %7327, 3
  %7329 = extractvalue %dx.types.CBufRet.f32 %7327, 0
  %7330 = extractvalue %dx.types.CBufRet.f32 %7327, 1
  %7331 = extractvalue %dx.types.CBufRet.f32 %7327, 2
  %7332 = fcmp fast olt float %7331, -5.000000e-01
  %7333 = call float @dx.op.dot3.f32(i32 55, float %7293, float %7294, float %7295, float %7293, float %7294, float %7295)  ; Dot3(ax,ay,az,bx,by,bz)
  %7334 = call float @dx.op.unary.f32(i32 25, float %7333)  ; Rsqrt(value)
  %7335 = fmul fast float %7334, %7333
  %7336 = fmul fast float %7334, %7293
  %7337 = fmul fast float %7334, %7294
  %7338 = fmul fast float %7334, %7295
  %7339 = fadd fast float %7335, %7309
  %7340 = call float @dx.op.dot3.f32(i32 55, float %7336, float %7337, float %7338, float %7306, float %7307, float %7308)  ; Dot3(ax,ay,az,bx,by,bz)
  %7341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7342 = extractvalue %dx.types.CBufRet.i32 %7341, 1
  %7343 = and i32 %7342, 1
  %7344 = icmp ne i32 %7343, 0
  %7345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7346 = extractvalue %dx.types.CBufRet.f32 %7345, 2
  %7347 = fcmp fast ogt float %7346, 0.000000e+00
  %7348 = and i1 %7344, %7347
  br i1 %7348, label %7349, label %7755, !dx.controlflow.hints !123

; <label>:7349                                    ; preds = %7304
  %7350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7351 = extractvalue %dx.types.CBufRet.f32 %7350, 3
  %7352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7353 = extractvalue %dx.types.CBufRet.f32 %7352, 2
  %7354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7355 = extractvalue %dx.types.CBufRet.f32 %7354, 2
  %7356 = fsub fast float %7353, %7355
  %7357 = and i32 %7342, 2
  %7358 = extractvalue %dx.types.CBufRet.i32 %7341, 0
  %7359 = call i32 @dx.op.binary.i32(i32 40, i32 %7358, i32 3)  ; UMin(a,b)
  %7360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7361 = extractvalue %dx.types.CBufRet.f32 %7360, 0
  %7362 = extractvalue %dx.types.CBufRet.f32 %7360, 1
  %7363 = extractvalue %dx.types.CBufRet.f32 %7354, 0
  %7364 = extractvalue %dx.types.CBufRet.f32 %7354, 1
  %7365 = fsub fast float %7361, %7363
  %7366 = fsub fast float %7362, %7364
  %7367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7368 = extractvalue %dx.types.CBufRet.f32 %7367, 0
  %7369 = fcmp fast ogt float %7368, 0.000000e+00
  %7370 = fsub fast float -0.000000e+00, %7365
  %7371 = fsub fast float -0.000000e+00, %7366
  %7372 = call float @dx.op.dot2.f32(i32 54, float %7336, float %7337, float %7336, float %7337)  ; Dot2(ax,ay,bx,by)
  %7373 = call float @dx.op.dot2.f32(i32 54, float %7336, float %7337, float %7370, float %7371)  ; Dot2(ax,ay,bx,by)
  %7374 = fmul fast float %7373, 2.000000e+00
  %7375 = call float @dx.op.dot2.f32(i32 54, float %7370, float %7371, float %7370, float %7371)  ; Dot2(ax,ay,bx,by)
  %7376 = fmul fast float %7368, %7368
  %7377 = fsub fast float %7375, %7376
  %7378 = fmul fast float %7374, %7374
  %7379 = fmul fast float %7372, 4.000000e+00
  %7380 = fmul fast float %7379, %7377
  %7381 = fsub fast float %7378, %7380
  %7382 = fcmp fast ogt float %7381, 0.000000e+00
  br i1 %7382, label %7383, label %7398

; <label>:7383                                    ; preds = %7349
  %7384 = fcmp fast ogt float %7374, 0.000000e+00
  %7385 = call float @dx.op.unary.f32(i32 24, float %7381)  ; Sqrt(value)
  %7386 = fsub fast float -0.000000e+00, %7385
  %7387 = select i1 %7384, float %7385, float %7386
  %7388 = fadd fast float %7387, %7374
  %7389 = fmul float %7388, -5.000000e-01
  %7390 = fdiv fast float %7389, %7372
  %7391 = call float @dx.op.binary.f32(i32 35, float %7390, float 0.000000e+00)  ; FMax(a,b)
  %7392 = call float @dx.op.binary.f32(i32 36, float %7335, float %7391)  ; FMin(a,b)
  %7393 = fdiv fast float %7377, %7389
  %7394 = call float @dx.op.binary.f32(i32 35, float %7393, float 0.000000e+00)  ; FMax(a,b)
  %7395 = call float @dx.op.binary.f32(i32 36, float %7335, float %7394)  ; FMin(a,b)
  %7396 = call float @dx.op.binary.f32(i32 36, float %7392, float %7395)  ; FMin(a,b)
  %7397 = call float @dx.op.binary.f32(i32 35, float %7392, float %7395)  ; FMax(a,b)
  br label %7398

; <label>:7398                                    ; preds = %7383, %7349
  %7399 = phi float [ %7397, %7383 ], [ -1.000000e+00, %7349 ]
  %7400 = phi float [ %7396, %7383 ], [ -1.000000e+00, %7349 ]
  %7401 = phi i1 [ true, %7383 ], [ false, %7349 ]
  %7402 = and i1 %7369, %7401
  br i1 %7402, label %7403, label %7405

; <label>:7403                                    ; preds = %7398
  %7404 = fcmp fast oeq float %7400, %7399
  br i1 %7404, label %7708, label %7406

; <label>:7405                                    ; preds = %7398
  br i1 %7369, label %7708, label %7406

; <label>:7406                                    ; preds = %7405, %7403
  %7407 = phi float [ %7335, %7405 ], [ %7399, %7403 ]
  %7408 = phi float [ 0.000000e+00, %7405 ], [ %7400, %7403 ]
  %7409 = icmp ne i32 %7357, 0
  %7410 = fmul fast float %7407, %7338
  %7411 = fadd fast float %7410, %7351
  %7412 = fmul fast float %7411, %7407
  %7413 = select i1 %7409, float 0.000000e+00, float %7412
  %7414 = fcmp fast oeq float %7338, 0.000000e+00
  %7415 = fdiv fast float %7356, %7338
  %7416 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7415)  ; FMax(a,b)
  %7417 = select i1 %7414, float %7407, float %7416
  %7418 = call float @dx.op.binary.f32(i32 36, float %7407, float %7417)  ; FMin(a,b)
  %7419 = fcmp fast ogt float %7338, 0.000000e+00
  %7420 = fcmp fast olt float %7356, 0.000000e+00
  br i1 %7419, label %7421, label %7478

; <label>:7421                                    ; preds = %7406
  %7422 = icmp eq i32 %7357, 0
  br i1 %7420, label %7423, label %7467

; <label>:7423                                    ; preds = %7421
  %7424 = select i1 %7422, float %7407, float 0.000000e+00
  %7425 = fsub fast float -0.000000e+00, %7424
  %7426 = call float @dx.op.unary.f32(i32 6, float %7425)  ; FAbs(value)
  %7427 = fmul fast float %7424, %7338
  %7428 = fadd fast float %7427, %7351
  %7429 = fmul fast float %7426, %7428
  %7430 = fsub fast float %7413, %7429
  %7431 = fsub fast float %7407, %7426
  %7432 = select i1 %7422, float %7431, float 0.000000e+00
  %7433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7434 = extractvalue %dx.types.CBufRet.f32 %7433, 0
  %7435 = extractvalue %dx.types.CBufRet.f32 %7433, 1
  %7436 = extractvalue %dx.types.CBufRet.f32 %7433, 2
  %7437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7438 = extractvalue %dx.types.CBufRet.f32 %7437, 0
  %7439 = extractvalue %dx.types.CBufRet.f32 %7437, 1
  %7440 = extractvalue %dx.types.CBufRet.f32 %7437, 2
  %7441 = extractvalue %dx.types.CBufRet.f32 %7437, 3
  %7442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7443 = extractvalue %dx.types.CBufRet.f32 %7442, 3
  %7444 = call float @dx.op.binary.f32(i32 36, float %7430, float %7443)  ; FMin(a,b)
  %7445 = fmul fast float %7441, %7432
  %7446 = call float @dx.op.unary.f32(i32 7, float %7445)  ; Saturate(value)
  %7447 = fsub fast float %7438, %7434
  %7448 = fsub fast float %7439, %7435
  %7449 = fsub fast float %7440, %7436
  %7450 = fmul fast float %7446, %7447
  %7451 = fmul fast float %7446, %7448
  %7452 = fmul fast float %7446, %7449
  %7453 = fadd fast float %7450, %7434
  %7454 = fadd fast float %7451, %7435
  %7455 = fadd fast float %7452, %7436
  %7456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7457 = extractvalue %dx.types.CBufRet.f32 %7456, 0
  %7458 = extractvalue %dx.types.CBufRet.f32 %7456, 1
  %7459 = fadd fast float %7458, %7457
  %7460 = call float @dx.op.unary.f32(i32 7, float %7459)  ; Saturate(value)
  %7461 = extractvalue %dx.types.CBufRet.f32 %7456, 2
  %7462 = extractvalue %dx.types.CBufRet.f32 %7456, 3
  %7463 = fadd fast float %7462, %7461
  %7464 = call float @dx.op.unary.f32(i32 7, float %7463)  ; Saturate(value)
  %7465 = fmul fast float %7460, %7444
  %7466 = fmul fast float %7465, %7464
  br label %7708

; <label>:7467                                    ; preds = %7421
  br i1 %7422, label %7468, label %7489

; <label>:7468                                    ; preds = %7467
  %7469 = call float @dx.op.binary.f32(i32 36, float %7418, float %7408)  ; FMin(a,b)
  %7470 = fsub fast float %7418, %7469
  %7471 = fsub fast float %7470, %7407
  %7472 = call float @dx.op.unary.f32(i32 6, float %7471)  ; FAbs(value)
  %7473 = fadd fast float %7470, %7407
  %7474 = fmul fast float %7473, %7338
  %7475 = fadd fast float %7474, %7351
  %7476 = fmul fast float %7475, %7472
  %7477 = fsub fast float %7413, %7476
  br label %7489

; <label>:7478                                    ; preds = %7406
  br i1 %7420, label %7479, label %7489

; <label>:7479                                    ; preds = %7478
  %7480 = call float @dx.op.binary.f32(i32 35, float %7408, float %7418)  ; FMax(a,b)
  %7481 = icmp eq i32 %7357, 0
  %7482 = select i1 %7481, float %7418, float 0.000000e+00
  %7483 = fsub fast float -0.000000e+00, %7482
  %7484 = call float @dx.op.unary.f32(i32 6, float %7483)  ; FAbs(value)
  %7485 = fmul fast float %7482, %7338
  %7486 = fadd fast float %7485, %7351
  %7487 = fmul fast float %7484, %7486
  %7488 = fsub fast float %7413, %7487
  br label %7489

; <label>:7489                                    ; preds = %7479, %7478, %7468, %7467
  %7490 = phi float [ %7408, %7467 ], [ %7408, %7468 ], [ %7480, %7479 ], [ %7408, %7478 ]
  %7491 = phi float [ 0.000000e+00, %7467 ], [ %7472, %7468 ], [ %7484, %7479 ], [ 0.000000e+00, %7478 ]
  %7492 = phi float [ %7413, %7467 ], [ %7477, %7468 ], [ %7488, %7479 ], [ %7413, %7478 ]
  %7493 = phi float [ %7418, %7467 ], [ %7418, %7468 ], [ %7407, %7479 ], [ %7407, %7478 ]
  %7494 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %7494, align 4, !tbaa !124, !noalias !126
  %7495 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %7495, align 4, !tbaa !124, !noalias !126
  %7496 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %7496, align 4, !tbaa !124, !noalias !126
  %7497 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %7497, align 4, !tbaa !124, !noalias !126
  %7498 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %7498, align 4, !tbaa !124, !noalias !126
  %7499 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %7499, align 4, !tbaa !124, !noalias !126
  %7500 = icmp sgt i32 %7359, 0
  br i1 %7500, label %7501, label %7562

; <label>:7501                                    ; preds = %7489
  br label %7502

; <label>:7502                                    ; preds = %7551, %7501
  %7503 = phi i32 [ %7552, %7551 ], [ 0, %7501 ]
  %7504 = phi i32 [ %7553, %7551 ], [ 0, %7501 ]
  %7505 = add nuw i32 %7504, 171
  %7506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7505)  ; CBufferLoadLegacy(handle,regIndex)
  %7507 = extractvalue %dx.types.CBufRet.f32 %7506, 0
  %7508 = extractvalue %dx.types.CBufRet.f32 %7506, 1
  %7509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7510 = extractvalue %dx.types.CBufRet.f32 %7509, 0
  %7511 = extractvalue %dx.types.CBufRet.f32 %7509, 1
  %7512 = fsub fast float %7507, %7510
  %7513 = fsub fast float %7508, %7511
  %7514 = extractvalue %dx.types.CBufRet.f32 %7506, 2
  %7515 = fsub fast float -0.000000e+00, %7512
  %7516 = fsub fast float -0.000000e+00, %7513
  %7517 = call float @dx.op.dot2.f32(i32 54, float %7336, float %7337, float %7515, float %7516)  ; Dot2(ax,ay,bx,by)
  %7518 = fmul fast float %7517, 2.000000e+00
  %7519 = call float @dx.op.dot2.f32(i32 54, float %7515, float %7516, float %7515, float %7516)  ; Dot2(ax,ay,bx,by)
  %7520 = fmul fast float %7514, %7514
  %7521 = fsub fast float %7519, %7520
  %7522 = fmul fast float %7518, %7518
  %7523 = fmul fast float %7379, %7521
  %7524 = fsub fast float %7522, %7523
  %7525 = fcmp fast ogt float %7524, 0.000000e+00
  br i1 %7525, label %7526, label %7541

; <label>:7526                                    ; preds = %7502
  %7527 = fcmp fast ogt float %7518, 0.000000e+00
  %7528 = call float @dx.op.unary.f32(i32 24, float %7524)  ; Sqrt(value)
  %7529 = fsub fast float -0.000000e+00, %7528
  %7530 = select i1 %7527, float %7528, float %7529
  %7531 = fadd fast float %7530, %7518
  %7532 = fmul float %7531, -5.000000e-01
  %7533 = fdiv fast float %7532, %7372
  %7534 = call float @dx.op.binary.f32(i32 35, float %7533, float 0.000000e+00)  ; FMax(a,b)
  %7535 = call float @dx.op.binary.f32(i32 36, float %7407, float %7534)  ; FMin(a,b)
  %7536 = fdiv fast float %7521, %7532
  %7537 = call float @dx.op.binary.f32(i32 35, float %7536, float 0.000000e+00)  ; FMax(a,b)
  %7538 = call float @dx.op.binary.f32(i32 36, float %7407, float %7537)  ; FMin(a,b)
  %7539 = call float @dx.op.binary.f32(i32 36, float %7535, float %7538)  ; FMin(a,b)
  %7540 = call float @dx.op.binary.f32(i32 35, float %7535, float %7538)  ; FMax(a,b)
  br label %7541

; <label>:7541                                    ; preds = %7526, %7502
  %7542 = phi float [ %7540, %7526 ], [ -1.000000e+00, %7502 ]
  %7543 = phi float [ %7539, %7526 ], [ -1.000000e+00, %7502 ]
  %7544 = phi i1 [ true, %7526 ], [ false, %7502 ]
  br i1 %7544, label %7545, label %7551

; <label>:7545                                    ; preds = %7541
  %7546 = call float @dx.op.binary.f32(i32 35, float %7490, float %7543)  ; FMax(a,b)
  %7547 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7504
  store float %7546, float* %7547, align 4, !tbaa !124, !noalias !126
  %7548 = call float @dx.op.binary.f32(i32 35, float %7490, float %7542)  ; FMax(a,b)
  %7549 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7504
  store float %7548, float* %7549, align 4, !tbaa !124, !noalias !126
  %7550 = add nsw i32 %7503, 1
  br label %7551

; <label>:7551                                    ; preds = %7545, %7541
  %7552 = phi i32 [ %7550, %7545 ], [ %7503, %7541 ]
  %7553 = add nuw nsw i32 %7504, 1
  %7554 = icmp eq i32 %7553, %7359
  br i1 %7554, label %7555, label %7502

; <label>:7555                                    ; preds = %7551
  %7556 = load float, float* %7496, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %7557 = load float, float* %7495, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  %7558 = load float, float* %7494, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  %7559 = load float, float* %7499, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %7560 = load float, float* %7498, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  %7561 = load float, float* %7497, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  br label %7562

; <label>:7562                                    ; preds = %7555, %7489
  %7563 = phi float [ -1.000000e+00, %7489 ], [ %7561, %7555 ]
  %7564 = phi float [ -1.000000e+00, %7489 ], [ %7560, %7555 ]
  %7565 = phi float [ -1.000000e+00, %7489 ], [ %7559, %7555 ]
  %7566 = phi float [ -1.000000e+00, %7489 ], [ %7558, %7555 ]
  %7567 = phi float [ -1.000000e+00, %7489 ], [ %7557, %7555 ]
  %7568 = phi float [ -1.000000e+00, %7489 ], [ %7556, %7555 ]
  %7569 = phi i32 [ 0, %7489 ], [ %7552, %7555 ]
  %7570 = call float @dx.op.binary.f32(i32 36, float %7567, float %7568)  ; FMin(a,b)
  %7571 = call float @dx.op.binary.f32(i32 36, float %7566, float %7570)  ; FMin(a,b)
  %7572 = call float @dx.op.binary.f32(i32 35, float %7566, float %7567)  ; FMax(a,b)
  %7573 = call float @dx.op.binary.f32(i32 36, float %7572, float %7568)  ; FMin(a,b)
  %7574 = call float @dx.op.binary.f32(i32 36, float %7566, float %7567)  ; FMin(a,b)
  %7575 = call float @dx.op.binary.f32(i32 35, float %7574, float %7573)  ; FMax(a,b)
  %7576 = call float @dx.op.binary.f32(i32 35, float %7567, float %7568)  ; FMax(a,b)
  %7577 = call float @dx.op.binary.f32(i32 35, float %7566, float %7576)  ; FMax(a,b)
  store float %7571, float* %7494, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  store float %7575, float* %7495, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  store float %7577, float* %7496, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %7578 = call float @dx.op.binary.f32(i32 36, float %7564, float %7565)  ; FMin(a,b)
  %7579 = call float @dx.op.binary.f32(i32 36, float %7563, float %7578)  ; FMin(a,b)
  %7580 = call float @dx.op.binary.f32(i32 35, float %7563, float %7564)  ; FMax(a,b)
  %7581 = call float @dx.op.binary.f32(i32 36, float %7580, float %7565)  ; FMin(a,b)
  %7582 = call float @dx.op.binary.f32(i32 36, float %7563, float %7564)  ; FMin(a,b)
  %7583 = call float @dx.op.binary.f32(i32 35, float %7582, float %7581)  ; FMax(a,b)
  %7584 = call float @dx.op.binary.f32(i32 35, float %7564, float %7565)  ; FMax(a,b)
  %7585 = call float @dx.op.binary.f32(i32 35, float %7563, float %7584)  ; FMax(a,b)
  store float %7579, float* %7497, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  store float %7583, float* %7498, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  store float %7585, float* %7499, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %7586 = sub nsw i32 3, %7569
  %7587 = icmp sgt i32 %7586, 2
  br i1 %7587, label %7588, label %7626

; <label>:7588                                    ; preds = %7562
  %7589 = icmp eq i32 %7357, 0
  %7590 = fsub fast float %7407, %7491
  %7591 = select i1 %7589, float %7590, float %7491
  %7592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7593 = extractvalue %dx.types.CBufRet.f32 %7592, 0
  %7594 = extractvalue %dx.types.CBufRet.f32 %7592, 1
  %7595 = extractvalue %dx.types.CBufRet.f32 %7592, 2
  %7596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7597 = extractvalue %dx.types.CBufRet.f32 %7596, 0
  %7598 = extractvalue %dx.types.CBufRet.f32 %7596, 1
  %7599 = extractvalue %dx.types.CBufRet.f32 %7596, 2
  %7600 = extractvalue %dx.types.CBufRet.f32 %7596, 3
  %7601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7602 = extractvalue %dx.types.CBufRet.f32 %7601, 3
  %7603 = call float @dx.op.binary.f32(i32 36, float %7492, float %7602)  ; FMin(a,b)
  %7604 = fmul fast float %7600, %7591
  %7605 = call float @dx.op.unary.f32(i32 7, float %7604)  ; Saturate(value)
  %7606 = fsub fast float %7597, %7593
  %7607 = fsub fast float %7598, %7594
  %7608 = fsub fast float %7599, %7595
  %7609 = fmul fast float %7605, %7606
  %7610 = fmul fast float %7605, %7607
  %7611 = fmul fast float %7605, %7608
  %7612 = fadd fast float %7609, %7593
  %7613 = fadd fast float %7610, %7594
  %7614 = fadd fast float %7611, %7595
  %7615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7616 = extractvalue %dx.types.CBufRet.f32 %7615, 0
  %7617 = extractvalue %dx.types.CBufRet.f32 %7615, 1
  %7618 = fadd fast float %7617, %7616
  %7619 = call float @dx.op.unary.f32(i32 7, float %7618)  ; Saturate(value)
  %7620 = extractvalue %dx.types.CBufRet.f32 %7615, 2
  %7621 = extractvalue %dx.types.CBufRet.f32 %7615, 3
  %7622 = fadd fast float %7621, %7620
  %7623 = call float @dx.op.unary.f32(i32 7, float %7622)  ; Saturate(value)
  %7624 = fmul fast float %7619, %7603
  %7625 = fmul fast float %7624, %7623
  br label %7708

; <label>:7626                                    ; preds = %7562
  %7627 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7586
  %7628 = load float, float* %7627, align 4, !tbaa !124, !noalias !126
  %7629 = fcmp fast olt float %7628, %7493
  %7630 = icmp sgt i32 %7569, 0
  %7631 = and i1 %7630, %7629
  br i1 %7631, label %7632, label %7669

; <label>:7632                                    ; preds = %7626
  br label %7633

; <label>:7633                                    ; preds = %7662, %7632
  %7634 = phi float [ %7663, %7662 ], [ %7491, %7632 ]
  %7635 = phi float [ %7664, %7662 ], [ %7492, %7632 ]
  %7636 = phi float [ %7644, %7662 ], [ %7628, %7632 ]
  %7637 = phi i32 [ %7641, %7662 ], [ %7586, %7632 ]
  %7638 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7637
  %7639 = load float, float* %7638, align 4, !tbaa !124, !noalias !126
  %7640 = icmp slt i32 %7637, 2
  %7641 = add nsw i32 %7637, 1
  %7642 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7641
  %7643 = load float, float* %7642, align 4, !tbaa !124, !noalias !126
  %7644 = select i1 %7640, float %7643, float %7407
  %7645 = call float @dx.op.binary.f32(i32 36, float %7644, float %7639)  ; FMin(a,b)
  %7646 = call float @dx.op.binary.f32(i32 36, float %7493, float %7645)  ; FMin(a,b)
  %7647 = icmp eq i32 %7357, 0
  %7648 = fadd fast float %7646, %7636
  %7649 = fmul fast float %7648, %7338
  %7650 = fadd fast float %7649, %7351
  br i1 %7647, label %7656, label %7651

; <label>:7651                                    ; preds = %7633
  %7652 = fsub fast float %7646, %7636
  %7653 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7652)  ; FMax(a,b)
  %7654 = fmul fast float %7653, %7650
  %7655 = fadd fast float %7654, %7635
  br label %7662

; <label>:7656                                    ; preds = %7633
  %7657 = fsub fast float %7636, %7646
  %7658 = call float @dx.op.unary.f32(i32 6, float %7657)  ; FAbs(value)
  %7659 = fadd fast float %7658, %7634
  %7660 = fmul fast float %7658, %7650
  %7661 = fsub fast float %7635, %7660
  br label %7662

; <label>:7662                                    ; preds = %7656, %7651
  %7663 = phi float [ %7653, %7651 ], [ %7659, %7656 ]
  %7664 = phi float [ %7655, %7651 ], [ %7661, %7656 ]
  %7665 = fcmp fast olt float %7644, %7493
  %7666 = icmp slt i32 %7641, 3
  %7667 = and i1 %7666, %7665
  br i1 %7667, label %7633, label %7668

; <label>:7668                                    ; preds = %7662
  br label %7669

; <label>:7669                                    ; preds = %7668, %7626
  %7670 = phi float [ %7491, %7626 ], [ %7663, %7668 ]
  %7671 = phi float [ %7492, %7626 ], [ %7664, %7668 ]
  %7672 = fsub fast float %7407, %7670
  %7673 = select i1 %7409, float %7670, float %7672
  %7674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7675 = extractvalue %dx.types.CBufRet.f32 %7674, 0
  %7676 = extractvalue %dx.types.CBufRet.f32 %7674, 1
  %7677 = extractvalue %dx.types.CBufRet.f32 %7674, 2
  %7678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7679 = extractvalue %dx.types.CBufRet.f32 %7678, 0
  %7680 = extractvalue %dx.types.CBufRet.f32 %7678, 1
  %7681 = extractvalue %dx.types.CBufRet.f32 %7678, 2
  %7682 = extractvalue %dx.types.CBufRet.f32 %7678, 3
  %7683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7684 = extractvalue %dx.types.CBufRet.f32 %7683, 3
  %7685 = call float @dx.op.binary.f32(i32 36, float %7671, float %7684)  ; FMin(a,b)
  %7686 = fmul fast float %7682, %7673
  %7687 = call float @dx.op.unary.f32(i32 7, float %7686)  ; Saturate(value)
  %7688 = fsub fast float %7679, %7675
  %7689 = fsub fast float %7680, %7676
  %7690 = fsub fast float %7681, %7677
  %7691 = fmul fast float %7687, %7688
  %7692 = fmul fast float %7687, %7689
  %7693 = fmul fast float %7687, %7690
  %7694 = fadd fast float %7691, %7675
  %7695 = fadd fast float %7692, %7676
  %7696 = fadd fast float %7693, %7677
  %7697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7698 = extractvalue %dx.types.CBufRet.f32 %7697, 0
  %7699 = extractvalue %dx.types.CBufRet.f32 %7697, 1
  %7700 = fadd fast float %7699, %7698
  %7701 = call float @dx.op.unary.f32(i32 7, float %7700)  ; Saturate(value)
  %7702 = extractvalue %dx.types.CBufRet.f32 %7697, 2
  %7703 = extractvalue %dx.types.CBufRet.f32 %7697, 3
  %7704 = fadd fast float %7703, %7702
  %7705 = call float @dx.op.unary.f32(i32 7, float %7704)  ; Saturate(value)
  %7706 = fmul fast float %7701, %7685
  %7707 = fmul fast float %7706, %7705
  br label %7708

; <label>:7708                                    ; preds = %7669, %7588, %7423, %7405, %7403
  %7709 = phi float [ %7432, %7423 ], [ %7591, %7588 ], [ %7673, %7669 ], [ 0.000000e+00, %7403 ], [ 0.000000e+00, %7405 ]
  %7710 = phi float [ %7466, %7423 ], [ %7625, %7588 ], [ %7707, %7669 ], [ 0.000000e+00, %7403 ], [ 0.000000e+00, %7405 ]
  %7711 = phi float [ %7453, %7423 ], [ %7612, %7588 ], [ %7694, %7669 ], [ 0.000000e+00, %7403 ], [ 0.000000e+00, %7405 ]
  %7712 = phi float [ %7454, %7423 ], [ %7613, %7588 ], [ %7695, %7669 ], [ 0.000000e+00, %7403 ], [ 0.000000e+00, %7405 ]
  %7713 = phi float [ %7455, %7423 ], [ %7614, %7588 ], [ %7696, %7669 ], [ 0.000000e+00, %7403 ], [ 0.000000e+00, %7405 ]
  %7714 = fmul fast float %7346, %7710
  %7715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7716 = extractvalue %dx.types.CBufRet.f32 %7715, 2
  %7717 = fsub fast float %7353, %7716
  %7718 = fcmp fast olt float %7714, -2.000000e+01
  %7719 = call float @dx.op.unary.f32(i32 21, float %7714)  ; Exp(value)
  %7720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7721 = extractvalue %dx.types.CBufRet.f32 %7720, 2
  %7722 = extractvalue %dx.types.CBufRet.f32 %7720, 3
  %7723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7724 = extractvalue %dx.types.CBufRet.f32 %7723, 2
  %7725 = fmul fast float %7722, %7717
  %7726 = call float @dx.op.unary.f32(i32 7, float %7725)  ; Saturate(value)
  %7727 = fsub fast float 1.000000e+00, %7726
  %7728 = fmul fast float %7338, 5.000000e-01
  %7729 = fadd fast float %7728, 5.000000e-01
  %7730 = call float @dx.op.unary.f32(i32 7, float %7729)  ; Saturate(value)
  %7731 = fsub fast float 1.000000e+00, %7730
  %7732 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7727)  ; FMax(a,b)
  %7733 = fdiv fast float %7731, %7732
  %7734 = fsub fast float %7717, %7295
  %7735 = call float @dx.op.unary.f32(i32 6, float %7734)  ; FAbs(value)
  %7736 = fmul fast float %7735, %7721
  %7737 = call float @dx.op.unary.f32(i32 7, float %7733)  ; Saturate(value)
  %7738 = fsub fast float 1.000000e+00, %7736
  %7739 = fmul fast float %7738, %7737
  %7740 = fadd fast float %7739, %7736
  %7741 = fmul fast float %7724, %7717
  %7742 = call float @dx.op.unary.f32(i32 7, float %7741)  ; Saturate(value)
  %7743 = fsub fast float 1.000000e+00, %7740
  %7744 = fmul fast float %7743, %7742
  %7745 = fadd fast float %7744, %7740
  %7746 = call float @dx.op.unary.f32(i32 7, float %7745)  ; Saturate(value)
  %7747 = fadd fast float %7719, -1.000000e+00
  %7748 = select i1 %7718, float -1.000000e+00, float %7747
  %7749 = fmul fast float %7746, %7748
  %7750 = fadd fast float %7749, 1.000000e+00
  %7751 = fsub fast float -0.000000e+00, %7749
  %7752 = fmul fast float %7711, %7751
  %7753 = fmul fast float %7712, %7751
  %7754 = fmul fast float %7713, %7751
  br label %7755

; <label>:7755                                    ; preds = %7708, %7304
  %7756 = phi float [ %7709, %7708 ], [ 0.000000e+00, %7304 ]
  %7757 = phi float [ %7750, %7708 ], [ 1.000000e+00, %7304 ]
  %7758 = phi float [ %7752, %7708 ], [ 0.000000e+00, %7304 ]
  %7759 = phi float [ %7753, %7708 ], [ 0.000000e+00, %7304 ]
  %7760 = phi float [ %7754, %7708 ], [ 0.000000e+00, %7304 ]
  %7761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7762 = extractvalue %dx.types.CBufRet.f32 %7761, 1
  %7763 = fsub fast float 1.000000e+00, %7757
  %7764 = fmul fast float %7763, %7339
  %7765 = fmul fast float %7764, %7762
  %7766 = fsub fast float %7339, %7765
  br i1 %7332, label %7767, label %7796, !dx.controlflow.hints !162

; <label>:7767                                    ; preds = %7755
  %7768 = fmul fast float %7340, %7329
  %7769 = fadd fast float %7768, %7330
  %7770 = call float @dx.op.unary.f32(i32 7, float %7769)  ; Saturate(value)
  %7771 = fmul fast float %7311, %7766
  %7772 = fsub fast float -0.000000e+00, %7771
  %7773 = fmul fast float %7312, %7766
  %7774 = fsub fast float -0.000000e+00, %7773
  %7775 = call float @dx.op.unary.f32(i32 21, float %7772)  ; Exp(value)
  %7776 = call float @dx.op.unary.f32(i32 21, float %7774)  ; Exp(value)
  %7777 = call float @dx.op.binary.f32(i32 35, float %7319, float %7775)  ; FMax(a,b)
  %7778 = call float @dx.op.binary.f32(i32 35, float %7319, float %7776)  ; FMax(a,b)
  %7779 = fsub fast float %7778, %7777
  %7780 = fmul fast float %7779, %7770
  %7781 = fadd fast float %7780, %7777
  %7782 = call float @dx.op.unary.f32(i32 7, float %7781)  ; Saturate(value)
  %7783 = fsub fast float %7316, %7321
  %7784 = fsub fast float %7317, %7322
  %7785 = fsub fast float %7318, %7323
  %7786 = fmul fast float %7770, %7783
  %7787 = fmul fast float %7770, %7784
  %7788 = fmul fast float %7770, %7785
  %7789 = fadd fast float %7786, %7321
  %7790 = fadd fast float %7787, %7322
  %7791 = fadd fast float %7788, %7323
  %7792 = fsub fast float 1.000000e+00, %7782
  %7793 = fmul fast float %7792, %7789
  %7794 = fmul fast float %7792, %7790
  %7795 = fmul fast float %7792, %7791
  br label %7855

; <label>:7796                                    ; preds = %7755
  %7797 = fmul fast float %7766, %7328
  %7798 = call float @dx.op.unary.f32(i32 7, float %7797)  ; Saturate(value)
  %7799 = fsub fast float 2.000000e+00, %7798
  %7800 = fmul fast float %7798, 9.921875e-01
  %7801 = fmul fast float %7800, %7799
  %7802 = fadd fast float %7801, 3.906250e-03
  %7803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7802, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7804 = extractvalue %dx.types.ResRet.f32 %7803, 0
  %7805 = fsub fast float %7798, %7804
  %7806 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7805)  ; FMax(a,b)
  %7807 = fmul fast float %7314, %7295
  %7808 = call float @dx.op.unary.f32(i32 6, float %7807)  ; FAbs(value)
  %7809 = fcmp fast ogt float %7808, 0x3EB0C6F7A0000000
  br i1 %7809, label %7810, label %7816, !dx.controlflow.hints !163

; <label>:7810                                    ; preds = %7796
  %7811 = fmul fast float %7807, 0xBFF7154760000000
  %7812 = call float @dx.op.unary.f32(i32 21, float %7811)  ; Exp(value)
  %7813 = fsub fast float 1.000000e+00, %7812
  %7814 = fdiv fast float %7813, %7807
  %7815 = fmul fast float %7814, %7324
  br label %7816

; <label>:7816                                    ; preds = %7810, %7796
  %7817 = phi float [ %7815, %7810 ], [ %7324, %7796 ]
  %7818 = fadd fast float %7817, %7326
  %7819 = fmul fast float %7818, %7806
  %7820 = fmul fast float %7311, %7819
  %7821 = fsub fast float -0.000000e+00, %7820
  %7822 = fmul fast float %7312, %7819
  %7823 = fsub fast float -0.000000e+00, %7822
  %7824 = fmul fast float %7313, %7819
  %7825 = fsub fast float -0.000000e+00, %7824
  %7826 = call float @dx.op.unary.f32(i32 21, float %7821)  ; Exp(value)
  %7827 = call float @dx.op.unary.f32(i32 21, float %7823)  ; Exp(value)
  %7828 = call float @dx.op.unary.f32(i32 21, float %7825)  ; Exp(value)
  %7829 = fmul fast float %7340, %7340
  %7830 = fadd fast float %7829, 1.000000e+00
  %7831 = fmul fast float %7830, 0x3FAE8EC8A0000000
  %7832 = fmul fast float %7831, %7321
  %7833 = fmul fast float %7831, %7322
  %7834 = fmul fast float %7831, %7323
  %7835 = fmul fast float %7340, %7319
  %7836 = fsub fast float 1.000000e+00, %7835
  %7837 = fmul fast float %7319, %7319
  %7838 = fsub fast float 1.000000e+00, %7837
  %7839 = fmul fast float %7838, 0x3FB45F3060000000
  %7840 = fmul fast float %7836, %7836
  %7841 = fdiv fast float 1.000000e+00, %7840
  %7842 = fmul fast float %7839, %7841
  %7843 = fmul fast float %7842, %7316
  %7844 = fmul fast float %7842, %7317
  %7845 = fmul fast float %7842, %7318
  %7846 = fadd fast float %7843, %7832
  %7847 = fadd fast float %7844, %7833
  %7848 = fadd fast float %7845, %7834
  %7849 = fsub fast float 1.000000e+00, %7826
  %7850 = fsub fast float 1.000000e+00, %7827
  %7851 = fsub fast float 1.000000e+00, %7828
  %7852 = fmul fast float %7846, %7849
  %7853 = fmul fast float %7847, %7850
  %7854 = fmul fast float %7848, %7851
  br label %7855

; <label>:7855                                    ; preds = %7816, %7767
  %7856 = phi float [ %7793, %7767 ], [ %7852, %7816 ]
  %7857 = phi float [ %7794, %7767 ], [ %7853, %7816 ]
  %7858 = phi float [ %7795, %7767 ], [ %7854, %7816 ]
  %7859 = phi float [ %7782, %7767 ], [ %7826, %7816 ]
  %7860 = phi float [ %7782, %7767 ], [ %7827, %7816 ]
  %7861 = phi float [ %7782, %7767 ], [ %7828, %7816 ]
  br i1 %7348, label %7862, label %8060, !dx.controlflow.hints !164

; <label>:7862                                    ; preds = %7855
  %7863 = extractvalue %dx.types.CBufRet.f32 %7761, 0
  %7864 = fmul fast float %7863, %7763
  %7865 = fsub fast float %7758, %7856
  %7866 = fsub fast float %7759, %7857
  %7867 = fsub fast float %7760, %7858
  %7868 = fmul fast float %7864, %7865
  %7869 = fmul fast float %7864, %7866
  %7870 = fmul fast float %7864, %7867
  %7871 = fadd fast float %7868, %7856
  %7872 = fadd fast float %7869, %7857
  %7873 = fadd fast float %7870, %7858
  %7874 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7859)  ; FMax(a,b)
  %7875 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7860)  ; FMax(a,b)
  %7876 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7861)  ; FMax(a,b)
  %7877 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7757)  ; FMax(a,b)
  %7878 = call float @dx.op.binary.f32(i32 35, float %7756, float %7766)  ; FMax(a,b)
  %7879 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7878)  ; FMax(a,b)
  %7880 = fdiv fast float %7756, %7879
  %7881 = call float @dx.op.unary.f32(i32 7, float %7880)  ; Saturate(value)
  %7882 = fdiv fast float %7766, %7879
  %7883 = call float @dx.op.unary.f32(i32 7, float %7882)  ; Saturate(value)
  %7884 = fcmp fast une float %7877, 1.000000e+00
  br i1 %7884, label %7885, label %7898, !dx.controlflow.hints !165

; <label>:7885                                    ; preds = %7862
  %7886 = call float @dx.op.unary.f32(i32 23, float %7877)  ; Log(value)
  %7887 = fmul fast float %7886, 0x3FE62E4300000000
  %7888 = fmul fast float %7758, %7887
  %7889 = fsub fast float -0.000000e+00, %7888
  %7890 = fmul fast float %7759, %7887
  %7891 = fsub fast float -0.000000e+00, %7890
  %7892 = fmul fast float %7760, %7887
  %7893 = fsub fast float -0.000000e+00, %7892
  %7894 = fsub fast float 1.000000e+00, %7877
  %7895 = fdiv fast float %7889, %7894
  %7896 = fdiv fast float %7891, %7894
  %7897 = fdiv fast float %7893, %7894
  br label %7898

; <label>:7898                                    ; preds = %7885, %7862
  %7899 = phi float [ %7895, %7885 ], [ %7758, %7862 ]
  %7900 = phi float [ %7896, %7885 ], [ %7759, %7862 ]
  %7901 = phi float [ %7897, %7885 ], [ %7760, %7862 ]
  %7902 = phi float [ %7887, %7885 ], [ 0.000000e+00, %7862 ]
  %7903 = fcmp fast une float %7874, 1.000000e+00
  br i1 %7903, label %7904, label %7911, !dx.controlflow.hints !166

; <label>:7904                                    ; preds = %7898
  %7905 = call float @dx.op.unary.f32(i32 23, float %7874)  ; Log(value)
  %7906 = fmul fast float %7905, 0x3FE62E4300000000
  %7907 = fmul fast float %7871, %7906
  %7908 = fsub fast float -0.000000e+00, %7907
  %7909 = fsub fast float 1.000000e+00, %7874
  %7910 = fdiv fast float %7908, %7909
  br label %7911

; <label>:7911                                    ; preds = %7904, %7898
  %7912 = phi float [ %7910, %7904 ], [ %7871, %7898 ]
  %7913 = phi float [ %7906, %7904 ], [ 0.000000e+00, %7898 ]
  %7914 = fcmp fast une float %7875, 1.000000e+00
  br i1 %7914, label %7915, label %7922, !dx.controlflow.hints !166

; <label>:7915                                    ; preds = %7911
  %7916 = call float @dx.op.unary.f32(i32 23, float %7875)  ; Log(value)
  %7917 = fmul fast float %7916, 0x3FE62E4300000000
  %7918 = fmul fast float %7872, %7917
  %7919 = fsub fast float -0.000000e+00, %7918
  %7920 = fsub fast float 1.000000e+00, %7875
  %7921 = fdiv fast float %7919, %7920
  br label %7922

; <label>:7922                                    ; preds = %7915, %7911
  %7923 = phi float [ %7921, %7915 ], [ %7872, %7911 ]
  %7924 = phi float [ %7917, %7915 ], [ 0.000000e+00, %7911 ]
  %7925 = fcmp fast une float %7876, 1.000000e+00
  br i1 %7925, label %7926, label %7933, !dx.controlflow.hints !166

; <label>:7926                                    ; preds = %7922
  %7927 = call float @dx.op.unary.f32(i32 23, float %7876)  ; Log(value)
  %7928 = fmul fast float %7927, 0x3FE62E4300000000
  %7929 = fmul fast float %7873, %7928
  %7930 = fsub fast float -0.000000e+00, %7929
  %7931 = fsub fast float 1.000000e+00, %7876
  %7932 = fdiv fast float %7930, %7931
  br label %7933

; <label>:7933                                    ; preds = %7926, %7922
  %7934 = phi float [ %7932, %7926 ], [ %7873, %7922 ]
  %7935 = phi float [ %7928, %7926 ], [ 0.000000e+00, %7922 ]
  %7936 = fmul fast float %7899, %7883
  %7937 = fmul fast float %7900, %7883
  %7938 = fmul fast float %7901, %7883
  %7939 = fmul fast float %7902, %7883
  %7940 = fmul fast float %7912, %7881
  %7941 = fmul fast float %7923, %7881
  %7942 = fmul fast float %7934, %7881
  %7943 = fmul fast float %7913, %7881
  %7944 = fmul fast float %7924, %7881
  %7945 = fmul fast float %7935, %7881
  %7946 = fadd fast float %7940, %7936
  %7947 = fadd fast float %7941, %7937
  %7948 = fadd fast float %7942, %7938
  %7949 = fadd fast float %7943, %7939
  %7950 = fadd fast float %7944, %7939
  %7951 = fadd fast float %7945, %7939
  %7952 = fcmp fast une float %7949, 0.000000e+00
  br i1 %7952, label %7953, label %7960, !dx.controlflow.hints !167

; <label>:7953                                    ; preds = %7933
  %7954 = fmul fast float %7949, 0x3FF7154760000000
  %7955 = call float @dx.op.unary.f32(i32 21, float %7954)  ; Exp(value)
  %7956 = fsub fast float 1.000000e+00, %7955
  %7957 = fmul fast float %7946, %7956
  %7958 = fsub fast float -0.000000e+00, %7957
  %7959 = fdiv fast float %7958, %7949
  br label %7960

; <label>:7960                                    ; preds = %7953, %7933
  %7961 = phi float [ %7955, %7953 ], [ 1.000000e+00, %7933 ]
  %7962 = phi float [ %7959, %7953 ], [ %7946, %7933 ]
  %7963 = fcmp fast une float %7950, 0.000000e+00
  br i1 %7963, label %7964, label %7971, !dx.controlflow.hints !167

; <label>:7964                                    ; preds = %7960
  %7965 = fmul fast float %7950, 0x3FF7154760000000
  %7966 = call float @dx.op.unary.f32(i32 21, float %7965)  ; Exp(value)
  %7967 = fsub fast float 1.000000e+00, %7966
  %7968 = fmul fast float %7947, %7967
  %7969 = fsub fast float -0.000000e+00, %7968
  %7970 = fdiv fast float %7969, %7950
  br label %7971

; <label>:7971                                    ; preds = %7964, %7960
  %7972 = phi float [ %7966, %7964 ], [ 1.000000e+00, %7960 ]
  %7973 = phi float [ %7970, %7964 ], [ %7947, %7960 ]
  %7974 = fcmp fast une float %7951, 0.000000e+00
  br i1 %7974, label %7975, label %7982, !dx.controlflow.hints !167

; <label>:7975                                    ; preds = %7971
  %7976 = fmul fast float %7951, 0x3FF7154760000000
  %7977 = call float @dx.op.unary.f32(i32 21, float %7976)  ; Exp(value)
  %7978 = fsub fast float 1.000000e+00, %7977
  %7979 = fmul fast float %7948, %7978
  %7980 = fsub fast float -0.000000e+00, %7979
  %7981 = fdiv fast float %7980, %7951
  br label %7982

; <label>:7982                                    ; preds = %7975, %7971
  %7983 = phi float [ %7977, %7975 ], [ 1.000000e+00, %7971 ]
  %7984 = phi float [ %7981, %7975 ], [ %7948, %7971 ]
  %7985 = fcmp fast ogt float %7881, %7883
  br i1 %7985, label %7986, label %8006

; <label>:7986                                    ; preds = %7982
  %7987 = fsub fast float 1.000000e+00, %7883
  %7988 = fmul fast float %7899, %7987
  %7989 = fmul fast float %7900, %7987
  %7990 = fmul fast float %7901, %7987
  %7991 = fmul fast float %7902, %7987
  %7992 = fcmp fast une float %7991, 0.000000e+00
  br i1 %7992, label %7993, label %8044, !dx.controlflow.hints !168

; <label>:7993                                    ; preds = %7986
  %7994 = fmul fast float %7991, 0x3FF7154760000000
  %7995 = call float @dx.op.unary.f32(i32 21, float %7994)  ; Exp(value)
  %7996 = fsub fast float 1.000000e+00, %7995
  %7997 = fmul fast float %7988, %7996
  %7998 = fsub fast float -0.000000e+00, %7997
  %7999 = fmul fast float %7989, %7996
  %8000 = fsub fast float -0.000000e+00, %7999
  %8001 = fmul fast float %7990, %7996
  %8002 = fsub fast float -0.000000e+00, %8001
  %8003 = fdiv fast float %7998, %7991
  %8004 = fdiv fast float %8000, %7991
  %8005 = fdiv fast float %8002, %7991
  br label %8044

; <label>:8006                                    ; preds = %7982
  %8007 = fsub fast float 1.000000e+00, %7881
  %8008 = fmul fast float %7912, %8007
  %8009 = fmul fast float %7923, %8007
  %8010 = fmul fast float %7934, %8007
  %8011 = fmul fast float %7913, %8007
  %8012 = fmul fast float %7924, %8007
  %8013 = fmul fast float %7935, %8007
  %8014 = fcmp fast une float %8011, 0.000000e+00
  br i1 %8014, label %8015, label %8022, !dx.controlflow.hints !167

; <label>:8015                                    ; preds = %8006
  %8016 = fmul fast float %8011, 0x3FF7154760000000
  %8017 = call float @dx.op.unary.f32(i32 21, float %8016)  ; Exp(value)
  %8018 = fsub fast float 1.000000e+00, %8017
  %8019 = fmul fast float %8008, %8018
  %8020 = fsub fast float -0.000000e+00, %8019
  %8021 = fdiv fast float %8020, %8011
  br label %8022

; <label>:8022                                    ; preds = %8015, %8006
  %8023 = phi float [ %8021, %8015 ], [ %8008, %8006 ]
  %8024 = phi float [ %8017, %8015 ], [ 1.000000e+00, %8006 ]
  %8025 = fcmp fast une float %8012, 0.000000e+00
  br i1 %8025, label %8026, label %8033, !dx.controlflow.hints !167

; <label>:8026                                    ; preds = %8022
  %8027 = fmul fast float %8012, 0x3FF7154760000000
  %8028 = call float @dx.op.unary.f32(i32 21, float %8027)  ; Exp(value)
  %8029 = fsub fast float 1.000000e+00, %8028
  %8030 = fmul fast float %8009, %8029
  %8031 = fsub fast float -0.000000e+00, %8030
  %8032 = fdiv fast float %8031, %8012
  br label %8033

; <label>:8033                                    ; preds = %8026, %8022
  %8034 = phi float [ %8032, %8026 ], [ %8009, %8022 ]
  %8035 = phi float [ %8028, %8026 ], [ 1.000000e+00, %8022 ]
  %8036 = fcmp fast une float %8013, 0.000000e+00
  br i1 %8036, label %8037, label %8044, !dx.controlflow.hints !167

; <label>:8037                                    ; preds = %8033
  %8038 = fmul fast float %8013, 0x3FF7154760000000
  %8039 = call float @dx.op.unary.f32(i32 21, float %8038)  ; Exp(value)
  %8040 = fsub fast float 1.000000e+00, %8039
  %8041 = fmul fast float %8010, %8040
  %8042 = fsub fast float -0.000000e+00, %8041
  %8043 = fdiv fast float %8042, %8013
  br label %8044

; <label>:8044                                    ; preds = %8037, %8033, %7993, %7986
  %8045 = phi float [ %8043, %8037 ], [ %8005, %7993 ], [ %7990, %7986 ], [ %8010, %8033 ]
  %8046 = phi float [ %8034, %8037 ], [ %8004, %7993 ], [ %7989, %7986 ], [ %8034, %8033 ]
  %8047 = phi float [ %8023, %8037 ], [ %8003, %7993 ], [ %7988, %7986 ], [ %8023, %8033 ]
  %8048 = phi float [ %8039, %8037 ], [ %7995, %7993 ], [ 1.000000e+00, %7986 ], [ 1.000000e+00, %8033 ]
  %8049 = phi float [ %8035, %8037 ], [ %7995, %7993 ], [ 1.000000e+00, %7986 ], [ %8035, %8033 ]
  %8050 = phi float [ %8024, %8037 ], [ %7995, %7993 ], [ 1.000000e+00, %7986 ], [ %8024, %8033 ]
  %8051 = fmul fast float %8050, %7962
  %8052 = fmul fast float %8049, %7973
  %8053 = fmul fast float %8048, %7984
  %8054 = fadd fast float %8051, %8047
  %8055 = fadd fast float %8052, %8046
  %8056 = fadd fast float %8053, %8045
  %8057 = fmul fast float %8050, %7961
  %8058 = fmul fast float %8049, %7972
  %8059 = fmul fast float %8048, %7983
  br label %8060

; <label>:8060                                    ; preds = %8044, %7855
  %8061 = phi float [ %8059, %8044 ], [ %7861, %7855 ]
  %8062 = phi float [ %8058, %8044 ], [ %7860, %7855 ]
  %8063 = phi float [ %8057, %8044 ], [ %7859, %7855 ]
  %8064 = phi float [ %8056, %8044 ], [ %7858, %7855 ]
  %8065 = phi float [ %8055, %8044 ], [ %7857, %7855 ]
  %8066 = phi float [ %8054, %8044 ], [ %7856, %7855 ]
  %8067 = fmul fast float %8066, %7022
  %8068 = fmul fast float %8065, %7022
  %8069 = fmul fast float %8064, %7022
  %8070 = fmul fast float %8063, %7303
  %8071 = call float @dx.op.dot3.f32(i32 55, float %8063, float %8062, float %8061, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8072 = call float @dx.op.dot3.f32(i32 55, float %8067, float %8068, float %8069, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8073 = select i1 %282, float %8071, float %8063
  %8074 = select i1 %282, float %8071, float %8062
  %8075 = select i1 %282, float 1.000000e+00, float %8061
  %8076 = select i1 %282, float %8072, float %8067
  %8077 = select i1 %282, float 0.000000e+00, float %8068
  %8078 = select i1 %282, float 0.000000e+00, float %8069
  %8079 = fmul fast float %8073, %7297
  %8080 = fmul fast float %8074, %7298
  %8081 = fmul fast float %8075, %7299
  %8082 = fadd fast float %8079, %8076
  %8083 = fadd fast float %8080, %8077
  %8084 = fadd fast float %8078, %8081
  %8085 = fmul fast float %8073, %7300
  %8086 = fmul fast float %8074, %7301
  %8087 = fmul fast float %8075, %7302
  %8088 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8089 = extractvalue %dx.types.CBufRet.i32 %8088, 0
  %8090 = icmp eq i32 %8089, 0
  br i1 %8090, label %8458, label %8091, !dx.controlflow.hints !169

; <label>:8091                                    ; preds = %8060
  %8092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8093 = extractvalue %dx.types.CBufRet.f32 %8092, 2
  %8094 = extractvalue %dx.types.CBufRet.f32 %8092, 3
  %8095 = fmul fast float %8093, %104
  %8096 = fmul fast float %8094, %105
  %8097 = fmul fast float %8095, 2.000000e+00
  %8098 = fmul fast float %8096, 2.000000e+00
  %8099 = fsub fast float 1.000000e+00, %8097
  %8100 = fsub fast float 1.000000e+00, %8098
  %8101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8102 = extractvalue %dx.types.CBufRet.f32 %8101, 0
  %8103 = extractvalue %dx.types.CBufRet.f32 %8101, 1
  %8104 = extractvalue %dx.types.CBufRet.f32 %8101, 2
  %8105 = fmul fast float %8099, %8102
  %8106 = fmul fast float %8099, %8103
  %8107 = fmul fast float %8099, %8104
  %8108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8109 = extractvalue %dx.types.CBufRet.f32 %8108, 0
  %8110 = extractvalue %dx.types.CBufRet.f32 %8108, 1
  %8111 = extractvalue %dx.types.CBufRet.f32 %8108, 2
  %8112 = fmul fast float %8100, %8109
  %8113 = fmul fast float %8100, %8110
  %8114 = fmul fast float %8100, %8111
  %8115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8116 = extractvalue %dx.types.CBufRet.f32 %8115, 0
  %8117 = extractvalue %dx.types.CBufRet.f32 %8115, 1
  %8118 = extractvalue %dx.types.CBufRet.f32 %8115, 2
  %8119 = fadd fast float %8112, %8116
  %8120 = fadd fast float %8119, %8105
  %8121 = fadd fast float %8113, %8117
  %8122 = fadd fast float %8121, %8106
  %8123 = fadd fast float %8114, %8118
  %8124 = fadd fast float %8123, %8107
  %8125 = fmul fast float %8120, %7296
  %8126 = fmul fast float %8122, %7296
  %8127 = fmul fast float %8124, %7296
  %8128 = fmul fast float %8125, %8125
  %8129 = fmul fast float %8126, %8126
  %8130 = fadd fast float %8128, %8129
  %8131 = fmul fast float %8127, %8127
  %8132 = fadd fast float %8130, %8131
  %8133 = call float @dx.op.unary.f32(i32 24, float %8132)  ; Sqrt(value)
  %8134 = extractvalue %dx.types.CBufRet.f32 %7023, 0
  %8135 = fsub fast float %8133, %8134
  %8136 = extractvalue %dx.types.CBufRet.f32 %7023, 2
  %8137 = fmul fast float %8135, %8136
  %8138 = call float @dx.op.unary.f32(i32 7, float %8137)  ; Saturate(value)
  %8139 = fadd fast float %8138, -5.000000e-01
  %8140 = fmul fast float %8139, 2.000000e+00
  %8141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8142 = extractvalue %dx.types.CBufRet.f32 %8141, 2
  %8143 = call float @dx.op.binary.f32(i32 36, float %8142, float %8140)  ; FMin(a,b)
  %8144 = fsub fast float -0.000000e+00, %8142
  %8145 = fcmp fast ogt float %8143, %8144
  br i1 %8145, label %8146, label %8458, !dx.controlflow.hints !170

; <label>:8146                                    ; preds = %8091
  %8147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8148 = extractvalue %dx.types.CBufRet.f32 %8147, 3
  %8149 = fcmp fast ogt float %8148, 0.000000e+00
  br i1 %8149, label %8150, label %8225, !dx.controlflow.hints !171

; <label>:8150                                    ; preds = %8146
  %8151 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8152 = extractvalue %dx.types.Dimensions %8151, 0
  %8153 = sitofp i32 %8152 to float
  %8154 = extractvalue %dx.types.Dimensions %8151, 1
  %8155 = sitofp i32 %8154 to float
  %8156 = fmul fast float %8095, %8153
  %8157 = fmul fast float %8096, %8155
  %8158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8159 = extractvalue %dx.types.CBufRet.f32 %8158, 1
  %8160 = fsub fast float -0.000000e+00, %8159
  %8161 = fptoui float %8160 to i32
  %8162 = fptoui float %8156 to i32
  %8163 = fptoui float %8157 to i32
  %8164 = and i32 %8161, 31
  %8165 = lshr i32 %8162, %8164
  %8166 = lshr i32 %8163, %8164
  %8167 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8161, i32 %8165, i32 %8166, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8168 = extractvalue %dx.types.ResRet.f32 %8167, 0
  %8169 = fcmp fast olt float %8168, -1.000000e+00
  %8170 = fcmp fast ogt float %8168, -1.000000e+00
  %8171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8172 = extractvalue %dx.types.CBufRet.f32 %8171, 1
  %8173 = select i1 %8170, float %8172, float 1.000000e+00
  %8174 = fadd fast float %8168, 1.000000e+00
  %8175 = fmul fast float %8173, %8174
  %8176 = call float @dx.op.unary.f32(i32 6, float %8175)  ; FAbs(value)
  %8177 = extractvalue %dx.types.CBufRet.f32 %8171, 3
  %8178 = fcmp fast oge float %8176, %8177
  %8179 = select i1 %8178, float 0x4197782600000000, float %8176
  %8180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8181 = extractvalue %dx.types.CBufRet.f32 %8180, 0
  %8182 = extractvalue %dx.types.CBufRet.f32 %8180, 1
  %8183 = extractvalue %dx.types.CBufRet.f32 %8180, 2
  %8184 = select i1 %8169, float %8181, float %8102
  %8185 = select i1 %8169, float %8182, float %8103
  %8186 = select i1 %8169, float %8183, float %8104
  %8187 = fmul fast float %8184, %8099
  %8188 = fmul fast float %8185, %8099
  %8189 = fmul fast float %8186, %8099
  %8190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8191 = extractvalue %dx.types.CBufRet.f32 %8190, 0
  %8192 = extractvalue %dx.types.CBufRet.f32 %8190, 1
  %8193 = extractvalue %dx.types.CBufRet.f32 %8190, 2
  %8194 = select i1 %8169, float %8191, float %8109
  %8195 = select i1 %8169, float %8192, float %8110
  %8196 = select i1 %8169, float %8193, float %8111
  %8197 = fmul fast float %8194, %8100
  %8198 = fmul fast float %8195, %8100
  %8199 = fmul fast float %8196, %8100
  %8200 = fadd fast float %8197, %8187
  %8201 = fadd fast float %8198, %8188
  %8202 = fadd fast float %8199, %8189
  %8203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8204 = extractvalue %dx.types.CBufRet.f32 %8203, 0
  %8205 = extractvalue %dx.types.CBufRet.f32 %8203, 1
  %8206 = extractvalue %dx.types.CBufRet.f32 %8203, 2
  %8207 = select i1 %8169, float %8204, float %8116
  %8208 = select i1 %8169, float %8205, float %8117
  %8209 = select i1 %8169, float %8206, float %8118
  %8210 = fadd fast float %8200, %8207
  %8211 = fadd fast float %8201, %8208
  %8212 = fadd fast float %8202, %8209
  %8213 = fmul fast float %8210, %8179
  %8214 = fmul fast float %8211, %8179
  %8215 = fmul fast float %8212, %8179
  %8216 = fmul fast float %8213, %8213
  %8217 = fmul fast float %8214, %8214
  %8218 = fadd fast float %8216, %8217
  %8219 = fmul fast float %8215, %8215
  %8220 = fadd fast float %8218, %8219
  %8221 = call float @dx.op.unary.f32(i32 24, float %8220)  ; Sqrt(value)
  %8222 = fsub fast float %8221, %8134
  %8223 = fmul fast float %8222, %8136
  %8224 = call float @dx.op.unary.f32(i32 7, float %8223)  ; Saturate(value)
  br label %8225

; <label>:8225                                    ; preds = %8150, %8146
  %8226 = phi float [ %8224, %8150 ], [ 1.000000e+00, %8146 ]
  %8227 = fmul fast float %8143, 5.000000e-01
  %8228 = fadd fast float %8227, 5.000000e-01
  %8229 = call float @dx.op.unary.f32(i32 22, float %8228)  ; Frc(value)
  %8230 = call float @dx.op.unary.f32(i32 27, float %8229)  ; Round_ni(value)
  %8231 = call float @dx.op.unary.f32(i32 22, float %8229)  ; Frc(value)
  %8232 = fmul fast float %8231, 2.000000e+00
  %8233 = fadd fast float %8232, -1.000000e+00
  %8234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8095, float %8096, float %8230, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8235 = extractvalue %dx.types.ResRet.f32 %8234, 0
  %8236 = extractvalue %dx.types.ResRet.f32 %8234, 1
  %8237 = extractvalue %dx.types.ResRet.f32 %8234, 2
  %8238 = extractvalue %dx.types.ResRet.f32 %8234, 3
  %8239 = fadd fast float %8235, -5.000000e-01
  %8240 = fadd fast float %8237, -5.000000e-01
  %8241 = fmul fast float %8239, 0xBFD5555560000000
  %8242 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8240, float %8241)  ; FMad(a,b,c)
  %8243 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8236, float 0.000000e+00)  ; FMad(a,b,c)
  %8244 = fadd fast float %8243, %8238
  %8245 = fmul fast float %8239, -7.500000e-01
  %8246 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8240, float %8245)  ; FMad(a,b,c)
  %8247 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8236, float 0.000000e+00)  ; FMad(a,b,c)
  %8248 = fadd fast float %8247, %8238
  %8249 = call float @dx.op.binary.f32(i32 35, float %8242, float -1.000000e+00)  ; FMax(a,b)
  %8250 = call float @dx.op.binary.f32(i32 35, float %8244, float -1.000000e+00)  ; FMax(a,b)
  %8251 = call float @dx.op.binary.f32(i32 35, float %8246, float -1.000000e+00)  ; FMax(a,b)
  %8252 = call float @dx.op.binary.f32(i32 35, float %8248, float -1.000000e+00)  ; FMax(a,b)
  %8253 = call float @dx.op.binary.f32(i32 36, float %8249, float 1.000000e+00)  ; FMin(a,b)
  %8254 = call float @dx.op.binary.f32(i32 36, float %8250, float 1.000000e+00)  ; FMin(a,b)
  %8255 = call float @dx.op.binary.f32(i32 36, float %8251, float 1.000000e+00)  ; FMin(a,b)
  %8256 = call float @dx.op.binary.f32(i32 36, float %8252, float 1.000000e+00)  ; FMin(a,b)
  %8257 = fcmp fast olt float %8253, 0x3FEFFF8020000000
  br i1 %8257, label %8258, label %8373, !dx.controlflow.hints !172

; <label>:8258                                    ; preds = %8225
  %8259 = extractvalue %dx.types.CBufRet.f32 %8141, 3
  %8260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8261 = extractvalue %dx.types.CBufRet.f32 %8260, 0
  %8262 = extractvalue %dx.types.CBufRet.f32 %8260, 1
  %8263 = extractvalue %dx.types.CBufRet.f32 %8260, 2
  %8264 = extractvalue %dx.types.CBufRet.f32 %8260, 3
  %8265 = fsub fast float %8261, %8253
  %8266 = fsub fast float %8262, %8254
  %8267 = fsub fast float %8263, %8255
  %8268 = fsub fast float %8264, %8256
  %8269 = fmul fast float %8265, %8259
  %8270 = fmul fast float %8266, %8259
  %8271 = fmul fast float %8267, %8259
  %8272 = fmul fast float %8268, %8259
  %8273 = fadd fast float %8269, %8253
  %8274 = fadd fast float %8270, %8254
  %8275 = fsub fast float -0.000000e+00, %8274
  %8276 = fadd fast float %8271, %8255
  %8277 = fadd fast float %8272, %8256
  %8278 = fmul fast float %8273, %8273
  %8279 = fsub fast float %8274, %8278
  %8280 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8279)  ; FMax(a,b)
  %8281 = fdiv fast float 1.000000e+00, %8280
  %8282 = fmul fast float %8274, %8273
  %8283 = fsub fast float %8276, %8282
  %8284 = fsub fast float %8233, %8273
  %8285 = fmul fast float %8233, %8233
  %8286 = fsub fast float %8285, %8274
  %8287 = fmul fast float %8284, %8281
  %8288 = fmul fast float %8287, %8283
  %8289 = fsub fast float %8286, %8288
  %8290 = fmul fast float %8274, %8274
  %8291 = fsub fast float %8277, %8290
  %8292 = fmul fast float %8283, %8283
  %8293 = fmul fast float %8292, %8281
  %8294 = fsub fast float %8291, %8293
  %8295 = fdiv fast float %8289, %8294
  %8296 = fmul fast float %8283, %8295
  %8297 = fsub fast float %8284, %8296
  %8298 = fmul fast float %8297, %8281
  %8299 = fmul fast float %8298, %8273
  %8300 = fsub fast float 1.000000e+00, %8299
  %8301 = fmul fast float %8274, %8295
  %8302 = fsub fast float %8300, %8301
  %8303 = fmul fast float %8298, %8298
  %8304 = fmul fast float %8295, 4.000000e+00
  %8305 = fmul fast float %8304, %8302
  %8306 = fsub fast float %8303, %8305
  %8307 = call float @dx.op.unary.f32(i32 24, float %8306)  ; Sqrt(value)
  %8308 = fcmp fast oge float %8298, 0.000000e+00
  %8309 = fsub fast float -0.000000e+00, %8307
  %8310 = select i1 %8308, float %8309, float %8307
  %8311 = fsub fast float %8310, %8298
  %8312 = fdiv fast float %8311, %8295
  %8313 = fdiv fast float %8302, %8311
  %8314 = fmul fast float %8312, 5.000000e-01
  %8315 = fmul fast float %8313, 2.000000e+00
  %8316 = select i1 %8308, float %8314, float %8315
  %8317 = select i1 %8308, float %8315, float %8314
  %8318 = call float @dx.op.binary.f32(i32 35, float %8316, float %8317)  ; FMax(a,b)
  %8319 = call float @dx.op.binary.f32(i32 36, float %8316, float %8317)  ; FMin(a,b)
  %8320 = fcmp fast ogt float %8233, %8319
  br i1 %8320, label %8321, label %8331

; <label>:8321                                    ; preds = %8258
  %8322 = fsub fast float %8233, %8319
  %8323 = fsub fast float %8318, %8319
  %8324 = fmul fast float %8322, %8323
  %8325 = fmul fast float %8318, %8233
  %8326 = fadd fast float %8318, %8233
  %8327 = fmul fast float %8326, %8273
  %8328 = fadd fast float %8325, %8274
  %8329 = fsub fast float %8328, %8327
  %8330 = fdiv fast float %8329, %8324
  br label %8331

; <label>:8331                                    ; preds = %8321, %8258
  %8332 = phi float [ %8330, %8321 ], [ 0.000000e+00, %8258 ]
  %8333 = fcmp fast ogt float %8233, %8318
  %8334 = fsub fast float %8233, %8318
  br i1 %8333, label %8335, label %8345

; <label>:8335                                    ; preds = %8331
  %8336 = fsub fast float %8318, %8319
  %8337 = fmul fast float %8336, %8334
  %8338 = fmul fast float %8319, %8233
  %8339 = fadd fast float %8319, %8233
  %8340 = fmul fast float %8339, %8273
  %8341 = fsub fast float %8275, %8338
  %8342 = fadd fast float %8341, %8340
  %8343 = fdiv fast float %8342, %8337
  %8344 = fadd fast float %8343, %8332
  br label %8345

; <label>:8345                                    ; preds = %8335, %8331
  %8346 = phi float [ %8344, %8335 ], [ %8332, %8331 ]
  %8347 = fsub fast float %8233, %8319
  %8348 = fmul fast float %8347, %8334
  %8349 = fmul fast float %8319, %8318
  %8350 = fadd fast float %8319, %8318
  %8351 = fmul fast float %8350, %8273
  %8352 = fadd fast float %8349, %8274
  %8353 = fsub fast float %8352, %8351
  %8354 = fdiv fast float %8353, %8348
  %8355 = call float @dx.op.unary.f32(i32 7, float %8346)  ; Saturate(value)
  %8356 = fcmp fast oeq float %7024, 0.000000e+00
  %8357 = extractvalue %dx.types.CBufRet.f32 %8141, 0
  %8358 = fcmp fast oeq float %8357, 0.000000e+00
  %8359 = or i1 %8356, %8358
  %8360 = fmul fast float %8357, 2.000000e+00
  %8361 = fadd fast float %8142, %8143
  %8362 = fdiv fast float %8361, %8360
  %8363 = call float @dx.op.unary.f32(i32 7, float %8362)  ; Saturate(value)
  %8364 = fmul fast float %8363, 2.000000e+00
  %8365 = fsub fast float 3.000000e+00, %8364
  %8366 = fmul fast float %8363, %8363
  %8367 = fmul fast float %8366, %8365
  %8368 = select i1 %8359, float 1.000000e+00, float %8367
  %8369 = fmul fast float %8354, %7024
  %8370 = fadd fast float %8355, %8369
  %8371 = call float @dx.op.unary.f32(i32 7, float %8370)  ; Saturate(value)
  %8372 = fmul fast float %8368, %8371
  br label %8373

; <label>:8373                                    ; preds = %8345, %8225
  %8374 = phi float [ %8372, %8345 ], [ 0.000000e+00, %8225 ]
  %8375 = fsub fast float 1.000000e+00, %8374
  %8376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8095, float %8096, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8377 = extractvalue %dx.types.ResRet.f32 %8376, 0
  %8378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8379 = extractvalue %dx.types.CBufRet.i32 %8378, 2
  %8380 = icmp eq i32 %8379, 0
  br i1 %8380, label %8386, label %8381

; <label>:8381                                    ; preds = %8373
  %8382 = call float @dx.op.unary.f32(i32 7, float %8374)  ; Saturate(value)
  %8383 = fadd fast float %8377, -1.000000e+00
  %8384 = fmul fast float %8382, %8383
  %8385 = fadd fast float %8384, 1.000000e+00
  br label %8386

; <label>:8386                                    ; preds = %8381, %8373
  %8387 = phi float [ %8385, %8381 ], [ %8375, %8373 ]
  br i1 %8149, label %8388, label %8406

; <label>:8388                                    ; preds = %8386
  %8389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8390 = extractvalue %dx.types.CBufRet.f32 %8389, 1
  %8391 = fsub fast float %8226, %8390
  %8392 = call float @dx.op.unary.f32(i32 7, float %8391)  ; Saturate(value)
  %8393 = fsub fast float %8226, %8148
  %8394 = call float @dx.op.unary.f32(i32 7, float %8393)  ; Saturate(value)
  %8395 = fsub fast float %8392, %8394
  %8396 = fsub fast float %8228, %8394
  %8397 = fdiv fast float %8396, %8395
  %8398 = call float @dx.op.unary.f32(i32 7, float %8397)  ; Saturate(value)
  %8399 = fmul fast float %8398, 2.000000e+00
  %8400 = fsub fast float 3.000000e+00, %8399
  %8401 = fsub fast float %8377, %8387
  %8402 = fmul fast float %8398, %8398
  %8403 = fmul fast float %8402, %8401
  %8404 = fmul fast float %8403, %8400
  %8405 = fadd fast float %8404, %8387
  br label %8406

; <label>:8406                                    ; preds = %8388, %8386
  %8407 = phi float [ %8405, %8388 ], [ %8387, %8386 ]
  %8408 = call float @dx.op.binary.f32(i32 35, float %8377, float %8407)  ; FMax(a,b)
  %8409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8410 = extractvalue %dx.types.CBufRet.i32 %8409, 2
  %8411 = and i32 %8410, 1
  %8412 = icmp eq i32 %8411, 0
  %8413 = fcmp fast une float %8408, 1.000000e+00
  %8414 = and i1 %8413, %8412
  br i1 %8414, label %8415, label %8434

; <label>:8415                                    ; preds = %8406
  %8416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8095, float %8096, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8417 = extractvalue %dx.types.ResRet.f32 %8416, 0
  %8418 = extractvalue %dx.types.ResRet.f32 %8416, 1
  %8419 = extractvalue %dx.types.ResRet.f32 %8416, 2
  %8420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8421 = extractvalue %dx.types.CBufRet.f32 %8420, 1
  %8422 = fmul fast float %8421, %8417
  %8423 = fmul fast float %8421, %8418
  %8424 = fmul fast float %8421, %8419
  %8425 = fcmp fast ogt float %8377, 0x3FEFFF2E40000000
  %8426 = fsub fast float 1.000000e+00, %8408
  %8427 = fsub fast float 1.000000e+00, %8377
  %8428 = fdiv fast float %8426, %8427
  %8429 = call float @dx.op.unary.f32(i32 7, float %8428)  ; Saturate(value)
  %8430 = select i1 %8425, float 0.000000e+00, float %8429
  %8431 = fmul fast float %8422, %8430
  %8432 = fmul fast float %8423, %8430
  %8433 = fmul fast float %8424, %8430
  br label %8434

; <label>:8434                                    ; preds = %8415, %8406
  %8435 = phi float [ 0.000000e+00, %8406 ], [ %8431, %8415 ]
  %8436 = phi float [ 0.000000e+00, %8406 ], [ %8432, %8415 ]
  %8437 = phi float [ 0.000000e+00, %8406 ], [ %8433, %8415 ]
  %8438 = fmul fast float %8435, %7022
  %8439 = fmul fast float %8436, %7022
  %8440 = fmul fast float %8437, %7022
  %8441 = fmul fast float %8408, %8070
  %8442 = call float @dx.op.dot3.f32(i32 55, float %8408, float %8408, float %8408, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8443 = call float @dx.op.dot3.f32(i32 55, float %8438, float %8439, float %8440, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8444 = select i1 %282, float %8442, float %8408
  %8445 = select i1 %282, float 1.000000e+00, float %8408
  %8446 = select i1 %282, float %8443, float %8438
  %8447 = select i1 %282, float 0.000000e+00, float %8439
  %8448 = select i1 %282, float 0.000000e+00, float %8440
  %8449 = fmul fast float %8444, %8082
  %8450 = fmul fast float %8444, %8083
  %8451 = fmul fast float %8445, %8084
  %8452 = fadd fast float %8449, %8446
  %8453 = fadd fast float %8450, %8447
  %8454 = fadd fast float %8448, %8451
  %8455 = fmul fast float %8444, %8085
  %8456 = fmul fast float %8444, %8086
  %8457 = fmul fast float %8445, %8087
  br label %8458

; <label>:8458                                    ; preds = %8434, %8091, %8060, %7292
  %8459 = phi float [ %7297, %7292 ], [ %8082, %8060 ], [ %8452, %8434 ], [ %8082, %8091 ]
  %8460 = phi float [ %7298, %7292 ], [ %8083, %8060 ], [ %8453, %8434 ], [ %8083, %8091 ]
  %8461 = phi float [ %7299, %7292 ], [ %8084, %8060 ], [ %8454, %8434 ], [ %8084, %8091 ]
  %8462 = phi float [ %7300, %7292 ], [ %8085, %8060 ], [ %8455, %8434 ], [ %8085, %8091 ]
  %8463 = phi float [ %7301, %7292 ], [ %8086, %8060 ], [ %8456, %8434 ], [ %8086, %8091 ]
  %8464 = phi float [ %7302, %7292 ], [ %8087, %8060 ], [ %8457, %8434 ], [ %8087, %8091 ]
  %8465 = phi float [ %7303, %7292 ], [ %8070, %8060 ], [ %8441, %8434 ], [ %8070, %8091 ]
  %8466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8467 = extractvalue %dx.types.CBufRet.f32 %8466, 2
  %8468 = extractvalue %dx.types.CBufRet.f32 %8466, 3
  %8469 = fmul fast float %8467, %104
  %8470 = fmul fast float %8468, %105
  %8471 = call float @dx.op.unary.f32(i32 7, float %8469)  ; Saturate(value)
  %8472 = call float @dx.op.unary.f32(i32 7, float %8470)  ; Saturate(value)
  %8473 = select i1 %7034, i32 2, i32 0
  %8474 = or i32 %8473, 1
  %8475 = uitofp i32 %8474 to float
  %8476 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8471, float %8472, float %8475, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8477 = extractvalue %dx.types.ResRet.f32 %8476, 0
  %8478 = extractvalue %dx.types.ResRet.f32 %8476, 1
  %8479 = extractvalue %dx.types.ResRet.f32 %8476, 2
  %8480 = extractvalue %dx.types.ResRet.f32 %8476, 3
  %8481 = add nuw nsw i32 %8473, 2
  %8482 = uitofp i32 %8481 to float
  %8483 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8471, float %8472, float %8482, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8484 = extractvalue %dx.types.ResRet.f32 %8483, 0
  %8485 = extractvalue %dx.types.ResRet.f32 %8483, 1
  %8486 = extractvalue %dx.types.ResRet.f32 %8483, 2
  %8487 = extractvalue %dx.types.ResRet.f32 %8483, 3
  %8488 = call float @dx.op.binary.f32(i32 35, float %8478, float %8479)  ; FMax(a,b)
  %8489 = call float @dx.op.binary.f32(i32 35, float %8477, float %8488)  ; FMax(a,b)
  %8490 = call float @dx.op.binary.f32(i32 35, float %8489, float %8480)  ; FMax(a,b)
  %8491 = call float @dx.op.binary.f32(i32 36, float %8485, float %8486)  ; FMin(a,b)
  %8492 = call float @dx.op.binary.f32(i32 36, float %8484, float %8491)  ; FMin(a,b)
  %8493 = call float @dx.op.binary.f32(i32 36, float %8492, float %8487)  ; FMin(a,b)
  %8494 = fmul fast float %8490, 2.550000e+02
  %8495 = fadd fast float %8494, 0x3F70101020000000
  %8496 = fptoui float %8495 to i32
  %8497 = fmul fast float %8493, 2.550000e+02
  %8498 = fadd fast float %8497, 0x3F70101020000000
  %8499 = fptoui float %8498 to i32
  %8500 = icmp ult i32 %8496, %8499
  br i1 %8500, label %8501, label %8670

; <label>:8501                                    ; preds = %8458
  %8502 = fcmp fast ogt float %94, 9.843750e-01
  %8503 = fadd fast float %7296, -4.000000e+00
  %8504 = select i1 %8502, float -4.000000e+00, float %8503
  %8505 = call float @dx.op.binary.f32(i32 35, float %8504, float 0.000000e+00)  ; FMax(a,b)
  %8506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8507 = extractvalue %dx.types.CBufRet.f32 %8506, 0
  %8508 = fadd fast float %8507, %8505
  %8509 = extractvalue %dx.types.CBufRet.f32 %8506, 2
  %8510 = fmul fast float %8508, %8509
  %8511 = call float @dx.op.unary.f32(i32 23, float %8510)  ; Log(value)
  %8512 = extractvalue %dx.types.CBufRet.f32 %8506, 3
  %8513 = fmul fast float %8512, %8511
  %8514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8515 = extractvalue %dx.types.CBufRet.f32 %8514, 2
  %8516 = fmul fast float %8513, %8515
  %8517 = call float @dx.op.unary.f32(i32 7, float %8516)  ; Saturate(value)
  %8518 = uitofp i32 %8496 to float
  %8519 = uitofp i32 %8499 to float
  %8520 = fadd fast float %8518, 5.000000e-01
  %8521 = fadd fast float %8519, 5.000000e-01
  %8522 = fmul fast float %8515, %8520
  %8523 = fmul fast float %8515, %8521
  %8524 = fadd fast float %8522, 0x3F0FFB4800000000
  %8525 = fadd fast float %8523, 0xBF0FFB4800000000
  %8526 = call float @dx.op.binary.f32(i32 35, float %8517, float %8524)  ; FMax(a,b)
  %8527 = call float @dx.op.binary.f32(i32 36, float %8526, float %8525)  ; FMin(a,b)
  %8528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8529 = extractvalue %dx.types.CBufRet.f32 %8528, 1
  %8530 = extractvalue %dx.types.CBufRet.f32 %8528, 2
  %8531 = extractvalue %dx.types.CBufRet.f32 %8528, 0
  %8532 = select i1 %7034, float %8531, float 0.000000e+00
  %8533 = fmul fast float %8529, %8527
  %8534 = fadd fast float %8532, %8533
  %8535 = fadd fast float %8532, %8530
  %8536 = fsub fast float %8529, %8530
  %8537 = fadd fast float %8536, %8532
  %8538 = call float @dx.op.binary.f32(i32 35, float %8534, float %8535)  ; FMax(a,b)
  %8539 = call float @dx.op.binary.f32(i32 36, float %8538, float %8537)  ; FMin(a,b)
  %8540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8471, float %8472, float %8539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8541 = extractvalue %dx.types.ResRet.f32 %8540, 0
  %8542 = extractvalue %dx.types.ResRet.f32 %8540, 1
  %8543 = extractvalue %dx.types.ResRet.f32 %8540, 2
  %8544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8545 = extractvalue %dx.types.CBufRet.i32 %8544, 0
  %8546 = extractvalue %dx.types.CBufRet.i32 %8544, 1
  %8547 = uitofp i32 %8545 to float
  %8548 = uitofp i32 %8546 to float
  %8549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8550 = extractvalue %dx.types.CBufRet.f32 %8549, 0
  %8551 = extractvalue %dx.types.CBufRet.f32 %8549, 1
  %8552 = fmul fast float %8547, %8471
  %8553 = fmul fast float %8548, %8472
  %8554 = fadd fast float %8552, -5.000000e-01
  %8555 = fadd fast float %8553, -5.000000e-01
  %8556 = call float @dx.op.unary.f32(i32 22, float %8554)  ; Frc(value)
  %8557 = call float @dx.op.unary.f32(i32 22, float %8555)  ; Frc(value)
  %8558 = fmul fast float %8556, %8556
  %8559 = fmul fast float %8558, %8556
  %8560 = fsub fast float 3.000000e+00, %8556
  %8561 = fmul fast float %8558, %8560
  %8562 = fmul fast float %8556, 3.000000e+00
  %8563 = fmul fast float %8559, 3.000000e+00
  %8564 = fmul fast float %8558, 6.000000e+00
  %8565 = fsub fast float %8563, %8564
  %8566 = fadd fast float %8565, 4.000000e+00
  %8567 = fmul fast float %8566, 0x3FC5555560000000
  %8568 = fmul fast float %8559, -3.000000e+00
  %8569 = fadd fast float %8558, %8556
  %8570 = fmul fast float %8569, 3.000000e+00
  %8571 = fadd fast float %8568, 1.000000e+00
  %8572 = fadd fast float %8571, %8570
  %8573 = fmul fast float %8559, 0x3FC5555560000000
  %8574 = fmul fast float %8557, %8557
  %8575 = fmul fast float %8574, %8557
  %8576 = fsub fast float 3.000000e+00, %8557
  %8577 = fmul fast float %8574, %8576
  %8578 = fmul fast float %8557, 3.000000e+00
  %8579 = fmul fast float %8575, 3.000000e+00
  %8580 = fmul fast float %8574, 6.000000e+00
  %8581 = fsub fast float %8579, %8580
  %8582 = fadd fast float %8581, 4.000000e+00
  %8583 = fmul fast float %8582, 0x3FC5555560000000
  %8584 = fmul fast float %8575, -3.000000e+00
  %8585 = fadd fast float %8574, %8557
  %8586 = fmul fast float %8585, 3.000000e+00
  %8587 = fadd fast float %8584, 1.000000e+00
  %8588 = fadd fast float %8587, %8586
  %8589 = fmul fast float %8575, 0x3FC5555560000000
  %8590 = fadd fast float %8556, 1.000000e+00
  %8591 = fsub fast float 1.000000e+00, %8562
  %8592 = fadd fast float %8591, %8561
  %8593 = fadd fast float %8592, %8566
  %8594 = fmul fast float %8593, 0x3FC5555560000000
  %8595 = fdiv fast float %8567, %8594
  %8596 = fsub fast float %8590, %8595
  %8597 = fsub fast float 1.000000e+00, %8556
  %8598 = fadd fast float %8572, %8559
  %8599 = fmul fast float %8598, 0x3FC5555560000000
  %8600 = fdiv fast float %8573, %8599
  %8601 = fadd fast float %8597, %8600
  %8602 = fadd fast float %8557, 1.000000e+00
  %8603 = fsub fast float 1.000000e+00, %8578
  %8604 = fadd fast float %8603, %8577
  %8605 = fadd fast float %8604, %8582
  %8606 = fmul fast float %8605, 0x3FC5555560000000
  %8607 = fdiv fast float %8583, %8606
  %8608 = fsub fast float %8602, %8607
  %8609 = fsub fast float 1.000000e+00, %8557
  %8610 = fadd fast float %8588, %8575
  %8611 = fmul fast float %8610, 0x3FC5555560000000
  %8612 = fdiv fast float %8589, %8611
  %8613 = fadd fast float %8612, %8609
  %8614 = fmul fast float %8596, %8550
  %8615 = fsub fast float %8471, %8614
  %8616 = fmul fast float %8601, %8550
  %8617 = fadd fast float %8616, %8471
  %8618 = fmul fast float %8613, %8551
  %8619 = fadd fast float %8618, %8472
  %8620 = fmul fast float %8608, %8551
  %8621 = fsub fast float %8472, %8620
  %8622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8615, float %8621, float %8539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8623 = extractvalue %dx.types.ResRet.f32 %8622, 0
  %8624 = extractvalue %dx.types.ResRet.f32 %8622, 1
  %8625 = extractvalue %dx.types.ResRet.f32 %8622, 2
  %8626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8617, float %8621, float %8539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8627 = extractvalue %dx.types.ResRet.f32 %8626, 0
  %8628 = extractvalue %dx.types.ResRet.f32 %8626, 1
  %8629 = extractvalue %dx.types.ResRet.f32 %8626, 2
  %8630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8615, float %8619, float %8539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8631 = extractvalue %dx.types.ResRet.f32 %8630, 0
  %8632 = extractvalue %dx.types.ResRet.f32 %8630, 1
  %8633 = extractvalue %dx.types.ResRet.f32 %8630, 2
  %8634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8617, float %8619, float %8539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8635 = extractvalue %dx.types.ResRet.f32 %8634, 0
  %8636 = extractvalue %dx.types.ResRet.f32 %8634, 1
  %8637 = extractvalue %dx.types.ResRet.f32 %8634, 2
  %8638 = fsub fast float %8631, %8623
  %8639 = fsub fast float %8632, %8624
  %8640 = fsub fast float %8633, %8625
  %8641 = fmul fast float %8638, %8611
  %8642 = fmul fast float %8639, %8611
  %8643 = fmul fast float %8640, %8611
  %8644 = fadd fast float %8641, %8623
  %8645 = fadd fast float %8642, %8624
  %8646 = fadd fast float %8643, %8625
  %8647 = fsub fast float %8635, %8627
  %8648 = fsub fast float %8636, %8628
  %8649 = fsub fast float %8637, %8629
  %8650 = fmul fast float %8647, %8611
  %8651 = fmul fast float %8648, %8611
  %8652 = fmul fast float %8649, %8611
  %8653 = fsub fast float %8627, %8644
  %8654 = fadd fast float %8653, %8650
  %8655 = fsub fast float %8628, %8645
  %8656 = fadd fast float %8655, %8651
  %8657 = fsub fast float %8629, %8646
  %8658 = fadd fast float %8657, %8652
  %8659 = fmul fast float %8654, %8599
  %8660 = fmul fast float %8656, %8599
  %8661 = fmul fast float %8658, %8599
  %8662 = fadd fast float %8659, %8644
  %8663 = fadd fast float %8660, %8645
  %8664 = fadd fast float %8661, %8646
  %8665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8666 = extractvalue %dx.types.CBufRet.f32 %8665, 1
  %8667 = fmul fast float %8662, %8666
  %8668 = fmul fast float %8663, %8666
  %8669 = fmul fast float %8664, %8666
  br label %8670

; <label>:8670                                    ; preds = %8501, %8458
  %8671 = phi float [ %8541, %8501 ], [ 1.000000e+00, %8458 ]
  %8672 = phi float [ %8542, %8501 ], [ 1.000000e+00, %8458 ]
  %8673 = phi float [ %8543, %8501 ], [ 1.000000e+00, %8458 ]
  %8674 = phi float [ %8667, %8501 ], [ 0.000000e+00, %8458 ]
  %8675 = phi float [ %8668, %8501 ], [ 0.000000e+00, %8458 ]
  %8676 = phi float [ %8669, %8501 ], [ 0.000000e+00, %8458 ]
  %8677 = fmul fast float %8674, %7022
  %8678 = fmul fast float %8675, %7022
  %8679 = fmul fast float %8676, %7022
  %8680 = fmul fast float %8671, %8465
  %8681 = call float @dx.op.dot3.f32(i32 55, float %8671, float %8672, float %8673, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8682 = call float @dx.op.dot3.f32(i32 55, float %8677, float %8678, float %8679, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8683 = select i1 %282, float %8681, float %8671
  %8684 = select i1 %282, float %8681, float %8672
  %8685 = select i1 %282, float 1.000000e+00, float %8673
  %8686 = select i1 %282, float %8682, float %8677
  %8687 = select i1 %282, float 0.000000e+00, float %8678
  %8688 = select i1 %282, float 0.000000e+00, float %8679
  %8689 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8690 = extractvalue %dx.types.CBufRet.i32 %8689, 3
  %8691 = and i32 %8690, 3
  %8692 = icmp ne i32 %8691, 0
  %8693 = and i32 %8690, 4
  %8694 = icmp ne i32 %8693, 0
  %8695 = and i1 %8692, %8694
  %8696 = and i1 %282, %8695
  br i1 %8696, label %8697, label %8703

; <label>:8697                                    ; preds = %8670
  %8698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8699 = extractvalue %dx.types.CBufRet.f32 %8698, 1
  %8700 = fadd fast float %8680, -1.000000e+00
  %8701 = fmul fast float %8699, %8700
  %8702 = fadd fast float %8701, 1.000000e+00
  br label %8703

; <label>:8703                                    ; preds = %8697, %8670
  %8704 = phi float [ %8702, %8697 ], [ %8680, %8670 ]
  %8705 = fadd fast float %8462, %8459
  %8706 = fmul fast float %8683, %8705
  %8707 = fadd fast float %8706, %8686
  %8708 = fadd fast float %8463, %8460
  %8709 = fmul fast float %8684, %8708
  %8710 = fadd fast float %8709, %8687
  %8711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8712 = extractvalue %dx.types.CBufRet.f32 %8711, 0
  br i1 %282, label %8713, label %8737

; <label>:8713                                    ; preds = %8703
  %8714 = fadd fast float %8707, %8710
  %8715 = fmul fast float %8712, %8714
  %8716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8717 = extractvalue %dx.types.CBufRet.f32 %8716, 3
  %8718 = extractvalue %dx.types.CBufRet.f32 %7010, 1
  %8719 = fsub fast float %7015, %7009
  %8720 = fadd fast float %8719, %7016
  %8721 = fsub fast float %8720, %8718
  %8722 = extractvalue %dx.types.CBufRet.f32 %7010, 2
  %8723 = fmul fast float %8721, %8722
  %8724 = call float @dx.op.unary.f32(i32 7, float %8723)  ; Saturate(value)
  %8725 = fsub fast float %8724, %8717
  %8726 = fmul fast float %8725, %8704
  %8727 = fadd fast float %8726, %8717
  %8728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8729 = extractvalue %dx.types.CBufRet.f32 %8728, 0
  %8730 = fsub fast float %8727, %8729
  %8731 = fmul fast float %8730, 1.000000e+01
  %8732 = call float @dx.op.unary.f32(i32 7, float %8731)  ; Saturate(value)
  %8733 = fsub fast float 1.000000e+00, %7022
  %8734 = fmul fast float %8732, %8733
  %8735 = fadd fast float %8734, %7022
  %8736 = fmul fast float %8735, %8727
  br label %8761

; <label>:8737                                    ; preds = %8703
  %8738 = fadd fast float %8464, %8461
  %8739 = fmul fast float %8685, %8738
  %8740 = fadd fast float %8739, %8688
  %8741 = fmul fast float %8712, %8707
  %8742 = fmul fast float %8712, %8710
  %8743 = fmul fast float %8712, %8740
  %8744 = call float @dx.op.binary.f32(i32 35, float %8742, float %8743)  ; FMax(a,b)
  %8745 = call float @dx.op.binary.f32(i32 35, float %8741, float %8744)  ; FMax(a,b)
  %8746 = call float @dx.op.binary.f32(i32 35, float %8745, float %7022)  ; FMax(a,b)
  %8747 = fcmp fast ugt float %8746, 0x3F10000000000000
  br i1 %8747, label %8749, label %8748

; <label>:8748                                    ; preds = %8737
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8749

; <label>:8749                                    ; preds = %8748, %8737
  %8750 = add i32 %54, 356
  %8751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8750, i32 undef)  ; BufferLoad(srv,index,wot)
  %8752 = extractvalue %dx.types.ResRet.i32 %8751, 0
  %8753 = and i32 %8752, 32
  %8754 = icmp eq i32 %8753, 0
  br i1 %8754, label %8761, label %8755

; <label>:8755                                    ; preds = %8749
  %8756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8757 = extractvalue %dx.types.CBufRet.f32 %8756, 0
  %8758 = fmul fast float %8757, 0x3FE99999A0000000
  %8759 = fadd fast float %8757, %8741
  %8760 = fadd fast float %8758, %8743
  br label %8761

; <label>:8761                                    ; preds = %8755, %8749, %8713
  %8762 = phi float [ %8715, %8713 ], [ %8759, %8755 ], [ %8741, %8749 ]
  %8763 = phi float [ %8736, %8713 ], [ %8742, %8755 ], [ %8742, %8749 ]
  %8764 = phi float [ %8735, %8713 ], [ %8760, %8755 ], [ %8743, %8749 ]
  %8765 = phi float [ %8735, %8713 ], [ %7022, %8755 ], [ %7022, %8749 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8766 = call float @dx.op.binary.f32(i32 36, float %8762, float 3.225500e+04)  ; FMin(a,b)
  %8767 = call float @dx.op.binary.f32(i32 36, float %8763, float 3.225500e+04)  ; FMin(a,b)
  %8768 = call float @dx.op.binary.f32(i32 36, float %8764, float 3.225500e+04)  ; FMin(a,b)
  %8769 = call float @dx.op.binary.f32(i32 36, float %8765, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8766)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8767)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8768)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8769)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

