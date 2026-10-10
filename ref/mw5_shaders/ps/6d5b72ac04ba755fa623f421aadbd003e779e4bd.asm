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
; shader hash: 64ab0134f03e6c476ea8607c6c63c236
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
  br i1 %3328, label %3847, label %3329

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
  br i1 %3390, label %3815, label %3391

; <label>:3391                                    ; preds = %3329
  br label %3392

; <label>:3392                                    ; preds = %3514, %3391
  %3393 = phi i32 [ %3416, %3514 ], [ %3389, %3391 ]
  %3394 = phi float [ %3515, %3514 ], [ 0.000000e+00, %3391 ]
  %3395 = phi float [ %3516, %3514 ], [ %1077, %3391 ]
  %3396 = phi float [ %3517, %3514 ], [ %3299, %3391 ]
  %3397 = phi float [ %3518, %3514 ], [ %3297, %3391 ]
  %3398 = phi float [ %3519, %3514 ], [ 0.000000e+00, %3391 ]
  %3399 = phi float [ %3520, %3514 ], [ 0.000000e+00, %3391 ]
  %3400 = phi float [ %3521, %3514 ], [ %3291, %3391 ]
  %3401 = phi float [ %3522, %3514 ], [ %3292, %3391 ]
  %3402 = phi float [ %3523, %3514 ], [ %3293, %3391 ]
  %3403 = phi float [ %3524, %3514 ], [ %3325, %3391 ]
  %3404 = phi float [ %3525, %3514 ], [ %3326, %3391 ]
  %3405 = phi float [ %3526, %3514 ], [ %3327, %3391 ]
  %3406 = phi float [ %3527, %3514 ], [ %3296, %3391 ]
  %3407 = phi float [ %3528, %3514 ], [ %3295, %3391 ]
  %3408 = phi float [ %3529, %3514 ], [ 0.000000e+00, %3391 ]
  %3409 = phi float [ %3530, %3514 ], [ %3294, %3391 ]
  %3410 = phi float [ %3531, %3514 ], [ %3288, %3391 ]
  %3411 = phi float [ %3532, %3514 ], [ %3289, %3391 ]
  %3412 = phi float [ %3533, %3514 ], [ %3290, %3391 ]
  %3413 = shl nuw nsw i32 %3393, 2
  %3414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3413, i32 undef)  ; BufferLoad(srv,index,wot)
  %3415 = extractvalue %dx.types.ResRet.i32 %3414, 0
  %3416 = lshr i32 %3415, 16
  %3417 = shl i32 %3415, 8
  %3418 = and i32 %3417, 16776960
  %3419 = or i32 %3418, 48
  %3420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3419, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.f32 %3420, 0
  %3422 = extractvalue %dx.types.ResRet.f32 %3420, 1
  %3423 = extractvalue %dx.types.ResRet.f32 %3420, 2
  %3424 = or i32 %3418, 64
  %3425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.i32 %3425, 0
  %3427 = extractvalue %dx.types.ResRet.i32 %3425, 1
  %3428 = or i32 %3418, 80
  %3429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.f32 %3429, 2
  %3431 = extractvalue %dx.types.ResRet.f32 %3429, 3
  %3432 = or i32 %3418, 96
  %3433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.f32 %3433, 0
  %3435 = extractvalue %dx.types.ResRet.f32 %3433, 1
  %3436 = extractvalue %dx.types.ResRet.f32 %3433, 2
  %3437 = extractvalue %dx.types.ResRet.f32 %3433, 3
  %3438 = or i32 %3418, 112
  %3439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3438, i32 undef)  ; BufferLoad(srv,index,wot)
  %3440 = extractvalue %dx.types.ResRet.f32 %3439, 2
  %3441 = or i32 %3418, 128
  %3442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3441, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.f32 %3442, 0
  %3444 = extractvalue %dx.types.ResRet.f32 %3442, 1
  %3445 = extractvalue %dx.types.ResRet.f32 %3442, 2
  %3446 = extractvalue %dx.types.ResRet.f32 %3442, 3
  %3447 = or i32 %3418, 144
  %3448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3447, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.f32 %3448, 0
  %3450 = extractvalue %dx.types.ResRet.f32 %3448, 1
  %3451 = extractvalue %dx.types.ResRet.f32 %3448, 2
  %3452 = extractvalue %dx.types.ResRet.f32 %3448, 3
  %3453 = or i32 %3418, 160
  %3454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3453, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.f32 %3454, 0
  %3456 = extractvalue %dx.types.ResRet.f32 %3454, 1
  %3457 = extractvalue %dx.types.ResRet.f32 %3454, 2
  %3458 = extractvalue %dx.types.ResRet.f32 %3454, 3
  %3459 = or i32 %3418, 192
  %3460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.i32 %3460, 0
  %3462 = or i32 %3418, 208
  %3463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3462, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.f32 %3463, 0
  %3465 = or i32 %3418, 248
  %3466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.f32 %3466, 0
  %3468 = extractvalue %dx.types.ResRet.f32 %3466, 1
  %3469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.f32 %3469, 0
  %3471 = extractvalue %dx.types.ResRet.f32 %3469, 1
  %3472 = extractvalue %dx.types.ResRet.f32 %3469, 2
  %3473 = extractvalue %dx.types.ResRet.f32 %3469, 3
  %3474 = call float @dx.op.dot4.f32(i32 56, float %3470, float %3471, float %3472, float %3473, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3475 = or i32 %3418, 16
  %3476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3475, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.ResRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.ResRet.f32 %3476, 2
  %3480 = extractvalue %dx.types.ResRet.f32 %3476, 3
  %3481 = call float @dx.op.dot4.f32(i32 56, float %3477, float %3478, float %3479, float %3480, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3482 = or i32 %3418, 32
  %3483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3482, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.ResRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.ResRet.f32 %3483, 2
  %3487 = extractvalue %dx.types.ResRet.f32 %3483, 3
  %3488 = call float @dx.op.dot4.f32(i32 56, float %3484, float %3485, float %3486, float %3487, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3489 = call float @dx.op.unary.f32(i32 27, float %3474)  ; Round_ni(value)
  %3490 = call float @dx.op.unary.f32(i32 6, float %3489)  ; FAbs(value)
  %3491 = call float @dx.op.unary.f32(i32 27, float %3481)  ; Round_ni(value)
  %3492 = call float @dx.op.unary.f32(i32 6, float %3491)  ; FAbs(value)
  %3493 = call float @dx.op.unary.f32(i32 6, float %3488)  ; FAbs(value)
  %3494 = call float @dx.op.unary.f32(i32 27, float %3493)  ; Round_ni(value)
  %3495 = fadd fast float %3492, %3490
  %3496 = fadd fast float %3495, %3494
  %3497 = fcmp fast oeq float %3496, 0.000000e+00
  %3498 = call float @dx.op.dot4.f32(i32 56, float %3470, float %3471, float %3472, float %3473, float %3336, float %3337, float %3338, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3499 = call float @dx.op.dot4.f32(i32 56, float %3477, float %3478, float %3479, float %3480, float %3336, float %3337, float %3338, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3500 = call float @dx.op.dot4.f32(i32 56, float %3470, float %3471, float %3472, float %3473, float %3339, float %3340, float %3341, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3501 = call float @dx.op.dot4.f32(i32 56, float %3477, float %3478, float %3479, float %3480, float %3339, float %3340, float %3341, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3502 = fsub fast float %3498, %3474
  %3503 = fsub fast float %3500, %3474
  %3504 = fsub fast float %3499, %3481
  %3505 = fsub fast float %3501, %3481
  %3506 = call float @dx.op.dot3.f32(i32 55, float %3421, float %3422, float %3423, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3508 = extractvalue %dx.types.CBufRet.f32 %3507, 2
  %3509 = fadd fast float %3508, %3506
  %3510 = call float @dx.op.unary.f32(i32 7, float %3509)  ; Saturate(value)
  %3511 = extractvalue %dx.types.CBufRet.f32 %3507, 0
  %3512 = fcmp fast ogt float %3510, %3511
  %3513 = and i1 %3497, %3512
  br i1 %3513, label %3535, label %3514

; <label>:3514                                    ; preds = %3801, %3618, %3535, %3392
  %3515 = phi float [ %3394, %3535 ], [ %3621, %3618 ], [ %3621, %3801 ], [ %3394, %3392 ]
  %3516 = phi float [ %3395, %3535 ], [ %3395, %3618 ], [ %3776, %3801 ], [ %3395, %3392 ]
  %3517 = phi float [ %3396, %3535 ], [ %3396, %3618 ], [ %3775, %3801 ], [ %3396, %3392 ]
  %3518 = phi float [ %3397, %3535 ], [ %3397, %3618 ], [ %3773, %3801 ], [ %3397, %3392 ]
  %3519 = phi float [ %3398, %3535 ], [ %3398, %3618 ], [ %3745, %3801 ], [ %3398, %3392 ]
  %3520 = phi float [ %3399, %3535 ], [ %3399, %3618 ], [ %3743, %3801 ], [ %3399, %3392 ]
  %3521 = phi float [ %3400, %3535 ], [ %3400, %3618 ], [ %3811, %3801 ], [ %3400, %3392 ]
  %3522 = phi float [ %3401, %3535 ], [ %3401, %3618 ], [ %3812, %3801 ], [ %3401, %3392 ]
  %3523 = phi float [ %3402, %3535 ], [ %3402, %3618 ], [ %3813, %3801 ], [ %3402, %3392 ]
  %3524 = phi float [ %3403, %3535 ], [ %3403, %3618 ], [ %3724, %3801 ], [ %3403, %3392 ]
  %3525 = phi float [ %3404, %3535 ], [ %3404, %3618 ], [ %3725, %3801 ], [ %3404, %3392 ]
  %3526 = phi float [ %3405, %3535 ], [ %3405, %3618 ], [ %3726, %3801 ], [ %3405, %3392 ]
  %3527 = phi float [ %3406, %3535 ], [ %3406, %3618 ], [ %3753, %3801 ], [ %3406, %3392 ]
  %3528 = phi float [ %3407, %3535 ], [ %3407, %3618 ], [ %3750, %3801 ], [ %3407, %3392 ]
  %3529 = phi float [ %3408, %3535 ], [ %3408, %3618 ], [ %3747, %3801 ], [ %3408, %3392 ]
  %3530 = phi float [ %3409, %3535 ], [ %3409, %3618 ], [ %3741, %3801 ], [ %3409, %3392 ]
  %3531 = phi float [ %3410, %3535 ], [ %3410, %3618 ], [ %3736, %3801 ], [ %3410, %3392 ]
  %3532 = phi float [ %3411, %3535 ], [ %3411, %3618 ], [ %3737, %3801 ], [ %3411, %3392 ]
  %3533 = phi float [ %3412, %3535 ], [ %3412, %3618 ], [ %3738, %3801 ], [ %3412, %3392 ]
  %3534 = icmp eq i32 %3416, 0
  br i1 %3534, label %3814, label %3392

; <label>:3535                                    ; preds = %3392
  %3536 = extractvalue %dx.types.ResRet.f32 %3420, 3
  %3537 = extractvalue %dx.types.ResRet.f32 %3439, 3
  %3538 = extractvalue %dx.types.ResRet.f32 %3439, 1
  %3539 = extractvalue %dx.types.ResRet.f32 %3439, 0
  %3540 = extractvalue %dx.types.ResRet.f32 %3429, 1
  %3541 = extractvalue %dx.types.ResRet.f32 %3429, 0
  %3542 = extractvalue %dx.types.ResRet.i32 %3425, 3
  %3543 = extractvalue %dx.types.ResRet.i32 %3425, 2
  %3544 = bitcast float %3536 to i32
  %3545 = add i32 %3542, 0
  %3546 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3545, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3547 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3548 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3546, %dx.types.Handle %3547, float %3474, float %3481, float undef, float undef, i32 0, i32 0, i32 undef, float %3502, float %3504, float undef, float %3503, float %3505, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3549 = extractvalue %dx.types.ResRet.f32 %3548, 0
  %3550 = fmul fast float %3549, %3541
  %3551 = fadd fast float %3550, %3540
  %3552 = call float @dx.op.unary.f32(i32 7, float %3551)  ; Saturate(value)
  %3553 = fmul fast float %3474, %3434
  %3554 = call float @dx.op.tertiary.f32(i32 46, float %3435, float %3481, float %3553)  ; FMad(a,b,c)
  %3555 = fadd fast float %3554, %3539
  %3556 = fmul fast float %3474, %3436
  %3557 = call float @dx.op.tertiary.f32(i32 46, float %3437, float %3481, float %3556)  ; FMad(a,b,c)
  %3558 = fadd fast float %3557, %3538
  %3559 = fmul fast float %3502, %3434
  %3560 = call float @dx.op.tertiary.f32(i32 46, float %3435, float %3504, float %3559)  ; FMad(a,b,c)
  %3561 = fmul fast float %3502, %3436
  %3562 = call float @dx.op.tertiary.f32(i32 46, float %3437, float %3504, float %3561)  ; FMad(a,b,c)
  %3563 = fmul fast float %3503, %3434
  %3564 = call float @dx.op.tertiary.f32(i32 46, float %3435, float %3505, float %3563)  ; FMad(a,b,c)
  %3565 = fmul fast float %3503, %3436
  %3566 = call float @dx.op.tertiary.f32(i32 46, float %3437, float %3505, float %3565)  ; FMad(a,b,c)
  %3567 = add i32 %3543, 0
  %3568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3567, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3569 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3568, %dx.types.Handle %3547, float %3555, float %3558, float undef, float undef, i32 0, i32 0, i32 undef, float %3560, float %3562, float undef, float %3564, float %3566, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3570 = extractvalue %dx.types.ResRet.f32 %3569, 0
  %3571 = and i32 %3544, 1024
  %3572 = icmp ne i32 %3571, 0
  %3573 = fcmp fast ogt float %3570, 0x3FE0101020000000
  %3574 = uitofp i1 %3573 to float
  %3575 = select i1 %3572, float %3574, float %3570
  %3576 = and i32 %3544, 8192
  %3577 = icmp ne i32 %3576, 0
  %3578 = select i1 %3577, float %3537, float 1.000000e+00
  %3579 = fmul fast float %3474, 2.000000e+00
  %3580 = fadd fast float %3579, -1.000000e+00
  %3581 = call float @dx.op.unary.f32(i32 6, float %3580)  ; FAbs(value)
  %3582 = fmul fast float %3581, %3467
  %3583 = fsub fast float %3582, %3467
  %3584 = call float @dx.op.unary.f32(i32 7, float %3583)  ; Saturate(value)
  %3585 = fmul fast float %3481, 2.000000e+00
  %3586 = fadd fast float %3585, -1.000000e+00
  %3587 = call float @dx.op.unary.f32(i32 6, float %3586)  ; FAbs(value)
  %3588 = fmul fast float %3587, %3468
  %3589 = fsub fast float %3588, %3468
  %3590 = call float @dx.op.unary.f32(i32 7, float %3589)  ; Saturate(value)
  %3591 = fmul fast float %3493, %3430
  %3592 = fsub fast float %3591, %3430
  %3593 = call float @dx.op.unary.f32(i32 7, float %3592)  ; Saturate(value)
  %3594 = fmul fast float %3552, %3578
  %3595 = fmul fast float %3594, %3549
  %3596 = fmul fast float %3595, %3584
  %3597 = fmul fast float %3596, %3575
  %3598 = fmul fast float %3597, %3590
  %3599 = fmul fast float %3598, %3593
  %3600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3601 = extractvalue %dx.types.CBufRet.f32 %3600, 1
  %3602 = extractvalue %dx.types.CBufRet.f32 %3600, 0
  %3603 = fsub fast float %3510, %3602
  %3604 = fmul fast float %3603, %3601
  %3605 = call float @dx.op.unary.f32(i32 7, float %3604)  ; Saturate(value)
  %3606 = fmul fast float %3599, %3431
  %3607 = fadd fast float %3599, %3431
  %3608 = fmul fast float %3607, %3440
  %3609 = fsub fast float %3608, %3440
  %3610 = call float @dx.op.unary.f32(i32 7, float %3609)  ; Saturate(value)
  %3611 = and i32 %3544, 128
  %3612 = icmp ne i32 %3611, 0
  %3613 = select i1 %3612, float %3610, float %3606
  %3614 = fmul fast float %3613, %3605
  %3615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3616 = extractvalue %dx.types.CBufRet.f32 %3615, 0
  %3617 = fcmp fast ugt float %3614, %3616
  br i1 %3617, label %3618, label %3514

; <label>:3618                                    ; preds = %3535
  %3619 = select i1 %3577, float %3614, float 0.000000e+00
  %3620 = fadd fast float %3619, %3394
  %3621 = call float @dx.op.unary.f32(i32 7, float %3620)  ; Saturate(value)
  br i1 %3577, label %3514, label %3622

; <label>:3622                                    ; preds = %3618
  %3623 = and i32 %3544, 4
  %3624 = and i32 %3544, 8
  %3625 = add i32 %3426, 0
  %3626 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3625, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3628 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3626, %dx.types.Handle %3627, float %3555, float %3558, float undef, float undef, i32 0, i32 0, i32 undef, float %3560, float %3562, float undef, float %3564, float %3566, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3629 = extractvalue %dx.types.ResRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.ResRet.f32 %3628, 1
  %3631 = extractvalue %dx.types.ResRet.f32 %3628, 2
  %3632 = extractvalue %dx.types.ResRet.f32 %3628, 3
  %3633 = bitcast float %3452 to i32
  %3634 = and i32 %3633, 255
  %3635 = uitofp i32 %3634 to float
  %3636 = lshr i32 %3633, 8
  %3637 = and i32 %3636, 255
  %3638 = uitofp i32 %3637 to float
  %3639 = fmul fast float %3632, %3635
  %3640 = fadd fast float %3639, %3638
  %3641 = fmul fast float %3640, 0x3F70101000000000
  %3642 = add i32 %3427, 0
  %3643 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3642, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3644 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3643, %dx.types.Handle %3627, float %3555, float %3558, float undef, float undef, i32 0, i32 0, i32 undef, float %3560, float %3562, float undef, float %3564, float %3566, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3645 = extractvalue %dx.types.ResRet.f32 %3644, 0
  %3646 = extractvalue %dx.types.ResRet.f32 %3644, 1
  %3647 = extractvalue %dx.types.ResRet.f32 %3644, 2
  %3648 = extractvalue %dx.types.ResRet.f32 %3644, 3
  %3649 = bitcast float %3446 to i32
  %3650 = and i32 %3649, 255
  %3651 = uitofp i32 %3650 to float
  %3652 = lshr i32 %3649, 8
  %3653 = and i32 %3652, 255
  %3654 = uitofp i32 %3653 to float
  %3655 = lshr i32 %3649, 16
  %3656 = and i32 %3655, 255
  %3657 = uitofp i32 %3656 to float
  %3658 = fmul fast float %3657, 0x3F70101000000000
  %3659 = fmul fast float %3645, %3651
  %3660 = fadd fast float %3659, %3654
  %3661 = fmul fast float %3660, 0x3F70101000000000
  %3662 = fadd fast float %3646, -5.000000e-01
  %3663 = fadd fast float %3648, -5.000000e-01
  %3664 = fmul fast float %3662, %3658
  %3665 = fmul fast float %3663, %3658
  %3666 = fadd fast float %3664, 5.000000e-01
  %3667 = fadd fast float %3665, 5.000000e-01
  %3668 = fmul fast float %3629, %3455
  %3669 = fmul fast float %3630, %3456
  %3670 = fmul fast float %3631, %3457
  %3671 = fmul fast float %3666, 2.000000e+00
  %3672 = fadd fast float %3671, -1.000000e+00
  %3673 = fmul fast float %3667, 2.000000e+00
  %3674 = fadd fast float %3673, -1.000000e+00
  %3675 = fadd fast float %3672, %3674
  %3676 = fmul fast float %3675, 5.000000e-01
  %3677 = fsub fast float %3672, %3674
  %3678 = fmul fast float %3677, 5.000000e-01
  %3679 = call float @dx.op.unary.f32(i32 6, float %3676)  ; FAbs(value)
  %3680 = fsub fast float 1.000000e+00, %3679
  %3681 = call float @dx.op.unary.f32(i32 6, float %3678)  ; FAbs(value)
  %3682 = fsub fast float %3680, %3681
  %3683 = call float @dx.op.dot3.f32(i32 55, float %3676, float %3678, float %3682, float %3676, float %3678, float %3682)  ; Dot3(ax,ay,az,bx,by,bz)
  %3684 = call float @dx.op.unary.f32(i32 25, float %3683)  ; Rsqrt(value)
  %3685 = fmul fast float %3676, %3684
  %3686 = fmul fast float %3678, %3684
  %3687 = fmul fast float %3684, %3682
  %3688 = fmul fast float %3687, %3421
  %3689 = fmul fast float %3687, %3422
  %3690 = fmul fast float %3687, %3423
  %3691 = fmul fast float %3685, %3443
  %3692 = fmul fast float %3685, %3444
  %3693 = fmul fast float %3685, %3445
  %3694 = fadd fast float %3691, %3688
  %3695 = fadd fast float %3692, %3689
  %3696 = fadd fast float %3693, %3690
  %3697 = fmul fast float %3686, %3449
  %3698 = fmul fast float %3686, %3450
  %3699 = fmul fast float %3686, %3451
  %3700 = fadd fast float %3694, %3697
  %3701 = fadd fast float %3695, %3698
  %3702 = fadd fast float %3696, %3699
  %3703 = call float @dx.op.dot3.f32(i32 55, float %3700, float %3701, float %3702, float %3700, float %3701, float %3702)  ; Dot3(ax,ay,az,bx,by,bz)
  %3704 = call float @dx.op.unary.f32(i32 25, float %3703)  ; Rsqrt(value)
  %3705 = fmul fast float %3700, %3704
  %3706 = fmul fast float %3701, %3704
  %3707 = fmul fast float %3702, %3704
  %3708 = icmp ne i32 %3624, 0
  %3709 = select i1 %3708, float 1.000000e+00, float 0.000000e+00
  %3710 = fmul fast float %3614, %3709
  %3711 = and i32 %3544, 1
  %3712 = icmp eq i32 %3711, 0
  br i1 %3712, label %3713, label %3717

; <label>:3713                                    ; preds = %3622
  %3714 = fsub fast float %3705, %3403
  %3715 = fsub fast float %3706, %3404
  %3716 = fsub fast float %3707, %3405
  br label %3717

; <label>:3717                                    ; preds = %3713, %3622
  %3718 = phi float [ %3714, %3713 ], [ %3705, %3622 ]
  %3719 = phi float [ %3715, %3713 ], [ %3706, %3622 ]
  %3720 = phi float [ %3716, %3713 ], [ %3707, %3622 ]
  %3721 = fmul float %3720, %3710
  %3722 = fmul float %3719, %3710
  %3723 = fmul float %3718, %3710
  %3724 = fadd fast float %3723, %3403
  %3725 = fadd fast float %3722, %3404
  %3726 = fadd fast float %3721, %3405
  %3727 = icmp ne i32 %3623, 0
  %3728 = select i1 %3727, float 1.000000e+00, float 0.000000e+00
  %3729 = fmul fast float %3614, %3728
  %3730 = fsub fast float %3668, %3410
  %3731 = fsub fast float %3669, %3411
  %3732 = fsub fast float %3670, %3412
  %3733 = fmul fast float %3730, %3729
  %3734 = fmul fast float %3731, %3729
  %3735 = fmul fast float %3732, %3729
  %3736 = fadd fast float %3733, %3410
  %3737 = fadd fast float %3734, %3411
  %3738 = fadd fast float %3735, %3412
  %3739 = fsub fast float %3641, %3409
  %3740 = fmul fast float %3739, %3729
  %3741 = fadd fast float %3740, %3409
  %3742 = fmul fast float %3729, %3399
  %3743 = fsub fast float %3399, %3742
  %3744 = fmul fast float %3729, %3398
  %3745 = fsub fast float %3398, %3744
  %3746 = fadd fast float %3614, %3408
  %3747 = call float @dx.op.unary.f32(i32 7, float %3746)  ; Saturate(value)
  %3748 = fsub fast float %3661, %3407
  %3749 = fmul fast float %3748, %3710
  %3750 = fadd fast float %3749, %3407
  %3751 = fsub fast float %3647, %3406
  %3752 = fmul fast float %3751, %3710
  %3753 = fadd fast float %3752, %3406
  %3754 = call float @dx.op.dot3.f32(i32 55, float %3668, float %3669, float %3670, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3756 = extractvalue %dx.types.CBufRet.f32 %3755, 0
  %3757 = extractvalue %dx.types.CBufRet.f32 %3755, 1
  %3758 = fmul fast float %3757, %3754
  %3759 = fadd fast float %3758, %3756
  %3760 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  %3761 = bitcast float %3458 to i32
  %3762 = and i32 %3761, 65535
  %3763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3762)  ; LegacyF16ToF32(value)
  %3764 = lshr i32 %3761, 16
  %3765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3764)  ; LegacyF16ToF32(value)
  %3766 = fcmp fast oge float %3763, 0.000000e+00
  %3767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3768 = extractvalue %dx.types.CBufRet.f32 %3767, 0
  %3769 = select i1 %3766, float %3763, float %3768
  %3770 = fadd fast float %3769, %3765
  %3771 = fsub fast float %3760, %3397
  %3772 = fmul fast float %3771, %3614
  %3773 = fadd fast float %3772, %3397
  %3774 = fmul fast float %3770, %3614
  %3775 = call float @dx.op.binary.f32(i32 35, float %3396, float %3774)  ; FMax(a,b)
  %3776 = call float @dx.op.binary.f32(i32 35, float %3395, float %3614)  ; FMax(a,b)
  %3777 = and i32 %3544, 16
  %3778 = icmp eq i32 %3777, 0
  br i1 %3778, label %3801, label %3779

; <label>:3779                                    ; preds = %3717
  %3780 = bitcast float %3464 to i32
  %3781 = add i32 %3461, 0
  %3782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3781, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3783 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3782, %dx.types.Handle %3627, float %3555, float %3558, float undef, float undef, i32 0, i32 0, i32 undef, float %3560, float %3562, float undef, float %3564, float %3566, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3784 = extractvalue %dx.types.ResRet.f32 %3783, 0
  %3785 = extractvalue %dx.types.ResRet.f32 %3783, 1
  %3786 = extractvalue %dx.types.ResRet.f32 %3783, 2
  %3787 = and i32 %3780, 65535
  %3788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3787)  ; LegacyF16ToF32(value)
  %3789 = fmul fast float %3784, %3455
  %3790 = fmul fast float %3785, %3456
  %3791 = fmul fast float %3786, %3457
  %3792 = and i32 %3544, 16384
  %3793 = icmp ne i32 %3792, 0
  %3794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3795 = extractvalue %dx.types.CBufRet.f32 %3794, 0
  %3796 = select i1 %3793, float %3795, float 1.000000e+00
  %3797 = fmul fast float %3796, %3788
  %3798 = fmul fast float %3789, %3797
  %3799 = fmul fast float %3790, %3797
  %3800 = fmul fast float %3791, %3797
  br label %3801

; <label>:3801                                    ; preds = %3779, %3717
  %3802 = phi float [ %3798, %3779 ], [ 0.000000e+00, %3717 ]
  %3803 = phi float [ %3799, %3779 ], [ 0.000000e+00, %3717 ]
  %3804 = phi float [ %3800, %3779 ], [ 0.000000e+00, %3717 ]
  %3805 = fsub fast float %3802, %3400
  %3806 = fsub fast float %3803, %3401
  %3807 = fsub fast float %3804, %3402
  %3808 = fmul fast float %3805, %3614
  %3809 = fmul fast float %3806, %3614
  %3810 = fmul fast float %3807, %3614
  %3811 = fadd fast float %3808, %3400
  %3812 = fadd fast float %3809, %3401
  %3813 = fadd fast float %3810, %3402
  br label %3514

; <label>:3814                                    ; preds = %3514
  br label %3815

; <label>:3815                                    ; preds = %3814, %3329
  %3816 = phi float [ 0.000000e+00, %3329 ], [ %3515, %3814 ]
  %3817 = phi float [ %1077, %3329 ], [ %3516, %3814 ]
  %3818 = phi float [ %3299, %3329 ], [ %3517, %3814 ]
  %3819 = phi float [ %3297, %3329 ], [ %3518, %3814 ]
  %3820 = phi float [ 0.000000e+00, %3329 ], [ %3519, %3814 ]
  %3821 = phi float [ 0.000000e+00, %3329 ], [ %3520, %3814 ]
  %3822 = phi float [ %3291, %3329 ], [ %3521, %3814 ]
  %3823 = phi float [ %3292, %3329 ], [ %3522, %3814 ]
  %3824 = phi float [ %3293, %3329 ], [ %3523, %3814 ]
  %3825 = phi float [ %3325, %3329 ], [ %3524, %3814 ]
  %3826 = phi float [ %3326, %3329 ], [ %3525, %3814 ]
  %3827 = phi float [ %3327, %3329 ], [ %3526, %3814 ]
  %3828 = phi float [ %3296, %3329 ], [ %3527, %3814 ]
  %3829 = phi float [ %3295, %3329 ], [ %3528, %3814 ]
  %3830 = phi float [ 0.000000e+00, %3329 ], [ %3529, %3814 ]
  %3831 = phi float [ %3294, %3329 ], [ %3530, %3814 ]
  %3832 = phi float [ %3288, %3329 ], [ %3531, %3814 ]
  %3833 = phi float [ %3289, %3329 ], [ %3532, %3814 ]
  %3834 = phi float [ %3290, %3329 ], [ %3533, %3814 ]
  %3835 = call float @dx.op.dot3.f32(i32 55, float %3825, float %3826, float %3827, float %3825, float %3826, float %3827)  ; Dot3(ax,ay,az,bx,by,bz)
  %3836 = call float @dx.op.unary.f32(i32 25, float %3835)  ; Rsqrt(value)
  %3837 = fmul fast float %3836, %3825
  %3838 = fmul fast float %3836, %3826
  %3839 = fmul fast float %3836, %3827
  %3840 = fadd fast float %3830, %1077
  %3841 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3842 = call float @dx.op.dot3.f32(i32 55, float %3837, float %3838, float %3839, float %3837, float %3838, float %3839)  ; Dot3(ax,ay,az,bx,by,bz)
  %3843 = call float @dx.op.unary.f32(i32 25, float %3842)  ; Rsqrt(value)
  %3844 = fmul fast float %3843, %3837
  %3845 = fmul fast float %3843, %3838
  %3846 = fmul fast float %3843, %3839
  br label %3847

; <label>:3847                                    ; preds = %3815, %3285
  %3848 = phi float [ %3844, %3815 ], [ %3325, %3285 ]
  %3849 = phi float [ %3845, %3815 ], [ %3326, %3285 ]
  %3850 = phi float [ %3846, %3815 ], [ %3327, %3285 ]
  %3851 = phi float [ %3832, %3815 ], [ %3288, %3285 ]
  %3852 = phi float [ %3833, %3815 ], [ %3289, %3285 ]
  %3853 = phi float [ %3834, %3815 ], [ %3290, %3285 ]
  %3854 = phi float [ %3822, %3815 ], [ %3291, %3285 ]
  %3855 = phi float [ %3823, %3815 ], [ %3292, %3285 ]
  %3856 = phi float [ %3824, %3815 ], [ %3293, %3285 ]
  %3857 = phi float [ %3831, %3815 ], [ %3294, %3285 ]
  %3858 = phi float [ %3841, %3815 ], [ %1077, %3285 ]
  %3859 = phi float [ %3829, %3815 ], [ %3295, %3285 ]
  %3860 = phi float [ %3828, %3815 ], [ %3296, %3285 ]
  %3861 = phi float [ %3821, %3815 ], [ 0.000000e+00, %3285 ]
  %3862 = phi float [ %3820, %3815 ], [ 0.000000e+00, %3285 ]
  %3863 = phi float [ %3816, %3815 ], [ 0.000000e+00, %3285 ]
  %3864 = phi float [ %3818, %3815 ], [ %3299, %3285 ]
  %3865 = phi float [ %3817, %3815 ], [ %1077, %3285 ]
  %3866 = phi float [ %3819, %3815 ], [ %3297, %3285 ]
  %3867 = add i32 %54, 392
  %3868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3867, i32 undef)  ; BufferLoad(srv,index,wot)
  %3869 = extractvalue %dx.types.ResRet.i32 %3868, 0
  %3870 = extractvalue %dx.types.ResRet.i32 %3868, 1
  %3871 = extractvalue %dx.types.ResRet.i32 %3868, 2
  %3872 = bitcast i32 %3869 to float
  %3873 = bitcast i32 %3870 to float
  %3874 = bitcast i32 %3871 to float
  %3875 = add i32 %54, 376
  %3876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3875, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.i32 %3876, 0
  %3878 = extractvalue %dx.types.ResRet.i32 %3876, 1
  %3879 = extractvalue %dx.types.ResRet.i32 %3876, 2
  %3880 = bitcast i32 %3877 to float
  %3881 = bitcast i32 %3878 to float
  %3882 = bitcast i32 %3879 to float
  %3883 = fsub fast float %3880, %3872
  %3884 = fsub fast float %3881, %3873
  %3885 = fsub fast float %3882, %3874
  %3886 = fmul fast float %3883, %225
  %3887 = fmul fast float %3884, %225
  %3888 = fmul fast float %3885, %225
  %3889 = fadd fast float %3886, %3872
  %3890 = fadd fast float %3887, %3873
  %3891 = fadd fast float %3888, %3874
  %3892 = fmul fast float %3889, %3851
  %3893 = fmul fast float %3890, %3852
  %3894 = fmul fast float %3891, %3853
  %3895 = fmul fast float %3858, %225
  %3896 = fadd fast float %3857, 0xBFB99999A0000000
  %3897 = call float @dx.op.unary.f32(i32 7, float %3896)  ; Saturate(value)
  %3898 = fmul fast float %3897, 0x3FF1C71C80000000
  %3899 = call float @dx.op.binary.f32(i32 36, float %3857, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3900 = fsub fast float 1.000000e+00, %3898
  %3901 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3902 = fmul fast float %3892, %3901
  %3903 = fmul fast float %3893, %3901
  %3904 = fmul fast float %3894, %3901
  %3905 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3906 = call float @dx.op.unary.f32(i32 7, float %3903)  ; Saturate(value)
  %3907 = call float @dx.op.unary.f32(i32 7, float %3904)  ; Saturate(value)
  %3908 = fmul fast float %3892, %3898
  %3909 = fmul fast float %3893, %3898
  %3910 = fmul fast float %3894, %3898
  %3911 = fadd fast float %3908, %3899
  %3912 = fadd fast float %3909, %3899
  %3913 = fadd fast float %3910, %3899
  %3914 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3915 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3916 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3917 = call float @dx.op.unary.f32(i32 7, float %3859)  ; Saturate(value)
  %3918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3919 = extractvalue %dx.types.CBufRet.i32 %3918, 3
  %3920 = and i32 %3919, 8
  %3921 = icmp ne i32 %3920, 0
  %3922 = call float @dx.op.binary.f32(i32 35, float %3905, float %3892)  ; FMax(a,b)
  %3923 = call float @dx.op.binary.f32(i32 35, float %3906, float %3892)  ; FMax(a,b)
  %3924 = call float @dx.op.binary.f32(i32 35, float %3907, float %3892)  ; FMax(a,b)
  %3925 = call float @dx.op.dot3.f32(i32 55, float %3905, float %3906, float %3907, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3926 = select i1 %282, float %3892, float %3905
  %3927 = select i1 %282, float %3925, float %3906
  %3928 = select i1 %282, float 1.000000e+00, float %3907
  %3929 = select i1 %3921, float %3922, float %3926
  %3930 = select i1 %3921, float %3923, float %3927
  %3931 = select i1 %3921, float %3924, float %3928
  %3932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3933 = extractvalue %dx.types.CBufRet.f32 %3932, 0
  %3934 = extractvalue %dx.types.CBufRet.f32 %3932, 1
  %3935 = extractvalue %dx.types.CBufRet.f32 %3932, 2
  %3936 = fadd fast float %3933, %191
  %3937 = fadd fast float %3934, %192
  %3938 = fadd fast float %3935, %193
  %3939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3940 = extractvalue %dx.types.CBufRet.f32 %3939, 0
  %3941 = extractvalue %dx.types.CBufRet.f32 %3939, 1
  %3942 = fsub fast float %3936, %3940
  %3943 = fsub fast float %3937, %3941
  %3944 = fmul fast float %3942, %3942
  %3945 = fmul fast float %3943, %3943
  %3946 = fadd fast float %3944, %3945
  %3947 = call float @dx.op.unary.f32(i32 24, float %3946)  ; Sqrt(value)
  %3948 = extractvalue %dx.types.CBufRet.f32 %3939, 2
  %3949 = fcmp fast olt float %3947, %3948
  br i1 %3949, label %3950, label %4017

; <label>:3950                                    ; preds = %3847
  %3951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3952 = extractvalue %dx.types.CBufRet.f32 %3951, 0
  %3953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3954 = extractvalue %dx.types.CBufRet.f32 %3953, 0
  %3955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3956 = extractvalue %dx.types.CBufRet.f32 %3955, 0
  %3957 = extractvalue %dx.types.CBufRet.f32 %3951, 1
  %3958 = extractvalue %dx.types.CBufRet.f32 %3953, 1
  %3959 = extractvalue %dx.types.CBufRet.f32 %3955, 1
  %3960 = extractvalue %dx.types.CBufRet.f32 %3951, 3
  %3961 = extractvalue %dx.types.CBufRet.f32 %3953, 3
  %3962 = extractvalue %dx.types.CBufRet.f32 %3955, 3
  %3963 = fadd fast float %3960, %3936
  %3964 = fadd fast float %3961, %3937
  %3965 = fadd fast float %3962, %3938
  %3966 = fmul fast float %3963, %3952
  %3967 = call float @dx.op.tertiary.f32(i32 46, float %3964, float %3954, float %3966)  ; FMad(a,b,c)
  %3968 = call float @dx.op.tertiary.f32(i32 46, float %3965, float %3956, float %3967)  ; FMad(a,b,c)
  %3969 = fmul fast float %3963, %3957
  %3970 = call float @dx.op.tertiary.f32(i32 46, float %3964, float %3958, float %3969)  ; FMad(a,b,c)
  %3971 = call float @dx.op.tertiary.f32(i32 46, float %3965, float %3959, float %3970)  ; FMad(a,b,c)
  %3972 = fsub fast float %3968, %3960
  %3973 = fsub fast float %3971, %3961
  %3974 = fsub fast float %3972, %3940
  %3975 = fadd fast float %3974, %3948
  %3976 = fsub fast float %3973, %3941
  %3977 = fadd fast float %3976, %3948
  %3978 = extractvalue %dx.types.CBufRet.f32 %3939, 3
  %3979 = fmul fast float %3975, %3978
  %3980 = fmul fast float %3977, %3978
  %3981 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3982 = call float @dx.op.unary.f32(i32 7, float %3980)  ; Saturate(value)
  %3983 = fsub fast float 1.000000e+00, %3981
  %3984 = fsub fast float 1.000000e+00, %3982
  %3985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %3983, float %3984, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3986 = extractvalue %dx.types.ResRet.f32 %3985, 0
  %3987 = fcmp fast ugt float %3986, 0.000000e+00
  br i1 %3987, label %3988, label %4291

; <label>:3988                                    ; preds = %3950
  %3989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3990 = extractvalue %dx.types.CBufRet.f32 %3989, 2
  %3991 = fmul fast float %3990, %3986
  %3992 = extractvalue %dx.types.CBufRet.f32 %3989, 3
  %3993 = fadd fast float %3992, %3991
  %3994 = extractvalue %dx.types.CBufRet.f32 %3955, 2
  %3995 = fadd fast float %3993, %3962
  %3996 = fmul fast float %3968, %3956
  %3997 = call float @dx.op.tertiary.f32(i32 46, float %3971, float %3959, float %3996)  ; FMad(a,b,c)
  %3998 = call float @dx.op.tertiary.f32(i32 46, float %3995, float %3994, float %3997)  ; FMad(a,b,c)
  %3999 = fsub fast float %3998, %3962
  %4000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4001 = extractvalue %dx.types.CBufRet.f32 %4000, 2
  %4002 = fsub fast float %3999, %4001
  %4003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %3983, float %3984, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4004 = extractvalue %dx.types.ResRet.f32 %4003, 0
  %4005 = extractvalue %dx.types.ResRet.f32 %4003, 1
  %4006 = extractvalue %dx.types.ResRet.f32 %4003, 2
  %4007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %3983, float %3984, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4008 = extractvalue %dx.types.ResRet.f32 %4007, 0
  %4009 = extractvalue %dx.types.ResRet.f32 %4007, 1
  %4010 = extractvalue %dx.types.ResRet.f32 %4007, 2
  %4011 = fadd fast float %4008, %4004
  %4012 = fmul fast float %4011, 0x3F847AE140000000
  %4013 = fadd fast float %4009, %4005
  %4014 = fmul fast float %4013, 0x3F847AE140000000
  %4015 = fadd fast float %4010, %4006
  %4016 = fmul fast float %4015, 0x3F847AE140000000
  br label %4291

; <label>:4017                                    ; preds = %3847
  %4018 = and i32 %261, 1
  %4019 = icmp eq i32 %4018, 0
  br i1 %4019, label %4291, label %4020

; <label>:4020                                    ; preds = %4017
  %4021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.f32 %4021, 0
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4025, 0
  %4027 = extractvalue %dx.types.CBufRet.f32 %4021, 1
  %4028 = extractvalue %dx.types.CBufRet.f32 %4023, 1
  %4029 = extractvalue %dx.types.CBufRet.f32 %4025, 1
  %4030 = extractvalue %dx.types.CBufRet.f32 %4021, 3
  %4031 = extractvalue %dx.types.CBufRet.f32 %4023, 3
  %4032 = extractvalue %dx.types.CBufRet.f32 %4025, 3
  %4033 = fadd fast float %4030, %3936
  %4034 = fadd fast float %4031, %3937
  %4035 = fadd fast float %4032, %3938
  %4036 = fmul fast float %4033, %4022
  %4037 = call float @dx.op.tertiary.f32(i32 46, float %4034, float %4024, float %4036)  ; FMad(a,b,c)
  %4038 = call float @dx.op.tertiary.f32(i32 46, float %4035, float %4026, float %4037)  ; FMad(a,b,c)
  %4039 = fmul fast float %4033, %4027
  %4040 = call float @dx.op.tertiary.f32(i32 46, float %4034, float %4028, float %4039)  ; FMad(a,b,c)
  %4041 = call float @dx.op.tertiary.f32(i32 46, float %4035, float %4029, float %4040)  ; FMad(a,b,c)
  %4042 = fsub fast float %4038, %4030
  %4043 = fsub fast float %4041, %4031
  %4044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4045 = extractvalue %dx.types.CBufRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.CBufRet.f32 %4044, 1
  %4047 = extractvalue %dx.types.CBufRet.f32 %4044, 2
  %4048 = extractvalue %dx.types.CBufRet.f32 %4044, 3
  %4049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4050 = extractvalue %dx.types.CBufRet.f32 %4049, 3
  %4051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.i32 %4051, 0
  %4053 = extractvalue %dx.types.CBufRet.i32 %4051, 1
  %4054 = udiv i32 %4053, %4052
  %4055 = fsub fast float %4042, %4045
  %4056 = fsub fast float %4043, %4046
  %4057 = call float @dx.op.binary.f32(i32 35, float %4055, float 0.000000e+00)  ; FMax(a,b)
  %4058 = call float @dx.op.binary.f32(i32 35, float %4056, float 0.000000e+00)  ; FMax(a,b)
  %4059 = call float @dx.op.binary.f32(i32 36, float %4057, float %4047)  ; FMin(a,b)
  %4060 = call float @dx.op.binary.f32(i32 36, float %4058, float %4048)  ; FMin(a,b)
  %4061 = add i32 %4052, -1
  %4062 = add i32 %4054, -1
  %4063 = fmul fast float %4059, %4050
  %4064 = fmul fast float %4060, %4050
  %4065 = fptoui float %4063 to i32
  %4066 = fptoui float %4064 to i32
  %4067 = call i32 @dx.op.binary.i32(i32 40, i32 %4065, i32 %4061)  ; UMin(a,b)
  %4068 = call i32 @dx.op.binary.i32(i32 40, i32 %4066, i32 %4062)  ; UMin(a,b)
  %4069 = mul i32 %4068, %4052
  %4070 = add i32 %4069, %4067
  %4071 = shl i32 %4070, 2
  %4072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4071, i32 undef)  ; BufferLoad(srv,index,wot)
  %4073 = extractvalue %dx.types.ResRet.i32 %4072, 0
  %4074 = icmp eq i32 %4073, -1
  br i1 %4074, label %4291, label %4075

; <label>:4075                                    ; preds = %4020
  %4076 = mul i32 %4073, 148
  %4077 = add i32 %4076, 4
  %4078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4077, i32 undef)  ; BufferLoad(srv,index,wot)
  %4079 = extractvalue %dx.types.ResRet.f32 %4078, 0
  %4080 = add i32 %4076, 8
  %4081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4080, i32 undef)  ; BufferLoad(srv,index,wot)
  %4082 = extractvalue %dx.types.ResRet.f32 %4081, 0
  %4083 = add i32 %4076, 36
  %4084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4083, i32 undef)  ; BufferLoad(srv,index,wot)
  %4085 = extractvalue %dx.types.ResRet.f32 %4084, 0
  %4086 = add i32 %4076, 60
  %4087 = add i32 %4076, 92
  %4088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4087, i32 undef)  ; BufferLoad(srv,index,wot)
  %4089 = extractvalue %dx.types.ResRet.i32 %4088, 0
  %4090 = add i32 %4076, 116
  %4091 = fsub fast float %4042, %4079
  %4092 = fsub fast float %4043, %4082
  %4093 = fmul fast float %4050, %4091
  %4094 = fmul fast float %4050, %4092
  %4095 = call float @dx.op.unary.f32(i32 7, float %4093)  ; Saturate(value)
  %4096 = call float @dx.op.unary.f32(i32 7, float %4094)  ; Saturate(value)
  %4097 = fsub fast float 1.000000e+00, %4096
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 2
  %4100 = call float @dx.op.unary.f32(i32 83, float %4095)  ; DerivCoarseX(value)
  %4101 = call float @dx.op.unary.f32(i32 83, float %4097)  ; DerivCoarseX(value)
  %4102 = call float @dx.op.unary.f32(i32 84, float %4095)  ; DerivCoarseY(value)
  %4103 = call float @dx.op.unary.f32(i32 84, float %4097)  ; DerivCoarseY(value)
  %4104 = fmul fast float %4100, %4099
  %4105 = fmul fast float %4101, %4099
  %4106 = fmul fast float %4102, %4099
  %4107 = fmul fast float %4103, %4099
  %4108 = call float @dx.op.dot2.f32(i32 54, float %4106, float %4107, float %4106, float %4107)  ; Dot2(ax,ay,bx,by)
  %4109 = call float @dx.op.dot2.f32(i32 54, float %4104, float %4105, float %4104, float %4105)  ; Dot2(ax,ay,bx,by)
  %4110 = call float @dx.op.binary.f32(i32 35, float %4109, float %4108)  ; FMax(a,b)
  %4111 = call float @dx.op.unary.f32(i32 23, float %4110)  ; Log(value)
  %4112 = fmul fast float %4111, 5.000000e-01
  %4113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4113, 1
  %4115 = fadd fast float %4114, %4112
  %4116 = call float @dx.op.binary.f32(i32 35, float %4115, float 0.000000e+00)  ; FMax(a,b)
  %4117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.f32 %4117, 3
  %4119 = fadd fast float %4118, %4116
  %4120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4121 = extractvalue %dx.types.CBufRet.f32 %4120, 3
  %4122 = fadd fast float %4119, %4121
  %4123 = add i32 %4089, 0
  %4124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4123, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4125 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4124, i32 0)  ; GetDimensions(handle,mipLevel)
  %4126 = extractvalue %dx.types.Dimensions %4125, 0
  %4127 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4126)  ; FirstbitLo(value)
  %4128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.i32 %4128, 1
  %4130 = sub nsw i32 %4129, %4127
  %4131 = sitofp i32 %4130 to float
  %4132 = fsub fast float %4122, %4131
  %4133 = call float @dx.op.binary.f32(i32 35, float %4132, float 0.000000e+00)  ; FMax(a,b)
  %4134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4124, %dx.types.Handle %46, float %4095, float %4097, float %4085, float undef, i32 0, i32 0, i32 undef, float %4133)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4136 = fcmp ule float %4135, 0x3FE0101020000000
  %4137 = extractvalue %dx.types.CBufRet.i32 %4128, 0
  %4138 = and i32 %4137, 128
  %4139 = icmp ne i32 %4138, 0
  %4140 = and i1 %4136, %4139
  br i1 %4140, label %4291, label %4141

; <label>:4141                                    ; preds = %4075
  %4142 = add i32 %4076, 20
  %4143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4142, i32 undef)  ; BufferLoad(srv,index,wot)
  %4144 = extractvalue %dx.types.ResRet.f32 %4143, 0
  %4145 = add i32 %4076, 24
  %4146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4145, i32 undef)  ; BufferLoad(srv,index,wot)
  %4147 = extractvalue %dx.types.ResRet.f32 %4146, 0
  %4148 = add i32 %4076, 40
  %4149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4148, i32 undef)  ; BufferLoad(srv,index,wot)
  %4150 = extractvalue %dx.types.ResRet.f32 %4149, 0
  %4151 = add i32 %4076, 96
  %4152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4151, i32 undef)  ; BufferLoad(srv,index,wot)
  %4153 = extractvalue %dx.types.ResRet.i32 %4152, 0
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 2
  %4156 = fmul fast float %4155, %4095
  %4157 = fmul fast float %4155, %4097
  %4158 = extractvalue %dx.types.CBufRet.f32 %4154, 3
  %4159 = fadd fast float %4156, %4158
  %4160 = fadd fast float %4157, %4158
  %4161 = add i32 %4153, 0
  %4162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4161, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4163 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4162, i32 0)  ; GetDimensions(handle,mipLevel)
  %4164 = extractvalue %dx.types.Dimensions %4163, 0
  %4165 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4164)  ; FirstbitLo(value)
  %4166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.i32 %4166, 1
  %4168 = sub nsw i32 %4167, %4165
  %4169 = sitofp i32 %4168 to float
  %4170 = fsub fast float %4119, %4169
  %4171 = call float @dx.op.binary.f32(i32 35, float %4170, float 0.000000e+00)  ; FMax(a,b)
  %4172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4162, %dx.types.Handle %46, float %4159, float %4160, float %4150, float undef, i32 0, i32 0, i32 undef, float %4171)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4173 = extractvalue %dx.types.ResRet.f32 %4172, 0
  %4174 = fmul fast float %4173, %4144
  %4175 = fadd fast float %4174, %4147
  %4176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4176, 0
  %4178 = extractvalue %dx.types.CBufRet.f32 %4176, 1
  %4179 = extractvalue %dx.types.CBufRet.f32 %4176, 2
  %4180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4181 = extractvalue %dx.types.CBufRet.f32 %4180, 3
  %4182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4183 = extractvalue %dx.types.CBufRet.f32 %4182, 3
  %4184 = extractvalue %dx.types.CBufRet.f32 %4176, 3
  %4185 = fadd fast float %4181, %4042
  %4186 = fadd fast float %4183, %4043
  %4187 = fadd fast float %4175, %4184
  %4188 = fmul fast float %4185, %4177
  %4189 = call float @dx.op.tertiary.f32(i32 46, float %4186, float %4178, float %4188)  ; FMad(a,b,c)
  %4190 = call float @dx.op.tertiary.f32(i32 46, float %4187, float %4179, float %4189)  ; FMad(a,b,c)
  %4191 = fsub fast float %4190, %4184
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 2
  %4194 = fsub fast float %4191, %4193
  %4195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.i32 %4195, 0
  %4197 = call i32 @dx.op.binary.i32(i32 40, i32 %4073, i32 %4196)  ; UMin(a,b)
  %4198 = mul i32 %4197, 36
  %4199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.i32 %4199, 0
  %4201 = add i32 %4198, 4
  %4202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4203 = extractvalue %dx.types.CBufRet.f32 %4202, 0
  %4204 = fmul fast float %4203, %4095
  %4205 = fmul fast float %4203, %4097
  %4206 = extractvalue %dx.types.CBufRet.f32 %4202, 1
  %4207 = fadd fast float %4204, %4206
  %4208 = fadd fast float %4205, %4206
  %4209 = icmp eq i32 %4200, 0
  br i1 %4209, label %4278, label %4210

; <label>:4210                                    ; preds = %4141
  br label %4211

; <label>:4211                                    ; preds = %4268, %4210
  %4212 = phi float [ %4269, %4268 ], [ 0.000000e+00, %4210 ]
  %4213 = phi float [ %4270, %4268 ], [ 0.000000e+00, %4210 ]
  %4214 = phi float [ %4271, %4268 ], [ 0.000000e+00, %4210 ]
  %4215 = phi float [ %4272, %4268 ], [ 0.000000e+00, %4210 ]
  %4216 = phi float [ %4273, %4268 ], [ 0.000000e+00, %4210 ]
  %4217 = phi float [ %4274, %4268 ], [ 0.000000e+00, %4210 ]
  %4218 = phi i32 [ %4275, %4268 ], [ 0, %4210 ]
  %4219 = shl i32 %4218, 2
  %4220 = add i32 %4086, %4219
  %4221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4220, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = add i32 %4090, %4219
  %4224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4223, i32 undef)  ; BufferLoad(srv,index,wot)
  %4225 = extractvalue %dx.types.ResRet.i32 %4224, 0
  %4226 = add i32 %4225, 0
  %4227 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4226, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4228 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4227, i32 0)  ; GetDimensions(handle,mipLevel)
  %4229 = extractvalue %dx.types.Dimensions %4228, 0
  %4230 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4229)  ; FirstbitLo(value)
  %4231 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4232 = extractvalue %dx.types.CBufRet.i32 %4231, 1
  %4233 = sub nsw i32 %4232, %4230
  %4234 = sitofp i32 %4233 to float
  %4235 = fsub fast float %4119, %4234
  %4236 = call float @dx.op.binary.f32(i32 35, float %4235, float 0.000000e+00)  ; FMax(a,b)
  %4237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4227, %dx.types.Handle %46, float %4207, float %4208, float %4222, float undef, i32 0, i32 0, i32 undef, float %4236)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4238 = extractvalue %dx.types.ResRet.f32 %4237, 0
  %4239 = fcmp fast ogt float %4238, 0.000000e+00
  br i1 %4239, label %4240, label %4268

; <label>:4240                                    ; preds = %4211
  %4241 = add i32 %4201, %4219
  %4242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4241, i32 undef)  ; BufferLoad(srv,index,wot)
  %4243 = extractvalue %dx.types.ResRet.i32 %4242, 0
  %4244 = and i32 %4243, 32767
  %4245 = mul nuw nsw i32 %4244, 928
  %4246 = add nuw nsw i32 %4245, 48
  %4247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4246, i32 undef)  ; BufferLoad(srv,index,wot)
  %4248 = extractvalue %dx.types.ResRet.f32 %4247, 0
  %4249 = extractvalue %dx.types.ResRet.f32 %4247, 1
  %4250 = extractvalue %dx.types.ResRet.f32 %4247, 2
  %4251 = add nuw nsw i32 %4245, 60
  %4252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4251, i32 undef)  ; BufferLoad(srv,index,wot)
  %4253 = extractvalue %dx.types.ResRet.f32 %4252, 0
  %4254 = extractvalue %dx.types.ResRet.f32 %4252, 1
  %4255 = extractvalue %dx.types.ResRet.f32 %4252, 2
  %4256 = fmul fast float %4248, %4238
  %4257 = fmul fast float %4249, %4238
  %4258 = fmul fast float %4250, %4238
  %4259 = fadd fast float %4256, %4212
  %4260 = fadd fast float %4257, %4213
  %4261 = fadd fast float %4258, %4214
  %4262 = fmul fast float %4253, %4238
  %4263 = fmul fast float %4254, %4238
  %4264 = fmul fast float %4255, %4238
  %4265 = fadd fast float %4262, %4215
  %4266 = fadd fast float %4263, %4216
  %4267 = fadd fast float %4264, %4217
  br label %4268

; <label>:4268                                    ; preds = %4240, %4211
  %4269 = phi float [ %4259, %4240 ], [ %4212, %4211 ]
  %4270 = phi float [ %4260, %4240 ], [ %4213, %4211 ]
  %4271 = phi float [ %4261, %4240 ], [ %4214, %4211 ]
  %4272 = phi float [ %4265, %4240 ], [ %4215, %4211 ]
  %4273 = phi float [ %4266, %4240 ], [ %4216, %4211 ]
  %4274 = phi float [ %4267, %4240 ], [ %4217, %4211 ]
  %4275 = add nuw i32 %4218, 1
  %4276 = icmp eq i32 %4275, %4200
  br i1 %4276, label %4277, label %4211

; <label>:4277                                    ; preds = %4268
  br label %4278

; <label>:4278                                    ; preds = %4277, %4141
  %4279 = phi float [ 0.000000e+00, %4141 ], [ %4269, %4277 ]
  %4280 = phi float [ 0.000000e+00, %4141 ], [ %4270, %4277 ]
  %4281 = phi float [ 0.000000e+00, %4141 ], [ %4271, %4277 ]
  %4282 = phi float [ 0.000000e+00, %4141 ], [ %4272, %4277 ]
  %4283 = phi float [ 0.000000e+00, %4141 ], [ %4273, %4277 ]
  %4284 = phi float [ 0.000000e+00, %4141 ], [ %4274, %4277 ]
  %4285 = fadd fast float %4282, %4279
  %4286 = fmul fast float %4285, 0x3F847AE140000000
  %4287 = fadd fast float %4283, %4280
  %4288 = fmul fast float %4287, 0x3F847AE140000000
  %4289 = fadd fast float %4284, %4281
  %4290 = fmul fast float %4289, 0x3F847AE140000000
  br label %4291

; <label>:4291                                    ; preds = %4278, %4075, %4020, %4017, %3988, %3950
  %4292 = phi float [ %4002, %3988 ], [ -1.310720e+05, %3950 ], [ %4194, %4278 ], [ -1.310720e+05, %4020 ], [ -1.310720e+05, %4075 ], [ -1.310720e+05, %4017 ]
  %4293 = phi float [ %4012, %3988 ], [ 0.000000e+00, %3950 ], [ %4286, %4278 ], [ 0.000000e+00, %4020 ], [ 0.000000e+00, %4075 ], [ 0.000000e+00, %4017 ]
  %4294 = phi float [ %4014, %3988 ], [ 0.000000e+00, %3950 ], [ %4288, %4278 ], [ 0.000000e+00, %4020 ], [ 0.000000e+00, %4075 ], [ 0.000000e+00, %4017 ]
  %4295 = phi float [ %4016, %3988 ], [ 0.000000e+00, %3950 ], [ %4290, %4278 ], [ 0.000000e+00, %4020 ], [ 0.000000e+00, %4075 ], [ 0.000000e+00, %4017 ]
  %4296 = phi i1 [ true, %3988 ], [ false, %3950 ], [ true, %4278 ], [ false, %4020 ], [ false, %4075 ], [ false, %4017 ]
  %4297 = and i32 %261, 3
  %4298 = icmp eq i32 %4297, 1
  %4299 = select i1 %4298, float 1.000000e+00, float 0.000000e+00
  %4300 = fsub fast float %4292, %193
  %4301 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4302 = select i1 %4296, float %4301, float 1.000000e+00
  %4303 = fmul fast float %4302, %4299
  %4304 = icmp eq i32 %4297, 3
  %4305 = select i1 %4304, float 1.000000e+00, float %4303
  %4306 = call float @dx.op.binary.f32(i32 35, float %3863, float %4305)  ; FMax(a,b)
  %4307 = fcmp fast olt float %4305, 1.000000e+00
  %4308 = fcmp uge float %69, 0.000000e+00
  %4309 = and i1 %4308, %4307
  br i1 %4309, label %4310, label %4320

; <label>:4310                                    ; preds = %4291
  %4311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %46, float %69, float %70, float %71, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4312 = extractvalue %dx.types.ResRet.f32 %4311, 0
  %4313 = extractvalue %dx.types.ResRet.f32 %4311, 1
  %4314 = extractvalue %dx.types.ResRet.f32 %4311, 2
  %4315 = fadd fast float %4312, %4306
  %4316 = fcmp ule float %68, 0.000000e+00
  %4317 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4318 = select i1 %4316, float %4317, float 1.000000e+00
  %4319 = fmul fast float %4318, %4314
  br label %4320

; <label>:4320                                    ; preds = %4310, %4291
  %4321 = phi float [ %4315, %4310 ], [ %4306, %4291 ]
  %4322 = phi float [ %4313, %4310 ], [ 0.000000e+00, %4291 ]
  %4323 = phi float [ %4319, %4310 ], [ 0.000000e+00, %4291 ]
  %4324 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4325 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4326 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  %4327 = fcmp fast une float %4325, 0.000000e+00
  %4328 = fcmp fast une float %4326, 0.000000e+00
  %4329 = or i1 %4327, %4328
  br i1 %4329, label %4330, label %4889

; <label>:4330                                    ; preds = %4320
  br i1 %4327, label %4331, label %4604

; <label>:4331                                    ; preds = %4330
  %4332 = call float @dx.op.unary.f32(i32 23, float %3860)  ; Log(value)
  %4333 = fmul fast float %4332, 4.000000e+00
  %4334 = call float @dx.op.unary.f32(i32 21, float %4333)  ; Exp(value)
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 0
  %4337 = fmul fast float %4336, %56
  %4338 = fmul fast float %4336, %57
  %4339 = fmul fast float %4336, %58
  %4340 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4341 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4342 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4343 = call float @dx.op.unary.f32(i32 23, float %4340)  ; Log(value)
  %4344 = call float @dx.op.unary.f32(i32 23, float %4341)  ; Log(value)
  %4345 = call float @dx.op.unary.f32(i32 23, float %4342)  ; Log(value)
  %4346 = fmul fast float %4343, 4.000000e+00
  %4347 = fmul fast float %4344, 4.000000e+00
  %4348 = fmul fast float %4345, 4.000000e+00
  %4349 = call float @dx.op.unary.f32(i32 21, float %4346)  ; Exp(value)
  %4350 = call float @dx.op.unary.f32(i32 21, float %4347)  ; Exp(value)
  %4351 = call float @dx.op.unary.f32(i32 21, float %4348)  ; Exp(value)
  %4352 = fadd fast float %4350, %4349
  %4353 = fadd fast float %4352, %4351
  %4354 = fdiv fast float 1.000000e+00, %4353
  %4355 = fmul fast float %4354, %4349
  %4356 = fcmp fast ogt float %65, 0.000000e+00
  %4357 = fcmp fast ogt float %66, 0.000000e+00
  %4358 = fcmp fast ogt float %67, 0.000000e+00
  %4359 = fcmp fast olt float %65, 0.000000e+00
  %4360 = fcmp fast olt float %66, 0.000000e+00
  %4361 = fcmp fast olt float %67, 0.000000e+00
  %4362 = zext i1 %4356 to i32
  %4363 = zext i1 %4357 to i32
  %4364 = zext i1 %4358 to i32
  %4365 = zext i1 %4359 to i32
  %4366 = zext i1 %4360 to i32
  %4367 = zext i1 %4361 to i32
  %4368 = sub nsw i32 %4362, %4365
  %4369 = sub nsw i32 %4363, %4366
  %4370 = sub nsw i32 %4364, %4367
  %4371 = call float @dx.op.unary.f32(i32 83, float %4337)  ; DerivCoarseX(value)
  %4372 = call float @dx.op.unary.f32(i32 83, float %4338)  ; DerivCoarseX(value)
  %4373 = call float @dx.op.unary.f32(i32 83, float %4339)  ; DerivCoarseX(value)
  %4374 = call float @dx.op.unary.f32(i32 84, float %4337)  ; DerivCoarseY(value)
  %4375 = call float @dx.op.unary.f32(i32 84, float %4338)  ; DerivCoarseY(value)
  %4376 = call float @dx.op.unary.f32(i32 84, float %4339)  ; DerivCoarseY(value)
  %4377 = fcmp fast ole float %293, %4355
  %4378 = fmul fast float %4354, %4352
  %4379 = fcmp fast ole float %293, %4378
  %4380 = select i1 %4379, float %4339, float %4337
  %4381 = select i1 %4379, float %4337, float %4338
  %4382 = select i1 %4377, float %4338, float %4380
  %4383 = select i1 %4377, float %4339, float %4381
  %4384 = select i1 %4379, float %4373, float %4371
  %4385 = select i1 %4379, float %4371, float %4372
  %4386 = select i1 %4377, float %4372, float %4384
  %4387 = select i1 %4377, float %4373, float %4385
  %4388 = select i1 %4379, float %4376, float %4374
  %4389 = select i1 %4379, float %4374, float %4375
  %4390 = select i1 %4377, float %4375, float %4388
  %4391 = select i1 %4377, float %4376, float %4389
  %4392 = call float @dx.op.unary.f32(i32 27, float %4382)  ; Round_ni(value)
  %4393 = call float @dx.op.unary.f32(i32 27, float %4383)  ; Round_ni(value)
  %4394 = fptosi float %4392 to i32
  %4395 = fptosi float %4393 to i32
  %4396 = xor i32 %4395, %4394
  %4397 = sitofp i32 %4396 to float
  %4398 = fptosi float %4397 to i32
  %4399 = sitofp i32 %4398 to float
  %4400 = fmul fast float %4399, 0x3FE3C6EF40000000
  %4401 = frem fast float %4392, 2.560000e+02
  %4402 = frem fast float %4393, 2.560000e+02
  %4403 = fptoui float %4401 to i32
  %4404 = fptoui float %4402 to i32
  %4405 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4403, i32 %4404, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4406 = extractvalue %dx.types.ResRet.f32 %4405, 0
  %4407 = extractvalue %dx.types.ResRet.f32 %4405, 1
  %4408 = extractvalue %dx.types.ResRet.f32 %4405, 2
  %4409 = fadd fast float %4406, %4400
  %4410 = fadd fast float %4407, %4400
  %4411 = fadd fast float %4408, %4400
  %4412 = call float @dx.op.unary.f32(i32 22, float %4409)  ; Frc(value)
  %4413 = call float @dx.op.unary.f32(i32 22, float %4410)  ; Frc(value)
  %4414 = call float @dx.op.unary.f32(i32 22, float %4411)  ; Frc(value)
  %4415 = fmul fast float %4414, 0x401921FB60000000
  %4416 = call float @dx.op.unary.f32(i32 13, float %4415)  ; Sin(value)
  %4417 = call float @dx.op.unary.f32(i32 12, float %4415)  ; Cos(value)
  %4418 = fsub fast float -0.000000e+00, %4417
  %4419 = fmul fast float %4417, %4382
  %4420 = call float @dx.op.tertiary.f32(i32 46, float %4416, float %4383, float %4419)  ; FMad(a,b,c)
  %4421 = fmul fast float %4416, %4382
  %4422 = call float @dx.op.tertiary.f32(i32 46, float %4418, float %4383, float %4421)  ; FMad(a,b,c)
  %4423 = fadd fast float %4420, %4412
  %4424 = fadd fast float %4422, %4413
  %4425 = extractvalue %dx.types.CBufRet.f32 %4335, 3
  %4426 = bitcast float %4425 to i32
  %4427 = icmp eq i32 %4426, 0
  br i1 %4427, label %4466, label %4428

; <label>:4428                                    ; preds = %4331
  %4429 = add i32 %4426, 0
  %4430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4429, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4431 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4430, %dx.types.Handle %101, float %4423, float %4424, float undef, float undef, i32 0, i32 0, i32 undef, float %4386, float %4387, float undef, float %4390, float %4391, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4432 = extractvalue %dx.types.ResRet.f32 %4431, 0
  %4433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4434 = extractvalue %dx.types.CBufRet.f32 %4433, 1
  %4435 = extractvalue %dx.types.CBufRet.f32 %4433, 2
  %4436 = fsub fast float 1.000000e+00, %4325
  %4437 = call float @dx.op.binary.f32(i32 35, float %4436, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4438 = bitcast float %4325 to i32
  %4439 = sitofp i32 %4438 to float
  %4440 = fadd fast float %4439, 0xC1CFBF8940000000
  %4441 = fmul fast float %4435, %4440
  %4442 = fadd fast float %4441, 0x41CFBF8940000000
  %4443 = fptosi float %4442 to i32
  %4444 = bitcast i32 %4443 to float
  %4445 = bitcast float %4437 to i32
  %4446 = sitofp i32 %4445 to float
  %4447 = fadd fast float %4446, 0xC1CFBF8940000000
  %4448 = fmul fast float %4447, %4435
  %4449 = fadd fast float %4448, 0x41CFBF8940000000
  %4450 = fptosi float %4449 to i32
  %4451 = bitcast i32 %4450 to float
  %4452 = fmul fast float %4444, %4434
  %4453 = fmul fast float %4451, %4434
  %4454 = fsub fast float %4437, %4452
  %4455 = fadd fast float %4453, %4437
  %4456 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4457 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4458 = fsub fast float %4432, %4456
  %4459 = fsub fast float %4457, %4456
  %4460 = bitcast float %4459 to i32
  %4461 = sub nsw i32 2129859010, %4460
  %4462 = bitcast i32 %4461 to float
  %4463 = fmul fast float %4462, %4458
  %4464 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4465 = fcmp fast olt float %4464, 0x3F70101020000000
  br i1 %4465, label %4604, label %4466

; <label>:4466                                    ; preds = %4428, %4331
  %4467 = phi float [ %4464, %4428 ], [ %4325, %4331 ]
  %4468 = fmul fast float %4467, %4334
  %4469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.i32 %4469, 1
  %4471 = extractvalue %dx.types.CBufRet.i32 %4469, 0
  %4472 = add i32 %4471, 0
  %4473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4472, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4474 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4473, %dx.types.Handle %100, float %4423, float %4424, float undef, float undef, i32 0, i32 0, i32 undef, float %4386, float %4387, float undef, float %4390, float %4391, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4475 = extractvalue %dx.types.ResRet.f32 %4474, 0
  %4476 = extractvalue %dx.types.ResRet.f32 %4474, 1
  %4477 = extractvalue %dx.types.ResRet.f32 %4474, 2
  %4478 = extractvalue %dx.types.ResRet.f32 %4474, 3
  %4479 = and i32 %4470, 255
  %4480 = uitofp i32 %4479 to float
  %4481 = lshr i32 %4470, 8
  %4482 = and i32 %4481, 255
  %4483 = uitofp i32 %4482 to float
  %4484 = fmul fast float %4478, %4480
  %4485 = fadd fast float %4484, %4483
  %4486 = fmul fast float %4485, 0x3F70101000000000
  %4487 = fadd fast float %4486, 0xBFB99999A0000000
  %4488 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4489 = fmul fast float %4488, 0x3FF1C71C80000000
  %4490 = call float @dx.op.binary.f32(i32 36, float %4486, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4491 = fsub fast float 1.000000e+00, %4489
  %4492 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4493 = fmul fast float %4492, %4475
  %4494 = fmul fast float %4492, %4476
  %4495 = fmul fast float %4492, %4477
  %4496 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4497 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4498 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4499 = fmul fast float %4489, %4475
  %4500 = fmul fast float %4489, %4476
  %4501 = fmul fast float %4489, %4477
  %4502 = fadd fast float %4499, %4490
  %4503 = fadd fast float %4500, %4490
  %4504 = fadd fast float %4501, %4490
  %4505 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4506 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4507 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4509 = extractvalue %dx.types.CBufRet.i32 %4508, 3
  %4510 = extractvalue %dx.types.CBufRet.i32 %4508, 2
  %4511 = add i32 %4510, 0
  %4512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4511, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4513 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4512, %dx.types.Handle %100, float %4423, float %4424, float undef, float undef, i32 0, i32 0, i32 undef, float %4386, float %4387, float undef, float %4390, float %4391, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4514 = extractvalue %dx.types.ResRet.f32 %4513, 0
  %4515 = extractvalue %dx.types.ResRet.f32 %4513, 1
  %4516 = extractvalue %dx.types.ResRet.f32 %4513, 2
  %4517 = extractvalue %dx.types.ResRet.f32 %4513, 3
  %4518 = and i32 %4509, 255
  %4519 = uitofp i32 %4518 to float
  %4520 = lshr i32 %4509, 8
  %4521 = and i32 %4520, 255
  %4522 = uitofp i32 %4521 to float
  %4523 = lshr i32 %4509, 16
  %4524 = and i32 %4523, 255
  %4525 = uitofp i32 %4524 to float
  %4526 = fmul fast float %4525, 0x3F70101000000000
  %4527 = fmul fast float %4514, %4519
  %4528 = fadd fast float %4527, %4522
  %4529 = fmul fast float %4528, 0x3F70101000000000
  %4530 = fadd fast float %4515, -5.000000e-01
  %4531 = fadd fast float %4517, -5.000000e-01
  %4532 = fmul fast float %4530, %4526
  %4533 = fmul fast float %4531, %4526
  %4534 = fadd fast float %4532, 5.000000e-01
  %4535 = fadd fast float %4533, 5.000000e-01
  %4536 = fmul fast float %4534, 2.000000e+00
  %4537 = fadd fast float %4536, -1.000000e+00
  %4538 = fmul fast float %4535, 2.000000e+00
  %4539 = fadd fast float %4538, -1.000000e+00
  %4540 = fadd fast float %4537, %4539
  %4541 = fmul fast float %4540, 5.000000e-01
  %4542 = fsub fast float %4537, %4539
  %4543 = fmul fast float %4542, 5.000000e-01
  %4544 = call float @dx.op.unary.f32(i32 6, float %4541)  ; FAbs(value)
  %4545 = fsub fast float 1.000000e+00, %4544
  %4546 = call float @dx.op.unary.f32(i32 6, float %4543)  ; FAbs(value)
  %4547 = fsub fast float %4545, %4546
  %4548 = call float @dx.op.dot3.f32(i32 55, float %4541, float %4543, float %4547, float %4541, float %4543, float %4547)  ; Dot3(ax,ay,az,bx,by,bz)
  %4549 = call float @dx.op.unary.f32(i32 25, float %4548)  ; Rsqrt(value)
  %4550 = fmul fast float %4541, %4549
  %4551 = fmul fast float %4543, %4549
  %4552 = select i1 %4379, i32 %4369, i32 %4370
  %4553 = select i1 %4377, i32 %4368, i32 %4552
  %4554 = sitofp i32 %4553 to float
  %4555 = fmul fast float %4547, %4554
  %4556 = fmul fast float %4555, %4549
  %4557 = select i1 %4379, float %4556, float %4551
  %4558 = select i1 %4379, float %4551, float %4556
  %4559 = select i1 %4377, float %4556, float %4550
  %4560 = select i1 %4377, float %4551, float %4557
  %4561 = select i1 %4377, float %4550, float %4558
  %4562 = fsub fast float %4496, %3929
  %4563 = fsub fast float %4497, %3930
  %4564 = fsub fast float %4498, %3931
  %4565 = fmul fast float %4562, %4468
  %4566 = fmul fast float %4563, %4468
  %4567 = fmul fast float %4564, %4468
  %4568 = fadd fast float %4565, %3929
  %4569 = fadd fast float %4566, %3930
  %4570 = fadd fast float %4567, %3931
  %4571 = fsub fast float %4505, %3914
  %4572 = fsub fast float %4506, %3915
  %4573 = fsub fast float %4507, %3916
  %4574 = fmul fast float %4571, %4468
  %4575 = fmul fast float %4572, %4468
  %4576 = fmul fast float %4573, %4468
  %4577 = fadd fast float %4574, %3914
  %4578 = fadd fast float %4575, %3915
  %4579 = fadd fast float %4576, %3916
  %4580 = fadd fast float %4559, %3848
  %4581 = fadd fast float %4560, %3849
  %4582 = fadd fast float %4561, %3850
  %4583 = call float @dx.op.dot3.f32(i32 55, float %4580, float %4581, float %4582, float %4580, float %4581, float %4582)  ; Dot3(ax,ay,az,bx,by,bz)
  %4584 = call float @dx.op.unary.f32(i32 25, float %4583)  ; Rsqrt(value)
  %4585 = fmul fast float %4580, %4584
  %4586 = fmul fast float %4581, %4584
  %4587 = fmul fast float %4582, %4584
  %4588 = fsub fast float %4585, %3848
  %4589 = fsub fast float %4586, %3849
  %4590 = fsub fast float %4587, %3850
  %4591 = fmul fast float %4588, %4468
  %4592 = fmul fast float %4589, %4468
  %4593 = fmul fast float %4590, %4468
  %4594 = fadd fast float %4591, %3848
  %4595 = fadd fast float %4592, %3849
  %4596 = fadd fast float %4593, %3850
  %4597 = call float @dx.op.binary.f32(i32 36, float %3860, float %4516)  ; FMin(a,b)
  %4598 = fsub fast float %4597, %3860
  %4599 = fmul fast float %4598, %4468
  %4600 = fadd fast float %4599, %3860
  %4601 = fsub fast float %4529, %3917
  %4602 = fmul fast float %4601, %4468
  %4603 = fadd fast float %4602, %3917
  br label %4604

; <label>:4604                                    ; preds = %4466, %4428, %4330
  %4605 = phi float [ %4594, %4466 ], [ %3848, %4428 ], [ %3848, %4330 ]
  %4606 = phi float [ %4595, %4466 ], [ %3849, %4428 ], [ %3849, %4330 ]
  %4607 = phi float [ %4596, %4466 ], [ %3850, %4428 ], [ %3850, %4330 ]
  %4608 = phi float [ %4568, %4466 ], [ %3929, %4428 ], [ %3929, %4330 ]
  %4609 = phi float [ %4569, %4466 ], [ %3930, %4428 ], [ %3930, %4330 ]
  %4610 = phi float [ %4570, %4466 ], [ %3931, %4428 ], [ %3931, %4330 ]
  %4611 = phi float [ %4577, %4466 ], [ %3914, %4428 ], [ %3914, %4330 ]
  %4612 = phi float [ %4578, %4466 ], [ %3915, %4428 ], [ %3915, %4330 ]
  %4613 = phi float [ %4579, %4466 ], [ %3916, %4428 ], [ %3916, %4330 ]
  %4614 = phi float [ %4603, %4466 ], [ %3917, %4428 ], [ %3917, %4330 ]
  %4615 = phi float [ %4600, %4466 ], [ %3860, %4428 ], [ %3860, %4330 ]
  br i1 %4328, label %4616, label %4889

; <label>:4616                                    ; preds = %4604
  %4617 = call float @dx.op.unary.f32(i32 23, float %4615)  ; Log(value)
  %4618 = fmul fast float %4617, 4.000000e+00
  %4619 = call float @dx.op.unary.f32(i32 21, float %4618)  ; Exp(value)
  %4620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.f32 %4620, 0
  %4622 = fmul fast float %4621, %56
  %4623 = fmul fast float %4621, %57
  %4624 = fmul fast float %4621, %58
  %4625 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4626 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4627 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4628 = call float @dx.op.unary.f32(i32 23, float %4625)  ; Log(value)
  %4629 = call float @dx.op.unary.f32(i32 23, float %4626)  ; Log(value)
  %4630 = call float @dx.op.unary.f32(i32 23, float %4627)  ; Log(value)
  %4631 = fmul fast float %4628, 4.000000e+00
  %4632 = fmul fast float %4629, 4.000000e+00
  %4633 = fmul fast float %4630, 4.000000e+00
  %4634 = call float @dx.op.unary.f32(i32 21, float %4631)  ; Exp(value)
  %4635 = call float @dx.op.unary.f32(i32 21, float %4632)  ; Exp(value)
  %4636 = call float @dx.op.unary.f32(i32 21, float %4633)  ; Exp(value)
  %4637 = fadd fast float %4635, %4634
  %4638 = fadd fast float %4637, %4636
  %4639 = fdiv fast float 1.000000e+00, %4638
  %4640 = fmul fast float %4639, %4634
  %4641 = fcmp fast ogt float %65, 0.000000e+00
  %4642 = fcmp fast ogt float %66, 0.000000e+00
  %4643 = fcmp fast ogt float %67, 0.000000e+00
  %4644 = fcmp fast olt float %65, 0.000000e+00
  %4645 = fcmp fast olt float %66, 0.000000e+00
  %4646 = fcmp fast olt float %67, 0.000000e+00
  %4647 = zext i1 %4641 to i32
  %4648 = zext i1 %4642 to i32
  %4649 = zext i1 %4643 to i32
  %4650 = zext i1 %4644 to i32
  %4651 = zext i1 %4645 to i32
  %4652 = zext i1 %4646 to i32
  %4653 = sub nsw i32 %4647, %4650
  %4654 = sub nsw i32 %4648, %4651
  %4655 = sub nsw i32 %4649, %4652
  %4656 = call float @dx.op.unary.f32(i32 83, float %4622)  ; DerivCoarseX(value)
  %4657 = call float @dx.op.unary.f32(i32 83, float %4623)  ; DerivCoarseX(value)
  %4658 = call float @dx.op.unary.f32(i32 83, float %4624)  ; DerivCoarseX(value)
  %4659 = call float @dx.op.unary.f32(i32 84, float %4622)  ; DerivCoarseY(value)
  %4660 = call float @dx.op.unary.f32(i32 84, float %4623)  ; DerivCoarseY(value)
  %4661 = call float @dx.op.unary.f32(i32 84, float %4624)  ; DerivCoarseY(value)
  %4662 = fcmp fast ole float %293, %4640
  %4663 = fmul fast float %4639, %4637
  %4664 = fcmp fast ole float %293, %4663
  %4665 = select i1 %4664, float %4624, float %4622
  %4666 = select i1 %4664, float %4622, float %4623
  %4667 = select i1 %4662, float %4623, float %4665
  %4668 = select i1 %4662, float %4624, float %4666
  %4669 = select i1 %4664, float %4658, float %4656
  %4670 = select i1 %4664, float %4656, float %4657
  %4671 = select i1 %4662, float %4657, float %4669
  %4672 = select i1 %4662, float %4658, float %4670
  %4673 = select i1 %4664, float %4661, float %4659
  %4674 = select i1 %4664, float %4659, float %4660
  %4675 = select i1 %4662, float %4660, float %4673
  %4676 = select i1 %4662, float %4661, float %4674
  %4677 = call float @dx.op.unary.f32(i32 27, float %4667)  ; Round_ni(value)
  %4678 = call float @dx.op.unary.f32(i32 27, float %4668)  ; Round_ni(value)
  %4679 = fptosi float %4677 to i32
  %4680 = fptosi float %4678 to i32
  %4681 = xor i32 %4680, %4679
  %4682 = sitofp i32 %4681 to float
  %4683 = fptosi float %4682 to i32
  %4684 = sitofp i32 %4683 to float
  %4685 = fmul fast float %4684, 0x3FE3C6EF40000000
  %4686 = frem fast float %4677, 2.560000e+02
  %4687 = frem fast float %4678, 2.560000e+02
  %4688 = fptoui float %4686 to i32
  %4689 = fptoui float %4687 to i32
  %4690 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4688, i32 %4689, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4691 = extractvalue %dx.types.ResRet.f32 %4690, 0
  %4692 = extractvalue %dx.types.ResRet.f32 %4690, 1
  %4693 = extractvalue %dx.types.ResRet.f32 %4690, 2
  %4694 = fadd fast float %4691, %4685
  %4695 = fadd fast float %4692, %4685
  %4696 = fadd fast float %4693, %4685
  %4697 = call float @dx.op.unary.f32(i32 22, float %4694)  ; Frc(value)
  %4698 = call float @dx.op.unary.f32(i32 22, float %4695)  ; Frc(value)
  %4699 = call float @dx.op.unary.f32(i32 22, float %4696)  ; Frc(value)
  %4700 = fmul fast float %4699, 0x401921FB60000000
  %4701 = call float @dx.op.unary.f32(i32 13, float %4700)  ; Sin(value)
  %4702 = call float @dx.op.unary.f32(i32 12, float %4700)  ; Cos(value)
  %4703 = fsub fast float -0.000000e+00, %4702
  %4704 = fmul fast float %4702, %4667
  %4705 = call float @dx.op.tertiary.f32(i32 46, float %4701, float %4668, float %4704)  ; FMad(a,b,c)
  %4706 = fmul fast float %4701, %4667
  %4707 = call float @dx.op.tertiary.f32(i32 46, float %4703, float %4668, float %4706)  ; FMad(a,b,c)
  %4708 = fadd fast float %4705, %4697
  %4709 = fadd fast float %4707, %4698
  %4710 = extractvalue %dx.types.CBufRet.f32 %4620, 3
  %4711 = bitcast float %4710 to i32
  %4712 = icmp eq i32 %4711, 0
  br i1 %4712, label %4751, label %4713

; <label>:4713                                    ; preds = %4616
  %4714 = add i32 %4711, 0
  %4715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4714, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4716 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4715, %dx.types.Handle %101, float %4708, float %4709, float undef, float undef, i32 0, i32 0, i32 undef, float %4671, float %4672, float undef, float %4675, float %4676, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4717 = extractvalue %dx.types.ResRet.f32 %4716, 0
  %4718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4719 = extractvalue %dx.types.CBufRet.f32 %4718, 1
  %4720 = extractvalue %dx.types.CBufRet.f32 %4718, 2
  %4721 = fsub fast float 1.000000e+00, %4326
  %4722 = call float @dx.op.binary.f32(i32 35, float %4721, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4723 = bitcast float %4326 to i32
  %4724 = sitofp i32 %4723 to float
  %4725 = fadd fast float %4724, 0xC1CFBF8940000000
  %4726 = fmul fast float %4720, %4725
  %4727 = fadd fast float %4726, 0x41CFBF8940000000
  %4728 = fptosi float %4727 to i32
  %4729 = bitcast i32 %4728 to float
  %4730 = bitcast float %4722 to i32
  %4731 = sitofp i32 %4730 to float
  %4732 = fadd fast float %4731, 0xC1CFBF8940000000
  %4733 = fmul fast float %4732, %4720
  %4734 = fadd fast float %4733, 0x41CFBF8940000000
  %4735 = fptosi float %4734 to i32
  %4736 = bitcast i32 %4735 to float
  %4737 = fmul fast float %4729, %4719
  %4738 = fmul fast float %4736, %4719
  %4739 = fsub fast float %4722, %4737
  %4740 = fadd fast float %4738, %4722
  %4741 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4742 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4743 = fsub fast float %4717, %4741
  %4744 = fsub fast float %4742, %4741
  %4745 = bitcast float %4744 to i32
  %4746 = sub nsw i32 2129859010, %4745
  %4747 = bitcast i32 %4746 to float
  %4748 = fmul fast float %4747, %4743
  %4749 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4750 = fcmp fast olt float %4749, 0x3F70101020000000
  br i1 %4750, label %4889, label %4751

; <label>:4751                                    ; preds = %4713, %4616
  %4752 = phi float [ %4749, %4713 ], [ %4326, %4616 ]
  %4753 = fmul fast float %4752, %4619
  %4754 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4755 = extractvalue %dx.types.CBufRet.i32 %4754, 1
  %4756 = extractvalue %dx.types.CBufRet.i32 %4754, 0
  %4757 = add i32 %4756, 0
  %4758 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4757, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4759 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4758, %dx.types.Handle %100, float %4708, float %4709, float undef, float undef, i32 0, i32 0, i32 undef, float %4671, float %4672, float undef, float %4675, float %4676, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4760 = extractvalue %dx.types.ResRet.f32 %4759, 0
  %4761 = extractvalue %dx.types.ResRet.f32 %4759, 1
  %4762 = extractvalue %dx.types.ResRet.f32 %4759, 2
  %4763 = extractvalue %dx.types.ResRet.f32 %4759, 3
  %4764 = and i32 %4755, 255
  %4765 = uitofp i32 %4764 to float
  %4766 = lshr i32 %4755, 8
  %4767 = and i32 %4766, 255
  %4768 = uitofp i32 %4767 to float
  %4769 = fmul fast float %4763, %4765
  %4770 = fadd fast float %4769, %4768
  %4771 = fmul fast float %4770, 0x3F70101000000000
  %4772 = fadd fast float %4771, 0xBFB99999A0000000
  %4773 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4774 = fmul fast float %4773, 0x3FF1C71C80000000
  %4775 = call float @dx.op.binary.f32(i32 36, float %4771, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4776 = fsub fast float 1.000000e+00, %4774
  %4777 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4778 = fmul fast float %4777, %4760
  %4779 = fmul fast float %4777, %4761
  %4780 = fmul fast float %4777, %4762
  %4781 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4782 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  %4783 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4784 = fmul fast float %4774, %4760
  %4785 = fmul fast float %4774, %4761
  %4786 = fmul fast float %4774, %4762
  %4787 = fadd fast float %4784, %4775
  %4788 = fadd fast float %4785, %4775
  %4789 = fadd fast float %4786, %4775
  %4790 = call float @dx.op.unary.f32(i32 7, float %4787)  ; Saturate(value)
  %4791 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4792 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  %4793 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4794 = extractvalue %dx.types.CBufRet.i32 %4793, 3
  %4795 = extractvalue %dx.types.CBufRet.i32 %4793, 2
  %4796 = add i32 %4795, 0
  %4797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4796, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4798 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4797, %dx.types.Handle %100, float %4708, float %4709, float undef, float undef, i32 0, i32 0, i32 undef, float %4671, float %4672, float undef, float %4675, float %4676, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4799 = extractvalue %dx.types.ResRet.f32 %4798, 0
  %4800 = extractvalue %dx.types.ResRet.f32 %4798, 1
  %4801 = extractvalue %dx.types.ResRet.f32 %4798, 2
  %4802 = extractvalue %dx.types.ResRet.f32 %4798, 3
  %4803 = and i32 %4794, 255
  %4804 = uitofp i32 %4803 to float
  %4805 = lshr i32 %4794, 8
  %4806 = and i32 %4805, 255
  %4807 = uitofp i32 %4806 to float
  %4808 = lshr i32 %4794, 16
  %4809 = and i32 %4808, 255
  %4810 = uitofp i32 %4809 to float
  %4811 = fmul fast float %4810, 0x3F70101000000000
  %4812 = fmul fast float %4799, %4804
  %4813 = fadd fast float %4812, %4807
  %4814 = fmul fast float %4813, 0x3F70101000000000
  %4815 = fadd fast float %4800, -5.000000e-01
  %4816 = fadd fast float %4802, -5.000000e-01
  %4817 = fmul fast float %4815, %4811
  %4818 = fmul fast float %4816, %4811
  %4819 = fadd fast float %4817, 5.000000e-01
  %4820 = fadd fast float %4818, 5.000000e-01
  %4821 = fmul fast float %4819, 2.000000e+00
  %4822 = fadd fast float %4821, -1.000000e+00
  %4823 = fmul fast float %4820, 2.000000e+00
  %4824 = fadd fast float %4823, -1.000000e+00
  %4825 = fadd fast float %4822, %4824
  %4826 = fmul fast float %4825, 5.000000e-01
  %4827 = fsub fast float %4822, %4824
  %4828 = fmul fast float %4827, 5.000000e-01
  %4829 = call float @dx.op.unary.f32(i32 6, float %4826)  ; FAbs(value)
  %4830 = fsub fast float 1.000000e+00, %4829
  %4831 = call float @dx.op.unary.f32(i32 6, float %4828)  ; FAbs(value)
  %4832 = fsub fast float %4830, %4831
  %4833 = call float @dx.op.dot3.f32(i32 55, float %4826, float %4828, float %4832, float %4826, float %4828, float %4832)  ; Dot3(ax,ay,az,bx,by,bz)
  %4834 = call float @dx.op.unary.f32(i32 25, float %4833)  ; Rsqrt(value)
  %4835 = fmul fast float %4826, %4834
  %4836 = fmul fast float %4828, %4834
  %4837 = select i1 %4664, i32 %4654, i32 %4655
  %4838 = select i1 %4662, i32 %4653, i32 %4837
  %4839 = sitofp i32 %4838 to float
  %4840 = fmul fast float %4832, %4839
  %4841 = fmul fast float %4840, %4834
  %4842 = select i1 %4664, float %4841, float %4836
  %4843 = select i1 %4664, float %4836, float %4841
  %4844 = select i1 %4662, float %4841, float %4835
  %4845 = select i1 %4662, float %4836, float %4842
  %4846 = select i1 %4662, float %4835, float %4843
  %4847 = fsub fast float %4781, %4608
  %4848 = fsub fast float %4782, %4609
  %4849 = fsub fast float %4783, %4610
  %4850 = fmul fast float %4847, %4753
  %4851 = fmul fast float %4848, %4753
  %4852 = fmul fast float %4849, %4753
  %4853 = fadd fast float %4850, %4608
  %4854 = fadd fast float %4851, %4609
  %4855 = fadd fast float %4852, %4610
  %4856 = fsub fast float %4790, %4611
  %4857 = fsub fast float %4791, %4612
  %4858 = fsub fast float %4792, %4613
  %4859 = fmul fast float %4856, %4753
  %4860 = fmul fast float %4857, %4753
  %4861 = fmul fast float %4858, %4753
  %4862 = fadd fast float %4859, %4611
  %4863 = fadd fast float %4860, %4612
  %4864 = fadd fast float %4861, %4613
  %4865 = fadd fast float %4844, %4605
  %4866 = fadd fast float %4845, %4606
  %4867 = fadd fast float %4846, %4607
  %4868 = call float @dx.op.dot3.f32(i32 55, float %4865, float %4866, float %4867, float %4865, float %4866, float %4867)  ; Dot3(ax,ay,az,bx,by,bz)
  %4869 = call float @dx.op.unary.f32(i32 25, float %4868)  ; Rsqrt(value)
  %4870 = fmul fast float %4865, %4869
  %4871 = fmul fast float %4866, %4869
  %4872 = fmul fast float %4867, %4869
  %4873 = fsub fast float %4870, %4605
  %4874 = fsub fast float %4871, %4606
  %4875 = fsub fast float %4872, %4607
  %4876 = fmul fast float %4873, %4753
  %4877 = fmul fast float %4874, %4753
  %4878 = fmul fast float %4875, %4753
  %4879 = fadd fast float %4876, %4605
  %4880 = fadd fast float %4877, %4606
  %4881 = fadd fast float %4878, %4607
  %4882 = call float @dx.op.binary.f32(i32 36, float %4615, float %4801)  ; FMin(a,b)
  %4883 = fsub fast float %4882, %4615
  %4884 = fmul fast float %4883, %4753
  %4885 = fadd fast float %4884, %4615
  %4886 = fsub fast float %4814, %4614
  %4887 = fmul fast float %4886, %4753
  %4888 = fadd fast float %4887, %4614
  br label %4889

; <label>:4889                                    ; preds = %4751, %4713, %4604, %4320
  %4890 = phi float [ %4879, %4751 ], [ %4605, %4713 ], [ %4605, %4604 ], [ %3848, %4320 ]
  %4891 = phi float [ %4880, %4751 ], [ %4606, %4713 ], [ %4606, %4604 ], [ %3849, %4320 ]
  %4892 = phi float [ %4881, %4751 ], [ %4607, %4713 ], [ %4607, %4604 ], [ %3850, %4320 ]
  %4893 = phi float [ %4853, %4751 ], [ %4608, %4713 ], [ %4608, %4604 ], [ %3929, %4320 ]
  %4894 = phi float [ %4854, %4751 ], [ %4609, %4713 ], [ %4609, %4604 ], [ %3930, %4320 ]
  %4895 = phi float [ %4855, %4751 ], [ %4610, %4713 ], [ %4610, %4604 ], [ %3931, %4320 ]
  %4896 = phi float [ %4862, %4751 ], [ %4611, %4713 ], [ %4611, %4604 ], [ %3914, %4320 ]
  %4897 = phi float [ %4863, %4751 ], [ %4612, %4713 ], [ %4612, %4604 ], [ %3915, %4320 ]
  %4898 = phi float [ %4864, %4751 ], [ %4613, %4713 ], [ %4613, %4604 ], [ %3916, %4320 ]
  %4899 = phi float [ %4888, %4751 ], [ %4614, %4713 ], [ %4614, %4604 ], [ %3917, %4320 ]
  %4900 = phi float [ %4885, %4751 ], [ %4615, %4713 ], [ %4615, %4604 ], [ %3860, %4320 ]
  %4901 = fcmp fast une float %4324, 0.000000e+00
  %4902 = fsub fast float -0.000000e+00, %211
  %4903 = fsub fast float -0.000000e+00, %212
  %4904 = fsub fast float -0.000000e+00, %213
  br i1 %4901, label %4905, label %5066

; <label>:4905                                    ; preds = %4889
  %4906 = call float @dx.op.dot3.f32(i32 55, float %4902, float %4903, float %4904, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4907 = fmul fast float %4324, 2.500000e+00
  %4908 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4909 = fmul fast float %4324, 0x4013FFFFE0000000
  %4910 = fadd fast float %4909, 0xBFFFFFFFE0000000
  %4911 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4912 = fmul fast float %4324, 0x4004000020000000
  %4913 = fadd fast float %4912, 0xBFF8000040000000
  %4914 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4915 = fmul fast float %3896, 1.000000e+01
  %4916 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4917 = fmul fast float %4916, 2.000000e+00
  %4918 = fsub fast float 3.000000e+00, %4917
  %4919 = fmul fast float %4916, %4916
  %4920 = fmul fast float %4919, %4918
  %4921 = fsub fast float 1.000000e+00, %4920
  %4922 = fsub fast float 0x3FE3333340000000, %4899
  %4923 = fmul fast float %4922, 0x400AAAAAA0000000
  %4924 = call float @dx.op.unary.f32(i32 7, float %4923)  ; Saturate(value)
  %4925 = fmul fast float %4921, %4924
  %4926 = fmul fast float %4893, 0x3FEA2B8620000000
  %4927 = fmul fast float %4894, 0x3FEA2B8620000000
  %4928 = fmul fast float %4895, 0x3FEA2B8620000000
  %4929 = fadd fast float %4926, 0x3FC81DFBA0000000
  %4930 = fmul fast float %4929, %4893
  %4931 = fadd fast float %4930, 0x3F910E6020000000
  %4932 = fadd fast float %4927, 0x3FC81DFBA0000000
  %4933 = fmul fast float %4932, %4894
  %4934 = fadd fast float %4933, 0x3F910E6020000000
  %4935 = fadd fast float %4928, 0x3FC81DFBA0000000
  %4936 = fmul fast float %4935, %4895
  %4937 = fadd fast float %4936, 0x3F910E6020000000
  %4938 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4939 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4940 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4941 = fsub fast float %4938, %4893
  %4942 = fsub fast float %4939, %4894
  %4943 = fsub fast float %4940, %4895
  %4944 = fmul fast float %4941, %4908
  %4945 = fmul fast float %4944, %4925
  %4946 = fmul fast float %4942, %4908
  %4947 = fmul fast float %4946, %4925
  %4948 = fmul fast float %4943, %4908
  %4949 = fmul fast float %4948, %4925
  %4950 = fadd fast float %4945, %4893
  %4951 = fadd fast float %4947, %4894
  %4952 = fadd fast float %4949, %4895
  %4953 = fmul fast float %4900, %4900
  %4954 = fmul fast float %4953, %4953
  %4955 = fadd fast float %4911, 1.000000e+00
  %4956 = fsub fast float %4955, %4925
  %4957 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %4958 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4959 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4960 = fsub fast float 1.000000e+00, %4954
  %4961 = call float @dx.op.binary.f32(i32 36, float %4957, float %4960)  ; FMin(a,b)
  %4962 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4963 = call float @dx.op.binary.f32(i32 35, float %4961, float %4962)  ; FMax(a,b)
  %4964 = fadd fast float %4959, 0xBFE4CCCCC0000000
  %4965 = fmul fast float %4964, 0x4006DB6DA0000000
  %4966 = call float @dx.op.unary.f32(i32 7, float %4965)  ; Saturate(value)
  %4967 = fmul fast float %4966, 2.000000e+00
  %4968 = fsub fast float 3.000000e+00, %4967
  %4969 = bitcast float %4896 to i32
  %4970 = ashr i32 %4969, 1
  %4971 = add nsw i32 %4970, 532487669
  %4972 = bitcast i32 %4971 to float
  %4973 = fsub fast float 1.000000e+00, %4972
  %4974 = bitcast float %4973 to i32
  %4975 = sub nsw i32 2129859010, %4974
  %4976 = bitcast i32 %4975 to float
  %4977 = fmul fast float %4976, 2.000000e+00
  %4978 = bitcast float %4897 to i32
  %4979 = ashr i32 %4978, 1
  %4980 = add nsw i32 %4979, 532487669
  %4981 = bitcast i32 %4980 to float
  %4982 = fsub fast float 1.000000e+00, %4981
  %4983 = bitcast float %4982 to i32
  %4984 = sub nsw i32 2129859010, %4983
  %4985 = bitcast i32 %4984 to float
  %4986 = fmul fast float %4985, 2.000000e+00
  %4987 = bitcast float %4898 to i32
  %4988 = ashr i32 %4987, 1
  %4989 = add nsw i32 %4988, 532487669
  %4990 = bitcast i32 %4989 to float
  %4991 = fsub fast float 1.000000e+00, %4990
  %4992 = bitcast float %4991 to i32
  %4993 = sub nsw i32 2129859010, %4992
  %4994 = bitcast i32 %4993 to float
  %4995 = fmul fast float %4994, 2.000000e+00
  %4996 = fsub fast float 0x4002A9FBE0000000, %4977
  %4997 = fadd fast float %4977, 0x3FD54FDF00000000
  %4998 = bitcast float %4997 to i32
  %4999 = sub nsw i32 2129859010, %4998
  %5000 = bitcast i32 %4999 to float
  %5001 = fmul fast float %5000, %4996
  %5002 = fmul fast float %5001, %5001
  %5003 = fsub fast float 0x4002A9FBE0000000, %4986
  %5004 = fadd fast float %4986, 0x3FD54FDF00000000
  %5005 = bitcast float %5004 to i32
  %5006 = sub nsw i32 2129859010, %5005
  %5007 = bitcast i32 %5006 to float
  %5008 = fmul fast float %5007, %5003
  %5009 = fmul fast float %5008, %5008
  %5010 = fsub fast float 0x4002A9FBE0000000, %4995
  %5011 = fadd fast float %4995, 0x3FD54FDF00000000
  %5012 = bitcast float %5011 to i32
  %5013 = sub nsw i32 2129859010, %5012
  %5014 = bitcast i32 %5013 to float
  %5015 = fmul fast float %5014, %5010
  %5016 = fmul fast float %5015, %5015
  %5017 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5002)  ; FMax(a,b)
  %5018 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5009)  ; FMax(a,b)
  %5019 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5016)  ; FMax(a,b)
  %5020 = fsub fast float 1.000000e+00, %4906
  %5021 = fadd fast float %5020, %4921
  %5022 = call float @dx.op.unary.f32(i32 7, float %5021)  ; Saturate(value)
  %5023 = fsub fast float 1.000000e+00, %4305
  %5024 = fmul fast float %4963, %5023
  %5025 = fmul fast float %4966, %4966
  %5026 = fmul fast float %5025, %5024
  %5027 = fmul fast float %5026, %4968
  %5028 = fmul fast float %5023, 0xBFE99999A0000000
  %5029 = fmul fast float %5028, %4908
  %5030 = fmul fast float %5029, %4925
  %5031 = fadd fast float %5030, 1.000000e+00
  %5032 = fadd fast float %4899, -1.000000e+00
  %5033 = fmul fast float %5031, %5032
  %5034 = fadd fast float %5033, 1.000000e+00
  %5035 = fsub fast float %5017, %4896
  %5036 = fsub fast float %5018, %4897
  %5037 = fsub fast float %5019, %4898
  %5038 = fmul fast float %5027, %5035
  %5039 = fmul fast float %5027, %5036
  %5040 = fmul fast float %5027, %5037
  %5041 = fadd fast float %5038, %4896
  %5042 = fadd fast float %5039, %4897
  %5043 = fadd fast float %5040, %4898
  %5044 = fsub fast float %111, %4890
  %5045 = fsub fast float %112, %4891
  %5046 = fsub fast float %113, %4892
  %5047 = fmul fast float %5027, %5044
  %5048 = fmul fast float %5027, %5045
  %5049 = fmul fast float %5027, %5046
  %5050 = fadd fast float %5047, %4890
  %5051 = fadd fast float %5048, %4891
  %5052 = fadd fast float %5049, %4892
  %5053 = fmul fast float %5027, %5022
  %5054 = call float @dx.op.unary.f32(i32 7, float %5034)  ; Saturate(value)
  %5055 = fsub fast float 1.000000e+00, %5054
  %5056 = fmul fast float %5053, %5055
  %5057 = fadd fast float %5056, %5054
  %5058 = fsub fast float 1.000000e+00, %4900
  %5059 = fmul fast float %5027, %5058
  %5060 = fadd fast float %5059, %4900
  %5061 = call float @dx.op.dot3.f32(i32 55, float %5050, float %5051, float %5052, float %5050, float %5051, float %5052)  ; Dot3(ax,ay,az,bx,by,bz)
  %5062 = call float @dx.op.unary.f32(i32 25, float %5061)  ; Rsqrt(value)
  %5063 = fmul fast float %5050, %5062
  %5064 = fmul fast float %5051, %5062
  %5065 = fmul fast float %5052, %5062
  br label %5066

; <label>:5066                                    ; preds = %4905, %4889
  %5067 = phi float [ %5063, %4905 ], [ %4890, %4889 ]
  %5068 = phi float [ %5064, %4905 ], [ %4891, %4889 ]
  %5069 = phi float [ %5065, %4905 ], [ %4892, %4889 ]
  %5070 = phi float [ %4950, %4905 ], [ %4893, %4889 ]
  %5071 = phi float [ %4951, %4905 ], [ %4894, %4889 ]
  %5072 = phi float [ %4952, %4905 ], [ %4895, %4889 ]
  %5073 = phi float [ %5041, %4905 ], [ %4896, %4889 ]
  %5074 = phi float [ %5042, %4905 ], [ %4897, %4889 ]
  %5075 = phi float [ %5043, %4905 ], [ %4898, %4889 ]
  %5076 = phi float [ %5057, %4905 ], [ %4899, %4889 ]
  %5077 = phi float [ %5060, %4905 ], [ %4900, %4889 ]
  %5078 = fsub fast float -0.000000e+00, %193
  %5079 = select i1 %282, float 0.000000e+00, float %5075
  %5080 = call float @dx.op.dot3.f32(i32 55, float %5067, float %5068, float %5069, float %4902, float %4903, float %4904)  ; Dot3(ax,ay,az,bx,by,bz)
  %5081 = call float @dx.op.unary.f32(i32 7, float %5080)  ; Saturate(value)
  %5082 = call float @dx.op.dot3.f32(i32 55, float %211, float %212, float %213, float %5067, float %5068, float %5069)  ; Dot3(ax,ay,az,bx,by,bz)
  %5083 = fmul fast float %5082, 2.000000e+00
  %5084 = fmul fast float %5083, %5067
  %5085 = fmul fast float %5083, %5068
  %5086 = fmul fast float %5083, %5069
  %5087 = fsub fast float %211, %5084
  %5088 = fsub fast float %212, %5085
  %5089 = fsub fast float %213, %5086
  %5090 = call float @dx.op.binary.f32(i32 36, float %5077, float 1.000000e+00)  ; FMin(a,b)
  %5091 = fsub fast float 1.000000e+00, %5077
  %5092 = bitcast float %5091 to i32
  %5093 = sub nsw i32 2129859010, %5092
  %5094 = bitcast i32 %5093 to float
  %5095 = fsub fast float 1.000000e+00, %75
  %5096 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5097 = call float @dx.op.binary.f32(i32 35, float %5096, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5098 = fdiv fast float %5095, %5097
  %5099 = call float @dx.op.dot3.f32(i32 55, float %5067, float %5068, float %5069, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5100 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5101 = fmul fast float %5100, 5.000000e-01
  %5102 = fadd fast float %5101, 5.000000e-01
  %5103 = fmul fast float %5102, %75
  %5104 = call float @dx.op.dot3.f32(i32 55, float %5067, float %5068, float %5069, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5105 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  %5106 = fmul fast float %5105, %5098
  %5107 = fadd fast float %5103, %5106
  %5108 = fsub fast float 5.000000e-01, %5101
  %5109 = fmul fast float %5108, %5070
  %5110 = fmul fast float %5108, %5071
  %5111 = fmul fast float %5108, %5072
  %5112 = fadd fast float %5107, %5109
  %5113 = fadd fast float %5107, %5110
  %5114 = fadd fast float %5107, %5111
  %5115 = call float @dx.op.dot3.f32(i32 55, float %5087, float %5088, float %5089, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5116 = call float @dx.op.unary.f32(i32 7, float %5115)  ; Saturate(value)
  %5117 = fmul fast float %5116, 5.000000e-01
  %5118 = fadd fast float %5117, 5.000000e-01
  %5119 = fmul fast float %5118, %75
  %5120 = call float @dx.op.dot3.f32(i32 55, float %5087, float %5088, float %5089, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5121 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5122 = fmul fast float %5121, %5098
  %5123 = fadd fast float %5119, %5122
  %5124 = fsub fast float 5.000000e-01, %5117
  %5125 = fmul fast float %5124, %5070
  %5126 = fmul fast float %5124, %5071
  %5127 = fmul fast float %5124, %5072
  %5128 = fadd fast float %5123, %5125
  %5129 = fadd fast float %5123, %5126
  %5130 = fadd fast float %5123, %5127
  %5131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.f32 %5131, 0
  %5133 = call float @dx.op.binary.f32(i32 36, float %5070, float %5132)  ; FMin(a,b)
  %5134 = fsub fast float 1.000000e+00, %5090
  %5135 = fmul fast float %5133, %5134
  %5136 = fsub fast float 1.000000e+00, %5135
  %5137 = bitcast float %5136 to i32
  %5138 = sub nsw i32 2129859010, %5137
  %5139 = bitcast i32 %5138 to float
  %5140 = call float @dx.op.binary.f32(i32 36, float %5071, float %5132)  ; FMin(a,b)
  %5141 = fmul fast float %5140, %5134
  %5142 = fsub fast float 1.000000e+00, %5141
  %5143 = bitcast float %5142 to i32
  %5144 = sub nsw i32 2129859010, %5143
  %5145 = bitcast i32 %5144 to float
  %5146 = call float @dx.op.binary.f32(i32 36, float %5072, float %5132)  ; FMin(a,b)
  %5147 = fmul fast float %5146, %5134
  %5148 = fsub fast float 1.000000e+00, %5147
  %5149 = bitcast float %5148 to i32
  %5150 = sub nsw i32 2129859010, %5149
  %5151 = bitcast i32 %5150 to float
  %5152 = fmul fast float %5090, %76
  %5153 = fmul fast float %5152, %5112
  %5154 = fmul fast float %5153, %5139
  %5155 = fmul fast float %5090, %77
  %5156 = fmul fast float %5155, %5113
  %5157 = fmul fast float %5156, %5145
  %5158 = fmul fast float %5090, %78
  %5159 = fmul fast float %5158, %5114
  %5160 = fmul fast float %5159, %5151
  %5161 = call float @dx.op.binary.f32(i32 36, float %5073, float %5132)  ; FMin(a,b)
  %5162 = fmul fast float %5161, %5134
  %5163 = fsub fast float 1.000000e+00, %5162
  %5164 = bitcast float %5163 to i32
  %5165 = sub nsw i32 2129859010, %5164
  %5166 = bitcast i32 %5165 to float
  %5167 = call float @dx.op.binary.f32(i32 36, float %5074, float %5132)  ; FMin(a,b)
  %5168 = fmul fast float %5167, %5134
  %5169 = fsub fast float 1.000000e+00, %5168
  %5170 = bitcast float %5169 to i32
  %5171 = sub nsw i32 2129859010, %5170
  %5172 = bitcast i32 %5171 to float
  %5173 = call float @dx.op.binary.f32(i32 36, float %5079, float %5132)  ; FMin(a,b)
  %5174 = fmul fast float %5173, %5134
  %5175 = fsub fast float 1.000000e+00, %5174
  %5176 = bitcast float %5175 to i32
  %5177 = sub nsw i32 2129859010, %5176
  %5178 = bitcast i32 %5177 to float
  %5179 = fmul fast float %5152, %5128
  %5180 = fmul fast float %5179, %5166
  %5181 = fmul fast float %5155, %5129
  %5182 = fmul fast float %5181, %5172
  %5183 = fmul fast float %5158, %5130
  %5184 = fmul fast float %5183, %5178
  %5185 = call float @dx.op.dot3.f32(i32 55, float %5154, float %5157, float %5160, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5186 = select i1 %282, float 0.000000e+00, float %5154
  %5187 = select i1 %282, float %5185, float %5157
  %5188 = select i1 %282, float 0.000000e+00, float %5160
  %5189 = call float @dx.op.dot3.f32(i32 55, float %5180, float %5182, float %5184, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5190 = select i1 %282, float 0.000000e+00, float %5180
  %5191 = select i1 %282, float %5189, float %5182
  %5192 = select i1 %282, float 0.000000e+00, float %5184
  %5193 = fmul fast float %5081, 9.843750e-01
  %5194 = fmul fast float %5076, 9.843750e-01
  %5195 = fadd fast float %5193, 7.812500e-03
  %5196 = fadd fast float %5194, 7.812500e-03
  %5197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %5195, float %5196, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5198 = extractvalue %dx.types.ResRet.f32 %5197, 2
  %5199 = extractvalue %dx.types.ResRet.f32 %5197, 3
  %5200 = fmul fast float %5198, %5073
  %5201 = fmul fast float %5198, %5074
  %5202 = fmul fast float %5198, %5079
  %5203 = fadd fast float %5200, %5199
  %5204 = fadd fast float %5201, %5199
  %5205 = fadd fast float %5202, %5199
  %5206 = fcmp fast ogt float %3861, 0.000000e+00
  br i1 %5206, label %5207, label %5233

; <label>:5207                                    ; preds = %5066
  %5208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3861, float %5081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5209 = extractvalue %dx.types.ResRet.f32 %5208, 0
  %5210 = extractvalue %dx.types.ResRet.f32 %5208, 1
  %5211 = extractvalue %dx.types.ResRet.f32 %5208, 2
  %5212 = fadd fast float %5209, -5.000000e-01
  %5213 = fadd fast float %5210, -5.000000e-01
  %5214 = fadd fast float %5211, -5.000000e-01
  %5215 = fsub fast float 1.000000e+00, %5073
  %5216 = fsub fast float 1.000000e+00, %5074
  %5217 = fsub fast float 1.000000e+00, %5079
  %5218 = fmul fast float %5073, 4.000000e+00
  %5219 = fmul fast float %5218, %5215
  %5220 = fmul fast float %5219, %5212
  %5221 = fmul fast float %5074, 4.000000e+00
  %5222 = fmul fast float %5221, %5216
  %5223 = fmul fast float %5222, %5213
  %5224 = fmul fast float %5079, 4.000000e+00
  %5225 = fmul fast float %5224, %5217
  %5226 = fmul fast float %5225, %5214
  %5227 = fadd fast float %5220, %5203
  %5228 = fadd fast float %5223, %5204
  %5229 = fadd fast float %5226, %5205
  %5230 = call float @dx.op.unary.f32(i32 7, float %5227)  ; Saturate(value)
  %5231 = call float @dx.op.unary.f32(i32 7, float %5228)  ; Saturate(value)
  %5232 = call float @dx.op.unary.f32(i32 7, float %5229)  ; Saturate(value)
  br label %5233

; <label>:5233                                    ; preds = %5207, %5066
  %5234 = phi float [ %5230, %5207 ], [ %5203, %5066 ]
  %5235 = phi float [ %5231, %5207 ], [ %5204, %5066 ]
  %5236 = phi float [ %5232, %5207 ], [ %5205, %5066 ]
  %5237 = call float @dx.op.binary.f32(i32 35, float %5235, float %5236)  ; FMax(a,b)
  %5238 = call float @dx.op.binary.f32(i32 35, float %5234, float %5237)  ; FMax(a,b)
  %5239 = fsub fast float 1.000000e+00, %5238
  %5240 = fmul fast float %5239, %5186
  %5241 = fmul fast float %5239, %5187
  %5242 = fmul fast float %5239, %5188
  %5243 = call float @dx.op.dot3.f32(i32 55, float %5070, float %5071, float %5072, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5244 = fcmp fast ogt float %5243, 0x3E7FF19E20000000
  %5245 = fdiv fast float 1.000000e+00, %5243
  %5246 = select i1 %5244, float %5245, float 0.000000e+00
  %5247 = fmul fast float %5246, %5070
  %5248 = fmul fast float %5246, %5071
  %5249 = fmul fast float %5246, %5072
  %5250 = fadd fast float %5247, -1.000000e+00
  %5251 = fadd fast float %5248, -1.000000e+00
  %5252 = fadd fast float %5249, -1.000000e+00
  %5253 = fmul fast float %5250, 5.000000e-01
  %5254 = fmul fast float %5251, 5.000000e-01
  %5255 = fmul fast float %5252, 5.000000e-01
  %5256 = fadd fast float %5253, 1.000000e+00
  %5257 = fadd fast float %5254, 1.000000e+00
  %5258 = fadd fast float %5255, 1.000000e+00
  %5259 = fmul fast float %5234, %5190
  %5260 = fmul fast float %5235, %5191
  %5261 = fmul fast float %5236, %5192
  %5262 = fsub fast float 1.000000e+00, %5081
  %5263 = bitcast float %5262 to i32
  %5264 = sitofp i32 %5263 to float
  %5265 = fmul fast float %5264, 5.000000e+00
  %5266 = fadd fast float %5265, 0xC1EFBF8940000000
  %5267 = fptosi float %5266 to i32
  %5268 = bitcast i32 %5267 to float
  %5269 = fmul fast float %5268, %3862
  %5270 = fmul fast float %5186, %5269
  %5271 = fmul fast float %5270, %5239
  %5272 = fmul fast float %5271, %5256
  %5273 = fmul fast float %5187, %5269
  %5274 = fmul fast float %5273, %5239
  %5275 = fmul fast float %5274, %5257
  %5276 = fmul fast float %5188, %5269
  %5277 = fmul fast float %5276, %5239
  %5278 = fmul fast float %5277, %5258
  %5279 = fmul fast float %5240, %3895
  %5280 = fmul fast float %5241, %3895
  %5281 = fmul fast float %5242, %3895
  %5282 = fadd fast float %5259, %3854
  %5283 = fadd fast float %5282, %5272
  %5284 = fmul fast float %5283, %3895
  %5285 = fadd fast float %5260, %3855
  %5286 = fadd fast float %5285, %5275
  %5287 = fmul fast float %5286, %3895
  %5288 = fadd fast float %5261, %3856
  %5289 = fadd fast float %5288, %5278
  %5290 = fmul fast float %5289, %3895
  %5291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5292 = extractvalue %dx.types.CBufRet.f32 %5291, 3
  %5293 = fcmp fast oeq float %5292, 0.000000e+00
  br i1 %5293, label %6378, label %5294

; <label>:5294                                    ; preds = %5233
  %5295 = extractvalue %dx.types.CBufRet.f32 %5291, 0
  %5296 = extractvalue %dx.types.CBufRet.f32 %5291, 1
  %5297 = extractvalue %dx.types.CBufRet.f32 %5291, 2
  %5298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5299 = extractvalue %dx.types.CBufRet.f32 %5298, 0
  %5300 = extractvalue %dx.types.CBufRet.f32 %5298, 1
  %5301 = extractvalue %dx.types.CBufRet.f32 %5298, 2
  %5302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5303 = extractvalue %dx.types.CBufRet.f32 %5302, 0
  %5304 = extractvalue %dx.types.CBufRet.f32 %5302, 1
  %5305 = call float @dx.op.dot3.f32(i32 55, float %5299, float %5300, float %5301, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5306 = select i1 %282, float %5303, float %5299
  %5307 = select i1 %282, float %5305, float %5300
  %5308 = select i1 %282, float %5304, float %5301
  %5309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5309, 2
  %5311 = fmul fast float %5310, %111
  %5312 = fmul fast float %5310, %112
  %5313 = fmul fast float %5310, %113
  %5314 = fadd fast float %5311, %191
  %5315 = fadd fast float %5312, %192
  %5316 = fadd fast float %5313, %193
  %5317 = fcmp fast olt float %5292, 0.000000e+00
  br i1 %5317, label %5957, label %5318

; <label>:5318                                    ; preds = %5294
  %5319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5320 = extractvalue %dx.types.CBufRet.f32 %5319, 0
  %5321 = extractvalue %dx.types.CBufRet.f32 %5319, 1
  %5322 = extractvalue %dx.types.CBufRet.f32 %5319, 2
  %5323 = extractvalue %dx.types.CBufRet.f32 %5319, 3
  %5324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5325 = extractvalue %dx.types.CBufRet.f32 %5324, 0
  %5326 = extractvalue %dx.types.CBufRet.f32 %5324, 1
  %5327 = extractvalue %dx.types.CBufRet.f32 %5324, 2
  %5328 = extractvalue %dx.types.CBufRet.f32 %5324, 3
  %5329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5330 = extractvalue %dx.types.CBufRet.f32 %5329, 0
  %5331 = extractvalue %dx.types.CBufRet.f32 %5329, 1
  %5332 = extractvalue %dx.types.CBufRet.f32 %5329, 2
  %5333 = extractvalue %dx.types.CBufRet.f32 %5329, 3
  %5334 = fmul fast float %5320, %5314
  %5335 = call float @dx.op.tertiary.f32(i32 46, float %5315, float %5321, float %5334)  ; FMad(a,b,c)
  %5336 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5322, float %5335)  ; FMad(a,b,c)
  %5337 = fadd fast float %5336, %5323
  %5338 = fmul fast float %5325, %5314
  %5339 = call float @dx.op.tertiary.f32(i32 46, float %5315, float %5326, float %5338)  ; FMad(a,b,c)
  %5340 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5327, float %5339)  ; FMad(a,b,c)
  %5341 = fadd fast float %5340, %5328
  %5342 = fmul fast float %5330, %5314
  %5343 = call float @dx.op.tertiary.f32(i32 46, float %5315, float %5331, float %5342)  ; FMad(a,b,c)
  %5344 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5332, float %5343)  ; FMad(a,b,c)
  %5345 = fadd fast float %5344, %5333
  %5346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5347 = extractvalue %dx.types.CBufRet.f32 %5346, 0
  %5348 = fcmp fast une float %5347, 0.000000e+00
  %5349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5350 = extractvalue %dx.types.CBufRet.f32 %5349, 0
  %5351 = extractvalue %dx.types.CBufRet.f32 %5349, 1
  %5352 = extractvalue %dx.types.CBufRet.f32 %5349, 3
  %5353 = fmul fast float %5352, %5337
  %5354 = fmul fast float %5352, %5341
  %5355 = fadd fast float %5353, %5350
  %5356 = fadd fast float %5354, %5351
  %5357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5358 = extractvalue %dx.types.CBufRet.f32 %5357, 0
  %5359 = extractvalue %dx.types.CBufRet.f32 %5357, 1
  %5360 = extractvalue %dx.types.CBufRet.f32 %5357, 3
  %5361 = fmul fast float %5360, %5337
  %5362 = fmul fast float %5360, %5341
  %5363 = fadd fast float %5361, %5358
  %5364 = fadd fast float %5362, %5359
  %5365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5366 = extractvalue %dx.types.CBufRet.f32 %5365, 1
  %5367 = fsub fast float %5366, %5345
  %5368 = extractvalue %dx.types.CBufRet.f32 %5365, 2
  %5369 = fmul fast float %5367, %5368
  %5370 = fsub fast float 1.000000e+00, %5369
  %5371 = call float @dx.op.unary.f32(i32 7, float %5370)  ; Saturate(value)
  br i1 %5348, label %5432, label %5372

; <label>:5372                                    ; preds = %5318
  %5373 = extractvalue %dx.types.CBufRet.f32 %5357, 2
  %5374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.f32 %5374, 2
  %5376 = fadd fast float %5375, %5373
  %5377 = fcmp fast ogt float %5376, 0.000000e+00
  br i1 %5377, label %5378, label %5402

; <label>:5378                                    ; preds = %5372
  %5379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.f32 %5379, 0
  %5381 = extractvalue %dx.types.CBufRet.f32 %5379, 1
  %5382 = fsub fast float %5363, %5380
  %5383 = fsub fast float %5364, %5381
  %5384 = fcmp fast olt float %5382, 0.000000e+00
  %5385 = fcmp fast olt float %5383, 0.000000e+00
  %5386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5387 = extractvalue %dx.types.CBufRet.f32 %5386, 0
  %5388 = extractvalue %dx.types.CBufRet.f32 %5386, 1
  %5389 = extractvalue %dx.types.CBufRet.f32 %5386, 2
  %5390 = extractvalue %dx.types.CBufRet.f32 %5386, 3
  %5391 = select i1 %5384, float %5387, float %5389
  %5392 = select i1 %5385, float %5388, float %5390
  %5393 = fmul fast float %5391, %5382
  %5394 = fmul fast float %5392, %5383
  %5395 = call float @dx.op.unary.f32(i32 6, float %5393)  ; FAbs(value)
  %5396 = call float @dx.op.unary.f32(i32 6, float %5394)  ; FAbs(value)
  %5397 = extractvalue %dx.types.CBufRet.f32 %5309, 0
  %5398 = call float @dx.op.binary.f32(i32 35, float %5395, float %5396)  ; FMax(a,b)
  %5399 = fsub fast float %5397, %5398
  %5400 = call float @dx.op.unary.f32(i32 7, float %5399)  ; Saturate(value)
  %5401 = fmul fast float %5400, %5371
  br label %5402

; <label>:5402                                    ; preds = %5378, %5372
  %5403 = phi float [ %5401, %5378 ], [ 0.000000e+00, %5372 ]
  %5404 = extractvalue %dx.types.CBufRet.f32 %5349, 2
  %5405 = extractvalue %dx.types.CBufRet.f32 %5374, 1
  %5406 = fadd fast float %5405, %5404
  %5407 = fcmp fast ogt float %5406, 0.000000e+00
  br i1 %5407, label %5408, label %5432

; <label>:5408                                    ; preds = %5402
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 0
  %5411 = extractvalue %dx.types.CBufRet.f32 %5409, 1
  %5412 = fsub fast float %5355, %5410
  %5413 = fsub fast float %5356, %5411
  %5414 = fcmp fast olt float %5412, 0.000000e+00
  %5415 = fcmp fast olt float %5413, 0.000000e+00
  %5416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5417 = extractvalue %dx.types.CBufRet.f32 %5416, 0
  %5418 = extractvalue %dx.types.CBufRet.f32 %5416, 1
  %5419 = extractvalue %dx.types.CBufRet.f32 %5416, 2
  %5420 = extractvalue %dx.types.CBufRet.f32 %5416, 3
  %5421 = select i1 %5414, float %5417, float %5419
  %5422 = select i1 %5415, float %5418, float %5420
  %5423 = fmul fast float %5421, %5412
  %5424 = fmul fast float %5422, %5413
  %5425 = call float @dx.op.unary.f32(i32 6, float %5423)  ; FAbs(value)
  %5426 = call float @dx.op.unary.f32(i32 6, float %5424)  ; FAbs(value)
  %5427 = extractvalue %dx.types.CBufRet.f32 %5309, 0
  %5428 = call float @dx.op.binary.f32(i32 35, float %5425, float %5426)  ; FMax(a,b)
  %5429 = fsub fast float %5427, %5428
  %5430 = call float @dx.op.unary.f32(i32 7, float %5429)  ; Saturate(value)
  %5431 = fmul fast float %5430, %5371
  br label %5432

; <label>:5432                                    ; preds = %5408, %5402, %5318
  %5433 = phi float [ 0.000000e+00, %5318 ], [ %5431, %5408 ], [ 0.000000e+00, %5402 ]
  %5434 = phi float [ 0.000000e+00, %5318 ], [ %5403, %5408 ], [ %5403, %5402 ]
  %5435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5436 = extractvalue %dx.types.CBufRet.f32 %5435, 1
  %5437 = call float @dx.op.unary.f32(i32 7, float %5436)  ; Saturate(value)
  %5438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.f32 %5438, 0
  %5440 = extractvalue %dx.types.CBufRet.f32 %5438, 1
  %5441 = fsub fast float %5337, %5439
  %5442 = fsub fast float %5341, %5440
  %5443 = fcmp fast olt float %5441, 0.000000e+00
  %5444 = fcmp fast olt float %5442, 0.000000e+00
  %5445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.CBufRet.f32 %5445, 1
  %5448 = extractvalue %dx.types.CBufRet.f32 %5445, 2
  %5449 = extractvalue %dx.types.CBufRet.f32 %5445, 3
  %5450 = select i1 %5443, float %5446, float %5448
  %5451 = select i1 %5444, float %5447, float %5449
  %5452 = fmul fast float %5450, %5441
  %5453 = fmul fast float %5451, %5442
  %5454 = call float @dx.op.unary.f32(i32 6, float %5452)  ; FAbs(value)
  %5455 = call float @dx.op.unary.f32(i32 6, float %5453)  ; FAbs(value)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5309, 0
  %5457 = call float @dx.op.binary.f32(i32 35, float %5454, float %5455)  ; FMax(a,b)
  %5458 = fsub fast float %5456, %5457
  %5459 = call float @dx.op.unary.f32(i32 7, float %5458)  ; Saturate(value)
  %5460 = call float @dx.op.binary.f32(i32 36, float %5459, float %5437)  ; FMin(a,b)
  %5461 = fmul fast float %5460, %5371
  %5462 = fsub fast float %5433, %5461
  %5463 = fsub fast float %5434, %5433
  %5464 = fsub fast float %5463, %5461
  %5465 = call float @dx.op.binary.f32(i32 35, float %5433, float %5434)  ; FMax(a,b)
  %5466 = call float @dx.op.binary.f32(i32 35, float %5461, float %5465)  ; FMax(a,b)
  %5467 = fcmp fast olt float %5466, 1.000000e+00
  br i1 %5467, label %5468, label %5866, !dx.controlflow.hints !94

; <label>:5468                                    ; preds = %5432
  %5469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5470 = extractvalue %dx.types.CBufRet.f32 %5469, 0
  %5471 = fcmp fast une float %5470, 0.000000e+00
  br i1 %5471, label %5472, label %5866, !dx.controlflow.hints !95

; <label>:5472                                    ; preds = %5468
  %5473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5474 = extractvalue %dx.types.CBufRet.f32 %5473, 0
  %5475 = extractvalue %dx.types.CBufRet.f32 %5473, 1
  %5476 = extractvalue %dx.types.CBufRet.f32 %5473, 2
  %5477 = extractvalue %dx.types.CBufRet.f32 %5473, 3
  %5478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5479 = extractvalue %dx.types.CBufRet.f32 %5478, 0
  %5480 = extractvalue %dx.types.CBufRet.f32 %5478, 1
  %5481 = extractvalue %dx.types.CBufRet.f32 %5478, 2
  %5482 = extractvalue %dx.types.CBufRet.f32 %5478, 3
  %5483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5484 = extractvalue %dx.types.CBufRet.f32 %5483, 0
  %5485 = extractvalue %dx.types.CBufRet.f32 %5483, 1
  %5486 = extractvalue %dx.types.CBufRet.f32 %5483, 2
  %5487 = extractvalue %dx.types.CBufRet.f32 %5483, 3
  %5488 = fmul fast float %5474, %5314
  %5489 = call float @dx.op.tertiary.f32(i32 46, float %5315, float %5475, float %5488)  ; FMad(a,b,c)
  %5490 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5476, float %5489)  ; FMad(a,b,c)
  %5491 = fadd fast float %5490, %5477
  %5492 = fmul fast float %5479, %5314
  %5493 = call float @dx.op.tertiary.f32(i32 46, float %5315, float %5480, float %5492)  ; FMad(a,b,c)
  %5494 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5481, float %5493)  ; FMad(a,b,c)
  %5495 = fadd fast float %5494, %5482
  %5496 = fmul fast float %5484, %5314
  %5497 = call float @dx.op.tertiary.f32(i32 46, float %5315, float %5485, float %5496)  ; FMad(a,b,c)
  %5498 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5486, float %5497)  ; FMad(a,b,c)
  %5499 = fadd fast float %5498, %5487
  %5500 = fcmp fast oge float %5491, 1.000000e+00
  %5501 = fcmp fast oge float %5495, 1.000000e+00
  %5502 = or i1 %5500, %5501
  %5503 = fcmp fast olt float %5491, 0.000000e+00
  %5504 = fcmp fast olt float %5495, 0.000000e+00
  %5505 = or i1 %5503, %5504
  %5506 = or i1 %5502, %5505
  br i1 %5506, label %5866, label %5507, !dx.controlflow.hints !96

; <label>:5507                                    ; preds = %5472
  %5508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5509 = extractvalue %dx.types.CBufRet.f32 %5508, 0
  %5510 = extractvalue %dx.types.CBufRet.f32 %5508, 1
  %5511 = extractvalue %dx.types.CBufRet.f32 %5508, 2
  %5512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5513 = extractvalue %dx.types.CBufRet.i32 %5512, 2
  %5514 = uitofp i32 %5513 to float
  %5515 = extractvalue %dx.types.CBufRet.i32 %5512, 3
  %5516 = uitofp i32 %5515 to float
  %5517 = extractvalue %dx.types.CBufRet.f32 %5508, 3
  %5518 = fmul fast float %5517, 2.000000e+00
  %5519 = fsub fast float %5491, %5509
  %5520 = fsub fast float %5495, %5510
  %5521 = fmul fast float %5518, %5519
  %5522 = fmul fast float %5518, %5520
  %5523 = fdiv fast float 1.000000e+00, %5297
  %5524 = fmul fast float %5522, %5523
  %5525 = call float @dx.op.unary.f32(i32 6, float %5524)  ; FAbs(value)
  %5526 = fmul fast float %5511, %5316
  %5527 = fmul fast float %5526, %5518
  %5528 = call float @dx.op.unary.f32(i32 6, float %5527)  ; FAbs(value)
  %5529 = call float @dx.op.unary.f32(i32 6, float %5521)  ; FAbs(value)
  %5530 = call float @dx.op.binary.f32(i32 35, float %5528, float %5525)  ; FMax(a,b)
  %5531 = call float @dx.op.binary.f32(i32 35, float %5529, float %5530)  ; FMax(a,b)
  %5532 = fmul fast float %5531, 2.000000e+00
  %5533 = call float @dx.op.unary.f32(i32 23, float %5532)  ; Log(value)
  %5534 = call float @dx.op.binary.f32(i32 35, float %5533, float %5514)  ; FMax(a,b)
  %5535 = call float @dx.op.unary.f32(i32 22, float %5534)  ; Frc(value)
  %5536 = fadd fast float %5535, 0xBFEA666660000000
  %5537 = fmul fast float %5536, 8.000000e+00
  %5538 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5539 = call float @dx.op.unary.f32(i32 27, float %5534)  ; Round_ni(value)
  %5540 = fadd fast float %5539, %5538
  %5541 = call float @dx.op.binary.f32(i32 36, float %5540, float %5516)  ; FMin(a,b)
  %5542 = call float @dx.op.unary.f32(i32 27, float %5541)  ; Round_ni(value)
  %5543 = fsub fast float -0.000000e+00, %5542
  %5544 = call float @dx.op.unary.f32(i32 21, float %5543)  ; Exp(value)
  %5545 = fmul fast float %5544, %5518
  %5546 = fmul fast float %5545, %5491
  %5547 = fmul fast float %5545, %5495
  %5548 = fmul fast float %5546, 2.500000e-01
  %5549 = fmul fast float %5547, 2.500000e-01
  %5550 = fadd fast float %5548, 5.000000e-01
  %5551 = fadd fast float %5549, 5.000000e-01
  %5552 = fsub fast float %5516, %5514
  %5553 = fptoui float %5552 to i32
  %5554 = add i32 %5553, 320
  %5555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5554)  ; CBufferLoadLegacy(handle,regIndex)
  %5556 = extractvalue %dx.types.CBufRet.f32 %5555, 0
  %5557 = extractvalue %dx.types.CBufRet.f32 %5555, 1
  %5558 = fcmp fast une float %5541, %5516
  %5559 = fsub fast float %5491, %5556
  %5560 = fsub fast float %5495, %5557
  %5561 = call float @dx.op.unary.f32(i32 6, float %5559)  ; FAbs(value)
  %5562 = call float @dx.op.unary.f32(i32 6, float %5560)  ; FAbs(value)
  %5563 = fmul fast float %5561, %5545
  %5564 = fmul fast float %5562, %5545
  %5565 = fcmp fast olt float %5563, 1.000000e+00
  %5566 = fcmp fast olt float %5564, 1.000000e+00
  %5567 = and i1 %5565, %5566
  %5568 = or i1 %5558, %5567
  br i1 %5568, label %5569, label %5866, !dx.controlflow.hints !97

; <label>:5569                                    ; preds = %5507
  %5570 = fmul fast float %5547, 5.000000e-01
  %5571 = fmul fast float %5546, 5.000000e-01
  %5572 = fadd fast float %5570, 5.000000e-01
  %5573 = fadd fast float %5571, 5.000000e-01
  %5574 = sitofp i32 %5513 to float
  %5575 = fsub fast float %5541, %5574
  %5576 = call float @dx.op.unary.f32(i32 27, float %5575)  ; Round_ni(value)
  %5577 = call float @dx.op.unary.f32(i32 22, float %5541)  ; Frc(value)
  %5578 = call float @dx.op.unary.f32(i32 22, float %5573)  ; Frc(value)
  %5579 = call float @dx.op.unary.f32(i32 22, float %5572)  ; Frc(value)
  %5580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5578, float %5579, float %5576, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5581 = extractvalue %dx.types.ResRet.f32 %5580, 0
  %5582 = extractvalue %dx.types.ResRet.f32 %5580, 1
  %5583 = extractvalue %dx.types.ResRet.f32 %5580, 2
  %5584 = extractvalue %dx.types.ResRet.f32 %5580, 3
  %5585 = fcmp fast ogt float %5577, 0.000000e+00
  br i1 %5585, label %5586, label %5607, !dx.controlflow.hints !98

; <label>:5586                                    ; preds = %5569
  %5587 = fadd fast float %5576, 1.000000e+00
  %5588 = call float @dx.op.unary.f32(i32 22, float %5550)  ; Frc(value)
  %5589 = call float @dx.op.unary.f32(i32 22, float %5551)  ; Frc(value)
  %5590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5588, float %5589, float %5587, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5591 = extractvalue %dx.types.ResRet.f32 %5590, 0
  %5592 = extractvalue %dx.types.ResRet.f32 %5590, 1
  %5593 = extractvalue %dx.types.ResRet.f32 %5590, 2
  %5594 = extractvalue %dx.types.ResRet.f32 %5590, 3
  %5595 = fsub fast float %5591, %5581
  %5596 = fsub fast float %5592, %5582
  %5597 = fsub fast float %5593, %5583
  %5598 = fsub fast float %5594, %5584
  %5599 = fmul fast float %5595, %5577
  %5600 = fmul fast float %5596, %5577
  %5601 = fmul fast float %5597, %5577
  %5602 = fmul fast float %5598, %5577
  %5603 = fadd fast float %5599, %5581
  %5604 = fadd fast float %5600, %5582
  %5605 = fadd fast float %5601, %5583
  %5606 = fadd fast float %5602, %5584
  br label %5607

; <label>:5607                                    ; preds = %5586, %5569
  %5608 = phi float [ %5603, %5586 ], [ %5581, %5569 ]
  %5609 = phi float [ %5604, %5586 ], [ %5582, %5569 ]
  %5610 = phi float [ %5605, %5586 ], [ %5583, %5569 ]
  %5611 = phi float [ %5606, %5586 ], [ %5584, %5569 ]
  %5612 = fadd fast float %5608, -5.000000e-01
  %5613 = fadd fast float %5610, -5.000000e-01
  %5614 = fmul fast float %5612, 0xBFD5555560000000
  %5615 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5613, float %5614)  ; FMad(a,b,c)
  %5616 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5609, float 0.000000e+00)  ; FMad(a,b,c)
  %5617 = fadd fast float %5616, %5611
  %5618 = fmul fast float %5612, -7.500000e-01
  %5619 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5613, float %5618)  ; FMad(a,b,c)
  %5620 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5609, float 0.000000e+00)  ; FMad(a,b,c)
  %5621 = fadd fast float %5620, %5611
  %5622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5623 = extractvalue %dx.types.CBufRet.f32 %5622, 0
  %5624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5625 = extractvalue %dx.types.CBufRet.f32 %5624, 0
  %5626 = extractvalue %dx.types.CBufRet.f32 %5624, 1
  %5627 = extractvalue %dx.types.CBufRet.f32 %5624, 2
  %5628 = extractvalue %dx.types.CBufRet.f32 %5624, 3
  %5629 = fsub fast float %5625, %5615
  %5630 = fsub fast float %5626, %5617
  %5631 = fsub fast float %5627, %5619
  %5632 = fsub fast float %5628, %5621
  %5633 = fmul fast float %5629, %5623
  %5634 = fmul fast float %5630, %5623
  %5635 = fmul fast float %5631, %5623
  %5636 = fmul fast float %5632, %5623
  %5637 = fadd fast float %5633, %5615
  %5638 = fadd fast float %5634, %5617
  %5639 = fadd fast float %5635, %5619
  %5640 = fadd fast float %5636, %5621
  %5641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5642 = extractvalue %dx.types.ResRet.i32 %5641, 0
  %5643 = and i32 %5642, 536870911
  %5644 = uitofp i32 %5643 to float
  %5645 = fmul fast float %5644, %5491
  %5646 = fmul fast float %5644, %5495
  %5647 = fptoui float %5645 to i32
  %5648 = fptoui float %5646 to i32
  %5649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5650 = extractvalue %dx.types.ResRet.i32 %5649, 0
  %5651 = and i32 %5650, 31
  %5652 = lshr i32 %5647, %5651
  %5653 = lshr i32 %5648, %5651
  %5654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5655 = extractvalue %dx.types.ResRet.i32 %5654, 0
  %5656 = and i32 %5655, 31
  %5657 = shl i32 1, %5656
  %5658 = call i32 @dx.op.binary.i32(i32 40, i32 %5657, i32 4)  ; UMin(a,b)
  %5659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5660 = extractvalue %dx.types.ResRet.i32 %5659, 0
  %5661 = extractvalue %dx.types.ResRet.i32 %5659, 1
  %5662 = icmp eq i32 %5658, 0
  br i1 %5662, label %5704, label %5663

; <label>:5663                                    ; preds = %5607
  br label %5664

; <label>:5664                                    ; preds = %5692, %5663
  %5665 = phi i32 [ %5695, %5692 ], [ 0, %5663 ]
  %5666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5667 = extractvalue %dx.types.ResRet.i32 %5666, 0
  %5668 = lshr i32 %5667, 16
  %5669 = and i32 %5668, 31
  %5670 = shl i32 %5653, %5669
  %5671 = add i32 %5670, %5652
  %5672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5673 = extractvalue %dx.types.ResRet.i32 %5672, 0
  %5674 = and i32 %5673, 31
  %5675 = shl i32 %5671, %5674
  %5676 = add i32 %5675, %5665
  %5677 = shl i32 %5676, 2
  %5678 = add i32 %5677, 32
  %5679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5678, i32 undef)  ; BufferLoad(srv,index,wot)
  %5680 = extractvalue %dx.types.ResRet.i32 %5679, 0
  %5681 = icmp slt i32 %5680, 0
  %5682 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5665
  %5683 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5665
  %5684 = bitcast float* %5682 to i32*
  %5685 = bitcast float* %5683 to i32*
  br i1 %5681, label %5686, label %5692

; <label>:5686                                    ; preds = %5664
  %5687 = and i32 %5680, 1073741823
  %5688 = add nuw nsw i32 %5687, 20
  %5689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5688, i32 undef)  ; BufferLoad(srv,index,wot)
  %5690 = extractvalue %dx.types.ResRet.i32 %5689, 0
  %5691 = extractvalue %dx.types.ResRet.i32 %5689, 1
  br label %5692

; <label>:5692                                    ; preds = %5686, %5664
  %5693 = phi i32 [ %5690, %5686 ], [ %5660, %5664 ]
  %5694 = phi i32 [ %5691, %5686 ], [ %5661, %5664 ]
  store i32 %5693, i32* %5684, align 4
  store i32 %5694, i32* %5685, align 4
  %5695 = add nuw i32 %5665, 1
  %5696 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5697 = extractvalue %dx.types.CBufRet.i32 %5696, 2
  %5698 = icmp eq i32 %5697, 0
  %5699 = icmp ugt i32 %5680, -1073741825
  %5700 = and i1 %5699, %5698
  %5701 = icmp ult i32 %5695, %5658
  %5702 = and i1 %5700, %5701
  br i1 %5702, label %5664, label %5703

; <label>:5703                                    ; preds = %5692
  br label %5704

; <label>:5704                                    ; preds = %5703, %5607
  %5705 = phi i32 [ 0, %5607 ], [ %5695, %5703 ]
  %5706 = extractvalue %dx.types.CBufRet.f32 %5469, 2
  %5707 = fptoui float %5706 to i32
  %5708 = icmp eq i32 %5707, 0
  br i1 %5708, label %5760, label %5709

; <label>:5709                                    ; preds = %5704
  br label %5710

; <label>:5710                                    ; preds = %5755, %5709
  %5711 = phi i32 [ %5756, %5755 ], [ %5705, %5709 ]
  %5712 = phi i32 [ %5757, %5755 ], [ 0, %5709 ]
  %5713 = lshr i32 %5712, 2
  %5714 = and i32 %5712, 3
  %5715 = add nuw nsw i32 %5713, 83
  %5716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5715)  ; CBufferLoadLegacy(handle,regIndex)
  %5717 = extractvalue %dx.types.CBufRet.i32 %5716, 0
  %5718 = extractvalue %dx.types.CBufRet.i32 %5716, 1
  %5719 = extractvalue %dx.types.CBufRet.i32 %5716, 2
  %5720 = extractvalue %dx.types.CBufRet.i32 %5716, 3
  %5721 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5717, i32* %5721, align 4
  %5722 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5718, i32* %5722, align 4
  %5723 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5719, i32* %5723, align 4
  %5724 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5720, i32* %5724, align 4
  %5725 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5714
  %5726 = load i32, i32* %5725, align 4, !tbaa !99, !noalias !103
  %5727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5728 = extractvalue %dx.types.ResRet.i32 %5727, 0
  %5729 = lshr i32 %5728, 16
  %5730 = and i32 %5729, 31
  %5731 = shl i32 %5653, %5730
  %5732 = add i32 %5731, %5652
  %5733 = shl i32 %5732, 2
  %5734 = add i32 %5733, %5726
  %5735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5734, i32 undef)  ; BufferLoad(srv,index,wot)
  %5736 = extractvalue %dx.types.ResRet.i32 %5735, 0
  %5737 = icmp eq i32 %5736, 0
  br i1 %5737, label %5755, label %5738

; <label>:5738                                    ; preds = %5710
  %5739 = icmp slt i32 %5736, 0
  %5740 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5711
  %5741 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5711
  %5742 = bitcast float* %5740 to i32*
  %5743 = bitcast float* %5741 to i32*
  br i1 %5739, label %5744, label %5751

; <label>:5744                                    ; preds = %5738
  %5745 = and i32 %5736, 1073741823
  %5746 = add i32 %5726, 20
  %5747 = add i32 %5746, %5745
  %5748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5747, i32 undef)  ; BufferLoad(srv,index,wot)
  %5749 = extractvalue %dx.types.ResRet.i32 %5748, 0
  %5750 = extractvalue %dx.types.ResRet.i32 %5748, 1
  br label %5751

; <label>:5751                                    ; preds = %5744, %5738
  %5752 = phi i32 [ %5749, %5744 ], [ %5660, %5738 ]
  %5753 = phi i32 [ %5750, %5744 ], [ %5661, %5738 ]
  store i32 %5752, i32* %5742, align 4
  store i32 %5753, i32* %5743, align 4
  %5754 = add i32 %5711, 1
  br label %5755

; <label>:5755                                    ; preds = %5751, %5710
  %5756 = phi i32 [ %5711, %5710 ], [ %5754, %5751 ]
  %5757 = add nuw i32 %5712, 1
  %5758 = icmp eq i32 %5757, %5707
  br i1 %5758, label %5759, label %5710

; <label>:5759                                    ; preds = %5755
  br label %5760

; <label>:5760                                    ; preds = %5759, %5704
  %5761 = phi i32 [ %5705, %5704 ], [ %5756, %5759 ]
  %5762 = icmp eq i32 %5761, 1
  %5763 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 0
  %5764 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  br i1 %5762, label %5765, label %5768

; <label>:5765                                    ; preds = %5760
  %5766 = load float, float* %5763, align 4
  %5767 = load float, float* %5764, align 4
  br label %5795

; <label>:5768                                    ; preds = %5760
  %5769 = load float, float* %5763, align 4
  %5770 = load float, float* %5764, align 4
  %5771 = fdiv fast float 1.000000e+00, %5770
  %5772 = fsub fast float %5769, %5771
  %5773 = icmp ugt i32 %5761, 1
  br i1 %5773, label %5774, label %5790

; <label>:5774                                    ; preds = %5768
  br label %5775

; <label>:5775                                    ; preds = %5775, %5774
  %5776 = phi float [ %5785, %5775 ], [ %5772, %5774 ]
  %5777 = phi float [ %5786, %5775 ], [ %5769, %5774 ]
  %5778 = phi i32 [ %5787, %5775 ], [ 1, %5774 ]
  %5779 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5778
  %5780 = load float, float* %5779, align 4
  %5781 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5778
  %5782 = load float, float* %5781, align 4
  %5783 = fdiv fast float 1.000000e+00, %5782
  %5784 = fsub fast float %5780, %5783
  %5785 = call float @dx.op.binary.f32(i32 36, float %5776, float %5784)  ; FMin(a,b)
  %5786 = call float @dx.op.binary.f32(i32 35, float %5777, float %5780)  ; FMax(a,b)
  %5787 = add nuw i32 %5778, 1
  %5788 = icmp eq i32 %5787, %5761
  br i1 %5788, label %5789, label %5775

; <label>:5789                                    ; preds = %5775
  br label %5790

; <label>:5790                                    ; preds = %5789, %5768
  %5791 = phi float [ %5772, %5768 ], [ %5785, %5789 ]
  %5792 = phi float [ %5769, %5768 ], [ %5786, %5789 ]
  %5793 = fsub fast float %5792, %5791
  %5794 = fdiv fast float 1.000000e+00, %5793
  br label %5795

; <label>:5795                                    ; preds = %5790, %5765
  %5796 = phi float [ %5766, %5765 ], [ %5792, %5790 ]
  %5797 = phi float [ %5767, %5765 ], [ %5794, %5790 ]
  %5798 = fadd fast float %5499, %5796
  %5799 = fmul fast float %5798, %5797
  %5800 = call float @dx.op.unary.f32(i32 7, float %5799)  ; Saturate(value)
  %5801 = fmul fast float %5800, 2.000000e+00
  %5802 = fsub fast float 1.000000e+00, %5801
  %5803 = fmul fast float %5637, %5637
  %5804 = fsub fast float %5638, %5803
  %5805 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5804)  ; FMax(a,b)
  %5806 = fdiv fast float 1.000000e+00, %5805
  %5807 = fmul fast float %5638, %5637
  %5808 = fsub fast float %5639, %5807
  %5809 = fsub fast float %5802, %5637
  %5810 = fmul fast float %5802, %5802
  %5811 = fsub fast float %5810, %5638
  %5812 = fmul fast float %5806, %5808
  %5813 = fmul fast float %5812, %5809
  %5814 = fsub fast float %5811, %5813
  %5815 = fmul fast float %5638, %5638
  %5816 = fsub fast float %5640, %5815
  %5817 = fmul fast float %5808, %5808
  %5818 = fmul fast float %5817, %5806
  %5819 = fsub fast float %5816, %5818
  %5820 = fdiv fast float %5814, %5819
  %5821 = fmul fast float %5820, %5808
  %5822 = fsub fast float %5809, %5821
  %5823 = fmul fast float %5822, %5806
  %5824 = fmul fast float %5823, %5637
  %5825 = fsub fast float 1.000000e+00, %5824
  %5826 = fmul fast float %5820, %5638
  %5827 = fsub fast float %5825, %5826
  %5828 = fmul fast float %5823, %5823
  %5829 = fmul fast float %5820, 4.000000e+00
  %5830 = fmul fast float %5829, %5827
  %5831 = fsub fast float %5828, %5830
  %5832 = call float @dx.op.unary.f32(i32 24, float %5831)  ; Sqrt(value)
  %5833 = fcmp fast oge float %5823, 0.000000e+00
  %5834 = fsub fast float -0.000000e+00, %5832
  %5835 = select i1 %5833, float %5834, float %5832
  %5836 = fsub fast float %5835, %5823
  %5837 = fdiv fast float %5836, %5820
  %5838 = fdiv fast float %5827, %5836
  %5839 = fmul fast float %5837, 5.000000e-01
  %5840 = fmul fast float %5838, 2.000000e+00
  %5841 = select i1 %5833, float %5839, float %5840
  %5842 = select i1 %5833, float %5840, float %5839
  %5843 = call float @dx.op.binary.f32(i32 35, float %5841, float %5842)  ; FMax(a,b)
  %5844 = call float @dx.op.binary.f32(i32 36, float %5841, float %5842)  ; FMin(a,b)
  %5845 = fcmp fast ogt float %5802, %5843
  %5846 = fsub fast float %5802, %5844
  %5847 = fsub fast float %5802, %5843
  %5848 = fsub fast float %5843, %5844
  %5849 = select i1 %5845, float %5847, float %5848
  %5850 = fmul float %5846, %5849
  %5851 = select i1 %5845, float %5844, float %5802
  %5852 = fcmp fast ogt float %5802, %5844
  %5853 = fmul fast float %5851, %5843
  %5854 = fadd fast float %5851, %5843
  %5855 = fmul fast float %5854, %5637
  %5856 = fadd fast float %5853, %5638
  %5857 = fsub fast float %5856, %5855
  %5858 = fdiv fast float %5857, %5850
  %5859 = select i1 %5852, float %5858, float 0.000000e+00
  %5860 = fsub fast float 1.000000e+00, %5859
  %5861 = select i1 %5845, float %5860, float %5859
  %5862 = call float @dx.op.unary.f32(i32 7, float %5861)  ; Saturate(value)
  %5863 = extractvalue %dx.types.CBufRet.f32 %5622, 3
  %5864 = fmul fast float %5863, %5862
  %5865 = fsub fast float 1.000000e+00, %5864
  br label %5866

; <label>:5866                                    ; preds = %5795, %5507, %5472, %5468, %5432
  %5867 = phi float [ 1.000000e+00, %5432 ], [ %5865, %5795 ], [ 1.000000e+00, %5472 ], [ 1.000000e+00, %5507 ], [ 1.000000e+00, %5468 ]
  %5868 = fcmp fast ogt float %5464, 0.000000e+00
  br i1 %5868, label %5869, label %5877, !dx.controlflow.hints !112

; <label>:5869                                    ; preds = %5866
  %5870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5871 = extractvalue %dx.types.CBufRet.f32 %5870, 2
  %5872 = fadd fast float %5871, %5345
  %5873 = call float @dx.op.binary.f32(i32 35, float %5872, float 0.000000e+00)  ; FMax(a,b)
  %5874 = fadd fast float %5873, 0x3F10000000000000
  %5875 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5363, float %5364, float undef, float undef, i32 0, i32 0, i32 undef, float %5874)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5876 = extractvalue %dx.types.ResRet.f32 %5875, 0
  br label %5877

; <label>:5877                                    ; preds = %5869, %5866
  %5878 = phi float [ %5876, %5869 ], [ 1.000000e+00, %5866 ]
  %5879 = fcmp fast ogt float %5462, 0.000000e+00
  br i1 %5879, label %5880, label %5888, !dx.controlflow.hints !113

; <label>:5880                                    ; preds = %5877
  %5881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5882 = extractvalue %dx.types.CBufRet.f32 %5881, 1
  %5883 = fadd fast float %5882, %5345
  %5884 = call float @dx.op.binary.f32(i32 35, float %5883, float 0.000000e+00)  ; FMax(a,b)
  %5885 = fadd fast float %5884, 0x3F10000000000000
  %5886 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5355, float %5356, float undef, float undef, i32 0, i32 0, i32 undef, float %5885)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5887 = extractvalue %dx.types.ResRet.f32 %5886, 0
  br label %5888

; <label>:5888                                    ; preds = %5880, %5877
  %5889 = phi float [ %5887, %5880 ], [ 1.000000e+00, %5877 ]
  %5890 = fcmp fast ogt float %5461, 0.000000e+00
  br i1 %5890, label %5891, label %5903, !dx.controlflow.hints !114

; <label>:5891                                    ; preds = %5888
  %5892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5892, 0
  %5894 = fadd fast float %5893, %5345
  %5895 = call float @dx.op.binary.f32(i32 35, float %5894, float 0.000000e+00)  ; FMax(a,b)
  %5896 = fadd fast float %5895, 0x3F10000000000000
  br i1 %5348, label %5897, label %5900, !dx.controlflow.hints !115

; <label>:5897                                    ; preds = %5891
  %5898 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %5337, float %5341, float undef, float undef, i32 0, i32 0, i32 undef, float %5896)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5899 = extractvalue %dx.types.ResRet.f32 %5898, 0
  br label %5903

; <label>:5900                                    ; preds = %5891
  %5901 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5337, float %5341, float undef, float undef, i32 0, i32 0, i32 undef, float %5896)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5902 = extractvalue %dx.types.ResRet.f32 %5901, 0
  br label %5903

; <label>:5903                                    ; preds = %5900, %5897, %5888
  %5904 = phi float [ %5899, %5897 ], [ %5902, %5900 ], [ 1.000000e+00, %5888 ]
  %5905 = fsub fast float %5878, %5867
  %5906 = fmul fast float %5905, %5434
  %5907 = fadd fast float %5906, %5867
  %5908 = fsub fast float %5889, %5907
  %5909 = fmul fast float %5908, %5433
  %5910 = fadd fast float %5909, %5907
  %5911 = fsub fast float %5904, %5910
  %5912 = fmul fast float %5911, %5461
  %5913 = fadd fast float %5912, %5910
  %5914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5915 = extractvalue %dx.types.CBufRet.f32 %5914, 2
  %5916 = fcmp fast ogt float %5915, 0.000000e+00
  br i1 %5916, label %5917, label %5957, !dx.controlflow.hints !116

; <label>:5917                                    ; preds = %5903
  %5918 = fcmp fast ugt float %5915, 0.000000e+00
  br i1 %5918, label %5919, label %5954

; <label>:5919                                    ; preds = %5917
  %5920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5921 = extractvalue %dx.types.CBufRet.f32 %5920, 0
  %5922 = extractvalue %dx.types.CBufRet.f32 %5920, 1
  %5923 = extractvalue %dx.types.CBufRet.f32 %5920, 2
  %5924 = extractvalue %dx.types.CBufRet.f32 %5920, 3
  %5925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5926 = extractvalue %dx.types.CBufRet.f32 %5925, 0
  %5927 = extractvalue %dx.types.CBufRet.f32 %5925, 1
  %5928 = extractvalue %dx.types.CBufRet.f32 %5925, 2
  %5929 = extractvalue %dx.types.CBufRet.f32 %5925, 3
  %5930 = extractvalue %dx.types.CBufRet.f32 %5914, 0
  %5931 = extractvalue %dx.types.CBufRet.f32 %5914, 1
  %5932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5933 = extractvalue %dx.types.CBufRet.f32 %5932, 0
  %5934 = extractvalue %dx.types.CBufRet.f32 %5932, 1
  %5935 = extractvalue %dx.types.CBufRet.f32 %5932, 2
  %5936 = fadd fast float %5933, %5314
  %5937 = fadd fast float %5934, %5315
  %5938 = fadd fast float %5935, %5316
  %5939 = fmul fast float %5936, %5921
  %5940 = call float @dx.op.tertiary.f32(i32 46, float %5922, float %5937, float %5939)  ; FMad(a,b,c)
  %5941 = call float @dx.op.tertiary.f32(i32 46, float %5923, float %5938, float %5940)  ; FMad(a,b,c)
  %5942 = fadd fast float %5941, %5924
  %5943 = fmul fast float %5936, %5926
  %5944 = call float @dx.op.tertiary.f32(i32 46, float %5927, float %5937, float %5943)  ; FMad(a,b,c)
  %5945 = call float @dx.op.tertiary.f32(i32 46, float %5928, float %5938, float %5944)  ; FMad(a,b,c)
  %5946 = fadd fast float %5945, %5929
  %5947 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5942, float %5946, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5948 = extractvalue %dx.types.ResRet.f32 %5947, 0
  %5949 = fmul fast float %5948, %5931
  %5950 = fadd fast float %5949, %5930
  %5951 = call float @dx.op.unary.f32(i32 7, float %5950)  ; Saturate(value)
  %5952 = fmul fast float %5951, %5915
  %5953 = fsub fast float 1.000000e+00, %5952
  br label %5954

; <label>:5954                                    ; preds = %5919, %5917
  %5955 = phi float [ %5953, %5919 ], [ 1.000000e+00, %5917 ]
  %5956 = fmul fast float %5955, %5913
  br label %5957

; <label>:5957                                    ; preds = %5954, %5903, %5294
  %5958 = phi float [ 1.000000e+00, %5294 ], [ %5956, %5954 ], [ %5913, %5903 ]
  %5959 = call float @dx.op.binary.f32(i32 36, float %5958, float %5958)  ; FMin(a,b)
  %5960 = call float @dx.op.binary.f32(i32 36, float %5958, float %5959)  ; FMin(a,b)
  %5961 = fcmp fast ogt float %5960, 0.000000e+00
  br i1 %5961, label %5962, label %6122, !dx.controlflow.hints !117

; <label>:5962                                    ; preds = %5957
  %5963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5964 = extractvalue %dx.types.CBufRet.f32 %5963, 0
  %5965 = extractvalue %dx.types.CBufRet.f32 %5963, 1
  %5966 = extractvalue %dx.types.CBufRet.f32 %5963, 2
  %5967 = extractvalue %dx.types.CBufRet.f32 %5963, 3
  %5968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5969 = extractvalue %dx.types.CBufRet.f32 %5968, 0
  %5970 = extractvalue %dx.types.CBufRet.f32 %5968, 1
  %5971 = extractvalue %dx.types.CBufRet.f32 %5968, 2
  %5972 = extractvalue %dx.types.CBufRet.f32 %5968, 3
  %5973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5974 = extractvalue %dx.types.CBufRet.f32 %5973, 0
  %5975 = extractvalue %dx.types.CBufRet.f32 %5973, 1
  %5976 = extractvalue %dx.types.CBufRet.f32 %5973, 2
  %5977 = extractvalue %dx.types.CBufRet.f32 %5973, 3
  %5978 = fmul fast float %5964, %5314
  %5979 = call float @dx.op.tertiary.f32(i32 46, float %5315, float %5965, float %5978)  ; FMad(a,b,c)
  %5980 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5966, float %5979)  ; FMad(a,b,c)
  %5981 = fadd fast float %5980, %5967
  %5982 = fmul fast float %5969, %5314
  %5983 = call float @dx.op.tertiary.f32(i32 46, float %5315, float %5970, float %5982)  ; FMad(a,b,c)
  %5984 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5971, float %5983)  ; FMad(a,b,c)
  %5985 = fadd fast float %5984, %5972
  %5986 = fmul fast float %5974, %5314
  %5987 = call float @dx.op.tertiary.f32(i32 46, float %5315, float %5975, float %5986)  ; FMad(a,b,c)
  %5988 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5976, float %5987)  ; FMad(a,b,c)
  %5989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5990 = extractvalue %dx.types.CBufRet.f32 %5989, 0
  %5991 = extractvalue %dx.types.CBufRet.f32 %5989, 1
  %5992 = extractvalue %dx.types.CBufRet.f32 %5989, 3
  %5993 = fmul fast float %5992, %5981
  %5994 = fmul fast float %5992, %5985
  %5995 = fadd fast float %5993, %5990
  %5996 = fadd fast float %5994, %5991
  %5997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5998 = extractvalue %dx.types.CBufRet.f32 %5997, 0
  %5999 = extractvalue %dx.types.CBufRet.f32 %5997, 1
  %6000 = fsub fast float %5995, %5998
  %6001 = fsub fast float %5996, %5999
  %6002 = fcmp fast olt float %6000, 0.000000e+00
  %6003 = fcmp fast olt float %6001, 0.000000e+00
  %6004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6005 = extractvalue %dx.types.CBufRet.f32 %6004, 0
  %6006 = extractvalue %dx.types.CBufRet.f32 %6004, 1
  %6007 = extractvalue %dx.types.CBufRet.f32 %6004, 2
  %6008 = extractvalue %dx.types.CBufRet.f32 %6004, 3
  %6009 = select i1 %6002, float %6005, float %6007
  %6010 = select i1 %6003, float %6006, float %6008
  %6011 = fmul fast float %6009, %6000
  %6012 = fmul fast float %6010, %6001
  %6013 = call float @dx.op.unary.f32(i32 6, float %6011)  ; FAbs(value)
  %6014 = call float @dx.op.unary.f32(i32 6, float %6012)  ; FAbs(value)
  %6015 = extractvalue %dx.types.CBufRet.f32 %5309, 0
  %6016 = call float @dx.op.binary.f32(i32 35, float %6013, float %6014)  ; FMax(a,b)
  %6017 = fsub fast float %6015, %6016
  %6018 = call float @dx.op.unary.f32(i32 7, float %6017)  ; Saturate(value)
  %6019 = fcmp fast ogt float %6018, 0.000000e+00
  br i1 %6019, label %6020, label %6061, !dx.controlflow.hints !118

; <label>:6020                                    ; preds = %5962
  %6021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %5995, float %5996, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6022 = extractvalue %dx.types.ResRet.f32 %6021, 1
  %6023 = fcmp fast ogt float %6022, 0.000000e+00
  br i1 %6023, label %6024, label %6056

; <label>:6024                                    ; preds = %6020
  %6025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %5995, float %5996, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6026 = extractvalue %dx.types.ResRet.f32 %6025, 0
  %6027 = extractvalue %dx.types.ResRet.f32 %6025, 1
  %6028 = extractvalue %dx.types.ResRet.f32 %6025, 2
  %6029 = extractvalue %dx.types.ResRet.f32 %6025, 3
  %6030 = fsub fast float 1.000000e+00, %5977
  %6031 = fsub fast float %6030, %5988
  %6032 = fmul fast float %6031, 0x400921FB60000000
  %6033 = fadd fast float %6032, 0x3FF921FB60000000
  %6034 = call float @dx.op.unary.f32(i32 13, float %6033)  ; Sin(value)
  %6035 = fadd fast float %6034, -1.000000e+00
  %6036 = fmul fast float %6035, 0x3FD45F3060000000
  %6037 = fmul fast float %6031, 0x401921FB60000000
  %6038 = fadd fast float %6037, 0x400921FB60000000
  %6039 = call float @dx.op.unary.f32(i32 13, float %6038)  ; Sin(value)
  %6040 = fadd fast float %6039, 0x3E7777A5C0000000
  %6041 = fmul fast float %6040, 0x3FC45F3060000000
  %6042 = fmul fast float %6031, 0x4022D97C80000000
  %6043 = fadd fast float %6042, 0x4012D97C80000000
  %6044 = call float @dx.op.unary.f32(i32 13, float %6043)  ; Sin(value)
  %6045 = fadd fast float %6044, 1.000000e+00
  %6046 = fmul fast float %6045, 0x3FBB2995E0000000
  %6047 = fmul fast float %6031, 0x402921FB60000000
  %6048 = fadd fast float %6047, 0x401921FB60000000
  %6049 = call float @dx.op.unary.f32(i32 13, float %6048)  ; Sin(value)
  %6050 = fadd fast float %6049, 0xBE8777A5C0000000
  %6051 = fmul fast float %6050, 0x3FB45F3060000000
  %6052 = call float @dx.op.dot4.f32(i32 56, float %6026, float %6027, float %6028, float %6029, float %6036, float %6041, float %6046, float %6051)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6053 = fmul fast float %6052, 0xBFF7154760000000
  %6054 = call float @dx.op.unary.f32(i32 21, float %6053)  ; Exp(value)
  %6055 = call float @dx.op.unary.f32(i32 7, float %6054)  ; Saturate(value)
  br label %6056

; <label>:6056                                    ; preds = %6024, %6020
  %6057 = phi float [ %6055, %6024 ], [ 1.000000e+00, %6020 ]
  %6058 = fadd fast float %6057, -1.000000e+00
  %6059 = fmul fast float %6058, %6018
  %6060 = fadd fast float %6059, 1.000000e+00
  br label %6061

; <label>:6061                                    ; preds = %6056, %5962
  %6062 = phi float [ %6060, %6056 ], [ 1.000000e+00, %5962 ]
  %6063 = fmul fast float %6062, %5958
  %6064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6065 = extractvalue %dx.types.CBufRet.f32 %6064, 0
  %6066 = extractvalue %dx.types.CBufRet.f32 %6064, 1
  %6067 = extractvalue %dx.types.CBufRet.f32 %6064, 2
  %6068 = fadd fast float %6065, %191
  %6069 = fadd fast float %6066, %192
  %6070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6071 = extractvalue %dx.types.CBufRet.f32 %6070, 1
  %6072 = fsub fast float -0.000000e+00, %6068
  %6073 = fsub fast float -0.000000e+00, %6069
  %6074 = fsub fast float %5078, %6067
  %6075 = fadd fast float %6074, %6071
  %6076 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6072, float %6073, float %6075)  ; Dot3(ax,ay,az,bx,by,bz)
  %6077 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5295, float %5296, float %5297)  ; Dot3(ax,ay,az,bx,by,bz)
  %6078 = fdiv fast float 1.000000e+00, %6077
  %6079 = fmul fast float %6078, %6076
  %6080 = fmul fast float %5295, %6079
  %6081 = fmul fast float %5296, %6079
  %6082 = fadd fast float %6080, %6068
  %6083 = fadd fast float %6081, %6069
  %6084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6085 = extractvalue %dx.types.CBufRet.f32 %6084, 0
  %6086 = extractvalue %dx.types.CBufRet.f32 %6084, 1
  %6087 = fsub fast float %6082, %6085
  %6088 = fsub fast float %6083, %6086
  %6089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.f32 %6089, 2
  %6091 = extractvalue %dx.types.CBufRet.f32 %6089, 3
  %6092 = fmul fast float %6087, %6090
  %6093 = fmul fast float %6088, %6091
  %6094 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6095 = extractvalue %dx.types.CBufRet.i32 %6094, 3
  %6096 = icmp eq i32 %6095, 0
  br i1 %6096, label %6102, label %6097

; <label>:6097                                    ; preds = %6061
  %6098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6092, float %6093, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6099 = extractvalue %dx.types.ResRet.f32 %6098, 0
  %6100 = extractvalue %dx.types.ResRet.f32 %6098, 1
  %6101 = extractvalue %dx.types.ResRet.f32 %6098, 2
  br label %6107

; <label>:6102                                    ; preds = %6061
  %6103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6092, float %6093, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6104 = extractvalue %dx.types.ResRet.f32 %6103, 0
  %6105 = extractvalue %dx.types.ResRet.f32 %6103, 1
  %6106 = extractvalue %dx.types.ResRet.f32 %6103, 2
  br label %6107

; <label>:6107                                    ; preds = %6102, %6097
  %6108 = phi float [ %6099, %6097 ], [ %6104, %6102 ]
  %6109 = phi float [ %6100, %6097 ], [ %6105, %6102 ]
  %6110 = phi float [ %6101, %6097 ], [ %6106, %6102 ]
  %6111 = extractvalue %dx.types.CBufRet.f32 %6070, 2
  %6112 = fmul fast float %6111, %6108
  %6113 = extractvalue %dx.types.CBufRet.f32 %6070, 0
  %6114 = fsub fast float %6079, %6113
  %6115 = fsub fast float %6114, %6112
  %6116 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6115)  ; FMax(a,b)
  %6117 = fmul fast float %6116, %6109
  %6118 = call float @dx.op.binary.f32(i32 36, float %6110, float %6117)  ; FMin(a,b)
  %6119 = fmul fast float %6118, 0xBFF7154760000000
  %6120 = call float @dx.op.unary.f32(i32 21, float %6119)  ; Exp(value)
  %6121 = fmul fast float %6063, %6120
  br label %6122

; <label>:6122                                    ; preds = %6107, %5957
  %6123 = phi float [ %6121, %6107 ], [ %5958, %5957 ]
  %6124 = call float @dx.op.binary.f32(i32 36, float %6123, float %6123)  ; FMin(a,b)
  %6125 = call float @dx.op.binary.f32(i32 36, float %6123, float %6124)  ; FMin(a,b)
  %6126 = fcmp fast ogt float %6125, 0.000000e+00
  br i1 %6126, label %6127, label %6378, !dx.controlflow.hints !119

; <label>:6127                                    ; preds = %6122
  %6128 = fmul fast float %6123, %5306
  %6129 = fmul fast float %6123, %5307
  %6130 = fmul fast float %6123, %5308
  %6131 = fsub fast float %193, %4292
  %6132 = fcmp fast ogt float %6131, 0.000000e+00
  %6133 = fmul fast float %5295, 5.120000e+02
  %6134 = fmul fast float %5296, 5.120000e+02
  %6135 = fmul fast float %5297, 5.120000e+02
  %6136 = fadd fast float %6135, %193
  %6137 = fsub fast float %4292, %6136
  %6138 = fmul fast float %6137, 2.000000e+00
  %6139 = fadd fast float %6138, %6136
  %6140 = select i1 %6132, float %6139, float %6136
  %6141 = fsub fast float %6140, %193
  %6142 = call float @dx.op.dot3.f32(i32 55, float %6133, float %6134, float %6141, float %6133, float %6134, float %6141)  ; Dot3(ax,ay,az,bx,by,bz)
  %6143 = call float @dx.op.unary.f32(i32 25, float %6142)  ; Rsqrt(value)
  %6144 = fmul fast float %6143, %6133
  %6145 = fmul fast float %6143, %6134
  %6146 = fmul fast float %6143, %6141
  %6147 = fsub fast float %4292, %193
  %6148 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6147)  ; Dot3(ax,ay,az,bx,by,bz)
  %6149 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6144, float %6145, float %6146)  ; Dot3(ax,ay,az,bx,by,bz)
  %6150 = fdiv fast float 1.000000e+00, %6149
  %6151 = fmul fast float %6150, %6148
  %6152 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6131, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6153 = fcmp fast ogt float %6152, 0.000000e+00
  %6154 = fcmp fast olt float %6152, 0.000000e+00
  %6155 = zext i1 %6153 to i32
  %6156 = zext i1 %6154 to i32
  %6157 = sub nsw i32 %6155, %6156
  %6158 = sitofp i32 %6157 to float
  %6159 = fsub fast float %6140, %4292
  %6160 = call float @dx.op.dot3.f32(i32 55, float %6133, float %6134, float %6159, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6161 = fcmp fast ogt float %6160, 0.000000e+00
  %6162 = fcmp fast olt float %6160, 0.000000e+00
  %6163 = zext i1 %6161 to i32
  %6164 = zext i1 %6162 to i32
  %6165 = sub nsw i32 %6163, %6164
  %6166 = sitofp i32 %6165 to float
  %6167 = fcmp fast une float %6158, %6166
  br i1 %6167, label %6168, label %6178

; <label>:6168                                    ; preds = %6127
  %6169 = fmul fast float %6151, %6146
  %6170 = fmul fast float %6151, %6145
  %6171 = fmul fast float %6151, %6144
  %6172 = fmul fast float %6171, %6171
  %6173 = fmul fast float %6170, %6170
  %6174 = fadd fast float %6172, %6173
  %6175 = fmul fast float %6169, %6169
  %6176 = fadd fast float %6174, %6175
  %6177 = call float @dx.op.unary.f32(i32 24, float %6176)  ; Sqrt(value)
  br label %6188

; <label>:6178                                    ; preds = %6127
  %6179 = icmp slt i32 %6157, 0
  br i1 %6179, label %6180, label %6188

; <label>:6180                                    ; preds = %6178
  %6181 = fsub fast float %193, %6140
  %6182 = fmul fast float %6133, %6133
  %6183 = fmul fast float %6134, %6134
  %6184 = fadd fast float %6182, %6183
  %6185 = fmul fast float %6181, %6181
  %6186 = fadd fast float %6184, %6185
  %6187 = call float @dx.op.unary.f32(i32 24, float %6186)  ; Sqrt(value)
  br label %6188

; <label>:6188                                    ; preds = %6180, %6178, %6168
  %6189 = phi float [ %6177, %6168 ], [ %6187, %6180 ], [ 0.000000e+00, %6178 ]
  %6190 = fsub fast float -0.000000e+00, %6189
  %6191 = select i1 %6132, float -0.000000e+00, float %6190
  %6192 = fmul fast float %4293, 0x3FF7154760000000
  %6193 = fmul fast float %6192, %6191
  %6194 = fmul fast float %4294, 0x3FF7154760000000
  %6195 = fmul fast float %6194, %6191
  %6196 = fmul fast float %4295, 0x3FF7154760000000
  %6197 = fmul fast float %6196, %6191
  %6198 = call float @dx.op.unary.f32(i32 21, float %6193)  ; Exp(value)
  %6199 = call float @dx.op.unary.f32(i32 21, float %6195)  ; Exp(value)
  %6200 = call float @dx.op.unary.f32(i32 21, float %6197)  ; Exp(value)
  %6201 = call float @dx.op.unary.f32(i32 7, float %6198)  ; Saturate(value)
  %6202 = call float @dx.op.unary.f32(i32 7, float %6199)  ; Saturate(value)
  %6203 = call float @dx.op.unary.f32(i32 7, float %6200)  ; Saturate(value)
  %6204 = fmul fast float %6128, %6201
  %6205 = fmul fast float %6129, %6202
  %6206 = fmul fast float %6130, %6203
  %6207 = fsub fast float %5295, %211
  %6208 = fsub fast float %5296, %212
  %6209 = fsub fast float %5297, %213
  %6210 = call float @dx.op.dot3.f32(i32 55, float %6207, float %6208, float %6209, float %6207, float %6208, float %6209)  ; Dot3(ax,ay,az,bx,by,bz)
  %6211 = call float @dx.op.unary.f32(i32 25, float %6210)  ; Rsqrt(value)
  %6212 = fmul fast float %6211, %6207
  %6213 = fmul fast float %6211, %6208
  %6214 = fmul fast float %6211, %6209
  %6215 = call float @dx.op.dot3.f32(i32 55, float %5295, float %5296, float %5297, float %5067, float %5068, float %5069)  ; Dot3(ax,ay,az,bx,by,bz)
  %6216 = call float @dx.op.dot3.f32(i32 55, float %4902, float %4903, float %4904, float %6212, float %6213, float %6214)  ; Dot3(ax,ay,az,bx,by,bz)
  %6217 = call float @dx.op.unary.f32(i32 7, float %6215)  ; Saturate(value)
  %6218 = fmul fast float %6217, %6217
  %6219 = fmul fast float %6218, %5094
  %6220 = call float @dx.op.unary.f32(i32 7, float %6219)  ; Saturate(value)
  %6221 = fmul fast float %6220, %6217
  %6222 = call float @dx.op.dot3.f32(i32 55, float %5067, float %5068, float %5069, float %6212, float %6213, float %6214)  ; Dot3(ax,ay,az,bx,by,bz)
  %6223 = fmul fast float %6222, %6222
  %6224 = call float @dx.op.unary.f32(i32 6, float %6215)  ; FAbs(value)
  %6225 = fsub fast float 1.000000e+00, %5076
  %6226 = call float @dx.op.binary.f32(i32 35, float %6225, float 0x3F847AE140000000)  ; FMax(a,b)
  %6227 = fmul fast float %6226, %6226
  %6228 = fmul fast float %6227, %6227
  %6229 = fsub fast float 1.000000e+00, %6228
  %6230 = fmul fast float %5081, %5081
  %6231 = fmul fast float %6230, %6229
  %6232 = fadd fast float %6231, %6228
  %6233 = bitcast float %6232 to i32
  %6234 = ashr i32 %6233, 1
  %6235 = add nsw i32 %6234, 532487669
  %6236 = bitcast i32 %6235 to float
  %6237 = fadd fast float %6236, %5081
  %6238 = fmul fast float %6228, %6223
  %6239 = fsub fast float 1.000000e+00, %6223
  %6240 = fadd fast float %6239, %6238
  %6241 = fmul fast float %6224, %6224
  %6242 = fmul fast float %6241, %6229
  %6243 = fadd fast float %6242, %6228
  %6244 = bitcast float %6243 to i32
  %6245 = ashr i32 %6244, 1
  %6246 = add nsw i32 %6245, 532487669
  %6247 = bitcast i32 %6246 to float
  %6248 = fadd fast float %6247, %6224
  %6249 = fmul fast float %6240, %6240
  %6250 = fmul fast float %6249, %6237
  %6251 = fmul fast float %6250, %6248
  %6252 = fdiv fast float 0x3FF0A00000000000, %6251
  %6253 = fmul fast float %6252, %6228
  %6254 = call float @dx.op.unary.f32(i32 6, float %6216)  ; FAbs(value)
  %6255 = fsub fast float 1.000000e+00, %6254
  %6256 = bitcast float %6255 to i32
  %6257 = sitofp i32 %6256 to float
  %6258 = fmul fast float %6257, 5.000000e+00
  %6259 = fadd fast float %6258, 0xC1EFBF8940000000
  %6260 = fptosi float %6259 to i32
  %6261 = bitcast i32 %6260 to float
  %6262 = fsub fast float 1.000000e+00, %5073
  %6263 = fsub fast float 1.000000e+00, %5074
  %6264 = fsub fast float 1.000000e+00, %5079
  %6265 = fmul fast float %6261, %6262
  %6266 = fmul fast float %6261, %6263
  %6267 = fmul fast float %6261, %6264
  %6268 = fadd fast float %6265, %5073
  %6269 = fadd fast float %6266, %5074
  %6270 = fadd fast float %6267, %5079
  br i1 %5206, label %6271, label %6294

; <label>:6271                                    ; preds = %6188
  %6272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3861, float %6254, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6273 = extractvalue %dx.types.ResRet.f32 %6272, 0
  %6274 = extractvalue %dx.types.ResRet.f32 %6272, 1
  %6275 = extractvalue %dx.types.ResRet.f32 %6272, 2
  %6276 = fadd fast float %6273, -5.000000e-01
  %6277 = fadd fast float %6274, -5.000000e-01
  %6278 = fadd fast float %6275, -5.000000e-01
  %6279 = fmul fast float %5073, 4.000000e+00
  %6280 = fmul fast float %6279, %6262
  %6281 = fmul fast float %6280, %6276
  %6282 = fmul fast float %5074, 4.000000e+00
  %6283 = fmul fast float %6282, %6263
  %6284 = fmul fast float %6283, %6277
  %6285 = fmul fast float %5079, 4.000000e+00
  %6286 = fmul fast float %6285, %6264
  %6287 = fmul fast float %6286, %6278
  %6288 = fadd fast float %6281, %6268
  %6289 = fadd fast float %6284, %6269
  %6290 = fadd fast float %6287, %6270
  %6291 = call float @dx.op.unary.f32(i32 7, float %6288)  ; Saturate(value)
  %6292 = call float @dx.op.unary.f32(i32 7, float %6289)  ; Saturate(value)
  %6293 = call float @dx.op.unary.f32(i32 7, float %6290)  ; Saturate(value)
  br label %6294

; <label>:6294                                    ; preds = %6271, %6188
  %6295 = phi float [ %6291, %6271 ], [ %6268, %6188 ]
  %6296 = phi float [ %6292, %6271 ], [ %6269, %6188 ]
  %6297 = phi float [ %6293, %6271 ], [ %6270, %6188 ]
  %6298 = fmul fast float %6215, 9.843750e-01
  %6299 = fadd fast float %6298, 7.812500e-03
  %6300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6299, float %5196, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6301 = extractvalue %dx.types.ResRet.f32 %6300, 2
  %6302 = extractvalue %dx.types.ResRet.f32 %6300, 3
  %6303 = fmul fast float %6301, %5073
  %6304 = fmul fast float %6301, %5074
  %6305 = fmul fast float %6301, %5079
  %6306 = fadd fast float %6303, %6302
  %6307 = fadd fast float %6304, %6302
  %6308 = fadd fast float %6305, %6302
  br i1 %5206, label %6309, label %6332

; <label>:6309                                    ; preds = %6294
  %6310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3861, float %6215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6311 = extractvalue %dx.types.ResRet.f32 %6310, 0
  %6312 = extractvalue %dx.types.ResRet.f32 %6310, 1
  %6313 = extractvalue %dx.types.ResRet.f32 %6310, 2
  %6314 = fadd fast float %6311, -5.000000e-01
  %6315 = fadd fast float %6312, -5.000000e-01
  %6316 = fadd fast float %6313, -5.000000e-01
  %6317 = fmul fast float %5073, 4.000000e+00
  %6318 = fmul fast float %6317, %6262
  %6319 = fmul fast float %6318, %6314
  %6320 = fmul fast float %5074, 4.000000e+00
  %6321 = fmul fast float %6320, %6263
  %6322 = fmul fast float %6321, %6315
  %6323 = fmul fast float %5079, 4.000000e+00
  %6324 = fmul fast float %6323, %6264
  %6325 = fmul fast float %6324, %6316
  %6326 = fadd fast float %6319, %6306
  %6327 = fadd fast float %6322, %6307
  %6328 = fadd fast float %6325, %6308
  %6329 = call float @dx.op.unary.f32(i32 7, float %6326)  ; Saturate(value)
  %6330 = call float @dx.op.unary.f32(i32 7, float %6327)  ; Saturate(value)
  %6331 = call float @dx.op.unary.f32(i32 7, float %6328)  ; Saturate(value)
  br label %6332

; <label>:6332                                    ; preds = %6309, %6294
  %6333 = phi float [ %6329, %6309 ], [ %6306, %6294 ]
  %6334 = phi float [ %6330, %6309 ], [ %6307, %6294 ]
  %6335 = phi float [ %6331, %6309 ], [ %6308, %6294 ]
  %6336 = call float @dx.op.binary.f32(i32 35, float %6334, float %6335)  ; FMax(a,b)
  %6337 = call float @dx.op.binary.f32(i32 35, float %6333, float %6336)  ; FMax(a,b)
  %6338 = fsub fast float 1.000000e+00, %6337
  %6339 = fmul fast float %6295, %6253
  %6340 = fmul fast float %6296, %6253
  %6341 = fmul fast float %6297, %6253
  %6342 = fsub fast float 1.000000e+00, %6216
  %6343 = bitcast float %6342 to i32
  %6344 = sitofp i32 %6343 to float
  %6345 = fmul fast float %6344, 5.000000e+00
  %6346 = fadd fast float %6345, 0xC1EFBF8940000000
  %6347 = fptosi float %6346 to i32
  %6348 = bitcast i32 %6347 to float
  %6349 = fmul fast float %6348, %3862
  %6350 = fmul fast float %6338, %6349
  %6351 = fmul fast float %6350, %5256
  %6352 = fmul fast float %6350, %5257
  %6353 = fmul fast float %6350, %5258
  %6354 = fadd fast float %6351, %6339
  %6355 = fadd fast float %6352, %6340
  %6356 = fadd fast float %6353, %6341
  %6357 = fmul fast float %6221, %6204
  %6358 = fmul fast float %6357, %6338
  %6359 = fmul fast float %6221, %6205
  %6360 = fmul fast float %6359, %6338
  %6361 = fmul fast float %6221, %6206
  %6362 = fmul fast float %6361, %6338
  %6363 = fmul fast float %6357, %6354
  %6364 = fmul fast float %6359, %6355
  %6365 = fmul fast float %6361, %6356
  %6366 = fadd fast float %6358, %5240
  %6367 = fmul fast float %6366, %3895
  %6368 = fadd fast float %6360, %5241
  %6369 = fmul fast float %6368, %3895
  %6370 = fadd fast float %6362, %5242
  %6371 = fmul fast float %6370, %3895
  %6372 = fadd fast float %6363, %5283
  %6373 = fmul fast float %6372, %3895
  %6374 = fadd fast float %6364, %5286
  %6375 = fmul fast float %6374, %3895
  %6376 = fadd fast float %6365, %5289
  %6377 = fmul fast float %6376, %3895
  br label %6378

; <label>:6378                                    ; preds = %6332, %6122, %5233
  %6379 = phi float [ %5284, %5233 ], [ %5284, %6122 ], [ %6373, %6332 ]
  %6380 = phi float [ %5287, %5233 ], [ %5287, %6122 ], [ %6375, %6332 ]
  %6381 = phi float [ %5290, %5233 ], [ %5290, %6122 ], [ %6377, %6332 ]
  %6382 = phi float [ %5279, %5233 ], [ %5279, %6122 ], [ %6367, %6332 ]
  %6383 = phi float [ %5280, %5233 ], [ %5280, %6122 ], [ %6369, %6332 ]
  %6384 = phi float [ %5281, %5233 ], [ %5281, %6122 ], [ %6371, %6332 ]
  %6385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6386 = extractvalue %dx.types.CBufRet.i32 %6385, 0
  %6387 = icmp eq i32 %6386, 0
  br i1 %6387, label %7008, label %6388

; <label>:6388                                    ; preds = %6378
  %6389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6389, 2
  %6391 = extractvalue %dx.types.CBufRet.f32 %6389, 3
  %6392 = fmul fast float %6390, %104
  %6393 = fmul fast float %6391, %105
  %6394 = fptoui float %6392 to i32
  %6395 = fptoui float %6393 to i32
  %6396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6397 = extractvalue %dx.types.CBufRet.f32 %6396, 0
  %6398 = extractvalue %dx.types.CBufRet.f32 %6396, 2
  %6399 = extractvalue %dx.types.CBufRet.f32 %6396, 3
  %6400 = fadd fast float %95, -4.000000e+00
  %6401 = call float @dx.op.binary.f32(i32 35, float %6400, float 0.000000e+00)  ; FMax(a,b)
  %6402 = fadd fast float %6401, %6397
  %6403 = fmul fast float %6402, %6398
  %6404 = call float @dx.op.unary.f32(i32 23, float %6403)  ; Log(value)
  %6405 = fmul fast float %6404, %6399
  %6406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6407 = extractvalue %dx.types.CBufRet.f32 %6406, 2
  %6408 = fmul fast float %6405, %6407
  %6409 = call float @dx.op.unary.f32(i32 7, float %6408)  ; Saturate(value)
  %6410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6411 = extractvalue %dx.types.CBufRet.i32 %6410, 1
  %6412 = add i32 %6411, -1
  %6413 = uitofp i32 %6411 to float
  %6414 = fmul fast float %6413, %6409
  %6415 = fptoui float %6414 to i32
  %6416 = call i32 @dx.op.binary.i32(i32 40, i32 %6415, i32 %6412)  ; UMin(a,b)
  %6417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6418 = extractvalue %dx.types.CBufRet.i32 %6417, 2
  %6419 = extractvalue %dx.types.CBufRet.i32 %6417, 3
  %6420 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6395, i32 %6418, i32 %6394)  ; UMad(a,b,c)
  %6421 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6416, i32 %6419, i32 %6420)  ; UMad(a,b,c)
  %6422 = add nsw i32 %6386, -1
  %6423 = call i32 @dx.op.binary.i32(i32 37, i32 %6422, i32 0)  ; IMax(a,b)
  %6424 = call float @dx.op.binary.f32(i32 35, float %95, float 0.000000e+00)  ; FMax(a,b)
  %6425 = fptoui float %6424 to i32
  %6426 = lshr i32 %6425, 5
  %6427 = call i32 @dx.op.binary.i32(i32 40, i32 %6426, i32 8191)  ; UMin(a,b)
  %6428 = shl i32 %6427, 2
  %6429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6428, i32 undef)  ; BufferLoad(srv,index,wot)
  %6430 = extractvalue %dx.types.ResRet.i32 %6429, 0
  %6431 = lshr i32 %6430, 16
  %6432 = and i32 %6430, 65535
  %6433 = lshr i32 %6430, 21
  %6434 = lshr i32 %6432, 5
  %6435 = call i32 @dx.op.binary.i32(i32 40, i32 %6434, i32 %6423)  ; UMin(a,b)
  %6436 = icmp ugt i32 %6433, %6435
  br i1 %6436, label %7008, label %6437

; <label>:6437                                    ; preds = %6388
  br label %6438

; <label>:6438                                    ; preds = %6998, %6437
  %6439 = phi i32 [ %7005, %6998 ], [ %6433, %6437 ]
  %6440 = phi float [ %6999, %6998 ], [ %6379, %6437 ]
  %6441 = phi float [ %7000, %6998 ], [ %6380, %6437 ]
  %6442 = phi float [ %7001, %6998 ], [ %6381, %6437 ]
  %6443 = phi float [ %7002, %6998 ], [ %6382, %6437 ]
  %6444 = phi float [ %7003, %6998 ], [ %6383, %6437 ]
  %6445 = phi float [ %7004, %6998 ], [ %6384, %6437 ]
  %6446 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.i32 %6446, 0
  %6448 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6421, i32 %6447, i32 %6439)  ; UMad(a,b,c)
  %6449 = shl i32 %6448, 2
  %6450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6449, i32 undef)  ; BufferLoad(srv,index,wot)
  %6451 = extractvalue %dx.types.ResRet.i32 %6450, 0
  %6452 = shl i32 %6439, 5
  %6453 = sub nsw i32 %6431, %6452
  %6454 = call i32 @dx.op.binary.i32(i32 37, i32 %6453, i32 0)  ; IMax(a,b)
  %6455 = call i32 @dx.op.binary.i32(i32 38, i32 %6454, i32 31)  ; IMin(a,b)
  %6456 = sub nsw i32 1, %6431
  %6457 = add nsw i32 %6456, %6432
  %6458 = call i32 @dx.op.binary.i32(i32 37, i32 %6457, i32 0)  ; IMax(a,b)
  %6459 = call i32 @dx.op.binary.i32(i32 38, i32 %6458, i32 32)  ; IMin(a,b)
  %6460 = and i32 %6459, 31
  %6461 = shl i32 -1, %6460
  %6462 = xor i32 %6461, -1
  %6463 = and i32 %6455, 31
  %6464 = shl i32 %6462, %6463
  %6465 = icmp eq i32 %6459, 32
  %6466 = select i1 %6465, i32 -1, i32 %6464
  %6467 = and i32 %6466, %6451
  %6468 = icmp eq i32 %6467, 0
  br i1 %6468, label %6998, label %6469

; <label>:6469                                    ; preds = %6438
  br label %6470

; <label>:6470                                    ; preds = %6604, %6469
  %6471 = phi i32 [ %6482, %6604 ], [ %6467, %6469 ]
  %6472 = phi float [ %6605, %6604 ], [ %6440, %6469 ]
  %6473 = phi float [ %6606, %6604 ], [ %6441, %6469 ]
  %6474 = phi float [ %6607, %6604 ], [ %6442, %6469 ]
  %6475 = phi float [ %6608, %6604 ], [ %6443, %6469 ]
  %6476 = phi float [ %6609, %6604 ], [ %6444, %6469 ]
  %6477 = phi float [ %6610, %6604 ], [ %6445, %6469 ]
  %6478 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6471)  ; FirstbitLo(value)
  %6479 = add i32 %6478, %6452
  %6480 = and i32 %6478, 31
  %6481 = shl i32 1, %6480
  %6482 = xor i32 %6481, %6471
  %6483 = mul i32 %6479, 112
  %6484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6483, i32 undef)  ; BufferLoad(srv,index,wot)
  %6485 = extractvalue %dx.types.ResRet.f32 %6484, 0
  %6486 = extractvalue %dx.types.ResRet.f32 %6484, 1
  %6487 = extractvalue %dx.types.ResRet.f32 %6484, 2
  %6488 = or i32 %6483, 12
  %6489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6488, i32 undef)  ; BufferLoad(srv,index,wot)
  %6490 = extractvalue %dx.types.ResRet.f32 %6489, 0
  %6491 = add i32 %6483, 16
  %6492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6491, i32 undef)  ; BufferLoad(srv,index,wot)
  %6493 = extractvalue %dx.types.ResRet.f32 %6492, 0
  %6494 = extractvalue %dx.types.ResRet.f32 %6492, 1
  %6495 = extractvalue %dx.types.ResRet.f32 %6492, 2
  %6496 = add i32 %6483, 28
  %6497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6496, i32 undef)  ; BufferLoad(srv,index,wot)
  %6498 = extractvalue %dx.types.ResRet.i32 %6497, 0
  %6499 = add i32 %6483, 44
  %6500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6499, i32 undef)  ; BufferLoad(srv,index,wot)
  %6501 = extractvalue %dx.types.ResRet.f32 %6500, 0
  %6502 = add i32 %6483, 48
  %6503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6502, i32 undef)  ; BufferLoad(srv,index,wot)
  %6504 = extractvalue %dx.types.ResRet.f32 %6503, 0
  %6505 = extractvalue %dx.types.ResRet.f32 %6503, 1
  %6506 = extractvalue %dx.types.ResRet.f32 %6503, 2
  %6507 = extractvalue %dx.types.ResRet.f32 %6503, 3
  %6508 = add i32 %6483, 64
  %6509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6508, i32 undef)  ; BufferLoad(srv,index,wot)
  %6510 = extractvalue %dx.types.ResRet.f32 %6509, 0
  %6511 = extractvalue %dx.types.ResRet.f32 %6509, 1
  %6512 = extractvalue %dx.types.ResRet.f32 %6509, 2
  %6513 = extractvalue %dx.types.ResRet.f32 %6509, 3
  %6514 = add i32 %6483, 80
  %6515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6514, i32 undef)  ; BufferLoad(srv,index,wot)
  %6516 = extractvalue %dx.types.ResRet.f32 %6515, 1
  %6517 = extractvalue %dx.types.ResRet.f32 %6515, 2
  %6518 = add i32 %6483, 92
  %6519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6518, i32 undef)  ; BufferLoad(srv,index,wot)
  %6520 = extractvalue %dx.types.ResRet.i32 %6519, 0
  %6521 = call float @dx.op.dot3.f32(i32 55, float %6485, float %6486, float %6487, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6522 = select i1 %282, float %6516, float %6485
  %6523 = select i1 %282, float %6521, float %6486
  %6524 = select i1 %282, float %6517, float %6487
  %6525 = and i32 %6520, 65535
  %6526 = uitofp i32 %6525 to float
  %6527 = lshr i32 %6520, 16
  %6528 = uitofp i32 %6527 to float
  %6529 = and i32 %6498, 65535
  %6530 = and i32 %6498, 50331648
  %6531 = icmp eq i32 %6530, 33554432
  %6532 = fsub fast float %6504, %191
  %6533 = fsub fast float %6505, %192
  %6534 = fsub fast float %6506, %193
  %6535 = call float @dx.op.dot3.f32(i32 55, float %6532, float %6533, float %6534, float %6532, float %6533, float %6534)  ; Dot3(ax,ay,az,bx,by,bz)
  %6536 = call float @dx.op.unary.f32(i32 24, float %6535)  ; Sqrt(value)
  %6537 = fdiv fast float 1.000000e+00, %6536
  %6538 = fmul fast float %6537, %6532
  %6539 = fmul fast float %6537, %6533
  %6540 = fmul fast float %6537, %6534
  %6541 = fadd fast float %6536, %6490
  %6542 = fdiv fast float 1.000000e+00, %6541
  %6543 = fmul float %6501, %6542
  %6544 = fmul float %6543, %6543
  %6545 = call float @dx.op.unary.f32(i32 7, float %6544)  ; Saturate(value)
  br i1 %6531, label %6546, label %6567

; <label>:6546                                    ; preds = %6470
  %6547 = fmul fast float %6512, %6493
  %6548 = fmul fast float %6512, %6494
  %6549 = fmul fast float %6512, %6495
  %6550 = fadd fast float %6532, %6547
  %6551 = fadd fast float %6533, %6548
  %6552 = fadd fast float %6534, %6549
  %6553 = call float @dx.op.dot3.f32(i32 55, float %6550, float %6551, float %6552, float %6550, float %6551, float %6552)  ; Dot3(ax,ay,az,bx,by,bz)
  %6554 = call float @dx.op.unary.f32(i32 25, float %6553)  ; Rsqrt(value)
  %6555 = fmul fast float %6554, %6550
  %6556 = fmul fast float %6554, %6551
  %6557 = fmul fast float %6554, %6552
  %6558 = fsub fast float %191, %6504
  %6559 = fsub fast float %192, %6505
  %6560 = fsub fast float %193, %6506
  %6561 = fsub fast float -0.000000e+00, %6558
  %6562 = fsub fast float -0.000000e+00, %6559
  %6563 = fsub fast float -0.000000e+00, %6560
  %6564 = call float @dx.op.dot3.f32(i32 55, float %6561, float %6562, float %6563, float %6493, float %6494, float %6495)  ; Dot3(ax,ay,az,bx,by,bz)
  %6565 = fcmp fast ogt float %6564, 0.000000e+00
  %6566 = uitofp i1 %6565 to float
  br label %6567

; <label>:6567                                    ; preds = %6546, %6470
  %6568 = phi float [ %6566, %6546 ], [ 1.000000e+00, %6470 ]
  %6569 = phi float [ %6555, %6546 ], [ %6538, %6470 ]
  %6570 = phi float [ %6556, %6546 ], [ %6539, %6470 ]
  %6571 = phi float [ %6557, %6546 ], [ %6540, %6470 ]
  %6572 = call float @dx.op.dot3.f32(i32 55, float %6493, float %6494, float %6495, float %6569, float %6570, float %6571)  ; Dot3(ax,ay,az,bx,by,bz)
  %6573 = fmul fast float %6572, %6572
  %6574 = call float @dx.op.unary.f32(i32 7, float %6573)  ; Saturate(value)
  %6575 = fsub fast float 1.000000e+00, %6574
  %6576 = fmul fast float %6575, 5.000000e-01
  %6577 = fcmp fast ogt float %6572, 0.000000e+00
  %6578 = fsub fast float 1.000000e+00, %6576
  %6579 = select i1 %6577, float %6576, float %6578
  %6580 = fmul fast float %6579, %6528
  %6581 = fadd fast float %6580, %6526
  %6582 = fmul fast float %6581, 0x3EF0001000000000
  %6583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %48, float %6582, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6584 = extractvalue %dx.types.ResRet.f32 %6583, 0
  %6585 = fmul fast float %6572, %6510
  %6586 = fadd fast float %6585, %6511
  %6587 = call float @dx.op.unary.f32(i32 7, float %6586)  ; Saturate(value)
  %6588 = select i1 %6531, float 1.000000e+00, float %6587
  %6589 = select i1 %6531, float %6587, float 1.000000e+00
  %6590 = fmul fast float %6536, %6507
  %6591 = fsub fast float 1.000000e+00, %6590
  %6592 = fmul fast float %6591, %6513
  %6593 = call float @dx.op.unary.f32(i32 7, float %6592)  ; Saturate(value)
  %6594 = fmul fast float %6593, %6589
  %6595 = fmul fast float %6594, 2.000000e+00
  %6596 = fsub fast float 3.000000e+00, %6595
  %6597 = fmul fast float %6584, %6568
  %6598 = fmul fast float %6594, %6594
  %6599 = fmul fast float %6598, %6597
  %6600 = fmul fast float %6599, %6596
  %6601 = call float @dx.op.binary.f32(i32 36, float %6600, float %6600)  ; FMin(a,b)
  %6602 = call float @dx.op.binary.f32(i32 36, float %6600, float %6601)  ; FMin(a,b)
  %6603 = fcmp fast ogt float %6602, 0.000000e+00
  br i1 %6603, label %6612, label %6604, !dx.controlflow.hints !120

; <label>:6604                                    ; preds = %6954, %6712, %6567
  %6605 = phi float [ %6472, %6712 ], [ %6472, %6567 ], [ %6994, %6954 ]
  %6606 = phi float [ %6473, %6712 ], [ %6473, %6567 ], [ %6995, %6954 ]
  %6607 = phi float [ %6474, %6712 ], [ %6474, %6567 ], [ %6996, %6954 ]
  %6608 = phi float [ %6475, %6712 ], [ %6475, %6567 ], [ %6988, %6954 ]
  %6609 = phi float [ %6476, %6712 ], [ %6476, %6567 ], [ %6989, %6954 ]
  %6610 = phi float [ %6477, %6712 ], [ %6477, %6567 ], [ %6990, %6954 ]
  %6611 = icmp eq i32 %6471, %6481
  br i1 %6611, label %6997, label %6470

; <label>:6612                                    ; preds = %6567
  %6613 = icmp eq i32 %6529, 255
  br i1 %6613, label %6712, label %6614, !dx.controlflow.hints !121

; <label>:6614                                    ; preds = %6612
  %6615 = mul nuw nsw i32 %6529, 176
  %6616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6615, i32 undef)  ; BufferLoad(srv,index,wot)
  %6617 = extractvalue %dx.types.ResRet.f32 %6616, 0
  %6618 = extractvalue %dx.types.ResRet.f32 %6616, 1
  %6619 = extractvalue %dx.types.ResRet.f32 %6616, 2
  %6620 = extractvalue %dx.types.ResRet.f32 %6616, 3
  %6621 = add nuw nsw i32 %6615, 16
  %6622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6621, i32 undef)  ; BufferLoad(srv,index,wot)
  %6623 = extractvalue %dx.types.ResRet.f32 %6622, 0
  %6624 = extractvalue %dx.types.ResRet.f32 %6622, 1
  %6625 = add nuw nsw i32 %6615, 32
  %6626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6625, i32 undef)  ; BufferLoad(srv,index,wot)
  %6627 = extractvalue %dx.types.ResRet.f32 %6626, 0
  %6628 = extractvalue %dx.types.ResRet.f32 %6626, 1
  %6629 = extractvalue %dx.types.ResRet.f32 %6626, 2
  %6630 = add nuw nsw i32 %6615, 48
  %6631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6630, i32 undef)  ; BufferLoad(srv,index,wot)
  %6632 = extractvalue %dx.types.ResRet.f32 %6631, 0
  %6633 = extractvalue %dx.types.ResRet.f32 %6631, 1
  %6634 = extractvalue %dx.types.ResRet.f32 %6631, 2
  %6635 = extractvalue %dx.types.ResRet.f32 %6631, 3
  %6636 = add nuw nsw i32 %6615, 64
  %6637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6636, i32 undef)  ; BufferLoad(srv,index,wot)
  %6638 = extractvalue %dx.types.ResRet.f32 %6637, 0
  %6639 = extractvalue %dx.types.ResRet.f32 %6637, 1
  %6640 = extractvalue %dx.types.ResRet.f32 %6637, 2
  %6641 = extractvalue %dx.types.ResRet.f32 %6637, 3
  %6642 = add nuw nsw i32 %6615, 80
  %6643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6642, i32 undef)  ; BufferLoad(srv,index,wot)
  %6644 = extractvalue %dx.types.ResRet.f32 %6643, 0
  %6645 = extractvalue %dx.types.ResRet.f32 %6643, 1
  %6646 = extractvalue %dx.types.ResRet.f32 %6643, 2
  %6647 = extractvalue %dx.types.ResRet.f32 %6643, 3
  %6648 = add nuw nsw i32 %6615, 96
  %6649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6648, i32 undef)  ; BufferLoad(srv,index,wot)
  %6650 = extractvalue %dx.types.ResRet.f32 %6649, 0
  %6651 = extractvalue %dx.types.ResRet.f32 %6649, 1
  %6652 = extractvalue %dx.types.ResRet.f32 %6649, 2
  %6653 = extractvalue %dx.types.ResRet.f32 %6649, 3
  %6654 = bitcast float %6624 to i32
  %6655 = fmul fast float %6629, %111
  %6656 = fmul fast float %6629, %112
  %6657 = fmul fast float %6629, %113
  %6658 = fadd fast float %6655, %191
  %6659 = fadd fast float %6656, %192
  %6660 = fadd fast float %6657, %193
  %6661 = fmul fast float %6658, %6632
  %6662 = call float @dx.op.tertiary.f32(i32 46, float %6659, float %6638, float %6661)  ; FMad(a,b,c)
  %6663 = call float @dx.op.tertiary.f32(i32 46, float %6660, float %6644, float %6662)  ; FMad(a,b,c)
  %6664 = fadd fast float %6663, %6650
  %6665 = fmul fast float %6658, %6633
  %6666 = call float @dx.op.tertiary.f32(i32 46, float %6659, float %6639, float %6665)  ; FMad(a,b,c)
  %6667 = call float @dx.op.tertiary.f32(i32 46, float %6660, float %6645, float %6666)  ; FMad(a,b,c)
  %6668 = fadd fast float %6667, %6651
  %6669 = fmul fast float %6658, %6634
  %6670 = call float @dx.op.tertiary.f32(i32 46, float %6659, float %6640, float %6669)  ; FMad(a,b,c)
  %6671 = call float @dx.op.tertiary.f32(i32 46, float %6660, float %6646, float %6670)  ; FMad(a,b,c)
  %6672 = fadd fast float %6671, %6652
  %6673 = fmul fast float %6658, %6635
  %6674 = call float @dx.op.tertiary.f32(i32 46, float %6659, float %6641, float %6673)  ; FMad(a,b,c)
  %6675 = call float @dx.op.tertiary.f32(i32 46, float %6660, float %6647, float %6674)  ; FMad(a,b,c)
  %6676 = fadd fast float %6675, %6653
  %6677 = fdiv fast float %6664, %6676
  %6678 = fdiv fast float %6668, %6676
  %6679 = fdiv fast float %6672, %6676
  %6680 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6679)  ; FMax(a,b)
  %6681 = fmul fast float %293, 0x401921FB60000000
  %6682 = call float @dx.op.unary.f32(i32 13, float %6681)  ; Sin(value)
  %6683 = call float @dx.op.unary.f32(i32 12, float %6681)  ; Cos(value)
  %6684 = fsub fast float -0.000000e+00, %6682
  %6685 = fmul fast float %6619, 5.000000e-01
  %6686 = call float @dx.op.dot2.f32(i32 54, float %293, float %293, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6687 = call float @dx.op.unary.f32(i32 22, float %6686)  ; Frc(value)
  %6688 = fmul fast float %6687, 0x404A7DD040000000
  %6689 = call float @dx.op.unary.f32(i32 22, float %6688)  ; Frc(value)
  %6690 = fmul fast float %6689, %6628
  %6691 = fadd fast float %6690, %6685
  %6692 = call float @dx.op.tertiary.f32(i32 46, float %6691, float %6684, float 0.000000e+00)  ; FMad(a,b,c)
  %6693 = call float @dx.op.tertiary.f32(i32 46, float %6691, float %6683, float 0.000000e+00)  ; FMad(a,b,c)
  %6694 = fadd fast float %6692, %6677
  %6695 = fadd fast float %6693, %6678
  %6696 = fmul fast float %6694, %6623
  %6697 = fmul fast float %6695, %6623
  %6698 = call float @dx.op.binary.f32(i32 35, float %6696, float %6619)  ; FMax(a,b)
  %6699 = call float @dx.op.binary.f32(i32 35, float %6697, float %6619)  ; FMax(a,b)
  %6700 = call float @dx.op.binary.f32(i32 36, float %6698, float %6620)  ; FMin(a,b)
  %6701 = call float @dx.op.binary.f32(i32 36, float %6699, float %6620)  ; FMin(a,b)
  %6702 = fadd fast float %6700, %6617
  %6703 = fadd fast float %6701, %6618
  %6704 = uitofp i32 %6654 to float
  %6705 = fadd fast float %6680, %6627
  %6706 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %50, float %6702, float %6703, float %6704, float undef, i32 0, i32 0, i32 undef, float %6705)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6707 = extractvalue %dx.types.ResRet.f32 %6706, 0
  %6708 = fadd fast float %6707, -1.000000e+00
  %6709 = fmul fast float %6708, %6588
  %6710 = fadd fast float %6709, 1.000000e+00
  %6711 = fmul fast float %6710, %6600
  br label %6712

; <label>:6712                                    ; preds = %6614, %6612
  %6713 = phi float [ %6711, %6614 ], [ %6600, %6612 ]
  %6714 = call float @dx.op.binary.f32(i32 36, float %6713, float %6713)  ; FMin(a,b)
  %6715 = call float @dx.op.binary.f32(i32 36, float %6713, float %6714)  ; FMin(a,b)
  %6716 = fcmp fast ogt float %6715, 0.000000e+00
  br i1 %6716, label %6717, label %6604, !dx.controlflow.hints !122

; <label>:6717                                    ; preds = %6712
  %6718 = fmul fast float %6713, %6522
  %6719 = fmul fast float %6713, %6523
  %6720 = fmul fast float %6713, %6524
  %6721 = fsub fast float %6506, %4292
  %6722 = fcmp fast ogt float %6721, 0.000000e+00
  %6723 = fsub fast float %193, %4292
  %6724 = fcmp fast ogt float %6723, 0.000000e+00
  %6725 = xor i1 %6724, %6722
  %6726 = fsub fast float %4292, %6506
  %6727 = fmul fast float %6726, 2.000000e+00
  %6728 = fadd fast float %6727, %6506
  %6729 = select i1 %6725, float %6506, float %6728
  %6730 = fsub fast float %6729, %193
  %6731 = call float @dx.op.dot3.f32(i32 55, float %6532, float %6533, float %6730, float %6532, float %6533, float %6730)  ; Dot3(ax,ay,az,bx,by,bz)
  %6732 = call float @dx.op.unary.f32(i32 25, float %6731)  ; Rsqrt(value)
  %6733 = fmul fast float %6732, %6532
  %6734 = fmul fast float %6732, %6533
  %6735 = fmul fast float %6732, %6730
  %6736 = fsub fast float %4292, %193
  %6737 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6736)  ; Dot3(ax,ay,az,bx,by,bz)
  %6738 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6733, float %6734, float %6735)  ; Dot3(ax,ay,az,bx,by,bz)
  %6739 = fdiv fast float 1.000000e+00, %6738
  %6740 = fmul fast float %6739, %6737
  %6741 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6723, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6742 = fcmp fast ogt float %6741, 0.000000e+00
  %6743 = fcmp fast olt float %6741, 0.000000e+00
  %6744 = zext i1 %6742 to i32
  %6745 = zext i1 %6743 to i32
  %6746 = sub nsw i32 %6744, %6745
  %6747 = sitofp i32 %6746 to float
  %6748 = fsub fast float %6729, %4292
  %6749 = call float @dx.op.dot3.f32(i32 55, float %6532, float %6533, float %6748, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6750 = fcmp fast ogt float %6749, 0.000000e+00
  %6751 = fcmp fast olt float %6749, 0.000000e+00
  %6752 = zext i1 %6750 to i32
  %6753 = zext i1 %6751 to i32
  %6754 = sub nsw i32 %6752, %6753
  %6755 = sitofp i32 %6754 to float
  %6756 = fcmp fast une float %6747, %6755
  br i1 %6756, label %6757, label %6767

; <label>:6757                                    ; preds = %6717
  %6758 = fmul fast float %6740, %6735
  %6759 = fmul fast float %6740, %6734
  %6760 = fmul fast float %6740, %6733
  %6761 = fmul fast float %6760, %6760
  %6762 = fmul fast float %6759, %6759
  %6763 = fadd fast float %6761, %6762
  %6764 = fmul fast float %6758, %6758
  %6765 = fadd fast float %6763, %6764
  %6766 = call float @dx.op.unary.f32(i32 24, float %6765)  ; Sqrt(value)
  br label %6779

; <label>:6767                                    ; preds = %6717
  %6768 = icmp slt i32 %6746, 0
  br i1 %6768, label %6769, label %6779

; <label>:6769                                    ; preds = %6767
  %6770 = fsub fast float %191, %6504
  %6771 = fsub fast float %192, %6505
  %6772 = fsub fast float %193, %6729
  %6773 = fmul fast float %6770, %6770
  %6774 = fmul fast float %6771, %6771
  %6775 = fadd fast float %6773, %6774
  %6776 = fmul fast float %6772, %6772
  %6777 = fadd fast float %6775, %6776
  %6778 = call float @dx.op.unary.f32(i32 24, float %6777)  ; Sqrt(value)
  br label %6779

; <label>:6779                                    ; preds = %6769, %6767, %6757
  %6780 = phi float [ %6766, %6757 ], [ %6778, %6769 ], [ 0.000000e+00, %6767 ]
  %6781 = and i1 %6724, %6722
  %6782 = fsub fast float -0.000000e+00, %6780
  %6783 = select i1 %6781, float -0.000000e+00, float %6782
  %6784 = fmul fast float %4293, 0x3FF7154760000000
  %6785 = fmul fast float %6784, %6783
  %6786 = fmul fast float %4294, 0x3FF7154760000000
  %6787 = fmul fast float %6786, %6783
  %6788 = fmul fast float %4295, 0x3FF7154760000000
  %6789 = fmul fast float %6788, %6783
  %6790 = call float @dx.op.unary.f32(i32 21, float %6785)  ; Exp(value)
  %6791 = call float @dx.op.unary.f32(i32 21, float %6787)  ; Exp(value)
  %6792 = call float @dx.op.unary.f32(i32 21, float %6789)  ; Exp(value)
  %6793 = call float @dx.op.unary.f32(i32 7, float %6790)  ; Saturate(value)
  %6794 = call float @dx.op.unary.f32(i32 7, float %6791)  ; Saturate(value)
  %6795 = call float @dx.op.unary.f32(i32 7, float %6792)  ; Saturate(value)
  %6796 = fmul fast float %6718, %6793
  %6797 = fmul fast float %6719, %6794
  %6798 = fmul fast float %6720, %6795
  %6799 = fsub fast float %6538, %211
  %6800 = fsub fast float %6539, %212
  %6801 = fsub fast float %6540, %213
  %6802 = call float @dx.op.dot3.f32(i32 55, float %6799, float %6800, float %6801, float %6799, float %6800, float %6801)  ; Dot3(ax,ay,az,bx,by,bz)
  %6803 = call float @dx.op.unary.f32(i32 25, float %6802)  ; Rsqrt(value)
  %6804 = fmul fast float %6803, %6799
  %6805 = fmul fast float %6803, %6800
  %6806 = fmul fast float %6803, %6801
  %6807 = call float @dx.op.dot3.f32(i32 55, float %6538, float %6539, float %6540, float %5067, float %5068, float %5069)  ; Dot3(ax,ay,az,bx,by,bz)
  %6808 = call float @dx.op.dot3.f32(i32 55, float %4902, float %4903, float %4904, float %6804, float %6805, float %6806)  ; Dot3(ax,ay,az,bx,by,bz)
  %6809 = call float @dx.op.unary.f32(i32 7, float %6807)  ; Saturate(value)
  %6810 = fmul fast float %6809, %6545
  %6811 = fmul fast float %6809, %6809
  %6812 = fmul fast float %6811, %5094
  %6813 = call float @dx.op.unary.f32(i32 7, float %6812)  ; Saturate(value)
  %6814 = fmul fast float %6810, %6813
  %6815 = bitcast float %6535 to i32
  %6816 = ashr i32 %6815, 1
  %6817 = sub nsw i32 1597463007, %6816
  %6818 = bitcast i32 %6817 to float
  %6819 = fmul fast float %6818, %6532
  %6820 = fmul fast float %6818, %6533
  %6821 = fmul fast float %6818, %6534
  %6822 = fsub fast float %6819, %211
  %6823 = fsub fast float %6820, %212
  %6824 = fsub fast float %6821, %213
  %6825 = call float @dx.op.dot3.f32(i32 55, float %6822, float %6823, float %6824, float %6822, float %6823, float %6824)  ; Dot3(ax,ay,az,bx,by,bz)
  %6826 = call float @dx.op.unary.f32(i32 25, float %6825)  ; Rsqrt(value)
  %6827 = fmul fast float %6822, %6826
  %6828 = fmul fast float %6823, %6826
  %6829 = fmul fast float %6824, %6826
  %6830 = call float @dx.op.dot3.f32(i32 55, float %5067, float %5068, float %5069, float %6827, float %6828, float %6829)  ; Dot3(ax,ay,az,bx,by,bz)
  %6831 = fmul fast float %6830, %6830
  %6832 = call float @dx.op.unary.f32(i32 6, float %6807)  ; FAbs(value)
  %6833 = fsub fast float 1.000000e+00, %5076
  %6834 = call float @dx.op.binary.f32(i32 35, float %6833, float 0x3F847AE140000000)  ; FMax(a,b)
  %6835 = fmul fast float %6834, %6834
  %6836 = fmul fast float %6835, %6835
  %6837 = fsub fast float 1.000000e+00, %6836
  %6838 = fmul fast float %5081, %5081
  %6839 = fmul fast float %6838, %6837
  %6840 = fadd fast float %6839, %6836
  %6841 = bitcast float %6840 to i32
  %6842 = ashr i32 %6841, 1
  %6843 = add nsw i32 %6842, 532487669
  %6844 = bitcast i32 %6843 to float
  %6845 = fadd fast float %6844, %5081
  %6846 = fmul fast float %6836, %6831
  %6847 = fsub fast float 1.000000e+00, %6831
  %6848 = fadd fast float %6847, %6846
  %6849 = fmul fast float %6832, %6832
  %6850 = fmul fast float %6849, %6837
  %6851 = fadd fast float %6850, %6836
  %6852 = bitcast float %6851 to i32
  %6853 = ashr i32 %6852, 1
  %6854 = add nsw i32 %6853, 532487669
  %6855 = bitcast i32 %6854 to float
  %6856 = fadd fast float %6855, %6832
  %6857 = fmul fast float %6848, %6848
  %6858 = fmul fast float %6857, %6845
  %6859 = fmul fast float %6858, %6856
  %6860 = fdiv fast float 1.000000e+00, %6859
  %6861 = bitcast float %6836 to i32
  %6862 = sitofp i32 %6861 to float
  %6863 = fmul fast float %6862, 0x3FE7F73180000000
  %6864 = fadd fast float %6863, 0x41AFE27C40000000
  %6865 = fptosi float %6864 to i32
  %6866 = bitcast i32 %6865 to float
  %6867 = fmul fast float %6501, 0x3FD80E9D60000000
  %6868 = fmul fast float %6867, %6818
  %6869 = fadd fast float %6866, %6868
  %6870 = bitcast float %6869 to i32
  %6871 = sub nsw i32 2129859010, %6870
  %6872 = bitcast i32 %6871 to float
  %6873 = fmul fast float %6836, %6860
  %6874 = fmul fast float %6873, %6866
  %6875 = fmul fast float %6874, %6872
  %6876 = call float @dx.op.unary.f32(i32 6, float %6808)  ; FAbs(value)
  %6877 = fsub fast float 1.000000e+00, %6876
  %6878 = bitcast float %6877 to i32
  %6879 = sitofp i32 %6878 to float
  %6880 = fmul fast float %6879, 5.000000e+00
  %6881 = fadd fast float %6880, 0xC1EFBF8940000000
  %6882 = fptosi float %6881 to i32
  %6883 = bitcast i32 %6882 to float
  %6884 = fsub fast float 1.000000e+00, %5073
  %6885 = fsub fast float 1.000000e+00, %5074
  %6886 = fsub fast float 1.000000e+00, %5079
  %6887 = fmul fast float %6883, %6884
  %6888 = fmul fast float %6883, %6885
  %6889 = fmul fast float %6883, %6886
  %6890 = fadd fast float %6887, %5073
  %6891 = fadd fast float %6888, %5074
  %6892 = fadd fast float %6889, %5079
  br i1 %5206, label %6893, label %6916

; <label>:6893                                    ; preds = %6779
  %6894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3861, float %6876, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6895 = extractvalue %dx.types.ResRet.f32 %6894, 0
  %6896 = extractvalue %dx.types.ResRet.f32 %6894, 1
  %6897 = extractvalue %dx.types.ResRet.f32 %6894, 2
  %6898 = fadd fast float %6895, -5.000000e-01
  %6899 = fadd fast float %6896, -5.000000e-01
  %6900 = fadd fast float %6897, -5.000000e-01
  %6901 = fmul fast float %5073, 4.000000e+00
  %6902 = fmul fast float %6901, %6884
  %6903 = fmul fast float %6902, %6898
  %6904 = fmul fast float %5074, 4.000000e+00
  %6905 = fmul fast float %6904, %6885
  %6906 = fmul fast float %6905, %6899
  %6907 = fmul fast float %5079, 4.000000e+00
  %6908 = fmul fast float %6907, %6886
  %6909 = fmul fast float %6908, %6900
  %6910 = fadd fast float %6903, %6890
  %6911 = fadd fast float %6906, %6891
  %6912 = fadd fast float %6909, %6892
  %6913 = call float @dx.op.unary.f32(i32 7, float %6910)  ; Saturate(value)
  %6914 = call float @dx.op.unary.f32(i32 7, float %6911)  ; Saturate(value)
  %6915 = call float @dx.op.unary.f32(i32 7, float %6912)  ; Saturate(value)
  br label %6916

; <label>:6916                                    ; preds = %6893, %6779
  %6917 = phi float [ %6913, %6893 ], [ %6890, %6779 ]
  %6918 = phi float [ %6914, %6893 ], [ %6891, %6779 ]
  %6919 = phi float [ %6915, %6893 ], [ %6892, %6779 ]
  %6920 = fmul fast float %6807, 9.843750e-01
  %6921 = fadd fast float %6920, 7.812500e-03
  %6922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6921, float %5196, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6923 = extractvalue %dx.types.ResRet.f32 %6922, 2
  %6924 = extractvalue %dx.types.ResRet.f32 %6922, 3
  %6925 = fmul fast float %6923, %5073
  %6926 = fmul fast float %6923, %5074
  %6927 = fmul fast float %6923, %5079
  %6928 = fadd fast float %6925, %6924
  %6929 = fadd fast float %6926, %6924
  %6930 = fadd fast float %6927, %6924
  br i1 %5206, label %6931, label %6954

; <label>:6931                                    ; preds = %6916
  %6932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3861, float %6807, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6933 = extractvalue %dx.types.ResRet.f32 %6932, 0
  %6934 = extractvalue %dx.types.ResRet.f32 %6932, 1
  %6935 = extractvalue %dx.types.ResRet.f32 %6932, 2
  %6936 = fadd fast float %6933, -5.000000e-01
  %6937 = fadd fast float %6934, -5.000000e-01
  %6938 = fadd fast float %6935, -5.000000e-01
  %6939 = fmul fast float %5073, 4.000000e+00
  %6940 = fmul fast float %6939, %6884
  %6941 = fmul fast float %6940, %6936
  %6942 = fmul fast float %5074, 4.000000e+00
  %6943 = fmul fast float %6942, %6885
  %6944 = fmul fast float %6943, %6937
  %6945 = fmul fast float %5079, 4.000000e+00
  %6946 = fmul fast float %6945, %6886
  %6947 = fmul fast float %6946, %6938
  %6948 = fadd fast float %6941, %6928
  %6949 = fadd fast float %6944, %6929
  %6950 = fadd fast float %6947, %6930
  %6951 = call float @dx.op.unary.f32(i32 7, float %6948)  ; Saturate(value)
  %6952 = call float @dx.op.unary.f32(i32 7, float %6949)  ; Saturate(value)
  %6953 = call float @dx.op.unary.f32(i32 7, float %6950)  ; Saturate(value)
  br label %6954

; <label>:6954                                    ; preds = %6931, %6916
  %6955 = phi float [ %6951, %6931 ], [ %6928, %6916 ]
  %6956 = phi float [ %6952, %6931 ], [ %6929, %6916 ]
  %6957 = phi float [ %6953, %6931 ], [ %6930, %6916 ]
  %6958 = call float @dx.op.binary.f32(i32 35, float %6956, float %6957)  ; FMax(a,b)
  %6959 = call float @dx.op.binary.f32(i32 35, float %6955, float %6958)  ; FMax(a,b)
  %6960 = fsub fast float 1.000000e+00, %6959
  %6961 = fmul fast float %6917, %6875
  %6962 = fmul fast float %6918, %6875
  %6963 = fmul fast float %6919, %6875
  %6964 = fsub fast float 1.000000e+00, %6808
  %6965 = bitcast float %6964 to i32
  %6966 = sitofp i32 %6965 to float
  %6967 = fmul fast float %6966, 5.000000e+00
  %6968 = fadd fast float %6967, 0xC1EFBF8940000000
  %6969 = fptosi float %6968 to i32
  %6970 = bitcast i32 %6969 to float
  %6971 = fmul fast float %6970, %3862
  %6972 = fmul fast float %6960, %6971
  %6973 = fmul fast float %6972, %5256
  %6974 = fmul fast float %6972, %5257
  %6975 = fmul fast float %6972, %5258
  %6976 = fadd fast float %6973, %6961
  %6977 = fadd fast float %6974, %6962
  %6978 = fadd fast float %6975, %6963
  %6979 = fmul fast float %6796, %3895
  %6980 = fmul fast float %6979, %6814
  %6981 = fmul fast float %6980, %6960
  %6982 = fmul fast float %6797, %3895
  %6983 = fmul fast float %6982, %6814
  %6984 = fmul fast float %6983, %6960
  %6985 = fmul fast float %6798, %3895
  %6986 = fmul fast float %6985, %6814
  %6987 = fmul fast float %6986, %6960
  %6988 = fadd fast float %6981, %6475
  %6989 = fadd fast float %6984, %6476
  %6990 = fadd fast float %6987, %6477
  %6991 = fmul fast float %6980, %6976
  %6992 = fmul fast float %6983, %6977
  %6993 = fmul fast float %6986, %6978
  %6994 = fadd fast float %6991, %6472
  %6995 = fadd fast float %6992, %6473
  %6996 = fadd fast float %6993, %6474
  br label %6604

; <label>:6997                                    ; preds = %6604
  br label %6998

; <label>:6998                                    ; preds = %6997, %6438
  %6999 = phi float [ %6440, %6438 ], [ %6605, %6997 ]
  %7000 = phi float [ %6441, %6438 ], [ %6606, %6997 ]
  %7001 = phi float [ %6442, %6438 ], [ %6607, %6997 ]
  %7002 = phi float [ %6443, %6438 ], [ %6608, %6997 ]
  %7003 = phi float [ %6444, %6438 ], [ %6609, %6997 ]
  %7004 = phi float [ %6445, %6438 ], [ %6610, %6997 ]
  %7005 = add i32 %6439, 1
  %7006 = icmp ugt i32 %7005, %6435
  br i1 %7006, label %7007, label %6438

; <label>:7007                                    ; preds = %6998
  br label %7008

; <label>:7008                                    ; preds = %7007, %6388, %6378
  %7009 = phi float [ %6379, %6378 ], [ %6379, %6388 ], [ %6999, %7007 ]
  %7010 = phi float [ %6380, %6378 ], [ %6380, %6388 ], [ %7000, %7007 ]
  %7011 = phi float [ %6381, %6378 ], [ %6381, %6388 ], [ %7001, %7007 ]
  %7012 = phi float [ %6382, %6378 ], [ %6382, %6388 ], [ %7002, %7007 ]
  %7013 = phi float [ %6383, %6378 ], [ %6383, %6388 ], [ %7003, %7007 ]
  %7014 = phi float [ %6384, %6378 ], [ %6384, %6388 ], [ %7004, %7007 ]
  %7015 = fmul fast float %3895, %3895
  %7016 = fsub fast float 1.000000e+00, %7015
  %7017 = call float @dx.op.dot3.f32(i32 55, float %7016, float %7016, float %7016, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7018 = fsub fast float 1.000000e+00, %7017
  %7019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7020 = extractvalue %dx.types.CBufRet.f32 %7019, 0
  %7021 = fmul fast float %7020, %5262
  %7022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7023 = extractvalue %dx.types.CBufRet.f32 %7022, 3
  %7024 = fsub fast float 1.000000e+00, %3866
  %7025 = call float @dx.op.unary.f32(i32 7, float %7024)  ; Saturate(value)
  %7026 = fadd fast float %7014, %3864
  %7027 = fmul fast float %7026, %3866
  %7028 = fmul fast float %7025, %7023
  %7029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7030 = extractvalue %dx.types.CBufRet.f32 %7029, 3
  %7031 = fmul fast float %7012, %5070
  %7032 = fmul fast float %7013, %5071
  %7033 = fmul fast float %7014, %5072
  %7034 = fcmp fast ogt float %95, %245
  %7035 = and i1 %7034, %4298
  %7036 = or i1 %4304, %7035
  %7037 = icmp eq i32 %4297, 2
  %7038 = fcmp fast ole float %95, %245
  %7039 = and i1 %7038, %7037
  %7040 = or i1 %7039, %7036
  br i1 %7035, label %7041, label %7298

; <label>:7041                                    ; preds = %7008
  %7042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7043 = extractvalue %dx.types.CBufRet.f32 %7042, 2
  %7044 = extractvalue %dx.types.CBufRet.f32 %7042, 3
  %7045 = fmul fast float %7043, %104
  %7046 = fmul fast float %7044, %105
  %7047 = call float @dx.op.unary.f32(i32 7, float %7045)  ; Saturate(value)
  %7048 = call float @dx.op.unary.f32(i32 7, float %7046)  ; Saturate(value)
  %7049 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7047, float %7048, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7050 = extractvalue %dx.types.ResRet.f32 %7049, 0
  %7051 = extractvalue %dx.types.ResRet.f32 %7049, 1
  %7052 = extractvalue %dx.types.ResRet.f32 %7049, 2
  %7053 = extractvalue %dx.types.ResRet.f32 %7049, 3
  %7054 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7047, float %7048, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7055 = extractvalue %dx.types.ResRet.f32 %7054, 0
  %7056 = extractvalue %dx.types.ResRet.f32 %7054, 1
  %7057 = extractvalue %dx.types.ResRet.f32 %7054, 2
  %7058 = extractvalue %dx.types.ResRet.f32 %7054, 3
  %7059 = call float @dx.op.binary.f32(i32 35, float %7051, float %7052)  ; FMax(a,b)
  %7060 = call float @dx.op.binary.f32(i32 35, float %7050, float %7059)  ; FMax(a,b)
  %7061 = call float @dx.op.binary.f32(i32 35, float %7060, float %7053)  ; FMax(a,b)
  %7062 = call float @dx.op.binary.f32(i32 36, float %7056, float %7057)  ; FMin(a,b)
  %7063 = call float @dx.op.binary.f32(i32 36, float %7055, float %7062)  ; FMin(a,b)
  %7064 = call float @dx.op.binary.f32(i32 36, float %7063, float %7058)  ; FMin(a,b)
  %7065 = fmul fast float %7061, 2.550000e+02
  %7066 = fadd fast float %7065, 0x3F70101020000000
  %7067 = fptoui float %7066 to i32
  %7068 = fmul fast float %7064, 2.550000e+02
  %7069 = fadd fast float %7068, 0x3F70101020000000
  %7070 = fptoui float %7069 to i32
  %7071 = icmp ult i32 %7067, %7070
  br i1 %7071, label %7072, label %7240

; <label>:7072                                    ; preds = %7041
  %7073 = fcmp fast ogt float %94, 9.843750e-01
  %7074 = fadd fast float %95, -4.000000e+00
  %7075 = select i1 %7073, float -4.000000e+00, float %7074
  %7076 = call float @dx.op.binary.f32(i32 35, float %7075, float 0.000000e+00)  ; FMax(a,b)
  %7077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7078 = extractvalue %dx.types.CBufRet.f32 %7077, 0
  %7079 = fadd fast float %7078, %7076
  %7080 = extractvalue %dx.types.CBufRet.f32 %7077, 2
  %7081 = fmul fast float %7079, %7080
  %7082 = call float @dx.op.unary.f32(i32 23, float %7081)  ; Log(value)
  %7083 = extractvalue %dx.types.CBufRet.f32 %7077, 3
  %7084 = fmul fast float %7083, %7082
  %7085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7086 = extractvalue %dx.types.CBufRet.f32 %7085, 2
  %7087 = fmul fast float %7084, %7086
  %7088 = call float @dx.op.unary.f32(i32 7, float %7087)  ; Saturate(value)
  %7089 = uitofp i32 %7067 to float
  %7090 = uitofp i32 %7070 to float
  %7091 = fadd fast float %7089, 5.000000e-01
  %7092 = fadd fast float %7090, 5.000000e-01
  %7093 = fmul fast float %7086, %7091
  %7094 = fmul fast float %7086, %7092
  %7095 = fadd fast float %7093, 0x3F0FFB4800000000
  %7096 = fadd fast float %7094, 0xBF0FFB4800000000
  %7097 = call float @dx.op.binary.f32(i32 35, float %7088, float %7095)  ; FMax(a,b)
  %7098 = call float @dx.op.binary.f32(i32 36, float %7097, float %7096)  ; FMin(a,b)
  %7099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7100 = extractvalue %dx.types.CBufRet.f32 %7099, 1
  %7101 = extractvalue %dx.types.CBufRet.f32 %7099, 2
  %7102 = extractvalue %dx.types.CBufRet.f32 %7099, 0
  %7103 = fmul fast float %7100, %7098
  %7104 = fadd fast float %7102, %7103
  %7105 = fadd fast float %7102, %7101
  %7106 = fsub fast float %7100, %7101
  %7107 = fadd fast float %7106, %7102
  %7108 = call float @dx.op.binary.f32(i32 35, float %7104, float %7105)  ; FMax(a,b)
  %7109 = call float @dx.op.binary.f32(i32 36, float %7108, float %7107)  ; FMin(a,b)
  %7110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7047, float %7048, float %7109, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7111 = extractvalue %dx.types.ResRet.f32 %7110, 0
  %7112 = extractvalue %dx.types.ResRet.f32 %7110, 1
  %7113 = extractvalue %dx.types.ResRet.f32 %7110, 2
  %7114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7115 = extractvalue %dx.types.CBufRet.i32 %7114, 0
  %7116 = extractvalue %dx.types.CBufRet.i32 %7114, 1
  %7117 = uitofp i32 %7115 to float
  %7118 = uitofp i32 %7116 to float
  %7119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7120 = extractvalue %dx.types.CBufRet.f32 %7119, 0
  %7121 = extractvalue %dx.types.CBufRet.f32 %7119, 1
  %7122 = fmul fast float %7117, %7047
  %7123 = fmul fast float %7118, %7048
  %7124 = fadd fast float %7122, -5.000000e-01
  %7125 = fadd fast float %7123, -5.000000e-01
  %7126 = call float @dx.op.unary.f32(i32 22, float %7124)  ; Frc(value)
  %7127 = call float @dx.op.unary.f32(i32 22, float %7125)  ; Frc(value)
  %7128 = fmul fast float %7126, %7126
  %7129 = fmul fast float %7128, %7126
  %7130 = fsub fast float 3.000000e+00, %7126
  %7131 = fmul fast float %7128, %7130
  %7132 = fmul fast float %7126, 3.000000e+00
  %7133 = fmul fast float %7129, 3.000000e+00
  %7134 = fmul fast float %7128, 6.000000e+00
  %7135 = fsub fast float %7133, %7134
  %7136 = fadd fast float %7135, 4.000000e+00
  %7137 = fmul fast float %7136, 0x3FC5555560000000
  %7138 = fmul fast float %7129, -3.000000e+00
  %7139 = fadd fast float %7128, %7126
  %7140 = fmul fast float %7139, 3.000000e+00
  %7141 = fadd fast float %7138, 1.000000e+00
  %7142 = fadd fast float %7141, %7140
  %7143 = fmul fast float %7129, 0x3FC5555560000000
  %7144 = fmul fast float %7127, %7127
  %7145 = fmul fast float %7144, %7127
  %7146 = fsub fast float 3.000000e+00, %7127
  %7147 = fmul fast float %7144, %7146
  %7148 = fmul fast float %7127, 3.000000e+00
  %7149 = fmul fast float %7145, 3.000000e+00
  %7150 = fmul fast float %7144, 6.000000e+00
  %7151 = fsub fast float %7149, %7150
  %7152 = fadd fast float %7151, 4.000000e+00
  %7153 = fmul fast float %7152, 0x3FC5555560000000
  %7154 = fmul fast float %7145, -3.000000e+00
  %7155 = fadd fast float %7144, %7127
  %7156 = fmul fast float %7155, 3.000000e+00
  %7157 = fadd fast float %7154, 1.000000e+00
  %7158 = fadd fast float %7157, %7156
  %7159 = fmul fast float %7145, 0x3FC5555560000000
  %7160 = fadd fast float %7126, 1.000000e+00
  %7161 = fsub fast float 1.000000e+00, %7132
  %7162 = fadd fast float %7161, %7131
  %7163 = fadd fast float %7162, %7136
  %7164 = fmul fast float %7163, 0x3FC5555560000000
  %7165 = fdiv fast float %7137, %7164
  %7166 = fsub fast float %7160, %7165
  %7167 = fsub fast float 1.000000e+00, %7126
  %7168 = fadd fast float %7142, %7129
  %7169 = fmul fast float %7168, 0x3FC5555560000000
  %7170 = fdiv fast float %7143, %7169
  %7171 = fadd fast float %7167, %7170
  %7172 = fadd fast float %7127, 1.000000e+00
  %7173 = fsub fast float 1.000000e+00, %7148
  %7174 = fadd fast float %7173, %7147
  %7175 = fadd fast float %7174, %7152
  %7176 = fmul fast float %7175, 0x3FC5555560000000
  %7177 = fdiv fast float %7153, %7176
  %7178 = fsub fast float %7172, %7177
  %7179 = fsub fast float 1.000000e+00, %7127
  %7180 = fadd fast float %7158, %7145
  %7181 = fmul fast float %7180, 0x3FC5555560000000
  %7182 = fdiv fast float %7159, %7181
  %7183 = fadd fast float %7182, %7179
  %7184 = fmul fast float %7166, %7120
  %7185 = fsub fast float %7047, %7184
  %7186 = fmul fast float %7171, %7120
  %7187 = fadd fast float %7186, %7047
  %7188 = fmul fast float %7183, %7121
  %7189 = fadd fast float %7188, %7048
  %7190 = fmul fast float %7178, %7121
  %7191 = fsub fast float %7048, %7190
  %7192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7185, float %7191, float %7109, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7193 = extractvalue %dx.types.ResRet.f32 %7192, 0
  %7194 = extractvalue %dx.types.ResRet.f32 %7192, 1
  %7195 = extractvalue %dx.types.ResRet.f32 %7192, 2
  %7196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7187, float %7191, float %7109, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7197 = extractvalue %dx.types.ResRet.f32 %7196, 0
  %7198 = extractvalue %dx.types.ResRet.f32 %7196, 1
  %7199 = extractvalue %dx.types.ResRet.f32 %7196, 2
  %7200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7185, float %7189, float %7109, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7201 = extractvalue %dx.types.ResRet.f32 %7200, 0
  %7202 = extractvalue %dx.types.ResRet.f32 %7200, 1
  %7203 = extractvalue %dx.types.ResRet.f32 %7200, 2
  %7204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7187, float %7189, float %7109, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7205 = extractvalue %dx.types.ResRet.f32 %7204, 0
  %7206 = extractvalue %dx.types.ResRet.f32 %7204, 1
  %7207 = extractvalue %dx.types.ResRet.f32 %7204, 2
  %7208 = fsub fast float %7201, %7193
  %7209 = fsub fast float %7202, %7194
  %7210 = fsub fast float %7203, %7195
  %7211 = fmul fast float %7208, %7181
  %7212 = fmul fast float %7209, %7181
  %7213 = fmul fast float %7210, %7181
  %7214 = fadd fast float %7211, %7193
  %7215 = fadd fast float %7212, %7194
  %7216 = fadd fast float %7213, %7195
  %7217 = fsub fast float %7205, %7197
  %7218 = fsub fast float %7206, %7198
  %7219 = fsub fast float %7207, %7199
  %7220 = fmul fast float %7217, %7181
  %7221 = fmul fast float %7218, %7181
  %7222 = fmul fast float %7219, %7181
  %7223 = fsub fast float %7197, %7214
  %7224 = fadd fast float %7223, %7220
  %7225 = fsub fast float %7198, %7215
  %7226 = fadd fast float %7225, %7221
  %7227 = fsub fast float %7199, %7216
  %7228 = fadd fast float %7227, %7222
  %7229 = fmul fast float %7224, %7169
  %7230 = fmul fast float %7226, %7169
  %7231 = fmul fast float %7228, %7169
  %7232 = fadd fast float %7229, %7214
  %7233 = fadd fast float %7230, %7215
  %7234 = fadd fast float %7231, %7216
  %7235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7236 = extractvalue %dx.types.CBufRet.f32 %7235, 1
  %7237 = fmul fast float %7232, %7236
  %7238 = fmul fast float %7233, %7236
  %7239 = fmul fast float %7234, %7236
  br label %7240

; <label>:7240                                    ; preds = %7072, %7041
  %7241 = phi float [ %7111, %7072 ], [ 1.000000e+00, %7041 ]
  %7242 = phi float [ %7112, %7072 ], [ 1.000000e+00, %7041 ]
  %7243 = phi float [ %7113, %7072 ], [ 1.000000e+00, %7041 ]
  %7244 = phi float [ %7237, %7072 ], [ 0.000000e+00, %7041 ]
  %7245 = phi float [ %7238, %7072 ], [ 0.000000e+00, %7041 ]
  %7246 = phi float [ %7239, %7072 ], [ 0.000000e+00, %7041 ]
  %7247 = fmul fast float %7244, %7018
  %7248 = fmul fast float %7245, %7018
  %7249 = fmul fast float %7246, %7018
  %7250 = call float @dx.op.dot3.f32(i32 55, float %7241, float %7242, float %7243, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7251 = call float @dx.op.dot3.f32(i32 55, float %7247, float %7248, float %7249, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7252 = select i1 %282, float %7250, float %7241
  %7253 = select i1 %282, float %7250, float %7242
  %7254 = select i1 %282, float 1.000000e+00, float %7243
  %7255 = select i1 %282, float %7251, float %7247
  %7256 = select i1 %282, float 0.000000e+00, float %7248
  %7257 = select i1 %282, float 0.000000e+00, float %7249
  %7258 = fmul fast float %7252, %7031
  %7259 = fmul fast float %7253, %7032
  %7260 = fmul fast float %7254, %7033
  %7261 = fadd fast float %7258, %7255
  %7262 = fadd fast float %7259, %7256
  %7263 = fadd fast float %7257, %7260
  %7264 = fmul fast float %7252, %7009
  %7265 = fmul fast float %7253, %7010
  %7266 = fmul fast float %7254, %7011
  %7267 = fmul fast float %140, %7043
  %7268 = fmul fast float %142, %7044
  %7269 = fsub fast float 1.000000e+00, %7267
  %7270 = fsub fast float 1.000000e+00, %7268
  %7271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7272 = extractvalue %dx.types.CBufRet.f32 %7271, 0
  %7273 = extractvalue %dx.types.CBufRet.f32 %7271, 1
  %7274 = extractvalue %dx.types.CBufRet.f32 %7271, 2
  %7275 = fmul fast float %7269, %7272
  %7276 = fmul fast float %7269, %7273
  %7277 = fmul fast float %7269, %7274
  %7278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7279 = extractvalue %dx.types.CBufRet.f32 %7278, 0
  %7280 = extractvalue %dx.types.CBufRet.f32 %7278, 1
  %7281 = extractvalue %dx.types.CBufRet.f32 %7278, 2
  %7282 = fmul fast float %7270, %7279
  %7283 = fmul fast float %7270, %7280
  %7284 = fmul fast float %7270, %7281
  %7285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7286 = extractvalue %dx.types.CBufRet.f32 %7285, 0
  %7287 = extractvalue %dx.types.CBufRet.f32 %7285, 1
  %7288 = extractvalue %dx.types.CBufRet.f32 %7285, 2
  %7289 = fadd fast float %7282, %7286
  %7290 = fadd fast float %7289, %7275
  %7291 = fadd fast float %7283, %7287
  %7292 = fadd fast float %7291, %7276
  %7293 = fadd fast float %7284, %7288
  %7294 = fadd fast float %7293, %7277
  %7295 = fmul fast float %7290, %245
  %7296 = fmul fast float %7292, %245
  %7297 = fmul fast float %7294, %245
  br label %7298

; <label>:7298                                    ; preds = %7240, %7008
  %7299 = phi float [ %7295, %7240 ], [ %191, %7008 ]
  %7300 = phi float [ %7296, %7240 ], [ %192, %7008 ]
  %7301 = phi float [ %7297, %7240 ], [ %193, %7008 ]
  %7302 = phi float [ %245, %7240 ], [ %95, %7008 ]
  %7303 = phi float [ %7261, %7240 ], [ %7031, %7008 ]
  %7304 = phi float [ %7262, %7240 ], [ %7032, %7008 ]
  %7305 = phi float [ %7263, %7240 ], [ %7033, %7008 ]
  %7306 = phi float [ %7264, %7240 ], [ %7009, %7008 ]
  %7307 = phi float [ %7265, %7240 ], [ %7010, %7008 ]
  %7308 = phi float [ %7266, %7240 ], [ %7011, %7008 ]
  %7309 = phi float [ %7241, %7240 ], [ 1.000000e+00, %7008 ]
  br i1 %7040, label %8464, label %7310

; <label>:7310                                    ; preds = %7298
  %7311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7312 = extractvalue %dx.types.CBufRet.f32 %7311, 0
  %7313 = extractvalue %dx.types.CBufRet.f32 %7311, 1
  %7314 = extractvalue %dx.types.CBufRet.f32 %7311, 2
  %7315 = extractvalue %dx.types.CBufRet.f32 %7311, 3
  %7316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7317 = extractvalue %dx.types.CBufRet.f32 %7316, 0
  %7318 = extractvalue %dx.types.CBufRet.f32 %7316, 1
  %7319 = extractvalue %dx.types.CBufRet.f32 %7316, 2
  %7320 = extractvalue %dx.types.CBufRet.f32 %7316, 3
  %7321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7322 = extractvalue %dx.types.CBufRet.f32 %7321, 0
  %7323 = extractvalue %dx.types.CBufRet.f32 %7321, 1
  %7324 = extractvalue %dx.types.CBufRet.f32 %7321, 2
  %7325 = extractvalue %dx.types.CBufRet.f32 %7321, 3
  %7326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7327 = extractvalue %dx.types.CBufRet.f32 %7326, 0
  %7328 = extractvalue %dx.types.CBufRet.f32 %7326, 1
  %7329 = extractvalue %dx.types.CBufRet.f32 %7326, 2
  %7330 = extractvalue %dx.types.CBufRet.f32 %7326, 3
  %7331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7332 = extractvalue %dx.types.CBufRet.f32 %7331, 3
  %7333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7334 = extractvalue %dx.types.CBufRet.f32 %7333, 3
  %7335 = extractvalue %dx.types.CBufRet.f32 %7333, 0
  %7336 = extractvalue %dx.types.CBufRet.f32 %7333, 1
  %7337 = extractvalue %dx.types.CBufRet.f32 %7333, 2
  %7338 = fcmp fast olt float %7337, -5.000000e-01
  %7339 = call float @dx.op.dot3.f32(i32 55, float %7299, float %7300, float %7301, float %7299, float %7300, float %7301)  ; Dot3(ax,ay,az,bx,by,bz)
  %7340 = call float @dx.op.unary.f32(i32 25, float %7339)  ; Rsqrt(value)
  %7341 = fmul fast float %7340, %7339
  %7342 = fmul fast float %7340, %7299
  %7343 = fmul fast float %7340, %7300
  %7344 = fmul fast float %7340, %7301
  %7345 = fadd fast float %7341, %7315
  %7346 = call float @dx.op.dot3.f32(i32 55, float %7342, float %7343, float %7344, float %7312, float %7313, float %7314)  ; Dot3(ax,ay,az,bx,by,bz)
  %7347 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7348 = extractvalue %dx.types.CBufRet.i32 %7347, 1
  %7349 = and i32 %7348, 1
  %7350 = icmp ne i32 %7349, 0
  %7351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7352 = extractvalue %dx.types.CBufRet.f32 %7351, 2
  %7353 = fcmp fast ogt float %7352, 0.000000e+00
  %7354 = and i1 %7350, %7353
  br i1 %7354, label %7355, label %7761, !dx.controlflow.hints !123

; <label>:7355                                    ; preds = %7310
  %7356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7357 = extractvalue %dx.types.CBufRet.f32 %7356, 3
  %7358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7359 = extractvalue %dx.types.CBufRet.f32 %7358, 2
  %7360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7361 = extractvalue %dx.types.CBufRet.f32 %7360, 2
  %7362 = fsub fast float %7359, %7361
  %7363 = and i32 %7348, 2
  %7364 = extractvalue %dx.types.CBufRet.i32 %7347, 0
  %7365 = call i32 @dx.op.binary.i32(i32 40, i32 %7364, i32 3)  ; UMin(a,b)
  %7366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7367 = extractvalue %dx.types.CBufRet.f32 %7366, 0
  %7368 = extractvalue %dx.types.CBufRet.f32 %7366, 1
  %7369 = extractvalue %dx.types.CBufRet.f32 %7360, 0
  %7370 = extractvalue %dx.types.CBufRet.f32 %7360, 1
  %7371 = fsub fast float %7367, %7369
  %7372 = fsub fast float %7368, %7370
  %7373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7374 = extractvalue %dx.types.CBufRet.f32 %7373, 0
  %7375 = fcmp fast ogt float %7374, 0.000000e+00
  %7376 = fsub fast float -0.000000e+00, %7371
  %7377 = fsub fast float -0.000000e+00, %7372
  %7378 = call float @dx.op.dot2.f32(i32 54, float %7342, float %7343, float %7342, float %7343)  ; Dot2(ax,ay,bx,by)
  %7379 = call float @dx.op.dot2.f32(i32 54, float %7342, float %7343, float %7376, float %7377)  ; Dot2(ax,ay,bx,by)
  %7380 = fmul fast float %7379, 2.000000e+00
  %7381 = call float @dx.op.dot2.f32(i32 54, float %7376, float %7377, float %7376, float %7377)  ; Dot2(ax,ay,bx,by)
  %7382 = fmul fast float %7374, %7374
  %7383 = fsub fast float %7381, %7382
  %7384 = fmul fast float %7380, %7380
  %7385 = fmul fast float %7378, 4.000000e+00
  %7386 = fmul fast float %7385, %7383
  %7387 = fsub fast float %7384, %7386
  %7388 = fcmp fast ogt float %7387, 0.000000e+00
  br i1 %7388, label %7389, label %7404

; <label>:7389                                    ; preds = %7355
  %7390 = fcmp fast ogt float %7380, 0.000000e+00
  %7391 = call float @dx.op.unary.f32(i32 24, float %7387)  ; Sqrt(value)
  %7392 = fsub fast float -0.000000e+00, %7391
  %7393 = select i1 %7390, float %7391, float %7392
  %7394 = fadd fast float %7393, %7380
  %7395 = fmul float %7394, -5.000000e-01
  %7396 = fdiv fast float %7395, %7378
  %7397 = call float @dx.op.binary.f32(i32 35, float %7396, float 0.000000e+00)  ; FMax(a,b)
  %7398 = call float @dx.op.binary.f32(i32 36, float %7341, float %7397)  ; FMin(a,b)
  %7399 = fdiv fast float %7383, %7395
  %7400 = call float @dx.op.binary.f32(i32 35, float %7399, float 0.000000e+00)  ; FMax(a,b)
  %7401 = call float @dx.op.binary.f32(i32 36, float %7341, float %7400)  ; FMin(a,b)
  %7402 = call float @dx.op.binary.f32(i32 36, float %7398, float %7401)  ; FMin(a,b)
  %7403 = call float @dx.op.binary.f32(i32 35, float %7398, float %7401)  ; FMax(a,b)
  br label %7404

; <label>:7404                                    ; preds = %7389, %7355
  %7405 = phi float [ %7403, %7389 ], [ -1.000000e+00, %7355 ]
  %7406 = phi float [ %7402, %7389 ], [ -1.000000e+00, %7355 ]
  %7407 = phi i1 [ true, %7389 ], [ false, %7355 ]
  %7408 = and i1 %7375, %7407
  br i1 %7408, label %7409, label %7411

; <label>:7409                                    ; preds = %7404
  %7410 = fcmp fast oeq float %7406, %7405
  br i1 %7410, label %7714, label %7412

; <label>:7411                                    ; preds = %7404
  br i1 %7375, label %7714, label %7412

; <label>:7412                                    ; preds = %7411, %7409
  %7413 = phi float [ %7341, %7411 ], [ %7405, %7409 ]
  %7414 = phi float [ 0.000000e+00, %7411 ], [ %7406, %7409 ]
  %7415 = icmp ne i32 %7363, 0
  %7416 = fmul fast float %7413, %7344
  %7417 = fadd fast float %7416, %7357
  %7418 = fmul fast float %7417, %7413
  %7419 = select i1 %7415, float 0.000000e+00, float %7418
  %7420 = fcmp fast oeq float %7344, 0.000000e+00
  %7421 = fdiv fast float %7362, %7344
  %7422 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7421)  ; FMax(a,b)
  %7423 = select i1 %7420, float %7413, float %7422
  %7424 = call float @dx.op.binary.f32(i32 36, float %7413, float %7423)  ; FMin(a,b)
  %7425 = fcmp fast ogt float %7344, 0.000000e+00
  %7426 = fcmp fast olt float %7362, 0.000000e+00
  br i1 %7425, label %7427, label %7484

; <label>:7427                                    ; preds = %7412
  %7428 = icmp eq i32 %7363, 0
  br i1 %7426, label %7429, label %7473

; <label>:7429                                    ; preds = %7427
  %7430 = select i1 %7428, float %7413, float 0.000000e+00
  %7431 = fsub fast float -0.000000e+00, %7430
  %7432 = call float @dx.op.unary.f32(i32 6, float %7431)  ; FAbs(value)
  %7433 = fmul fast float %7430, %7344
  %7434 = fadd fast float %7433, %7357
  %7435 = fmul fast float %7432, %7434
  %7436 = fsub fast float %7419, %7435
  %7437 = fsub fast float %7413, %7432
  %7438 = select i1 %7428, float %7437, float 0.000000e+00
  %7439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7440 = extractvalue %dx.types.CBufRet.f32 %7439, 0
  %7441 = extractvalue %dx.types.CBufRet.f32 %7439, 1
  %7442 = extractvalue %dx.types.CBufRet.f32 %7439, 2
  %7443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7444 = extractvalue %dx.types.CBufRet.f32 %7443, 0
  %7445 = extractvalue %dx.types.CBufRet.f32 %7443, 1
  %7446 = extractvalue %dx.types.CBufRet.f32 %7443, 2
  %7447 = extractvalue %dx.types.CBufRet.f32 %7443, 3
  %7448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7449 = extractvalue %dx.types.CBufRet.f32 %7448, 3
  %7450 = call float @dx.op.binary.f32(i32 36, float %7436, float %7449)  ; FMin(a,b)
  %7451 = fmul fast float %7447, %7438
  %7452 = call float @dx.op.unary.f32(i32 7, float %7451)  ; Saturate(value)
  %7453 = fsub fast float %7444, %7440
  %7454 = fsub fast float %7445, %7441
  %7455 = fsub fast float %7446, %7442
  %7456 = fmul fast float %7452, %7453
  %7457 = fmul fast float %7452, %7454
  %7458 = fmul fast float %7452, %7455
  %7459 = fadd fast float %7456, %7440
  %7460 = fadd fast float %7457, %7441
  %7461 = fadd fast float %7458, %7442
  %7462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7463 = extractvalue %dx.types.CBufRet.f32 %7462, 0
  %7464 = extractvalue %dx.types.CBufRet.f32 %7462, 1
  %7465 = fadd fast float %7464, %7463
  %7466 = call float @dx.op.unary.f32(i32 7, float %7465)  ; Saturate(value)
  %7467 = extractvalue %dx.types.CBufRet.f32 %7462, 2
  %7468 = extractvalue %dx.types.CBufRet.f32 %7462, 3
  %7469 = fadd fast float %7468, %7467
  %7470 = call float @dx.op.unary.f32(i32 7, float %7469)  ; Saturate(value)
  %7471 = fmul fast float %7466, %7450
  %7472 = fmul fast float %7471, %7470
  br label %7714

; <label>:7473                                    ; preds = %7427
  br i1 %7428, label %7474, label %7495

; <label>:7474                                    ; preds = %7473
  %7475 = call float @dx.op.binary.f32(i32 36, float %7424, float %7414)  ; FMin(a,b)
  %7476 = fsub fast float %7424, %7475
  %7477 = fsub fast float %7476, %7413
  %7478 = call float @dx.op.unary.f32(i32 6, float %7477)  ; FAbs(value)
  %7479 = fadd fast float %7476, %7413
  %7480 = fmul fast float %7479, %7344
  %7481 = fadd fast float %7480, %7357
  %7482 = fmul fast float %7481, %7478
  %7483 = fsub fast float %7419, %7482
  br label %7495

; <label>:7484                                    ; preds = %7412
  br i1 %7426, label %7485, label %7495

; <label>:7485                                    ; preds = %7484
  %7486 = call float @dx.op.binary.f32(i32 35, float %7414, float %7424)  ; FMax(a,b)
  %7487 = icmp eq i32 %7363, 0
  %7488 = select i1 %7487, float %7424, float 0.000000e+00
  %7489 = fsub fast float -0.000000e+00, %7488
  %7490 = call float @dx.op.unary.f32(i32 6, float %7489)  ; FAbs(value)
  %7491 = fmul fast float %7488, %7344
  %7492 = fadd fast float %7491, %7357
  %7493 = fmul fast float %7490, %7492
  %7494 = fsub fast float %7419, %7493
  br label %7495

; <label>:7495                                    ; preds = %7485, %7484, %7474, %7473
  %7496 = phi float [ %7414, %7473 ], [ %7414, %7474 ], [ %7486, %7485 ], [ %7414, %7484 ]
  %7497 = phi float [ 0.000000e+00, %7473 ], [ %7478, %7474 ], [ %7490, %7485 ], [ 0.000000e+00, %7484 ]
  %7498 = phi float [ %7419, %7473 ], [ %7483, %7474 ], [ %7494, %7485 ], [ %7419, %7484 ]
  %7499 = phi float [ %7424, %7473 ], [ %7424, %7474 ], [ %7413, %7485 ], [ %7413, %7484 ]
  %7500 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %7500, align 4, !tbaa !124, !noalias !126
  %7501 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %7501, align 4, !tbaa !124, !noalias !126
  %7502 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %7502, align 4, !tbaa !124, !noalias !126
  %7503 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %7503, align 4, !tbaa !124, !noalias !126
  %7504 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %7504, align 4, !tbaa !124, !noalias !126
  %7505 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %7505, align 4, !tbaa !124, !noalias !126
  %7506 = icmp sgt i32 %7365, 0
  br i1 %7506, label %7507, label %7568

; <label>:7507                                    ; preds = %7495
  br label %7508

; <label>:7508                                    ; preds = %7557, %7507
  %7509 = phi i32 [ %7558, %7557 ], [ 0, %7507 ]
  %7510 = phi i32 [ %7559, %7557 ], [ 0, %7507 ]
  %7511 = add nuw i32 %7510, 171
  %7512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7511)  ; CBufferLoadLegacy(handle,regIndex)
  %7513 = extractvalue %dx.types.CBufRet.f32 %7512, 0
  %7514 = extractvalue %dx.types.CBufRet.f32 %7512, 1
  %7515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7516 = extractvalue %dx.types.CBufRet.f32 %7515, 0
  %7517 = extractvalue %dx.types.CBufRet.f32 %7515, 1
  %7518 = fsub fast float %7513, %7516
  %7519 = fsub fast float %7514, %7517
  %7520 = extractvalue %dx.types.CBufRet.f32 %7512, 2
  %7521 = fsub fast float -0.000000e+00, %7518
  %7522 = fsub fast float -0.000000e+00, %7519
  %7523 = call float @dx.op.dot2.f32(i32 54, float %7342, float %7343, float %7521, float %7522)  ; Dot2(ax,ay,bx,by)
  %7524 = fmul fast float %7523, 2.000000e+00
  %7525 = call float @dx.op.dot2.f32(i32 54, float %7521, float %7522, float %7521, float %7522)  ; Dot2(ax,ay,bx,by)
  %7526 = fmul fast float %7520, %7520
  %7527 = fsub fast float %7525, %7526
  %7528 = fmul fast float %7524, %7524
  %7529 = fmul fast float %7385, %7527
  %7530 = fsub fast float %7528, %7529
  %7531 = fcmp fast ogt float %7530, 0.000000e+00
  br i1 %7531, label %7532, label %7547

; <label>:7532                                    ; preds = %7508
  %7533 = fcmp fast ogt float %7524, 0.000000e+00
  %7534 = call float @dx.op.unary.f32(i32 24, float %7530)  ; Sqrt(value)
  %7535 = fsub fast float -0.000000e+00, %7534
  %7536 = select i1 %7533, float %7534, float %7535
  %7537 = fadd fast float %7536, %7524
  %7538 = fmul float %7537, -5.000000e-01
  %7539 = fdiv fast float %7538, %7378
  %7540 = call float @dx.op.binary.f32(i32 35, float %7539, float 0.000000e+00)  ; FMax(a,b)
  %7541 = call float @dx.op.binary.f32(i32 36, float %7413, float %7540)  ; FMin(a,b)
  %7542 = fdiv fast float %7527, %7538
  %7543 = call float @dx.op.binary.f32(i32 35, float %7542, float 0.000000e+00)  ; FMax(a,b)
  %7544 = call float @dx.op.binary.f32(i32 36, float %7413, float %7543)  ; FMin(a,b)
  %7545 = call float @dx.op.binary.f32(i32 36, float %7541, float %7544)  ; FMin(a,b)
  %7546 = call float @dx.op.binary.f32(i32 35, float %7541, float %7544)  ; FMax(a,b)
  br label %7547

; <label>:7547                                    ; preds = %7532, %7508
  %7548 = phi float [ %7546, %7532 ], [ -1.000000e+00, %7508 ]
  %7549 = phi float [ %7545, %7532 ], [ -1.000000e+00, %7508 ]
  %7550 = phi i1 [ true, %7532 ], [ false, %7508 ]
  br i1 %7550, label %7551, label %7557

; <label>:7551                                    ; preds = %7547
  %7552 = call float @dx.op.binary.f32(i32 35, float %7496, float %7549)  ; FMax(a,b)
  %7553 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7510
  store float %7552, float* %7553, align 4, !tbaa !124, !noalias !126
  %7554 = call float @dx.op.binary.f32(i32 35, float %7496, float %7548)  ; FMax(a,b)
  %7555 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7510
  store float %7554, float* %7555, align 4, !tbaa !124, !noalias !126
  %7556 = add nsw i32 %7509, 1
  br label %7557

; <label>:7557                                    ; preds = %7551, %7547
  %7558 = phi i32 [ %7556, %7551 ], [ %7509, %7547 ]
  %7559 = add nuw nsw i32 %7510, 1
  %7560 = icmp eq i32 %7559, %7365
  br i1 %7560, label %7561, label %7508

; <label>:7561                                    ; preds = %7557
  %7562 = load float, float* %7502, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %7563 = load float, float* %7501, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  %7564 = load float, float* %7500, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  %7565 = load float, float* %7505, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %7566 = load float, float* %7504, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  %7567 = load float, float* %7503, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  br label %7568

; <label>:7568                                    ; preds = %7561, %7495
  %7569 = phi float [ -1.000000e+00, %7495 ], [ %7567, %7561 ]
  %7570 = phi float [ -1.000000e+00, %7495 ], [ %7566, %7561 ]
  %7571 = phi float [ -1.000000e+00, %7495 ], [ %7565, %7561 ]
  %7572 = phi float [ -1.000000e+00, %7495 ], [ %7564, %7561 ]
  %7573 = phi float [ -1.000000e+00, %7495 ], [ %7563, %7561 ]
  %7574 = phi float [ -1.000000e+00, %7495 ], [ %7562, %7561 ]
  %7575 = phi i32 [ 0, %7495 ], [ %7558, %7561 ]
  %7576 = call float @dx.op.binary.f32(i32 36, float %7573, float %7574)  ; FMin(a,b)
  %7577 = call float @dx.op.binary.f32(i32 36, float %7572, float %7576)  ; FMin(a,b)
  %7578 = call float @dx.op.binary.f32(i32 35, float %7572, float %7573)  ; FMax(a,b)
  %7579 = call float @dx.op.binary.f32(i32 36, float %7578, float %7574)  ; FMin(a,b)
  %7580 = call float @dx.op.binary.f32(i32 36, float %7572, float %7573)  ; FMin(a,b)
  %7581 = call float @dx.op.binary.f32(i32 35, float %7580, float %7579)  ; FMax(a,b)
  %7582 = call float @dx.op.binary.f32(i32 35, float %7573, float %7574)  ; FMax(a,b)
  %7583 = call float @dx.op.binary.f32(i32 35, float %7572, float %7582)  ; FMax(a,b)
  store float %7577, float* %7500, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  store float %7581, float* %7501, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  store float %7583, float* %7502, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %7584 = call float @dx.op.binary.f32(i32 36, float %7570, float %7571)  ; FMin(a,b)
  %7585 = call float @dx.op.binary.f32(i32 36, float %7569, float %7584)  ; FMin(a,b)
  %7586 = call float @dx.op.binary.f32(i32 35, float %7569, float %7570)  ; FMax(a,b)
  %7587 = call float @dx.op.binary.f32(i32 36, float %7586, float %7571)  ; FMin(a,b)
  %7588 = call float @dx.op.binary.f32(i32 36, float %7569, float %7570)  ; FMin(a,b)
  %7589 = call float @dx.op.binary.f32(i32 35, float %7588, float %7587)  ; FMax(a,b)
  %7590 = call float @dx.op.binary.f32(i32 35, float %7570, float %7571)  ; FMax(a,b)
  %7591 = call float @dx.op.binary.f32(i32 35, float %7569, float %7590)  ; FMax(a,b)
  store float %7585, float* %7503, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  store float %7589, float* %7504, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  store float %7591, float* %7505, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %7592 = sub nsw i32 3, %7575
  %7593 = icmp sgt i32 %7592, 2
  br i1 %7593, label %7594, label %7632

; <label>:7594                                    ; preds = %7568
  %7595 = icmp eq i32 %7363, 0
  %7596 = fsub fast float %7413, %7497
  %7597 = select i1 %7595, float %7596, float %7497
  %7598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7599 = extractvalue %dx.types.CBufRet.f32 %7598, 0
  %7600 = extractvalue %dx.types.CBufRet.f32 %7598, 1
  %7601 = extractvalue %dx.types.CBufRet.f32 %7598, 2
  %7602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7603 = extractvalue %dx.types.CBufRet.f32 %7602, 0
  %7604 = extractvalue %dx.types.CBufRet.f32 %7602, 1
  %7605 = extractvalue %dx.types.CBufRet.f32 %7602, 2
  %7606 = extractvalue %dx.types.CBufRet.f32 %7602, 3
  %7607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7608 = extractvalue %dx.types.CBufRet.f32 %7607, 3
  %7609 = call float @dx.op.binary.f32(i32 36, float %7498, float %7608)  ; FMin(a,b)
  %7610 = fmul fast float %7606, %7597
  %7611 = call float @dx.op.unary.f32(i32 7, float %7610)  ; Saturate(value)
  %7612 = fsub fast float %7603, %7599
  %7613 = fsub fast float %7604, %7600
  %7614 = fsub fast float %7605, %7601
  %7615 = fmul fast float %7611, %7612
  %7616 = fmul fast float %7611, %7613
  %7617 = fmul fast float %7611, %7614
  %7618 = fadd fast float %7615, %7599
  %7619 = fadd fast float %7616, %7600
  %7620 = fadd fast float %7617, %7601
  %7621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7622 = extractvalue %dx.types.CBufRet.f32 %7621, 0
  %7623 = extractvalue %dx.types.CBufRet.f32 %7621, 1
  %7624 = fadd fast float %7623, %7622
  %7625 = call float @dx.op.unary.f32(i32 7, float %7624)  ; Saturate(value)
  %7626 = extractvalue %dx.types.CBufRet.f32 %7621, 2
  %7627 = extractvalue %dx.types.CBufRet.f32 %7621, 3
  %7628 = fadd fast float %7627, %7626
  %7629 = call float @dx.op.unary.f32(i32 7, float %7628)  ; Saturate(value)
  %7630 = fmul fast float %7625, %7609
  %7631 = fmul fast float %7630, %7629
  br label %7714

; <label>:7632                                    ; preds = %7568
  %7633 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7592
  %7634 = load float, float* %7633, align 4, !tbaa !124, !noalias !126
  %7635 = fcmp fast olt float %7634, %7499
  %7636 = icmp sgt i32 %7575, 0
  %7637 = and i1 %7636, %7635
  br i1 %7637, label %7638, label %7675

; <label>:7638                                    ; preds = %7632
  br label %7639

; <label>:7639                                    ; preds = %7668, %7638
  %7640 = phi float [ %7669, %7668 ], [ %7497, %7638 ]
  %7641 = phi float [ %7670, %7668 ], [ %7498, %7638 ]
  %7642 = phi float [ %7650, %7668 ], [ %7634, %7638 ]
  %7643 = phi i32 [ %7647, %7668 ], [ %7592, %7638 ]
  %7644 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7643
  %7645 = load float, float* %7644, align 4, !tbaa !124, !noalias !126
  %7646 = icmp slt i32 %7643, 2
  %7647 = add nsw i32 %7643, 1
  %7648 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7647
  %7649 = load float, float* %7648, align 4, !tbaa !124, !noalias !126
  %7650 = select i1 %7646, float %7649, float %7413
  %7651 = call float @dx.op.binary.f32(i32 36, float %7650, float %7645)  ; FMin(a,b)
  %7652 = call float @dx.op.binary.f32(i32 36, float %7499, float %7651)  ; FMin(a,b)
  %7653 = icmp eq i32 %7363, 0
  %7654 = fadd fast float %7652, %7642
  %7655 = fmul fast float %7654, %7344
  %7656 = fadd fast float %7655, %7357
  br i1 %7653, label %7662, label %7657

; <label>:7657                                    ; preds = %7639
  %7658 = fsub fast float %7652, %7642
  %7659 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7658)  ; FMax(a,b)
  %7660 = fmul fast float %7659, %7656
  %7661 = fadd fast float %7660, %7641
  br label %7668

; <label>:7662                                    ; preds = %7639
  %7663 = fsub fast float %7642, %7652
  %7664 = call float @dx.op.unary.f32(i32 6, float %7663)  ; FAbs(value)
  %7665 = fadd fast float %7664, %7640
  %7666 = fmul fast float %7664, %7656
  %7667 = fsub fast float %7641, %7666
  br label %7668

; <label>:7668                                    ; preds = %7662, %7657
  %7669 = phi float [ %7659, %7657 ], [ %7665, %7662 ]
  %7670 = phi float [ %7661, %7657 ], [ %7667, %7662 ]
  %7671 = fcmp fast olt float %7650, %7499
  %7672 = icmp slt i32 %7647, 3
  %7673 = and i1 %7672, %7671
  br i1 %7673, label %7639, label %7674

; <label>:7674                                    ; preds = %7668
  br label %7675

; <label>:7675                                    ; preds = %7674, %7632
  %7676 = phi float [ %7497, %7632 ], [ %7669, %7674 ]
  %7677 = phi float [ %7498, %7632 ], [ %7670, %7674 ]
  %7678 = fsub fast float %7413, %7676
  %7679 = select i1 %7415, float %7676, float %7678
  %7680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7681 = extractvalue %dx.types.CBufRet.f32 %7680, 0
  %7682 = extractvalue %dx.types.CBufRet.f32 %7680, 1
  %7683 = extractvalue %dx.types.CBufRet.f32 %7680, 2
  %7684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7685 = extractvalue %dx.types.CBufRet.f32 %7684, 0
  %7686 = extractvalue %dx.types.CBufRet.f32 %7684, 1
  %7687 = extractvalue %dx.types.CBufRet.f32 %7684, 2
  %7688 = extractvalue %dx.types.CBufRet.f32 %7684, 3
  %7689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7690 = extractvalue %dx.types.CBufRet.f32 %7689, 3
  %7691 = call float @dx.op.binary.f32(i32 36, float %7677, float %7690)  ; FMin(a,b)
  %7692 = fmul fast float %7688, %7679
  %7693 = call float @dx.op.unary.f32(i32 7, float %7692)  ; Saturate(value)
  %7694 = fsub fast float %7685, %7681
  %7695 = fsub fast float %7686, %7682
  %7696 = fsub fast float %7687, %7683
  %7697 = fmul fast float %7693, %7694
  %7698 = fmul fast float %7693, %7695
  %7699 = fmul fast float %7693, %7696
  %7700 = fadd fast float %7697, %7681
  %7701 = fadd fast float %7698, %7682
  %7702 = fadd fast float %7699, %7683
  %7703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7704 = extractvalue %dx.types.CBufRet.f32 %7703, 0
  %7705 = extractvalue %dx.types.CBufRet.f32 %7703, 1
  %7706 = fadd fast float %7705, %7704
  %7707 = call float @dx.op.unary.f32(i32 7, float %7706)  ; Saturate(value)
  %7708 = extractvalue %dx.types.CBufRet.f32 %7703, 2
  %7709 = extractvalue %dx.types.CBufRet.f32 %7703, 3
  %7710 = fadd fast float %7709, %7708
  %7711 = call float @dx.op.unary.f32(i32 7, float %7710)  ; Saturate(value)
  %7712 = fmul fast float %7707, %7691
  %7713 = fmul fast float %7712, %7711
  br label %7714

; <label>:7714                                    ; preds = %7675, %7594, %7429, %7411, %7409
  %7715 = phi float [ %7438, %7429 ], [ %7597, %7594 ], [ %7679, %7675 ], [ 0.000000e+00, %7409 ], [ 0.000000e+00, %7411 ]
  %7716 = phi float [ %7472, %7429 ], [ %7631, %7594 ], [ %7713, %7675 ], [ 0.000000e+00, %7409 ], [ 0.000000e+00, %7411 ]
  %7717 = phi float [ %7459, %7429 ], [ %7618, %7594 ], [ %7700, %7675 ], [ 0.000000e+00, %7409 ], [ 0.000000e+00, %7411 ]
  %7718 = phi float [ %7460, %7429 ], [ %7619, %7594 ], [ %7701, %7675 ], [ 0.000000e+00, %7409 ], [ 0.000000e+00, %7411 ]
  %7719 = phi float [ %7461, %7429 ], [ %7620, %7594 ], [ %7702, %7675 ], [ 0.000000e+00, %7409 ], [ 0.000000e+00, %7411 ]
  %7720 = fmul fast float %7352, %7716
  %7721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7722 = extractvalue %dx.types.CBufRet.f32 %7721, 2
  %7723 = fsub fast float %7359, %7722
  %7724 = fcmp fast olt float %7720, -2.000000e+01
  %7725 = call float @dx.op.unary.f32(i32 21, float %7720)  ; Exp(value)
  %7726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7727 = extractvalue %dx.types.CBufRet.f32 %7726, 2
  %7728 = extractvalue %dx.types.CBufRet.f32 %7726, 3
  %7729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7730 = extractvalue %dx.types.CBufRet.f32 %7729, 2
  %7731 = fmul fast float %7728, %7723
  %7732 = call float @dx.op.unary.f32(i32 7, float %7731)  ; Saturate(value)
  %7733 = fsub fast float 1.000000e+00, %7732
  %7734 = fmul fast float %7344, 5.000000e-01
  %7735 = fadd fast float %7734, 5.000000e-01
  %7736 = call float @dx.op.unary.f32(i32 7, float %7735)  ; Saturate(value)
  %7737 = fsub fast float 1.000000e+00, %7736
  %7738 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7733)  ; FMax(a,b)
  %7739 = fdiv fast float %7737, %7738
  %7740 = fsub fast float %7723, %7301
  %7741 = call float @dx.op.unary.f32(i32 6, float %7740)  ; FAbs(value)
  %7742 = fmul fast float %7741, %7727
  %7743 = call float @dx.op.unary.f32(i32 7, float %7739)  ; Saturate(value)
  %7744 = fsub fast float 1.000000e+00, %7742
  %7745 = fmul fast float %7744, %7743
  %7746 = fadd fast float %7745, %7742
  %7747 = fmul fast float %7730, %7723
  %7748 = call float @dx.op.unary.f32(i32 7, float %7747)  ; Saturate(value)
  %7749 = fsub fast float 1.000000e+00, %7746
  %7750 = fmul fast float %7749, %7748
  %7751 = fadd fast float %7750, %7746
  %7752 = call float @dx.op.unary.f32(i32 7, float %7751)  ; Saturate(value)
  %7753 = fadd fast float %7725, -1.000000e+00
  %7754 = select i1 %7724, float -1.000000e+00, float %7753
  %7755 = fmul fast float %7752, %7754
  %7756 = fadd fast float %7755, 1.000000e+00
  %7757 = fsub fast float -0.000000e+00, %7755
  %7758 = fmul fast float %7717, %7757
  %7759 = fmul fast float %7718, %7757
  %7760 = fmul fast float %7719, %7757
  br label %7761

; <label>:7761                                    ; preds = %7714, %7310
  %7762 = phi float [ %7715, %7714 ], [ 0.000000e+00, %7310 ]
  %7763 = phi float [ %7756, %7714 ], [ 1.000000e+00, %7310 ]
  %7764 = phi float [ %7758, %7714 ], [ 0.000000e+00, %7310 ]
  %7765 = phi float [ %7759, %7714 ], [ 0.000000e+00, %7310 ]
  %7766 = phi float [ %7760, %7714 ], [ 0.000000e+00, %7310 ]
  %7767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7768 = extractvalue %dx.types.CBufRet.f32 %7767, 1
  %7769 = fsub fast float 1.000000e+00, %7763
  %7770 = fmul fast float %7769, %7345
  %7771 = fmul fast float %7770, %7768
  %7772 = fsub fast float %7345, %7771
  br i1 %7338, label %7773, label %7802, !dx.controlflow.hints !162

; <label>:7773                                    ; preds = %7761
  %7774 = fmul fast float %7346, %7335
  %7775 = fadd fast float %7774, %7336
  %7776 = call float @dx.op.unary.f32(i32 7, float %7775)  ; Saturate(value)
  %7777 = fmul fast float %7317, %7772
  %7778 = fsub fast float -0.000000e+00, %7777
  %7779 = fmul fast float %7318, %7772
  %7780 = fsub fast float -0.000000e+00, %7779
  %7781 = call float @dx.op.unary.f32(i32 21, float %7778)  ; Exp(value)
  %7782 = call float @dx.op.unary.f32(i32 21, float %7780)  ; Exp(value)
  %7783 = call float @dx.op.binary.f32(i32 35, float %7325, float %7781)  ; FMax(a,b)
  %7784 = call float @dx.op.binary.f32(i32 35, float %7325, float %7782)  ; FMax(a,b)
  %7785 = fsub fast float %7784, %7783
  %7786 = fmul fast float %7785, %7776
  %7787 = fadd fast float %7786, %7783
  %7788 = call float @dx.op.unary.f32(i32 7, float %7787)  ; Saturate(value)
  %7789 = fsub fast float %7322, %7327
  %7790 = fsub fast float %7323, %7328
  %7791 = fsub fast float %7324, %7329
  %7792 = fmul fast float %7776, %7789
  %7793 = fmul fast float %7776, %7790
  %7794 = fmul fast float %7776, %7791
  %7795 = fadd fast float %7792, %7327
  %7796 = fadd fast float %7793, %7328
  %7797 = fadd fast float %7794, %7329
  %7798 = fsub fast float 1.000000e+00, %7788
  %7799 = fmul fast float %7798, %7795
  %7800 = fmul fast float %7798, %7796
  %7801 = fmul fast float %7798, %7797
  br label %7861

; <label>:7802                                    ; preds = %7761
  %7803 = fmul fast float %7772, %7334
  %7804 = call float @dx.op.unary.f32(i32 7, float %7803)  ; Saturate(value)
  %7805 = fsub fast float 2.000000e+00, %7804
  %7806 = fmul fast float %7804, 9.921875e-01
  %7807 = fmul fast float %7806, %7805
  %7808 = fadd fast float %7807, 3.906250e-03
  %7809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7808, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7810 = extractvalue %dx.types.ResRet.f32 %7809, 0
  %7811 = fsub fast float %7804, %7810
  %7812 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7811)  ; FMax(a,b)
  %7813 = fmul fast float %7320, %7301
  %7814 = call float @dx.op.unary.f32(i32 6, float %7813)  ; FAbs(value)
  %7815 = fcmp fast ogt float %7814, 0x3EB0C6F7A0000000
  br i1 %7815, label %7816, label %7822, !dx.controlflow.hints !163

; <label>:7816                                    ; preds = %7802
  %7817 = fmul fast float %7813, 0xBFF7154760000000
  %7818 = call float @dx.op.unary.f32(i32 21, float %7817)  ; Exp(value)
  %7819 = fsub fast float 1.000000e+00, %7818
  %7820 = fdiv fast float %7819, %7813
  %7821 = fmul fast float %7820, %7330
  br label %7822

; <label>:7822                                    ; preds = %7816, %7802
  %7823 = phi float [ %7821, %7816 ], [ %7330, %7802 ]
  %7824 = fadd fast float %7823, %7332
  %7825 = fmul fast float %7824, %7812
  %7826 = fmul fast float %7317, %7825
  %7827 = fsub fast float -0.000000e+00, %7826
  %7828 = fmul fast float %7318, %7825
  %7829 = fsub fast float -0.000000e+00, %7828
  %7830 = fmul fast float %7319, %7825
  %7831 = fsub fast float -0.000000e+00, %7830
  %7832 = call float @dx.op.unary.f32(i32 21, float %7827)  ; Exp(value)
  %7833 = call float @dx.op.unary.f32(i32 21, float %7829)  ; Exp(value)
  %7834 = call float @dx.op.unary.f32(i32 21, float %7831)  ; Exp(value)
  %7835 = fmul fast float %7346, %7346
  %7836 = fadd fast float %7835, 1.000000e+00
  %7837 = fmul fast float %7836, 0x3FAE8EC8A0000000
  %7838 = fmul fast float %7837, %7327
  %7839 = fmul fast float %7837, %7328
  %7840 = fmul fast float %7837, %7329
  %7841 = fmul fast float %7346, %7325
  %7842 = fsub fast float 1.000000e+00, %7841
  %7843 = fmul fast float %7325, %7325
  %7844 = fsub fast float 1.000000e+00, %7843
  %7845 = fmul fast float %7844, 0x3FB45F3060000000
  %7846 = fmul fast float %7842, %7842
  %7847 = fdiv fast float 1.000000e+00, %7846
  %7848 = fmul fast float %7845, %7847
  %7849 = fmul fast float %7848, %7322
  %7850 = fmul fast float %7848, %7323
  %7851 = fmul fast float %7848, %7324
  %7852 = fadd fast float %7849, %7838
  %7853 = fadd fast float %7850, %7839
  %7854 = fadd fast float %7851, %7840
  %7855 = fsub fast float 1.000000e+00, %7832
  %7856 = fsub fast float 1.000000e+00, %7833
  %7857 = fsub fast float 1.000000e+00, %7834
  %7858 = fmul fast float %7852, %7855
  %7859 = fmul fast float %7853, %7856
  %7860 = fmul fast float %7854, %7857
  br label %7861

; <label>:7861                                    ; preds = %7822, %7773
  %7862 = phi float [ %7799, %7773 ], [ %7858, %7822 ]
  %7863 = phi float [ %7800, %7773 ], [ %7859, %7822 ]
  %7864 = phi float [ %7801, %7773 ], [ %7860, %7822 ]
  %7865 = phi float [ %7788, %7773 ], [ %7832, %7822 ]
  %7866 = phi float [ %7788, %7773 ], [ %7833, %7822 ]
  %7867 = phi float [ %7788, %7773 ], [ %7834, %7822 ]
  br i1 %7354, label %7868, label %8066, !dx.controlflow.hints !164

; <label>:7868                                    ; preds = %7861
  %7869 = extractvalue %dx.types.CBufRet.f32 %7767, 0
  %7870 = fmul fast float %7869, %7769
  %7871 = fsub fast float %7764, %7862
  %7872 = fsub fast float %7765, %7863
  %7873 = fsub fast float %7766, %7864
  %7874 = fmul fast float %7870, %7871
  %7875 = fmul fast float %7870, %7872
  %7876 = fmul fast float %7870, %7873
  %7877 = fadd fast float %7874, %7862
  %7878 = fadd fast float %7875, %7863
  %7879 = fadd fast float %7876, %7864
  %7880 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7865)  ; FMax(a,b)
  %7881 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7866)  ; FMax(a,b)
  %7882 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7867)  ; FMax(a,b)
  %7883 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7763)  ; FMax(a,b)
  %7884 = call float @dx.op.binary.f32(i32 35, float %7762, float %7772)  ; FMax(a,b)
  %7885 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7884)  ; FMax(a,b)
  %7886 = fdiv fast float %7762, %7885
  %7887 = call float @dx.op.unary.f32(i32 7, float %7886)  ; Saturate(value)
  %7888 = fdiv fast float %7772, %7885
  %7889 = call float @dx.op.unary.f32(i32 7, float %7888)  ; Saturate(value)
  %7890 = fcmp fast une float %7883, 1.000000e+00
  br i1 %7890, label %7891, label %7904, !dx.controlflow.hints !165

; <label>:7891                                    ; preds = %7868
  %7892 = call float @dx.op.unary.f32(i32 23, float %7883)  ; Log(value)
  %7893 = fmul fast float %7892, 0x3FE62E4300000000
  %7894 = fmul fast float %7764, %7893
  %7895 = fsub fast float -0.000000e+00, %7894
  %7896 = fmul fast float %7765, %7893
  %7897 = fsub fast float -0.000000e+00, %7896
  %7898 = fmul fast float %7766, %7893
  %7899 = fsub fast float -0.000000e+00, %7898
  %7900 = fsub fast float 1.000000e+00, %7883
  %7901 = fdiv fast float %7895, %7900
  %7902 = fdiv fast float %7897, %7900
  %7903 = fdiv fast float %7899, %7900
  br label %7904

; <label>:7904                                    ; preds = %7891, %7868
  %7905 = phi float [ %7901, %7891 ], [ %7764, %7868 ]
  %7906 = phi float [ %7902, %7891 ], [ %7765, %7868 ]
  %7907 = phi float [ %7903, %7891 ], [ %7766, %7868 ]
  %7908 = phi float [ %7893, %7891 ], [ 0.000000e+00, %7868 ]
  %7909 = fcmp fast une float %7880, 1.000000e+00
  br i1 %7909, label %7910, label %7917, !dx.controlflow.hints !166

; <label>:7910                                    ; preds = %7904
  %7911 = call float @dx.op.unary.f32(i32 23, float %7880)  ; Log(value)
  %7912 = fmul fast float %7911, 0x3FE62E4300000000
  %7913 = fmul fast float %7877, %7912
  %7914 = fsub fast float -0.000000e+00, %7913
  %7915 = fsub fast float 1.000000e+00, %7880
  %7916 = fdiv fast float %7914, %7915
  br label %7917

; <label>:7917                                    ; preds = %7910, %7904
  %7918 = phi float [ %7916, %7910 ], [ %7877, %7904 ]
  %7919 = phi float [ %7912, %7910 ], [ 0.000000e+00, %7904 ]
  %7920 = fcmp fast une float %7881, 1.000000e+00
  br i1 %7920, label %7921, label %7928, !dx.controlflow.hints !166

; <label>:7921                                    ; preds = %7917
  %7922 = call float @dx.op.unary.f32(i32 23, float %7881)  ; Log(value)
  %7923 = fmul fast float %7922, 0x3FE62E4300000000
  %7924 = fmul fast float %7878, %7923
  %7925 = fsub fast float -0.000000e+00, %7924
  %7926 = fsub fast float 1.000000e+00, %7881
  %7927 = fdiv fast float %7925, %7926
  br label %7928

; <label>:7928                                    ; preds = %7921, %7917
  %7929 = phi float [ %7927, %7921 ], [ %7878, %7917 ]
  %7930 = phi float [ %7923, %7921 ], [ 0.000000e+00, %7917 ]
  %7931 = fcmp fast une float %7882, 1.000000e+00
  br i1 %7931, label %7932, label %7939, !dx.controlflow.hints !166

; <label>:7932                                    ; preds = %7928
  %7933 = call float @dx.op.unary.f32(i32 23, float %7882)  ; Log(value)
  %7934 = fmul fast float %7933, 0x3FE62E4300000000
  %7935 = fmul fast float %7879, %7934
  %7936 = fsub fast float -0.000000e+00, %7935
  %7937 = fsub fast float 1.000000e+00, %7882
  %7938 = fdiv fast float %7936, %7937
  br label %7939

; <label>:7939                                    ; preds = %7932, %7928
  %7940 = phi float [ %7938, %7932 ], [ %7879, %7928 ]
  %7941 = phi float [ %7934, %7932 ], [ 0.000000e+00, %7928 ]
  %7942 = fmul fast float %7905, %7889
  %7943 = fmul fast float %7906, %7889
  %7944 = fmul fast float %7907, %7889
  %7945 = fmul fast float %7908, %7889
  %7946 = fmul fast float %7918, %7887
  %7947 = fmul fast float %7929, %7887
  %7948 = fmul fast float %7940, %7887
  %7949 = fmul fast float %7919, %7887
  %7950 = fmul fast float %7930, %7887
  %7951 = fmul fast float %7941, %7887
  %7952 = fadd fast float %7946, %7942
  %7953 = fadd fast float %7947, %7943
  %7954 = fadd fast float %7948, %7944
  %7955 = fadd fast float %7949, %7945
  %7956 = fadd fast float %7950, %7945
  %7957 = fadd fast float %7951, %7945
  %7958 = fcmp fast une float %7955, 0.000000e+00
  br i1 %7958, label %7959, label %7966, !dx.controlflow.hints !167

; <label>:7959                                    ; preds = %7939
  %7960 = fmul fast float %7955, 0x3FF7154760000000
  %7961 = call float @dx.op.unary.f32(i32 21, float %7960)  ; Exp(value)
  %7962 = fsub fast float 1.000000e+00, %7961
  %7963 = fmul fast float %7952, %7962
  %7964 = fsub fast float -0.000000e+00, %7963
  %7965 = fdiv fast float %7964, %7955
  br label %7966

; <label>:7966                                    ; preds = %7959, %7939
  %7967 = phi float [ %7961, %7959 ], [ 1.000000e+00, %7939 ]
  %7968 = phi float [ %7965, %7959 ], [ %7952, %7939 ]
  %7969 = fcmp fast une float %7956, 0.000000e+00
  br i1 %7969, label %7970, label %7977, !dx.controlflow.hints !167

; <label>:7970                                    ; preds = %7966
  %7971 = fmul fast float %7956, 0x3FF7154760000000
  %7972 = call float @dx.op.unary.f32(i32 21, float %7971)  ; Exp(value)
  %7973 = fsub fast float 1.000000e+00, %7972
  %7974 = fmul fast float %7953, %7973
  %7975 = fsub fast float -0.000000e+00, %7974
  %7976 = fdiv fast float %7975, %7956
  br label %7977

; <label>:7977                                    ; preds = %7970, %7966
  %7978 = phi float [ %7972, %7970 ], [ 1.000000e+00, %7966 ]
  %7979 = phi float [ %7976, %7970 ], [ %7953, %7966 ]
  %7980 = fcmp fast une float %7957, 0.000000e+00
  br i1 %7980, label %7981, label %7988, !dx.controlflow.hints !167

; <label>:7981                                    ; preds = %7977
  %7982 = fmul fast float %7957, 0x3FF7154760000000
  %7983 = call float @dx.op.unary.f32(i32 21, float %7982)  ; Exp(value)
  %7984 = fsub fast float 1.000000e+00, %7983
  %7985 = fmul fast float %7954, %7984
  %7986 = fsub fast float -0.000000e+00, %7985
  %7987 = fdiv fast float %7986, %7957
  br label %7988

; <label>:7988                                    ; preds = %7981, %7977
  %7989 = phi float [ %7983, %7981 ], [ 1.000000e+00, %7977 ]
  %7990 = phi float [ %7987, %7981 ], [ %7954, %7977 ]
  %7991 = fcmp fast ogt float %7887, %7889
  br i1 %7991, label %7992, label %8012

; <label>:7992                                    ; preds = %7988
  %7993 = fsub fast float 1.000000e+00, %7889
  %7994 = fmul fast float %7905, %7993
  %7995 = fmul fast float %7906, %7993
  %7996 = fmul fast float %7907, %7993
  %7997 = fmul fast float %7908, %7993
  %7998 = fcmp fast une float %7997, 0.000000e+00
  br i1 %7998, label %7999, label %8050, !dx.controlflow.hints !168

; <label>:7999                                    ; preds = %7992
  %8000 = fmul fast float %7997, 0x3FF7154760000000
  %8001 = call float @dx.op.unary.f32(i32 21, float %8000)  ; Exp(value)
  %8002 = fsub fast float 1.000000e+00, %8001
  %8003 = fmul fast float %7994, %8002
  %8004 = fsub fast float -0.000000e+00, %8003
  %8005 = fmul fast float %7995, %8002
  %8006 = fsub fast float -0.000000e+00, %8005
  %8007 = fmul fast float %7996, %8002
  %8008 = fsub fast float -0.000000e+00, %8007
  %8009 = fdiv fast float %8004, %7997
  %8010 = fdiv fast float %8006, %7997
  %8011 = fdiv fast float %8008, %7997
  br label %8050

; <label>:8012                                    ; preds = %7988
  %8013 = fsub fast float 1.000000e+00, %7887
  %8014 = fmul fast float %7918, %8013
  %8015 = fmul fast float %7929, %8013
  %8016 = fmul fast float %7940, %8013
  %8017 = fmul fast float %7919, %8013
  %8018 = fmul fast float %7930, %8013
  %8019 = fmul fast float %7941, %8013
  %8020 = fcmp fast une float %8017, 0.000000e+00
  br i1 %8020, label %8021, label %8028, !dx.controlflow.hints !167

; <label>:8021                                    ; preds = %8012
  %8022 = fmul fast float %8017, 0x3FF7154760000000
  %8023 = call float @dx.op.unary.f32(i32 21, float %8022)  ; Exp(value)
  %8024 = fsub fast float 1.000000e+00, %8023
  %8025 = fmul fast float %8014, %8024
  %8026 = fsub fast float -0.000000e+00, %8025
  %8027 = fdiv fast float %8026, %8017
  br label %8028

; <label>:8028                                    ; preds = %8021, %8012
  %8029 = phi float [ %8027, %8021 ], [ %8014, %8012 ]
  %8030 = phi float [ %8023, %8021 ], [ 1.000000e+00, %8012 ]
  %8031 = fcmp fast une float %8018, 0.000000e+00
  br i1 %8031, label %8032, label %8039, !dx.controlflow.hints !167

; <label>:8032                                    ; preds = %8028
  %8033 = fmul fast float %8018, 0x3FF7154760000000
  %8034 = call float @dx.op.unary.f32(i32 21, float %8033)  ; Exp(value)
  %8035 = fsub fast float 1.000000e+00, %8034
  %8036 = fmul fast float %8015, %8035
  %8037 = fsub fast float -0.000000e+00, %8036
  %8038 = fdiv fast float %8037, %8018
  br label %8039

; <label>:8039                                    ; preds = %8032, %8028
  %8040 = phi float [ %8038, %8032 ], [ %8015, %8028 ]
  %8041 = phi float [ %8034, %8032 ], [ 1.000000e+00, %8028 ]
  %8042 = fcmp fast une float %8019, 0.000000e+00
  br i1 %8042, label %8043, label %8050, !dx.controlflow.hints !167

; <label>:8043                                    ; preds = %8039
  %8044 = fmul fast float %8019, 0x3FF7154760000000
  %8045 = call float @dx.op.unary.f32(i32 21, float %8044)  ; Exp(value)
  %8046 = fsub fast float 1.000000e+00, %8045
  %8047 = fmul fast float %8016, %8046
  %8048 = fsub fast float -0.000000e+00, %8047
  %8049 = fdiv fast float %8048, %8019
  br label %8050

; <label>:8050                                    ; preds = %8043, %8039, %7999, %7992
  %8051 = phi float [ %8049, %8043 ], [ %8011, %7999 ], [ %7996, %7992 ], [ %8016, %8039 ]
  %8052 = phi float [ %8040, %8043 ], [ %8010, %7999 ], [ %7995, %7992 ], [ %8040, %8039 ]
  %8053 = phi float [ %8029, %8043 ], [ %8009, %7999 ], [ %7994, %7992 ], [ %8029, %8039 ]
  %8054 = phi float [ %8045, %8043 ], [ %8001, %7999 ], [ 1.000000e+00, %7992 ], [ 1.000000e+00, %8039 ]
  %8055 = phi float [ %8041, %8043 ], [ %8001, %7999 ], [ 1.000000e+00, %7992 ], [ %8041, %8039 ]
  %8056 = phi float [ %8030, %8043 ], [ %8001, %7999 ], [ 1.000000e+00, %7992 ], [ %8030, %8039 ]
  %8057 = fmul fast float %8056, %7968
  %8058 = fmul fast float %8055, %7979
  %8059 = fmul fast float %8054, %7990
  %8060 = fadd fast float %8057, %8053
  %8061 = fadd fast float %8058, %8052
  %8062 = fadd fast float %8059, %8051
  %8063 = fmul fast float %8056, %7967
  %8064 = fmul fast float %8055, %7978
  %8065 = fmul fast float %8054, %7989
  br label %8066

; <label>:8066                                    ; preds = %8050, %7861
  %8067 = phi float [ %8065, %8050 ], [ %7867, %7861 ]
  %8068 = phi float [ %8064, %8050 ], [ %7866, %7861 ]
  %8069 = phi float [ %8063, %8050 ], [ %7865, %7861 ]
  %8070 = phi float [ %8062, %8050 ], [ %7864, %7861 ]
  %8071 = phi float [ %8061, %8050 ], [ %7863, %7861 ]
  %8072 = phi float [ %8060, %8050 ], [ %7862, %7861 ]
  %8073 = fmul fast float %8072, %7018
  %8074 = fmul fast float %8071, %7018
  %8075 = fmul fast float %8070, %7018
  %8076 = fmul fast float %8069, %7309
  %8077 = call float @dx.op.dot3.f32(i32 55, float %8069, float %8068, float %8067, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8078 = call float @dx.op.dot3.f32(i32 55, float %8073, float %8074, float %8075, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8079 = select i1 %282, float %8077, float %8069
  %8080 = select i1 %282, float %8077, float %8068
  %8081 = select i1 %282, float 1.000000e+00, float %8067
  %8082 = select i1 %282, float %8078, float %8073
  %8083 = select i1 %282, float 0.000000e+00, float %8074
  %8084 = select i1 %282, float 0.000000e+00, float %8075
  %8085 = fmul fast float %8079, %7303
  %8086 = fmul fast float %8080, %7304
  %8087 = fmul fast float %8081, %7305
  %8088 = fadd fast float %8085, %8082
  %8089 = fadd fast float %8086, %8083
  %8090 = fadd fast float %8084, %8087
  %8091 = fmul fast float %8079, %7306
  %8092 = fmul fast float %8080, %7307
  %8093 = fmul fast float %8081, %7308
  %8094 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8095 = extractvalue %dx.types.CBufRet.i32 %8094, 0
  %8096 = icmp eq i32 %8095, 0
  br i1 %8096, label %8464, label %8097, !dx.controlflow.hints !169

; <label>:8097                                    ; preds = %8066
  %8098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8099 = extractvalue %dx.types.CBufRet.f32 %8098, 2
  %8100 = extractvalue %dx.types.CBufRet.f32 %8098, 3
  %8101 = fmul fast float %8099, %104
  %8102 = fmul fast float %8100, %105
  %8103 = fmul fast float %8101, 2.000000e+00
  %8104 = fmul fast float %8102, 2.000000e+00
  %8105 = fsub fast float 1.000000e+00, %8103
  %8106 = fsub fast float 1.000000e+00, %8104
  %8107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8108 = extractvalue %dx.types.CBufRet.f32 %8107, 0
  %8109 = extractvalue %dx.types.CBufRet.f32 %8107, 1
  %8110 = extractvalue %dx.types.CBufRet.f32 %8107, 2
  %8111 = fmul fast float %8105, %8108
  %8112 = fmul fast float %8105, %8109
  %8113 = fmul fast float %8105, %8110
  %8114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8115 = extractvalue %dx.types.CBufRet.f32 %8114, 0
  %8116 = extractvalue %dx.types.CBufRet.f32 %8114, 1
  %8117 = extractvalue %dx.types.CBufRet.f32 %8114, 2
  %8118 = fmul fast float %8106, %8115
  %8119 = fmul fast float %8106, %8116
  %8120 = fmul fast float %8106, %8117
  %8121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8122 = extractvalue %dx.types.CBufRet.f32 %8121, 0
  %8123 = extractvalue %dx.types.CBufRet.f32 %8121, 1
  %8124 = extractvalue %dx.types.CBufRet.f32 %8121, 2
  %8125 = fadd fast float %8118, %8122
  %8126 = fadd fast float %8125, %8111
  %8127 = fadd fast float %8119, %8123
  %8128 = fadd fast float %8127, %8112
  %8129 = fadd fast float %8120, %8124
  %8130 = fadd fast float %8129, %8113
  %8131 = fmul fast float %8126, %7302
  %8132 = fmul fast float %8128, %7302
  %8133 = fmul fast float %8130, %7302
  %8134 = fmul fast float %8131, %8131
  %8135 = fmul fast float %8132, %8132
  %8136 = fadd fast float %8134, %8135
  %8137 = fmul fast float %8133, %8133
  %8138 = fadd fast float %8136, %8137
  %8139 = call float @dx.op.unary.f32(i32 24, float %8138)  ; Sqrt(value)
  %8140 = extractvalue %dx.types.CBufRet.f32 %7029, 0
  %8141 = fsub fast float %8139, %8140
  %8142 = extractvalue %dx.types.CBufRet.f32 %7029, 2
  %8143 = fmul fast float %8141, %8142
  %8144 = call float @dx.op.unary.f32(i32 7, float %8143)  ; Saturate(value)
  %8145 = fadd fast float %8144, -5.000000e-01
  %8146 = fmul fast float %8145, 2.000000e+00
  %8147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8148 = extractvalue %dx.types.CBufRet.f32 %8147, 2
  %8149 = call float @dx.op.binary.f32(i32 36, float %8148, float %8146)  ; FMin(a,b)
  %8150 = fsub fast float -0.000000e+00, %8148
  %8151 = fcmp fast ogt float %8149, %8150
  br i1 %8151, label %8152, label %8464, !dx.controlflow.hints !170

; <label>:8152                                    ; preds = %8097
  %8153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8154 = extractvalue %dx.types.CBufRet.f32 %8153, 3
  %8155 = fcmp fast ogt float %8154, 0.000000e+00
  br i1 %8155, label %8156, label %8231, !dx.controlflow.hints !171

; <label>:8156                                    ; preds = %8152
  %8157 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8158 = extractvalue %dx.types.Dimensions %8157, 0
  %8159 = sitofp i32 %8158 to float
  %8160 = extractvalue %dx.types.Dimensions %8157, 1
  %8161 = sitofp i32 %8160 to float
  %8162 = fmul fast float %8101, %8159
  %8163 = fmul fast float %8102, %8161
  %8164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8165 = extractvalue %dx.types.CBufRet.f32 %8164, 1
  %8166 = fsub fast float -0.000000e+00, %8165
  %8167 = fptoui float %8166 to i32
  %8168 = fptoui float %8162 to i32
  %8169 = fptoui float %8163 to i32
  %8170 = and i32 %8167, 31
  %8171 = lshr i32 %8168, %8170
  %8172 = lshr i32 %8169, %8170
  %8173 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8167, i32 %8171, i32 %8172, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8174 = extractvalue %dx.types.ResRet.f32 %8173, 0
  %8175 = fcmp fast olt float %8174, -1.000000e+00
  %8176 = fcmp fast ogt float %8174, -1.000000e+00
  %8177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8178 = extractvalue %dx.types.CBufRet.f32 %8177, 1
  %8179 = select i1 %8176, float %8178, float 1.000000e+00
  %8180 = fadd fast float %8174, 1.000000e+00
  %8181 = fmul fast float %8179, %8180
  %8182 = call float @dx.op.unary.f32(i32 6, float %8181)  ; FAbs(value)
  %8183 = extractvalue %dx.types.CBufRet.f32 %8177, 3
  %8184 = fcmp fast oge float %8182, %8183
  %8185 = select i1 %8184, float 0x4197782600000000, float %8182
  %8186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8187 = extractvalue %dx.types.CBufRet.f32 %8186, 0
  %8188 = extractvalue %dx.types.CBufRet.f32 %8186, 1
  %8189 = extractvalue %dx.types.CBufRet.f32 %8186, 2
  %8190 = select i1 %8175, float %8187, float %8108
  %8191 = select i1 %8175, float %8188, float %8109
  %8192 = select i1 %8175, float %8189, float %8110
  %8193 = fmul fast float %8190, %8105
  %8194 = fmul fast float %8191, %8105
  %8195 = fmul fast float %8192, %8105
  %8196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8197 = extractvalue %dx.types.CBufRet.f32 %8196, 0
  %8198 = extractvalue %dx.types.CBufRet.f32 %8196, 1
  %8199 = extractvalue %dx.types.CBufRet.f32 %8196, 2
  %8200 = select i1 %8175, float %8197, float %8115
  %8201 = select i1 %8175, float %8198, float %8116
  %8202 = select i1 %8175, float %8199, float %8117
  %8203 = fmul fast float %8200, %8106
  %8204 = fmul fast float %8201, %8106
  %8205 = fmul fast float %8202, %8106
  %8206 = fadd fast float %8203, %8193
  %8207 = fadd fast float %8204, %8194
  %8208 = fadd fast float %8205, %8195
  %8209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8210 = extractvalue %dx.types.CBufRet.f32 %8209, 0
  %8211 = extractvalue %dx.types.CBufRet.f32 %8209, 1
  %8212 = extractvalue %dx.types.CBufRet.f32 %8209, 2
  %8213 = select i1 %8175, float %8210, float %8122
  %8214 = select i1 %8175, float %8211, float %8123
  %8215 = select i1 %8175, float %8212, float %8124
  %8216 = fadd fast float %8206, %8213
  %8217 = fadd fast float %8207, %8214
  %8218 = fadd fast float %8208, %8215
  %8219 = fmul fast float %8216, %8185
  %8220 = fmul fast float %8217, %8185
  %8221 = fmul fast float %8218, %8185
  %8222 = fmul fast float %8219, %8219
  %8223 = fmul fast float %8220, %8220
  %8224 = fadd fast float %8222, %8223
  %8225 = fmul fast float %8221, %8221
  %8226 = fadd fast float %8224, %8225
  %8227 = call float @dx.op.unary.f32(i32 24, float %8226)  ; Sqrt(value)
  %8228 = fsub fast float %8227, %8140
  %8229 = fmul fast float %8228, %8142
  %8230 = call float @dx.op.unary.f32(i32 7, float %8229)  ; Saturate(value)
  br label %8231

; <label>:8231                                    ; preds = %8156, %8152
  %8232 = phi float [ %8230, %8156 ], [ 1.000000e+00, %8152 ]
  %8233 = fmul fast float %8149, 5.000000e-01
  %8234 = fadd fast float %8233, 5.000000e-01
  %8235 = call float @dx.op.unary.f32(i32 22, float %8234)  ; Frc(value)
  %8236 = call float @dx.op.unary.f32(i32 27, float %8235)  ; Round_ni(value)
  %8237 = call float @dx.op.unary.f32(i32 22, float %8235)  ; Frc(value)
  %8238 = fmul fast float %8237, 2.000000e+00
  %8239 = fadd fast float %8238, -1.000000e+00
  %8240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8101, float %8102, float %8236, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8241 = extractvalue %dx.types.ResRet.f32 %8240, 0
  %8242 = extractvalue %dx.types.ResRet.f32 %8240, 1
  %8243 = extractvalue %dx.types.ResRet.f32 %8240, 2
  %8244 = extractvalue %dx.types.ResRet.f32 %8240, 3
  %8245 = fadd fast float %8241, -5.000000e-01
  %8246 = fadd fast float %8243, -5.000000e-01
  %8247 = fmul fast float %8245, 0xBFD5555560000000
  %8248 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8246, float %8247)  ; FMad(a,b,c)
  %8249 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8242, float 0.000000e+00)  ; FMad(a,b,c)
  %8250 = fadd fast float %8249, %8244
  %8251 = fmul fast float %8245, -7.500000e-01
  %8252 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8246, float %8251)  ; FMad(a,b,c)
  %8253 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8242, float 0.000000e+00)  ; FMad(a,b,c)
  %8254 = fadd fast float %8253, %8244
  %8255 = call float @dx.op.binary.f32(i32 35, float %8248, float -1.000000e+00)  ; FMax(a,b)
  %8256 = call float @dx.op.binary.f32(i32 35, float %8250, float -1.000000e+00)  ; FMax(a,b)
  %8257 = call float @dx.op.binary.f32(i32 35, float %8252, float -1.000000e+00)  ; FMax(a,b)
  %8258 = call float @dx.op.binary.f32(i32 35, float %8254, float -1.000000e+00)  ; FMax(a,b)
  %8259 = call float @dx.op.binary.f32(i32 36, float %8255, float 1.000000e+00)  ; FMin(a,b)
  %8260 = call float @dx.op.binary.f32(i32 36, float %8256, float 1.000000e+00)  ; FMin(a,b)
  %8261 = call float @dx.op.binary.f32(i32 36, float %8257, float 1.000000e+00)  ; FMin(a,b)
  %8262 = call float @dx.op.binary.f32(i32 36, float %8258, float 1.000000e+00)  ; FMin(a,b)
  %8263 = fcmp fast olt float %8259, 0x3FEFFF8020000000
  br i1 %8263, label %8264, label %8379, !dx.controlflow.hints !172

; <label>:8264                                    ; preds = %8231
  %8265 = extractvalue %dx.types.CBufRet.f32 %8147, 3
  %8266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8267 = extractvalue %dx.types.CBufRet.f32 %8266, 0
  %8268 = extractvalue %dx.types.CBufRet.f32 %8266, 1
  %8269 = extractvalue %dx.types.CBufRet.f32 %8266, 2
  %8270 = extractvalue %dx.types.CBufRet.f32 %8266, 3
  %8271 = fsub fast float %8267, %8259
  %8272 = fsub fast float %8268, %8260
  %8273 = fsub fast float %8269, %8261
  %8274 = fsub fast float %8270, %8262
  %8275 = fmul fast float %8271, %8265
  %8276 = fmul fast float %8272, %8265
  %8277 = fmul fast float %8273, %8265
  %8278 = fmul fast float %8274, %8265
  %8279 = fadd fast float %8275, %8259
  %8280 = fadd fast float %8276, %8260
  %8281 = fsub fast float -0.000000e+00, %8280
  %8282 = fadd fast float %8277, %8261
  %8283 = fadd fast float %8278, %8262
  %8284 = fmul fast float %8279, %8279
  %8285 = fsub fast float %8280, %8284
  %8286 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8285)  ; FMax(a,b)
  %8287 = fdiv fast float 1.000000e+00, %8286
  %8288 = fmul fast float %8280, %8279
  %8289 = fsub fast float %8282, %8288
  %8290 = fsub fast float %8239, %8279
  %8291 = fmul fast float %8239, %8239
  %8292 = fsub fast float %8291, %8280
  %8293 = fmul fast float %8290, %8287
  %8294 = fmul fast float %8293, %8289
  %8295 = fsub fast float %8292, %8294
  %8296 = fmul fast float %8280, %8280
  %8297 = fsub fast float %8283, %8296
  %8298 = fmul fast float %8289, %8289
  %8299 = fmul fast float %8298, %8287
  %8300 = fsub fast float %8297, %8299
  %8301 = fdiv fast float %8295, %8300
  %8302 = fmul fast float %8289, %8301
  %8303 = fsub fast float %8290, %8302
  %8304 = fmul fast float %8303, %8287
  %8305 = fmul fast float %8304, %8279
  %8306 = fsub fast float 1.000000e+00, %8305
  %8307 = fmul fast float %8280, %8301
  %8308 = fsub fast float %8306, %8307
  %8309 = fmul fast float %8304, %8304
  %8310 = fmul fast float %8301, 4.000000e+00
  %8311 = fmul fast float %8310, %8308
  %8312 = fsub fast float %8309, %8311
  %8313 = call float @dx.op.unary.f32(i32 24, float %8312)  ; Sqrt(value)
  %8314 = fcmp fast oge float %8304, 0.000000e+00
  %8315 = fsub fast float -0.000000e+00, %8313
  %8316 = select i1 %8314, float %8315, float %8313
  %8317 = fsub fast float %8316, %8304
  %8318 = fdiv fast float %8317, %8301
  %8319 = fdiv fast float %8308, %8317
  %8320 = fmul fast float %8318, 5.000000e-01
  %8321 = fmul fast float %8319, 2.000000e+00
  %8322 = select i1 %8314, float %8320, float %8321
  %8323 = select i1 %8314, float %8321, float %8320
  %8324 = call float @dx.op.binary.f32(i32 35, float %8322, float %8323)  ; FMax(a,b)
  %8325 = call float @dx.op.binary.f32(i32 36, float %8322, float %8323)  ; FMin(a,b)
  %8326 = fcmp fast ogt float %8239, %8325
  br i1 %8326, label %8327, label %8337

; <label>:8327                                    ; preds = %8264
  %8328 = fsub fast float %8239, %8325
  %8329 = fsub fast float %8324, %8325
  %8330 = fmul fast float %8328, %8329
  %8331 = fmul fast float %8324, %8239
  %8332 = fadd fast float %8324, %8239
  %8333 = fmul fast float %8332, %8279
  %8334 = fadd fast float %8331, %8280
  %8335 = fsub fast float %8334, %8333
  %8336 = fdiv fast float %8335, %8330
  br label %8337

; <label>:8337                                    ; preds = %8327, %8264
  %8338 = phi float [ %8336, %8327 ], [ 0.000000e+00, %8264 ]
  %8339 = fcmp fast ogt float %8239, %8324
  %8340 = fsub fast float %8239, %8324
  br i1 %8339, label %8341, label %8351

; <label>:8341                                    ; preds = %8337
  %8342 = fsub fast float %8324, %8325
  %8343 = fmul fast float %8342, %8340
  %8344 = fmul fast float %8325, %8239
  %8345 = fadd fast float %8325, %8239
  %8346 = fmul fast float %8345, %8279
  %8347 = fsub fast float %8281, %8344
  %8348 = fadd fast float %8347, %8346
  %8349 = fdiv fast float %8348, %8343
  %8350 = fadd fast float %8349, %8338
  br label %8351

; <label>:8351                                    ; preds = %8341, %8337
  %8352 = phi float [ %8350, %8341 ], [ %8338, %8337 ]
  %8353 = fsub fast float %8239, %8325
  %8354 = fmul fast float %8353, %8340
  %8355 = fmul fast float %8325, %8324
  %8356 = fadd fast float %8325, %8324
  %8357 = fmul fast float %8356, %8279
  %8358 = fadd fast float %8355, %8280
  %8359 = fsub fast float %8358, %8357
  %8360 = fdiv fast float %8359, %8354
  %8361 = call float @dx.op.unary.f32(i32 7, float %8352)  ; Saturate(value)
  %8362 = fcmp fast oeq float %7030, 0.000000e+00
  %8363 = extractvalue %dx.types.CBufRet.f32 %8147, 0
  %8364 = fcmp fast oeq float %8363, 0.000000e+00
  %8365 = or i1 %8362, %8364
  %8366 = fmul fast float %8363, 2.000000e+00
  %8367 = fadd fast float %8148, %8149
  %8368 = fdiv fast float %8367, %8366
  %8369 = call float @dx.op.unary.f32(i32 7, float %8368)  ; Saturate(value)
  %8370 = fmul fast float %8369, 2.000000e+00
  %8371 = fsub fast float 3.000000e+00, %8370
  %8372 = fmul fast float %8369, %8369
  %8373 = fmul fast float %8372, %8371
  %8374 = select i1 %8365, float 1.000000e+00, float %8373
  %8375 = fmul fast float %8360, %7030
  %8376 = fadd fast float %8361, %8375
  %8377 = call float @dx.op.unary.f32(i32 7, float %8376)  ; Saturate(value)
  %8378 = fmul fast float %8374, %8377
  br label %8379

; <label>:8379                                    ; preds = %8351, %8231
  %8380 = phi float [ %8378, %8351 ], [ 0.000000e+00, %8231 ]
  %8381 = fsub fast float 1.000000e+00, %8380
  %8382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8101, float %8102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8383 = extractvalue %dx.types.ResRet.f32 %8382, 0
  %8384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8385 = extractvalue %dx.types.CBufRet.i32 %8384, 2
  %8386 = icmp eq i32 %8385, 0
  br i1 %8386, label %8392, label %8387

; <label>:8387                                    ; preds = %8379
  %8388 = call float @dx.op.unary.f32(i32 7, float %8380)  ; Saturate(value)
  %8389 = fadd fast float %8383, -1.000000e+00
  %8390 = fmul fast float %8388, %8389
  %8391 = fadd fast float %8390, 1.000000e+00
  br label %8392

; <label>:8392                                    ; preds = %8387, %8379
  %8393 = phi float [ %8391, %8387 ], [ %8381, %8379 ]
  br i1 %8155, label %8394, label %8412

; <label>:8394                                    ; preds = %8392
  %8395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8396 = extractvalue %dx.types.CBufRet.f32 %8395, 1
  %8397 = fsub fast float %8232, %8396
  %8398 = call float @dx.op.unary.f32(i32 7, float %8397)  ; Saturate(value)
  %8399 = fsub fast float %8232, %8154
  %8400 = call float @dx.op.unary.f32(i32 7, float %8399)  ; Saturate(value)
  %8401 = fsub fast float %8398, %8400
  %8402 = fsub fast float %8234, %8400
  %8403 = fdiv fast float %8402, %8401
  %8404 = call float @dx.op.unary.f32(i32 7, float %8403)  ; Saturate(value)
  %8405 = fmul fast float %8404, 2.000000e+00
  %8406 = fsub fast float 3.000000e+00, %8405
  %8407 = fsub fast float %8383, %8393
  %8408 = fmul fast float %8404, %8404
  %8409 = fmul fast float %8408, %8407
  %8410 = fmul fast float %8409, %8406
  %8411 = fadd fast float %8410, %8393
  br label %8412

; <label>:8412                                    ; preds = %8394, %8392
  %8413 = phi float [ %8411, %8394 ], [ %8393, %8392 ]
  %8414 = call float @dx.op.binary.f32(i32 35, float %8383, float %8413)  ; FMax(a,b)
  %8415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8416 = extractvalue %dx.types.CBufRet.i32 %8415, 2
  %8417 = and i32 %8416, 1
  %8418 = icmp eq i32 %8417, 0
  %8419 = fcmp fast une float %8414, 1.000000e+00
  %8420 = and i1 %8419, %8418
  br i1 %8420, label %8421, label %8440

; <label>:8421                                    ; preds = %8412
  %8422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8101, float %8102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8423 = extractvalue %dx.types.ResRet.f32 %8422, 0
  %8424 = extractvalue %dx.types.ResRet.f32 %8422, 1
  %8425 = extractvalue %dx.types.ResRet.f32 %8422, 2
  %8426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8427 = extractvalue %dx.types.CBufRet.f32 %8426, 1
  %8428 = fmul fast float %8427, %8423
  %8429 = fmul fast float %8427, %8424
  %8430 = fmul fast float %8427, %8425
  %8431 = fcmp fast ogt float %8383, 0x3FEFFF2E40000000
  %8432 = fsub fast float 1.000000e+00, %8414
  %8433 = fsub fast float 1.000000e+00, %8383
  %8434 = fdiv fast float %8432, %8433
  %8435 = call float @dx.op.unary.f32(i32 7, float %8434)  ; Saturate(value)
  %8436 = select i1 %8431, float 0.000000e+00, float %8435
  %8437 = fmul fast float %8428, %8436
  %8438 = fmul fast float %8429, %8436
  %8439 = fmul fast float %8430, %8436
  br label %8440

; <label>:8440                                    ; preds = %8421, %8412
  %8441 = phi float [ 0.000000e+00, %8412 ], [ %8437, %8421 ]
  %8442 = phi float [ 0.000000e+00, %8412 ], [ %8438, %8421 ]
  %8443 = phi float [ 0.000000e+00, %8412 ], [ %8439, %8421 ]
  %8444 = fmul fast float %8441, %7018
  %8445 = fmul fast float %8442, %7018
  %8446 = fmul fast float %8443, %7018
  %8447 = fmul fast float %8414, %8076
  %8448 = call float @dx.op.dot3.f32(i32 55, float %8414, float %8414, float %8414, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8449 = call float @dx.op.dot3.f32(i32 55, float %8444, float %8445, float %8446, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8450 = select i1 %282, float %8448, float %8414
  %8451 = select i1 %282, float 1.000000e+00, float %8414
  %8452 = select i1 %282, float %8449, float %8444
  %8453 = select i1 %282, float 0.000000e+00, float %8445
  %8454 = select i1 %282, float 0.000000e+00, float %8446
  %8455 = fmul fast float %8450, %8088
  %8456 = fmul fast float %8450, %8089
  %8457 = fmul fast float %8451, %8090
  %8458 = fadd fast float %8455, %8452
  %8459 = fadd fast float %8456, %8453
  %8460 = fadd fast float %8454, %8457
  %8461 = fmul fast float %8450, %8091
  %8462 = fmul fast float %8450, %8092
  %8463 = fmul fast float %8451, %8093
  br label %8464

; <label>:8464                                    ; preds = %8440, %8097, %8066, %7298
  %8465 = phi float [ %7303, %7298 ], [ %8088, %8066 ], [ %8458, %8440 ], [ %8088, %8097 ]
  %8466 = phi float [ %7304, %7298 ], [ %8089, %8066 ], [ %8459, %8440 ], [ %8089, %8097 ]
  %8467 = phi float [ %7305, %7298 ], [ %8090, %8066 ], [ %8460, %8440 ], [ %8090, %8097 ]
  %8468 = phi float [ %7306, %7298 ], [ %8091, %8066 ], [ %8461, %8440 ], [ %8091, %8097 ]
  %8469 = phi float [ %7307, %7298 ], [ %8092, %8066 ], [ %8462, %8440 ], [ %8092, %8097 ]
  %8470 = phi float [ %7308, %7298 ], [ %8093, %8066 ], [ %8463, %8440 ], [ %8093, %8097 ]
  %8471 = phi float [ %7309, %7298 ], [ %8076, %8066 ], [ %8447, %8440 ], [ %8076, %8097 ]
  %8472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8473 = extractvalue %dx.types.CBufRet.f32 %8472, 2
  %8474 = extractvalue %dx.types.CBufRet.f32 %8472, 3
  %8475 = fmul fast float %8473, %104
  %8476 = fmul fast float %8474, %105
  %8477 = call float @dx.op.unary.f32(i32 7, float %8475)  ; Saturate(value)
  %8478 = call float @dx.op.unary.f32(i32 7, float %8476)  ; Saturate(value)
  %8479 = select i1 %7040, i32 2, i32 0
  %8480 = or i32 %8479, 1
  %8481 = uitofp i32 %8480 to float
  %8482 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8477, float %8478, float %8481, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8483 = extractvalue %dx.types.ResRet.f32 %8482, 0
  %8484 = extractvalue %dx.types.ResRet.f32 %8482, 1
  %8485 = extractvalue %dx.types.ResRet.f32 %8482, 2
  %8486 = extractvalue %dx.types.ResRet.f32 %8482, 3
  %8487 = add nuw nsw i32 %8479, 2
  %8488 = uitofp i32 %8487 to float
  %8489 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8477, float %8478, float %8488, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8490 = extractvalue %dx.types.ResRet.f32 %8489, 0
  %8491 = extractvalue %dx.types.ResRet.f32 %8489, 1
  %8492 = extractvalue %dx.types.ResRet.f32 %8489, 2
  %8493 = extractvalue %dx.types.ResRet.f32 %8489, 3
  %8494 = call float @dx.op.binary.f32(i32 35, float %8484, float %8485)  ; FMax(a,b)
  %8495 = call float @dx.op.binary.f32(i32 35, float %8483, float %8494)  ; FMax(a,b)
  %8496 = call float @dx.op.binary.f32(i32 35, float %8495, float %8486)  ; FMax(a,b)
  %8497 = call float @dx.op.binary.f32(i32 36, float %8491, float %8492)  ; FMin(a,b)
  %8498 = call float @dx.op.binary.f32(i32 36, float %8490, float %8497)  ; FMin(a,b)
  %8499 = call float @dx.op.binary.f32(i32 36, float %8498, float %8493)  ; FMin(a,b)
  %8500 = fmul fast float %8496, 2.550000e+02
  %8501 = fadd fast float %8500, 0x3F70101020000000
  %8502 = fptoui float %8501 to i32
  %8503 = fmul fast float %8499, 2.550000e+02
  %8504 = fadd fast float %8503, 0x3F70101020000000
  %8505 = fptoui float %8504 to i32
  %8506 = icmp ult i32 %8502, %8505
  br i1 %8506, label %8507, label %8676

; <label>:8507                                    ; preds = %8464
  %8508 = fcmp fast ogt float %94, 9.843750e-01
  %8509 = fadd fast float %7302, -4.000000e+00
  %8510 = select i1 %8508, float -4.000000e+00, float %8509
  %8511 = call float @dx.op.binary.f32(i32 35, float %8510, float 0.000000e+00)  ; FMax(a,b)
  %8512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8513 = extractvalue %dx.types.CBufRet.f32 %8512, 0
  %8514 = fadd fast float %8513, %8511
  %8515 = extractvalue %dx.types.CBufRet.f32 %8512, 2
  %8516 = fmul fast float %8514, %8515
  %8517 = call float @dx.op.unary.f32(i32 23, float %8516)  ; Log(value)
  %8518 = extractvalue %dx.types.CBufRet.f32 %8512, 3
  %8519 = fmul fast float %8518, %8517
  %8520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8521 = extractvalue %dx.types.CBufRet.f32 %8520, 2
  %8522 = fmul fast float %8519, %8521
  %8523 = call float @dx.op.unary.f32(i32 7, float %8522)  ; Saturate(value)
  %8524 = uitofp i32 %8502 to float
  %8525 = uitofp i32 %8505 to float
  %8526 = fadd fast float %8524, 5.000000e-01
  %8527 = fadd fast float %8525, 5.000000e-01
  %8528 = fmul fast float %8521, %8526
  %8529 = fmul fast float %8521, %8527
  %8530 = fadd fast float %8528, 0x3F0FFB4800000000
  %8531 = fadd fast float %8529, 0xBF0FFB4800000000
  %8532 = call float @dx.op.binary.f32(i32 35, float %8523, float %8530)  ; FMax(a,b)
  %8533 = call float @dx.op.binary.f32(i32 36, float %8532, float %8531)  ; FMin(a,b)
  %8534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8535 = extractvalue %dx.types.CBufRet.f32 %8534, 1
  %8536 = extractvalue %dx.types.CBufRet.f32 %8534, 2
  %8537 = extractvalue %dx.types.CBufRet.f32 %8534, 0
  %8538 = select i1 %7040, float %8537, float 0.000000e+00
  %8539 = fmul fast float %8535, %8533
  %8540 = fadd fast float %8538, %8539
  %8541 = fadd fast float %8538, %8536
  %8542 = fsub fast float %8535, %8536
  %8543 = fadd fast float %8542, %8538
  %8544 = call float @dx.op.binary.f32(i32 35, float %8540, float %8541)  ; FMax(a,b)
  %8545 = call float @dx.op.binary.f32(i32 36, float %8544, float %8543)  ; FMin(a,b)
  %8546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8477, float %8478, float %8545, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8547 = extractvalue %dx.types.ResRet.f32 %8546, 0
  %8548 = extractvalue %dx.types.ResRet.f32 %8546, 1
  %8549 = extractvalue %dx.types.ResRet.f32 %8546, 2
  %8550 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8551 = extractvalue %dx.types.CBufRet.i32 %8550, 0
  %8552 = extractvalue %dx.types.CBufRet.i32 %8550, 1
  %8553 = uitofp i32 %8551 to float
  %8554 = uitofp i32 %8552 to float
  %8555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8556 = extractvalue %dx.types.CBufRet.f32 %8555, 0
  %8557 = extractvalue %dx.types.CBufRet.f32 %8555, 1
  %8558 = fmul fast float %8553, %8477
  %8559 = fmul fast float %8554, %8478
  %8560 = fadd fast float %8558, -5.000000e-01
  %8561 = fadd fast float %8559, -5.000000e-01
  %8562 = call float @dx.op.unary.f32(i32 22, float %8560)  ; Frc(value)
  %8563 = call float @dx.op.unary.f32(i32 22, float %8561)  ; Frc(value)
  %8564 = fmul fast float %8562, %8562
  %8565 = fmul fast float %8564, %8562
  %8566 = fsub fast float 3.000000e+00, %8562
  %8567 = fmul fast float %8564, %8566
  %8568 = fmul fast float %8562, 3.000000e+00
  %8569 = fmul fast float %8565, 3.000000e+00
  %8570 = fmul fast float %8564, 6.000000e+00
  %8571 = fsub fast float %8569, %8570
  %8572 = fadd fast float %8571, 4.000000e+00
  %8573 = fmul fast float %8572, 0x3FC5555560000000
  %8574 = fmul fast float %8565, -3.000000e+00
  %8575 = fadd fast float %8564, %8562
  %8576 = fmul fast float %8575, 3.000000e+00
  %8577 = fadd fast float %8574, 1.000000e+00
  %8578 = fadd fast float %8577, %8576
  %8579 = fmul fast float %8565, 0x3FC5555560000000
  %8580 = fmul fast float %8563, %8563
  %8581 = fmul fast float %8580, %8563
  %8582 = fsub fast float 3.000000e+00, %8563
  %8583 = fmul fast float %8580, %8582
  %8584 = fmul fast float %8563, 3.000000e+00
  %8585 = fmul fast float %8581, 3.000000e+00
  %8586 = fmul fast float %8580, 6.000000e+00
  %8587 = fsub fast float %8585, %8586
  %8588 = fadd fast float %8587, 4.000000e+00
  %8589 = fmul fast float %8588, 0x3FC5555560000000
  %8590 = fmul fast float %8581, -3.000000e+00
  %8591 = fadd fast float %8580, %8563
  %8592 = fmul fast float %8591, 3.000000e+00
  %8593 = fadd fast float %8590, 1.000000e+00
  %8594 = fadd fast float %8593, %8592
  %8595 = fmul fast float %8581, 0x3FC5555560000000
  %8596 = fadd fast float %8562, 1.000000e+00
  %8597 = fsub fast float 1.000000e+00, %8568
  %8598 = fadd fast float %8597, %8567
  %8599 = fadd fast float %8598, %8572
  %8600 = fmul fast float %8599, 0x3FC5555560000000
  %8601 = fdiv fast float %8573, %8600
  %8602 = fsub fast float %8596, %8601
  %8603 = fsub fast float 1.000000e+00, %8562
  %8604 = fadd fast float %8578, %8565
  %8605 = fmul fast float %8604, 0x3FC5555560000000
  %8606 = fdiv fast float %8579, %8605
  %8607 = fadd fast float %8603, %8606
  %8608 = fadd fast float %8563, 1.000000e+00
  %8609 = fsub fast float 1.000000e+00, %8584
  %8610 = fadd fast float %8609, %8583
  %8611 = fadd fast float %8610, %8588
  %8612 = fmul fast float %8611, 0x3FC5555560000000
  %8613 = fdiv fast float %8589, %8612
  %8614 = fsub fast float %8608, %8613
  %8615 = fsub fast float 1.000000e+00, %8563
  %8616 = fadd fast float %8594, %8581
  %8617 = fmul fast float %8616, 0x3FC5555560000000
  %8618 = fdiv fast float %8595, %8617
  %8619 = fadd fast float %8618, %8615
  %8620 = fmul fast float %8602, %8556
  %8621 = fsub fast float %8477, %8620
  %8622 = fmul fast float %8607, %8556
  %8623 = fadd fast float %8622, %8477
  %8624 = fmul fast float %8619, %8557
  %8625 = fadd fast float %8624, %8478
  %8626 = fmul fast float %8614, %8557
  %8627 = fsub fast float %8478, %8626
  %8628 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8621, float %8627, float %8545, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8629 = extractvalue %dx.types.ResRet.f32 %8628, 0
  %8630 = extractvalue %dx.types.ResRet.f32 %8628, 1
  %8631 = extractvalue %dx.types.ResRet.f32 %8628, 2
  %8632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8623, float %8627, float %8545, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8633 = extractvalue %dx.types.ResRet.f32 %8632, 0
  %8634 = extractvalue %dx.types.ResRet.f32 %8632, 1
  %8635 = extractvalue %dx.types.ResRet.f32 %8632, 2
  %8636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8621, float %8625, float %8545, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8637 = extractvalue %dx.types.ResRet.f32 %8636, 0
  %8638 = extractvalue %dx.types.ResRet.f32 %8636, 1
  %8639 = extractvalue %dx.types.ResRet.f32 %8636, 2
  %8640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8623, float %8625, float %8545, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8641 = extractvalue %dx.types.ResRet.f32 %8640, 0
  %8642 = extractvalue %dx.types.ResRet.f32 %8640, 1
  %8643 = extractvalue %dx.types.ResRet.f32 %8640, 2
  %8644 = fsub fast float %8637, %8629
  %8645 = fsub fast float %8638, %8630
  %8646 = fsub fast float %8639, %8631
  %8647 = fmul fast float %8644, %8617
  %8648 = fmul fast float %8645, %8617
  %8649 = fmul fast float %8646, %8617
  %8650 = fadd fast float %8647, %8629
  %8651 = fadd fast float %8648, %8630
  %8652 = fadd fast float %8649, %8631
  %8653 = fsub fast float %8641, %8633
  %8654 = fsub fast float %8642, %8634
  %8655 = fsub fast float %8643, %8635
  %8656 = fmul fast float %8653, %8617
  %8657 = fmul fast float %8654, %8617
  %8658 = fmul fast float %8655, %8617
  %8659 = fsub fast float %8633, %8650
  %8660 = fadd fast float %8659, %8656
  %8661 = fsub fast float %8634, %8651
  %8662 = fadd fast float %8661, %8657
  %8663 = fsub fast float %8635, %8652
  %8664 = fadd fast float %8663, %8658
  %8665 = fmul fast float %8660, %8605
  %8666 = fmul fast float %8662, %8605
  %8667 = fmul fast float %8664, %8605
  %8668 = fadd fast float %8665, %8650
  %8669 = fadd fast float %8666, %8651
  %8670 = fadd fast float %8667, %8652
  %8671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8672 = extractvalue %dx.types.CBufRet.f32 %8671, 1
  %8673 = fmul fast float %8668, %8672
  %8674 = fmul fast float %8669, %8672
  %8675 = fmul fast float %8670, %8672
  br label %8676

; <label>:8676                                    ; preds = %8507, %8464
  %8677 = phi float [ %8547, %8507 ], [ 1.000000e+00, %8464 ]
  %8678 = phi float [ %8548, %8507 ], [ 1.000000e+00, %8464 ]
  %8679 = phi float [ %8549, %8507 ], [ 1.000000e+00, %8464 ]
  %8680 = phi float [ %8673, %8507 ], [ 0.000000e+00, %8464 ]
  %8681 = phi float [ %8674, %8507 ], [ 0.000000e+00, %8464 ]
  %8682 = phi float [ %8675, %8507 ], [ 0.000000e+00, %8464 ]
  %8683 = fmul fast float %8680, %7018
  %8684 = fmul fast float %8681, %7018
  %8685 = fmul fast float %8682, %7018
  %8686 = fmul fast float %8677, %8471
  %8687 = call float @dx.op.dot3.f32(i32 55, float %8677, float %8678, float %8679, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8688 = call float @dx.op.dot3.f32(i32 55, float %8683, float %8684, float %8685, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8689 = select i1 %282, float %8687, float %8677
  %8690 = select i1 %282, float %8687, float %8678
  %8691 = select i1 %282, float 1.000000e+00, float %8679
  %8692 = select i1 %282, float %8688, float %8683
  %8693 = select i1 %282, float 0.000000e+00, float %8684
  %8694 = select i1 %282, float 0.000000e+00, float %8685
  %8695 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8696 = extractvalue %dx.types.CBufRet.i32 %8695, 3
  %8697 = and i32 %8696, 3
  %8698 = icmp ne i32 %8697, 0
  %8699 = and i32 %8696, 4
  %8700 = icmp ne i32 %8699, 0
  %8701 = and i1 %8698, %8700
  %8702 = and i1 %282, %8701
  br i1 %8702, label %8703, label %8709

; <label>:8703                                    ; preds = %8676
  %8704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8705 = extractvalue %dx.types.CBufRet.f32 %8704, 1
  %8706 = fadd fast float %8686, -1.000000e+00
  %8707 = fmul fast float %8705, %8706
  %8708 = fadd fast float %8707, 1.000000e+00
  br label %8709

; <label>:8709                                    ; preds = %8703, %8676
  %8710 = phi float [ %8708, %8703 ], [ %8686, %8676 ]
  %8711 = fadd fast float %8468, %8465
  %8712 = fmul fast float %8689, %8711
  %8713 = fadd fast float %8712, %8692
  %8714 = fadd fast float %8469, %8466
  %8715 = fmul fast float %8690, %8714
  %8716 = fadd fast float %8715, %8693
  %8717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8718 = extractvalue %dx.types.CBufRet.f32 %8717, 0
  br i1 %282, label %8719, label %8743

; <label>:8719                                    ; preds = %8709
  %8720 = fadd fast float %8713, %8716
  %8721 = fmul fast float %8718, %8720
  %8722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8723 = extractvalue %dx.types.CBufRet.f32 %8722, 3
  %8724 = extractvalue %dx.types.CBufRet.f32 %7022, 1
  %8725 = fsub fast float %7027, %7021
  %8726 = fadd fast float %8725, %7028
  %8727 = fsub fast float %8726, %8724
  %8728 = extractvalue %dx.types.CBufRet.f32 %7022, 2
  %8729 = fmul fast float %8727, %8728
  %8730 = call float @dx.op.unary.f32(i32 7, float %8729)  ; Saturate(value)
  %8731 = fsub fast float %8730, %8723
  %8732 = fmul fast float %8731, %8710
  %8733 = fadd fast float %8732, %8723
  %8734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8735 = extractvalue %dx.types.CBufRet.f32 %8734, 0
  %8736 = fsub fast float %8733, %8735
  %8737 = fmul fast float %8736, 1.000000e+01
  %8738 = call float @dx.op.unary.f32(i32 7, float %8737)  ; Saturate(value)
  %8739 = fsub fast float %3865, %7018
  %8740 = fmul fast float %8738, %8739
  %8741 = fadd fast float %8740, %7018
  %8742 = fmul fast float %8741, %8733
  br label %8767

; <label>:8743                                    ; preds = %8709
  %8744 = fadd fast float %8470, %8467
  %8745 = fmul fast float %8691, %8744
  %8746 = fadd fast float %8745, %8694
  %8747 = fmul fast float %8718, %8713
  %8748 = fmul fast float %8718, %8716
  %8749 = fmul fast float %8718, %8746
  %8750 = call float @dx.op.binary.f32(i32 35, float %8748, float %8749)  ; FMax(a,b)
  %8751 = call float @dx.op.binary.f32(i32 35, float %8747, float %8750)  ; FMax(a,b)
  %8752 = call float @dx.op.binary.f32(i32 35, float %8751, float %7018)  ; FMax(a,b)
  %8753 = fcmp fast ugt float %8752, 0x3F10000000000000
  br i1 %8753, label %8755, label %8754

; <label>:8754                                    ; preds = %8743
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8755

; <label>:8755                                    ; preds = %8754, %8743
  %8756 = add i32 %54, 356
  %8757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8756, i32 undef)  ; BufferLoad(srv,index,wot)
  %8758 = extractvalue %dx.types.ResRet.i32 %8757, 0
  %8759 = and i32 %8758, 32
  %8760 = icmp eq i32 %8759, 0
  br i1 %8760, label %8767, label %8761

; <label>:8761                                    ; preds = %8755
  %8762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8763 = extractvalue %dx.types.CBufRet.f32 %8762, 0
  %8764 = fmul fast float %8763, 0x3FE99999A0000000
  %8765 = fadd fast float %8763, %8747
  %8766 = fadd fast float %8764, %8749
  br label %8767

; <label>:8767                                    ; preds = %8761, %8755, %8719
  %8768 = phi float [ %8721, %8719 ], [ %8765, %8761 ], [ %8747, %8755 ]
  %8769 = phi float [ %8742, %8719 ], [ %8748, %8761 ], [ %8748, %8755 ]
  %8770 = phi float [ %8741, %8719 ], [ %8766, %8761 ], [ %8749, %8755 ]
  %8771 = phi float [ %8741, %8719 ], [ %7018, %8761 ], [ %7018, %8755 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8772 = call float @dx.op.binary.f32(i32 36, float %8768, float 3.225500e+04)  ; FMin(a,b)
  %8773 = call float @dx.op.binary.f32(i32 36, float %8769, float 3.225500e+04)  ; FMin(a,b)
  %8774 = call float @dx.op.binary.f32(i32 36, float %8770, float 3.225500e+04)  ; FMin(a,b)
  %8775 = call float @dx.op.binary.f32(i32 36, float %8771, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8772)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8773)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8774)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8775)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

