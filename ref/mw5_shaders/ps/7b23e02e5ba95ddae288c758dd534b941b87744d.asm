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
; shader hash: 012221e04a659bd65b6e3b998d50538e
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
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          3d      T3     t52,space2     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     f32          2d      T5     t69,space2     1
;                                   texture    byte         r/o      T6     t18,space1     1
;                                   texture    byte         r/o      T7     t19,space1     1
;                                   texture    byte         r/o      T8     t20,space1     1
;                                   texture    byte         r/o      T9     t21,space1     1
;                                   texture     f32          2d     T10     t37,space2     1
;                                   texture     f32          2d     T11             t0     1
;                                   texture     f32          2d     T12     t58,space2     1
;                                   texture     f32          2d     T13     t57,space2     1
;                                   texture    byte         r/o     T14     t69,space1     1
;                                   texture     u32          2d     T15     t56,space2     1
;                                   texture     f32          2d     T16     t34,space2     1
;                                   texture     f32          2d     T17      t1,space2     1
;                                   texture     f32          2d     T18      t2,space2     1
;                                   texture     f32          2d     T19      t3,space2     1
;                                   texture     f32          2d     T20      t4,space2     1
;                                   textureunorm_f32     2darray     T21     t80,space2     1
;                                   texture    byte         r/o     T22     t67,space1     1
;                                   texture     f32          2d     T23      t7,space2     1
;                                   texture     f32          2d     T24      t6,space2     1
;                                   texture     f32          2d     T25      t5,space2     1
;                                   texture     f32          2d     T26     t38,space2     1
;                                   texture     f32          1d     T27     t30,space2     1
;                                   texture     f32          3d     T28     t44,space2     1
;                                   texture     f32          3d     T29     t45,space2     1
;                                   texture     f32     2darray     T30     t47,space2     1
;                                   textureunorm_f32     2darray     T31     t85,space2     1
;                                   texture     f32          2d     T32     t83,space2     1
;                                   texture     f32          2d     T33     t86,space2     1
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
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = alloca [4 x i32], align 4
  %42 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = alloca [12 x float], align 4
  %85 = alloca [12 x float], align 4
  %86 = alloca [3 x float], align 4
  %87 = alloca [3 x float], align 4
  %88 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %89 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = fmul fast float %91, %80
  %93 = fmul fast float %91, %81
  %94 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %95 = bitcast float %94 to i32
  %96 = ashr i32 %95, 1
  %97 = sub nsw i32 1597250115, %96
  %98 = bitcast i32 %97 to float
  %99 = fmul fast float %98, %71
  %100 = fmul fast float %98, %72
  %101 = fmul fast float %98, %73
  %102 = fmul fast float %72, %69
  %103 = fmul fast float %73, %68
  %104 = fsub fast float %102, %103
  %105 = fmul fast float %73, %67
  %106 = fmul fast float %71, %69
  %107 = fsub fast float %105, %106
  %108 = fmul fast float %71, %68
  %109 = fmul fast float %72, %67
  %110 = fsub fast float %108, %109
  %111 = fmul fast float %104, %70
  %112 = fmul fast float %107, %70
  %113 = fmul fast float %110, %70
  %114 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %115 = bitcast float %114 to i32
  %116 = ashr i32 %115, 1
  %117 = sub nsw i32 1597250115, %116
  %118 = bitcast i32 %117 to float
  %119 = fmul fast float %118, %60
  %120 = fmul fast float %118, %61
  %121 = fmul fast float %118, %62
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = fcmp fast une float %123, 0.000000e+00
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 3
  %128 = fmul fast float %92, 2.000000e+00
  %129 = fmul fast float %128, %126
  %130 = fmul fast float %93, 2.000000e+00
  %131 = fmul fast float %130, %127
  %132 = fsub fast float 1.000000e+00, %129
  %133 = fsub fast float 1.000000e+00, %131
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = select i1 %124, float %135, float %139
  %143 = select i1 %124, float %136, float %140
  %144 = select i1 %124, float %137, float %141
  %145 = fmul fast float %142, %132
  %146 = fmul fast float %143, %132
  %147 = fmul fast float %144, %132
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = select i1 %124, float %149, float %153
  %157 = select i1 %124, float %150, float %154
  %158 = select i1 %124, float %151, float %155
  %159 = fmul fast float %156, %133
  %160 = fmul fast float %157, %133
  %161 = fmul fast float %158, %133
  %162 = fadd fast float %159, %145
  %163 = fadd fast float %160, %146
  %164 = fadd fast float %161, %147
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = extractvalue %dx.types.CBufRet.f32 %169, 1
  %172 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %173 = select i1 %124, float %166, float %170
  %174 = select i1 %124, float %167, float %171
  %175 = select i1 %124, float %168, float %172
  %176 = fadd fast float %162, %173
  %177 = fadd fast float %163, %174
  %178 = fadd fast float %164, %175
  %179 = fmul fast float %176, %83
  %180 = fmul fast float %177, %83
  %181 = fmul fast float %178, %83
  %182 = fmul fast float %92, 5.000000e-01
  %183 = fmul fast float %93, 5.000000e-01
  %184 = fptosi float %182 to i32
  %185 = fptosi float %183 to i32
  %186 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %184, i32 %185, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = lshr i32 %187, 18
  %189 = uitofp i32 %188 to float
  %190 = fmul fast float %189, 0x3F4C00EBA0000000
  %191 = call float @dx.op.unary.f32(i32 21, float %190)  ; Exp(value)
  %192 = fadd fast float %191, -1.000000e+00
  %193 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %19, i32 0)  ; GetDimensions(handle,mipLevel)
  %194 = extractvalue %dx.types.Dimensions %193, 0
  %195 = sitofp i32 %194 to float
  %196 = extractvalue %dx.types.Dimensions %193, 1
  %197 = sitofp i32 %196 to float
  %198 = fcmp fast oge float %182, %195
  %199 = fcmp fast oge float %183, %197
  %200 = or i1 %198, %199
  %201 = select i1 %200, float 0x4197782600000000, float %192
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 2
  %204 = extractvalue %dx.types.CBufRet.f32 %202, 3
  %205 = fmul fast float %203, %92
  %206 = fmul fast float %204, %93
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = and i32 %208, 114688
  %210 = icmp ne i32 %209, 0
  %211 = select i1 %210, float %205, float 0.000000e+00
  %212 = select i1 %210, float %206, float 0.000000e+00
  %213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %37, float %211, float %212, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = fmul fast float %214, 2.550000e+02
  %216 = fptoui float %215 to i32
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.i32 %218, 3
  %220 = and i32 %219, 3
  %221 = icmp ne i32 %220, 0
  %222 = and i32 %219, 4
  %223 = icmp ne i32 %222, 0
  %224 = and i1 %221, %223
  br i1 %224, label %225, label %236

; <label>:225                                     ; preds = %0
  %226 = extractvalue %dx.types.CBufRet.f32 %217, 3
  %227 = fmul fast float %226, %93
  %228 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %229 = fmul fast float %228, %92
  %230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %36, float %229, float %227, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = fsub fast float 1.000000e+00, %231
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 0
  %235 = fcmp fast olt float %232, %234
  br label %239

; <label>:236                                     ; preds = %0
  %237 = icmp eq i32 %222, 0
  %238 = and i1 %221, %237
  br label %239

; <label>:239                                     ; preds = %236, %225
  %240 = phi i1 [ %235, %225 ], [ %238, %236 ]
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 2
  %243 = fmul fast float %242, 0x3FE3C6EF40000000
  %244 = frem fast float %92, 2.560000e+02
  %245 = frem fast float %93, 2.560000e+02
  %246 = fptoui float %244 to i32
  %247 = fptoui float %245 to i32
  %248 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %246, i32 %247, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = fadd fast float %249, %243
  %251 = call float @dx.op.unary.f32(i32 22, float %250)  ; Frc(value)
  %252 = add i32 %42, 156
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = shl i32 %254, 4
  %256 = and i32 %255, 32752
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %254, 7
  %259 = and i32 %258, 32752
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %254, 22
  %262 = shl nuw nsw i32 %261, 5
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = add i32 %42, 216
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 255
  %268 = uitofp i32 %267 to float
  %269 = fmul fast float %268, 0x3F70101020000000
  %270 = lshr i32 %266, 8
  %271 = and i32 %270, 255
  %272 = uitofp i32 %271 to float
  %273 = fmul fast float %272, 0x3F70101020000000
  %274 = lshr i32 %266, 16
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, 0x3F70101020000000
  %278 = add i32 %42, 36
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = and i32 %280, 65535
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %280, 16
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = add i32 %42, 288
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 65535
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %287, 16
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = fmul fast float %289, 0x3F50624DE0000000
  %293 = fmul fast float %291, 0x3F50624DE0000000
  %294 = add i32 %42, 172
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %306 = add i32 %42, 232
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %320 = add i32 %42, 52
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %322, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = add i32 %42, 304
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 65535
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %329, 16
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = fmul fast float %331, 0x3F50624DE0000000
  %335 = fmul fast float %333, 0x3F50624DE0000000
  %336 = add i32 %42, 188
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %348 = add i32 %42, 248
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %362 = add i32 %42, 68
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 65535
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %364, 16
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = add i32 %42, 320
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 65535
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %371, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = fmul fast float %373, 0x3F50624DE0000000
  %377 = fmul fast float %375, 0x3F50624DE0000000
  %378 = add i32 %42, 204
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %390 = add i32 %42, 264
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %404 = add i32 %42, 84
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 65535
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = lshr i32 %406, 16
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = add i32 %42, 336
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 65535
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = lshr i32 %413, 16
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = fmul fast float %415, 0x3F50624DE0000000
  %419 = fmul fast float %417, 0x3F50624DE0000000
  %420 = add i32 %42, 348
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, 32
  %424 = icmp eq i32 %423, 0
  %425 = and i32 %422, 64
  %426 = icmp eq i32 %425, 0
  %427 = and i32 %422, 128
  %428 = icmp eq i32 %427, 0
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 2
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %448, label %433

; <label>:433                                     ; preds = %239
  %434 = add i32 %42, 488
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = add i32 %436, 0
  %438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %437, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %439 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %438, %dx.types.Handle %89, float %74, float %75, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 0
  %441 = extractvalue %dx.types.ResRet.f32 %439, 1
  %442 = extractvalue %dx.types.ResRet.f32 %439, 2
  %443 = extractvalue %dx.types.ResRet.f32 %439, 3
  %444 = fmul fast float %443, %76
  %445 = fmul fast float %440, %77
  %446 = fmul fast float %441, %78
  %447 = fmul fast float %442, %79
  br label %448

; <label>:448                                     ; preds = %433, %239
  %449 = phi float [ %79, %239 ], [ %447, %433 ]
  %450 = phi float [ %78, %239 ], [ %446, %433 ]
  %451 = phi float [ %77, %239 ], [ %445, %433 ]
  %452 = phi float [ %76, %239 ], [ %444, %433 ]
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = and i32 %454, 2
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %476, label %457

; <label>:457                                     ; preds = %448
  %458 = add i32 %42, 44
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = and i32 %460, 1
  %462 = icmp ne i32 %461, 0
  %463 = select i1 %462, float %451, float 1.000000e+00
  %464 = add i32 %42, 60
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %466, 1
  %468 = icmp ne i32 %467, 0
  %469 = select i1 %468, float %450, float 1.000000e+00
  %470 = add i32 %42, 76
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 1
  %474 = icmp ne i32 %473, 0
  %475 = select i1 %474, float %449, float 1.000000e+00
  br label %476

; <label>:476                                     ; preds = %457, %448
  %477 = phi float [ %449, %448 ], [ %475, %457 ]
  %478 = phi float [ %450, %448 ], [ %469, %457 ]
  %479 = phi float [ %451, %448 ], [ %463, %457 ]
  %480 = lshr i32 %454, 20
  %481 = and i32 %480, 3
  %482 = add nuw nsw i32 %481, 1
  %483 = add i32 %42, 24
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = add i32 %42, 28
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = or i32 %488, %485
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %1109, label %491

; <label>:491                                     ; preds = %476
  %492 = and i32 %485, 262144
  %493 = icmp ne i32 %492, 0
  %494 = select i1 %493, float %47, float 1.000000e+00
  %495 = select i1 %493, float %48, float 0.000000e+00
  %496 = select i1 %493, float %49, float 0.000000e+00
  %497 = select i1 %493, float %50, float 1.000000e+00
  %498 = select i1 %493, float %51, float %74
  %499 = select i1 %493, float %52, float %75
  %500 = add i32 %42, 284
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = lshr i32 %502, 16
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = fmul fast float %504, 0x3F50624DE0000000
  %506 = add i32 %42, 88
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = lshr i32 %508, 16
  %510 = and i32 %509, 255
  %511 = lshr i32 %508, 24
  %512 = add i32 %42, 292
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = and i32 %514, 65535
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = lshr i32 %514, 16
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = add i32 %42, 32
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = lshr i32 %521, 22
  %523 = shl nuw nsw i32 %522, 5
  %524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %523)  ; LegacyF16ToF32(value)
  %525 = shl i32 %521, 4
  %526 = and i32 %525, 32752
  %527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %526)  ; LegacyF16ToF32(value)
  %528 = lshr i32 %521, 7
  %529 = and i32 %528, 32752
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.f32 %531, 3
  %533 = fmul fast float %532, 1.000000e+03
  %534 = fmul fast float %292, %533
  %535 = call float @dx.op.unary.f32(i32 22, float %534)  ; Frc(value)
  %536 = fadd fast float %535, %282
  %537 = fmul fast float %293, %533
  %538 = call float @dx.op.unary.f32(i32 22, float %537)  ; Frc(value)
  %539 = fadd fast float %538, %284
  %540 = fmul fast float %505, %533
  %541 = call float @dx.op.unary.f32(i32 22, float %540)  ; Frc(value)
  %542 = fmul fast float %541, 0x401921FB60000000
  %543 = fadd fast float %542, %524
  %544 = call float @dx.op.unary.f32(i32 13, float %543)  ; Sin(value)
  %545 = call float @dx.op.unary.f32(i32 12, float %543)  ; Cos(value)
  %546 = fsub fast float -0.000000e+00, %544
  %547 = fadd fast float %498, -5.000000e-01
  %548 = fadd fast float %499, -5.000000e-01
  %549 = fmul fast float %516, %547
  %550 = fmul fast float %518, %548
  %551 = fadd fast float %549, 5.000000e-01
  %552 = fadd fast float %550, 5.000000e-01
  %553 = fmul fast float %527, %551
  %554 = fmul fast float %530, %552
  %555 = fmul fast float %545, %553
  %556 = call float @dx.op.tertiary.f32(i32 46, float %546, float %554, float %555)  ; FMad(a,b,c)
  %557 = fmul fast float %544, %553
  %558 = call float @dx.op.tertiary.f32(i32 46, float %545, float %554, float %557)  ; FMad(a,b,c)
  %559 = fadd fast float %536, %556
  %560 = fadd fast float %539, %558
  %561 = icmp ugt i32 %510, 1
  %562 = icmp ugt i32 %508, 33554431
  %563 = or i1 %562, %561
  br i1 %563, label %564, label %589

; <label>:564                                     ; preds = %491
  %565 = add i32 %42, 228
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = lshr i32 %567, 16
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = fmul fast float %532, %569
  %571 = call float @dx.op.unary.f32(i32 22, float %570)  ; Frc(value)
  %572 = mul nuw nsw i32 %510, %511
  %573 = uitofp i32 %572 to float
  %574 = fmul fast float %571, %573
  %575 = call float @dx.op.unary.f32(i32 27, float %574)  ; Round_ni(value)
  %576 = fptoui float %575 to i32
  %577 = urem i32 %576, %510
  %578 = udiv i32 %576, %511
  %579 = call float @dx.op.unary.f32(i32 22, float %559)  ; Frc(value)
  %580 = call float @dx.op.unary.f32(i32 22, float %560)  ; Frc(value)
  %581 = uitofp i32 %577 to float
  %582 = uitofp i32 %578 to float
  %583 = fadd fast float %579, %581
  %584 = fadd fast float %580, %582
  %585 = uitofp i32 %510 to float
  %586 = uitofp i32 %511 to float
  %587 = fdiv fast float %583, %585
  %588 = fdiv fast float %584, %586
  br label %589

; <label>:589                                     ; preds = %564, %491
  %590 = phi float [ %587, %564 ], [ %559, %491 ]
  %591 = phi float [ %588, %564 ], [ %560, %491 ]
  %592 = and i32 %485, 256
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %640, label %594

; <label>:594                                     ; preds = %589
  %595 = add i32 %42, 424
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = add i32 %597, 0
  %599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %598, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %600 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %599, %dx.types.Handle %89, float %590, float %591, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = add i32 %42, 100
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = shl i32 %604, 4
  %606 = and i32 %605, 32752
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = lshr i32 %604, 7
  %609 = and i32 %608, 32752
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = fsub fast float 1.000000e+00, %452
  %612 = call float @dx.op.binary.f32(i32 35, float %611, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %613 = bitcast float %452 to i32
  %614 = sitofp i32 %613 to float
  %615 = fadd fast float %614, 0xC1CFBF8940000000
  %616 = fmul fast float %610, %615
  %617 = fadd fast float %616, 0x41CFBF8940000000
  %618 = fptosi float %617 to i32
  %619 = bitcast i32 %618 to float
  %620 = bitcast float %612 to i32
  %621 = sitofp i32 %620 to float
  %622 = fadd fast float %621, 0xC1CFBF8940000000
  %623 = fmul fast float %622, %610
  %624 = fadd fast float %623, 0x41CFBF8940000000
  %625 = fptosi float %624 to i32
  %626 = bitcast i32 %625 to float
  %627 = fmul fast float %619, %607
  %628 = fmul fast float %626, %607
  %629 = fsub fast float %612, %627
  %630 = fadd fast float %628, %612
  %631 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %632 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  %633 = fsub fast float %601, %631
  %634 = fsub fast float %632, %631
  %635 = bitcast float %634 to i32
  %636 = sub nsw i32 2129859010, %635
  %637 = bitcast i32 %636 to float
  %638 = fmul fast float %637, %633
  %639 = call float @dx.op.unary.f32(i32 7, float %638)  ; Saturate(value)
  br label %640

; <label>:640                                     ; preds = %594, %589
  %641 = phi float [ %639, %594 ], [ %452, %589 ]
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = and i32 %643, 128
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %662, label %646

; <label>:646                                     ; preds = %640
  %647 = add i32 %42, 408
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = add i32 %649, 0
  %651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %650, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %652 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %651, %dx.types.Handle %89, float %590, float %591, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %653 = extractvalue %dx.types.ResRet.f32 %652, 0
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = and i32 %655, 524288
  %657 = icmp ne i32 %656, 0
  %658 = fcmp fast ogt float %653, 0x3FE0101020000000
  %659 = select i1 %658, float 1.000000e+00, float 0.000000e+00
  %660 = select i1 %657, float %659, float %653
  %661 = fmul fast float %660, %641
  br label %662

; <label>:662                                     ; preds = %646, %640
  %663 = phi float [ %661, %646 ], [ %641, %640 ]
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = and i32 %665, 16
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %866, label %668

; <label>:668                                     ; preds = %662
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = add i32 %42, 360
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %671, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = add i32 %673, 0
  %675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %674, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %676 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %675, %dx.types.Handle %88, float %590, float %591, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %677 = extractvalue %dx.types.ResRet.f32 %676, 0
  %678 = extractvalue %dx.types.ResRet.f32 %676, 1
  %679 = extractvalue %dx.types.ResRet.f32 %676, 2
  %680 = extractvalue %dx.types.ResRet.f32 %676, 3
  %681 = and i32 %670, 255
  %682 = uitofp i32 %681 to float
  %683 = lshr i32 %670, 8
  %684 = and i32 %683, 255
  %685 = uitofp i32 %684 to float
  %686 = fmul fast float %680, %682
  %687 = fadd fast float %686, %685
  %688 = fmul fast float %687, 0x3F70101000000000
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = and i32 %690, 512
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %701, label %693

; <label>:693                                     ; preds = %668
  %694 = add i32 %42, 440
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = add i32 %696, 0
  %698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %697, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %698, %dx.types.Handle %89, float %590, float %591, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %700 = extractvalue %dx.types.ResRet.f32 %699, 0
  br label %701

; <label>:701                                     ; preds = %693, %668
  %702 = phi float [ %700, %693 ], [ 1.000000e+00, %668 ]
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = and i32 %704, 33554432
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %813, label %707

; <label>:707                                     ; preds = %701
  %708 = add i32 %42, 224
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = and i32 %710, 65535
  %712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %711)  ; LegacyF16ToF32(value)
  %713 = lshr i32 %710, 16
  %714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %713)  ; LegacyF16ToF32(value)
  %715 = add i32 %42, 228
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %715, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = and i32 %717, 65535
  %719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %718)  ; LegacyF16ToF32(value)
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = lshr i32 %721, 24
  %723 = uitofp i32 %722 to float
  %724 = fmul fast float %723, 0x3F70101020000000
  %725 = and i32 %721, 255
  %726 = uitofp i32 %725 to float
  %727 = fmul fast float %726, 0x3F70101020000000
  %728 = lshr i32 %721, 8
  %729 = and i32 %728, 255
  %730 = uitofp i32 %729 to float
  %731 = fmul fast float %730, 0x3F70101020000000
  %732 = lshr i32 %721, 16
  %733 = and i32 %732, 255
  %734 = uitofp i32 %733 to float
  %735 = fmul fast float %734, 0x3F70101020000000
  %736 = add i32 %42, 220
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = lshr i32 %738, 24
  %740 = uitofp i32 %739 to float
  %741 = fmul fast float %740, 0x3F70101020000000
  %742 = and i32 %738, 255
  %743 = uitofp i32 %742 to float
  %744 = fmul fast float %743, 0x3F70101020000000
  %745 = lshr i32 %738, 8
  %746 = and i32 %745, 255
  %747 = uitofp i32 %746 to float
  %748 = fmul fast float %747, 0x3F70101020000000
  %749 = lshr i32 %738, 16
  %750 = and i32 %749, 255
  %751 = uitofp i32 %750 to float
  %752 = fmul fast float %751, 0x3F70101020000000
  %753 = bitcast float %677 to i32
  %754 = ashr i32 %753, 1
  %755 = sub nsw i32 1597463174, %754
  %756 = bitcast i32 %755 to float
  %757 = fmul fast float %677, 5.000000e-01
  %758 = fmul fast float %756, %756
  %759 = fmul fast float %758, %757
  %760 = fsub fast float 1.500000e+00, %759
  %761 = fmul fast float %756, %677
  %762 = fmul fast float %761, %760
  %763 = bitcast float %678 to i32
  %764 = ashr i32 %763, 1
  %765 = sub nsw i32 1597463174, %764
  %766 = bitcast i32 %765 to float
  %767 = fmul fast float %678, 5.000000e-01
  %768 = fmul fast float %766, %766
  %769 = fmul fast float %768, %767
  %770 = fsub fast float 1.500000e+00, %769
  %771 = fmul fast float %766, %678
  %772 = fmul fast float %771, %770
  %773 = bitcast float %679 to i32
  %774 = ashr i32 %773, 1
  %775 = sub nsw i32 1597463174, %774
  %776 = bitcast i32 %775 to float
  %777 = fmul fast float %679, 5.000000e-01
  %778 = fmul fast float %776, %776
  %779 = fmul fast float %778, %777
  %780 = fsub fast float 1.500000e+00, %779
  %781 = fmul fast float %776, %679
  %782 = fmul fast float %781, %780
  %783 = fsub fast float %762, %744
  %784 = fsub fast float %772, %748
  %785 = fsub fast float %782, %752
  %786 = fmul fast float %783, %712
  %787 = fmul fast float %784, %714
  %788 = fmul fast float %785, %719
  %789 = fadd fast float %786, %727
  %790 = fadd fast float %787, %731
  %791 = fadd fast float %788, %735
  %792 = call float @dx.op.unary.f32(i32 7, float %789)  ; Saturate(value)
  %793 = call float @dx.op.unary.f32(i32 7, float %790)  ; Saturate(value)
  %794 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  %795 = fmul fast float %792, %792
  %796 = fmul fast float %793, %793
  %797 = fmul fast float %794, %794
  %798 = fsub fast float %795, %677
  %799 = fsub fast float %796, %678
  %800 = fsub fast float %797, %679
  %801 = fmul fast float %798, %702
  %802 = fmul fast float %799, %702
  %803 = fmul fast float %800, %702
  %804 = fadd fast float %801, %677
  %805 = fadd fast float %802, %678
  %806 = fadd fast float %803, %679
  %807 = fadd fast float %724, %688
  %808 = fsub fast float %807, %741
  %809 = call float @dx.op.unary.f32(i32 7, float %808)  ; Saturate(value)
  %810 = fsub fast float %809, %688
  %811 = fmul fast float %810, %702
  %812 = fadd fast float %811, %688
  br label %866

; <label>:813                                     ; preds = %701
  %814 = and i32 %704, 134217728
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %850, label %816

; <label>:816                                     ; preds = %813
  %817 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %818 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %819 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %820 = fadd fast float %817, -5.000000e-01
  %821 = fadd fast float %818, -5.000000e-01
  %822 = fadd fast float %819, -5.000000e-01
  %823 = fmul fast float %820, %702
  %824 = fmul fast float %821, %702
  %825 = fmul fast float %822, %702
  %826 = fadd fast float %823, 5.000000e-01
  %827 = fadd fast float %824, 5.000000e-01
  %828 = fadd fast float %825, 5.000000e-01
  %829 = call float @dx.op.unary.f32(i32 24, float %677)  ; Sqrt(value)
  %830 = call float @dx.op.unary.f32(i32 24, float %678)  ; Sqrt(value)
  %831 = call float @dx.op.unary.f32(i32 24, float %679)  ; Sqrt(value)
  %832 = fmul fast float %826, 2.000000e+00
  %833 = fsub fast float 1.000000e+00, %832
  %834 = fmul fast float %833, %829
  %835 = fadd fast float %834, %832
  %836 = fmul fast float %835, %829
  %837 = fmul fast float %827, 2.000000e+00
  %838 = fsub fast float 1.000000e+00, %837
  %839 = fmul fast float %838, %830
  %840 = fadd fast float %839, %837
  %841 = fmul fast float %840, %830
  %842 = fmul fast float %828, 2.000000e+00
  %843 = fsub fast float 1.000000e+00, %842
  %844 = fmul fast float %843, %831
  %845 = fadd fast float %844, %842
  %846 = fmul fast float %845, %831
  %847 = fmul fast float %836, %836
  %848 = fmul fast float %841, %841
  %849 = fmul fast float %846, %846
  br label %866

; <label>:850                                     ; preds = %813
  %851 = fmul fast float %269, %269
  %852 = fmul fast float %273, %273
  %853 = fmul fast float %277, %277
  %854 = fadd fast float %851, -1.000000e+00
  %855 = fadd fast float %852, -1.000000e+00
  %856 = fadd fast float %853, -1.000000e+00
  %857 = fmul fast float %702, %854
  %858 = fmul fast float %702, %855
  %859 = fmul fast float %702, %856
  %860 = fadd fast float %857, 1.000000e+00
  %861 = fadd fast float %858, 1.000000e+00
  %862 = fadd fast float %859, 1.000000e+00
  %863 = fmul fast float %860, %677
  %864 = fmul fast float %861, %678
  %865 = fmul fast float %862, %679
  br label %866

; <label>:866                                     ; preds = %850, %816, %707, %662
  %867 = phi float [ %812, %707 ], [ %688, %816 ], [ %688, %850 ], [ 0x3FA23C0BE0000000, %662 ]
  %868 = phi float [ %804, %707 ], [ %847, %816 ], [ %863, %850 ], [ 1.000000e+00, %662 ]
  %869 = phi float [ %805, %707 ], [ %848, %816 ], [ %864, %850 ], [ 1.000000e+00, %662 ]
  %870 = phi float [ %806, %707 ], [ %849, %816 ], [ %865, %850 ], [ 1.000000e+00, %662 ]
  %871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.i32 %871, 1
  %873 = and i32 %872, 1
  %874 = icmp ne i32 %873, 0
  %875 = add i32 %42, 356
  %876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.i32 %876, 0
  %878 = and i32 %877, 32
  %879 = icmp ne i32 %878, 0
  %880 = and i1 %874, %879
  %881 = select i1 %880, float 1.000000e+00, float %868
  %882 = select i1 %880, float 0x3FD3333340000000, float %869
  %883 = select i1 %880, float 0x3FD3333340000000, float %870
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = and i32 %885, 32
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %960, label %888

; <label>:888                                     ; preds = %866
  %889 = add i32 %42, 92
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %889, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = add i32 %42, 376
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = add i32 %894, 0
  %896 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %895, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %897 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %896, %dx.types.Handle %88, float %590, float %591, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %898 = extractvalue %dx.types.ResRet.f32 %897, 0
  %899 = extractvalue %dx.types.ResRet.f32 %897, 1
  %900 = extractvalue %dx.types.ResRet.f32 %897, 2
  %901 = extractvalue %dx.types.ResRet.f32 %897, 3
  %902 = and i32 %891, 255
  %903 = uitofp i32 %902 to float
  %904 = lshr i32 %891, 8
  %905 = and i32 %904, 255
  %906 = uitofp i32 %905 to float
  %907 = lshr i32 %891, 16
  %908 = and i32 %907, 255
  %909 = uitofp i32 %908 to float
  %910 = fmul fast float %909, 0x3F70101000000000
  %911 = fmul fast float %898, %903
  %912 = fadd fast float %911, %906
  %913 = fmul fast float %912, 0x3F70101000000000
  %914 = fadd fast float %899, -5.000000e-01
  %915 = fadd fast float %901, -5.000000e-01
  %916 = fmul fast float %914, %910
  %917 = fmul fast float %915, %910
  %918 = fadd fast float %916, 5.000000e-01
  %919 = fadd fast float %917, 5.000000e-01
  %920 = fmul fast float %918, 2.000000e+00
  %921 = fadd fast float %920, -1.000000e+00
  %922 = fmul fast float %919, 2.000000e+00
  %923 = fadd fast float %922, -1.000000e+00
  %924 = fadd fast float %921, %923
  %925 = fmul fast float %924, 5.000000e-01
  %926 = fsub fast float %921, %923
  %927 = fmul fast float %926, 5.000000e-01
  %928 = call float @dx.op.unary.f32(i32 6, float %925)  ; FAbs(value)
  %929 = fsub fast float 1.000000e+00, %928
  %930 = call float @dx.op.unary.f32(i32 6, float %927)  ; FAbs(value)
  %931 = fsub fast float %929, %930
  %932 = call float @dx.op.dot3.f32(i32 55, float %925, float %927, float %931, float %925, float %927, float %931)  ; Dot3(ax,ay,az,bx,by,bz)
  %933 = call float @dx.op.unary.f32(i32 25, float %932)  ; Rsqrt(value)
  %934 = fmul fast float %925, %933
  %935 = fmul fast float %927, %933
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = and i32 %937, 67108864
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %956, label %940

; <label>:940                                     ; preds = %888
  %941 = add i32 %42, 280
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = and i32 %943, 65535
  %945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %944)  ; LegacyF16ToF32(value)
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = and i32 %947, 65535
  %949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %948)  ; LegacyF16ToF32(value)
  %950 = lshr i32 %943, 16
  %951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %950)  ; LegacyF16ToF32(value)
  %952 = fsub fast float %913, %951
  %953 = fmul fast float %952, %945
  %954 = fadd fast float %953, %949
  %955 = call float @dx.op.unary.f32(i32 7, float %954)  ; Saturate(value)
  br label %956

; <label>:956                                     ; preds = %940, %888
  %957 = phi float [ %955, %940 ], [ %913, %888 ]
  %958 = call float @dx.op.dot2.f32(i32 54, float %934, float %935, float %494, float %495)  ; Dot2(ax,ay,bx,by)
  %959 = call float @dx.op.dot2.f32(i32 54, float %934, float %935, float %496, float %497)  ; Dot2(ax,ay,bx,by)
  br label %960

; <label>:960                                     ; preds = %956, %866
  %961 = phi float [ %957, %956 ], [ 0x3FD6666660000000, %866 ]
  %962 = phi float [ %958, %956 ], [ 0.000000e+00, %866 ]
  %963 = phi float [ %959, %956 ], [ 0.000000e+00, %866 ]
  %964 = phi float [ %900, %956 ], [ 1.000000e+00, %866 ]
  %965 = add i32 %42, 160
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = lshr i32 %967, 22
  %969 = shl nuw nsw i32 %968, 5
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 64
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %1008, label %975

; <label>:975                                     ; preds = %960
  %976 = add i32 %42, 392
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = add i32 %978, 0
  %980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = and i32 %982, 131072
  %984 = icmp eq i32 %983, 0
  %985 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %980, %dx.types.Handle %88, float %590, float %591, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %986 = extractvalue %dx.types.ResRet.f32 %985, 0
  %987 = extractvalue %dx.types.ResRet.f32 %985, 1
  %988 = extractvalue %dx.types.ResRet.f32 %985, 2
  %989 = fmul fast float %986, %257
  %990 = fmul fast float %987, %260
  %991 = fmul fast float %988, %263
  br i1 %984, label %998, label %992

; <label>:992                                     ; preds = %975
  %993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.f32 %993, 0
  %995 = fmul fast float %994, %989
  %996 = fmul fast float %994, %990
  %997 = fmul fast float %994, %991
  br label %998

; <label>:998                                     ; preds = %992, %975
  %999 = phi float [ %995, %992 ], [ %989, %975 ]
  %1000 = phi float [ %996, %992 ], [ %990, %975 ]
  %1001 = phi float [ %997, %992 ], [ %991, %975 ]
  %1002 = fmul fast float %999, %970
  %1003 = select i1 %240, float %1002, float %999
  %1004 = call float @dx.op.dot3.f32(i32 55, float %1003, float %1000, float %1001, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1005 = select i1 %240, float 0.000000e+00, float %999
  %1006 = select i1 %240, float %1004, float %1000
  %1007 = select i1 %240, float 0.000000e+00, float %1001
  br label %1008

; <label>:1008                                    ; preds = %998, %960
  %1009 = phi float [ %1005, %998 ], [ 0.000000e+00, %960 ]
  %1010 = phi float [ %1006, %998 ], [ 0.000000e+00, %960 ]
  %1011 = phi float [ %1007, %998 ], [ 0.000000e+00, %960 ]
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = and i32 %1013, 1024
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %1046, label %1016

; <label>:1016                                    ; preds = %1008
  %1017 = add i32 %42, 152
  %1018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.i32 %1018, 0
  %1020 = and i32 %1019, 255
  %1021 = uitofp i32 %1020 to float
  %1022 = fmul fast float %1021, 0x3F70101020000000
  %1023 = lshr i32 %1019, 8
  %1024 = and i32 %1023, 255
  %1025 = uitofp i32 %1024 to float
  %1026 = fmul fast float %1025, 0x3F70101020000000
  %1027 = lshr i32 %1019, 16
  %1028 = and i32 %1027, 255
  %1029 = uitofp i32 %1028 to float
  %1030 = fmul fast float %1029, 0x3F70101020000000
  %1031 = fmul fast float %1022, %1022
  %1032 = fmul fast float %1026, %1026
  %1033 = fmul fast float %1030, %1030
  %1034 = add i32 %42, 456
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = add i32 %1036, 0
  %1038 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1037, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1039 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1038, %dx.types.Handle %89, float %590, float %591, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.ResRet.f32 %1039, 1
  %1042 = extractvalue %dx.types.ResRet.f32 %1039, 2
  %1043 = fmul fast float %1031, %1040
  %1044 = fmul fast float %1032, %1041
  %1045 = fmul fast float %1033, %1042
  br label %1046

; <label>:1046                                    ; preds = %1016, %1008
  %1047 = phi float [ %1043, %1016 ], [ 0.000000e+00, %1008 ]
  %1048 = phi float [ %1044, %1016 ], [ 0.000000e+00, %1008 ]
  %1049 = phi float [ %1045, %1016 ], [ 0.000000e+00, %1008 ]
  %1050 = fcmp fast ogt float %1047, 0.000000e+00
  %1051 = fcmp fast ogt float %1048, 0.000000e+00
  %1052 = fcmp fast ogt float %1049, 0.000000e+00
  %1053 = call float @dx.op.unary.f32(i32 23, float %1047)  ; Log(value)
  %1054 = call float @dx.op.unary.f32(i32 23, float %1048)  ; Log(value)
  %1055 = call float @dx.op.unary.f32(i32 23, float %1049)  ; Log(value)
  %1056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.i32 %1056, 0
  %1058 = lshr i32 %1057, 7
  %1059 = and i32 %1058, 32752
  %1060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1059)  ; LegacyF16ToF32(value)
  %1061 = fmul fast float %1053, 0xBFE62E4300000000
  %1062 = fmul fast float %1061, %1060
  %1063 = fmul fast float %1054, 0xBFE62E4300000000
  %1064 = fmul fast float %1063, %1060
  %1065 = fmul fast float %1055, 0xBFE62E4300000000
  %1066 = fmul fast float %1065, %1060
  %1067 = select i1 %1050, float %1062, float 1.270000e+02
  %1068 = select i1 %1051, float %1064, float 1.270000e+02
  %1069 = select i1 %1052, float %1066, float 1.270000e+02
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = and i32 %1071, 10240
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1094, label %1074

; <label>:1074                                    ; preds = %1046
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = and i32 %1076, 2048
  %1078 = icmp eq i32 %1077, 0
  br i1 %1078, label %1094, label %1079

; <label>:1079                                    ; preds = %1074
  %1080 = add i32 %42, 472
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = add i32 %1082, 0
  %1084 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1083, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1085 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1084, %dx.types.Handle %89, float %590, float %591, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1086 = extractvalue %dx.types.ResRet.f32 %1085, 3
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = shl i32 %1088, 4
  %1090 = and i32 %1089, 32752
  %1091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1090)  ; LegacyF16ToF32(value)
  %1092 = fmul fast float %1091, %1086
  %1093 = call float @dx.op.binary.f32(i32 35, float %1092, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1094

; <label>:1094                                    ; preds = %1079, %1074, %1046
  %1095 = phi float [ %1093, %1079 ], [ 0x3F70101020000000, %1074 ], [ 0x3F70101020000000, %1046 ]
  %1096 = add i32 %42, 96
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = and i32 %1098, 255
  %1100 = uitofp i32 %1099 to float
  %1101 = lshr i32 %1098, 8
  %1102 = and i32 %1101, 255
  %1103 = uitofp i32 %1102 to float
  %1104 = call float @dx.op.dot3.f32(i32 55, float %881, float %882, float %883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1105 = fmul fast float %1103, %1104
  %1106 = fadd fast float %1105, %1100
  %1107 = fmul fast float %1106, 0x3F70101020000000
  %1108 = call float @dx.op.unary.f32(i32 7, float %1107)  ; Saturate(value)
  br label %1109

; <label>:1109                                    ; preds = %1094, %476
  %1110 = phi float [ 0.000000e+00, %476 ], [ %962, %1094 ]
  %1111 = phi float [ 0.000000e+00, %476 ], [ %963, %1094 ]
  %1112 = phi float [ 0.000000e+00, %476 ], [ %881, %1094 ]
  %1113 = phi float [ 0.000000e+00, %476 ], [ %882, %1094 ]
  %1114 = phi float [ 0.000000e+00, %476 ], [ %883, %1094 ]
  %1115 = phi float [ 0.000000e+00, %476 ], [ %1009, %1094 ]
  %1116 = phi float [ 0.000000e+00, %476 ], [ %1010, %1094 ]
  %1117 = phi float [ 0.000000e+00, %476 ], [ %1011, %1094 ]
  %1118 = phi float [ 0.000000e+00, %476 ], [ %1067, %1094 ]
  %1119 = phi float [ 0.000000e+00, %476 ], [ %1068, %1094 ]
  %1120 = phi float [ 0.000000e+00, %476 ], [ %1069, %1094 ]
  %1121 = phi float [ 0.000000e+00, %476 ], [ %867, %1094 ]
  %1122 = phi float [ 0.000000e+00, %476 ], [ %663, %1094 ]
  %1123 = phi float [ 0.000000e+00, %476 ], [ %961, %1094 ]
  %1124 = phi float [ 0.000000e+00, %476 ], [ %964, %1094 ]
  %1125 = phi float [ 0.000000e+00, %476 ], [ %1095, %1094 ]
  %1126 = phi float [ 0.000000e+00, %476 ], [ %1108, %1094 ]
  br i1 %424, label %1998, label %1127

; <label>:1127                                    ; preds = %1109
  %1128 = icmp ult i32 %482, 2
  %1129 = add i32 %42, 40
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = add i32 %42, 44
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = or i32 %1134, %1131
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1998, label %1137

; <label>:1137                                    ; preds = %1127
  %1138 = and i32 %1131, 262144
  %1139 = icmp ne i32 %1138, 0
  %1140 = select i1 %1139, float %47, float 1.000000e+00
  %1141 = select i1 %1139, float %48, float 0.000000e+00
  %1142 = select i1 %1139, float %49, float 0.000000e+00
  %1143 = select i1 %1139, float %50, float 1.000000e+00
  %1144 = select i1 %1139, float %51, float %74
  %1145 = select i1 %1139, float %52, float %75
  %1146 = add i32 %42, 300
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = lshr i32 %1148, 16
  %1150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1149)  ; LegacyF16ToF32(value)
  %1151 = fmul fast float %1150, 0x3F50624DE0000000
  %1152 = add i32 %42, 104
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = lshr i32 %1154, 16
  %1156 = and i32 %1155, 255
  %1157 = lshr i32 %1154, 24
  %1158 = add i32 %42, 308
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = and i32 %1160, 65535
  %1162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1161)  ; LegacyF16ToF32(value)
  %1163 = lshr i32 %1160, 16
  %1164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1163)  ; LegacyF16ToF32(value)
  %1165 = add i32 %42, 48
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = lshr i32 %1167, 22
  %1169 = shl nuw nsw i32 %1168, 5
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = shl i32 %1167, 4
  %1172 = and i32 %1171, 32752
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  %1174 = lshr i32 %1167, 7
  %1175 = and i32 %1174, 32752
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1177, 3
  %1179 = fmul fast float %1178, 1.000000e+03
  %1180 = fmul fast float %334, %1179
  %1181 = call float @dx.op.unary.f32(i32 22, float %1180)  ; Frc(value)
  %1182 = fadd fast float %1181, %324
  %1183 = fmul fast float %335, %1179
  %1184 = call float @dx.op.unary.f32(i32 22, float %1183)  ; Frc(value)
  %1185 = fadd fast float %1184, %326
  %1186 = fmul fast float %1151, %1179
  %1187 = call float @dx.op.unary.f32(i32 22, float %1186)  ; Frc(value)
  %1188 = fmul fast float %1187, 0x401921FB60000000
  %1189 = fadd fast float %1188, %1170
  %1190 = call float @dx.op.unary.f32(i32 13, float %1189)  ; Sin(value)
  %1191 = call float @dx.op.unary.f32(i32 12, float %1189)  ; Cos(value)
  %1192 = fsub fast float -0.000000e+00, %1190
  %1193 = fadd fast float %1144, -5.000000e-01
  %1194 = fadd fast float %1145, -5.000000e-01
  %1195 = fmul fast float %1162, %1193
  %1196 = fmul fast float %1164, %1194
  %1197 = fadd fast float %1195, 5.000000e-01
  %1198 = fadd fast float %1196, 5.000000e-01
  %1199 = fmul fast float %1173, %1197
  %1200 = fmul fast float %1176, %1198
  %1201 = fmul fast float %1191, %1199
  %1202 = call float @dx.op.tertiary.f32(i32 46, float %1192, float %1200, float %1201)  ; FMad(a,b,c)
  %1203 = fmul fast float %1190, %1199
  %1204 = call float @dx.op.tertiary.f32(i32 46, float %1191, float %1200, float %1203)  ; FMad(a,b,c)
  %1205 = fadd fast float %1182, %1202
  %1206 = fadd fast float %1185, %1204
  %1207 = icmp ugt i32 %1156, 1
  %1208 = icmp ugt i32 %1154, 33554431
  %1209 = or i1 %1208, %1207
  br i1 %1209, label %1210, label %1235

; <label>:1210                                    ; preds = %1137
  %1211 = add i32 %42, 244
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = lshr i32 %1213, 16
  %1215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1214)  ; LegacyF16ToF32(value)
  %1216 = fmul fast float %1178, %1215
  %1217 = call float @dx.op.unary.f32(i32 22, float %1216)  ; Frc(value)
  %1218 = mul nuw nsw i32 %1156, %1157
  %1219 = uitofp i32 %1218 to float
  %1220 = fmul fast float %1217, %1219
  %1221 = call float @dx.op.unary.f32(i32 27, float %1220)  ; Round_ni(value)
  %1222 = fptoui float %1221 to i32
  %1223 = urem i32 %1222, %1156
  %1224 = udiv i32 %1222, %1157
  %1225 = call float @dx.op.unary.f32(i32 22, float %1205)  ; Frc(value)
  %1226 = call float @dx.op.unary.f32(i32 22, float %1206)  ; Frc(value)
  %1227 = uitofp i32 %1223 to float
  %1228 = uitofp i32 %1224 to float
  %1229 = fadd fast float %1225, %1227
  %1230 = fadd fast float %1226, %1228
  %1231 = uitofp i32 %1156 to float
  %1232 = uitofp i32 %1157 to float
  %1233 = fdiv fast float %1229, %1231
  %1234 = fdiv fast float %1230, %1232
  br label %1235

; <label>:1235                                    ; preds = %1210, %1137
  %1236 = phi float [ %1233, %1210 ], [ %1205, %1137 ]
  %1237 = phi float [ %1234, %1210 ], [ %1206, %1137 ]
  %1238 = and i32 %1131, 256
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1286, label %1240

; <label>:1240                                    ; preds = %1235
  %1241 = add i32 %42, 428
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = add i32 %1243, 0
  %1245 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1244, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1246 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1245, %dx.types.Handle %89, float %1236, float %1237, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1247 = extractvalue %dx.types.ResRet.f32 %1246, 0
  %1248 = add i32 %42, 116
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = shl i32 %1250, 4
  %1252 = and i32 %1251, 32752
  %1253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1252)  ; LegacyF16ToF32(value)
  %1254 = lshr i32 %1250, 7
  %1255 = and i32 %1254, 32752
  %1256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1255)  ; LegacyF16ToF32(value)
  %1257 = fsub fast float 1.000000e+00, %479
  %1258 = call float @dx.op.binary.f32(i32 35, float %1257, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1259 = bitcast float %479 to i32
  %1260 = sitofp i32 %1259 to float
  %1261 = fadd fast float %1260, 0xC1CFBF8940000000
  %1262 = fmul fast float %1256, %1261
  %1263 = fadd fast float %1262, 0x41CFBF8940000000
  %1264 = fptosi float %1263 to i32
  %1265 = bitcast i32 %1264 to float
  %1266 = bitcast float %1258 to i32
  %1267 = sitofp i32 %1266 to float
  %1268 = fadd fast float %1267, 0xC1CFBF8940000000
  %1269 = fmul fast float %1268, %1256
  %1270 = fadd fast float %1269, 0x41CFBF8940000000
  %1271 = fptosi float %1270 to i32
  %1272 = bitcast i32 %1271 to float
  %1273 = fmul fast float %1265, %1253
  %1274 = fmul fast float %1272, %1253
  %1275 = fsub fast float %1258, %1273
  %1276 = fadd fast float %1274, %1258
  %1277 = call float @dx.op.unary.f32(i32 7, float %1275)  ; Saturate(value)
  %1278 = call float @dx.op.unary.f32(i32 7, float %1276)  ; Saturate(value)
  %1279 = fsub fast float %1247, %1277
  %1280 = fsub fast float %1278, %1277
  %1281 = bitcast float %1280 to i32
  %1282 = sub nsw i32 2129859010, %1281
  %1283 = bitcast i32 %1282 to float
  %1284 = fmul fast float %1283, %1279
  %1285 = call float @dx.op.unary.f32(i32 7, float %1284)  ; Saturate(value)
  br label %1286

; <label>:1286                                    ; preds = %1240, %1235
  %1287 = phi float [ %1285, %1240 ], [ %479, %1235 ]
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = and i32 %1289, 128
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1308, label %1292

; <label>:1292                                    ; preds = %1286
  %1293 = add i32 %42, 412
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = add i32 %1295, 0
  %1297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1296, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1298 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1297, %dx.types.Handle %89, float %1236, float %1237, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = and i32 %1301, 524288
  %1303 = icmp ne i32 %1302, 0
  %1304 = fcmp fast ogt float %1299, 0x3FE0101020000000
  %1305 = select i1 %1304, float 1.000000e+00, float 0.000000e+00
  %1306 = select i1 %1303, float %1305, float %1299
  %1307 = fmul fast float %1306, %1287
  br label %1308

; <label>:1308                                    ; preds = %1292, %1286
  %1309 = phi float [ %1307, %1292 ], [ %1287, %1286 ]
  %1310 = fcmp fast ult float %1309, 0x3F70101020000000
  br i1 %1310, label %1998, label %1311

; <label>:1311                                    ; preds = %1308
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = and i32 %1313, 16
  %1315 = icmp eq i32 %1314, 0
  br i1 %1315, label %1514, label %1316

; <label>:1316                                    ; preds = %1311
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = add i32 %42, 364
  %1320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1319, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.i32 %1320, 0
  %1322 = add i32 %1321, 0
  %1323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1322, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1324 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1323, %dx.types.Handle %88, float %1236, float %1237, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1325 = extractvalue %dx.types.ResRet.f32 %1324, 0
  %1326 = extractvalue %dx.types.ResRet.f32 %1324, 1
  %1327 = extractvalue %dx.types.ResRet.f32 %1324, 2
  %1328 = extractvalue %dx.types.ResRet.f32 %1324, 3
  %1329 = and i32 %1318, 255
  %1330 = uitofp i32 %1329 to float
  %1331 = lshr i32 %1318, 8
  %1332 = and i32 %1331, 255
  %1333 = uitofp i32 %1332 to float
  %1334 = fmul fast float %1328, %1330
  %1335 = fadd fast float %1334, %1333
  %1336 = fmul fast float %1335, 0x3F70101000000000
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = and i32 %1338, 512
  %1340 = icmp eq i32 %1339, 0
  br i1 %1340, label %1349, label %1341

; <label>:1341                                    ; preds = %1316
  %1342 = add i32 %42, 444
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = add i32 %1344, 0
  %1346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1345, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1347 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1346, %dx.types.Handle %89, float %1236, float %1237, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1348 = extractvalue %dx.types.ResRet.f32 %1347, 0
  br label %1349

; <label>:1349                                    ; preds = %1341, %1316
  %1350 = phi float [ %1348, %1341 ], [ 1.000000e+00, %1316 ]
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = and i32 %1352, 33554432
  %1354 = icmp eq i32 %1353, 0
  br i1 %1354, label %1461, label %1355

; <label>:1355                                    ; preds = %1349
  %1356 = add i32 %42, 240
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = and i32 %1358, 65535
  %1360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1359)  ; LegacyF16ToF32(value)
  %1361 = lshr i32 %1358, 16
  %1362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1361)  ; LegacyF16ToF32(value)
  %1363 = add i32 %42, 244
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1363, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = and i32 %1365, 65535
  %1367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1366)  ; LegacyF16ToF32(value)
  %1368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.i32 %1368, 0
  %1370 = lshr i32 %1369, 24
  %1371 = uitofp i32 %1370 to float
  %1372 = fmul fast float %1371, 0x3F70101020000000
  %1373 = and i32 %1369, 255
  %1374 = uitofp i32 %1373 to float
  %1375 = fmul fast float %1374, 0x3F70101020000000
  %1376 = lshr i32 %1369, 8
  %1377 = and i32 %1376, 255
  %1378 = uitofp i32 %1377 to float
  %1379 = fmul fast float %1378, 0x3F70101020000000
  %1380 = lshr i32 %1369, 16
  %1381 = and i32 %1380, 255
  %1382 = uitofp i32 %1381 to float
  %1383 = fmul fast float %1382, 0x3F70101020000000
  %1384 = add i32 %42, 236
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1384, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = lshr i32 %1386, 24
  %1388 = uitofp i32 %1387 to float
  %1389 = fmul fast float %1388, 0x3F70101020000000
  %1390 = and i32 %1386, 255
  %1391 = uitofp i32 %1390 to float
  %1392 = fmul fast float %1391, 0x3F70101020000000
  %1393 = lshr i32 %1386, 8
  %1394 = and i32 %1393, 255
  %1395 = uitofp i32 %1394 to float
  %1396 = fmul fast float %1395, 0x3F70101020000000
  %1397 = lshr i32 %1386, 16
  %1398 = and i32 %1397, 255
  %1399 = uitofp i32 %1398 to float
  %1400 = fmul fast float %1399, 0x3F70101020000000
  %1401 = bitcast float %1325 to i32
  %1402 = ashr i32 %1401, 1
  %1403 = sub nsw i32 1597463174, %1402
  %1404 = bitcast i32 %1403 to float
  %1405 = fmul fast float %1325, 5.000000e-01
  %1406 = fmul fast float %1404, %1404
  %1407 = fmul fast float %1406, %1405
  %1408 = fsub fast float 1.500000e+00, %1407
  %1409 = fmul fast float %1404, %1325
  %1410 = fmul fast float %1409, %1408
  %1411 = bitcast float %1326 to i32
  %1412 = ashr i32 %1411, 1
  %1413 = sub nsw i32 1597463174, %1412
  %1414 = bitcast i32 %1413 to float
  %1415 = fmul fast float %1326, 5.000000e-01
  %1416 = fmul fast float %1414, %1414
  %1417 = fmul fast float %1416, %1415
  %1418 = fsub fast float 1.500000e+00, %1417
  %1419 = fmul fast float %1414, %1326
  %1420 = fmul fast float %1419, %1418
  %1421 = bitcast float %1327 to i32
  %1422 = ashr i32 %1421, 1
  %1423 = sub nsw i32 1597463174, %1422
  %1424 = bitcast i32 %1423 to float
  %1425 = fmul fast float %1327, 5.000000e-01
  %1426 = fmul fast float %1424, %1424
  %1427 = fmul fast float %1426, %1425
  %1428 = fsub fast float 1.500000e+00, %1427
  %1429 = fmul fast float %1424, %1327
  %1430 = fmul fast float %1429, %1428
  %1431 = fsub fast float %1410, %1392
  %1432 = fsub fast float %1420, %1396
  %1433 = fsub fast float %1430, %1400
  %1434 = fmul fast float %1431, %1360
  %1435 = fmul fast float %1432, %1362
  %1436 = fmul fast float %1433, %1367
  %1437 = fadd fast float %1434, %1375
  %1438 = fadd fast float %1435, %1379
  %1439 = fadd fast float %1436, %1383
  %1440 = call float @dx.op.unary.f32(i32 7, float %1437)  ; Saturate(value)
  %1441 = call float @dx.op.unary.f32(i32 7, float %1438)  ; Saturate(value)
  %1442 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  %1443 = fmul fast float %1440, %1440
  %1444 = fmul fast float %1441, %1441
  %1445 = fmul fast float %1442, %1442
  %1446 = fsub fast float %1443, %1325
  %1447 = fsub fast float %1444, %1326
  %1448 = fsub fast float %1445, %1327
  %1449 = fmul fast float %1446, %1350
  %1450 = fmul fast float %1447, %1350
  %1451 = fmul fast float %1448, %1350
  %1452 = fadd fast float %1449, %1325
  %1453 = fadd fast float %1450, %1326
  %1454 = fadd fast float %1451, %1327
  %1455 = fadd fast float %1372, %1336
  %1456 = fsub fast float %1455, %1389
  %1457 = call float @dx.op.unary.f32(i32 7, float %1456)  ; Saturate(value)
  %1458 = fsub fast float %1457, %1336
  %1459 = fmul fast float %1458, %1350
  %1460 = fadd fast float %1459, %1336
  br label %1514

; <label>:1461                                    ; preds = %1349
  %1462 = and i32 %1352, 134217728
  %1463 = icmp eq i32 %1462, 0
  br i1 %1463, label %1498, label %1464

; <label>:1464                                    ; preds = %1461
  %1465 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %1466 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %1467 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %1468 = fadd fast float %1465, -5.000000e-01
  %1469 = fadd fast float %1466, -5.000000e-01
  %1470 = fadd fast float %1467, -5.000000e-01
  %1471 = fmul fast float %1468, %1350
  %1472 = fmul fast float %1469, %1350
  %1473 = fmul fast float %1470, %1350
  %1474 = fadd fast float %1471, 5.000000e-01
  %1475 = fadd fast float %1472, 5.000000e-01
  %1476 = fadd fast float %1473, 5.000000e-01
  %1477 = call float @dx.op.unary.f32(i32 24, float %1325)  ; Sqrt(value)
  %1478 = call float @dx.op.unary.f32(i32 24, float %1326)  ; Sqrt(value)
  %1479 = call float @dx.op.unary.f32(i32 24, float %1327)  ; Sqrt(value)
  %1480 = fmul fast float %1474, 2.000000e+00
  %1481 = fsub fast float 1.000000e+00, %1480
  %1482 = fmul fast float %1481, %1477
  %1483 = fadd fast float %1482, %1480
  %1484 = fmul fast float %1483, %1477
  %1485 = fmul fast float %1475, 2.000000e+00
  %1486 = fsub fast float 1.000000e+00, %1485
  %1487 = fmul fast float %1486, %1478
  %1488 = fadd fast float %1487, %1485
  %1489 = fmul fast float %1488, %1478
  %1490 = fmul fast float %1476, 2.000000e+00
  %1491 = fsub fast float 1.000000e+00, %1490
  %1492 = fmul fast float %1491, %1479
  %1493 = fadd fast float %1492, %1490
  %1494 = fmul fast float %1493, %1479
  %1495 = fmul fast float %1484, %1484
  %1496 = fmul fast float %1489, %1489
  %1497 = fmul fast float %1494, %1494
  br label %1514

; <label>:1498                                    ; preds = %1461
  %1499 = fmul fast float %311, %311
  %1500 = fmul fast float %315, %315
  %1501 = fmul fast float %319, %319
  %1502 = fadd fast float %1499, -1.000000e+00
  %1503 = fadd fast float %1500, -1.000000e+00
  %1504 = fadd fast float %1501, -1.000000e+00
  %1505 = fmul fast float %1350, %1502
  %1506 = fmul fast float %1350, %1503
  %1507 = fmul fast float %1350, %1504
  %1508 = fadd fast float %1505, 1.000000e+00
  %1509 = fadd fast float %1506, 1.000000e+00
  %1510 = fadd fast float %1507, 1.000000e+00
  %1511 = fmul fast float %1508, %1325
  %1512 = fmul fast float %1509, %1326
  %1513 = fmul fast float %1510, %1327
  br label %1514

; <label>:1514                                    ; preds = %1498, %1464, %1355, %1311
  %1515 = phi float [ %1460, %1355 ], [ %1336, %1464 ], [ %1336, %1498 ], [ 0x3FA23C0BE0000000, %1311 ]
  %1516 = phi float [ %1452, %1355 ], [ %1495, %1464 ], [ %1511, %1498 ], [ 1.000000e+00, %1311 ]
  %1517 = phi float [ %1453, %1355 ], [ %1496, %1464 ], [ %1512, %1498 ], [ 1.000000e+00, %1311 ]
  %1518 = phi float [ %1454, %1355 ], [ %1497, %1464 ], [ %1513, %1498 ], [ 1.000000e+00, %1311 ]
  %1519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.i32 %1519, 1
  %1521 = and i32 %1520, 1
  %1522 = icmp ne i32 %1521, 0
  %1523 = add i32 %42, 356
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = and i32 %1525, 32
  %1527 = icmp ne i32 %1526, 0
  %1528 = and i1 %1522, %1527
  %1529 = select i1 %1528, float 1.000000e+00, float %1516
  %1530 = select i1 %1528, float 0x3FD3333340000000, float %1517
  %1531 = select i1 %1528, float 0x3FD3333340000000, float %1518
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = and i32 %1533, 32
  %1535 = icmp eq i32 %1534, 0
  br i1 %1535, label %1608, label %1536

; <label>:1536                                    ; preds = %1514
  %1537 = add i32 %42, 108
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = add i32 %42, 380
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = add i32 %1542, 0
  %1544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1544, %dx.types.Handle %88, float %1236, float %1237, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1546 = extractvalue %dx.types.ResRet.f32 %1545, 0
  %1547 = extractvalue %dx.types.ResRet.f32 %1545, 1
  %1548 = extractvalue %dx.types.ResRet.f32 %1545, 2
  %1549 = extractvalue %dx.types.ResRet.f32 %1545, 3
  %1550 = and i32 %1539, 255
  %1551 = uitofp i32 %1550 to float
  %1552 = lshr i32 %1539, 8
  %1553 = and i32 %1552, 255
  %1554 = uitofp i32 %1553 to float
  %1555 = lshr i32 %1539, 16
  %1556 = and i32 %1555, 255
  %1557 = uitofp i32 %1556 to float
  %1558 = fmul fast float %1557, 0x3F70101000000000
  %1559 = fmul fast float %1546, %1551
  %1560 = fadd fast float %1559, %1554
  %1561 = fmul fast float %1560, 0x3F70101000000000
  %1562 = fadd fast float %1547, -5.000000e-01
  %1563 = fadd fast float %1549, -5.000000e-01
  %1564 = fmul fast float %1562, %1558
  %1565 = fmul fast float %1563, %1558
  %1566 = fadd fast float %1564, 5.000000e-01
  %1567 = fadd fast float %1565, 5.000000e-01
  %1568 = fmul fast float %1566, 2.000000e+00
  %1569 = fadd fast float %1568, -1.000000e+00
  %1570 = fmul fast float %1567, 2.000000e+00
  %1571 = fadd fast float %1570, -1.000000e+00
  %1572 = fadd fast float %1569, %1571
  %1573 = fmul fast float %1572, 5.000000e-01
  %1574 = fsub fast float %1569, %1571
  %1575 = fmul fast float %1574, 5.000000e-01
  %1576 = call float @dx.op.unary.f32(i32 6, float %1573)  ; FAbs(value)
  %1577 = fsub fast float 1.000000e+00, %1576
  %1578 = call float @dx.op.unary.f32(i32 6, float %1575)  ; FAbs(value)
  %1579 = fsub fast float %1577, %1578
  %1580 = call float @dx.op.dot3.f32(i32 55, float %1573, float %1575, float %1579, float %1573, float %1575, float %1579)  ; Dot3(ax,ay,az,bx,by,bz)
  %1581 = call float @dx.op.unary.f32(i32 25, float %1580)  ; Rsqrt(value)
  %1582 = fmul fast float %1573, %1581
  %1583 = fmul fast float %1575, %1581
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = and i32 %1585, 67108864
  %1587 = icmp eq i32 %1586, 0
  br i1 %1587, label %1604, label %1588

; <label>:1588                                    ; preds = %1536
  %1589 = add i32 %42, 296
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = and i32 %1591, 65535
  %1593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1592)  ; LegacyF16ToF32(value)
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = and i32 %1595, 65535
  %1597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1596)  ; LegacyF16ToF32(value)
  %1598 = lshr i32 %1591, 16
  %1599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1598)  ; LegacyF16ToF32(value)
  %1600 = fsub fast float %1561, %1599
  %1601 = fmul fast float %1600, %1593
  %1602 = fadd fast float %1601, %1597
  %1603 = call float @dx.op.unary.f32(i32 7, float %1602)  ; Saturate(value)
  br label %1604

; <label>:1604                                    ; preds = %1588, %1536
  %1605 = phi float [ %1603, %1588 ], [ %1561, %1536 ]
  %1606 = call float @dx.op.dot2.f32(i32 54, float %1582, float %1583, float %1140, float %1141)  ; Dot2(ax,ay,bx,by)
  %1607 = call float @dx.op.dot2.f32(i32 54, float %1582, float %1583, float %1142, float %1143)  ; Dot2(ax,ay,bx,by)
  br label %1608

; <label>:1608                                    ; preds = %1604, %1514
  %1609 = phi float [ %1605, %1604 ], [ 0x3FD6666660000000, %1514 ]
  %1610 = phi float [ %1606, %1604 ], [ 0.000000e+00, %1514 ]
  %1611 = phi float [ %1607, %1604 ], [ 0.000000e+00, %1514 ]
  %1612 = phi float [ %1548, %1604 ], [ 1.000000e+00, %1514 ]
  %1613 = add i32 %42, 176
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = lshr i32 %1615, 22
  %1617 = shl nuw nsw i32 %1616, 5
  %1618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1617)  ; LegacyF16ToF32(value)
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = and i32 %1620, 64
  %1622 = icmp eq i32 %1621, 0
  br i1 %1622, label %1656, label %1623

; <label>:1623                                    ; preds = %1608
  %1624 = add i32 %42, 396
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1624, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = add i32 %1626, 0
  %1628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = and i32 %1630, 131072
  %1632 = icmp eq i32 %1631, 0
  %1633 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1628, %dx.types.Handle %88, float %1236, float %1237, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1634 = extractvalue %dx.types.ResRet.f32 %1633, 0
  %1635 = extractvalue %dx.types.ResRet.f32 %1633, 1
  %1636 = extractvalue %dx.types.ResRet.f32 %1633, 2
  %1637 = fmul fast float %1634, %299
  %1638 = fmul fast float %1635, %302
  %1639 = fmul fast float %1636, %305
  br i1 %1632, label %1646, label %1640

; <label>:1640                                    ; preds = %1623
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 0
  %1643 = fmul fast float %1642, %1637
  %1644 = fmul fast float %1642, %1638
  %1645 = fmul fast float %1642, %1639
  br label %1646

; <label>:1646                                    ; preds = %1640, %1623
  %1647 = phi float [ %1643, %1640 ], [ %1637, %1623 ]
  %1648 = phi float [ %1644, %1640 ], [ %1638, %1623 ]
  %1649 = phi float [ %1645, %1640 ], [ %1639, %1623 ]
  %1650 = fmul fast float %1647, %1618
  %1651 = select i1 %240, float %1650, float %1647
  %1652 = call float @dx.op.dot3.f32(i32 55, float %1651, float %1648, float %1649, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1653 = select i1 %240, float 0.000000e+00, float %1647
  %1654 = select i1 %240, float %1652, float %1648
  %1655 = select i1 %240, float 0.000000e+00, float %1649
  br label %1656

; <label>:1656                                    ; preds = %1646, %1608
  %1657 = phi float [ %1653, %1646 ], [ 0.000000e+00, %1608 ]
  %1658 = phi float [ %1654, %1646 ], [ 0.000000e+00, %1608 ]
  %1659 = phi float [ %1655, %1646 ], [ 0.000000e+00, %1608 ]
  %1660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1661 = extractvalue %dx.types.ResRet.i32 %1660, 0
  %1662 = and i32 %1661, 1024
  %1663 = icmp eq i32 %1662, 0
  br i1 %1663, label %1694, label %1664

; <label>:1664                                    ; preds = %1656
  %1665 = add i32 %42, 168
  %1666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1665, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.i32 %1666, 0
  %1668 = and i32 %1667, 255
  %1669 = uitofp i32 %1668 to float
  %1670 = fmul fast float %1669, 0x3F70101020000000
  %1671 = lshr i32 %1667, 8
  %1672 = and i32 %1671, 255
  %1673 = uitofp i32 %1672 to float
  %1674 = fmul fast float %1673, 0x3F70101020000000
  %1675 = lshr i32 %1667, 16
  %1676 = and i32 %1675, 255
  %1677 = uitofp i32 %1676 to float
  %1678 = fmul fast float %1677, 0x3F70101020000000
  %1679 = fmul fast float %1670, %1670
  %1680 = fmul fast float %1674, %1674
  %1681 = fmul fast float %1678, %1678
  %1682 = add i32 %42, 460
  %1683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1682, i32 undef)  ; BufferLoad(srv,index,wot)
  %1684 = extractvalue %dx.types.ResRet.i32 %1683, 0
  %1685 = add i32 %1684, 0
  %1686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1685, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1687 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1686, %dx.types.Handle %89, float %1236, float %1237, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1688 = extractvalue %dx.types.ResRet.f32 %1687, 0
  %1689 = extractvalue %dx.types.ResRet.f32 %1687, 1
  %1690 = extractvalue %dx.types.ResRet.f32 %1687, 2
  %1691 = fmul fast float %1679, %1688
  %1692 = fmul fast float %1680, %1689
  %1693 = fmul fast float %1681, %1690
  br label %1694

; <label>:1694                                    ; preds = %1664, %1656
  %1695 = phi float [ %1691, %1664 ], [ 0.000000e+00, %1656 ]
  %1696 = phi float [ %1692, %1664 ], [ 0.000000e+00, %1656 ]
  %1697 = phi float [ %1693, %1664 ], [ 0.000000e+00, %1656 ]
  %1698 = fcmp fast ogt float %1695, 0.000000e+00
  %1699 = fcmp fast ogt float %1696, 0.000000e+00
  %1700 = fcmp fast ogt float %1697, 0.000000e+00
  %1701 = call float @dx.op.unary.f32(i32 23, float %1695)  ; Log(value)
  %1702 = call float @dx.op.unary.f32(i32 23, float %1696)  ; Log(value)
  %1703 = call float @dx.op.unary.f32(i32 23, float %1697)  ; Log(value)
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = lshr i32 %1705, 7
  %1707 = and i32 %1706, 32752
  %1708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1707)  ; LegacyF16ToF32(value)
  %1709 = fmul fast float %1701, 0xBFE62E4300000000
  %1710 = fmul fast float %1709, %1708
  %1711 = fmul fast float %1702, 0xBFE62E4300000000
  %1712 = fmul fast float %1711, %1708
  %1713 = fmul fast float %1703, 0xBFE62E4300000000
  %1714 = fmul fast float %1713, %1708
  %1715 = select i1 %1698, float %1710, float 1.270000e+02
  %1716 = select i1 %1699, float %1712, float 1.270000e+02
  %1717 = select i1 %1700, float %1714, float 1.270000e+02
  %1718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.i32 %1718, 0
  %1720 = and i32 %1719, 10240
  %1721 = icmp eq i32 %1720, 0
  br i1 %1721, label %1742, label %1722

; <label>:1722                                    ; preds = %1694
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = and i32 %1724, 2048
  %1726 = icmp eq i32 %1725, 0
  br i1 %1726, label %1742, label %1727

; <label>:1727                                    ; preds = %1722
  %1728 = add i32 %42, 476
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = add i32 %1730, 0
  %1732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1731, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1733 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1732, %dx.types.Handle %89, float %1236, float %1237, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1734 = extractvalue %dx.types.ResRet.f32 %1733, 3
  %1735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.i32 %1735, 0
  %1737 = shl i32 %1736, 4
  %1738 = and i32 %1737, 32752
  %1739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1738)  ; LegacyF16ToF32(value)
  %1740 = fmul fast float %1739, %1734
  %1741 = call float @dx.op.binary.f32(i32 35, float %1740, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1742

; <label>:1742                                    ; preds = %1727, %1722, %1694
  %1743 = phi float [ %1741, %1727 ], [ 0x3F70101020000000, %1722 ], [ 0x3F70101020000000, %1694 ]
  %1744 = add i32 %42, 112
  %1745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1744, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.i32 %1745, 0
  %1747 = and i32 %1746, 255
  %1748 = uitofp i32 %1747 to float
  %1749 = lshr i32 %1746, 8
  %1750 = and i32 %1749, 255
  %1751 = uitofp i32 %1750 to float
  %1752 = call float @dx.op.dot3.f32(i32 55, float %1529, float %1530, float %1531, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1753 = fmul fast float %1751, %1752
  %1754 = fadd fast float %1753, %1748
  %1755 = fmul fast float %1754, 0x3F70101020000000
  %1756 = call float @dx.op.unary.f32(i32 7, float %1755)  ; Saturate(value)
  br i1 %1128, label %1757, label %1792

; <label>:1757                                    ; preds = %1742
  %1758 = fmul fast float %1743, 2.000000e+00
  %1759 = fcmp fast olt float %1715, 1.270000e+02
  %1760 = fcmp fast olt float %1716, 1.270000e+02
  %1761 = fcmp fast olt float %1717, 1.270000e+02
  %1762 = fmul fast float %1715, 0xBFF7154760000000
  %1763 = fmul fast float %1762, %1758
  %1764 = fmul fast float %1716, 0xBFF7154760000000
  %1765 = fmul fast float %1764, %1758
  %1766 = fmul fast float %1717, 0xBFF7154760000000
  %1767 = fmul fast float %1766, %1758
  %1768 = call float @dx.op.unary.f32(i32 21, float %1763)  ; Exp(value)
  %1769 = call float @dx.op.unary.f32(i32 21, float %1765)  ; Exp(value)
  %1770 = call float @dx.op.unary.f32(i32 21, float %1767)  ; Exp(value)
  %1771 = call float @dx.op.unary.f32(i32 7, float %1768)  ; Saturate(value)
  %1772 = call float @dx.op.unary.f32(i32 7, float %1769)  ; Saturate(value)
  %1773 = call float @dx.op.unary.f32(i32 7, float %1770)  ; Saturate(value)
  %1774 = fadd fast float %1771, -1.000000e+00
  %1775 = select i1 %1759, float %1774, float -1.000000e+00
  %1776 = fadd fast float %1772, -1.000000e+00
  %1777 = select i1 %1760, float %1776, float -1.000000e+00
  %1778 = fadd fast float %1773, -1.000000e+00
  %1779 = select i1 %1761, float %1778, float -1.000000e+00
  %1780 = fmul fast float %1775, %1309
  %1781 = fmul fast float %1777, %1309
  %1782 = fmul fast float %1779, %1309
  %1783 = fadd fast float %1780, 1.000000e+00
  %1784 = fadd fast float %1781, 1.000000e+00
  %1785 = fadd fast float %1782, 1.000000e+00
  %1786 = fmul fast float %1783, %1112
  %1787 = fmul fast float %1784, %1113
  %1788 = fmul fast float %1785, %1114
  %1789 = fmul fast float %1783, %1115
  %1790 = fmul fast float %1784, %1116
  %1791 = fmul fast float %1785, %1117
  br label %1792

; <label>:1792                                    ; preds = %1757, %1742
  %1793 = phi float [ %1786, %1757 ], [ %1112, %1742 ]
  %1794 = phi float [ %1787, %1757 ], [ %1113, %1742 ]
  %1795 = phi float [ %1788, %1757 ], [ %1114, %1742 ]
  %1796 = phi float [ %1789, %1757 ], [ %1115, %1742 ]
  %1797 = phi float [ %1790, %1757 ], [ %1116, %1742 ]
  %1798 = phi float [ %1791, %1757 ], [ %1117, %1742 ]
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = and i32 %1800, 3
  %1802 = icmp eq i32 %1801, 3
  br i1 %1802, label %1881, label %1803

; <label>:1803                                    ; preds = %1792
  %1804 = and i32 %1800, 16
  %1805 = icmp ne i32 %1804, 0
  %1806 = select i1 %1805, float %1309, float 0.000000e+00
  %1807 = icmp eq i32 %1801, 0
  br i1 %1807, label %1808, label %1836

; <label>:1808                                    ; preds = %1803
  %1809 = and i32 %1800, 64
  %1810 = icmp ne i32 %1809, 0
  %1811 = select i1 %1810, float %1309, float 0.000000e+00
  %1812 = fsub fast float %1529, %1793
  %1813 = fsub fast float %1530, %1794
  %1814 = fsub fast float %1531, %1795
  %1815 = fmul fast float %1806, %1812
  %1816 = fmul fast float %1806, %1813
  %1817 = fmul fast float %1806, %1814
  %1818 = fadd fast float %1815, %1793
  %1819 = fadd fast float %1816, %1794
  %1820 = fadd fast float %1817, %1795
  %1821 = fsub fast float %1515, %1121
  %1822 = fmul fast float %1806, %1821
  %1823 = fadd fast float %1822, %1121
  %1824 = fsub fast float %1657, %1796
  %1825 = fsub fast float %1658, %1797
  %1826 = fsub fast float %1659, %1798
  %1827 = fmul fast float %1811, %1824
  %1828 = fmul fast float %1811, %1825
  %1829 = fmul fast float %1811, %1826
  %1830 = fadd fast float %1827, %1796
  %1831 = fadd fast float %1828, %1797
  %1832 = fadd fast float %1829, %1798
  %1833 = fsub fast float %1756, %1126
  %1834 = fmul fast float %1806, %1833
  %1835 = fadd fast float %1834, %1126
  br label %1881

; <label>:1836                                    ; preds = %1803
  %1837 = icmp eq i32 %1801, 1
  br i1 %1837, label %1838, label %1851

; <label>:1838                                    ; preds = %1836
  %1839 = fadd fast float %1529, -1.000000e+00
  %1840 = fadd fast float %1530, -1.000000e+00
  %1841 = fadd fast float %1531, -1.000000e+00
  %1842 = fmul fast float %1806, %1839
  %1843 = fmul fast float %1806, %1840
  %1844 = fmul fast float %1806, %1841
  %1845 = fadd fast float %1842, 1.000000e+00
  %1846 = fadd fast float %1843, 1.000000e+00
  %1847 = fadd fast float %1844, 1.000000e+00
  %1848 = fmul fast float %1845, %1793
  %1849 = fmul fast float %1846, %1794
  %1850 = fmul fast float %1847, %1795
  br label %1881

; <label>:1851                                    ; preds = %1836
  %1852 = icmp eq i32 %1801, 2
  br i1 %1852, label %1853, label %1881

; <label>:1853                                    ; preds = %1851
  %1854 = call float @dx.op.unary.f32(i32 24, float %1529)  ; Sqrt(value)
  %1855 = call float @dx.op.unary.f32(i32 24, float %1530)  ; Sqrt(value)
  %1856 = call float @dx.op.unary.f32(i32 24, float %1531)  ; Sqrt(value)
  %1857 = fadd fast float %1854, -5.000000e-01
  %1858 = fadd fast float %1855, -5.000000e-01
  %1859 = fadd fast float %1856, -5.000000e-01
  %1860 = fmul fast float %1857, %1806
  %1861 = fmul fast float %1858, %1806
  %1862 = fmul fast float %1859, %1806
  %1863 = fadd fast float %1860, 5.000000e-01
  %1864 = fadd fast float %1861, 5.000000e-01
  %1865 = fadd fast float %1862, 5.000000e-01
  %1866 = fmul fast float %1863, 2.000000e+00
  %1867 = fsub fast float 1.000000e+00, %1866
  %1868 = fmul fast float %1867, %1793
  %1869 = fadd fast float %1868, %1866
  %1870 = fmul fast float %1869, %1793
  %1871 = fmul fast float %1864, 2.000000e+00
  %1872 = fsub fast float 1.000000e+00, %1871
  %1873 = fmul fast float %1872, %1794
  %1874 = fadd fast float %1873, %1871
  %1875 = fmul fast float %1874, %1794
  %1876 = fmul fast float %1865, 2.000000e+00
  %1877 = fsub fast float 1.000000e+00, %1876
  %1878 = fmul fast float %1877, %1795
  %1879 = fadd fast float %1878, %1876
  %1880 = fmul fast float %1879, %1795
  br label %1881

; <label>:1881                                    ; preds = %1853, %1851, %1838, %1808, %1792
  %1882 = phi float [ %1793, %1792 ], [ %1870, %1853 ], [ %1793, %1851 ], [ %1848, %1838 ], [ %1818, %1808 ]
  %1883 = phi float [ %1794, %1792 ], [ %1875, %1853 ], [ %1794, %1851 ], [ %1849, %1838 ], [ %1819, %1808 ]
  %1884 = phi float [ %1795, %1792 ], [ %1880, %1853 ], [ %1795, %1851 ], [ %1850, %1838 ], [ %1820, %1808 ]
  %1885 = phi float [ %1796, %1792 ], [ %1796, %1853 ], [ %1796, %1851 ], [ %1796, %1838 ], [ %1830, %1808 ]
  %1886 = phi float [ %1797, %1792 ], [ %1797, %1853 ], [ %1797, %1851 ], [ %1797, %1838 ], [ %1831, %1808 ]
  %1887 = phi float [ %1798, %1792 ], [ %1798, %1853 ], [ %1798, %1851 ], [ %1798, %1838 ], [ %1832, %1808 ]
  %1888 = phi float [ %1121, %1792 ], [ %1121, %1853 ], [ %1121, %1851 ], [ %1121, %1838 ], [ %1823, %1808 ]
  %1889 = phi float [ %1126, %1792 ], [ %1126, %1853 ], [ %1126, %1851 ], [ %1126, %1838 ], [ %1835, %1808 ]
  %1890 = and i32 %1800, 12
  %1891 = icmp eq i32 %1890, 12
  br i1 %1891, label %1998, label %1892

; <label>:1892                                    ; preds = %1881
  %1893 = and i32 %1800, 2097184
  %1894 = icmp eq i32 %1893, 2097184
  %1895 = select i1 %1894, float %1309, float 0.000000e+00
  %1896 = and i32 %1800, 4194336
  %1897 = icmp eq i32 %1896, 4194336
  %1898 = select i1 %1897, float %1309, float 0.000000e+00
  %1899 = and i32 %1800, 8388640
  %1900 = icmp eq i32 %1899, 8388640
  %1901 = select i1 %1900, float %1309, float 0.000000e+00
  %1902 = and i32 %1800, 1024
  %1903 = icmp ne i32 %1902, 0
  %1904 = select i1 %1903, float %1309, float 0.000000e+00
  %1905 = and i32 %1800, 2048
  %1906 = icmp ne i32 %1905, 0
  %1907 = select i1 %1906, float %1309, float 0.000000e+00
  %1908 = icmp eq i32 %1890, 0
  br i1 %1908, label %1909, label %1934

; <label>:1909                                    ; preds = %1892
  %1910 = fsub fast float %1610, %1110
  %1911 = fsub fast float %1611, %1111
  %1912 = fmul fast float %1895, %1910
  %1913 = fmul fast float %1895, %1911
  %1914 = fadd fast float %1912, %1110
  %1915 = fadd fast float %1913, %1111
  %1916 = fsub fast float %1612, %1124
  %1917 = fmul fast float %1898, %1916
  %1918 = fadd fast float %1917, %1124
  %1919 = fsub fast float %1609, %1123
  %1920 = fmul fast float %1901, %1919
  %1921 = fadd fast float %1920, %1123
  %1922 = fsub fast float %1715, %1118
  %1923 = fsub fast float %1716, %1119
  %1924 = fsub fast float %1717, %1120
  %1925 = fmul fast float %1904, %1922
  %1926 = fmul fast float %1904, %1923
  %1927 = fmul fast float %1904, %1924
  %1928 = fadd fast float %1925, %1118
  %1929 = fadd fast float %1926, %1119
  %1930 = fadd fast float %1927, %1120
  %1931 = fsub fast float %1743, %1125
  %1932 = fmul fast float %1907, %1931
  %1933 = fadd fast float %1932, %1125
  br label %1998

; <label>:1934                                    ; preds = %1892
  %1935 = icmp eq i32 %1890, 4
  br i1 %1935, label %1936, label %1976

; <label>:1936                                    ; preds = %1934
  %1937 = fmul fast float %1895, %1610
  %1938 = fmul fast float %1895, %1611
  %1939 = fadd fast float %1937, %1110
  %1940 = fadd fast float %1938, %1111
  %1941 = call float @dx.op.binary.f32(i32 36, float %1124, float %1612)  ; FMin(a,b)
  %1942 = fsub fast float %1941, %1124
  %1943 = fmul fast float %1942, %1898
  %1944 = fadd fast float %1943, %1124
  %1945 = fadd fast float %1609, %1123
  %1946 = fmul fast float %1945, 0x3FF337FAE0000000
  %1947 = fmul fast float %1123, %1123
  %1948 = fmul fast float %1609, %1609
  %1949 = fadd fast float %1948, %1947
  %1950 = fmul fast float %1949, 0x3FE5152B00000000
  %1951 = fmul fast float %1123, 0xBFCC1F85E0000000
  %1952 = fmul fast float %1951, %1609
  %1953 = fadd fast float %1952, 0xBFE1363700000000
  %1954 = fadd fast float %1953, %1946
  %1955 = fsub fast float %1954, %1950
  %1956 = fmul fast float %1945, 0x3FBA6F0D00000000
  %1957 = fmul fast float %1949, 0x3FD0432880000000
  %1958 = fmul fast float %1123, 0xBFEF110800000000
  %1959 = fmul fast float %1958, %1609
  %1960 = fadd fast float %1959, 1.000000e+00
  %1961 = fsub fast float %1960, %1956
  %1962 = fadd fast float %1961, %1957
  %1963 = fdiv fast float %1955, %1962
  %1964 = call float @dx.op.unary.f32(i32 7, float %1963)  ; Saturate(value)
  %1965 = fsub fast float %1964, %1123
  %1966 = fmul fast float %1965, %1901
  %1967 = fadd fast float %1966, %1123
  %1968 = fmul fast float %1904, %1715
  %1969 = fmul fast float %1904, %1716
  %1970 = fmul fast float %1904, %1717
  %1971 = fadd fast float %1968, %1118
  %1972 = fadd fast float %1969, %1119
  %1973 = fadd fast float %1970, %1120
  %1974 = fmul fast float %1907, %1743
  %1975 = fadd fast float %1974, %1125
  br label %1998

; <label>:1976                                    ; preds = %1934
  %1977 = icmp eq i32 %1890, 8
  br i1 %1977, label %1978, label %1998

; <label>:1978                                    ; preds = %1976
  %1979 = fmul fast float %1895, %1610
  %1980 = fmul fast float %1895, %1611
  %1981 = fadd fast float %1979, %1110
  %1982 = fadd fast float %1980, %1111
  %1983 = call float @dx.op.binary.f32(i32 36, float %1124, float %1612)  ; FMin(a,b)
  %1984 = fsub fast float %1983, %1124
  %1985 = fmul fast float %1984, %1898
  %1986 = fadd fast float %1985, %1124
  %1987 = fsub fast float %1609, %1123
  %1988 = fmul fast float %1901, %1987
  %1989 = fadd fast float %1988, %1123
  %1990 = fmul fast float %1904, %1715
  %1991 = fmul fast float %1904, %1716
  %1992 = fmul fast float %1904, %1717
  %1993 = fadd fast float %1990, %1118
  %1994 = fadd fast float %1991, %1119
  %1995 = fadd fast float %1992, %1120
  %1996 = fmul fast float %1907, %1743
  %1997 = fadd fast float %1996, %1125
  br label %1998

; <label>:1998                                    ; preds = %1978, %1976, %1936, %1909, %1881, %1308, %1127, %1109
  %1999 = phi float [ %1110, %1881 ], [ %1110, %1308 ], [ %1110, %1109 ], [ %1981, %1978 ], [ %1110, %1976 ], [ %1939, %1936 ], [ %1914, %1909 ], [ %1110, %1127 ]
  %2000 = phi float [ %1111, %1881 ], [ %1111, %1308 ], [ %1111, %1109 ], [ %1982, %1978 ], [ %1111, %1976 ], [ %1940, %1936 ], [ %1915, %1909 ], [ %1111, %1127 ]
  %2001 = phi float [ %1882, %1881 ], [ %1112, %1308 ], [ %1112, %1109 ], [ %1882, %1978 ], [ %1882, %1976 ], [ %1882, %1936 ], [ %1882, %1909 ], [ %1112, %1127 ]
  %2002 = phi float [ %1883, %1881 ], [ %1113, %1308 ], [ %1113, %1109 ], [ %1883, %1978 ], [ %1883, %1976 ], [ %1883, %1936 ], [ %1883, %1909 ], [ %1113, %1127 ]
  %2003 = phi float [ %1884, %1881 ], [ %1114, %1308 ], [ %1114, %1109 ], [ %1884, %1978 ], [ %1884, %1976 ], [ %1884, %1936 ], [ %1884, %1909 ], [ %1114, %1127 ]
  %2004 = phi float [ %1885, %1881 ], [ %1115, %1308 ], [ %1115, %1109 ], [ %1885, %1978 ], [ %1885, %1976 ], [ %1885, %1936 ], [ %1885, %1909 ], [ %1115, %1127 ]
  %2005 = phi float [ %1886, %1881 ], [ %1116, %1308 ], [ %1116, %1109 ], [ %1886, %1978 ], [ %1886, %1976 ], [ %1886, %1936 ], [ %1886, %1909 ], [ %1116, %1127 ]
  %2006 = phi float [ %1887, %1881 ], [ %1117, %1308 ], [ %1117, %1109 ], [ %1887, %1978 ], [ %1887, %1976 ], [ %1887, %1936 ], [ %1887, %1909 ], [ %1117, %1127 ]
  %2007 = phi float [ %1118, %1881 ], [ %1118, %1308 ], [ %1118, %1109 ], [ %1993, %1978 ], [ %1118, %1976 ], [ %1971, %1936 ], [ %1928, %1909 ], [ %1118, %1127 ]
  %2008 = phi float [ %1119, %1881 ], [ %1119, %1308 ], [ %1119, %1109 ], [ %1994, %1978 ], [ %1119, %1976 ], [ %1972, %1936 ], [ %1929, %1909 ], [ %1119, %1127 ]
  %2009 = phi float [ %1120, %1881 ], [ %1120, %1308 ], [ %1120, %1109 ], [ %1995, %1978 ], [ %1120, %1976 ], [ %1973, %1936 ], [ %1930, %1909 ], [ %1120, %1127 ]
  %2010 = phi float [ %1888, %1881 ], [ %1121, %1308 ], [ %1121, %1109 ], [ %1888, %1978 ], [ %1888, %1976 ], [ %1888, %1936 ], [ %1888, %1909 ], [ %1121, %1127 ]
  %2011 = phi float [ %1123, %1881 ], [ %1123, %1308 ], [ %1123, %1109 ], [ %1989, %1978 ], [ %1123, %1976 ], [ %1967, %1936 ], [ %1921, %1909 ], [ %1123, %1127 ]
  %2012 = phi float [ %1124, %1881 ], [ %1124, %1308 ], [ %1124, %1109 ], [ %1986, %1978 ], [ %1124, %1976 ], [ %1944, %1936 ], [ %1918, %1909 ], [ %1124, %1127 ]
  %2013 = phi float [ %1125, %1881 ], [ %1125, %1308 ], [ %1125, %1109 ], [ %1997, %1978 ], [ %1125, %1976 ], [ %1975, %1936 ], [ %1933, %1909 ], [ %1125, %1127 ]
  %2014 = phi float [ %1889, %1881 ], [ %1126, %1308 ], [ %1126, %1109 ], [ %1889, %1978 ], [ %1889, %1976 ], [ %1889, %1936 ], [ %1889, %1909 ], [ %1126, %1127 ]
  br i1 %426, label %2886, label %2015

; <label>:2015                                    ; preds = %1998
  %2016 = icmp ult i32 %482, 3
  %2017 = add i32 %42, 56
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = add i32 %42, 60
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = or i32 %2022, %2019
  %2024 = icmp eq i32 %2023, 0
  br i1 %2024, label %2886, label %2025

; <label>:2025                                    ; preds = %2015
  %2026 = and i32 %2019, 262144
  %2027 = icmp ne i32 %2026, 0
  %2028 = select i1 %2027, float %47, float 1.000000e+00
  %2029 = select i1 %2027, float %48, float 0.000000e+00
  %2030 = select i1 %2027, float %49, float 0.000000e+00
  %2031 = select i1 %2027, float %50, float 1.000000e+00
  %2032 = select i1 %2027, float %51, float %74
  %2033 = select i1 %2027, float %52, float %75
  %2034 = add i32 %42, 316
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = lshr i32 %2036, 16
  %2038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2037)  ; LegacyF16ToF32(value)
  %2039 = fmul fast float %2038, 0x3F50624DE0000000
  %2040 = add i32 %42, 120
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = lshr i32 %2042, 16
  %2044 = and i32 %2043, 255
  %2045 = lshr i32 %2042, 24
  %2046 = add i32 %42, 324
  %2047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2046, i32 undef)  ; BufferLoad(srv,index,wot)
  %2048 = extractvalue %dx.types.ResRet.i32 %2047, 0
  %2049 = and i32 %2048, 65535
  %2050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2049)  ; LegacyF16ToF32(value)
  %2051 = lshr i32 %2048, 16
  %2052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2051)  ; LegacyF16ToF32(value)
  %2053 = add i32 %42, 64
  %2054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2053, i32 undef)  ; BufferLoad(srv,index,wot)
  %2055 = extractvalue %dx.types.ResRet.i32 %2054, 0
  %2056 = lshr i32 %2055, 22
  %2057 = shl nuw nsw i32 %2056, 5
  %2058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2057)  ; LegacyF16ToF32(value)
  %2059 = shl i32 %2055, 4
  %2060 = and i32 %2059, 32752
  %2061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2060)  ; LegacyF16ToF32(value)
  %2062 = lshr i32 %2055, 7
  %2063 = and i32 %2062, 32752
  %2064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2063)  ; LegacyF16ToF32(value)
  %2065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2066 = extractvalue %dx.types.CBufRet.f32 %2065, 3
  %2067 = fmul fast float %2066, 1.000000e+03
  %2068 = fmul fast float %376, %2067
  %2069 = call float @dx.op.unary.f32(i32 22, float %2068)  ; Frc(value)
  %2070 = fadd fast float %2069, %366
  %2071 = fmul fast float %377, %2067
  %2072 = call float @dx.op.unary.f32(i32 22, float %2071)  ; Frc(value)
  %2073 = fadd fast float %2072, %368
  %2074 = fmul fast float %2039, %2067
  %2075 = call float @dx.op.unary.f32(i32 22, float %2074)  ; Frc(value)
  %2076 = fmul fast float %2075, 0x401921FB60000000
  %2077 = fadd fast float %2076, %2058
  %2078 = call float @dx.op.unary.f32(i32 13, float %2077)  ; Sin(value)
  %2079 = call float @dx.op.unary.f32(i32 12, float %2077)  ; Cos(value)
  %2080 = fsub fast float -0.000000e+00, %2078
  %2081 = fadd fast float %2032, -5.000000e-01
  %2082 = fadd fast float %2033, -5.000000e-01
  %2083 = fmul fast float %2050, %2081
  %2084 = fmul fast float %2052, %2082
  %2085 = fadd fast float %2083, 5.000000e-01
  %2086 = fadd fast float %2084, 5.000000e-01
  %2087 = fmul fast float %2061, %2085
  %2088 = fmul fast float %2064, %2086
  %2089 = fmul fast float %2079, %2087
  %2090 = call float @dx.op.tertiary.f32(i32 46, float %2080, float %2088, float %2089)  ; FMad(a,b,c)
  %2091 = fmul fast float %2078, %2087
  %2092 = call float @dx.op.tertiary.f32(i32 46, float %2079, float %2088, float %2091)  ; FMad(a,b,c)
  %2093 = fadd fast float %2070, %2090
  %2094 = fadd fast float %2073, %2092
  %2095 = icmp ugt i32 %2044, 1
  %2096 = icmp ugt i32 %2042, 33554431
  %2097 = or i1 %2096, %2095
  br i1 %2097, label %2098, label %2123

; <label>:2098                                    ; preds = %2025
  %2099 = add i32 %42, 260
  %2100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2099, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.i32 %2100, 0
  %2102 = lshr i32 %2101, 16
  %2103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2102)  ; LegacyF16ToF32(value)
  %2104 = fmul fast float %2066, %2103
  %2105 = call float @dx.op.unary.f32(i32 22, float %2104)  ; Frc(value)
  %2106 = mul nuw nsw i32 %2044, %2045
  %2107 = uitofp i32 %2106 to float
  %2108 = fmul fast float %2105, %2107
  %2109 = call float @dx.op.unary.f32(i32 27, float %2108)  ; Round_ni(value)
  %2110 = fptoui float %2109 to i32
  %2111 = urem i32 %2110, %2044
  %2112 = udiv i32 %2110, %2045
  %2113 = call float @dx.op.unary.f32(i32 22, float %2093)  ; Frc(value)
  %2114 = call float @dx.op.unary.f32(i32 22, float %2094)  ; Frc(value)
  %2115 = uitofp i32 %2111 to float
  %2116 = uitofp i32 %2112 to float
  %2117 = fadd fast float %2113, %2115
  %2118 = fadd fast float %2114, %2116
  %2119 = uitofp i32 %2044 to float
  %2120 = uitofp i32 %2045 to float
  %2121 = fdiv fast float %2117, %2119
  %2122 = fdiv fast float %2118, %2120
  br label %2123

; <label>:2123                                    ; preds = %2098, %2025
  %2124 = phi float [ %2121, %2098 ], [ %2093, %2025 ]
  %2125 = phi float [ %2122, %2098 ], [ %2094, %2025 ]
  %2126 = and i32 %2019, 256
  %2127 = icmp eq i32 %2126, 0
  br i1 %2127, label %2174, label %2128

; <label>:2128                                    ; preds = %2123
  %2129 = add i32 %42, 432
  %2130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2129, i32 undef)  ; BufferLoad(srv,index,wot)
  %2131 = extractvalue %dx.types.ResRet.i32 %2130, 0
  %2132 = add i32 %2131, 0
  %2133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2132, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2134 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2133, %dx.types.Handle %89, float %2124, float %2125, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2135 = extractvalue %dx.types.ResRet.f32 %2134, 0
  %2136 = add i32 %42, 132
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = shl i32 %2138, 4
  %2140 = and i32 %2139, 32752
  %2141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2140)  ; LegacyF16ToF32(value)
  %2142 = lshr i32 %2138, 7
  %2143 = and i32 %2142, 32752
  %2144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2143)  ; LegacyF16ToF32(value)
  %2145 = fsub fast float 1.000000e+00, %478
  %2146 = call float @dx.op.binary.f32(i32 35, float %2145, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2147 = bitcast float %478 to i32
  %2148 = sitofp i32 %2147 to float
  %2149 = fadd fast float %2148, 0xC1CFBF8940000000
  %2150 = fmul fast float %2144, %2149
  %2151 = fadd fast float %2150, 0x41CFBF8940000000
  %2152 = fptosi float %2151 to i32
  %2153 = bitcast i32 %2152 to float
  %2154 = bitcast float %2146 to i32
  %2155 = sitofp i32 %2154 to float
  %2156 = fadd fast float %2155, 0xC1CFBF8940000000
  %2157 = fmul fast float %2156, %2144
  %2158 = fadd fast float %2157, 0x41CFBF8940000000
  %2159 = fptosi float %2158 to i32
  %2160 = bitcast i32 %2159 to float
  %2161 = fmul fast float %2153, %2141
  %2162 = fmul fast float %2160, %2141
  %2163 = fsub fast float %2146, %2161
  %2164 = fadd fast float %2162, %2146
  %2165 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2166 = call float @dx.op.unary.f32(i32 7, float %2164)  ; Saturate(value)
  %2167 = fsub fast float %2135, %2165
  %2168 = fsub fast float %2166, %2165
  %2169 = bitcast float %2168 to i32
  %2170 = sub nsw i32 2129859010, %2169
  %2171 = bitcast i32 %2170 to float
  %2172 = fmul fast float %2171, %2167
  %2173 = call float @dx.op.unary.f32(i32 7, float %2172)  ; Saturate(value)
  br label %2174

; <label>:2174                                    ; preds = %2128, %2123
  %2175 = phi float [ %2173, %2128 ], [ %478, %2123 ]
  %2176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.i32 %2176, 0
  %2178 = and i32 %2177, 128
  %2179 = icmp eq i32 %2178, 0
  br i1 %2179, label %2196, label %2180

; <label>:2180                                    ; preds = %2174
  %2181 = add i32 %42, 416
  %2182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.i32 %2182, 0
  %2184 = add i32 %2183, 0
  %2185 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2184, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2186 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2185, %dx.types.Handle %89, float %2124, float %2125, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2187 = extractvalue %dx.types.ResRet.f32 %2186, 0
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = and i32 %2189, 524288
  %2191 = icmp ne i32 %2190, 0
  %2192 = fcmp fast ogt float %2187, 0x3FE0101020000000
  %2193 = select i1 %2192, float 1.000000e+00, float 0.000000e+00
  %2194 = select i1 %2191, float %2193, float %2187
  %2195 = fmul fast float %2194, %2175
  br label %2196

; <label>:2196                                    ; preds = %2180, %2174
  %2197 = phi float [ %2195, %2180 ], [ %2175, %2174 ]
  %2198 = fcmp fast ult float %2197, 0x3F70101020000000
  br i1 %2198, label %2886, label %2199

; <label>:2199                                    ; preds = %2196
  %2200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2201 = extractvalue %dx.types.ResRet.i32 %2200, 0
  %2202 = and i32 %2201, 16
  %2203 = icmp eq i32 %2202, 0
  br i1 %2203, label %2402, label %2204

; <label>:2204                                    ; preds = %2199
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = add i32 %42, 368
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2207, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = add i32 %2209, 0
  %2211 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2210, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2212 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2211, %dx.types.Handle %88, float %2124, float %2125, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2213 = extractvalue %dx.types.ResRet.f32 %2212, 0
  %2214 = extractvalue %dx.types.ResRet.f32 %2212, 1
  %2215 = extractvalue %dx.types.ResRet.f32 %2212, 2
  %2216 = extractvalue %dx.types.ResRet.f32 %2212, 3
  %2217 = and i32 %2206, 255
  %2218 = uitofp i32 %2217 to float
  %2219 = lshr i32 %2206, 8
  %2220 = and i32 %2219, 255
  %2221 = uitofp i32 %2220 to float
  %2222 = fmul fast float %2216, %2218
  %2223 = fadd fast float %2222, %2221
  %2224 = fmul fast float %2223, 0x3F70101000000000
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = and i32 %2226, 512
  %2228 = icmp eq i32 %2227, 0
  br i1 %2228, label %2237, label %2229

; <label>:2229                                    ; preds = %2204
  %2230 = add i32 %42, 448
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = add i32 %2232, 0
  %2234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2235 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2234, %dx.types.Handle %89, float %2124, float %2125, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2236 = extractvalue %dx.types.ResRet.f32 %2235, 0
  br label %2237

; <label>:2237                                    ; preds = %2229, %2204
  %2238 = phi float [ %2236, %2229 ], [ 1.000000e+00, %2204 ]
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = and i32 %2240, 33554432
  %2242 = icmp eq i32 %2241, 0
  br i1 %2242, label %2349, label %2243

; <label>:2243                                    ; preds = %2237
  %2244 = add i32 %42, 256
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = and i32 %2246, 65535
  %2248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2247)  ; LegacyF16ToF32(value)
  %2249 = lshr i32 %2246, 16
  %2250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2249)  ; LegacyF16ToF32(value)
  %2251 = add i32 %42, 260
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2251, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = and i32 %2253, 65535
  %2255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2254)  ; LegacyF16ToF32(value)
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = lshr i32 %2257, 24
  %2259 = uitofp i32 %2258 to float
  %2260 = fmul fast float %2259, 0x3F70101020000000
  %2261 = and i32 %2257, 255
  %2262 = uitofp i32 %2261 to float
  %2263 = fmul fast float %2262, 0x3F70101020000000
  %2264 = lshr i32 %2257, 8
  %2265 = and i32 %2264, 255
  %2266 = uitofp i32 %2265 to float
  %2267 = fmul fast float %2266, 0x3F70101020000000
  %2268 = lshr i32 %2257, 16
  %2269 = and i32 %2268, 255
  %2270 = uitofp i32 %2269 to float
  %2271 = fmul fast float %2270, 0x3F70101020000000
  %2272 = add i32 %42, 252
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = lshr i32 %2274, 24
  %2276 = uitofp i32 %2275 to float
  %2277 = fmul fast float %2276, 0x3F70101020000000
  %2278 = and i32 %2274, 255
  %2279 = uitofp i32 %2278 to float
  %2280 = fmul fast float %2279, 0x3F70101020000000
  %2281 = lshr i32 %2274, 8
  %2282 = and i32 %2281, 255
  %2283 = uitofp i32 %2282 to float
  %2284 = fmul fast float %2283, 0x3F70101020000000
  %2285 = lshr i32 %2274, 16
  %2286 = and i32 %2285, 255
  %2287 = uitofp i32 %2286 to float
  %2288 = fmul fast float %2287, 0x3F70101020000000
  %2289 = bitcast float %2213 to i32
  %2290 = ashr i32 %2289, 1
  %2291 = sub nsw i32 1597463174, %2290
  %2292 = bitcast i32 %2291 to float
  %2293 = fmul fast float %2213, 5.000000e-01
  %2294 = fmul fast float %2292, %2292
  %2295 = fmul fast float %2294, %2293
  %2296 = fsub fast float 1.500000e+00, %2295
  %2297 = fmul fast float %2292, %2213
  %2298 = fmul fast float %2297, %2296
  %2299 = bitcast float %2214 to i32
  %2300 = ashr i32 %2299, 1
  %2301 = sub nsw i32 1597463174, %2300
  %2302 = bitcast i32 %2301 to float
  %2303 = fmul fast float %2214, 5.000000e-01
  %2304 = fmul fast float %2302, %2302
  %2305 = fmul fast float %2304, %2303
  %2306 = fsub fast float 1.500000e+00, %2305
  %2307 = fmul fast float %2302, %2214
  %2308 = fmul fast float %2307, %2306
  %2309 = bitcast float %2215 to i32
  %2310 = ashr i32 %2309, 1
  %2311 = sub nsw i32 1597463174, %2310
  %2312 = bitcast i32 %2311 to float
  %2313 = fmul fast float %2215, 5.000000e-01
  %2314 = fmul fast float %2312, %2312
  %2315 = fmul fast float %2314, %2313
  %2316 = fsub fast float 1.500000e+00, %2315
  %2317 = fmul fast float %2312, %2215
  %2318 = fmul fast float %2317, %2316
  %2319 = fsub fast float %2298, %2280
  %2320 = fsub fast float %2308, %2284
  %2321 = fsub fast float %2318, %2288
  %2322 = fmul fast float %2319, %2248
  %2323 = fmul fast float %2320, %2250
  %2324 = fmul fast float %2321, %2255
  %2325 = fadd fast float %2322, %2263
  %2326 = fadd fast float %2323, %2267
  %2327 = fadd fast float %2324, %2271
  %2328 = call float @dx.op.unary.f32(i32 7, float %2325)  ; Saturate(value)
  %2329 = call float @dx.op.unary.f32(i32 7, float %2326)  ; Saturate(value)
  %2330 = call float @dx.op.unary.f32(i32 7, float %2327)  ; Saturate(value)
  %2331 = fmul fast float %2328, %2328
  %2332 = fmul fast float %2329, %2329
  %2333 = fmul fast float %2330, %2330
  %2334 = fsub fast float %2331, %2213
  %2335 = fsub fast float %2332, %2214
  %2336 = fsub fast float %2333, %2215
  %2337 = fmul fast float %2334, %2238
  %2338 = fmul fast float %2335, %2238
  %2339 = fmul fast float %2336, %2238
  %2340 = fadd fast float %2337, %2213
  %2341 = fadd fast float %2338, %2214
  %2342 = fadd fast float %2339, %2215
  %2343 = fadd fast float %2260, %2224
  %2344 = fsub fast float %2343, %2277
  %2345 = call float @dx.op.unary.f32(i32 7, float %2344)  ; Saturate(value)
  %2346 = fsub fast float %2345, %2224
  %2347 = fmul fast float %2346, %2238
  %2348 = fadd fast float %2347, %2224
  br label %2402

; <label>:2349                                    ; preds = %2237
  %2350 = and i32 %2240, 134217728
  %2351 = icmp eq i32 %2350, 0
  br i1 %2351, label %2386, label %2352

; <label>:2352                                    ; preds = %2349
  %2353 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %2354 = call float @dx.op.unary.f32(i32 24, float %357)  ; Sqrt(value)
  %2355 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %2356 = fadd fast float %2353, -5.000000e-01
  %2357 = fadd fast float %2354, -5.000000e-01
  %2358 = fadd fast float %2355, -5.000000e-01
  %2359 = fmul fast float %2356, %2238
  %2360 = fmul fast float %2357, %2238
  %2361 = fmul fast float %2358, %2238
  %2362 = fadd fast float %2359, 5.000000e-01
  %2363 = fadd fast float %2360, 5.000000e-01
  %2364 = fadd fast float %2361, 5.000000e-01
  %2365 = call float @dx.op.unary.f32(i32 24, float %2213)  ; Sqrt(value)
  %2366 = call float @dx.op.unary.f32(i32 24, float %2214)  ; Sqrt(value)
  %2367 = call float @dx.op.unary.f32(i32 24, float %2215)  ; Sqrt(value)
  %2368 = fmul fast float %2362, 2.000000e+00
  %2369 = fsub fast float 1.000000e+00, %2368
  %2370 = fmul fast float %2369, %2365
  %2371 = fadd fast float %2370, %2368
  %2372 = fmul fast float %2371, %2365
  %2373 = fmul fast float %2363, 2.000000e+00
  %2374 = fsub fast float 1.000000e+00, %2373
  %2375 = fmul fast float %2374, %2366
  %2376 = fadd fast float %2375, %2373
  %2377 = fmul fast float %2376, %2366
  %2378 = fmul fast float %2364, 2.000000e+00
  %2379 = fsub fast float 1.000000e+00, %2378
  %2380 = fmul fast float %2379, %2367
  %2381 = fadd fast float %2380, %2378
  %2382 = fmul fast float %2381, %2367
  %2383 = fmul fast float %2372, %2372
  %2384 = fmul fast float %2377, %2377
  %2385 = fmul fast float %2382, %2382
  br label %2402

; <label>:2386                                    ; preds = %2349
  %2387 = fmul fast float %353, %353
  %2388 = fmul fast float %357, %357
  %2389 = fmul fast float %361, %361
  %2390 = fadd fast float %2387, -1.000000e+00
  %2391 = fadd fast float %2388, -1.000000e+00
  %2392 = fadd fast float %2389, -1.000000e+00
  %2393 = fmul fast float %2238, %2390
  %2394 = fmul fast float %2238, %2391
  %2395 = fmul fast float %2238, %2392
  %2396 = fadd fast float %2393, 1.000000e+00
  %2397 = fadd fast float %2394, 1.000000e+00
  %2398 = fadd fast float %2395, 1.000000e+00
  %2399 = fmul fast float %2396, %2213
  %2400 = fmul fast float %2397, %2214
  %2401 = fmul fast float %2398, %2215
  br label %2402

; <label>:2402                                    ; preds = %2386, %2352, %2243, %2199
  %2403 = phi float [ %2348, %2243 ], [ %2224, %2352 ], [ %2224, %2386 ], [ 0x3FA23C0BE0000000, %2199 ]
  %2404 = phi float [ %2340, %2243 ], [ %2383, %2352 ], [ %2399, %2386 ], [ 1.000000e+00, %2199 ]
  %2405 = phi float [ %2341, %2243 ], [ %2384, %2352 ], [ %2400, %2386 ], [ 1.000000e+00, %2199 ]
  %2406 = phi float [ %2342, %2243 ], [ %2385, %2352 ], [ %2401, %2386 ], [ 1.000000e+00, %2199 ]
  %2407 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2408 = extractvalue %dx.types.CBufRet.i32 %2407, 1
  %2409 = and i32 %2408, 1
  %2410 = icmp ne i32 %2409, 0
  %2411 = add i32 %42, 356
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 32
  %2415 = icmp ne i32 %2414, 0
  %2416 = and i1 %2410, %2415
  %2417 = select i1 %2416, float 1.000000e+00, float %2404
  %2418 = select i1 %2416, float 0x3FD3333340000000, float %2405
  %2419 = select i1 %2416, float 0x3FD3333340000000, float %2406
  %2420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2421 = extractvalue %dx.types.ResRet.i32 %2420, 0
  %2422 = and i32 %2421, 32
  %2423 = icmp eq i32 %2422, 0
  br i1 %2423, label %2496, label %2424

; <label>:2424                                    ; preds = %2402
  %2425 = add i32 %42, 124
  %2426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2425, i32 undef)  ; BufferLoad(srv,index,wot)
  %2427 = extractvalue %dx.types.ResRet.i32 %2426, 0
  %2428 = add i32 %42, 384
  %2429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2428, i32 undef)  ; BufferLoad(srv,index,wot)
  %2430 = extractvalue %dx.types.ResRet.i32 %2429, 0
  %2431 = add i32 %2430, 0
  %2432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2431, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2433 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2432, %dx.types.Handle %88, float %2124, float %2125, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2434 = extractvalue %dx.types.ResRet.f32 %2433, 0
  %2435 = extractvalue %dx.types.ResRet.f32 %2433, 1
  %2436 = extractvalue %dx.types.ResRet.f32 %2433, 2
  %2437 = extractvalue %dx.types.ResRet.f32 %2433, 3
  %2438 = and i32 %2427, 255
  %2439 = uitofp i32 %2438 to float
  %2440 = lshr i32 %2427, 8
  %2441 = and i32 %2440, 255
  %2442 = uitofp i32 %2441 to float
  %2443 = lshr i32 %2427, 16
  %2444 = and i32 %2443, 255
  %2445 = uitofp i32 %2444 to float
  %2446 = fmul fast float %2445, 0x3F70101000000000
  %2447 = fmul fast float %2434, %2439
  %2448 = fadd fast float %2447, %2442
  %2449 = fmul fast float %2448, 0x3F70101000000000
  %2450 = fadd fast float %2435, -5.000000e-01
  %2451 = fadd fast float %2437, -5.000000e-01
  %2452 = fmul fast float %2450, %2446
  %2453 = fmul fast float %2451, %2446
  %2454 = fadd fast float %2452, 5.000000e-01
  %2455 = fadd fast float %2453, 5.000000e-01
  %2456 = fmul fast float %2454, 2.000000e+00
  %2457 = fadd fast float %2456, -1.000000e+00
  %2458 = fmul fast float %2455, 2.000000e+00
  %2459 = fadd fast float %2458, -1.000000e+00
  %2460 = fadd fast float %2457, %2459
  %2461 = fmul fast float %2460, 5.000000e-01
  %2462 = fsub fast float %2457, %2459
  %2463 = fmul fast float %2462, 5.000000e-01
  %2464 = call float @dx.op.unary.f32(i32 6, float %2461)  ; FAbs(value)
  %2465 = fsub fast float 1.000000e+00, %2464
  %2466 = call float @dx.op.unary.f32(i32 6, float %2463)  ; FAbs(value)
  %2467 = fsub fast float %2465, %2466
  %2468 = call float @dx.op.dot3.f32(i32 55, float %2461, float %2463, float %2467, float %2461, float %2463, float %2467)  ; Dot3(ax,ay,az,bx,by,bz)
  %2469 = call float @dx.op.unary.f32(i32 25, float %2468)  ; Rsqrt(value)
  %2470 = fmul fast float %2461, %2469
  %2471 = fmul fast float %2463, %2469
  %2472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.i32 %2472, 0
  %2474 = and i32 %2473, 67108864
  %2475 = icmp eq i32 %2474, 0
  br i1 %2475, label %2492, label %2476

; <label>:2476                                    ; preds = %2424
  %2477 = add i32 %42, 312
  %2478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2477, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.i32 %2478, 0
  %2480 = and i32 %2479, 65535
  %2481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2480)  ; LegacyF16ToF32(value)
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = and i32 %2483, 65535
  %2485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2484)  ; LegacyF16ToF32(value)
  %2486 = lshr i32 %2479, 16
  %2487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2486)  ; LegacyF16ToF32(value)
  %2488 = fsub fast float %2449, %2487
  %2489 = fmul fast float %2488, %2481
  %2490 = fadd fast float %2489, %2485
  %2491 = call float @dx.op.unary.f32(i32 7, float %2490)  ; Saturate(value)
  br label %2492

; <label>:2492                                    ; preds = %2476, %2424
  %2493 = phi float [ %2491, %2476 ], [ %2449, %2424 ]
  %2494 = call float @dx.op.dot2.f32(i32 54, float %2470, float %2471, float %2028, float %2029)  ; Dot2(ax,ay,bx,by)
  %2495 = call float @dx.op.dot2.f32(i32 54, float %2470, float %2471, float %2030, float %2031)  ; Dot2(ax,ay,bx,by)
  br label %2496

; <label>:2496                                    ; preds = %2492, %2402
  %2497 = phi float [ %2493, %2492 ], [ 0x3FD6666660000000, %2402 ]
  %2498 = phi float [ %2494, %2492 ], [ 0.000000e+00, %2402 ]
  %2499 = phi float [ %2495, %2492 ], [ 0.000000e+00, %2402 ]
  %2500 = phi float [ %2436, %2492 ], [ 1.000000e+00, %2402 ]
  %2501 = add i32 %42, 192
  %2502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2501, i32 undef)  ; BufferLoad(srv,index,wot)
  %2503 = extractvalue %dx.types.ResRet.i32 %2502, 0
  %2504 = lshr i32 %2503, 22
  %2505 = shl nuw nsw i32 %2504, 5
  %2506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2505)  ; LegacyF16ToF32(value)
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = and i32 %2508, 64
  %2510 = icmp eq i32 %2509, 0
  br i1 %2510, label %2544, label %2511

; <label>:2511                                    ; preds = %2496
  %2512 = add i32 %42, 400
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = add i32 %2514, 0
  %2516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2515, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = and i32 %2518, 131072
  %2520 = icmp eq i32 %2519, 0
  %2521 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2516, %dx.types.Handle %88, float %2124, float %2125, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2522 = extractvalue %dx.types.ResRet.f32 %2521, 0
  %2523 = extractvalue %dx.types.ResRet.f32 %2521, 1
  %2524 = extractvalue %dx.types.ResRet.f32 %2521, 2
  %2525 = fmul fast float %2522, %341
  %2526 = fmul fast float %2523, %344
  %2527 = fmul fast float %2524, %347
  br i1 %2520, label %2534, label %2528

; <label>:2528                                    ; preds = %2511
  %2529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2530 = extractvalue %dx.types.CBufRet.f32 %2529, 0
  %2531 = fmul fast float %2530, %2525
  %2532 = fmul fast float %2530, %2526
  %2533 = fmul fast float %2530, %2527
  br label %2534

; <label>:2534                                    ; preds = %2528, %2511
  %2535 = phi float [ %2531, %2528 ], [ %2525, %2511 ]
  %2536 = phi float [ %2532, %2528 ], [ %2526, %2511 ]
  %2537 = phi float [ %2533, %2528 ], [ %2527, %2511 ]
  %2538 = fmul fast float %2535, %2506
  %2539 = select i1 %240, float %2538, float %2535
  %2540 = call float @dx.op.dot3.f32(i32 55, float %2539, float %2536, float %2537, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2541 = select i1 %240, float 0.000000e+00, float %2535
  %2542 = select i1 %240, float %2540, float %2536
  %2543 = select i1 %240, float 0.000000e+00, float %2537
  br label %2544

; <label>:2544                                    ; preds = %2534, %2496
  %2545 = phi float [ %2541, %2534 ], [ 0.000000e+00, %2496 ]
  %2546 = phi float [ %2542, %2534 ], [ 0.000000e+00, %2496 ]
  %2547 = phi float [ %2543, %2534 ], [ 0.000000e+00, %2496 ]
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = and i32 %2549, 1024
  %2551 = icmp eq i32 %2550, 0
  br i1 %2551, label %2582, label %2552

; <label>:2552                                    ; preds = %2544
  %2553 = add i32 %42, 184
  %2554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2553, i32 undef)  ; BufferLoad(srv,index,wot)
  %2555 = extractvalue %dx.types.ResRet.i32 %2554, 0
  %2556 = and i32 %2555, 255
  %2557 = uitofp i32 %2556 to float
  %2558 = fmul fast float %2557, 0x3F70101020000000
  %2559 = lshr i32 %2555, 8
  %2560 = and i32 %2559, 255
  %2561 = uitofp i32 %2560 to float
  %2562 = fmul fast float %2561, 0x3F70101020000000
  %2563 = lshr i32 %2555, 16
  %2564 = and i32 %2563, 255
  %2565 = uitofp i32 %2564 to float
  %2566 = fmul fast float %2565, 0x3F70101020000000
  %2567 = fmul fast float %2558, %2558
  %2568 = fmul fast float %2562, %2562
  %2569 = fmul fast float %2566, %2566
  %2570 = add i32 %42, 464
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2570, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = add i32 %2572, 0
  %2574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2575 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2574, %dx.types.Handle %89, float %2124, float %2125, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2576 = extractvalue %dx.types.ResRet.f32 %2575, 0
  %2577 = extractvalue %dx.types.ResRet.f32 %2575, 1
  %2578 = extractvalue %dx.types.ResRet.f32 %2575, 2
  %2579 = fmul fast float %2567, %2576
  %2580 = fmul fast float %2568, %2577
  %2581 = fmul fast float %2569, %2578
  br label %2582

; <label>:2582                                    ; preds = %2552, %2544
  %2583 = phi float [ %2579, %2552 ], [ 0.000000e+00, %2544 ]
  %2584 = phi float [ %2580, %2552 ], [ 0.000000e+00, %2544 ]
  %2585 = phi float [ %2581, %2552 ], [ 0.000000e+00, %2544 ]
  %2586 = fcmp fast ogt float %2583, 0.000000e+00
  %2587 = fcmp fast ogt float %2584, 0.000000e+00
  %2588 = fcmp fast ogt float %2585, 0.000000e+00
  %2589 = call float @dx.op.unary.f32(i32 23, float %2583)  ; Log(value)
  %2590 = call float @dx.op.unary.f32(i32 23, float %2584)  ; Log(value)
  %2591 = call float @dx.op.unary.f32(i32 23, float %2585)  ; Log(value)
  %2592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2501, i32 undef)  ; BufferLoad(srv,index,wot)
  %2593 = extractvalue %dx.types.ResRet.i32 %2592, 0
  %2594 = lshr i32 %2593, 7
  %2595 = and i32 %2594, 32752
  %2596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2595)  ; LegacyF16ToF32(value)
  %2597 = fmul fast float %2589, 0xBFE62E4300000000
  %2598 = fmul fast float %2597, %2596
  %2599 = fmul fast float %2590, 0xBFE62E4300000000
  %2600 = fmul fast float %2599, %2596
  %2601 = fmul fast float %2591, 0xBFE62E4300000000
  %2602 = fmul fast float %2601, %2596
  %2603 = select i1 %2586, float %2598, float 1.270000e+02
  %2604 = select i1 %2587, float %2600, float 1.270000e+02
  %2605 = select i1 %2588, float %2602, float 1.270000e+02
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = and i32 %2607, 10240
  %2609 = icmp eq i32 %2608, 0
  br i1 %2609, label %2630, label %2610

; <label>:2610                                    ; preds = %2582
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = and i32 %2612, 2048
  %2614 = icmp eq i32 %2613, 0
  br i1 %2614, label %2630, label %2615

; <label>:2615                                    ; preds = %2610
  %2616 = add i32 %42, 480
  %2617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2618 = extractvalue %dx.types.ResRet.i32 %2617, 0
  %2619 = add i32 %2618, 0
  %2620 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2619, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2621 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2620, %dx.types.Handle %89, float %2124, float %2125, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2622 = extractvalue %dx.types.ResRet.f32 %2621, 3
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2501, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = shl i32 %2624, 4
  %2626 = and i32 %2625, 32752
  %2627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2626)  ; LegacyF16ToF32(value)
  %2628 = fmul fast float %2627, %2622
  %2629 = call float @dx.op.binary.f32(i32 35, float %2628, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2630

; <label>:2630                                    ; preds = %2615, %2610, %2582
  %2631 = phi float [ %2629, %2615 ], [ 0x3F70101020000000, %2610 ], [ 0x3F70101020000000, %2582 ]
  %2632 = add i32 %42, 128
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2632, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = and i32 %2634, 255
  %2636 = uitofp i32 %2635 to float
  %2637 = lshr i32 %2634, 8
  %2638 = and i32 %2637, 255
  %2639 = uitofp i32 %2638 to float
  %2640 = call float @dx.op.dot3.f32(i32 55, float %2417, float %2418, float %2419, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2641 = fmul fast float %2639, %2640
  %2642 = fadd fast float %2641, %2636
  %2643 = fmul fast float %2642, 0x3F70101020000000
  %2644 = call float @dx.op.unary.f32(i32 7, float %2643)  ; Saturate(value)
  br i1 %2016, label %2645, label %2680

; <label>:2645                                    ; preds = %2630
  %2646 = fmul fast float %2631, 2.000000e+00
  %2647 = fcmp fast olt float %2603, 1.270000e+02
  %2648 = fcmp fast olt float %2604, 1.270000e+02
  %2649 = fcmp fast olt float %2605, 1.270000e+02
  %2650 = fmul fast float %2603, 0xBFF7154760000000
  %2651 = fmul fast float %2650, %2646
  %2652 = fmul fast float %2604, 0xBFF7154760000000
  %2653 = fmul fast float %2652, %2646
  %2654 = fmul fast float %2605, 0xBFF7154760000000
  %2655 = fmul fast float %2654, %2646
  %2656 = call float @dx.op.unary.f32(i32 21, float %2651)  ; Exp(value)
  %2657 = call float @dx.op.unary.f32(i32 21, float %2653)  ; Exp(value)
  %2658 = call float @dx.op.unary.f32(i32 21, float %2655)  ; Exp(value)
  %2659 = call float @dx.op.unary.f32(i32 7, float %2656)  ; Saturate(value)
  %2660 = call float @dx.op.unary.f32(i32 7, float %2657)  ; Saturate(value)
  %2661 = call float @dx.op.unary.f32(i32 7, float %2658)  ; Saturate(value)
  %2662 = fadd fast float %2659, -1.000000e+00
  %2663 = select i1 %2647, float %2662, float -1.000000e+00
  %2664 = fadd fast float %2660, -1.000000e+00
  %2665 = select i1 %2648, float %2664, float -1.000000e+00
  %2666 = fadd fast float %2661, -1.000000e+00
  %2667 = select i1 %2649, float %2666, float -1.000000e+00
  %2668 = fmul fast float %2663, %2197
  %2669 = fmul fast float %2665, %2197
  %2670 = fmul fast float %2667, %2197
  %2671 = fadd fast float %2668, 1.000000e+00
  %2672 = fadd fast float %2669, 1.000000e+00
  %2673 = fadd fast float %2670, 1.000000e+00
  %2674 = fmul fast float %2671, %2001
  %2675 = fmul fast float %2672, %2002
  %2676 = fmul fast float %2673, %2003
  %2677 = fmul fast float %2671, %2004
  %2678 = fmul fast float %2672, %2005
  %2679 = fmul fast float %2673, %2006
  br label %2680

; <label>:2680                                    ; preds = %2645, %2630
  %2681 = phi float [ %2674, %2645 ], [ %2001, %2630 ]
  %2682 = phi float [ %2675, %2645 ], [ %2002, %2630 ]
  %2683 = phi float [ %2676, %2645 ], [ %2003, %2630 ]
  %2684 = phi float [ %2677, %2645 ], [ %2004, %2630 ]
  %2685 = phi float [ %2678, %2645 ], [ %2005, %2630 ]
  %2686 = phi float [ %2679, %2645 ], [ %2006, %2630 ]
  %2687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2688 = extractvalue %dx.types.ResRet.i32 %2687, 0
  %2689 = and i32 %2688, 3
  %2690 = icmp eq i32 %2689, 3
  br i1 %2690, label %2769, label %2691

; <label>:2691                                    ; preds = %2680
  %2692 = and i32 %2688, 16
  %2693 = icmp ne i32 %2692, 0
  %2694 = select i1 %2693, float %2197, float 0.000000e+00
  %2695 = icmp eq i32 %2689, 0
  br i1 %2695, label %2696, label %2724

; <label>:2696                                    ; preds = %2691
  %2697 = and i32 %2688, 64
  %2698 = icmp ne i32 %2697, 0
  %2699 = select i1 %2698, float %2197, float 0.000000e+00
  %2700 = fsub fast float %2417, %2681
  %2701 = fsub fast float %2418, %2682
  %2702 = fsub fast float %2419, %2683
  %2703 = fmul fast float %2694, %2700
  %2704 = fmul fast float %2694, %2701
  %2705 = fmul fast float %2694, %2702
  %2706 = fadd fast float %2703, %2681
  %2707 = fadd fast float %2704, %2682
  %2708 = fadd fast float %2705, %2683
  %2709 = fsub fast float %2403, %2010
  %2710 = fmul fast float %2694, %2709
  %2711 = fadd fast float %2710, %2010
  %2712 = fsub fast float %2545, %2684
  %2713 = fsub fast float %2546, %2685
  %2714 = fsub fast float %2547, %2686
  %2715 = fmul fast float %2699, %2712
  %2716 = fmul fast float %2699, %2713
  %2717 = fmul fast float %2699, %2714
  %2718 = fadd fast float %2715, %2684
  %2719 = fadd fast float %2716, %2685
  %2720 = fadd fast float %2717, %2686
  %2721 = fsub fast float %2644, %2014
  %2722 = fmul fast float %2694, %2721
  %2723 = fadd fast float %2722, %2014
  br label %2769

; <label>:2724                                    ; preds = %2691
  %2725 = icmp eq i32 %2689, 1
  br i1 %2725, label %2726, label %2739

; <label>:2726                                    ; preds = %2724
  %2727 = fadd fast float %2417, -1.000000e+00
  %2728 = fadd fast float %2418, -1.000000e+00
  %2729 = fadd fast float %2419, -1.000000e+00
  %2730 = fmul fast float %2694, %2727
  %2731 = fmul fast float %2694, %2728
  %2732 = fmul fast float %2694, %2729
  %2733 = fadd fast float %2730, 1.000000e+00
  %2734 = fadd fast float %2731, 1.000000e+00
  %2735 = fadd fast float %2732, 1.000000e+00
  %2736 = fmul fast float %2733, %2681
  %2737 = fmul fast float %2734, %2682
  %2738 = fmul fast float %2735, %2683
  br label %2769

; <label>:2739                                    ; preds = %2724
  %2740 = icmp eq i32 %2689, 2
  br i1 %2740, label %2741, label %2769

; <label>:2741                                    ; preds = %2739
  %2742 = call float @dx.op.unary.f32(i32 24, float %2417)  ; Sqrt(value)
  %2743 = call float @dx.op.unary.f32(i32 24, float %2418)  ; Sqrt(value)
  %2744 = call float @dx.op.unary.f32(i32 24, float %2419)  ; Sqrt(value)
  %2745 = fadd fast float %2742, -5.000000e-01
  %2746 = fadd fast float %2743, -5.000000e-01
  %2747 = fadd fast float %2744, -5.000000e-01
  %2748 = fmul fast float %2745, %2694
  %2749 = fmul fast float %2746, %2694
  %2750 = fmul fast float %2747, %2694
  %2751 = fadd fast float %2748, 5.000000e-01
  %2752 = fadd fast float %2749, 5.000000e-01
  %2753 = fadd fast float %2750, 5.000000e-01
  %2754 = fmul fast float %2751, 2.000000e+00
  %2755 = fsub fast float 1.000000e+00, %2754
  %2756 = fmul fast float %2755, %2681
  %2757 = fadd fast float %2756, %2754
  %2758 = fmul fast float %2757, %2681
  %2759 = fmul fast float %2752, 2.000000e+00
  %2760 = fsub fast float 1.000000e+00, %2759
  %2761 = fmul fast float %2760, %2682
  %2762 = fadd fast float %2761, %2759
  %2763 = fmul fast float %2762, %2682
  %2764 = fmul fast float %2753, 2.000000e+00
  %2765 = fsub fast float 1.000000e+00, %2764
  %2766 = fmul fast float %2765, %2683
  %2767 = fadd fast float %2766, %2764
  %2768 = fmul fast float %2767, %2683
  br label %2769

; <label>:2769                                    ; preds = %2741, %2739, %2726, %2696, %2680
  %2770 = phi float [ %2681, %2680 ], [ %2758, %2741 ], [ %2681, %2739 ], [ %2736, %2726 ], [ %2706, %2696 ]
  %2771 = phi float [ %2682, %2680 ], [ %2763, %2741 ], [ %2682, %2739 ], [ %2737, %2726 ], [ %2707, %2696 ]
  %2772 = phi float [ %2683, %2680 ], [ %2768, %2741 ], [ %2683, %2739 ], [ %2738, %2726 ], [ %2708, %2696 ]
  %2773 = phi float [ %2684, %2680 ], [ %2684, %2741 ], [ %2684, %2739 ], [ %2684, %2726 ], [ %2718, %2696 ]
  %2774 = phi float [ %2685, %2680 ], [ %2685, %2741 ], [ %2685, %2739 ], [ %2685, %2726 ], [ %2719, %2696 ]
  %2775 = phi float [ %2686, %2680 ], [ %2686, %2741 ], [ %2686, %2739 ], [ %2686, %2726 ], [ %2720, %2696 ]
  %2776 = phi float [ %2010, %2680 ], [ %2010, %2741 ], [ %2010, %2739 ], [ %2010, %2726 ], [ %2711, %2696 ]
  %2777 = phi float [ %2014, %2680 ], [ %2014, %2741 ], [ %2014, %2739 ], [ %2014, %2726 ], [ %2723, %2696 ]
  %2778 = and i32 %2688, 12
  %2779 = icmp eq i32 %2778, 12
  br i1 %2779, label %2886, label %2780

; <label>:2780                                    ; preds = %2769
  %2781 = and i32 %2688, 2097184
  %2782 = icmp eq i32 %2781, 2097184
  %2783 = select i1 %2782, float %2197, float 0.000000e+00
  %2784 = and i32 %2688, 4194336
  %2785 = icmp eq i32 %2784, 4194336
  %2786 = select i1 %2785, float %2197, float 0.000000e+00
  %2787 = and i32 %2688, 8388640
  %2788 = icmp eq i32 %2787, 8388640
  %2789 = select i1 %2788, float %2197, float 0.000000e+00
  %2790 = and i32 %2688, 1024
  %2791 = icmp ne i32 %2790, 0
  %2792 = select i1 %2791, float %2197, float 0.000000e+00
  %2793 = and i32 %2688, 2048
  %2794 = icmp ne i32 %2793, 0
  %2795 = select i1 %2794, float %2197, float 0.000000e+00
  %2796 = icmp eq i32 %2778, 0
  br i1 %2796, label %2797, label %2822

; <label>:2797                                    ; preds = %2780
  %2798 = fsub fast float %2498, %1999
  %2799 = fsub fast float %2499, %2000
  %2800 = fmul fast float %2783, %2798
  %2801 = fmul fast float %2783, %2799
  %2802 = fadd fast float %2800, %1999
  %2803 = fadd fast float %2801, %2000
  %2804 = fsub fast float %2500, %2012
  %2805 = fmul fast float %2786, %2804
  %2806 = fadd fast float %2805, %2012
  %2807 = fsub fast float %2497, %2011
  %2808 = fmul fast float %2789, %2807
  %2809 = fadd fast float %2808, %2011
  %2810 = fsub fast float %2603, %2007
  %2811 = fsub fast float %2604, %2008
  %2812 = fsub fast float %2605, %2009
  %2813 = fmul fast float %2792, %2810
  %2814 = fmul fast float %2792, %2811
  %2815 = fmul fast float %2792, %2812
  %2816 = fadd fast float %2813, %2007
  %2817 = fadd fast float %2814, %2008
  %2818 = fadd fast float %2815, %2009
  %2819 = fsub fast float %2631, %2013
  %2820 = fmul fast float %2795, %2819
  %2821 = fadd fast float %2820, %2013
  br label %2886

; <label>:2822                                    ; preds = %2780
  %2823 = icmp eq i32 %2778, 4
  br i1 %2823, label %2824, label %2864

; <label>:2824                                    ; preds = %2822
  %2825 = fmul fast float %2783, %2498
  %2826 = fmul fast float %2783, %2499
  %2827 = fadd fast float %2825, %1999
  %2828 = fadd fast float %2826, %2000
  %2829 = call float @dx.op.binary.f32(i32 36, float %2012, float %2500)  ; FMin(a,b)
  %2830 = fsub fast float %2829, %2012
  %2831 = fmul fast float %2830, %2786
  %2832 = fadd fast float %2831, %2012
  %2833 = fadd fast float %2497, %2011
  %2834 = fmul fast float %2833, 0x3FF337FAE0000000
  %2835 = fmul fast float %2011, %2011
  %2836 = fmul fast float %2497, %2497
  %2837 = fadd fast float %2836, %2835
  %2838 = fmul fast float %2837, 0x3FE5152B00000000
  %2839 = fmul fast float %2011, 0xBFCC1F85E0000000
  %2840 = fmul fast float %2839, %2497
  %2841 = fadd fast float %2840, 0xBFE1363700000000
  %2842 = fadd fast float %2841, %2834
  %2843 = fsub fast float %2842, %2838
  %2844 = fmul fast float %2833, 0x3FBA6F0D00000000
  %2845 = fmul fast float %2837, 0x3FD0432880000000
  %2846 = fmul fast float %2011, 0xBFEF110800000000
  %2847 = fmul fast float %2846, %2497
  %2848 = fadd fast float %2847, 1.000000e+00
  %2849 = fsub fast float %2848, %2844
  %2850 = fadd fast float %2849, %2845
  %2851 = fdiv fast float %2843, %2850
  %2852 = call float @dx.op.unary.f32(i32 7, float %2851)  ; Saturate(value)
  %2853 = fsub fast float %2852, %2011
  %2854 = fmul fast float %2853, %2789
  %2855 = fadd fast float %2854, %2011
  %2856 = fmul fast float %2792, %2603
  %2857 = fmul fast float %2792, %2604
  %2858 = fmul fast float %2792, %2605
  %2859 = fadd fast float %2856, %2007
  %2860 = fadd fast float %2857, %2008
  %2861 = fadd fast float %2858, %2009
  %2862 = fmul fast float %2795, %2631
  %2863 = fadd fast float %2862, %2013
  br label %2886

; <label>:2864                                    ; preds = %2822
  %2865 = icmp eq i32 %2778, 8
  br i1 %2865, label %2866, label %2886

; <label>:2866                                    ; preds = %2864
  %2867 = fmul fast float %2783, %2498
  %2868 = fmul fast float %2783, %2499
  %2869 = fadd fast float %2867, %1999
  %2870 = fadd fast float %2868, %2000
  %2871 = call float @dx.op.binary.f32(i32 36, float %2012, float %2500)  ; FMin(a,b)
  %2872 = fsub fast float %2871, %2012
  %2873 = fmul fast float %2872, %2786
  %2874 = fadd fast float %2873, %2012
  %2875 = fsub fast float %2497, %2011
  %2876 = fmul fast float %2789, %2875
  %2877 = fadd fast float %2876, %2011
  %2878 = fmul fast float %2792, %2603
  %2879 = fmul fast float %2792, %2604
  %2880 = fmul fast float %2792, %2605
  %2881 = fadd fast float %2878, %2007
  %2882 = fadd fast float %2879, %2008
  %2883 = fadd fast float %2880, %2009
  %2884 = fmul fast float %2795, %2631
  %2885 = fadd fast float %2884, %2013
  br label %2886

; <label>:2886                                    ; preds = %2866, %2864, %2824, %2797, %2769, %2196, %2015, %1998
  %2887 = phi float [ %1999, %2769 ], [ %1999, %2196 ], [ %1999, %1998 ], [ %2869, %2866 ], [ %1999, %2864 ], [ %2827, %2824 ], [ %2802, %2797 ], [ %1999, %2015 ]
  %2888 = phi float [ %2000, %2769 ], [ %2000, %2196 ], [ %2000, %1998 ], [ %2870, %2866 ], [ %2000, %2864 ], [ %2828, %2824 ], [ %2803, %2797 ], [ %2000, %2015 ]
  %2889 = phi float [ %2770, %2769 ], [ %2001, %2196 ], [ %2001, %1998 ], [ %2770, %2866 ], [ %2770, %2864 ], [ %2770, %2824 ], [ %2770, %2797 ], [ %2001, %2015 ]
  %2890 = phi float [ %2771, %2769 ], [ %2002, %2196 ], [ %2002, %1998 ], [ %2771, %2866 ], [ %2771, %2864 ], [ %2771, %2824 ], [ %2771, %2797 ], [ %2002, %2015 ]
  %2891 = phi float [ %2772, %2769 ], [ %2003, %2196 ], [ %2003, %1998 ], [ %2772, %2866 ], [ %2772, %2864 ], [ %2772, %2824 ], [ %2772, %2797 ], [ %2003, %2015 ]
  %2892 = phi float [ %2773, %2769 ], [ %2004, %2196 ], [ %2004, %1998 ], [ %2773, %2866 ], [ %2773, %2864 ], [ %2773, %2824 ], [ %2773, %2797 ], [ %2004, %2015 ]
  %2893 = phi float [ %2774, %2769 ], [ %2005, %2196 ], [ %2005, %1998 ], [ %2774, %2866 ], [ %2774, %2864 ], [ %2774, %2824 ], [ %2774, %2797 ], [ %2005, %2015 ]
  %2894 = phi float [ %2775, %2769 ], [ %2006, %2196 ], [ %2006, %1998 ], [ %2775, %2866 ], [ %2775, %2864 ], [ %2775, %2824 ], [ %2775, %2797 ], [ %2006, %2015 ]
  %2895 = phi float [ %2007, %2769 ], [ %2007, %2196 ], [ %2007, %1998 ], [ %2881, %2866 ], [ %2007, %2864 ], [ %2859, %2824 ], [ %2816, %2797 ], [ %2007, %2015 ]
  %2896 = phi float [ %2008, %2769 ], [ %2008, %2196 ], [ %2008, %1998 ], [ %2882, %2866 ], [ %2008, %2864 ], [ %2860, %2824 ], [ %2817, %2797 ], [ %2008, %2015 ]
  %2897 = phi float [ %2009, %2769 ], [ %2009, %2196 ], [ %2009, %1998 ], [ %2883, %2866 ], [ %2009, %2864 ], [ %2861, %2824 ], [ %2818, %2797 ], [ %2009, %2015 ]
  %2898 = phi float [ %2776, %2769 ], [ %2010, %2196 ], [ %2010, %1998 ], [ %2776, %2866 ], [ %2776, %2864 ], [ %2776, %2824 ], [ %2776, %2797 ], [ %2010, %2015 ]
  %2899 = phi float [ %2011, %2769 ], [ %2011, %2196 ], [ %2011, %1998 ], [ %2877, %2866 ], [ %2011, %2864 ], [ %2855, %2824 ], [ %2809, %2797 ], [ %2011, %2015 ]
  %2900 = phi float [ %2012, %2769 ], [ %2012, %2196 ], [ %2012, %1998 ], [ %2874, %2866 ], [ %2012, %2864 ], [ %2832, %2824 ], [ %2806, %2797 ], [ %2012, %2015 ]
  %2901 = phi float [ %2013, %2769 ], [ %2013, %2196 ], [ %2013, %1998 ], [ %2885, %2866 ], [ %2013, %2864 ], [ %2863, %2824 ], [ %2821, %2797 ], [ %2013, %2015 ]
  %2902 = phi float [ %2777, %2769 ], [ %2014, %2196 ], [ %2014, %1998 ], [ %2777, %2866 ], [ %2777, %2864 ], [ %2777, %2824 ], [ %2777, %2797 ], [ %2014, %2015 ]
  br i1 %428, label %3774, label %2903

; <label>:2903                                    ; preds = %2886
  %2904 = icmp ult i32 %482, 4
  %2905 = add i32 %42, 72
  %2906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.i32 %2906, 0
  %2908 = add i32 %42, 76
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = or i32 %2910, %2907
  %2912 = icmp eq i32 %2911, 0
  br i1 %2912, label %3774, label %2913

; <label>:2913                                    ; preds = %2903
  %2914 = and i32 %2907, 262144
  %2915 = icmp ne i32 %2914, 0
  %2916 = select i1 %2915, float %47, float 1.000000e+00
  %2917 = select i1 %2915, float %48, float 0.000000e+00
  %2918 = select i1 %2915, float %49, float 0.000000e+00
  %2919 = select i1 %2915, float %50, float 1.000000e+00
  %2920 = select i1 %2915, float %51, float %74
  %2921 = select i1 %2915, float %52, float %75
  %2922 = add i32 %42, 332
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = lshr i32 %2924, 16
  %2926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2925)  ; LegacyF16ToF32(value)
  %2927 = fmul fast float %2926, 0x3F50624DE0000000
  %2928 = add i32 %42, 136
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2928, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = lshr i32 %2930, 16
  %2932 = and i32 %2931, 255
  %2933 = lshr i32 %2930, 24
  %2934 = add i32 %42, 340
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = and i32 %2936, 65535
  %2938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2937)  ; LegacyF16ToF32(value)
  %2939 = lshr i32 %2936, 16
  %2940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2939)  ; LegacyF16ToF32(value)
  %2941 = add i32 %42, 80
  %2942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2941, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.i32 %2942, 0
  %2944 = lshr i32 %2943, 22
  %2945 = shl nuw nsw i32 %2944, 5
  %2946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2945)  ; LegacyF16ToF32(value)
  %2947 = shl i32 %2943, 4
  %2948 = and i32 %2947, 32752
  %2949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2948)  ; LegacyF16ToF32(value)
  %2950 = lshr i32 %2943, 7
  %2951 = and i32 %2950, 32752
  %2952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2951)  ; LegacyF16ToF32(value)
  %2953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2954 = extractvalue %dx.types.CBufRet.f32 %2953, 3
  %2955 = fmul fast float %2954, 1.000000e+03
  %2956 = fmul fast float %418, %2955
  %2957 = call float @dx.op.unary.f32(i32 22, float %2956)  ; Frc(value)
  %2958 = fadd fast float %2957, %408
  %2959 = fmul fast float %419, %2955
  %2960 = call float @dx.op.unary.f32(i32 22, float %2959)  ; Frc(value)
  %2961 = fadd fast float %2960, %410
  %2962 = fmul fast float %2927, %2955
  %2963 = call float @dx.op.unary.f32(i32 22, float %2962)  ; Frc(value)
  %2964 = fmul fast float %2963, 0x401921FB60000000
  %2965 = fadd fast float %2964, %2946
  %2966 = call float @dx.op.unary.f32(i32 13, float %2965)  ; Sin(value)
  %2967 = call float @dx.op.unary.f32(i32 12, float %2965)  ; Cos(value)
  %2968 = fsub fast float -0.000000e+00, %2966
  %2969 = fadd fast float %2920, -5.000000e-01
  %2970 = fadd fast float %2921, -5.000000e-01
  %2971 = fmul fast float %2938, %2969
  %2972 = fmul fast float %2940, %2970
  %2973 = fadd fast float %2971, 5.000000e-01
  %2974 = fadd fast float %2972, 5.000000e-01
  %2975 = fmul fast float %2949, %2973
  %2976 = fmul fast float %2952, %2974
  %2977 = fmul fast float %2967, %2975
  %2978 = call float @dx.op.tertiary.f32(i32 46, float %2968, float %2976, float %2977)  ; FMad(a,b,c)
  %2979 = fmul fast float %2966, %2975
  %2980 = call float @dx.op.tertiary.f32(i32 46, float %2967, float %2976, float %2979)  ; FMad(a,b,c)
  %2981 = fadd fast float %2958, %2978
  %2982 = fadd fast float %2961, %2980
  %2983 = icmp ugt i32 %2932, 1
  %2984 = icmp ugt i32 %2930, 33554431
  %2985 = or i1 %2984, %2983
  br i1 %2985, label %2986, label %3011

; <label>:2986                                    ; preds = %2913
  %2987 = add i32 %42, 276
  %2988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2989 = extractvalue %dx.types.ResRet.i32 %2988, 0
  %2990 = lshr i32 %2989, 16
  %2991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2990)  ; LegacyF16ToF32(value)
  %2992 = fmul fast float %2954, %2991
  %2993 = call float @dx.op.unary.f32(i32 22, float %2992)  ; Frc(value)
  %2994 = mul nuw nsw i32 %2932, %2933
  %2995 = uitofp i32 %2994 to float
  %2996 = fmul fast float %2993, %2995
  %2997 = call float @dx.op.unary.f32(i32 27, float %2996)  ; Round_ni(value)
  %2998 = fptoui float %2997 to i32
  %2999 = urem i32 %2998, %2932
  %3000 = udiv i32 %2998, %2933
  %3001 = call float @dx.op.unary.f32(i32 22, float %2981)  ; Frc(value)
  %3002 = call float @dx.op.unary.f32(i32 22, float %2982)  ; Frc(value)
  %3003 = uitofp i32 %2999 to float
  %3004 = uitofp i32 %3000 to float
  %3005 = fadd fast float %3001, %3003
  %3006 = fadd fast float %3002, %3004
  %3007 = uitofp i32 %2932 to float
  %3008 = uitofp i32 %2933 to float
  %3009 = fdiv fast float %3005, %3007
  %3010 = fdiv fast float %3006, %3008
  br label %3011

; <label>:3011                                    ; preds = %2986, %2913
  %3012 = phi float [ %3009, %2986 ], [ %2981, %2913 ]
  %3013 = phi float [ %3010, %2986 ], [ %2982, %2913 ]
  %3014 = and i32 %2907, 256
  %3015 = icmp eq i32 %3014, 0
  br i1 %3015, label %3062, label %3016

; <label>:3016                                    ; preds = %3011
  %3017 = add i32 %42, 436
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = add i32 %3019, 0
  %3021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3022 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3021, %dx.types.Handle %89, float %3012, float %3013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3023 = extractvalue %dx.types.ResRet.f32 %3022, 0
  %3024 = add i32 %42, 148
  %3025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3024, i32 undef)  ; BufferLoad(srv,index,wot)
  %3026 = extractvalue %dx.types.ResRet.i32 %3025, 0
  %3027 = shl i32 %3026, 4
  %3028 = and i32 %3027, 32752
  %3029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3028)  ; LegacyF16ToF32(value)
  %3030 = lshr i32 %3026, 7
  %3031 = and i32 %3030, 32752
  %3032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3031)  ; LegacyF16ToF32(value)
  %3033 = fsub fast float 1.000000e+00, %477
  %3034 = call float @dx.op.binary.f32(i32 35, float %3033, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3035 = bitcast float %477 to i32
  %3036 = sitofp i32 %3035 to float
  %3037 = fadd fast float %3036, 0xC1CFBF8940000000
  %3038 = fmul fast float %3032, %3037
  %3039 = fadd fast float %3038, 0x41CFBF8940000000
  %3040 = fptosi float %3039 to i32
  %3041 = bitcast i32 %3040 to float
  %3042 = bitcast float %3034 to i32
  %3043 = sitofp i32 %3042 to float
  %3044 = fadd fast float %3043, 0xC1CFBF8940000000
  %3045 = fmul fast float %3044, %3032
  %3046 = fadd fast float %3045, 0x41CFBF8940000000
  %3047 = fptosi float %3046 to i32
  %3048 = bitcast i32 %3047 to float
  %3049 = fmul fast float %3041, %3029
  %3050 = fmul fast float %3048, %3029
  %3051 = fsub fast float %3034, %3049
  %3052 = fadd fast float %3050, %3034
  %3053 = call float @dx.op.unary.f32(i32 7, float %3051)  ; Saturate(value)
  %3054 = call float @dx.op.unary.f32(i32 7, float %3052)  ; Saturate(value)
  %3055 = fsub fast float %3023, %3053
  %3056 = fsub fast float %3054, %3053
  %3057 = bitcast float %3056 to i32
  %3058 = sub nsw i32 2129859010, %3057
  %3059 = bitcast i32 %3058 to float
  %3060 = fmul fast float %3059, %3055
  %3061 = call float @dx.op.unary.f32(i32 7, float %3060)  ; Saturate(value)
  br label %3062

; <label>:3062                                    ; preds = %3016, %3011
  %3063 = phi float [ %3061, %3016 ], [ %477, %3011 ]
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = and i32 %3065, 128
  %3067 = icmp eq i32 %3066, 0
  br i1 %3067, label %3084, label %3068

; <label>:3068                                    ; preds = %3062
  %3069 = add i32 %42, 420
  %3070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3069, i32 undef)  ; BufferLoad(srv,index,wot)
  %3071 = extractvalue %dx.types.ResRet.i32 %3070, 0
  %3072 = add i32 %3071, 0
  %3073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3072, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3074 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3073, %dx.types.Handle %89, float %3012, float %3013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3075 = extractvalue %dx.types.ResRet.f32 %3074, 0
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = and i32 %3077, 524288
  %3079 = icmp ne i32 %3078, 0
  %3080 = fcmp fast ogt float %3075, 0x3FE0101020000000
  %3081 = select i1 %3080, float 1.000000e+00, float 0.000000e+00
  %3082 = select i1 %3079, float %3081, float %3075
  %3083 = fmul fast float %3082, %3063
  br label %3084

; <label>:3084                                    ; preds = %3068, %3062
  %3085 = phi float [ %3083, %3068 ], [ %3063, %3062 ]
  %3086 = fcmp fast ult float %3085, 0x3F70101020000000
  br i1 %3086, label %3774, label %3087

; <label>:3087                                    ; preds = %3084
  %3088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3089 = extractvalue %dx.types.ResRet.i32 %3088, 0
  %3090 = and i32 %3089, 16
  %3091 = icmp eq i32 %3090, 0
  br i1 %3091, label %3290, label %3092

; <label>:3092                                    ; preds = %3087
  %3093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2928, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.i32 %3093, 0
  %3095 = add i32 %42, 372
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = add i32 %3097, 0
  %3099 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3098, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3100 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3099, %dx.types.Handle %88, float %3012, float %3013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3101 = extractvalue %dx.types.ResRet.f32 %3100, 0
  %3102 = extractvalue %dx.types.ResRet.f32 %3100, 1
  %3103 = extractvalue %dx.types.ResRet.f32 %3100, 2
  %3104 = extractvalue %dx.types.ResRet.f32 %3100, 3
  %3105 = and i32 %3094, 255
  %3106 = uitofp i32 %3105 to float
  %3107 = lshr i32 %3094, 8
  %3108 = and i32 %3107, 255
  %3109 = uitofp i32 %3108 to float
  %3110 = fmul fast float %3104, %3106
  %3111 = fadd fast float %3110, %3109
  %3112 = fmul fast float %3111, 0x3F70101000000000
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = and i32 %3114, 512
  %3116 = icmp eq i32 %3115, 0
  br i1 %3116, label %3125, label %3117

; <label>:3117                                    ; preds = %3092
  %3118 = add i32 %42, 452
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = add i32 %3120, 0
  %3122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3121, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3123 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3122, %dx.types.Handle %89, float %3012, float %3013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3124 = extractvalue %dx.types.ResRet.f32 %3123, 0
  br label %3125

; <label>:3125                                    ; preds = %3117, %3092
  %3126 = phi float [ %3124, %3117 ], [ 1.000000e+00, %3092 ]
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = and i32 %3128, 33554432
  %3130 = icmp eq i32 %3129, 0
  br i1 %3130, label %3237, label %3131

; <label>:3131                                    ; preds = %3125
  %3132 = add i32 %42, 272
  %3133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3134 = extractvalue %dx.types.ResRet.i32 %3133, 0
  %3135 = and i32 %3134, 65535
  %3136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3135)  ; LegacyF16ToF32(value)
  %3137 = lshr i32 %3134, 16
  %3138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3137)  ; LegacyF16ToF32(value)
  %3139 = add i32 %42, 276
  %3140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3139, i32 undef)  ; BufferLoad(srv,index,wot)
  %3141 = extractvalue %dx.types.ResRet.i32 %3140, 0
  %3142 = and i32 %3141, 65535
  %3143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3142)  ; LegacyF16ToF32(value)
  %3144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.i32 %3144, 0
  %3146 = lshr i32 %3145, 24
  %3147 = uitofp i32 %3146 to float
  %3148 = fmul fast float %3147, 0x3F70101020000000
  %3149 = and i32 %3145, 255
  %3150 = uitofp i32 %3149 to float
  %3151 = fmul fast float %3150, 0x3F70101020000000
  %3152 = lshr i32 %3145, 8
  %3153 = and i32 %3152, 255
  %3154 = uitofp i32 %3153 to float
  %3155 = fmul fast float %3154, 0x3F70101020000000
  %3156 = lshr i32 %3145, 16
  %3157 = and i32 %3156, 255
  %3158 = uitofp i32 %3157 to float
  %3159 = fmul fast float %3158, 0x3F70101020000000
  %3160 = add i32 %42, 268
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = lshr i32 %3162, 24
  %3164 = uitofp i32 %3163 to float
  %3165 = fmul fast float %3164, 0x3F70101020000000
  %3166 = and i32 %3162, 255
  %3167 = uitofp i32 %3166 to float
  %3168 = fmul fast float %3167, 0x3F70101020000000
  %3169 = lshr i32 %3162, 8
  %3170 = and i32 %3169, 255
  %3171 = uitofp i32 %3170 to float
  %3172 = fmul fast float %3171, 0x3F70101020000000
  %3173 = lshr i32 %3162, 16
  %3174 = and i32 %3173, 255
  %3175 = uitofp i32 %3174 to float
  %3176 = fmul fast float %3175, 0x3F70101020000000
  %3177 = bitcast float %3101 to i32
  %3178 = ashr i32 %3177, 1
  %3179 = sub nsw i32 1597463174, %3178
  %3180 = bitcast i32 %3179 to float
  %3181 = fmul fast float %3101, 5.000000e-01
  %3182 = fmul fast float %3180, %3180
  %3183 = fmul fast float %3182, %3181
  %3184 = fsub fast float 1.500000e+00, %3183
  %3185 = fmul fast float %3180, %3101
  %3186 = fmul fast float %3185, %3184
  %3187 = bitcast float %3102 to i32
  %3188 = ashr i32 %3187, 1
  %3189 = sub nsw i32 1597463174, %3188
  %3190 = bitcast i32 %3189 to float
  %3191 = fmul fast float %3102, 5.000000e-01
  %3192 = fmul fast float %3190, %3190
  %3193 = fmul fast float %3192, %3191
  %3194 = fsub fast float 1.500000e+00, %3193
  %3195 = fmul fast float %3190, %3102
  %3196 = fmul fast float %3195, %3194
  %3197 = bitcast float %3103 to i32
  %3198 = ashr i32 %3197, 1
  %3199 = sub nsw i32 1597463174, %3198
  %3200 = bitcast i32 %3199 to float
  %3201 = fmul fast float %3103, 5.000000e-01
  %3202 = fmul fast float %3200, %3200
  %3203 = fmul fast float %3202, %3201
  %3204 = fsub fast float 1.500000e+00, %3203
  %3205 = fmul fast float %3200, %3103
  %3206 = fmul fast float %3205, %3204
  %3207 = fsub fast float %3186, %3168
  %3208 = fsub fast float %3196, %3172
  %3209 = fsub fast float %3206, %3176
  %3210 = fmul fast float %3207, %3136
  %3211 = fmul fast float %3208, %3138
  %3212 = fmul fast float %3209, %3143
  %3213 = fadd fast float %3210, %3151
  %3214 = fadd fast float %3211, %3155
  %3215 = fadd fast float %3212, %3159
  %3216 = call float @dx.op.unary.f32(i32 7, float %3213)  ; Saturate(value)
  %3217 = call float @dx.op.unary.f32(i32 7, float %3214)  ; Saturate(value)
  %3218 = call float @dx.op.unary.f32(i32 7, float %3215)  ; Saturate(value)
  %3219 = fmul fast float %3216, %3216
  %3220 = fmul fast float %3217, %3217
  %3221 = fmul fast float %3218, %3218
  %3222 = fsub fast float %3219, %3101
  %3223 = fsub fast float %3220, %3102
  %3224 = fsub fast float %3221, %3103
  %3225 = fmul fast float %3222, %3126
  %3226 = fmul fast float %3223, %3126
  %3227 = fmul fast float %3224, %3126
  %3228 = fadd fast float %3225, %3101
  %3229 = fadd fast float %3226, %3102
  %3230 = fadd fast float %3227, %3103
  %3231 = fadd fast float %3148, %3112
  %3232 = fsub fast float %3231, %3165
  %3233 = call float @dx.op.unary.f32(i32 7, float %3232)  ; Saturate(value)
  %3234 = fsub fast float %3233, %3112
  %3235 = fmul fast float %3234, %3126
  %3236 = fadd fast float %3235, %3112
  br label %3290

; <label>:3237                                    ; preds = %3125
  %3238 = and i32 %3128, 134217728
  %3239 = icmp eq i32 %3238, 0
  br i1 %3239, label %3274, label %3240

; <label>:3240                                    ; preds = %3237
  %3241 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %3242 = call float @dx.op.unary.f32(i32 24, float %399)  ; Sqrt(value)
  %3243 = call float @dx.op.unary.f32(i32 24, float %403)  ; Sqrt(value)
  %3244 = fadd fast float %3241, -5.000000e-01
  %3245 = fadd fast float %3242, -5.000000e-01
  %3246 = fadd fast float %3243, -5.000000e-01
  %3247 = fmul fast float %3244, %3126
  %3248 = fmul fast float %3245, %3126
  %3249 = fmul fast float %3246, %3126
  %3250 = fadd fast float %3247, 5.000000e-01
  %3251 = fadd fast float %3248, 5.000000e-01
  %3252 = fadd fast float %3249, 5.000000e-01
  %3253 = call float @dx.op.unary.f32(i32 24, float %3101)  ; Sqrt(value)
  %3254 = call float @dx.op.unary.f32(i32 24, float %3102)  ; Sqrt(value)
  %3255 = call float @dx.op.unary.f32(i32 24, float %3103)  ; Sqrt(value)
  %3256 = fmul fast float %3250, 2.000000e+00
  %3257 = fsub fast float 1.000000e+00, %3256
  %3258 = fmul fast float %3257, %3253
  %3259 = fadd fast float %3258, %3256
  %3260 = fmul fast float %3259, %3253
  %3261 = fmul fast float %3251, 2.000000e+00
  %3262 = fsub fast float 1.000000e+00, %3261
  %3263 = fmul fast float %3262, %3254
  %3264 = fadd fast float %3263, %3261
  %3265 = fmul fast float %3264, %3254
  %3266 = fmul fast float %3252, 2.000000e+00
  %3267 = fsub fast float 1.000000e+00, %3266
  %3268 = fmul fast float %3267, %3255
  %3269 = fadd fast float %3268, %3266
  %3270 = fmul fast float %3269, %3255
  %3271 = fmul fast float %3260, %3260
  %3272 = fmul fast float %3265, %3265
  %3273 = fmul fast float %3270, %3270
  br label %3290

; <label>:3274                                    ; preds = %3237
  %3275 = fmul fast float %395, %395
  %3276 = fmul fast float %399, %399
  %3277 = fmul fast float %403, %403
  %3278 = fadd fast float %3275, -1.000000e+00
  %3279 = fadd fast float %3276, -1.000000e+00
  %3280 = fadd fast float %3277, -1.000000e+00
  %3281 = fmul fast float %3126, %3278
  %3282 = fmul fast float %3126, %3279
  %3283 = fmul fast float %3126, %3280
  %3284 = fadd fast float %3281, 1.000000e+00
  %3285 = fadd fast float %3282, 1.000000e+00
  %3286 = fadd fast float %3283, 1.000000e+00
  %3287 = fmul fast float %3284, %3101
  %3288 = fmul fast float %3285, %3102
  %3289 = fmul fast float %3286, %3103
  br label %3290

; <label>:3290                                    ; preds = %3274, %3240, %3131, %3087
  %3291 = phi float [ %3236, %3131 ], [ %3112, %3240 ], [ %3112, %3274 ], [ 0x3FA23C0BE0000000, %3087 ]
  %3292 = phi float [ %3228, %3131 ], [ %3271, %3240 ], [ %3287, %3274 ], [ 1.000000e+00, %3087 ]
  %3293 = phi float [ %3229, %3131 ], [ %3272, %3240 ], [ %3288, %3274 ], [ 1.000000e+00, %3087 ]
  %3294 = phi float [ %3230, %3131 ], [ %3273, %3240 ], [ %3289, %3274 ], [ 1.000000e+00, %3087 ]
  %3295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3296 = extractvalue %dx.types.CBufRet.i32 %3295, 1
  %3297 = and i32 %3296, 1
  %3298 = icmp ne i32 %3297, 0
  %3299 = add i32 %42, 356
  %3300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3299, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.i32 %3300, 0
  %3302 = and i32 %3301, 32
  %3303 = icmp ne i32 %3302, 0
  %3304 = and i1 %3298, %3303
  %3305 = select i1 %3304, float 1.000000e+00, float %3292
  %3306 = select i1 %3304, float 0x3FD3333340000000, float %3293
  %3307 = select i1 %3304, float 0x3FD3333340000000, float %3294
  %3308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.i32 %3308, 0
  %3310 = and i32 %3309, 32
  %3311 = icmp eq i32 %3310, 0
  br i1 %3311, label %3384, label %3312

; <label>:3312                                    ; preds = %3290
  %3313 = add i32 %42, 140
  %3314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3313, i32 undef)  ; BufferLoad(srv,index,wot)
  %3315 = extractvalue %dx.types.ResRet.i32 %3314, 0
  %3316 = add i32 %42, 388
  %3317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3316, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.i32 %3317, 0
  %3319 = add i32 %3318, 0
  %3320 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3319, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3321 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3320, %dx.types.Handle %88, float %3012, float %3013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3322 = extractvalue %dx.types.ResRet.f32 %3321, 0
  %3323 = extractvalue %dx.types.ResRet.f32 %3321, 1
  %3324 = extractvalue %dx.types.ResRet.f32 %3321, 2
  %3325 = extractvalue %dx.types.ResRet.f32 %3321, 3
  %3326 = and i32 %3315, 255
  %3327 = uitofp i32 %3326 to float
  %3328 = lshr i32 %3315, 8
  %3329 = and i32 %3328, 255
  %3330 = uitofp i32 %3329 to float
  %3331 = lshr i32 %3315, 16
  %3332 = and i32 %3331, 255
  %3333 = uitofp i32 %3332 to float
  %3334 = fmul fast float %3333, 0x3F70101000000000
  %3335 = fmul fast float %3322, %3327
  %3336 = fadd fast float %3335, %3330
  %3337 = fmul fast float %3336, 0x3F70101000000000
  %3338 = fadd fast float %3323, -5.000000e-01
  %3339 = fadd fast float %3325, -5.000000e-01
  %3340 = fmul fast float %3338, %3334
  %3341 = fmul fast float %3339, %3334
  %3342 = fadd fast float %3340, 5.000000e-01
  %3343 = fadd fast float %3341, 5.000000e-01
  %3344 = fmul fast float %3342, 2.000000e+00
  %3345 = fadd fast float %3344, -1.000000e+00
  %3346 = fmul fast float %3343, 2.000000e+00
  %3347 = fadd fast float %3346, -1.000000e+00
  %3348 = fadd fast float %3345, %3347
  %3349 = fmul fast float %3348, 5.000000e-01
  %3350 = fsub fast float %3345, %3347
  %3351 = fmul fast float %3350, 5.000000e-01
  %3352 = call float @dx.op.unary.f32(i32 6, float %3349)  ; FAbs(value)
  %3353 = fsub fast float 1.000000e+00, %3352
  %3354 = call float @dx.op.unary.f32(i32 6, float %3351)  ; FAbs(value)
  %3355 = fsub fast float %3353, %3354
  %3356 = call float @dx.op.dot3.f32(i32 55, float %3349, float %3351, float %3355, float %3349, float %3351, float %3355)  ; Dot3(ax,ay,az,bx,by,bz)
  %3357 = call float @dx.op.unary.f32(i32 25, float %3356)  ; Rsqrt(value)
  %3358 = fmul fast float %3349, %3357
  %3359 = fmul fast float %3351, %3357
  %3360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3361 = extractvalue %dx.types.ResRet.i32 %3360, 0
  %3362 = and i32 %3361, 67108864
  %3363 = icmp eq i32 %3362, 0
  br i1 %3363, label %3380, label %3364

; <label>:3364                                    ; preds = %3312
  %3365 = add i32 %42, 328
  %3366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.i32 %3366, 0
  %3368 = and i32 %3367, 65535
  %3369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3368)  ; LegacyF16ToF32(value)
  %3370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.i32 %3370, 0
  %3372 = and i32 %3371, 65535
  %3373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3372)  ; LegacyF16ToF32(value)
  %3374 = lshr i32 %3367, 16
  %3375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3374)  ; LegacyF16ToF32(value)
  %3376 = fsub fast float %3337, %3375
  %3377 = fmul fast float %3376, %3369
  %3378 = fadd fast float %3377, %3373
  %3379 = call float @dx.op.unary.f32(i32 7, float %3378)  ; Saturate(value)
  br label %3380

; <label>:3380                                    ; preds = %3364, %3312
  %3381 = phi float [ %3379, %3364 ], [ %3337, %3312 ]
  %3382 = call float @dx.op.dot2.f32(i32 54, float %3358, float %3359, float %2916, float %2917)  ; Dot2(ax,ay,bx,by)
  %3383 = call float @dx.op.dot2.f32(i32 54, float %3358, float %3359, float %2918, float %2919)  ; Dot2(ax,ay,bx,by)
  br label %3384

; <label>:3384                                    ; preds = %3380, %3290
  %3385 = phi float [ %3381, %3380 ], [ 0x3FD6666660000000, %3290 ]
  %3386 = phi float [ %3382, %3380 ], [ 0.000000e+00, %3290 ]
  %3387 = phi float [ %3383, %3380 ], [ 0.000000e+00, %3290 ]
  %3388 = phi float [ %3324, %3380 ], [ 1.000000e+00, %3290 ]
  %3389 = add i32 %42, 208
  %3390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3391 = extractvalue %dx.types.ResRet.i32 %3390, 0
  %3392 = lshr i32 %3391, 22
  %3393 = shl nuw nsw i32 %3392, 5
  %3394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3393)  ; LegacyF16ToF32(value)
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 64
  %3398 = icmp eq i32 %3397, 0
  br i1 %3398, label %3432, label %3399

; <label>:3399                                    ; preds = %3384
  %3400 = add i32 %42, 404
  %3401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.i32 %3401, 0
  %3403 = add i32 %3402, 0
  %3404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3403, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = and i32 %3406, 131072
  %3408 = icmp eq i32 %3407, 0
  %3409 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3404, %dx.types.Handle %88, float %3012, float %3013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3410 = extractvalue %dx.types.ResRet.f32 %3409, 0
  %3411 = extractvalue %dx.types.ResRet.f32 %3409, 1
  %3412 = extractvalue %dx.types.ResRet.f32 %3409, 2
  %3413 = fmul fast float %3410, %383
  %3414 = fmul fast float %3411, %386
  %3415 = fmul fast float %3412, %389
  br i1 %3408, label %3422, label %3416

; <label>:3416                                    ; preds = %3399
  %3417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3418 = extractvalue %dx.types.CBufRet.f32 %3417, 0
  %3419 = fmul fast float %3418, %3413
  %3420 = fmul fast float %3418, %3414
  %3421 = fmul fast float %3418, %3415
  br label %3422

; <label>:3422                                    ; preds = %3416, %3399
  %3423 = phi float [ %3419, %3416 ], [ %3413, %3399 ]
  %3424 = phi float [ %3420, %3416 ], [ %3414, %3399 ]
  %3425 = phi float [ %3421, %3416 ], [ %3415, %3399 ]
  %3426 = fmul fast float %3423, %3394
  %3427 = select i1 %240, float %3426, float %3423
  %3428 = call float @dx.op.dot3.f32(i32 55, float %3427, float %3424, float %3425, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3429 = select i1 %240, float 0.000000e+00, float %3423
  %3430 = select i1 %240, float %3428, float %3424
  %3431 = select i1 %240, float 0.000000e+00, float %3425
  br label %3432

; <label>:3432                                    ; preds = %3422, %3384
  %3433 = phi float [ %3429, %3422 ], [ 0.000000e+00, %3384 ]
  %3434 = phi float [ %3430, %3422 ], [ 0.000000e+00, %3384 ]
  %3435 = phi float [ %3431, %3422 ], [ 0.000000e+00, %3384 ]
  %3436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.i32 %3436, 0
  %3438 = and i32 %3437, 1024
  %3439 = icmp eq i32 %3438, 0
  br i1 %3439, label %3470, label %3440

; <label>:3440                                    ; preds = %3432
  %3441 = add i32 %42, 200
  %3442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3441, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.i32 %3442, 0
  %3444 = and i32 %3443, 255
  %3445 = uitofp i32 %3444 to float
  %3446 = fmul fast float %3445, 0x3F70101020000000
  %3447 = lshr i32 %3443, 8
  %3448 = and i32 %3447, 255
  %3449 = uitofp i32 %3448 to float
  %3450 = fmul fast float %3449, 0x3F70101020000000
  %3451 = lshr i32 %3443, 16
  %3452 = and i32 %3451, 255
  %3453 = uitofp i32 %3452 to float
  %3454 = fmul fast float %3453, 0x3F70101020000000
  %3455 = fmul fast float %3446, %3446
  %3456 = fmul fast float %3450, %3450
  %3457 = fmul fast float %3454, %3454
  %3458 = add i32 %42, 468
  %3459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3458, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.i32 %3459, 0
  %3461 = add i32 %3460, 0
  %3462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3462, %dx.types.Handle %89, float %3012, float %3013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3464 = extractvalue %dx.types.ResRet.f32 %3463, 0
  %3465 = extractvalue %dx.types.ResRet.f32 %3463, 1
  %3466 = extractvalue %dx.types.ResRet.f32 %3463, 2
  %3467 = fmul fast float %3455, %3464
  %3468 = fmul fast float %3456, %3465
  %3469 = fmul fast float %3457, %3466
  br label %3470

; <label>:3470                                    ; preds = %3440, %3432
  %3471 = phi float [ %3467, %3440 ], [ 0.000000e+00, %3432 ]
  %3472 = phi float [ %3468, %3440 ], [ 0.000000e+00, %3432 ]
  %3473 = phi float [ %3469, %3440 ], [ 0.000000e+00, %3432 ]
  %3474 = fcmp fast ogt float %3471, 0.000000e+00
  %3475 = fcmp fast ogt float %3472, 0.000000e+00
  %3476 = fcmp fast ogt float %3473, 0.000000e+00
  %3477 = call float @dx.op.unary.f32(i32 23, float %3471)  ; Log(value)
  %3478 = call float @dx.op.unary.f32(i32 23, float %3472)  ; Log(value)
  %3479 = call float @dx.op.unary.f32(i32 23, float %3473)  ; Log(value)
  %3480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3481 = extractvalue %dx.types.ResRet.i32 %3480, 0
  %3482 = lshr i32 %3481, 7
  %3483 = and i32 %3482, 32752
  %3484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3483)  ; LegacyF16ToF32(value)
  %3485 = fmul fast float %3477, 0xBFE62E4300000000
  %3486 = fmul fast float %3485, %3484
  %3487 = fmul fast float %3478, 0xBFE62E4300000000
  %3488 = fmul fast float %3487, %3484
  %3489 = fmul fast float %3479, 0xBFE62E4300000000
  %3490 = fmul fast float %3489, %3484
  %3491 = select i1 %3474, float %3486, float 1.270000e+02
  %3492 = select i1 %3475, float %3488, float 1.270000e+02
  %3493 = select i1 %3476, float %3490, float 1.270000e+02
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = and i32 %3495, 10240
  %3497 = icmp eq i32 %3496, 0
  br i1 %3497, label %3518, label %3498

; <label>:3498                                    ; preds = %3470
  %3499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.i32 %3499, 0
  %3501 = and i32 %3500, 2048
  %3502 = icmp eq i32 %3501, 0
  br i1 %3502, label %3518, label %3503

; <label>:3503                                    ; preds = %3498
  %3504 = add i32 %42, 484
  %3505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3504, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.i32 %3505, 0
  %3507 = add i32 %3506, 0
  %3508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3507, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3509 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3508, %dx.types.Handle %89, float %3012, float %3013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3510 = extractvalue %dx.types.ResRet.f32 %3509, 3
  %3511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.i32 %3511, 0
  %3513 = shl i32 %3512, 4
  %3514 = and i32 %3513, 32752
  %3515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3514)  ; LegacyF16ToF32(value)
  %3516 = fmul fast float %3515, %3510
  %3517 = call float @dx.op.binary.f32(i32 35, float %3516, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3518

; <label>:3518                                    ; preds = %3503, %3498, %3470
  %3519 = phi float [ %3517, %3503 ], [ 0x3F70101020000000, %3498 ], [ 0x3F70101020000000, %3470 ]
  %3520 = add i32 %42, 144
  %3521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3520, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.i32 %3521, 0
  %3523 = and i32 %3522, 255
  %3524 = uitofp i32 %3523 to float
  %3525 = lshr i32 %3522, 8
  %3526 = and i32 %3525, 255
  %3527 = uitofp i32 %3526 to float
  %3528 = call float @dx.op.dot3.f32(i32 55, float %3305, float %3306, float %3307, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3529 = fmul fast float %3527, %3528
  %3530 = fadd fast float %3529, %3524
  %3531 = fmul fast float %3530, 0x3F70101020000000
  %3532 = call float @dx.op.unary.f32(i32 7, float %3531)  ; Saturate(value)
  br i1 %2904, label %3533, label %3568

; <label>:3533                                    ; preds = %3518
  %3534 = fmul fast float %3519, 2.000000e+00
  %3535 = fcmp fast olt float %3491, 1.270000e+02
  %3536 = fcmp fast olt float %3492, 1.270000e+02
  %3537 = fcmp fast olt float %3493, 1.270000e+02
  %3538 = fmul fast float %3491, 0xBFF7154760000000
  %3539 = fmul fast float %3538, %3534
  %3540 = fmul fast float %3492, 0xBFF7154760000000
  %3541 = fmul fast float %3540, %3534
  %3542 = fmul fast float %3493, 0xBFF7154760000000
  %3543 = fmul fast float %3542, %3534
  %3544 = call float @dx.op.unary.f32(i32 21, float %3539)  ; Exp(value)
  %3545 = call float @dx.op.unary.f32(i32 21, float %3541)  ; Exp(value)
  %3546 = call float @dx.op.unary.f32(i32 21, float %3543)  ; Exp(value)
  %3547 = call float @dx.op.unary.f32(i32 7, float %3544)  ; Saturate(value)
  %3548 = call float @dx.op.unary.f32(i32 7, float %3545)  ; Saturate(value)
  %3549 = call float @dx.op.unary.f32(i32 7, float %3546)  ; Saturate(value)
  %3550 = fadd fast float %3547, -1.000000e+00
  %3551 = select i1 %3535, float %3550, float -1.000000e+00
  %3552 = fadd fast float %3548, -1.000000e+00
  %3553 = select i1 %3536, float %3552, float -1.000000e+00
  %3554 = fadd fast float %3549, -1.000000e+00
  %3555 = select i1 %3537, float %3554, float -1.000000e+00
  %3556 = fmul fast float %3551, %3085
  %3557 = fmul fast float %3553, %3085
  %3558 = fmul fast float %3555, %3085
  %3559 = fadd fast float %3556, 1.000000e+00
  %3560 = fadd fast float %3557, 1.000000e+00
  %3561 = fadd fast float %3558, 1.000000e+00
  %3562 = fmul fast float %3559, %2889
  %3563 = fmul fast float %3560, %2890
  %3564 = fmul fast float %3561, %2891
  %3565 = fmul fast float %3559, %2892
  %3566 = fmul fast float %3560, %2893
  %3567 = fmul fast float %3561, %2894
  br label %3568

; <label>:3568                                    ; preds = %3533, %3518
  %3569 = phi float [ %3562, %3533 ], [ %2889, %3518 ]
  %3570 = phi float [ %3563, %3533 ], [ %2890, %3518 ]
  %3571 = phi float [ %3564, %3533 ], [ %2891, %3518 ]
  %3572 = phi float [ %3565, %3533 ], [ %2892, %3518 ]
  %3573 = phi float [ %3566, %3533 ], [ %2893, %3518 ]
  %3574 = phi float [ %3567, %3533 ], [ %2894, %3518 ]
  %3575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3576 = extractvalue %dx.types.ResRet.i32 %3575, 0
  %3577 = and i32 %3576, 3
  %3578 = icmp eq i32 %3577, 3
  br i1 %3578, label %3657, label %3579

; <label>:3579                                    ; preds = %3568
  %3580 = and i32 %3576, 16
  %3581 = icmp ne i32 %3580, 0
  %3582 = select i1 %3581, float %3085, float 0.000000e+00
  %3583 = icmp eq i32 %3577, 0
  br i1 %3583, label %3584, label %3612

; <label>:3584                                    ; preds = %3579
  %3585 = and i32 %3576, 64
  %3586 = icmp ne i32 %3585, 0
  %3587 = select i1 %3586, float %3085, float 0.000000e+00
  %3588 = fsub fast float %3305, %3569
  %3589 = fsub fast float %3306, %3570
  %3590 = fsub fast float %3307, %3571
  %3591 = fmul fast float %3582, %3588
  %3592 = fmul fast float %3582, %3589
  %3593 = fmul fast float %3582, %3590
  %3594 = fadd fast float %3591, %3569
  %3595 = fadd fast float %3592, %3570
  %3596 = fadd fast float %3593, %3571
  %3597 = fsub fast float %3291, %2898
  %3598 = fmul fast float %3582, %3597
  %3599 = fadd fast float %3598, %2898
  %3600 = fsub fast float %3433, %3572
  %3601 = fsub fast float %3434, %3573
  %3602 = fsub fast float %3435, %3574
  %3603 = fmul fast float %3587, %3600
  %3604 = fmul fast float %3587, %3601
  %3605 = fmul fast float %3587, %3602
  %3606 = fadd fast float %3603, %3572
  %3607 = fadd fast float %3604, %3573
  %3608 = fadd fast float %3605, %3574
  %3609 = fsub fast float %3532, %2902
  %3610 = fmul fast float %3582, %3609
  %3611 = fadd fast float %3610, %2902
  br label %3657

; <label>:3612                                    ; preds = %3579
  %3613 = icmp eq i32 %3577, 1
  br i1 %3613, label %3614, label %3627

; <label>:3614                                    ; preds = %3612
  %3615 = fadd fast float %3305, -1.000000e+00
  %3616 = fadd fast float %3306, -1.000000e+00
  %3617 = fadd fast float %3307, -1.000000e+00
  %3618 = fmul fast float %3582, %3615
  %3619 = fmul fast float %3582, %3616
  %3620 = fmul fast float %3582, %3617
  %3621 = fadd fast float %3618, 1.000000e+00
  %3622 = fadd fast float %3619, 1.000000e+00
  %3623 = fadd fast float %3620, 1.000000e+00
  %3624 = fmul fast float %3621, %3569
  %3625 = fmul fast float %3622, %3570
  %3626 = fmul fast float %3623, %3571
  br label %3657

; <label>:3627                                    ; preds = %3612
  %3628 = icmp eq i32 %3577, 2
  br i1 %3628, label %3629, label %3657

; <label>:3629                                    ; preds = %3627
  %3630 = call float @dx.op.unary.f32(i32 24, float %3305)  ; Sqrt(value)
  %3631 = call float @dx.op.unary.f32(i32 24, float %3306)  ; Sqrt(value)
  %3632 = call float @dx.op.unary.f32(i32 24, float %3307)  ; Sqrt(value)
  %3633 = fadd fast float %3630, -5.000000e-01
  %3634 = fadd fast float %3631, -5.000000e-01
  %3635 = fadd fast float %3632, -5.000000e-01
  %3636 = fmul fast float %3633, %3582
  %3637 = fmul fast float %3634, %3582
  %3638 = fmul fast float %3635, %3582
  %3639 = fadd fast float %3636, 5.000000e-01
  %3640 = fadd fast float %3637, 5.000000e-01
  %3641 = fadd fast float %3638, 5.000000e-01
  %3642 = fmul fast float %3639, 2.000000e+00
  %3643 = fsub fast float 1.000000e+00, %3642
  %3644 = fmul fast float %3643, %3569
  %3645 = fadd fast float %3644, %3642
  %3646 = fmul fast float %3645, %3569
  %3647 = fmul fast float %3640, 2.000000e+00
  %3648 = fsub fast float 1.000000e+00, %3647
  %3649 = fmul fast float %3648, %3570
  %3650 = fadd fast float %3649, %3647
  %3651 = fmul fast float %3650, %3570
  %3652 = fmul fast float %3641, 2.000000e+00
  %3653 = fsub fast float 1.000000e+00, %3652
  %3654 = fmul fast float %3653, %3571
  %3655 = fadd fast float %3654, %3652
  %3656 = fmul fast float %3655, %3571
  br label %3657

; <label>:3657                                    ; preds = %3629, %3627, %3614, %3584, %3568
  %3658 = phi float [ %3569, %3568 ], [ %3646, %3629 ], [ %3569, %3627 ], [ %3624, %3614 ], [ %3594, %3584 ]
  %3659 = phi float [ %3570, %3568 ], [ %3651, %3629 ], [ %3570, %3627 ], [ %3625, %3614 ], [ %3595, %3584 ]
  %3660 = phi float [ %3571, %3568 ], [ %3656, %3629 ], [ %3571, %3627 ], [ %3626, %3614 ], [ %3596, %3584 ]
  %3661 = phi float [ %3572, %3568 ], [ %3572, %3629 ], [ %3572, %3627 ], [ %3572, %3614 ], [ %3606, %3584 ]
  %3662 = phi float [ %3573, %3568 ], [ %3573, %3629 ], [ %3573, %3627 ], [ %3573, %3614 ], [ %3607, %3584 ]
  %3663 = phi float [ %3574, %3568 ], [ %3574, %3629 ], [ %3574, %3627 ], [ %3574, %3614 ], [ %3608, %3584 ]
  %3664 = phi float [ %2898, %3568 ], [ %2898, %3629 ], [ %2898, %3627 ], [ %2898, %3614 ], [ %3599, %3584 ]
  %3665 = phi float [ %2902, %3568 ], [ %2902, %3629 ], [ %2902, %3627 ], [ %2902, %3614 ], [ %3611, %3584 ]
  %3666 = and i32 %3576, 12
  %3667 = icmp eq i32 %3666, 12
  br i1 %3667, label %3774, label %3668

; <label>:3668                                    ; preds = %3657
  %3669 = and i32 %3576, 2097184
  %3670 = icmp eq i32 %3669, 2097184
  %3671 = select i1 %3670, float %3085, float 0.000000e+00
  %3672 = and i32 %3576, 4194336
  %3673 = icmp eq i32 %3672, 4194336
  %3674 = select i1 %3673, float %3085, float 0.000000e+00
  %3675 = and i32 %3576, 8388640
  %3676 = icmp eq i32 %3675, 8388640
  %3677 = select i1 %3676, float %3085, float 0.000000e+00
  %3678 = and i32 %3576, 1024
  %3679 = icmp ne i32 %3678, 0
  %3680 = select i1 %3679, float %3085, float 0.000000e+00
  %3681 = and i32 %3576, 2048
  %3682 = icmp ne i32 %3681, 0
  %3683 = select i1 %3682, float %3085, float 0.000000e+00
  %3684 = icmp eq i32 %3666, 0
  br i1 %3684, label %3685, label %3710

; <label>:3685                                    ; preds = %3668
  %3686 = fsub fast float %3386, %2887
  %3687 = fsub fast float %3387, %2888
  %3688 = fmul fast float %3671, %3686
  %3689 = fmul fast float %3671, %3687
  %3690 = fadd fast float %3688, %2887
  %3691 = fadd fast float %3689, %2888
  %3692 = fsub fast float %3388, %2900
  %3693 = fmul fast float %3674, %3692
  %3694 = fadd fast float %3693, %2900
  %3695 = fsub fast float %3385, %2899
  %3696 = fmul fast float %3677, %3695
  %3697 = fadd fast float %3696, %2899
  %3698 = fsub fast float %3491, %2895
  %3699 = fsub fast float %3492, %2896
  %3700 = fsub fast float %3493, %2897
  %3701 = fmul fast float %3680, %3698
  %3702 = fmul fast float %3680, %3699
  %3703 = fmul fast float %3680, %3700
  %3704 = fadd fast float %3701, %2895
  %3705 = fadd fast float %3702, %2896
  %3706 = fadd fast float %3703, %2897
  %3707 = fsub fast float %3519, %2901
  %3708 = fmul fast float %3683, %3707
  %3709 = fadd fast float %3708, %2901
  br label %3774

; <label>:3710                                    ; preds = %3668
  %3711 = icmp eq i32 %3666, 4
  br i1 %3711, label %3712, label %3752

; <label>:3712                                    ; preds = %3710
  %3713 = fmul fast float %3671, %3386
  %3714 = fmul fast float %3671, %3387
  %3715 = fadd fast float %3713, %2887
  %3716 = fadd fast float %3714, %2888
  %3717 = call float @dx.op.binary.f32(i32 36, float %2900, float %3388)  ; FMin(a,b)
  %3718 = fsub fast float %3717, %2900
  %3719 = fmul fast float %3718, %3674
  %3720 = fadd fast float %3719, %2900
  %3721 = fadd fast float %3385, %2899
  %3722 = fmul fast float %3721, 0x3FF337FAE0000000
  %3723 = fmul fast float %2899, %2899
  %3724 = fmul fast float %3385, %3385
  %3725 = fadd fast float %3724, %3723
  %3726 = fmul fast float %3725, 0x3FE5152B00000000
  %3727 = fmul fast float %2899, 0xBFCC1F85E0000000
  %3728 = fmul fast float %3727, %3385
  %3729 = fadd fast float %3728, 0xBFE1363700000000
  %3730 = fadd fast float %3729, %3722
  %3731 = fsub fast float %3730, %3726
  %3732 = fmul fast float %3721, 0x3FBA6F0D00000000
  %3733 = fmul fast float %3725, 0x3FD0432880000000
  %3734 = fmul fast float %2899, 0xBFEF110800000000
  %3735 = fmul fast float %3734, %3385
  %3736 = fadd fast float %3735, 1.000000e+00
  %3737 = fsub fast float %3736, %3732
  %3738 = fadd fast float %3737, %3733
  %3739 = fdiv fast float %3731, %3738
  %3740 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3741 = fsub fast float %3740, %2899
  %3742 = fmul fast float %3741, %3677
  %3743 = fadd fast float %3742, %2899
  %3744 = fmul fast float %3680, %3491
  %3745 = fmul fast float %3680, %3492
  %3746 = fmul fast float %3680, %3493
  %3747 = fadd fast float %3744, %2895
  %3748 = fadd fast float %3745, %2896
  %3749 = fadd fast float %3746, %2897
  %3750 = fmul fast float %3683, %3519
  %3751 = fadd fast float %3750, %2901
  br label %3774

; <label>:3752                                    ; preds = %3710
  %3753 = icmp eq i32 %3666, 8
  br i1 %3753, label %3754, label %3774

; <label>:3754                                    ; preds = %3752
  %3755 = fmul fast float %3671, %3386
  %3756 = fmul fast float %3671, %3387
  %3757 = fadd fast float %3755, %2887
  %3758 = fadd fast float %3756, %2888
  %3759 = call float @dx.op.binary.f32(i32 36, float %2900, float %3388)  ; FMin(a,b)
  %3760 = fsub fast float %3759, %2900
  %3761 = fmul fast float %3760, %3674
  %3762 = fadd fast float %3761, %2900
  %3763 = fsub fast float %3385, %2899
  %3764 = fmul fast float %3677, %3763
  %3765 = fadd fast float %3764, %2899
  %3766 = fmul fast float %3680, %3491
  %3767 = fmul fast float %3680, %3492
  %3768 = fmul fast float %3680, %3493
  %3769 = fadd fast float %3766, %2895
  %3770 = fadd fast float %3767, %2896
  %3771 = fadd fast float %3768, %2897
  %3772 = fmul fast float %3683, %3519
  %3773 = fadd fast float %3772, %2901
  br label %3774

; <label>:3774                                    ; preds = %3754, %3752, %3712, %3685, %3657, %3084, %2903, %2886
  %3775 = phi float [ %2887, %3657 ], [ %2887, %3084 ], [ %2887, %2886 ], [ %2887, %2903 ], [ %3690, %3685 ], [ %3715, %3712 ], [ %2887, %3752 ], [ %3757, %3754 ]
  %3776 = phi float [ %2888, %3657 ], [ %2888, %3084 ], [ %2888, %2886 ], [ %2888, %2903 ], [ %3691, %3685 ], [ %3716, %3712 ], [ %2888, %3752 ], [ %3758, %3754 ]
  %3777 = phi float [ %3658, %3657 ], [ %2889, %3084 ], [ %2889, %2886 ], [ %2889, %2903 ], [ %3658, %3685 ], [ %3658, %3712 ], [ %3658, %3752 ], [ %3658, %3754 ]
  %3778 = phi float [ %3659, %3657 ], [ %2890, %3084 ], [ %2890, %2886 ], [ %2890, %2903 ], [ %3659, %3685 ], [ %3659, %3712 ], [ %3659, %3752 ], [ %3659, %3754 ]
  %3779 = phi float [ %3660, %3657 ], [ %2891, %3084 ], [ %2891, %2886 ], [ %2891, %2903 ], [ %3660, %3685 ], [ %3660, %3712 ], [ %3660, %3752 ], [ %3660, %3754 ]
  %3780 = phi float [ %3661, %3657 ], [ %2892, %3084 ], [ %2892, %2886 ], [ %2892, %2903 ], [ %3661, %3685 ], [ %3661, %3712 ], [ %3661, %3752 ], [ %3661, %3754 ]
  %3781 = phi float [ %3662, %3657 ], [ %2893, %3084 ], [ %2893, %2886 ], [ %2893, %2903 ], [ %3662, %3685 ], [ %3662, %3712 ], [ %3662, %3752 ], [ %3662, %3754 ]
  %3782 = phi float [ %3663, %3657 ], [ %2894, %3084 ], [ %2894, %2886 ], [ %2894, %2903 ], [ %3663, %3685 ], [ %3663, %3712 ], [ %3663, %3752 ], [ %3663, %3754 ]
  %3783 = phi float [ %2895, %3657 ], [ %2895, %3084 ], [ %2895, %2886 ], [ %2895, %2903 ], [ %3704, %3685 ], [ %3747, %3712 ], [ %2895, %3752 ], [ %3769, %3754 ]
  %3784 = phi float [ %2896, %3657 ], [ %2896, %3084 ], [ %2896, %2886 ], [ %2896, %2903 ], [ %3705, %3685 ], [ %3748, %3712 ], [ %2896, %3752 ], [ %3770, %3754 ]
  %3785 = phi float [ %2897, %3657 ], [ %2897, %3084 ], [ %2897, %2886 ], [ %2897, %2903 ], [ %3706, %3685 ], [ %3749, %3712 ], [ %2897, %3752 ], [ %3771, %3754 ]
  %3786 = phi float [ %3664, %3657 ], [ %2898, %3084 ], [ %2898, %2886 ], [ %2898, %2903 ], [ %3664, %3685 ], [ %3664, %3712 ], [ %3664, %3752 ], [ %3664, %3754 ]
  %3787 = phi float [ %2899, %3657 ], [ %2899, %3084 ], [ %2899, %2886 ], [ %2899, %2903 ], [ %3697, %3685 ], [ %3743, %3712 ], [ %2899, %3752 ], [ %3765, %3754 ]
  %3788 = phi float [ %2900, %3657 ], [ %2900, %3084 ], [ %2900, %2886 ], [ %2900, %2903 ], [ %3694, %3685 ], [ %3720, %3712 ], [ %2900, %3752 ], [ %3762, %3754 ]
  %3789 = phi float [ %2901, %3657 ], [ %2901, %3084 ], [ %2901, %2886 ], [ %2901, %2903 ], [ %3709, %3685 ], [ %3751, %3712 ], [ %2901, %3752 ], [ %3773, %3754 ]
  %3790 = phi float [ %3665, %3657 ], [ %2902, %3084 ], [ %2902, %2886 ], [ %2902, %2903 ], [ %3665, %3685 ], [ %3665, %3712 ], [ %3665, %3752 ], [ %3665, %3754 ]
  %3791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3792 = extractvalue %dx.types.CBufRet.f32 %3791, 0
  %3793 = call float @dx.op.dot2.f32(i32 54, float %3775, float %3776, float %3775, float %3776)  ; Dot2(ax,ay,bx,by)
  %3794 = fmul fast float %3793, 0x3FE3333340000000
  %3795 = fsub fast float 1.000000e+00, %3794
  %3796 = call float @dx.op.dot3.f32(i32 55, float %3775, float %3776, float %3795, float %3775, float %3776, float %3795)  ; Dot3(ax,ay,az,bx,by,bz)
  %3797 = call float @dx.op.unary.f32(i32 25, float %3796)  ; Rsqrt(value)
  %3798 = fmul fast float %3797, %3775
  %3799 = fmul fast float %3797, %3776
  %3800 = fmul fast float %3795, %3797
  %3801 = fmul fast float %3800, %99
  %3802 = fmul fast float %3800, %100
  %3803 = fmul fast float %3800, %101
  %3804 = fmul fast float %3798, %67
  %3805 = fmul fast float %3798, %68
  %3806 = fmul fast float %3798, %69
  %3807 = fadd fast float %3801, %3804
  %3808 = fadd fast float %3802, %3805
  %3809 = fadd fast float %3803, %3806
  %3810 = fmul fast float %111, %3799
  %3811 = fmul fast float %112, %3799
  %3812 = fmul fast float %113, %3799
  %3813 = fadd fast float %3807, %3810
  %3814 = fadd fast float %3808, %3811
  %3815 = fadd fast float %3809, %3812
  %3816 = call float @dx.op.dot3.f32(i32 55, float %3813, float %3814, float %3815, float %3813, float %3814, float %3815)  ; Dot3(ax,ay,az,bx,by,bz)
  %3817 = call float @dx.op.unary.f32(i32 25, float %3816)  ; Rsqrt(value)
  %3818 = fmul fast float %3813, %3817
  %3819 = fmul fast float %3814, %3817
  %3820 = fmul fast float %3815, %3817
  %3821 = icmp eq i32 %43, 65535
  br i1 %3821, label %4367, label %3822

; <label>:3822                                    ; preds = %3774
  %3823 = call float @dx.op.unary.f32(i32 83, float %44)  ; DerivCoarseX(value)
  %3824 = call float @dx.op.unary.f32(i32 83, float %45)  ; DerivCoarseX(value)
  %3825 = call float @dx.op.unary.f32(i32 83, float %46)  ; DerivCoarseX(value)
  %3826 = call float @dx.op.unary.f32(i32 84, float %44)  ; DerivCoarseY(value)
  %3827 = call float @dx.op.unary.f32(i32 84, float %45)  ; DerivCoarseY(value)
  %3828 = call float @dx.op.unary.f32(i32 84, float %46)  ; DerivCoarseY(value)
  %3829 = fadd fast float %3823, %44
  %3830 = fadd fast float %3824, %45
  %3831 = fadd fast float %3825, %46
  %3832 = fadd fast float %3826, %44
  %3833 = fadd fast float %3827, %45
  %3834 = fadd fast float %3828, %46
  %3835 = mul i32 %43, 48
  %3836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3835, i32 undef)  ; BufferLoad(srv,index,wot)
  %3837 = extractvalue %dx.types.ResRet.f32 %3836, 0
  %3838 = extractvalue %dx.types.ResRet.f32 %3836, 1
  %3839 = extractvalue %dx.types.ResRet.f32 %3836, 2
  %3840 = add i32 %3835, 16
  %3841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.f32 %3841, 0
  %3843 = extractvalue %dx.types.ResRet.f32 %3841, 1
  %3844 = extractvalue %dx.types.ResRet.f32 %3841, 2
  %3845 = add i32 %3835, 32
  %3846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.f32 %3846, 0
  %3848 = extractvalue %dx.types.ResRet.f32 %3846, 1
  %3849 = extractvalue %dx.types.ResRet.f32 %3846, 2
  %3850 = extractvalue %dx.types.ResRet.f32 %3846, 3
  %3851 = bitcast float %3850 to i32
  %3852 = fmul fast float %3837, %44
  %3853 = fmul fast float %3838, %45
  %3854 = fmul fast float %3839, %46
  %3855 = fsub fast float %3852, %3842
  %3856 = fsub fast float %3853, %3843
  %3857 = fsub fast float %3854, %3844
  %3858 = call float @dx.op.unary.f32(i32 7, float %3855)  ; Saturate(value)
  %3859 = call float @dx.op.unary.f32(i32 7, float %3856)  ; Saturate(value)
  %3860 = call float @dx.op.unary.f32(i32 7, float %3857)  ; Saturate(value)
  %3861 = fmul fast float %3858, %3847
  %3862 = fmul fast float %3859, %3848
  %3863 = fmul fast float %3860, %3849
  %3864 = fadd fast float %3847, -1.000000e+00
  %3865 = fadd fast float %3848, -1.000000e+00
  %3866 = fadd fast float %3849, -1.000000e+00
  %3867 = call float @dx.op.unary.f32(i32 27, float %3861)  ; Round_ni(value)
  %3868 = call float @dx.op.unary.f32(i32 27, float %3862)  ; Round_ni(value)
  %3869 = call float @dx.op.unary.f32(i32 27, float %3863)  ; Round_ni(value)
  %3870 = call float @dx.op.binary.f32(i32 36, float %3867, float %3864)  ; FMin(a,b)
  %3871 = call float @dx.op.binary.f32(i32 36, float %3868, float %3865)  ; FMin(a,b)
  %3872 = call float @dx.op.binary.f32(i32 36, float %3869, float %3866)  ; FMin(a,b)
  %3873 = fmul fast float %3872, %3848
  %3874 = fadd fast float %3873, %3871
  %3875 = fmul fast float %3874, %3847
  %3876 = fadd fast float %3875, %3870
  %3877 = fptosi float %3876 to i32
  %3878 = add nsw i32 %3877, %3851
  %3879 = shl nsw i32 %3878, 2
  %3880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3881 = extractvalue %dx.types.ResRet.i32 %3880, 0
  %3882 = lshr i32 %3881, 16
  %3883 = icmp eq i32 %3882, 0
  br i1 %3883, label %4333, label %3884

; <label>:3884                                    ; preds = %3822
  br label %3885

; <label>:3885                                    ; preds = %4009, %3884
  %3886 = phi i32 [ %3911, %4009 ], [ %3882, %3884 ]
  %3887 = phi float [ %4010, %4009 ], [ 0.000000e+00, %3884 ]
  %3888 = phi float [ %4011, %4009 ], [ %3792, %3884 ]
  %3889 = phi float [ %4012, %4009 ], [ %3790, %3884 ]
  %3890 = phi float [ %4013, %4009 ], [ %3783, %3884 ]
  %3891 = phi float [ %4014, %4009 ], [ %3784, %3884 ]
  %3892 = phi float [ %4015, %4009 ], [ %3785, %3884 ]
  %3893 = phi float [ %4016, %4009 ], [ 0.000000e+00, %3884 ]
  %3894 = phi float [ %4017, %4009 ], [ 0.000000e+00, %3884 ]
  %3895 = phi float [ %4018, %4009 ], [ %3780, %3884 ]
  %3896 = phi float [ %4019, %4009 ], [ %3781, %3884 ]
  %3897 = phi float [ %4020, %4009 ], [ %3782, %3884 ]
  %3898 = phi float [ %4021, %4009 ], [ %3818, %3884 ]
  %3899 = phi float [ %4022, %4009 ], [ %3819, %3884 ]
  %3900 = phi float [ %4023, %4009 ], [ %3820, %3884 ]
  %3901 = phi float [ %4024, %4009 ], [ %3788, %3884 ]
  %3902 = phi float [ %4025, %4009 ], [ %3787, %3884 ]
  %3903 = phi float [ %4026, %4009 ], [ 0.000000e+00, %3884 ]
  %3904 = phi float [ %4027, %4009 ], [ %3786, %3884 ]
  %3905 = phi float [ %4028, %4009 ], [ %3777, %3884 ]
  %3906 = phi float [ %4029, %4009 ], [ %3778, %3884 ]
  %3907 = phi float [ %4030, %4009 ], [ %3779, %3884 ]
  %3908 = shl nuw nsw i32 %3886, 2
  %3909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3910 = extractvalue %dx.types.ResRet.i32 %3909, 0
  %3911 = lshr i32 %3910, 16
  %3912 = shl i32 %3910, 8
  %3913 = and i32 %3912, 16776960
  %3914 = or i32 %3913, 48
  %3915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3914, i32 undef)  ; BufferLoad(srv,index,wot)
  %3916 = extractvalue %dx.types.ResRet.f32 %3915, 0
  %3917 = extractvalue %dx.types.ResRet.f32 %3915, 1
  %3918 = extractvalue %dx.types.ResRet.f32 %3915, 2
  %3919 = or i32 %3913, 64
  %3920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3919, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.i32 %3920, 0
  %3922 = extractvalue %dx.types.ResRet.i32 %3920, 1
  %3923 = or i32 %3913, 80
  %3924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3925 = extractvalue %dx.types.ResRet.f32 %3924, 2
  %3926 = extractvalue %dx.types.ResRet.f32 %3924, 3
  %3927 = or i32 %3913, 96
  %3928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3929 = extractvalue %dx.types.ResRet.f32 %3928, 0
  %3930 = extractvalue %dx.types.ResRet.f32 %3928, 1
  %3931 = extractvalue %dx.types.ResRet.f32 %3928, 2
  %3932 = extractvalue %dx.types.ResRet.f32 %3928, 3
  %3933 = or i32 %3913, 112
  %3934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3935 = extractvalue %dx.types.ResRet.f32 %3934, 2
  %3936 = or i32 %3913, 128
  %3937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3936, i32 undef)  ; BufferLoad(srv,index,wot)
  %3938 = extractvalue %dx.types.ResRet.f32 %3937, 0
  %3939 = extractvalue %dx.types.ResRet.f32 %3937, 1
  %3940 = extractvalue %dx.types.ResRet.f32 %3937, 2
  %3941 = extractvalue %dx.types.ResRet.f32 %3937, 3
  %3942 = or i32 %3913, 144
  %3943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3942, i32 undef)  ; BufferLoad(srv,index,wot)
  %3944 = extractvalue %dx.types.ResRet.f32 %3943, 0
  %3945 = extractvalue %dx.types.ResRet.f32 %3943, 1
  %3946 = extractvalue %dx.types.ResRet.f32 %3943, 2
  %3947 = extractvalue %dx.types.ResRet.f32 %3943, 3
  %3948 = or i32 %3913, 160
  %3949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3948, i32 undef)  ; BufferLoad(srv,index,wot)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 0
  %3951 = extractvalue %dx.types.ResRet.f32 %3949, 1
  %3952 = extractvalue %dx.types.ResRet.f32 %3949, 2
  %3953 = extractvalue %dx.types.ResRet.f32 %3949, 3
  %3954 = or i32 %3913, 192
  %3955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3954, i32 undef)  ; BufferLoad(srv,index,wot)
  %3956 = extractvalue %dx.types.ResRet.i32 %3955, 0
  %3957 = or i32 %3913, 208
  %3958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3957, i32 undef)  ; BufferLoad(srv,index,wot)
  %3959 = extractvalue %dx.types.ResRet.f32 %3958, 0
  %3960 = or i32 %3913, 248
  %3961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3960, i32 undef)  ; BufferLoad(srv,index,wot)
  %3962 = extractvalue %dx.types.ResRet.f32 %3961, 0
  %3963 = extractvalue %dx.types.ResRet.f32 %3961, 1
  %3964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3965 = extractvalue %dx.types.ResRet.f32 %3964, 0
  %3966 = extractvalue %dx.types.ResRet.f32 %3964, 1
  %3967 = extractvalue %dx.types.ResRet.f32 %3964, 2
  %3968 = extractvalue %dx.types.ResRet.f32 %3964, 3
  %3969 = call float @dx.op.dot4.f32(i32 56, float %3965, float %3966, float %3967, float %3968, float %44, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3970 = or i32 %3913, 16
  %3971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3970, i32 undef)  ; BufferLoad(srv,index,wot)
  %3972 = extractvalue %dx.types.ResRet.f32 %3971, 0
  %3973 = extractvalue %dx.types.ResRet.f32 %3971, 1
  %3974 = extractvalue %dx.types.ResRet.f32 %3971, 2
  %3975 = extractvalue %dx.types.ResRet.f32 %3971, 3
  %3976 = call float @dx.op.dot4.f32(i32 56, float %3972, float %3973, float %3974, float %3975, float %44, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3977 = or i32 %3913, 32
  %3978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3979 = extractvalue %dx.types.ResRet.f32 %3978, 0
  %3980 = extractvalue %dx.types.ResRet.f32 %3978, 1
  %3981 = extractvalue %dx.types.ResRet.f32 %3978, 2
  %3982 = extractvalue %dx.types.ResRet.f32 %3978, 3
  %3983 = call float @dx.op.dot4.f32(i32 56, float %3979, float %3980, float %3981, float %3982, float %44, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3984 = call float @dx.op.unary.f32(i32 27, float %3969)  ; Round_ni(value)
  %3985 = call float @dx.op.unary.f32(i32 6, float %3984)  ; FAbs(value)
  %3986 = call float @dx.op.unary.f32(i32 27, float %3976)  ; Round_ni(value)
  %3987 = call float @dx.op.unary.f32(i32 6, float %3986)  ; FAbs(value)
  %3988 = call float @dx.op.unary.f32(i32 6, float %3983)  ; FAbs(value)
  %3989 = call float @dx.op.unary.f32(i32 27, float %3988)  ; Round_ni(value)
  %3990 = fadd fast float %3987, %3985
  %3991 = fadd fast float %3990, %3989
  %3992 = fcmp fast oeq float %3991, 0.000000e+00
  %3993 = call float @dx.op.dot4.f32(i32 56, float %3965, float %3966, float %3967, float %3968, float %3829, float %3830, float %3831, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3994 = call float @dx.op.dot4.f32(i32 56, float %3972, float %3973, float %3974, float %3975, float %3829, float %3830, float %3831, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3995 = call float @dx.op.dot4.f32(i32 56, float %3965, float %3966, float %3967, float %3968, float %3832, float %3833, float %3834, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3996 = call float @dx.op.dot4.f32(i32 56, float %3972, float %3973, float %3974, float %3975, float %3832, float %3833, float %3834, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3997 = fsub fast float %3993, %3969
  %3998 = fsub fast float %3995, %3969
  %3999 = fsub fast float %3994, %3976
  %4000 = fsub fast float %3996, %3976
  %4001 = call float @dx.op.dot3.f32(i32 55, float %3916, float %3917, float %3918, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 2
  %4004 = fadd fast float %4003, %4001
  %4005 = call float @dx.op.unary.f32(i32 7, float %4004)  ; Saturate(value)
  %4006 = extractvalue %dx.types.CBufRet.f32 %4002, 0
  %4007 = fcmp fast ogt float %4005, %4006
  %4008 = and i1 %3992, %4007
  br i1 %4008, label %4032, label %4009

; <label>:4009                                    ; preds = %4319, %4115, %4032, %3885
  %4010 = phi float [ %3887, %4032 ], [ %4118, %4115 ], [ %4118, %4319 ], [ %3887, %3885 ]
  %4011 = phi float [ %3888, %4032 ], [ %3888, %4115 ], [ %4295, %4319 ], [ %3888, %3885 ]
  %4012 = phi float [ %3889, %4032 ], [ %3889, %4115 ], [ %4293, %4319 ], [ %3889, %3885 ]
  %4013 = phi float [ %3890, %4032 ], [ %3890, %4115 ], [ %4271, %4319 ], [ %3890, %3885 ]
  %4014 = phi float [ %3891, %4032 ], [ %3891, %4115 ], [ %4272, %4319 ], [ %3891, %3885 ]
  %4015 = phi float [ %3892, %4032 ], [ %3892, %4115 ], [ %4273, %4319 ], [ %3892, %3885 ]
  %4016 = phi float [ %3893, %4032 ], [ %3893, %4115 ], [ %4242, %4319 ], [ %3893, %3885 ]
  %4017 = phi float [ %3894, %4032 ], [ %3894, %4115 ], [ %4240, %4319 ], [ %3894, %3885 ]
  %4018 = phi float [ %3895, %4032 ], [ %3895, %4115 ], [ %4329, %4319 ], [ %3895, %3885 ]
  %4019 = phi float [ %3896, %4032 ], [ %3896, %4115 ], [ %4330, %4319 ], [ %3896, %3885 ]
  %4020 = phi float [ %3897, %4032 ], [ %3897, %4115 ], [ %4331, %4319 ], [ %3897, %3885 ]
  %4021 = phi float [ %3898, %4032 ], [ %3898, %4115 ], [ %4221, %4319 ], [ %3898, %3885 ]
  %4022 = phi float [ %3899, %4032 ], [ %3899, %4115 ], [ %4222, %4319 ], [ %3899, %3885 ]
  %4023 = phi float [ %3900, %4032 ], [ %3900, %4115 ], [ %4223, %4319 ], [ %3900, %3885 ]
  %4024 = phi float [ %3901, %4032 ], [ %3901, %4115 ], [ %4251, %4319 ], [ %3901, %3885 ]
  %4025 = phi float [ %3902, %4032 ], [ %3902, %4115 ], [ %4248, %4319 ], [ %3902, %3885 ]
  %4026 = phi float [ %3903, %4032 ], [ %3903, %4115 ], [ %4245, %4319 ], [ %3903, %3885 ]
  %4027 = phi float [ %3904, %4032 ], [ %3904, %4115 ], [ %4238, %4319 ], [ %3904, %3885 ]
  %4028 = phi float [ %3905, %4032 ], [ %3905, %4115 ], [ %4233, %4319 ], [ %3905, %3885 ]
  %4029 = phi float [ %3906, %4032 ], [ %3906, %4115 ], [ %4234, %4319 ], [ %3906, %3885 ]
  %4030 = phi float [ %3907, %4032 ], [ %3907, %4115 ], [ %4235, %4319 ], [ %3907, %3885 ]
  %4031 = icmp eq i32 %3911, 0
  br i1 %4031, label %4332, label %3885

; <label>:4032                                    ; preds = %3885
  %4033 = extractvalue %dx.types.ResRet.f32 %3915, 3
  %4034 = extractvalue %dx.types.ResRet.f32 %3934, 3
  %4035 = extractvalue %dx.types.ResRet.f32 %3934, 1
  %4036 = extractvalue %dx.types.ResRet.f32 %3934, 0
  %4037 = extractvalue %dx.types.ResRet.f32 %3924, 1
  %4038 = extractvalue %dx.types.ResRet.f32 %3924, 0
  %4039 = extractvalue %dx.types.ResRet.i32 %3920, 3
  %4040 = extractvalue %dx.types.ResRet.i32 %3920, 2
  %4041 = bitcast float %4033 to i32
  %4042 = add i32 %4039, 0
  %4043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4042, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4045 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4043, %dx.types.Handle %4044, float %3969, float %3976, float undef, float undef, i32 0, i32 0, i32 undef, float %3997, float %3999, float undef, float %3998, float %4000, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4046 = extractvalue %dx.types.ResRet.f32 %4045, 0
  %4047 = fmul fast float %4046, %4038
  %4048 = fadd fast float %4047, %4037
  %4049 = call float @dx.op.unary.f32(i32 7, float %4048)  ; Saturate(value)
  %4050 = fmul fast float %3969, %3929
  %4051 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %3976, float %4050)  ; FMad(a,b,c)
  %4052 = fadd fast float %4051, %4036
  %4053 = fmul fast float %3969, %3931
  %4054 = call float @dx.op.tertiary.f32(i32 46, float %3932, float %3976, float %4053)  ; FMad(a,b,c)
  %4055 = fadd fast float %4054, %4035
  %4056 = fmul fast float %3997, %3929
  %4057 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %3999, float %4056)  ; FMad(a,b,c)
  %4058 = fmul fast float %3997, %3931
  %4059 = call float @dx.op.tertiary.f32(i32 46, float %3932, float %3999, float %4058)  ; FMad(a,b,c)
  %4060 = fmul fast float %3998, %3929
  %4061 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %4000, float %4060)  ; FMad(a,b,c)
  %4062 = fmul fast float %3998, %3931
  %4063 = call float @dx.op.tertiary.f32(i32 46, float %3932, float %4000, float %4062)  ; FMad(a,b,c)
  %4064 = add i32 %4040, 0
  %4065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4064, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4066 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4065, %dx.types.Handle %4044, float %4052, float %4055, float undef, float undef, i32 0, i32 0, i32 undef, float %4057, float %4059, float undef, float %4061, float %4063, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4067 = extractvalue %dx.types.ResRet.f32 %4066, 0
  %4068 = and i32 %4041, 1024
  %4069 = icmp ne i32 %4068, 0
  %4070 = fcmp fast ogt float %4067, 0x3FE0101020000000
  %4071 = uitofp i1 %4070 to float
  %4072 = select i1 %4069, float %4071, float %4067
  %4073 = and i32 %4041, 8192
  %4074 = icmp ne i32 %4073, 0
  %4075 = select i1 %4074, float %4034, float 1.000000e+00
  %4076 = fmul fast float %3969, 2.000000e+00
  %4077 = fadd fast float %4076, -1.000000e+00
  %4078 = call float @dx.op.unary.f32(i32 6, float %4077)  ; FAbs(value)
  %4079 = fmul fast float %4078, %3962
  %4080 = fsub fast float %4079, %3962
  %4081 = call float @dx.op.unary.f32(i32 7, float %4080)  ; Saturate(value)
  %4082 = fmul fast float %3976, 2.000000e+00
  %4083 = fadd fast float %4082, -1.000000e+00
  %4084 = call float @dx.op.unary.f32(i32 6, float %4083)  ; FAbs(value)
  %4085 = fmul fast float %4084, %3963
  %4086 = fsub fast float %4085, %3963
  %4087 = call float @dx.op.unary.f32(i32 7, float %4086)  ; Saturate(value)
  %4088 = fmul fast float %3988, %3925
  %4089 = fsub fast float %4088, %3925
  %4090 = call float @dx.op.unary.f32(i32 7, float %4089)  ; Saturate(value)
  %4091 = fmul fast float %4049, %4075
  %4092 = fmul fast float %4091, %4046
  %4093 = fmul fast float %4092, %4081
  %4094 = fmul fast float %4093, %4072
  %4095 = fmul fast float %4094, %4087
  %4096 = fmul fast float %4095, %4090
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 1
  %4099 = extractvalue %dx.types.CBufRet.f32 %4097, 0
  %4100 = fsub fast float %4005, %4099
  %4101 = fmul fast float %4100, %4098
  %4102 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4103 = fmul fast float %4096, %3926
  %4104 = fadd fast float %4096, %3926
  %4105 = fmul fast float %4104, %3935
  %4106 = fsub fast float %4105, %3935
  %4107 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4108 = and i32 %4041, 128
  %4109 = icmp ne i32 %4108, 0
  %4110 = select i1 %4109, float %4107, float %4103
  %4111 = fmul fast float %4110, %4102
  %4112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4113 = extractvalue %dx.types.CBufRet.f32 %4112, 0
  %4114 = fcmp fast ugt float %4111, %4113
  br i1 %4114, label %4115, label %4009

; <label>:4115                                    ; preds = %4032
  %4116 = select i1 %4074, float %4111, float 0.000000e+00
  %4117 = fadd fast float %4116, %3887
  %4118 = call float @dx.op.unary.f32(i32 7, float %4117)  ; Saturate(value)
  br i1 %4074, label %4009, label %4119

; <label>:4119                                    ; preds = %4115
  %4120 = and i32 %4041, 4
  %4121 = and i32 %4041, 8
  %4122 = add i32 %3921, 0
  %4123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4122, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4125 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4123, %dx.types.Handle %4124, float %4052, float %4055, float undef, float undef, i32 0, i32 0, i32 undef, float %4057, float %4059, float undef, float %4061, float %4063, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4127 = extractvalue %dx.types.ResRet.f32 %4125, 1
  %4128 = extractvalue %dx.types.ResRet.f32 %4125, 2
  %4129 = extractvalue %dx.types.ResRet.f32 %4125, 3
  %4130 = bitcast float %3947 to i32
  %4131 = and i32 %4130, 255
  %4132 = uitofp i32 %4131 to float
  %4133 = lshr i32 %4130, 8
  %4134 = and i32 %4133, 255
  %4135 = uitofp i32 %4134 to float
  %4136 = fmul fast float %4129, %4132
  %4137 = fadd fast float %4136, %4135
  %4138 = fmul fast float %4137, 0x3F70101000000000
  %4139 = add i32 %3922, 0
  %4140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4139, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4141 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4140, %dx.types.Handle %4124, float %4052, float %4055, float undef, float undef, i32 0, i32 0, i32 undef, float %4057, float %4059, float undef, float %4061, float %4063, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4142 = extractvalue %dx.types.ResRet.f32 %4141, 0
  %4143 = extractvalue %dx.types.ResRet.f32 %4141, 1
  %4144 = extractvalue %dx.types.ResRet.f32 %4141, 2
  %4145 = extractvalue %dx.types.ResRet.f32 %4141, 3
  %4146 = bitcast float %3941 to i32
  %4147 = and i32 %4146, 255
  %4148 = uitofp i32 %4147 to float
  %4149 = lshr i32 %4146, 8
  %4150 = and i32 %4149, 255
  %4151 = uitofp i32 %4150 to float
  %4152 = lshr i32 %4146, 16
  %4153 = and i32 %4152, 255
  %4154 = uitofp i32 %4153 to float
  %4155 = fmul fast float %4154, 0x3F70101000000000
  %4156 = fmul fast float %4142, %4148
  %4157 = fadd fast float %4156, %4151
  %4158 = fmul fast float %4157, 0x3F70101000000000
  %4159 = fadd fast float %4143, -5.000000e-01
  %4160 = fadd fast float %4145, -5.000000e-01
  %4161 = fmul fast float %4159, %4155
  %4162 = fmul fast float %4160, %4155
  %4163 = fadd fast float %4161, 5.000000e-01
  %4164 = fadd fast float %4162, 5.000000e-01
  %4165 = fmul fast float %4126, %3950
  %4166 = fmul fast float %4127, %3951
  %4167 = fmul fast float %4128, %3952
  %4168 = fmul fast float %4163, 2.000000e+00
  %4169 = fadd fast float %4168, -1.000000e+00
  %4170 = fmul fast float %4164, 2.000000e+00
  %4171 = fadd fast float %4170, -1.000000e+00
  %4172 = fadd fast float %4169, %4171
  %4173 = fmul fast float %4172, 5.000000e-01
  %4174 = fsub fast float %4169, %4171
  %4175 = fmul fast float %4174, 5.000000e-01
  %4176 = call float @dx.op.unary.f32(i32 6, float %4173)  ; FAbs(value)
  %4177 = fsub fast float 1.000000e+00, %4176
  %4178 = call float @dx.op.unary.f32(i32 6, float %4175)  ; FAbs(value)
  %4179 = fsub fast float %4177, %4178
  %4180 = call float @dx.op.dot3.f32(i32 55, float %4173, float %4175, float %4179, float %4173, float %4175, float %4179)  ; Dot3(ax,ay,az,bx,by,bz)
  %4181 = call float @dx.op.unary.f32(i32 25, float %4180)  ; Rsqrt(value)
  %4182 = fmul fast float %4173, %4181
  %4183 = fmul fast float %4175, %4181
  %4184 = fmul fast float %4181, %4179
  %4185 = fmul fast float %4184, %3916
  %4186 = fmul fast float %4184, %3917
  %4187 = fmul fast float %4184, %3918
  %4188 = fmul fast float %4182, %3938
  %4189 = fmul fast float %4182, %3939
  %4190 = fmul fast float %4182, %3940
  %4191 = fadd fast float %4188, %4185
  %4192 = fadd fast float %4189, %4186
  %4193 = fadd fast float %4190, %4187
  %4194 = fmul fast float %4183, %3944
  %4195 = fmul fast float %4183, %3945
  %4196 = fmul fast float %4183, %3946
  %4197 = fadd fast float %4191, %4194
  %4198 = fadd fast float %4192, %4195
  %4199 = fadd fast float %4193, %4196
  %4200 = call float @dx.op.dot3.f32(i32 55, float %4197, float %4198, float %4199, float %4197, float %4198, float %4199)  ; Dot3(ax,ay,az,bx,by,bz)
  %4201 = call float @dx.op.unary.f32(i32 25, float %4200)  ; Rsqrt(value)
  %4202 = fmul fast float %4197, %4201
  %4203 = fmul fast float %4198, %4201
  %4204 = fmul fast float %4199, %4201
  %4205 = icmp ne i32 %4121, 0
  %4206 = select i1 %4205, float 1.000000e+00, float 0.000000e+00
  %4207 = fmul fast float %4111, %4206
  %4208 = and i32 %4041, 1
  %4209 = icmp eq i32 %4208, 0
  br i1 %4209, label %4210, label %4214

; <label>:4210                                    ; preds = %4119
  %4211 = fsub fast float %4202, %3898
  %4212 = fsub fast float %4203, %3899
  %4213 = fsub fast float %4204, %3900
  br label %4214

; <label>:4214                                    ; preds = %4210, %4119
  %4215 = phi float [ %4211, %4210 ], [ %4202, %4119 ]
  %4216 = phi float [ %4212, %4210 ], [ %4203, %4119 ]
  %4217 = phi float [ %4213, %4210 ], [ %4204, %4119 ]
  %4218 = fmul float %4217, %4207
  %4219 = fmul float %4216, %4207
  %4220 = fmul float %4215, %4207
  %4221 = fadd fast float %4220, %3898
  %4222 = fadd fast float %4219, %3899
  %4223 = fadd fast float %4218, %3900
  %4224 = icmp ne i32 %4120, 0
  %4225 = select i1 %4224, float 1.000000e+00, float 0.000000e+00
  %4226 = fmul fast float %4111, %4225
  %4227 = fsub fast float %4165, %3905
  %4228 = fsub fast float %4166, %3906
  %4229 = fsub fast float %4167, %3907
  %4230 = fmul fast float %4227, %4226
  %4231 = fmul fast float %4228, %4226
  %4232 = fmul fast float %4229, %4226
  %4233 = fadd fast float %4230, %3905
  %4234 = fadd fast float %4231, %3906
  %4235 = fadd fast float %4232, %3907
  %4236 = fsub fast float %4138, %3904
  %4237 = fmul fast float %4236, %4226
  %4238 = fadd fast float %4237, %3904
  %4239 = fmul fast float %4226, %3894
  %4240 = fsub fast float %3894, %4239
  %4241 = fmul fast float %4226, %3893
  %4242 = fsub fast float %3893, %4241
  %4243 = bitcast float %3959 to i32
  %4244 = fadd fast float %4111, %3903
  %4245 = call float @dx.op.unary.f32(i32 7, float %4244)  ; Saturate(value)
  %4246 = fsub fast float %4158, %3902
  %4247 = fmul fast float %4246, %4207
  %4248 = fadd fast float %4247, %3902
  %4249 = fsub fast float %4144, %3901
  %4250 = fmul fast float %4249, %4207
  %4251 = fadd fast float %4250, %3901
  br i1 %4209, label %4260, label %4252

; <label>:4252                                    ; preds = %4214
  %4253 = and i32 %4041, 32768
  %4254 = icmp eq i32 %4253, 0
  br i1 %4254, label %4270, label %4255

; <label>:4255                                    ; preds = %4252
  %4256 = fmul fast float %4207, 1.270000e+02
  %4257 = fadd fast float %4256, %3890
  %4258 = fadd fast float %4256, %3891
  %4259 = fadd fast float %4256, %3892
  br label %4270

; <label>:4260                                    ; preds = %4214
  %4261 = fsub fast float 1.270000e+02, %3890
  %4262 = fsub fast float 1.270000e+02, %3891
  %4263 = fsub fast float 1.270000e+02, %3892
  %4264 = fmul fast float %4207, %4261
  %4265 = fmul fast float %4207, %4262
  %4266 = fmul fast float %4207, %4263
  %4267 = fadd fast float %4264, %3890
  %4268 = fadd fast float %4265, %3891
  %4269 = fadd fast float %4266, %3892
  br label %4270

; <label>:4270                                    ; preds = %4260, %4255, %4252
  %4271 = phi float [ %4257, %4255 ], [ %3890, %4252 ], [ %4267, %4260 ]
  %4272 = phi float [ %4258, %4255 ], [ %3891, %4252 ], [ %4268, %4260 ]
  %4273 = phi float [ %4259, %4255 ], [ %3892, %4252 ], [ %4269, %4260 ]
  %4274 = call float @dx.op.dot3.f32(i32 55, float %4165, float %4166, float %4167, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4276 = extractvalue %dx.types.CBufRet.f32 %4275, 0
  %4277 = extractvalue %dx.types.CBufRet.f32 %4275, 1
  %4278 = fmul fast float %4277, %4274
  %4279 = fadd fast float %4278, %4276
  %4280 = call float @dx.op.unary.f32(i32 7, float %4279)  ; Saturate(value)
  %4281 = bitcast float %3953 to i32
  %4282 = and i32 %4281, 65535
  %4283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4282)  ; LegacyF16ToF32(value)
  %4284 = lshr i32 %4281, 16
  %4285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4284)  ; LegacyF16ToF32(value)
  %4286 = fcmp fast oge float %4283, 0.000000e+00
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 0
  %4289 = select i1 %4286, float %4283, float %4288
  %4290 = fadd fast float %4289, %4285
  %4291 = fsub fast float %4280, %3889
  %4292 = fmul fast float %4291, %4111
  %4293 = fadd fast float %4292, %3889
  %4294 = fmul fast float %4290, %4111
  %4295 = call float @dx.op.binary.f32(i32 35, float %3888, float %4294)  ; FMax(a,b)
  %4296 = and i32 %4041, 16
  %4297 = icmp eq i32 %4296, 0
  br i1 %4297, label %4319, label %4298

; <label>:4298                                    ; preds = %4270
  %4299 = add i32 %3956, 0
  %4300 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4299, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4301 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4300, %dx.types.Handle %4124, float %4052, float %4055, float undef, float undef, i32 0, i32 0, i32 undef, float %4057, float %4059, float undef, float %4061, float %4063, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4302 = extractvalue %dx.types.ResRet.f32 %4301, 0
  %4303 = extractvalue %dx.types.ResRet.f32 %4301, 1
  %4304 = extractvalue %dx.types.ResRet.f32 %4301, 2
  %4305 = and i32 %4243, 65535
  %4306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4305)  ; LegacyF16ToF32(value)
  %4307 = fmul fast float %4302, %3950
  %4308 = fmul fast float %4303, %3951
  %4309 = fmul fast float %4304, %3952
  %4310 = and i32 %4041, 16384
  %4311 = icmp ne i32 %4310, 0
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 0
  %4314 = select i1 %4311, float %4313, float 1.000000e+00
  %4315 = fmul fast float %4314, %4306
  %4316 = fmul fast float %4307, %4315
  %4317 = fmul fast float %4308, %4315
  %4318 = fmul fast float %4309, %4315
  br label %4319

; <label>:4319                                    ; preds = %4298, %4270
  %4320 = phi float [ %4316, %4298 ], [ 0.000000e+00, %4270 ]
  %4321 = phi float [ %4317, %4298 ], [ 0.000000e+00, %4270 ]
  %4322 = phi float [ %4318, %4298 ], [ 0.000000e+00, %4270 ]
  %4323 = fsub fast float %4320, %3895
  %4324 = fsub fast float %4321, %3896
  %4325 = fsub fast float %4322, %3897
  %4326 = fmul fast float %4323, %4111
  %4327 = fmul fast float %4324, %4111
  %4328 = fmul fast float %4325, %4111
  %4329 = fadd fast float %4326, %3895
  %4330 = fadd fast float %4327, %3896
  %4331 = fadd fast float %4328, %3897
  br label %4009

; <label>:4332                                    ; preds = %4009
  br label %4333

; <label>:4333                                    ; preds = %4332, %3822
  %4334 = phi float [ 0.000000e+00, %3822 ], [ %4010, %4332 ]
  %4335 = phi float [ %3792, %3822 ], [ %4011, %4332 ]
  %4336 = phi float [ %3790, %3822 ], [ %4012, %4332 ]
  %4337 = phi float [ %3783, %3822 ], [ %4013, %4332 ]
  %4338 = phi float [ %3784, %3822 ], [ %4014, %4332 ]
  %4339 = phi float [ %3785, %3822 ], [ %4015, %4332 ]
  %4340 = phi float [ 0.000000e+00, %3822 ], [ %4016, %4332 ]
  %4341 = phi float [ 0.000000e+00, %3822 ], [ %4017, %4332 ]
  %4342 = phi float [ %3780, %3822 ], [ %4018, %4332 ]
  %4343 = phi float [ %3781, %3822 ], [ %4019, %4332 ]
  %4344 = phi float [ %3782, %3822 ], [ %4020, %4332 ]
  %4345 = phi float [ %3818, %3822 ], [ %4021, %4332 ]
  %4346 = phi float [ %3819, %3822 ], [ %4022, %4332 ]
  %4347 = phi float [ %3820, %3822 ], [ %4023, %4332 ]
  %4348 = phi float [ %3788, %3822 ], [ %4024, %4332 ]
  %4349 = phi float [ %3787, %3822 ], [ %4025, %4332 ]
  %4350 = phi float [ 0.000000e+00, %3822 ], [ %4026, %4332 ]
  %4351 = phi float [ %3786, %3822 ], [ %4027, %4332 ]
  %4352 = phi float [ %3777, %3822 ], [ %4028, %4332 ]
  %4353 = phi float [ %3778, %3822 ], [ %4029, %4332 ]
  %4354 = phi float [ %3779, %3822 ], [ %4030, %4332 ]
  %4355 = call float @dx.op.dot3.f32(i32 55, float %4345, float %4346, float %4347, float %4345, float %4346, float %4347)  ; Dot3(ax,ay,az,bx,by,bz)
  %4356 = call float @dx.op.unary.f32(i32 25, float %4355)  ; Rsqrt(value)
  %4357 = fmul fast float %4356, %4345
  %4358 = fmul fast float %4356, %4346
  %4359 = fmul fast float %4356, %4347
  %4360 = fadd fast float %4350, %1122
  %4361 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4362 = call float @dx.op.dot3.f32(i32 55, float %4357, float %4358, float %4359, float %4357, float %4358, float %4359)  ; Dot3(ax,ay,az,bx,by,bz)
  %4363 = call float @dx.op.unary.f32(i32 25, float %4362)  ; Rsqrt(value)
  %4364 = fmul fast float %4363, %4357
  %4365 = fmul fast float %4363, %4358
  %4366 = fmul fast float %4363, %4359
  br label %4367

; <label>:4367                                    ; preds = %4333, %3774
  %4368 = phi float [ %4364, %4333 ], [ %3818, %3774 ]
  %4369 = phi float [ %4365, %4333 ], [ %3819, %3774 ]
  %4370 = phi float [ %4366, %4333 ], [ %3820, %3774 ]
  %4371 = phi float [ %4352, %4333 ], [ %3777, %3774 ]
  %4372 = phi float [ %4353, %4333 ], [ %3778, %3774 ]
  %4373 = phi float [ %4354, %4333 ], [ %3779, %3774 ]
  %4374 = phi float [ %4342, %4333 ], [ %3780, %3774 ]
  %4375 = phi float [ %4343, %4333 ], [ %3781, %3774 ]
  %4376 = phi float [ %4344, %4333 ], [ %3782, %3774 ]
  %4377 = phi float [ %4337, %4333 ], [ %3783, %3774 ]
  %4378 = phi float [ %4338, %4333 ], [ %3784, %3774 ]
  %4379 = phi float [ %4339, %4333 ], [ %3785, %3774 ]
  %4380 = phi float [ %4351, %4333 ], [ %3786, %3774 ]
  %4381 = phi float [ %4361, %4333 ], [ %1122, %3774 ]
  %4382 = phi float [ %4349, %4333 ], [ %3787, %3774 ]
  %4383 = phi float [ %4348, %4333 ], [ %3788, %3774 ]
  %4384 = phi float [ %4341, %4333 ], [ 0.000000e+00, %3774 ]
  %4385 = phi float [ %4340, %4333 ], [ 0.000000e+00, %3774 ]
  %4386 = phi float [ %4334, %4333 ], [ 0.000000e+00, %3774 ]
  %4387 = phi float [ %4335, %4333 ], [ %3792, %3774 ]
  %4388 = phi float [ %4336, %4333 ], [ %3790, %3774 ]
  %4389 = fadd fast float %4380, 0xBFB99999A0000000
  %4390 = call float @dx.op.unary.f32(i32 7, float %4389)  ; Saturate(value)
  %4391 = fmul fast float %4390, 0x3FF1C71C80000000
  %4392 = call float @dx.op.binary.f32(i32 36, float %4380, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4393 = fsub fast float 1.000000e+00, %4391
  %4394 = call float @dx.op.unary.f32(i32 7, float %4393)  ; Saturate(value)
  %4395 = fmul fast float %4394, %4371
  %4396 = fmul fast float %4394, %4372
  %4397 = fmul fast float %4394, %4373
  %4398 = call float @dx.op.unary.f32(i32 7, float %4395)  ; Saturate(value)
  %4399 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4400 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4401 = fmul fast float %4391, %4371
  %4402 = fmul fast float %4391, %4372
  %4403 = fmul fast float %4391, %4373
  %4404 = fadd fast float %4401, %4392
  %4405 = fadd fast float %4402, %4392
  %4406 = fadd fast float %4403, %4392
  %4407 = call float @dx.op.unary.f32(i32 7, float %4404)  ; Saturate(value)
  %4408 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4409 = call float @dx.op.unary.f32(i32 7, float %4406)  ; Saturate(value)
  %4410 = call float @dx.op.unary.f32(i32 7, float %4382)  ; Saturate(value)
  %4411 = call float @dx.op.binary.f32(i32 36, float %4377, float 1.270000e+02)  ; FMin(a,b)
  %4412 = call float @dx.op.binary.f32(i32 36, float %4378, float 1.270000e+02)  ; FMin(a,b)
  %4413 = call float @dx.op.binary.f32(i32 36, float %4379, float 1.270000e+02)  ; FMin(a,b)
  %4414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.i32 %4414, 3
  %4416 = and i32 %4415, 8
  %4417 = icmp ne i32 %4416, 0
  %4418 = call float @dx.op.binary.f32(i32 35, float %4398, float %4371)  ; FMax(a,b)
  %4419 = call float @dx.op.binary.f32(i32 35, float %4399, float %4371)  ; FMax(a,b)
  %4420 = call float @dx.op.binary.f32(i32 35, float %4400, float %4371)  ; FMax(a,b)
  %4421 = call float @dx.op.dot3.f32(i32 55, float %4398, float %4399, float %4400, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4422 = select i1 %240, float %4371, float %4398
  %4423 = select i1 %240, float %4421, float %4399
  %4424 = select i1 %240, float 1.000000e+00, float %4400
  %4425 = select i1 %4417, float %4418, float %4422
  %4426 = select i1 %4417, float %4419, float %4423
  %4427 = select i1 %4417, float %4420, float %4424
  %4428 = and i32 %216, 3
  %4429 = select i1 %210, i32 %4428, i32 0
  %4430 = icmp eq i32 %4429, 1
  br i1 %4430, label %4431, label %4507

; <label>:4431                                    ; preds = %4367
  %4432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.f32 %4432, 0
  %4434 = extractvalue %dx.types.CBufRet.f32 %4432, 1
  %4435 = fadd fast float %4433, %179
  %4436 = fadd fast float %4434, %180
  %4437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.f32 %4437, 0
  %4439 = extractvalue %dx.types.CBufRet.f32 %4437, 1
  %4440 = fsub fast float %4435, %4438
  %4441 = fsub fast float %4436, %4439
  %4442 = fmul fast float %4440, %4440
  %4443 = fmul fast float %4441, %4441
  %4444 = fadd fast float %4442, %4443
  %4445 = call float @dx.op.unary.f32(i32 24, float %4444)  ; Sqrt(value)
  %4446 = extractvalue %dx.types.CBufRet.f32 %4437, 2
  %4447 = fcmp fast olt float %4445, %4446
  br i1 %4447, label %4448, label %4501

; <label>:4448                                    ; preds = %4431
  %4449 = extractvalue %dx.types.CBufRet.f32 %4432, 2
  %4450 = fadd fast float %4449, %181
  %4451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4452 = extractvalue %dx.types.CBufRet.f32 %4451, 0
  %4453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4454 = extractvalue %dx.types.CBufRet.f32 %4453, 0
  %4455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4456 = extractvalue %dx.types.CBufRet.f32 %4455, 0
  %4457 = extractvalue %dx.types.CBufRet.f32 %4451, 1
  %4458 = extractvalue %dx.types.CBufRet.f32 %4453, 1
  %4459 = extractvalue %dx.types.CBufRet.f32 %4455, 1
  %4460 = extractvalue %dx.types.CBufRet.f32 %4451, 3
  %4461 = extractvalue %dx.types.CBufRet.f32 %4453, 3
  %4462 = extractvalue %dx.types.CBufRet.f32 %4455, 3
  %4463 = fadd fast float %4460, %4435
  %4464 = fadd fast float %4461, %4436
  %4465 = fadd fast float %4450, %4462
  %4466 = fmul fast float %4463, %4452
  %4467 = call float @dx.op.tertiary.f32(i32 46, float %4464, float %4454, float %4466)  ; FMad(a,b,c)
  %4468 = call float @dx.op.tertiary.f32(i32 46, float %4465, float %4456, float %4467)  ; FMad(a,b,c)
  %4469 = fmul fast float %4463, %4457
  %4470 = call float @dx.op.tertiary.f32(i32 46, float %4464, float %4458, float %4469)  ; FMad(a,b,c)
  %4471 = call float @dx.op.tertiary.f32(i32 46, float %4465, float %4459, float %4470)  ; FMad(a,b,c)
  %4472 = fsub fast float %4468, %4460
  %4473 = fsub fast float %4471, %4461
  %4474 = fsub fast float %4472, %4438
  %4475 = fadd fast float %4474, %4446
  %4476 = fsub fast float %4473, %4439
  %4477 = fadd fast float %4476, %4446
  %4478 = extractvalue %dx.types.CBufRet.f32 %4437, 3
  %4479 = fmul fast float %4475, %4478
  %4480 = fmul fast float %4477, %4478
  %4481 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4482 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4483 = fsub fast float 1.000000e+00, %4481
  %4484 = fsub fast float 1.000000e+00, %4482
  %4485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %36, float %4483, float %4484, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4486 = extractvalue %dx.types.ResRet.f32 %4485, 0
  %4487 = fcmp fast ugt float %4486, 0.000000e+00
  br i1 %4487, label %4488, label %4501

; <label>:4488                                    ; preds = %4448
  %4489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4490 = extractvalue %dx.types.CBufRet.f32 %4489, 2
  %4491 = fmul fast float %4490, %4486
  %4492 = extractvalue %dx.types.CBufRet.f32 %4489, 3
  %4493 = fadd fast float %4492, %4491
  %4494 = extractvalue %dx.types.CBufRet.f32 %4455, 2
  %4495 = fadd fast float %4493, %4462
  %4496 = fmul fast float %4468, %4456
  %4497 = call float @dx.op.tertiary.f32(i32 46, float %4471, float %4459, float %4496)  ; FMad(a,b,c)
  %4498 = call float @dx.op.tertiary.f32(i32 46, float %4495, float %4494, float %4497)  ; FMad(a,b,c)
  %4499 = fsub fast float %4498, %4462
  %4500 = fsub fast float %4499, %4449
  br label %4501

; <label>:4501                                    ; preds = %4488, %4448, %4431
  %4502 = phi i1 [ true, %4488 ], [ false, %4448 ], [ false, %4431 ]
  %4503 = phi float [ %4500, %4488 ], [ -1.310720e+05, %4448 ], [ -1.310720e+05, %4431 ]
  %4504 = fsub fast float %4503, %181
  %4505 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4506 = select i1 %4502, float %4505, float 1.000000e+00
  br label %4507

; <label>:4507                                    ; preds = %4501, %4367
  %4508 = phi float [ %4506, %4501 ], [ 0.000000e+00, %4367 ]
  %4509 = icmp eq i32 %4429, 3
  %4510 = select i1 %4509, float 1.000000e+00, float %4508
  %4511 = call float @dx.op.binary.f32(i32 35, float %4386, float %4510)  ; FMax(a,b)
  %4512 = fcmp fast olt float %4510, 1.000000e+00
  %4513 = fcmp uge float %57, 0.000000e+00
  %4514 = and i1 %4513, %4512
  br i1 %4514, label %4515, label %4525

; <label>:4515                                    ; preds = %4507
  %4516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %57, float %58, float %59, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4517 = extractvalue %dx.types.ResRet.f32 %4516, 0
  %4518 = extractvalue %dx.types.ResRet.f32 %4516, 1
  %4519 = extractvalue %dx.types.ResRet.f32 %4516, 2
  %4520 = fadd fast float %4517, %4511
  %4521 = fcmp ule float %56, 0.000000e+00
  %4522 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4523 = select i1 %4521, float %4522, float 1.000000e+00
  %4524 = fmul fast float %4523, %4519
  br label %4525

; <label>:4525                                    ; preds = %4515, %4507
  %4526 = phi float [ %4520, %4515 ], [ %4511, %4507 ]
  %4527 = phi float [ %4518, %4515 ], [ 0.000000e+00, %4507 ]
  %4528 = phi float [ %4524, %4515 ], [ 0.000000e+00, %4507 ]
  %4529 = call float @dx.op.unary.f32(i32 7, float %4526)  ; Saturate(value)
  %4530 = call float @dx.op.unary.f32(i32 7, float %4527)  ; Saturate(value)
  %4531 = call float @dx.op.unary.f32(i32 7, float %4528)  ; Saturate(value)
  %4532 = fcmp fast une float %4530, 0.000000e+00
  %4533 = fcmp fast une float %4531, 0.000000e+00
  %4534 = or i1 %4532, %4533
  br i1 %4534, label %4535, label %5094

; <label>:4535                                    ; preds = %4525
  br i1 %4532, label %4536, label %4809

; <label>:4536                                    ; preds = %4535
  %4537 = call float @dx.op.unary.f32(i32 23, float %4383)  ; Log(value)
  %4538 = fmul fast float %4537, 4.000000e+00
  %4539 = call float @dx.op.unary.f32(i32 21, float %4538)  ; Exp(value)
  %4540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4541 = extractvalue %dx.types.CBufRet.f32 %4540, 0
  %4542 = fmul fast float %4541, %44
  %4543 = fmul fast float %4541, %45
  %4544 = fmul fast float %4541, %46
  %4545 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %4546 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %4547 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %4548 = call float @dx.op.unary.f32(i32 23, float %4545)  ; Log(value)
  %4549 = call float @dx.op.unary.f32(i32 23, float %4546)  ; Log(value)
  %4550 = call float @dx.op.unary.f32(i32 23, float %4547)  ; Log(value)
  %4551 = fmul fast float %4548, 4.000000e+00
  %4552 = fmul fast float %4549, 4.000000e+00
  %4553 = fmul fast float %4550, 4.000000e+00
  %4554 = call float @dx.op.unary.f32(i32 21, float %4551)  ; Exp(value)
  %4555 = call float @dx.op.unary.f32(i32 21, float %4552)  ; Exp(value)
  %4556 = call float @dx.op.unary.f32(i32 21, float %4553)  ; Exp(value)
  %4557 = fadd fast float %4555, %4554
  %4558 = fadd fast float %4557, %4556
  %4559 = fdiv fast float 1.000000e+00, %4558
  %4560 = fmul fast float %4559, %4554
  %4561 = fcmp fast ogt float %53, 0.000000e+00
  %4562 = fcmp fast ogt float %54, 0.000000e+00
  %4563 = fcmp fast ogt float %55, 0.000000e+00
  %4564 = fcmp fast olt float %53, 0.000000e+00
  %4565 = fcmp fast olt float %54, 0.000000e+00
  %4566 = fcmp fast olt float %55, 0.000000e+00
  %4567 = zext i1 %4561 to i32
  %4568 = zext i1 %4562 to i32
  %4569 = zext i1 %4563 to i32
  %4570 = zext i1 %4564 to i32
  %4571 = zext i1 %4565 to i32
  %4572 = zext i1 %4566 to i32
  %4573 = sub nsw i32 %4567, %4570
  %4574 = sub nsw i32 %4568, %4571
  %4575 = sub nsw i32 %4569, %4572
  %4576 = call float @dx.op.unary.f32(i32 83, float %4542)  ; DerivCoarseX(value)
  %4577 = call float @dx.op.unary.f32(i32 83, float %4543)  ; DerivCoarseX(value)
  %4578 = call float @dx.op.unary.f32(i32 83, float %4544)  ; DerivCoarseX(value)
  %4579 = call float @dx.op.unary.f32(i32 84, float %4542)  ; DerivCoarseY(value)
  %4580 = call float @dx.op.unary.f32(i32 84, float %4543)  ; DerivCoarseY(value)
  %4581 = call float @dx.op.unary.f32(i32 84, float %4544)  ; DerivCoarseY(value)
  %4582 = fcmp fast ole float %251, %4560
  %4583 = fmul fast float %4559, %4557
  %4584 = fcmp fast ole float %251, %4583
  %4585 = select i1 %4584, float %4544, float %4542
  %4586 = select i1 %4584, float %4542, float %4543
  %4587 = select i1 %4582, float %4543, float %4585
  %4588 = select i1 %4582, float %4544, float %4586
  %4589 = select i1 %4584, float %4578, float %4576
  %4590 = select i1 %4584, float %4576, float %4577
  %4591 = select i1 %4582, float %4577, float %4589
  %4592 = select i1 %4582, float %4578, float %4590
  %4593 = select i1 %4584, float %4581, float %4579
  %4594 = select i1 %4584, float %4579, float %4580
  %4595 = select i1 %4582, float %4580, float %4593
  %4596 = select i1 %4582, float %4581, float %4594
  %4597 = call float @dx.op.unary.f32(i32 27, float %4587)  ; Round_ni(value)
  %4598 = call float @dx.op.unary.f32(i32 27, float %4588)  ; Round_ni(value)
  %4599 = fptosi float %4597 to i32
  %4600 = fptosi float %4598 to i32
  %4601 = xor i32 %4600, %4599
  %4602 = sitofp i32 %4601 to float
  %4603 = fptosi float %4602 to i32
  %4604 = sitofp i32 %4603 to float
  %4605 = fmul fast float %4604, 0x3FE3C6EF40000000
  %4606 = frem fast float %4597, 2.560000e+02
  %4607 = frem fast float %4598, 2.560000e+02
  %4608 = fptoui float %4606 to i32
  %4609 = fptoui float %4607 to i32
  %4610 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %4608, i32 %4609, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4611 = extractvalue %dx.types.ResRet.f32 %4610, 0
  %4612 = extractvalue %dx.types.ResRet.f32 %4610, 1
  %4613 = extractvalue %dx.types.ResRet.f32 %4610, 2
  %4614 = fadd fast float %4611, %4605
  %4615 = fadd fast float %4612, %4605
  %4616 = fadd fast float %4613, %4605
  %4617 = call float @dx.op.unary.f32(i32 22, float %4614)  ; Frc(value)
  %4618 = call float @dx.op.unary.f32(i32 22, float %4615)  ; Frc(value)
  %4619 = call float @dx.op.unary.f32(i32 22, float %4616)  ; Frc(value)
  %4620 = fmul fast float %4619, 0x401921FB60000000
  %4621 = call float @dx.op.unary.f32(i32 13, float %4620)  ; Sin(value)
  %4622 = call float @dx.op.unary.f32(i32 12, float %4620)  ; Cos(value)
  %4623 = fsub fast float -0.000000e+00, %4622
  %4624 = fmul fast float %4622, %4587
  %4625 = call float @dx.op.tertiary.f32(i32 46, float %4621, float %4588, float %4624)  ; FMad(a,b,c)
  %4626 = fmul fast float %4621, %4587
  %4627 = call float @dx.op.tertiary.f32(i32 46, float %4623, float %4588, float %4626)  ; FMad(a,b,c)
  %4628 = fadd fast float %4625, %4617
  %4629 = fadd fast float %4627, %4618
  %4630 = extractvalue %dx.types.CBufRet.f32 %4540, 3
  %4631 = bitcast float %4630 to i32
  %4632 = icmp eq i32 %4631, 0
  br i1 %4632, label %4671, label %4633

; <label>:4633                                    ; preds = %4536
  %4634 = add i32 %4631, 0
  %4635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4634, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4636 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4635, %dx.types.Handle %89, float %4628, float %4629, float undef, float undef, i32 0, i32 0, i32 undef, float %4591, float %4592, float undef, float %4595, float %4596, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4637 = extractvalue %dx.types.ResRet.f32 %4636, 0
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 1
  %4640 = extractvalue %dx.types.CBufRet.f32 %4638, 2
  %4641 = fsub fast float 1.000000e+00, %4530
  %4642 = call float @dx.op.binary.f32(i32 35, float %4641, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4643 = bitcast float %4530 to i32
  %4644 = sitofp i32 %4643 to float
  %4645 = fadd fast float %4644, 0xC1CFBF8940000000
  %4646 = fmul fast float %4640, %4645
  %4647 = fadd fast float %4646, 0x41CFBF8940000000
  %4648 = fptosi float %4647 to i32
  %4649 = bitcast i32 %4648 to float
  %4650 = bitcast float %4642 to i32
  %4651 = sitofp i32 %4650 to float
  %4652 = fadd fast float %4651, 0xC1CFBF8940000000
  %4653 = fmul fast float %4652, %4640
  %4654 = fadd fast float %4653, 0x41CFBF8940000000
  %4655 = fptosi float %4654 to i32
  %4656 = bitcast i32 %4655 to float
  %4657 = fmul fast float %4649, %4639
  %4658 = fmul fast float %4656, %4639
  %4659 = fsub fast float %4642, %4657
  %4660 = fadd fast float %4658, %4642
  %4661 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4662 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4663 = fsub fast float %4637, %4661
  %4664 = fsub fast float %4662, %4661
  %4665 = bitcast float %4664 to i32
  %4666 = sub nsw i32 2129859010, %4665
  %4667 = bitcast i32 %4666 to float
  %4668 = fmul fast float %4667, %4663
  %4669 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4670 = fcmp fast olt float %4669, 0x3F70101020000000
  br i1 %4670, label %4809, label %4671

; <label>:4671                                    ; preds = %4633, %4536
  %4672 = phi float [ %4669, %4633 ], [ %4530, %4536 ]
  %4673 = fmul fast float %4672, %4539
  %4674 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4675 = extractvalue %dx.types.CBufRet.i32 %4674, 1
  %4676 = extractvalue %dx.types.CBufRet.i32 %4674, 0
  %4677 = add i32 %4676, 0
  %4678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4677, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4679 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4678, %dx.types.Handle %88, float %4628, float %4629, float undef, float undef, i32 0, i32 0, i32 undef, float %4591, float %4592, float undef, float %4595, float %4596, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4680 = extractvalue %dx.types.ResRet.f32 %4679, 0
  %4681 = extractvalue %dx.types.ResRet.f32 %4679, 1
  %4682 = extractvalue %dx.types.ResRet.f32 %4679, 2
  %4683 = extractvalue %dx.types.ResRet.f32 %4679, 3
  %4684 = and i32 %4675, 255
  %4685 = uitofp i32 %4684 to float
  %4686 = lshr i32 %4675, 8
  %4687 = and i32 %4686, 255
  %4688 = uitofp i32 %4687 to float
  %4689 = fmul fast float %4683, %4685
  %4690 = fadd fast float %4689, %4688
  %4691 = fmul fast float %4690, 0x3F70101000000000
  %4692 = fadd fast float %4691, 0xBFB99999A0000000
  %4693 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4694 = fmul fast float %4693, 0x3FF1C71C80000000
  %4695 = call float @dx.op.binary.f32(i32 36, float %4691, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4696 = fsub fast float 1.000000e+00, %4694
  %4697 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4698 = fmul fast float %4697, %4680
  %4699 = fmul fast float %4697, %4681
  %4700 = fmul fast float %4697, %4682
  %4701 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4702 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4703 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4704 = fmul fast float %4694, %4680
  %4705 = fmul fast float %4694, %4681
  %4706 = fmul fast float %4694, %4682
  %4707 = fadd fast float %4704, %4695
  %4708 = fadd fast float %4705, %4695
  %4709 = fadd fast float %4706, %4695
  %4710 = call float @dx.op.unary.f32(i32 7, float %4707)  ; Saturate(value)
  %4711 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4712 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4713 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4714 = extractvalue %dx.types.CBufRet.i32 %4713, 3
  %4715 = extractvalue %dx.types.CBufRet.i32 %4713, 2
  %4716 = add i32 %4715, 0
  %4717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4716, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4718 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4717, %dx.types.Handle %88, float %4628, float %4629, float undef, float undef, i32 0, i32 0, i32 undef, float %4591, float %4592, float undef, float %4595, float %4596, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4719 = extractvalue %dx.types.ResRet.f32 %4718, 0
  %4720 = extractvalue %dx.types.ResRet.f32 %4718, 1
  %4721 = extractvalue %dx.types.ResRet.f32 %4718, 2
  %4722 = extractvalue %dx.types.ResRet.f32 %4718, 3
  %4723 = and i32 %4714, 255
  %4724 = uitofp i32 %4723 to float
  %4725 = lshr i32 %4714, 8
  %4726 = and i32 %4725, 255
  %4727 = uitofp i32 %4726 to float
  %4728 = lshr i32 %4714, 16
  %4729 = and i32 %4728, 255
  %4730 = uitofp i32 %4729 to float
  %4731 = fmul fast float %4730, 0x3F70101000000000
  %4732 = fmul fast float %4719, %4724
  %4733 = fadd fast float %4732, %4727
  %4734 = fmul fast float %4733, 0x3F70101000000000
  %4735 = fadd fast float %4720, -5.000000e-01
  %4736 = fadd fast float %4722, -5.000000e-01
  %4737 = fmul fast float %4735, %4731
  %4738 = fmul fast float %4736, %4731
  %4739 = fadd fast float %4737, 5.000000e-01
  %4740 = fadd fast float %4738, 5.000000e-01
  %4741 = fmul fast float %4739, 2.000000e+00
  %4742 = fadd fast float %4741, -1.000000e+00
  %4743 = fmul fast float %4740, 2.000000e+00
  %4744 = fadd fast float %4743, -1.000000e+00
  %4745 = fadd fast float %4742, %4744
  %4746 = fmul fast float %4745, 5.000000e-01
  %4747 = fsub fast float %4742, %4744
  %4748 = fmul fast float %4747, 5.000000e-01
  %4749 = call float @dx.op.unary.f32(i32 6, float %4746)  ; FAbs(value)
  %4750 = fsub fast float 1.000000e+00, %4749
  %4751 = call float @dx.op.unary.f32(i32 6, float %4748)  ; FAbs(value)
  %4752 = fsub fast float %4750, %4751
  %4753 = call float @dx.op.dot3.f32(i32 55, float %4746, float %4748, float %4752, float %4746, float %4748, float %4752)  ; Dot3(ax,ay,az,bx,by,bz)
  %4754 = call float @dx.op.unary.f32(i32 25, float %4753)  ; Rsqrt(value)
  %4755 = fmul fast float %4746, %4754
  %4756 = fmul fast float %4748, %4754
  %4757 = select i1 %4584, i32 %4574, i32 %4575
  %4758 = select i1 %4582, i32 %4573, i32 %4757
  %4759 = sitofp i32 %4758 to float
  %4760 = fmul fast float %4752, %4759
  %4761 = fmul fast float %4760, %4754
  %4762 = select i1 %4584, float %4761, float %4756
  %4763 = select i1 %4584, float %4756, float %4761
  %4764 = select i1 %4582, float %4761, float %4755
  %4765 = select i1 %4582, float %4756, float %4762
  %4766 = select i1 %4582, float %4755, float %4763
  %4767 = fsub fast float %4701, %4425
  %4768 = fsub fast float %4702, %4426
  %4769 = fsub fast float %4703, %4427
  %4770 = fmul fast float %4767, %4673
  %4771 = fmul fast float %4768, %4673
  %4772 = fmul fast float %4769, %4673
  %4773 = fadd fast float %4770, %4425
  %4774 = fadd fast float %4771, %4426
  %4775 = fadd fast float %4772, %4427
  %4776 = fsub fast float %4710, %4407
  %4777 = fsub fast float %4711, %4408
  %4778 = fsub fast float %4712, %4409
  %4779 = fmul fast float %4776, %4673
  %4780 = fmul fast float %4777, %4673
  %4781 = fmul fast float %4778, %4673
  %4782 = fadd fast float %4779, %4407
  %4783 = fadd fast float %4780, %4408
  %4784 = fadd fast float %4781, %4409
  %4785 = fadd fast float %4764, %4368
  %4786 = fadd fast float %4765, %4369
  %4787 = fadd fast float %4766, %4370
  %4788 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float %4785, float %4786, float %4787)  ; Dot3(ax,ay,az,bx,by,bz)
  %4789 = call float @dx.op.unary.f32(i32 25, float %4788)  ; Rsqrt(value)
  %4790 = fmul fast float %4785, %4789
  %4791 = fmul fast float %4786, %4789
  %4792 = fmul fast float %4787, %4789
  %4793 = fsub fast float %4790, %4368
  %4794 = fsub fast float %4791, %4369
  %4795 = fsub fast float %4792, %4370
  %4796 = fmul fast float %4793, %4673
  %4797 = fmul fast float %4794, %4673
  %4798 = fmul fast float %4795, %4673
  %4799 = fadd fast float %4796, %4368
  %4800 = fadd fast float %4797, %4369
  %4801 = fadd fast float %4798, %4370
  %4802 = call float @dx.op.binary.f32(i32 36, float %4383, float %4721)  ; FMin(a,b)
  %4803 = fsub fast float %4802, %4383
  %4804 = fmul fast float %4803, %4673
  %4805 = fadd fast float %4804, %4383
  %4806 = fsub fast float %4734, %4410
  %4807 = fmul fast float %4806, %4673
  %4808 = fadd fast float %4807, %4410
  br label %4809

; <label>:4809                                    ; preds = %4671, %4633, %4535
  %4810 = phi float [ %4782, %4671 ], [ %4407, %4633 ], [ %4407, %4535 ]
  %4811 = phi float [ %4783, %4671 ], [ %4408, %4633 ], [ %4408, %4535 ]
  %4812 = phi float [ %4784, %4671 ], [ %4409, %4633 ], [ %4409, %4535 ]
  %4813 = phi float [ %4773, %4671 ], [ %4425, %4633 ], [ %4425, %4535 ]
  %4814 = phi float [ %4774, %4671 ], [ %4426, %4633 ], [ %4426, %4535 ]
  %4815 = phi float [ %4775, %4671 ], [ %4427, %4633 ], [ %4427, %4535 ]
  %4816 = phi float [ %4799, %4671 ], [ %4368, %4633 ], [ %4368, %4535 ]
  %4817 = phi float [ %4800, %4671 ], [ %4369, %4633 ], [ %4369, %4535 ]
  %4818 = phi float [ %4801, %4671 ], [ %4370, %4633 ], [ %4370, %4535 ]
  %4819 = phi float [ %4808, %4671 ], [ %4410, %4633 ], [ %4410, %4535 ]
  %4820 = phi float [ %4805, %4671 ], [ %4383, %4633 ], [ %4383, %4535 ]
  br i1 %4533, label %4821, label %5094

; <label>:4821                                    ; preds = %4809
  %4822 = call float @dx.op.unary.f32(i32 23, float %4820)  ; Log(value)
  %4823 = fmul fast float %4822, 4.000000e+00
  %4824 = call float @dx.op.unary.f32(i32 21, float %4823)  ; Exp(value)
  %4825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4826 = extractvalue %dx.types.CBufRet.f32 %4825, 0
  %4827 = fmul fast float %4826, %44
  %4828 = fmul fast float %4826, %45
  %4829 = fmul fast float %4826, %46
  %4830 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %4831 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %4832 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %4833 = call float @dx.op.unary.f32(i32 23, float %4830)  ; Log(value)
  %4834 = call float @dx.op.unary.f32(i32 23, float %4831)  ; Log(value)
  %4835 = call float @dx.op.unary.f32(i32 23, float %4832)  ; Log(value)
  %4836 = fmul fast float %4833, 4.000000e+00
  %4837 = fmul fast float %4834, 4.000000e+00
  %4838 = fmul fast float %4835, 4.000000e+00
  %4839 = call float @dx.op.unary.f32(i32 21, float %4836)  ; Exp(value)
  %4840 = call float @dx.op.unary.f32(i32 21, float %4837)  ; Exp(value)
  %4841 = call float @dx.op.unary.f32(i32 21, float %4838)  ; Exp(value)
  %4842 = fadd fast float %4840, %4839
  %4843 = fadd fast float %4842, %4841
  %4844 = fdiv fast float 1.000000e+00, %4843
  %4845 = fmul fast float %4844, %4839
  %4846 = fcmp fast ogt float %53, 0.000000e+00
  %4847 = fcmp fast ogt float %54, 0.000000e+00
  %4848 = fcmp fast ogt float %55, 0.000000e+00
  %4849 = fcmp fast olt float %53, 0.000000e+00
  %4850 = fcmp fast olt float %54, 0.000000e+00
  %4851 = fcmp fast olt float %55, 0.000000e+00
  %4852 = zext i1 %4846 to i32
  %4853 = zext i1 %4847 to i32
  %4854 = zext i1 %4848 to i32
  %4855 = zext i1 %4849 to i32
  %4856 = zext i1 %4850 to i32
  %4857 = zext i1 %4851 to i32
  %4858 = sub nsw i32 %4852, %4855
  %4859 = sub nsw i32 %4853, %4856
  %4860 = sub nsw i32 %4854, %4857
  %4861 = call float @dx.op.unary.f32(i32 83, float %4827)  ; DerivCoarseX(value)
  %4862 = call float @dx.op.unary.f32(i32 83, float %4828)  ; DerivCoarseX(value)
  %4863 = call float @dx.op.unary.f32(i32 83, float %4829)  ; DerivCoarseX(value)
  %4864 = call float @dx.op.unary.f32(i32 84, float %4827)  ; DerivCoarseY(value)
  %4865 = call float @dx.op.unary.f32(i32 84, float %4828)  ; DerivCoarseY(value)
  %4866 = call float @dx.op.unary.f32(i32 84, float %4829)  ; DerivCoarseY(value)
  %4867 = fcmp fast ole float %251, %4845
  %4868 = fmul fast float %4844, %4842
  %4869 = fcmp fast ole float %251, %4868
  %4870 = select i1 %4869, float %4829, float %4827
  %4871 = select i1 %4869, float %4827, float %4828
  %4872 = select i1 %4867, float %4828, float %4870
  %4873 = select i1 %4867, float %4829, float %4871
  %4874 = select i1 %4869, float %4863, float %4861
  %4875 = select i1 %4869, float %4861, float %4862
  %4876 = select i1 %4867, float %4862, float %4874
  %4877 = select i1 %4867, float %4863, float %4875
  %4878 = select i1 %4869, float %4866, float %4864
  %4879 = select i1 %4869, float %4864, float %4865
  %4880 = select i1 %4867, float %4865, float %4878
  %4881 = select i1 %4867, float %4866, float %4879
  %4882 = call float @dx.op.unary.f32(i32 27, float %4872)  ; Round_ni(value)
  %4883 = call float @dx.op.unary.f32(i32 27, float %4873)  ; Round_ni(value)
  %4884 = fptosi float %4882 to i32
  %4885 = fptosi float %4883 to i32
  %4886 = xor i32 %4885, %4884
  %4887 = sitofp i32 %4886 to float
  %4888 = fptosi float %4887 to i32
  %4889 = sitofp i32 %4888 to float
  %4890 = fmul fast float %4889, 0x3FE3C6EF40000000
  %4891 = frem fast float %4882, 2.560000e+02
  %4892 = frem fast float %4883, 2.560000e+02
  %4893 = fptoui float %4891 to i32
  %4894 = fptoui float %4892 to i32
  %4895 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %4893, i32 %4894, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4896 = extractvalue %dx.types.ResRet.f32 %4895, 0
  %4897 = extractvalue %dx.types.ResRet.f32 %4895, 1
  %4898 = extractvalue %dx.types.ResRet.f32 %4895, 2
  %4899 = fadd fast float %4896, %4890
  %4900 = fadd fast float %4897, %4890
  %4901 = fadd fast float %4898, %4890
  %4902 = call float @dx.op.unary.f32(i32 22, float %4899)  ; Frc(value)
  %4903 = call float @dx.op.unary.f32(i32 22, float %4900)  ; Frc(value)
  %4904 = call float @dx.op.unary.f32(i32 22, float %4901)  ; Frc(value)
  %4905 = fmul fast float %4904, 0x401921FB60000000
  %4906 = call float @dx.op.unary.f32(i32 13, float %4905)  ; Sin(value)
  %4907 = call float @dx.op.unary.f32(i32 12, float %4905)  ; Cos(value)
  %4908 = fsub fast float -0.000000e+00, %4907
  %4909 = fmul fast float %4907, %4872
  %4910 = call float @dx.op.tertiary.f32(i32 46, float %4906, float %4873, float %4909)  ; FMad(a,b,c)
  %4911 = fmul fast float %4906, %4872
  %4912 = call float @dx.op.tertiary.f32(i32 46, float %4908, float %4873, float %4911)  ; FMad(a,b,c)
  %4913 = fadd fast float %4910, %4902
  %4914 = fadd fast float %4912, %4903
  %4915 = extractvalue %dx.types.CBufRet.f32 %4825, 3
  %4916 = bitcast float %4915 to i32
  %4917 = icmp eq i32 %4916, 0
  br i1 %4917, label %4956, label %4918

; <label>:4918                                    ; preds = %4821
  %4919 = add i32 %4916, 0
  %4920 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4919, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4921 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4920, %dx.types.Handle %89, float %4913, float %4914, float undef, float undef, i32 0, i32 0, i32 undef, float %4876, float %4877, float undef, float %4880, float %4881, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4922 = extractvalue %dx.types.ResRet.f32 %4921, 0
  %4923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4924 = extractvalue %dx.types.CBufRet.f32 %4923, 1
  %4925 = extractvalue %dx.types.CBufRet.f32 %4923, 2
  %4926 = fsub fast float 1.000000e+00, %4531
  %4927 = call float @dx.op.binary.f32(i32 35, float %4926, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4928 = bitcast float %4531 to i32
  %4929 = sitofp i32 %4928 to float
  %4930 = fadd fast float %4929, 0xC1CFBF8940000000
  %4931 = fmul fast float %4925, %4930
  %4932 = fadd fast float %4931, 0x41CFBF8940000000
  %4933 = fptosi float %4932 to i32
  %4934 = bitcast i32 %4933 to float
  %4935 = bitcast float %4927 to i32
  %4936 = sitofp i32 %4935 to float
  %4937 = fadd fast float %4936, 0xC1CFBF8940000000
  %4938 = fmul fast float %4937, %4925
  %4939 = fadd fast float %4938, 0x41CFBF8940000000
  %4940 = fptosi float %4939 to i32
  %4941 = bitcast i32 %4940 to float
  %4942 = fmul fast float %4934, %4924
  %4943 = fmul fast float %4941, %4924
  %4944 = fsub fast float %4927, %4942
  %4945 = fadd fast float %4943, %4927
  %4946 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4947 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4948 = fsub fast float %4922, %4946
  %4949 = fsub fast float %4947, %4946
  %4950 = bitcast float %4949 to i32
  %4951 = sub nsw i32 2129859010, %4950
  %4952 = bitcast i32 %4951 to float
  %4953 = fmul fast float %4952, %4948
  %4954 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %4955 = fcmp fast olt float %4954, 0x3F70101020000000
  br i1 %4955, label %5094, label %4956

; <label>:4956                                    ; preds = %4918, %4821
  %4957 = phi float [ %4954, %4918 ], [ %4531, %4821 ]
  %4958 = fmul fast float %4957, %4824
  %4959 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.i32 %4959, 1
  %4961 = extractvalue %dx.types.CBufRet.i32 %4959, 0
  %4962 = add i32 %4961, 0
  %4963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4964 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4963, %dx.types.Handle %88, float %4913, float %4914, float undef, float undef, i32 0, i32 0, i32 undef, float %4876, float %4877, float undef, float %4880, float %4881, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4965 = extractvalue %dx.types.ResRet.f32 %4964, 0
  %4966 = extractvalue %dx.types.ResRet.f32 %4964, 1
  %4967 = extractvalue %dx.types.ResRet.f32 %4964, 2
  %4968 = extractvalue %dx.types.ResRet.f32 %4964, 3
  %4969 = and i32 %4960, 255
  %4970 = uitofp i32 %4969 to float
  %4971 = lshr i32 %4960, 8
  %4972 = and i32 %4971, 255
  %4973 = uitofp i32 %4972 to float
  %4974 = fmul fast float %4968, %4970
  %4975 = fadd fast float %4974, %4973
  %4976 = fmul fast float %4975, 0x3F70101000000000
  %4977 = fadd fast float %4976, 0xBFB99999A0000000
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = fmul fast float %4978, 0x3FF1C71C80000000
  %4980 = call float @dx.op.binary.f32(i32 36, float %4976, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4981 = fsub fast float 1.000000e+00, %4979
  %4982 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4983 = fmul fast float %4982, %4965
  %4984 = fmul fast float %4982, %4966
  %4985 = fmul fast float %4982, %4967
  %4986 = call float @dx.op.unary.f32(i32 7, float %4983)  ; Saturate(value)
  %4987 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4988 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4989 = fmul fast float %4979, %4965
  %4990 = fmul fast float %4979, %4966
  %4991 = fmul fast float %4979, %4967
  %4992 = fadd fast float %4989, %4980
  %4993 = fadd fast float %4990, %4980
  %4994 = fadd fast float %4991, %4980
  %4995 = call float @dx.op.unary.f32(i32 7, float %4992)  ; Saturate(value)
  %4996 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %4997 = call float @dx.op.unary.f32(i32 7, float %4994)  ; Saturate(value)
  %4998 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4999 = extractvalue %dx.types.CBufRet.i32 %4998, 3
  %5000 = extractvalue %dx.types.CBufRet.i32 %4998, 2
  %5001 = add i32 %5000, 0
  %5002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5001, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5003 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5002, %dx.types.Handle %88, float %4913, float %4914, float undef, float undef, i32 0, i32 0, i32 undef, float %4876, float %4877, float undef, float %4880, float %4881, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5004 = extractvalue %dx.types.ResRet.f32 %5003, 0
  %5005 = extractvalue %dx.types.ResRet.f32 %5003, 1
  %5006 = extractvalue %dx.types.ResRet.f32 %5003, 2
  %5007 = extractvalue %dx.types.ResRet.f32 %5003, 3
  %5008 = and i32 %4999, 255
  %5009 = uitofp i32 %5008 to float
  %5010 = lshr i32 %4999, 8
  %5011 = and i32 %5010, 255
  %5012 = uitofp i32 %5011 to float
  %5013 = lshr i32 %4999, 16
  %5014 = and i32 %5013, 255
  %5015 = uitofp i32 %5014 to float
  %5016 = fmul fast float %5015, 0x3F70101000000000
  %5017 = fmul fast float %5004, %5009
  %5018 = fadd fast float %5017, %5012
  %5019 = fmul fast float %5018, 0x3F70101000000000
  %5020 = fadd fast float %5005, -5.000000e-01
  %5021 = fadd fast float %5007, -5.000000e-01
  %5022 = fmul fast float %5020, %5016
  %5023 = fmul fast float %5021, %5016
  %5024 = fadd fast float %5022, 5.000000e-01
  %5025 = fadd fast float %5023, 5.000000e-01
  %5026 = fmul fast float %5024, 2.000000e+00
  %5027 = fadd fast float %5026, -1.000000e+00
  %5028 = fmul fast float %5025, 2.000000e+00
  %5029 = fadd fast float %5028, -1.000000e+00
  %5030 = fadd fast float %5027, %5029
  %5031 = fmul fast float %5030, 5.000000e-01
  %5032 = fsub fast float %5027, %5029
  %5033 = fmul fast float %5032, 5.000000e-01
  %5034 = call float @dx.op.unary.f32(i32 6, float %5031)  ; FAbs(value)
  %5035 = fsub fast float 1.000000e+00, %5034
  %5036 = call float @dx.op.unary.f32(i32 6, float %5033)  ; FAbs(value)
  %5037 = fsub fast float %5035, %5036
  %5038 = call float @dx.op.dot3.f32(i32 55, float %5031, float %5033, float %5037, float %5031, float %5033, float %5037)  ; Dot3(ax,ay,az,bx,by,bz)
  %5039 = call float @dx.op.unary.f32(i32 25, float %5038)  ; Rsqrt(value)
  %5040 = fmul fast float %5031, %5039
  %5041 = fmul fast float %5033, %5039
  %5042 = select i1 %4869, i32 %4859, i32 %4860
  %5043 = select i1 %4867, i32 %4858, i32 %5042
  %5044 = sitofp i32 %5043 to float
  %5045 = fmul fast float %5037, %5044
  %5046 = fmul fast float %5045, %5039
  %5047 = select i1 %4869, float %5046, float %5041
  %5048 = select i1 %4869, float %5041, float %5046
  %5049 = select i1 %4867, float %5046, float %5040
  %5050 = select i1 %4867, float %5041, float %5047
  %5051 = select i1 %4867, float %5040, float %5048
  %5052 = fsub fast float %4986, %4813
  %5053 = fsub fast float %4987, %4814
  %5054 = fsub fast float %4988, %4815
  %5055 = fmul fast float %5052, %4958
  %5056 = fmul fast float %5053, %4958
  %5057 = fmul fast float %5054, %4958
  %5058 = fadd fast float %5055, %4813
  %5059 = fadd fast float %5056, %4814
  %5060 = fadd fast float %5057, %4815
  %5061 = fsub fast float %4995, %4810
  %5062 = fsub fast float %4996, %4811
  %5063 = fsub fast float %4997, %4812
  %5064 = fmul fast float %5061, %4958
  %5065 = fmul fast float %5062, %4958
  %5066 = fmul fast float %5063, %4958
  %5067 = fadd fast float %5064, %4810
  %5068 = fadd fast float %5065, %4811
  %5069 = fadd fast float %5066, %4812
  %5070 = fadd fast float %5049, %4816
  %5071 = fadd fast float %5050, %4817
  %5072 = fadd fast float %5051, %4818
  %5073 = call float @dx.op.dot3.f32(i32 55, float %5070, float %5071, float %5072, float %5070, float %5071, float %5072)  ; Dot3(ax,ay,az,bx,by,bz)
  %5074 = call float @dx.op.unary.f32(i32 25, float %5073)  ; Rsqrt(value)
  %5075 = fmul fast float %5070, %5074
  %5076 = fmul fast float %5071, %5074
  %5077 = fmul fast float %5072, %5074
  %5078 = fsub fast float %5075, %4816
  %5079 = fsub fast float %5076, %4817
  %5080 = fsub fast float %5077, %4818
  %5081 = fmul fast float %5078, %4958
  %5082 = fmul fast float %5079, %4958
  %5083 = fmul fast float %5080, %4958
  %5084 = fadd fast float %5081, %4816
  %5085 = fadd fast float %5082, %4817
  %5086 = fadd fast float %5083, %4818
  %5087 = call float @dx.op.binary.f32(i32 36, float %4820, float %5006)  ; FMin(a,b)
  %5088 = fsub fast float %5087, %4820
  %5089 = fmul fast float %5088, %4958
  %5090 = fadd fast float %5089, %4820
  %5091 = fsub fast float %5019, %4819
  %5092 = fmul fast float %5091, %4958
  %5093 = fadd fast float %5092, %4819
  br label %5094

; <label>:5094                                    ; preds = %4956, %4918, %4809, %4525
  %5095 = phi float [ %5067, %4956 ], [ %4810, %4918 ], [ %4810, %4809 ], [ %4407, %4525 ]
  %5096 = phi float [ %5068, %4956 ], [ %4811, %4918 ], [ %4811, %4809 ], [ %4408, %4525 ]
  %5097 = phi float [ %5069, %4956 ], [ %4812, %4918 ], [ %4812, %4809 ], [ %4409, %4525 ]
  %5098 = phi float [ %5058, %4956 ], [ %4813, %4918 ], [ %4813, %4809 ], [ %4425, %4525 ]
  %5099 = phi float [ %5059, %4956 ], [ %4814, %4918 ], [ %4814, %4809 ], [ %4426, %4525 ]
  %5100 = phi float [ %5060, %4956 ], [ %4815, %4918 ], [ %4815, %4809 ], [ %4427, %4525 ]
  %5101 = phi float [ %5084, %4956 ], [ %4816, %4918 ], [ %4816, %4809 ], [ %4368, %4525 ]
  %5102 = phi float [ %5085, %4956 ], [ %4817, %4918 ], [ %4817, %4809 ], [ %4369, %4525 ]
  %5103 = phi float [ %5086, %4956 ], [ %4818, %4918 ], [ %4818, %4809 ], [ %4370, %4525 ]
  %5104 = phi float [ %5093, %4956 ], [ %4819, %4918 ], [ %4819, %4809 ], [ %4410, %4525 ]
  %5105 = phi float [ %5090, %4956 ], [ %4820, %4918 ], [ %4820, %4809 ], [ %4383, %4525 ]
  %5106 = fcmp fast une float %4529, 0.000000e+00
  %5107 = call float @dx.op.dot3.f32(i32 55, float %179, float %180, float %181, float %179, float %180, float %181)  ; Dot3(ax,ay,az,bx,by,bz)
  %5108 = call float @dx.op.unary.f32(i32 25, float %5107)  ; Rsqrt(value)
  br i1 %5106, label %5116, label %5109

; <label>:5109                                    ; preds = %5094
  %5110 = fmul fast float %5108, %179
  %5111 = fmul fast float %5108, %180
  %5112 = fmul fast float %5108, %181
  %5113 = fsub fast float -0.000000e+00, %5110
  %5114 = fsub fast float -0.000000e+00, %5111
  %5115 = fsub fast float -0.000000e+00, %5112
  br label %5283

; <label>:5116                                    ; preds = %5094
  %5117 = fmul fast float %179, %5108
  %5118 = fsub fast float -0.000000e+00, %5117
  %5119 = fmul fast float %180, %5108
  %5120 = fsub fast float -0.000000e+00, %5119
  %5121 = fmul fast float %181, %5108
  %5122 = fsub fast float -0.000000e+00, %5121
  %5123 = call float @dx.op.dot3.f32(i32 55, float %5118, float %5120, float %5122, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %5124 = fmul fast float %4529, 2.500000e+00
  %5125 = call float @dx.op.unary.f32(i32 7, float %5124)  ; Saturate(value)
  %5126 = fmul fast float %4529, 0x4013FFFFE0000000
  %5127 = fadd fast float %5126, 0xBFFFFFFFE0000000
  %5128 = call float @dx.op.unary.f32(i32 7, float %5127)  ; Saturate(value)
  %5129 = fmul fast float %4529, 0x4004000020000000
  %5130 = fadd fast float %5129, 0xBFF8000040000000
  %5131 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  %5132 = fmul fast float %4389, 1.000000e+01
  %5133 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5134 = fmul fast float %5133, 2.000000e+00
  %5135 = fsub fast float 3.000000e+00, %5134
  %5136 = fmul fast float %5133, %5133
  %5137 = fmul fast float %5136, %5135
  %5138 = fsub fast float 1.000000e+00, %5137
  %5139 = fsub fast float 0x3FE3333340000000, %5104
  %5140 = fmul fast float %5139, 0x400AAAAAA0000000
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5142 = fmul fast float %5138, %5141
  %5143 = fmul fast float %5098, 0x3FEA2B8620000000
  %5144 = fmul fast float %5099, 0x3FEA2B8620000000
  %5145 = fmul fast float %5100, 0x3FEA2B8620000000
  %5146 = fadd fast float %5143, 0x3FC81DFBA0000000
  %5147 = fmul fast float %5146, %5098
  %5148 = fadd fast float %5147, 0x3F910E6020000000
  %5149 = fadd fast float %5144, 0x3FC81DFBA0000000
  %5150 = fmul fast float %5149, %5099
  %5151 = fadd fast float %5150, 0x3F910E6020000000
  %5152 = fadd fast float %5145, 0x3FC81DFBA0000000
  %5153 = fmul fast float %5152, %5100
  %5154 = fadd fast float %5153, 0x3F910E6020000000
  %5155 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5156 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  %5157 = call float @dx.op.unary.f32(i32 7, float %5154)  ; Saturate(value)
  %5158 = fsub fast float %5155, %5098
  %5159 = fsub fast float %5156, %5099
  %5160 = fsub fast float %5157, %5100
  %5161 = fmul fast float %5158, %5125
  %5162 = fmul fast float %5161, %5142
  %5163 = fmul fast float %5159, %5125
  %5164 = fmul fast float %5163, %5142
  %5165 = fmul fast float %5160, %5125
  %5166 = fmul fast float %5165, %5142
  %5167 = fadd fast float %5162, %5098
  %5168 = fadd fast float %5164, %5099
  %5169 = fadd fast float %5166, %5100
  %5170 = fmul fast float %5105, %5105
  %5171 = fmul fast float %5170, %5170
  %5172 = fadd fast float %5128, 1.000000e+00
  %5173 = fsub fast float %5172, %5142
  %5174 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  %5175 = call float @dx.op.dot3.f32(i32 55, float %99, float %100, float %101, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5176 = call float @dx.op.unary.f32(i32 7, float %5175)  ; Saturate(value)
  %5177 = fsub fast float 1.000000e+00, %5171
  %5178 = call float @dx.op.binary.f32(i32 36, float %5174, float %5177)  ; FMin(a,b)
  %5179 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5180 = call float @dx.op.binary.f32(i32 35, float %5178, float %5179)  ; FMax(a,b)
  %5181 = fadd fast float %5176, 0xBFE4CCCCC0000000
  %5182 = fmul fast float %5181, 0x4006DB6DA0000000
  %5183 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5184 = fmul fast float %5183, 2.000000e+00
  %5185 = fsub fast float 3.000000e+00, %5184
  %5186 = bitcast float %5095 to i32
  %5187 = ashr i32 %5186, 1
  %5188 = add nsw i32 %5187, 532487669
  %5189 = bitcast i32 %5188 to float
  %5190 = fsub fast float 1.000000e+00, %5189
  %5191 = bitcast float %5190 to i32
  %5192 = sub nsw i32 2129859010, %5191
  %5193 = bitcast i32 %5192 to float
  %5194 = fmul fast float %5193, 2.000000e+00
  %5195 = bitcast float %5096 to i32
  %5196 = ashr i32 %5195, 1
  %5197 = add nsw i32 %5196, 532487669
  %5198 = bitcast i32 %5197 to float
  %5199 = fsub fast float 1.000000e+00, %5198
  %5200 = bitcast float %5199 to i32
  %5201 = sub nsw i32 2129859010, %5200
  %5202 = bitcast i32 %5201 to float
  %5203 = fmul fast float %5202, 2.000000e+00
  %5204 = bitcast float %5097 to i32
  %5205 = ashr i32 %5204, 1
  %5206 = add nsw i32 %5205, 532487669
  %5207 = bitcast i32 %5206 to float
  %5208 = fsub fast float 1.000000e+00, %5207
  %5209 = bitcast float %5208 to i32
  %5210 = sub nsw i32 2129859010, %5209
  %5211 = bitcast i32 %5210 to float
  %5212 = fmul fast float %5211, 2.000000e+00
  %5213 = fsub fast float 0x4002A9FBE0000000, %5194
  %5214 = fadd fast float %5194, 0x3FD54FDF00000000
  %5215 = bitcast float %5214 to i32
  %5216 = sub nsw i32 2129859010, %5215
  %5217 = bitcast i32 %5216 to float
  %5218 = fmul fast float %5217, %5213
  %5219 = fmul fast float %5218, %5218
  %5220 = fsub fast float 0x4002A9FBE0000000, %5203
  %5221 = fadd fast float %5203, 0x3FD54FDF00000000
  %5222 = bitcast float %5221 to i32
  %5223 = sub nsw i32 2129859010, %5222
  %5224 = bitcast i32 %5223 to float
  %5225 = fmul fast float %5224, %5220
  %5226 = fmul fast float %5225, %5225
  %5227 = fsub fast float 0x4002A9FBE0000000, %5212
  %5228 = fadd fast float %5212, 0x3FD54FDF00000000
  %5229 = bitcast float %5228 to i32
  %5230 = sub nsw i32 2129859010, %5229
  %5231 = bitcast i32 %5230 to float
  %5232 = fmul fast float %5231, %5227
  %5233 = fmul fast float %5232, %5232
  %5234 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5219)  ; FMax(a,b)
  %5235 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5226)  ; FMax(a,b)
  %5236 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5233)  ; FMax(a,b)
  %5237 = fsub fast float 1.000000e+00, %5123
  %5238 = fadd fast float %5237, %5138
  %5239 = call float @dx.op.unary.f32(i32 7, float %5238)  ; Saturate(value)
  %5240 = fsub fast float 1.000000e+00, %4510
  %5241 = fmul fast float %5180, %5240
  %5242 = fmul fast float %5183, %5183
  %5243 = fmul fast float %5242, %5241
  %5244 = fmul fast float %5243, %5185
  %5245 = fmul fast float %5240, 0xBFE99999A0000000
  %5246 = fmul fast float %5245, %5125
  %5247 = fmul fast float %5246, %5142
  %5248 = fadd fast float %5247, 1.000000e+00
  %5249 = fadd fast float %5104, -1.000000e+00
  %5250 = fmul fast float %5248, %5249
  %5251 = fadd fast float %5250, 1.000000e+00
  %5252 = fsub fast float %5234, %5095
  %5253 = fsub fast float %5235, %5096
  %5254 = fsub fast float %5236, %5097
  %5255 = fmul fast float %5244, %5252
  %5256 = fmul fast float %5244, %5253
  %5257 = fmul fast float %5244, %5254
  %5258 = fadd fast float %5255, %5095
  %5259 = fadd fast float %5256, %5096
  %5260 = fadd fast float %5257, %5097
  %5261 = fsub fast float %99, %5101
  %5262 = fsub fast float %100, %5102
  %5263 = fsub fast float %101, %5103
  %5264 = fmul fast float %5244, %5261
  %5265 = fmul fast float %5244, %5262
  %5266 = fmul fast float %5244, %5263
  %5267 = fadd fast float %5264, %5101
  %5268 = fadd fast float %5265, %5102
  %5269 = fadd fast float %5266, %5103
  %5270 = fmul fast float %5244, %5239
  %5271 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  %5272 = fsub fast float 1.000000e+00, %5271
  %5273 = fmul fast float %5270, %5272
  %5274 = fadd fast float %5273, %5271
  %5275 = fsub fast float 1.000000e+00, %5105
  %5276 = fmul fast float %5244, %5275
  %5277 = fadd fast float %5276, %5105
  %5278 = call float @dx.op.dot3.f32(i32 55, float %5267, float %5268, float %5269, float %5267, float %5268, float %5269)  ; Dot3(ax,ay,az,bx,by,bz)
  %5279 = call float @dx.op.unary.f32(i32 25, float %5278)  ; Rsqrt(value)
  %5280 = fmul fast float %5267, %5279
  %5281 = fmul fast float %5268, %5279
  %5282 = fmul fast float %5269, %5279
  br label %5283

; <label>:5283                                    ; preds = %5116, %5109
  %5284 = phi float [ %5115, %5109 ], [ %5122, %5116 ]
  %5285 = phi float [ %5114, %5109 ], [ %5120, %5116 ]
  %5286 = phi float [ %5113, %5109 ], [ %5118, %5116 ]
  %5287 = phi float [ %5112, %5109 ], [ %5121, %5116 ]
  %5288 = phi float [ %5111, %5109 ], [ %5119, %5116 ]
  %5289 = phi float [ %5110, %5109 ], [ %5117, %5116 ]
  %5290 = phi float [ %5095, %5109 ], [ %5258, %5116 ]
  %5291 = phi float [ %5096, %5109 ], [ %5259, %5116 ]
  %5292 = phi float [ %5097, %5109 ], [ %5260, %5116 ]
  %5293 = phi float [ %5098, %5109 ], [ %5167, %5116 ]
  %5294 = phi float [ %5099, %5109 ], [ %5168, %5116 ]
  %5295 = phi float [ %5100, %5109 ], [ %5169, %5116 ]
  %5296 = phi float [ %5101, %5109 ], [ %5280, %5116 ]
  %5297 = phi float [ %5102, %5109 ], [ %5281, %5116 ]
  %5298 = phi float [ %5103, %5109 ], [ %5282, %5116 ]
  %5299 = phi float [ %5104, %5109 ], [ %5274, %5116 ]
  %5300 = phi float [ %5105, %5109 ], [ %5277, %5116 ]
  %5301 = select i1 %240, float 0.000000e+00, float %5292
  %5302 = call float @dx.op.dot3.f32(i32 55, float %5296, float %5297, float %5298, float %5286, float %5285, float %5284)  ; Dot3(ax,ay,az,bx,by,bz)
  %5303 = call float @dx.op.unary.f32(i32 7, float %5302)  ; Saturate(value)
  %5304 = call float @dx.op.dot3.f32(i32 55, float %5289, float %5288, float %5287, float %5296, float %5297, float %5298)  ; Dot3(ax,ay,az,bx,by,bz)
  %5305 = fmul fast float %5304, 2.000000e+00
  %5306 = fmul fast float %5305, %5296
  %5307 = fmul fast float %5305, %5297
  %5308 = fmul fast float %5305, %5298
  %5309 = fsub fast float %5289, %5306
  %5310 = fsub fast float %5288, %5307
  %5311 = fsub fast float %5287, %5308
  %5312 = call float @dx.op.binary.f32(i32 36, float %5300, float 1.000000e+00)  ; FMin(a,b)
  %5313 = fsub fast float 1.000000e+00, %5300
  %5314 = bitcast float %5313 to i32
  %5315 = sub nsw i32 2129859010, %5314
  %5316 = bitcast i32 %5315 to float
  %5317 = fsub fast float 1.000000e+00, %63
  %5318 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %5319 = call float @dx.op.binary.f32(i32 35, float %5318, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5320 = fdiv fast float %5317, %5319
  %5321 = call float @dx.op.dot3.f32(i32 55, float %5296, float %5297, float %5298, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %5322 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5323 = fmul fast float %5322, 5.000000e-01
  %5324 = fadd fast float %5323, 5.000000e-01
  %5325 = fmul fast float %5324, %63
  %5326 = call float @dx.op.dot3.f32(i32 55, float %5296, float %5297, float %5298, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = call float @dx.op.unary.f32(i32 7, float %5326)  ; Saturate(value)
  %5328 = fmul fast float %5327, %5320
  %5329 = fadd fast float %5325, %5328
  %5330 = fsub fast float 5.000000e-01, %5323
  %5331 = fmul fast float %5330, %5293
  %5332 = fmul fast float %5330, %5294
  %5333 = fmul fast float %5330, %5295
  %5334 = fadd fast float %5329, %5331
  %5335 = fadd fast float %5329, %5332
  %5336 = fadd fast float %5329, %5333
  %5337 = call float @dx.op.dot3.f32(i32 55, float %5309, float %5310, float %5311, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %5338 = call float @dx.op.unary.f32(i32 7, float %5337)  ; Saturate(value)
  %5339 = fmul fast float %5338, 5.000000e-01
  %5340 = fadd fast float %5339, 5.000000e-01
  %5341 = fmul fast float %5340, %63
  %5342 = call float @dx.op.dot3.f32(i32 55, float %5309, float %5310, float %5311, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %5343 = call float @dx.op.unary.f32(i32 7, float %5342)  ; Saturate(value)
  %5344 = fmul fast float %5343, %5320
  %5345 = fadd fast float %5341, %5344
  %5346 = fsub fast float 5.000000e-01, %5339
  %5347 = fmul fast float %5346, %5293
  %5348 = fmul fast float %5346, %5294
  %5349 = fmul fast float %5346, %5295
  %5350 = fadd fast float %5345, %5347
  %5351 = fadd fast float %5345, %5348
  %5352 = fadd fast float %5345, %5349
  %5353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5354 = extractvalue %dx.types.CBufRet.f32 %5353, 0
  %5355 = call float @dx.op.binary.f32(i32 36, float %5293, float %5354)  ; FMin(a,b)
  %5356 = fsub fast float 1.000000e+00, %5312
  %5357 = fmul fast float %5355, %5356
  %5358 = fsub fast float 1.000000e+00, %5357
  %5359 = bitcast float %5358 to i32
  %5360 = sub nsw i32 2129859010, %5359
  %5361 = bitcast i32 %5360 to float
  %5362 = call float @dx.op.binary.f32(i32 36, float %5294, float %5354)  ; FMin(a,b)
  %5363 = fmul fast float %5362, %5356
  %5364 = fsub fast float 1.000000e+00, %5363
  %5365 = bitcast float %5364 to i32
  %5366 = sub nsw i32 2129859010, %5365
  %5367 = bitcast i32 %5366 to float
  %5368 = call float @dx.op.binary.f32(i32 36, float %5295, float %5354)  ; FMin(a,b)
  %5369 = fmul fast float %5368, %5356
  %5370 = fsub fast float 1.000000e+00, %5369
  %5371 = bitcast float %5370 to i32
  %5372 = sub nsw i32 2129859010, %5371
  %5373 = bitcast i32 %5372 to float
  %5374 = fmul fast float %5312, %64
  %5375 = fmul fast float %5374, %5334
  %5376 = fmul fast float %5375, %5361
  %5377 = fmul fast float %5312, %65
  %5378 = fmul fast float %5377, %5335
  %5379 = fmul fast float %5378, %5367
  %5380 = fmul fast float %5312, %66
  %5381 = fmul fast float %5380, %5336
  %5382 = fmul fast float %5381, %5373
  %5383 = call float @dx.op.binary.f32(i32 36, float %5290, float %5354)  ; FMin(a,b)
  %5384 = fmul fast float %5383, %5356
  %5385 = fsub fast float 1.000000e+00, %5384
  %5386 = bitcast float %5385 to i32
  %5387 = sub nsw i32 2129859010, %5386
  %5388 = bitcast i32 %5387 to float
  %5389 = call float @dx.op.binary.f32(i32 36, float %5291, float %5354)  ; FMin(a,b)
  %5390 = fmul fast float %5389, %5356
  %5391 = fsub fast float 1.000000e+00, %5390
  %5392 = bitcast float %5391 to i32
  %5393 = sub nsw i32 2129859010, %5392
  %5394 = bitcast i32 %5393 to float
  %5395 = call float @dx.op.binary.f32(i32 36, float %5301, float %5354)  ; FMin(a,b)
  %5396 = fmul fast float %5395, %5356
  %5397 = fsub fast float 1.000000e+00, %5396
  %5398 = bitcast float %5397 to i32
  %5399 = sub nsw i32 2129859010, %5398
  %5400 = bitcast i32 %5399 to float
  %5401 = fmul fast float %5374, %5350
  %5402 = fmul fast float %5401, %5388
  %5403 = fmul fast float %5377, %5351
  %5404 = fmul fast float %5403, %5394
  %5405 = fmul fast float %5380, %5352
  %5406 = fmul fast float %5405, %5400
  %5407 = call float @dx.op.dot3.f32(i32 55, float %5376, float %5379, float %5382, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5408 = select i1 %240, float 0.000000e+00, float %5376
  %5409 = select i1 %240, float %5407, float %5379
  %5410 = select i1 %240, float 0.000000e+00, float %5382
  %5411 = call float @dx.op.dot3.f32(i32 55, float %5402, float %5404, float %5406, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5412 = select i1 %240, float 0.000000e+00, float %5402
  %5413 = select i1 %240, float %5411, float %5404
  %5414 = select i1 %240, float 0.000000e+00, float %5406
  %5415 = fmul fast float %3789, %3789
  %5416 = call float @dx.op.unary.f32(i32 7, float %5415)  ; Saturate(value)
  %5417 = fmul fast float %5303, 9.843750e-01
  %5418 = fmul fast float %5299, 9.843750e-01
  %5419 = fadd fast float %5417, 7.812500e-03
  %5420 = fadd fast float %5418, 7.812500e-03
  %5421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %5419, float %5420, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5422 = extractvalue %dx.types.ResRet.f32 %5421, 0
  %5423 = extractvalue %dx.types.ResRet.f32 %5421, 1
  %5424 = extractvalue %dx.types.ResRet.f32 %5421, 2
  %5425 = extractvalue %dx.types.ResRet.f32 %5421, 3
  %5426 = fsub fast float 1.000000e+00, %5416
  %5427 = fsub fast float %5424, %5422
  %5428 = fsub fast float %5425, %5423
  %5429 = fmul fast float %5427, %5426
  %5430 = fmul fast float %5428, %5426
  %5431 = fadd fast float %5429, %5422
  %5432 = fadd fast float %5430, %5423
  %5433 = fmul fast float %5431, %5290
  %5434 = fmul fast float %5431, %5291
  %5435 = fmul fast float %5431, %5301
  %5436 = fadd fast float %5433, %5432
  %5437 = fadd fast float %5434, %5432
  %5438 = fadd fast float %5435, %5432
  %5439 = fcmp fast ogt float %4384, 0.000000e+00
  br i1 %5439, label %5440, label %5466

; <label>:5440                                    ; preds = %5283
  %5441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4384, float %5303, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5442 = extractvalue %dx.types.ResRet.f32 %5441, 0
  %5443 = extractvalue %dx.types.ResRet.f32 %5441, 1
  %5444 = extractvalue %dx.types.ResRet.f32 %5441, 2
  %5445 = fadd fast float %5442, -5.000000e-01
  %5446 = fadd fast float %5443, -5.000000e-01
  %5447 = fadd fast float %5444, -5.000000e-01
  %5448 = fsub fast float 1.000000e+00, %5290
  %5449 = fsub fast float 1.000000e+00, %5291
  %5450 = fsub fast float 1.000000e+00, %5301
  %5451 = fmul fast float %5290, 4.000000e+00
  %5452 = fmul fast float %5451, %5448
  %5453 = fmul fast float %5452, %5445
  %5454 = fmul fast float %5291, 4.000000e+00
  %5455 = fmul fast float %5454, %5449
  %5456 = fmul fast float %5455, %5446
  %5457 = fmul fast float %5301, 4.000000e+00
  %5458 = fmul fast float %5457, %5450
  %5459 = fmul fast float %5458, %5447
  %5460 = fadd fast float %5453, %5436
  %5461 = fadd fast float %5456, %5437
  %5462 = fadd fast float %5459, %5438
  %5463 = call float @dx.op.unary.f32(i32 7, float %5460)  ; Saturate(value)
  %5464 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5465 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  br label %5466

; <label>:5466                                    ; preds = %5440, %5283
  %5467 = phi float [ %5463, %5440 ], [ %5436, %5283 ]
  %5468 = phi float [ %5464, %5440 ], [ %5437, %5283 ]
  %5469 = phi float [ %5465, %5440 ], [ %5438, %5283 ]
  %5470 = call float @dx.op.binary.f32(i32 35, float %5468, float %5469)  ; FMax(a,b)
  %5471 = call float @dx.op.binary.f32(i32 35, float %5467, float %5470)  ; FMax(a,b)
  %5472 = fsub fast float 1.000000e+00, %5471
  %5473 = fmul fast float %5472, %5408
  %5474 = fmul fast float %5472, %5409
  %5475 = fmul fast float %5472, %5410
  %5476 = call float @dx.op.dot3.f32(i32 55, float %5293, float %5294, float %5295, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5477 = fcmp fast ogt float %5476, 0x3E7FF19E20000000
  %5478 = fdiv fast float 1.000000e+00, %5476
  %5479 = select i1 %5477, float %5478, float 0.000000e+00
  %5480 = fmul fast float %5479, %5293
  %5481 = fmul fast float %5479, %5294
  %5482 = fmul fast float %5479, %5295
  %5483 = fadd fast float %5480, -1.000000e+00
  %5484 = fadd fast float %5481, -1.000000e+00
  %5485 = fadd fast float %5482, -1.000000e+00
  %5486 = fmul fast float %5483, 5.000000e-01
  %5487 = fmul fast float %5484, 5.000000e-01
  %5488 = fmul fast float %5485, 5.000000e-01
  %5489 = fadd fast float %5486, 1.000000e+00
  %5490 = fadd fast float %5487, 1.000000e+00
  %5491 = fadd fast float %5488, 1.000000e+00
  %5492 = call float @dx.op.binary.f32(i32 35, float %5303, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5493 = fdiv fast float %3789, %5492
  %5494 = fcmp fast olt float %4411, 1.270000e+02
  %5495 = fcmp fast olt float %4412, 1.270000e+02
  %5496 = fcmp fast olt float %4413, 1.270000e+02
  %5497 = fmul fast float %4411, 0xBFF7154760000000
  %5498 = fmul fast float %5497, %5493
  %5499 = fmul fast float %4412, 0xBFF7154760000000
  %5500 = fmul fast float %5499, %5493
  %5501 = fmul fast float %4413, 0xBFF7154760000000
  %5502 = fmul fast float %5501, %5493
  %5503 = call float @dx.op.unary.f32(i32 21, float %5498)  ; Exp(value)
  %5504 = call float @dx.op.unary.f32(i32 21, float %5500)  ; Exp(value)
  %5505 = call float @dx.op.unary.f32(i32 21, float %5502)  ; Exp(value)
  %5506 = call float @dx.op.unary.f32(i32 7, float %5503)  ; Saturate(value)
  %5507 = call float @dx.op.unary.f32(i32 7, float %5504)  ; Saturate(value)
  %5508 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5509 = select i1 %5494, float %5506, float 0.000000e+00
  %5510 = select i1 %5495, float %5507, float 0.000000e+00
  %5511 = select i1 %5496, float %5508, float 0.000000e+00
  %5512 = fmul fast float %5509, %5472
  %5513 = fmul fast float %5510, %5472
  %5514 = fmul fast float %5511, %5472
  %5515 = fadd fast float %5512, -1.000000e+00
  %5516 = fadd fast float %5513, -1.000000e+00
  %5517 = fadd fast float %5514, -1.000000e+00
  %5518 = fmul fast float %5467, %5412
  %5519 = fmul fast float %5468, %5413
  %5520 = fmul fast float %5469, %5414
  %5521 = fsub fast float 1.000000e+00, %5303
  %5522 = bitcast float %5521 to i32
  %5523 = sitofp i32 %5522 to float
  %5524 = fmul fast float %5523, 5.000000e+00
  %5525 = fadd fast float %5524, 0xC1EFBF8940000000
  %5526 = fptosi float %5525 to i32
  %5527 = bitcast i32 %5526 to float
  %5528 = fmul fast float %5527, %4385
  %5529 = fmul fast float %5408, %5528
  %5530 = fmul fast float %5529, %5472
  %5531 = fmul fast float %5530, %5489
  %5532 = fmul fast float %5409, %5528
  %5533 = fmul fast float %5532, %5472
  %5534 = fmul fast float %5533, %5490
  %5535 = fmul fast float %5410, %5528
  %5536 = fmul fast float %5535, %5472
  %5537 = fmul fast float %5536, %5491
  %5538 = fmul fast float %5473, %4381
  %5539 = fmul fast float %5474, %4381
  %5540 = fmul fast float %5475, %4381
  %5541 = fadd fast float %5518, %4374
  %5542 = fadd fast float %5541, %5531
  %5543 = fmul fast float %5542, %4381
  %5544 = fadd fast float %5519, %4375
  %5545 = fadd fast float %5544, %5534
  %5546 = fmul fast float %5545, %4381
  %5547 = fadd fast float %5520, %4376
  %5548 = fadd fast float %5547, %5537
  %5549 = fmul fast float %5548, %4381
  %5550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5551 = extractvalue %dx.types.CBufRet.f32 %5550, 3
  %5552 = fcmp fast oeq float %5551, 0.000000e+00
  br i1 %5552, label %6574, label %5553

; <label>:5553                                    ; preds = %5466
  %5554 = extractvalue %dx.types.CBufRet.f32 %5550, 0
  %5555 = extractvalue %dx.types.CBufRet.f32 %5550, 1
  %5556 = extractvalue %dx.types.CBufRet.f32 %5550, 2
  %5557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5558 = extractvalue %dx.types.CBufRet.f32 %5557, 0
  %5559 = extractvalue %dx.types.CBufRet.f32 %5557, 1
  %5560 = extractvalue %dx.types.CBufRet.f32 %5557, 2
  %5561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5562 = extractvalue %dx.types.CBufRet.f32 %5561, 0
  %5563 = extractvalue %dx.types.CBufRet.f32 %5561, 1
  %5564 = call float @dx.op.dot3.f32(i32 55, float %5558, float %5559, float %5560, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5565 = select i1 %240, float %5562, float %5558
  %5566 = select i1 %240, float %5564, float %5559
  %5567 = select i1 %240, float %5563, float %5560
  %5568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5569 = extractvalue %dx.types.CBufRet.f32 %5568, 2
  %5570 = fmul fast float %5569, %99
  %5571 = fmul fast float %5569, %100
  %5572 = fmul fast float %5569, %101
  %5573 = fadd fast float %5570, %179
  %5574 = fadd fast float %5571, %180
  %5575 = fadd fast float %5572, %181
  %5576 = fcmp fast olt float %5551, 0.000000e+00
  br i1 %5576, label %6216, label %5577

; <label>:5577                                    ; preds = %5553
  %5578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5579 = extractvalue %dx.types.CBufRet.f32 %5578, 0
  %5580 = extractvalue %dx.types.CBufRet.f32 %5578, 1
  %5581 = extractvalue %dx.types.CBufRet.f32 %5578, 2
  %5582 = extractvalue %dx.types.CBufRet.f32 %5578, 3
  %5583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5584 = extractvalue %dx.types.CBufRet.f32 %5583, 0
  %5585 = extractvalue %dx.types.CBufRet.f32 %5583, 1
  %5586 = extractvalue %dx.types.CBufRet.f32 %5583, 2
  %5587 = extractvalue %dx.types.CBufRet.f32 %5583, 3
  %5588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5589 = extractvalue %dx.types.CBufRet.f32 %5588, 0
  %5590 = extractvalue %dx.types.CBufRet.f32 %5588, 1
  %5591 = extractvalue %dx.types.CBufRet.f32 %5588, 2
  %5592 = extractvalue %dx.types.CBufRet.f32 %5588, 3
  %5593 = fmul fast float %5579, %5573
  %5594 = call float @dx.op.tertiary.f32(i32 46, float %5574, float %5580, float %5593)  ; FMad(a,b,c)
  %5595 = call float @dx.op.tertiary.f32(i32 46, float %5575, float %5581, float %5594)  ; FMad(a,b,c)
  %5596 = fadd fast float %5595, %5582
  %5597 = fmul fast float %5584, %5573
  %5598 = call float @dx.op.tertiary.f32(i32 46, float %5574, float %5585, float %5597)  ; FMad(a,b,c)
  %5599 = call float @dx.op.tertiary.f32(i32 46, float %5575, float %5586, float %5598)  ; FMad(a,b,c)
  %5600 = fadd fast float %5599, %5587
  %5601 = fmul fast float %5589, %5573
  %5602 = call float @dx.op.tertiary.f32(i32 46, float %5574, float %5590, float %5601)  ; FMad(a,b,c)
  %5603 = call float @dx.op.tertiary.f32(i32 46, float %5575, float %5591, float %5602)  ; FMad(a,b,c)
  %5604 = fadd fast float %5603, %5592
  %5605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5606 = extractvalue %dx.types.CBufRet.f32 %5605, 0
  %5607 = fcmp fast une float %5606, 0.000000e+00
  %5608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5609 = extractvalue %dx.types.CBufRet.f32 %5608, 0
  %5610 = extractvalue %dx.types.CBufRet.f32 %5608, 1
  %5611 = extractvalue %dx.types.CBufRet.f32 %5608, 3
  %5612 = fmul fast float %5611, %5596
  %5613 = fmul fast float %5611, %5600
  %5614 = fadd fast float %5612, %5609
  %5615 = fadd fast float %5613, %5610
  %5616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5617 = extractvalue %dx.types.CBufRet.f32 %5616, 0
  %5618 = extractvalue %dx.types.CBufRet.f32 %5616, 1
  %5619 = extractvalue %dx.types.CBufRet.f32 %5616, 3
  %5620 = fmul fast float %5619, %5596
  %5621 = fmul fast float %5619, %5600
  %5622 = fadd fast float %5620, %5617
  %5623 = fadd fast float %5621, %5618
  %5624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5625 = extractvalue %dx.types.CBufRet.f32 %5624, 1
  %5626 = fsub fast float %5625, %5604
  %5627 = extractvalue %dx.types.CBufRet.f32 %5624, 2
  %5628 = fmul fast float %5626, %5627
  %5629 = fsub fast float 1.000000e+00, %5628
  %5630 = call float @dx.op.unary.f32(i32 7, float %5629)  ; Saturate(value)
  br i1 %5607, label %5691, label %5631

; <label>:5631                                    ; preds = %5577
  %5632 = extractvalue %dx.types.CBufRet.f32 %5616, 2
  %5633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5633, 2
  %5635 = fadd fast float %5634, %5632
  %5636 = fcmp fast ogt float %5635, 0.000000e+00
  br i1 %5636, label %5637, label %5661

; <label>:5637                                    ; preds = %5631
  %5638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5639 = extractvalue %dx.types.CBufRet.f32 %5638, 0
  %5640 = extractvalue %dx.types.CBufRet.f32 %5638, 1
  %5641 = fsub fast float %5622, %5639
  %5642 = fsub fast float %5623, %5640
  %5643 = fcmp fast olt float %5641, 0.000000e+00
  %5644 = fcmp fast olt float %5642, 0.000000e+00
  %5645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5646 = extractvalue %dx.types.CBufRet.f32 %5645, 0
  %5647 = extractvalue %dx.types.CBufRet.f32 %5645, 1
  %5648 = extractvalue %dx.types.CBufRet.f32 %5645, 2
  %5649 = extractvalue %dx.types.CBufRet.f32 %5645, 3
  %5650 = select i1 %5643, float %5646, float %5648
  %5651 = select i1 %5644, float %5647, float %5649
  %5652 = fmul fast float %5650, %5641
  %5653 = fmul fast float %5651, %5642
  %5654 = call float @dx.op.unary.f32(i32 6, float %5652)  ; FAbs(value)
  %5655 = call float @dx.op.unary.f32(i32 6, float %5653)  ; FAbs(value)
  %5656 = extractvalue %dx.types.CBufRet.f32 %5568, 0
  %5657 = call float @dx.op.binary.f32(i32 35, float %5654, float %5655)  ; FMax(a,b)
  %5658 = fsub fast float %5656, %5657
  %5659 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  %5660 = fmul fast float %5659, %5630
  br label %5661

; <label>:5661                                    ; preds = %5637, %5631
  %5662 = phi float [ %5660, %5637 ], [ 0.000000e+00, %5631 ]
  %5663 = extractvalue %dx.types.CBufRet.f32 %5608, 2
  %5664 = extractvalue %dx.types.CBufRet.f32 %5633, 1
  %5665 = fadd fast float %5664, %5663
  %5666 = fcmp fast ogt float %5665, 0.000000e+00
  br i1 %5666, label %5667, label %5691

; <label>:5667                                    ; preds = %5661
  %5668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5669 = extractvalue %dx.types.CBufRet.f32 %5668, 0
  %5670 = extractvalue %dx.types.CBufRet.f32 %5668, 1
  %5671 = fsub fast float %5614, %5669
  %5672 = fsub fast float %5615, %5670
  %5673 = fcmp fast olt float %5671, 0.000000e+00
  %5674 = fcmp fast olt float %5672, 0.000000e+00
  %5675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.f32 %5675, 0
  %5677 = extractvalue %dx.types.CBufRet.f32 %5675, 1
  %5678 = extractvalue %dx.types.CBufRet.f32 %5675, 2
  %5679 = extractvalue %dx.types.CBufRet.f32 %5675, 3
  %5680 = select i1 %5673, float %5676, float %5678
  %5681 = select i1 %5674, float %5677, float %5679
  %5682 = fmul fast float %5680, %5671
  %5683 = fmul fast float %5681, %5672
  %5684 = call float @dx.op.unary.f32(i32 6, float %5682)  ; FAbs(value)
  %5685 = call float @dx.op.unary.f32(i32 6, float %5683)  ; FAbs(value)
  %5686 = extractvalue %dx.types.CBufRet.f32 %5568, 0
  %5687 = call float @dx.op.binary.f32(i32 35, float %5684, float %5685)  ; FMax(a,b)
  %5688 = fsub fast float %5686, %5687
  %5689 = call float @dx.op.unary.f32(i32 7, float %5688)  ; Saturate(value)
  %5690 = fmul fast float %5689, %5630
  br label %5691

; <label>:5691                                    ; preds = %5667, %5661, %5577
  %5692 = phi float [ 0.000000e+00, %5577 ], [ %5690, %5667 ], [ 0.000000e+00, %5661 ]
  %5693 = phi float [ 0.000000e+00, %5577 ], [ %5662, %5667 ], [ %5662, %5661 ]
  %5694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5695 = extractvalue %dx.types.CBufRet.f32 %5694, 1
  %5696 = call float @dx.op.unary.f32(i32 7, float %5695)  ; Saturate(value)
  %5697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5698 = extractvalue %dx.types.CBufRet.f32 %5697, 0
  %5699 = extractvalue %dx.types.CBufRet.f32 %5697, 1
  %5700 = fsub fast float %5596, %5698
  %5701 = fsub fast float %5600, %5699
  %5702 = fcmp fast olt float %5700, 0.000000e+00
  %5703 = fcmp fast olt float %5701, 0.000000e+00
  %5704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5705 = extractvalue %dx.types.CBufRet.f32 %5704, 0
  %5706 = extractvalue %dx.types.CBufRet.f32 %5704, 1
  %5707 = extractvalue %dx.types.CBufRet.f32 %5704, 2
  %5708 = extractvalue %dx.types.CBufRet.f32 %5704, 3
  %5709 = select i1 %5702, float %5705, float %5707
  %5710 = select i1 %5703, float %5706, float %5708
  %5711 = fmul fast float %5709, %5700
  %5712 = fmul fast float %5710, %5701
  %5713 = call float @dx.op.unary.f32(i32 6, float %5711)  ; FAbs(value)
  %5714 = call float @dx.op.unary.f32(i32 6, float %5712)  ; FAbs(value)
  %5715 = extractvalue %dx.types.CBufRet.f32 %5568, 0
  %5716 = call float @dx.op.binary.f32(i32 35, float %5713, float %5714)  ; FMax(a,b)
  %5717 = fsub fast float %5715, %5716
  %5718 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5719 = call float @dx.op.binary.f32(i32 36, float %5718, float %5696)  ; FMin(a,b)
  %5720 = fmul fast float %5719, %5630
  %5721 = fsub fast float %5692, %5720
  %5722 = fsub fast float %5693, %5692
  %5723 = fsub fast float %5722, %5720
  %5724 = call float @dx.op.binary.f32(i32 35, float %5692, float %5693)  ; FMax(a,b)
  %5725 = call float @dx.op.binary.f32(i32 35, float %5720, float %5724)  ; FMax(a,b)
  %5726 = fcmp fast olt float %5725, 1.000000e+00
  br i1 %5726, label %5727, label %6125, !dx.controlflow.hints !81

; <label>:5727                                    ; preds = %5691
  %5728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5729 = extractvalue %dx.types.CBufRet.f32 %5728, 0
  %5730 = fcmp fast une float %5729, 0.000000e+00
  br i1 %5730, label %5731, label %6125, !dx.controlflow.hints !82

; <label>:5731                                    ; preds = %5727
  %5732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5733 = extractvalue %dx.types.CBufRet.f32 %5732, 0
  %5734 = extractvalue %dx.types.CBufRet.f32 %5732, 1
  %5735 = extractvalue %dx.types.CBufRet.f32 %5732, 2
  %5736 = extractvalue %dx.types.CBufRet.f32 %5732, 3
  %5737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5738 = extractvalue %dx.types.CBufRet.f32 %5737, 0
  %5739 = extractvalue %dx.types.CBufRet.f32 %5737, 1
  %5740 = extractvalue %dx.types.CBufRet.f32 %5737, 2
  %5741 = extractvalue %dx.types.CBufRet.f32 %5737, 3
  %5742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5743 = extractvalue %dx.types.CBufRet.f32 %5742, 0
  %5744 = extractvalue %dx.types.CBufRet.f32 %5742, 1
  %5745 = extractvalue %dx.types.CBufRet.f32 %5742, 2
  %5746 = extractvalue %dx.types.CBufRet.f32 %5742, 3
  %5747 = fmul fast float %5733, %5573
  %5748 = call float @dx.op.tertiary.f32(i32 46, float %5574, float %5734, float %5747)  ; FMad(a,b,c)
  %5749 = call float @dx.op.tertiary.f32(i32 46, float %5575, float %5735, float %5748)  ; FMad(a,b,c)
  %5750 = fadd fast float %5749, %5736
  %5751 = fmul fast float %5738, %5573
  %5752 = call float @dx.op.tertiary.f32(i32 46, float %5574, float %5739, float %5751)  ; FMad(a,b,c)
  %5753 = call float @dx.op.tertiary.f32(i32 46, float %5575, float %5740, float %5752)  ; FMad(a,b,c)
  %5754 = fadd fast float %5753, %5741
  %5755 = fmul fast float %5743, %5573
  %5756 = call float @dx.op.tertiary.f32(i32 46, float %5574, float %5744, float %5755)  ; FMad(a,b,c)
  %5757 = call float @dx.op.tertiary.f32(i32 46, float %5575, float %5745, float %5756)  ; FMad(a,b,c)
  %5758 = fadd fast float %5757, %5746
  %5759 = fcmp fast oge float %5750, 1.000000e+00
  %5760 = fcmp fast oge float %5754, 1.000000e+00
  %5761 = or i1 %5759, %5760
  %5762 = fcmp fast olt float %5750, 0.000000e+00
  %5763 = fcmp fast olt float %5754, 0.000000e+00
  %5764 = or i1 %5762, %5763
  %5765 = or i1 %5761, %5764
  br i1 %5765, label %6125, label %5766, !dx.controlflow.hints !83

; <label>:5766                                    ; preds = %5731
  %5767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.f32 %5767, 0
  %5769 = extractvalue %dx.types.CBufRet.f32 %5767, 1
  %5770 = extractvalue %dx.types.CBufRet.f32 %5767, 2
  %5771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5772 = extractvalue %dx.types.CBufRet.i32 %5771, 2
  %5773 = uitofp i32 %5772 to float
  %5774 = extractvalue %dx.types.CBufRet.i32 %5771, 3
  %5775 = uitofp i32 %5774 to float
  %5776 = extractvalue %dx.types.CBufRet.f32 %5767, 3
  %5777 = fmul fast float %5776, 2.000000e+00
  %5778 = fsub fast float %5750, %5768
  %5779 = fsub fast float %5754, %5769
  %5780 = fmul fast float %5777, %5778
  %5781 = fmul fast float %5777, %5779
  %5782 = fdiv fast float 1.000000e+00, %5556
  %5783 = fmul fast float %5781, %5782
  %5784 = call float @dx.op.unary.f32(i32 6, float %5783)  ; FAbs(value)
  %5785 = fmul fast float %5770, %5575
  %5786 = fmul fast float %5785, %5777
  %5787 = call float @dx.op.unary.f32(i32 6, float %5786)  ; FAbs(value)
  %5788 = call float @dx.op.unary.f32(i32 6, float %5780)  ; FAbs(value)
  %5789 = call float @dx.op.binary.f32(i32 35, float %5787, float %5784)  ; FMax(a,b)
  %5790 = call float @dx.op.binary.f32(i32 35, float %5788, float %5789)  ; FMax(a,b)
  %5791 = fmul fast float %5790, 2.000000e+00
  %5792 = call float @dx.op.unary.f32(i32 23, float %5791)  ; Log(value)
  %5793 = call float @dx.op.binary.f32(i32 35, float %5792, float %5773)  ; FMax(a,b)
  %5794 = call float @dx.op.unary.f32(i32 22, float %5793)  ; Frc(value)
  %5795 = fadd fast float %5794, 0xBFEA666660000000
  %5796 = fmul fast float %5795, 8.000000e+00
  %5797 = call float @dx.op.unary.f32(i32 7, float %5796)  ; Saturate(value)
  %5798 = call float @dx.op.unary.f32(i32 27, float %5793)  ; Round_ni(value)
  %5799 = fadd fast float %5798, %5797
  %5800 = call float @dx.op.binary.f32(i32 36, float %5799, float %5775)  ; FMin(a,b)
  %5801 = call float @dx.op.unary.f32(i32 27, float %5800)  ; Round_ni(value)
  %5802 = fsub fast float -0.000000e+00, %5801
  %5803 = call float @dx.op.unary.f32(i32 21, float %5802)  ; Exp(value)
  %5804 = fmul fast float %5803, %5777
  %5805 = fmul fast float %5804, %5750
  %5806 = fmul fast float %5804, %5754
  %5807 = fmul fast float %5805, 2.500000e-01
  %5808 = fmul fast float %5806, 2.500000e-01
  %5809 = fadd fast float %5807, 5.000000e-01
  %5810 = fadd fast float %5808, 5.000000e-01
  %5811 = fsub fast float %5775, %5773
  %5812 = fptoui float %5811 to i32
  %5813 = add i32 %5812, 320
  %5814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 %5813)  ; CBufferLoadLegacy(handle,regIndex)
  %5815 = extractvalue %dx.types.CBufRet.f32 %5814, 0
  %5816 = extractvalue %dx.types.CBufRet.f32 %5814, 1
  %5817 = fcmp fast une float %5800, %5775
  %5818 = fsub fast float %5750, %5815
  %5819 = fsub fast float %5754, %5816
  %5820 = call float @dx.op.unary.f32(i32 6, float %5818)  ; FAbs(value)
  %5821 = call float @dx.op.unary.f32(i32 6, float %5819)  ; FAbs(value)
  %5822 = fmul fast float %5820, %5804
  %5823 = fmul fast float %5821, %5804
  %5824 = fcmp fast olt float %5822, 1.000000e+00
  %5825 = fcmp fast olt float %5823, 1.000000e+00
  %5826 = and i1 %5824, %5825
  %5827 = or i1 %5817, %5826
  br i1 %5827, label %5828, label %6125, !dx.controlflow.hints !84

; <label>:5828                                    ; preds = %5766
  %5829 = fmul fast float %5806, 5.000000e-01
  %5830 = fmul fast float %5805, 5.000000e-01
  %5831 = fadd fast float %5829, 5.000000e-01
  %5832 = fadd fast float %5830, 5.000000e-01
  %5833 = sitofp i32 %5772 to float
  %5834 = fsub fast float %5800, %5833
  %5835 = call float @dx.op.unary.f32(i32 27, float %5834)  ; Round_ni(value)
  %5836 = call float @dx.op.unary.f32(i32 22, float %5800)  ; Frc(value)
  %5837 = call float @dx.op.unary.f32(i32 22, float %5832)  ; Frc(value)
  %5838 = call float @dx.op.unary.f32(i32 22, float %5831)  ; Frc(value)
  %5839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %5837, float %5838, float %5835, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5840 = extractvalue %dx.types.ResRet.f32 %5839, 0
  %5841 = extractvalue %dx.types.ResRet.f32 %5839, 1
  %5842 = extractvalue %dx.types.ResRet.f32 %5839, 2
  %5843 = extractvalue %dx.types.ResRet.f32 %5839, 3
  %5844 = fcmp fast ogt float %5836, 0.000000e+00
  br i1 %5844, label %5845, label %5866, !dx.controlflow.hints !85

; <label>:5845                                    ; preds = %5828
  %5846 = fadd fast float %5835, 1.000000e+00
  %5847 = call float @dx.op.unary.f32(i32 22, float %5809)  ; Frc(value)
  %5848 = call float @dx.op.unary.f32(i32 22, float %5810)  ; Frc(value)
  %5849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %5847, float %5848, float %5846, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5850 = extractvalue %dx.types.ResRet.f32 %5849, 0
  %5851 = extractvalue %dx.types.ResRet.f32 %5849, 1
  %5852 = extractvalue %dx.types.ResRet.f32 %5849, 2
  %5853 = extractvalue %dx.types.ResRet.f32 %5849, 3
  %5854 = fsub fast float %5850, %5840
  %5855 = fsub fast float %5851, %5841
  %5856 = fsub fast float %5852, %5842
  %5857 = fsub fast float %5853, %5843
  %5858 = fmul fast float %5854, %5836
  %5859 = fmul fast float %5855, %5836
  %5860 = fmul fast float %5856, %5836
  %5861 = fmul fast float %5857, %5836
  %5862 = fadd fast float %5858, %5840
  %5863 = fadd fast float %5859, %5841
  %5864 = fadd fast float %5860, %5842
  %5865 = fadd fast float %5861, %5843
  br label %5866

; <label>:5866                                    ; preds = %5845, %5828
  %5867 = phi float [ %5862, %5845 ], [ %5840, %5828 ]
  %5868 = phi float [ %5863, %5845 ], [ %5841, %5828 ]
  %5869 = phi float [ %5864, %5845 ], [ %5842, %5828 ]
  %5870 = phi float [ %5865, %5845 ], [ %5843, %5828 ]
  %5871 = fadd fast float %5867, -5.000000e-01
  %5872 = fadd fast float %5869, -5.000000e-01
  %5873 = fmul fast float %5871, 0xBFD5555560000000
  %5874 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5872, float %5873)  ; FMad(a,b,c)
  %5875 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5868, float 0.000000e+00)  ; FMad(a,b,c)
  %5876 = fadd fast float %5875, %5870
  %5877 = fmul fast float %5871, -7.500000e-01
  %5878 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5872, float %5877)  ; FMad(a,b,c)
  %5879 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5868, float 0.000000e+00)  ; FMad(a,b,c)
  %5880 = fadd fast float %5879, %5870
  %5881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5882 = extractvalue %dx.types.CBufRet.f32 %5881, 0
  %5883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5884 = extractvalue %dx.types.CBufRet.f32 %5883, 0
  %5885 = extractvalue %dx.types.CBufRet.f32 %5883, 1
  %5886 = extractvalue %dx.types.CBufRet.f32 %5883, 2
  %5887 = extractvalue %dx.types.CBufRet.f32 %5883, 3
  %5888 = fsub fast float %5884, %5874
  %5889 = fsub fast float %5885, %5876
  %5890 = fsub fast float %5886, %5878
  %5891 = fsub fast float %5887, %5880
  %5892 = fmul fast float %5888, %5882
  %5893 = fmul fast float %5889, %5882
  %5894 = fmul fast float %5890, %5882
  %5895 = fmul fast float %5891, %5882
  %5896 = fadd fast float %5892, %5874
  %5897 = fadd fast float %5893, %5876
  %5898 = fadd fast float %5894, %5878
  %5899 = fadd fast float %5895, %5880
  %5900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5901 = extractvalue %dx.types.ResRet.i32 %5900, 0
  %5902 = and i32 %5901, 536870911
  %5903 = uitofp i32 %5902 to float
  %5904 = fmul fast float %5903, %5750
  %5905 = fmul fast float %5903, %5754
  %5906 = fptoui float %5904 to i32
  %5907 = fptoui float %5905 to i32
  %5908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5909 = extractvalue %dx.types.ResRet.i32 %5908, 0
  %5910 = and i32 %5909, 31
  %5911 = lshr i32 %5906, %5910
  %5912 = lshr i32 %5907, %5910
  %5913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5914 = extractvalue %dx.types.ResRet.i32 %5913, 0
  %5915 = and i32 %5914, 31
  %5916 = shl i32 1, %5915
  %5917 = call i32 @dx.op.binary.i32(i32 40, i32 %5916, i32 4)  ; UMin(a,b)
  %5918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5919 = extractvalue %dx.types.ResRet.i32 %5918, 0
  %5920 = extractvalue %dx.types.ResRet.i32 %5918, 1
  %5921 = icmp eq i32 %5917, 0
  br i1 %5921, label %5963, label %5922

; <label>:5922                                    ; preds = %5866
  br label %5923

; <label>:5923                                    ; preds = %5951, %5922
  %5924 = phi i32 [ %5954, %5951 ], [ 0, %5922 ]
  %5925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5926 = extractvalue %dx.types.ResRet.i32 %5925, 0
  %5927 = lshr i32 %5926, 16
  %5928 = and i32 %5927, 31
  %5929 = shl i32 %5912, %5928
  %5930 = add i32 %5929, %5911
  %5931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5932 = extractvalue %dx.types.ResRet.i32 %5931, 0
  %5933 = and i32 %5932, 31
  %5934 = shl i32 %5930, %5933
  %5935 = add i32 %5934, %5924
  %5936 = shl i32 %5935, 2
  %5937 = add i32 %5936, 32
  %5938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5937, i32 undef)  ; BufferLoad(srv,index,wot)
  %5939 = extractvalue %dx.types.ResRet.i32 %5938, 0
  %5940 = icmp slt i32 %5939, 0
  %5941 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %5924
  %5942 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 %5924
  %5943 = bitcast float* %5941 to i32*
  %5944 = bitcast float* %5942 to i32*
  br i1 %5940, label %5945, label %5951

; <label>:5945                                    ; preds = %5923
  %5946 = and i32 %5939, 1073741823
  %5947 = add nuw nsw i32 %5946, 20
  %5948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5947, i32 undef)  ; BufferLoad(srv,index,wot)
  %5949 = extractvalue %dx.types.ResRet.i32 %5948, 0
  %5950 = extractvalue %dx.types.ResRet.i32 %5948, 1
  br label %5951

; <label>:5951                                    ; preds = %5945, %5923
  %5952 = phi i32 [ %5949, %5945 ], [ %5919, %5923 ]
  %5953 = phi i32 [ %5950, %5945 ], [ %5920, %5923 ]
  store i32 %5952, i32* %5943, align 4
  store i32 %5953, i32* %5944, align 4
  %5954 = add nuw i32 %5924, 1
  %5955 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5956 = extractvalue %dx.types.CBufRet.i32 %5955, 2
  %5957 = icmp eq i32 %5956, 0
  %5958 = icmp ugt i32 %5939, -1073741825
  %5959 = and i1 %5958, %5957
  %5960 = icmp ult i32 %5954, %5917
  %5961 = and i1 %5959, %5960
  br i1 %5961, label %5923, label %5962

; <label>:5962                                    ; preds = %5951
  br label %5963

; <label>:5963                                    ; preds = %5962, %5866
  %5964 = phi i32 [ 0, %5866 ], [ %5954, %5962 ]
  %5965 = extractvalue %dx.types.CBufRet.f32 %5728, 2
  %5966 = fptoui float %5965 to i32
  %5967 = icmp eq i32 %5966, 0
  br i1 %5967, label %6019, label %5968

; <label>:5968                                    ; preds = %5963
  br label %5969

; <label>:5969                                    ; preds = %6014, %5968
  %5970 = phi i32 [ %6015, %6014 ], [ %5964, %5968 ]
  %5971 = phi i32 [ %6016, %6014 ], [ 0, %5968 ]
  %5972 = lshr i32 %5971, 2
  %5973 = and i32 %5971, 3
  %5974 = add nuw nsw i32 %5972, 83
  %5975 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 %5974)  ; CBufferLoadLegacy(handle,regIndex)
  %5976 = extractvalue %dx.types.CBufRet.i32 %5975, 0
  %5977 = extractvalue %dx.types.CBufRet.i32 %5975, 1
  %5978 = extractvalue %dx.types.CBufRet.i32 %5975, 2
  %5979 = extractvalue %dx.types.CBufRet.i32 %5975, 3
  %5980 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 0
  store i32 %5976, i32* %5980, align 4
  %5981 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 1
  store i32 %5977, i32* %5981, align 4
  %5982 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 2
  store i32 %5978, i32* %5982, align 4
  %5983 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 3
  store i32 %5979, i32* %5983, align 4
  %5984 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 %5973
  %5985 = load i32, i32* %5984, align 4, !tbaa !86, !noalias !90
  %5986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5987 = extractvalue %dx.types.ResRet.i32 %5986, 0
  %5988 = lshr i32 %5987, 16
  %5989 = and i32 %5988, 31
  %5990 = shl i32 %5912, %5989
  %5991 = add i32 %5990, %5911
  %5992 = shl i32 %5991, 2
  %5993 = add i32 %5992, %5985
  %5994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5993, i32 undef)  ; BufferLoad(srv,index,wot)
  %5995 = extractvalue %dx.types.ResRet.i32 %5994, 0
  %5996 = icmp eq i32 %5995, 0
  br i1 %5996, label %6014, label %5997

; <label>:5997                                    ; preds = %5969
  %5998 = icmp slt i32 %5995, 0
  %5999 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %5970
  %6000 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 %5970
  %6001 = bitcast float* %5999 to i32*
  %6002 = bitcast float* %6000 to i32*
  br i1 %5998, label %6003, label %6010

; <label>:6003                                    ; preds = %5997
  %6004 = and i32 %5995, 1073741823
  %6005 = add i32 %5985, 20
  %6006 = add i32 %6005, %6004
  %6007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6006, i32 undef)  ; BufferLoad(srv,index,wot)
  %6008 = extractvalue %dx.types.ResRet.i32 %6007, 0
  %6009 = extractvalue %dx.types.ResRet.i32 %6007, 1
  br label %6010

; <label>:6010                                    ; preds = %6003, %5997
  %6011 = phi i32 [ %6008, %6003 ], [ %5919, %5997 ]
  %6012 = phi i32 [ %6009, %6003 ], [ %5920, %5997 ]
  store i32 %6011, i32* %6001, align 4
  store i32 %6012, i32* %6002, align 4
  %6013 = add i32 %5970, 1
  br label %6014

; <label>:6014                                    ; preds = %6010, %5969
  %6015 = phi i32 [ %5970, %5969 ], [ %6013, %6010 ]
  %6016 = add nuw i32 %5971, 1
  %6017 = icmp eq i32 %6016, %5966
  br i1 %6017, label %6018, label %5969

; <label>:6018                                    ; preds = %6014
  br label %6019

; <label>:6019                                    ; preds = %6018, %5963
  %6020 = phi i32 [ %5964, %5963 ], [ %6015, %6018 ]
  %6021 = icmp eq i32 %6020, 1
  %6022 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 0
  %6023 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 0
  br i1 %6021, label %6024, label %6027

; <label>:6024                                    ; preds = %6019
  %6025 = load float, float* %6022, align 4
  %6026 = load float, float* %6023, align 4
  br label %6054

; <label>:6027                                    ; preds = %6019
  %6028 = load float, float* %6022, align 4
  %6029 = load float, float* %6023, align 4
  %6030 = fdiv fast float 1.000000e+00, %6029
  %6031 = fsub fast float %6028, %6030
  %6032 = icmp ugt i32 %6020, 1
  br i1 %6032, label %6033, label %6049

; <label>:6033                                    ; preds = %6027
  br label %6034

; <label>:6034                                    ; preds = %6034, %6033
  %6035 = phi float [ %6044, %6034 ], [ %6031, %6033 ]
  %6036 = phi float [ %6045, %6034 ], [ %6028, %6033 ]
  %6037 = phi i32 [ %6046, %6034 ], [ 1, %6033 ]
  %6038 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %6037
  %6039 = load float, float* %6038, align 4
  %6040 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 %6037
  %6041 = load float, float* %6040, align 4
  %6042 = fdiv fast float 1.000000e+00, %6041
  %6043 = fsub fast float %6039, %6042
  %6044 = call float @dx.op.binary.f32(i32 36, float %6035, float %6043)  ; FMin(a,b)
  %6045 = call float @dx.op.binary.f32(i32 35, float %6036, float %6039)  ; FMax(a,b)
  %6046 = add nuw i32 %6037, 1
  %6047 = icmp eq i32 %6046, %6020
  br i1 %6047, label %6048, label %6034

; <label>:6048                                    ; preds = %6034
  br label %6049

; <label>:6049                                    ; preds = %6048, %6027
  %6050 = phi float [ %6031, %6027 ], [ %6044, %6048 ]
  %6051 = phi float [ %6028, %6027 ], [ %6045, %6048 ]
  %6052 = fsub fast float %6051, %6050
  %6053 = fdiv fast float 1.000000e+00, %6052
  br label %6054

; <label>:6054                                    ; preds = %6049, %6024
  %6055 = phi float [ %6025, %6024 ], [ %6051, %6049 ]
  %6056 = phi float [ %6026, %6024 ], [ %6053, %6049 ]
  %6057 = fadd fast float %5758, %6055
  %6058 = fmul fast float %6057, %6056
  %6059 = call float @dx.op.unary.f32(i32 7, float %6058)  ; Saturate(value)
  %6060 = fmul fast float %6059, 2.000000e+00
  %6061 = fsub fast float 1.000000e+00, %6060
  %6062 = fmul fast float %5896, %5896
  %6063 = fsub fast float %5897, %6062
  %6064 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6063)  ; FMax(a,b)
  %6065 = fdiv fast float 1.000000e+00, %6064
  %6066 = fmul fast float %5897, %5896
  %6067 = fsub fast float %5898, %6066
  %6068 = fsub fast float %6061, %5896
  %6069 = fmul fast float %6061, %6061
  %6070 = fsub fast float %6069, %5897
  %6071 = fmul fast float %6065, %6067
  %6072 = fmul fast float %6071, %6068
  %6073 = fsub fast float %6070, %6072
  %6074 = fmul fast float %5897, %5897
  %6075 = fsub fast float %5899, %6074
  %6076 = fmul fast float %6067, %6067
  %6077 = fmul fast float %6076, %6065
  %6078 = fsub fast float %6075, %6077
  %6079 = fdiv fast float %6073, %6078
  %6080 = fmul fast float %6079, %6067
  %6081 = fsub fast float %6068, %6080
  %6082 = fmul fast float %6081, %6065
  %6083 = fmul fast float %6082, %5896
  %6084 = fsub fast float 1.000000e+00, %6083
  %6085 = fmul fast float %6079, %5897
  %6086 = fsub fast float %6084, %6085
  %6087 = fmul fast float %6082, %6082
  %6088 = fmul fast float %6079, 4.000000e+00
  %6089 = fmul fast float %6088, %6086
  %6090 = fsub fast float %6087, %6089
  %6091 = call float @dx.op.unary.f32(i32 24, float %6090)  ; Sqrt(value)
  %6092 = fcmp fast oge float %6082, 0.000000e+00
  %6093 = fsub fast float -0.000000e+00, %6091
  %6094 = select i1 %6092, float %6093, float %6091
  %6095 = fsub fast float %6094, %6082
  %6096 = fdiv fast float %6095, %6079
  %6097 = fdiv fast float %6086, %6095
  %6098 = fmul fast float %6096, 5.000000e-01
  %6099 = fmul fast float %6097, 2.000000e+00
  %6100 = select i1 %6092, float %6098, float %6099
  %6101 = select i1 %6092, float %6099, float %6098
  %6102 = call float @dx.op.binary.f32(i32 35, float %6100, float %6101)  ; FMax(a,b)
  %6103 = call float @dx.op.binary.f32(i32 36, float %6100, float %6101)  ; FMin(a,b)
  %6104 = fcmp fast ogt float %6061, %6102
  %6105 = fsub fast float %6061, %6103
  %6106 = fsub fast float %6061, %6102
  %6107 = fsub fast float %6102, %6103
  %6108 = select i1 %6104, float %6106, float %6107
  %6109 = fmul float %6105, %6108
  %6110 = select i1 %6104, float %6103, float %6061
  %6111 = fcmp fast ogt float %6061, %6103
  %6112 = fmul fast float %6110, %6102
  %6113 = fadd fast float %6110, %6102
  %6114 = fmul fast float %6113, %5896
  %6115 = fadd fast float %6112, %5897
  %6116 = fsub fast float %6115, %6114
  %6117 = fdiv fast float %6116, %6109
  %6118 = select i1 %6111, float %6117, float 0.000000e+00
  %6119 = fsub fast float 1.000000e+00, %6118
  %6120 = select i1 %6104, float %6119, float %6118
  %6121 = call float @dx.op.unary.f32(i32 7, float %6120)  ; Saturate(value)
  %6122 = extractvalue %dx.types.CBufRet.f32 %5881, 3
  %6123 = fmul fast float %6122, %6121
  %6124 = fsub fast float 1.000000e+00, %6123
  br label %6125

; <label>:6125                                    ; preds = %6054, %5766, %5731, %5727, %5691
  %6126 = phi float [ 1.000000e+00, %5691 ], [ %6124, %6054 ], [ 1.000000e+00, %5731 ], [ 1.000000e+00, %5766 ], [ 1.000000e+00, %5727 ]
  %6127 = fcmp fast ogt float %5723, 0.000000e+00
  br i1 %6127, label %6128, label %6136, !dx.controlflow.hints !99

; <label>:6128                                    ; preds = %6125
  %6129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6130 = extractvalue %dx.types.CBufRet.f32 %6129, 2
  %6131 = fadd fast float %6130, %5604
  %6132 = call float @dx.op.binary.f32(i32 35, float %6131, float 0.000000e+00)  ; FMax(a,b)
  %6133 = fadd fast float %6132, 0x3F10000000000000
  %6134 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %38, float %5622, float %5623, float undef, float undef, i32 0, i32 0, i32 undef, float %6133)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6135 = extractvalue %dx.types.ResRet.f32 %6134, 0
  br label %6136

; <label>:6136                                    ; preds = %6128, %6125
  %6137 = phi float [ %6135, %6128 ], [ 1.000000e+00, %6125 ]
  %6138 = fcmp fast ogt float %5721, 0.000000e+00
  br i1 %6138, label %6139, label %6147, !dx.controlflow.hints !100

; <label>:6139                                    ; preds = %6136
  %6140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6141 = extractvalue %dx.types.CBufRet.f32 %6140, 1
  %6142 = fadd fast float %6141, %5604
  %6143 = call float @dx.op.binary.f32(i32 35, float %6142, float 0.000000e+00)  ; FMax(a,b)
  %6144 = fadd fast float %6143, 0x3F10000000000000
  %6145 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %38, float %5614, float %5615, float undef, float undef, i32 0, i32 0, i32 undef, float %6144)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6146 = extractvalue %dx.types.ResRet.f32 %6145, 0
  br label %6147

; <label>:6147                                    ; preds = %6139, %6136
  %6148 = phi float [ %6146, %6139 ], [ 1.000000e+00, %6136 ]
  %6149 = fcmp fast ogt float %5720, 0.000000e+00
  br i1 %6149, label %6150, label %6162, !dx.controlflow.hints !101

; <label>:6150                                    ; preds = %6147
  %6151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6152 = extractvalue %dx.types.CBufRet.f32 %6151, 0
  %6153 = fadd fast float %6152, %5604
  %6154 = call float @dx.op.binary.f32(i32 35, float %6153, float 0.000000e+00)  ; FMax(a,b)
  %6155 = fadd fast float %6154, 0x3F10000000000000
  br i1 %5607, label %6156, label %6159, !dx.controlflow.hints !102

; <label>:6156                                    ; preds = %6150
  %6157 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %38, float %5596, float %5600, float undef, float undef, i32 0, i32 0, i32 undef, float %6155)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6158 = extractvalue %dx.types.ResRet.f32 %6157, 0
  br label %6162

; <label>:6159                                    ; preds = %6150
  %6160 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %38, float %5596, float %5600, float undef, float undef, i32 0, i32 0, i32 undef, float %6155)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6161 = extractvalue %dx.types.ResRet.f32 %6160, 0
  br label %6162

; <label>:6162                                    ; preds = %6159, %6156, %6147
  %6163 = phi float [ %6158, %6156 ], [ %6161, %6159 ], [ 1.000000e+00, %6147 ]
  %6164 = fsub fast float %6137, %6126
  %6165 = fmul fast float %6164, %5693
  %6166 = fadd fast float %6165, %6126
  %6167 = fsub fast float %6148, %6166
  %6168 = fmul fast float %6167, %5692
  %6169 = fadd fast float %6168, %6166
  %6170 = fsub fast float %6163, %6169
  %6171 = fmul fast float %6170, %5720
  %6172 = fadd fast float %6171, %6169
  %6173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6174 = extractvalue %dx.types.CBufRet.f32 %6173, 2
  %6175 = fcmp fast ogt float %6174, 0.000000e+00
  br i1 %6175, label %6176, label %6216, !dx.controlflow.hints !103

; <label>:6176                                    ; preds = %6162
  %6177 = fcmp fast ugt float %6174, 0.000000e+00
  br i1 %6177, label %6178, label %6213

; <label>:6178                                    ; preds = %6176
  %6179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6180 = extractvalue %dx.types.CBufRet.f32 %6179, 0
  %6181 = extractvalue %dx.types.CBufRet.f32 %6179, 1
  %6182 = extractvalue %dx.types.CBufRet.f32 %6179, 2
  %6183 = extractvalue %dx.types.CBufRet.f32 %6179, 3
  %6184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6185 = extractvalue %dx.types.CBufRet.f32 %6184, 0
  %6186 = extractvalue %dx.types.CBufRet.f32 %6184, 1
  %6187 = extractvalue %dx.types.CBufRet.f32 %6184, 2
  %6188 = extractvalue %dx.types.CBufRet.f32 %6184, 3
  %6189 = extractvalue %dx.types.CBufRet.f32 %6173, 0
  %6190 = extractvalue %dx.types.CBufRet.f32 %6173, 1
  %6191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6192 = extractvalue %dx.types.CBufRet.f32 %6191, 0
  %6193 = extractvalue %dx.types.CBufRet.f32 %6191, 1
  %6194 = extractvalue %dx.types.CBufRet.f32 %6191, 2
  %6195 = fadd fast float %6192, %5573
  %6196 = fadd fast float %6193, %5574
  %6197 = fadd fast float %6194, %5575
  %6198 = fmul fast float %6195, %6180
  %6199 = call float @dx.op.tertiary.f32(i32 46, float %6181, float %6196, float %6198)  ; FMad(a,b,c)
  %6200 = call float @dx.op.tertiary.f32(i32 46, float %6182, float %6197, float %6199)  ; FMad(a,b,c)
  %6201 = fadd fast float %6200, %6183
  %6202 = fmul fast float %6195, %6185
  %6203 = call float @dx.op.tertiary.f32(i32 46, float %6186, float %6196, float %6202)  ; FMad(a,b,c)
  %6204 = call float @dx.op.tertiary.f32(i32 46, float %6187, float %6197, float %6203)  ; FMad(a,b,c)
  %6205 = fadd fast float %6204, %6188
  %6206 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %33, float %6201, float %6205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6207 = extractvalue %dx.types.ResRet.f32 %6206, 0
  %6208 = fmul fast float %6207, %6190
  %6209 = fadd fast float %6208, %6189
  %6210 = call float @dx.op.unary.f32(i32 7, float %6209)  ; Saturate(value)
  %6211 = fmul fast float %6210, %6174
  %6212 = fsub fast float 1.000000e+00, %6211
  br label %6213

; <label>:6213                                    ; preds = %6178, %6176
  %6214 = phi float [ %6212, %6178 ], [ 1.000000e+00, %6176 ]
  %6215 = fmul fast float %6214, %6172
  br label %6216

; <label>:6216                                    ; preds = %6213, %6162, %5553
  %6217 = phi float [ 1.000000e+00, %5553 ], [ %6215, %6213 ], [ %6172, %6162 ]
  %6218 = call float @dx.op.binary.f32(i32 36, float %6217, float %6217)  ; FMin(a,b)
  %6219 = call float @dx.op.binary.f32(i32 36, float %6217, float %6218)  ; FMin(a,b)
  %6220 = fcmp fast ogt float %6219, 0.000000e+00
  br i1 %6220, label %6221, label %6382, !dx.controlflow.hints !104

; <label>:6221                                    ; preds = %6216
  %6222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6223 = extractvalue %dx.types.CBufRet.f32 %6222, 0
  %6224 = extractvalue %dx.types.CBufRet.f32 %6222, 1
  %6225 = extractvalue %dx.types.CBufRet.f32 %6222, 2
  %6226 = extractvalue %dx.types.CBufRet.f32 %6222, 3
  %6227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6228 = extractvalue %dx.types.CBufRet.f32 %6227, 0
  %6229 = extractvalue %dx.types.CBufRet.f32 %6227, 1
  %6230 = extractvalue %dx.types.CBufRet.f32 %6227, 2
  %6231 = extractvalue %dx.types.CBufRet.f32 %6227, 3
  %6232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6233 = extractvalue %dx.types.CBufRet.f32 %6232, 0
  %6234 = extractvalue %dx.types.CBufRet.f32 %6232, 1
  %6235 = extractvalue %dx.types.CBufRet.f32 %6232, 2
  %6236 = extractvalue %dx.types.CBufRet.f32 %6232, 3
  %6237 = fmul fast float %6223, %5573
  %6238 = call float @dx.op.tertiary.f32(i32 46, float %5574, float %6224, float %6237)  ; FMad(a,b,c)
  %6239 = call float @dx.op.tertiary.f32(i32 46, float %5575, float %6225, float %6238)  ; FMad(a,b,c)
  %6240 = fadd fast float %6239, %6226
  %6241 = fmul fast float %6228, %5573
  %6242 = call float @dx.op.tertiary.f32(i32 46, float %5574, float %6229, float %6241)  ; FMad(a,b,c)
  %6243 = call float @dx.op.tertiary.f32(i32 46, float %5575, float %6230, float %6242)  ; FMad(a,b,c)
  %6244 = fadd fast float %6243, %6231
  %6245 = fmul fast float %6233, %5573
  %6246 = call float @dx.op.tertiary.f32(i32 46, float %5574, float %6234, float %6245)  ; FMad(a,b,c)
  %6247 = call float @dx.op.tertiary.f32(i32 46, float %5575, float %6235, float %6246)  ; FMad(a,b,c)
  %6248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6249 = extractvalue %dx.types.CBufRet.f32 %6248, 0
  %6250 = extractvalue %dx.types.CBufRet.f32 %6248, 1
  %6251 = extractvalue %dx.types.CBufRet.f32 %6248, 3
  %6252 = fmul fast float %6251, %6240
  %6253 = fmul fast float %6251, %6244
  %6254 = fadd fast float %6252, %6249
  %6255 = fadd fast float %6253, %6250
  %6256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6257 = extractvalue %dx.types.CBufRet.f32 %6256, 0
  %6258 = extractvalue %dx.types.CBufRet.f32 %6256, 1
  %6259 = fsub fast float %6254, %6257
  %6260 = fsub fast float %6255, %6258
  %6261 = fcmp fast olt float %6259, 0.000000e+00
  %6262 = fcmp fast olt float %6260, 0.000000e+00
  %6263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6264 = extractvalue %dx.types.CBufRet.f32 %6263, 0
  %6265 = extractvalue %dx.types.CBufRet.f32 %6263, 1
  %6266 = extractvalue %dx.types.CBufRet.f32 %6263, 2
  %6267 = extractvalue %dx.types.CBufRet.f32 %6263, 3
  %6268 = select i1 %6261, float %6264, float %6266
  %6269 = select i1 %6262, float %6265, float %6267
  %6270 = fmul fast float %6268, %6259
  %6271 = fmul fast float %6269, %6260
  %6272 = call float @dx.op.unary.f32(i32 6, float %6270)  ; FAbs(value)
  %6273 = call float @dx.op.unary.f32(i32 6, float %6271)  ; FAbs(value)
  %6274 = extractvalue %dx.types.CBufRet.f32 %5568, 0
  %6275 = call float @dx.op.binary.f32(i32 35, float %6272, float %6273)  ; FMax(a,b)
  %6276 = fsub fast float %6274, %6275
  %6277 = call float @dx.op.unary.f32(i32 7, float %6276)  ; Saturate(value)
  %6278 = fcmp fast ogt float %6277, 0.000000e+00
  br i1 %6278, label %6279, label %6320, !dx.controlflow.hints !105

; <label>:6279                                    ; preds = %6221
  %6280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %36, float %6254, float %6255, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6281 = extractvalue %dx.types.ResRet.f32 %6280, 1
  %6282 = fcmp fast ogt float %6281, 0.000000e+00
  br i1 %6282, label %6283, label %6315

; <label>:6283                                    ; preds = %6279
  %6284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %36, float %6254, float %6255, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6285 = extractvalue %dx.types.ResRet.f32 %6284, 0
  %6286 = extractvalue %dx.types.ResRet.f32 %6284, 1
  %6287 = extractvalue %dx.types.ResRet.f32 %6284, 2
  %6288 = extractvalue %dx.types.ResRet.f32 %6284, 3
  %6289 = fsub fast float 1.000000e+00, %6236
  %6290 = fsub fast float %6289, %6247
  %6291 = fmul fast float %6290, 0x400921FB60000000
  %6292 = fadd fast float %6291, 0x3FF921FB60000000
  %6293 = call float @dx.op.unary.f32(i32 13, float %6292)  ; Sin(value)
  %6294 = fadd fast float %6293, -1.000000e+00
  %6295 = fmul fast float %6294, 0x3FD45F3060000000
  %6296 = fmul fast float %6290, 0x401921FB60000000
  %6297 = fadd fast float %6296, 0x400921FB60000000
  %6298 = call float @dx.op.unary.f32(i32 13, float %6297)  ; Sin(value)
  %6299 = fadd fast float %6298, 0x3E7777A5C0000000
  %6300 = fmul fast float %6299, 0x3FC45F3060000000
  %6301 = fmul fast float %6290, 0x4022D97C80000000
  %6302 = fadd fast float %6301, 0x4012D97C80000000
  %6303 = call float @dx.op.unary.f32(i32 13, float %6302)  ; Sin(value)
  %6304 = fadd fast float %6303, 1.000000e+00
  %6305 = fmul fast float %6304, 0x3FBB2995E0000000
  %6306 = fmul fast float %6290, 0x402921FB60000000
  %6307 = fadd fast float %6306, 0x401921FB60000000
  %6308 = call float @dx.op.unary.f32(i32 13, float %6307)  ; Sin(value)
  %6309 = fadd fast float %6308, 0xBE8777A5C0000000
  %6310 = fmul fast float %6309, 0x3FB45F3060000000
  %6311 = call float @dx.op.dot4.f32(i32 56, float %6285, float %6286, float %6287, float %6288, float %6295, float %6300, float %6305, float %6310)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6312 = fmul fast float %6311, 0xBFF7154760000000
  %6313 = call float @dx.op.unary.f32(i32 21, float %6312)  ; Exp(value)
  %6314 = call float @dx.op.unary.f32(i32 7, float %6313)  ; Saturate(value)
  br label %6315

; <label>:6315                                    ; preds = %6283, %6279
  %6316 = phi float [ %6314, %6283 ], [ 1.000000e+00, %6279 ]
  %6317 = fadd fast float %6316, -1.000000e+00
  %6318 = fmul fast float %6317, %6277
  %6319 = fadd fast float %6318, 1.000000e+00
  br label %6320

; <label>:6320                                    ; preds = %6315, %6221
  %6321 = phi float [ %6319, %6315 ], [ 1.000000e+00, %6221 ]
  %6322 = fmul fast float %6321, %6217
  %6323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6324 = extractvalue %dx.types.CBufRet.f32 %6323, 0
  %6325 = extractvalue %dx.types.CBufRet.f32 %6323, 1
  %6326 = extractvalue %dx.types.CBufRet.f32 %6323, 2
  %6327 = fadd fast float %6324, %179
  %6328 = fadd fast float %6325, %180
  %6329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6330 = extractvalue %dx.types.CBufRet.f32 %6329, 1
  %6331 = fsub fast float -0.000000e+00, %6327
  %6332 = fsub fast float -0.000000e+00, %6328
  %6333 = fsub fast float -0.000000e+00, %181
  %6334 = fsub fast float %6333, %6326
  %6335 = fadd fast float %6334, %6330
  %6336 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6331, float %6332, float %6335)  ; Dot3(ax,ay,az,bx,by,bz)
  %6337 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5554, float %5555, float %5556)  ; Dot3(ax,ay,az,bx,by,bz)
  %6338 = fdiv fast float 1.000000e+00, %6337
  %6339 = fmul fast float %6338, %6336
  %6340 = fmul fast float %5554, %6339
  %6341 = fmul fast float %5555, %6339
  %6342 = fadd fast float %6340, %6327
  %6343 = fadd fast float %6341, %6328
  %6344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6345 = extractvalue %dx.types.CBufRet.f32 %6344, 0
  %6346 = extractvalue %dx.types.CBufRet.f32 %6344, 1
  %6347 = fsub fast float %6342, %6345
  %6348 = fsub fast float %6343, %6346
  %6349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6350 = extractvalue %dx.types.CBufRet.f32 %6349, 2
  %6351 = extractvalue %dx.types.CBufRet.f32 %6349, 3
  %6352 = fmul fast float %6347, %6350
  %6353 = fmul fast float %6348, %6351
  %6354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6355 = extractvalue %dx.types.CBufRet.i32 %6354, 3
  %6356 = icmp eq i32 %6355, 0
  br i1 %6356, label %6362, label %6357

; <label>:6357                                    ; preds = %6320
  %6358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %6352, float %6353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6359 = extractvalue %dx.types.ResRet.f32 %6358, 0
  %6360 = extractvalue %dx.types.ResRet.f32 %6358, 1
  %6361 = extractvalue %dx.types.ResRet.f32 %6358, 2
  br label %6367

; <label>:6362                                    ; preds = %6320
  %6363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %36, float %6352, float %6353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6364 = extractvalue %dx.types.ResRet.f32 %6363, 0
  %6365 = extractvalue %dx.types.ResRet.f32 %6363, 1
  %6366 = extractvalue %dx.types.ResRet.f32 %6363, 2
  br label %6367

; <label>:6367                                    ; preds = %6362, %6357
  %6368 = phi float [ %6359, %6357 ], [ %6364, %6362 ]
  %6369 = phi float [ %6360, %6357 ], [ %6365, %6362 ]
  %6370 = phi float [ %6361, %6357 ], [ %6366, %6362 ]
  %6371 = extractvalue %dx.types.CBufRet.f32 %6329, 2
  %6372 = fmul fast float %6371, %6368
  %6373 = extractvalue %dx.types.CBufRet.f32 %6329, 0
  %6374 = fsub fast float %6339, %6373
  %6375 = fsub fast float %6374, %6372
  %6376 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6375)  ; FMax(a,b)
  %6377 = fmul fast float %6376, %6369
  %6378 = call float @dx.op.binary.f32(i32 36, float %6370, float %6377)  ; FMin(a,b)
  %6379 = fmul fast float %6378, 0xBFF7154760000000
  %6380 = call float @dx.op.unary.f32(i32 21, float %6379)  ; Exp(value)
  %6381 = fmul fast float %6322, %6380
  br label %6382

; <label>:6382                                    ; preds = %6367, %6216
  %6383 = phi float [ %6381, %6367 ], [ %6217, %6216 ]
  %6384 = call float @dx.op.binary.f32(i32 36, float %6383, float %6383)  ; FMin(a,b)
  %6385 = call float @dx.op.binary.f32(i32 36, float %6383, float %6384)  ; FMin(a,b)
  %6386 = fcmp fast ogt float %6385, 0.000000e+00
  br i1 %6386, label %6387, label %6574, !dx.controlflow.hints !106

; <label>:6387                                    ; preds = %6382
  %6388 = fmul fast float %6383, %5565
  %6389 = fmul fast float %6383, %5566
  %6390 = fmul fast float %6383, %5567
  %6391 = fsub fast float %5554, %5289
  %6392 = fsub fast float %5555, %5288
  %6393 = fsub fast float %5556, %5287
  %6394 = call float @dx.op.dot3.f32(i32 55, float %6391, float %6392, float %6393, float %6391, float %6392, float %6393)  ; Dot3(ax,ay,az,bx,by,bz)
  %6395 = call float @dx.op.unary.f32(i32 25, float %6394)  ; Rsqrt(value)
  %6396 = fmul fast float %6395, %6391
  %6397 = fmul fast float %6395, %6392
  %6398 = fmul fast float %6395, %6393
  %6399 = call float @dx.op.dot3.f32(i32 55, float %5554, float %5555, float %5556, float %5296, float %5297, float %5298)  ; Dot3(ax,ay,az,bx,by,bz)
  %6400 = call float @dx.op.dot3.f32(i32 55, float %5286, float %5285, float %5284, float %6396, float %6397, float %6398)  ; Dot3(ax,ay,az,bx,by,bz)
  %6401 = call float @dx.op.unary.f32(i32 7, float %6399)  ; Saturate(value)
  %6402 = fmul fast float %6401, %6401
  %6403 = fmul fast float %6402, %5316
  %6404 = call float @dx.op.unary.f32(i32 7, float %6403)  ; Saturate(value)
  %6405 = fmul fast float %6404, %6401
  %6406 = call float @dx.op.dot3.f32(i32 55, float %5296, float %5297, float %5298, float %6396, float %6397, float %6398)  ; Dot3(ax,ay,az,bx,by,bz)
  %6407 = fmul fast float %6406, %6406
  %6408 = call float @dx.op.unary.f32(i32 6, float %6399)  ; FAbs(value)
  %6409 = fsub fast float 1.000000e+00, %5299
  %6410 = call float @dx.op.binary.f32(i32 35, float %6409, float 0x3F847AE140000000)  ; FMax(a,b)
  %6411 = fmul fast float %6410, %6410
  %6412 = fmul fast float %6411, %6411
  %6413 = fsub fast float 1.000000e+00, %6412
  %6414 = fmul fast float %5303, %5303
  %6415 = fmul fast float %6414, %6413
  %6416 = fadd fast float %6415, %6412
  %6417 = bitcast float %6416 to i32
  %6418 = ashr i32 %6417, 1
  %6419 = add nsw i32 %6418, 532487669
  %6420 = bitcast i32 %6419 to float
  %6421 = fadd fast float %6420, %5303
  %6422 = fmul fast float %6412, %6407
  %6423 = fsub fast float 1.000000e+00, %6407
  %6424 = fadd fast float %6423, %6422
  %6425 = fmul fast float %6408, %6408
  %6426 = fmul fast float %6425, %6413
  %6427 = fadd fast float %6426, %6412
  %6428 = bitcast float %6427 to i32
  %6429 = ashr i32 %6428, 1
  %6430 = add nsw i32 %6429, 532487669
  %6431 = bitcast i32 %6430 to float
  %6432 = fadd fast float %6431, %6408
  %6433 = fmul fast float %6424, %6424
  %6434 = fmul fast float %6433, %6421
  %6435 = fmul fast float %6434, %6432
  %6436 = fdiv fast float 0x3FF0A00000000000, %6435
  %6437 = fmul fast float %6436, %6412
  %6438 = fmul fast float %5416, 0x3FF9999980000000
  %6439 = fsub fast float 5.000000e+00, %6438
  %6440 = call float @dx.op.unary.f32(i32 6, float %6400)  ; FAbs(value)
  %6441 = fsub fast float 1.000000e+00, %6440
  %6442 = fmul fast float %5416, 0x41D9660740000000
  %6443 = fadd fast float %6442, 0xC1EFBF8940000000
  %6444 = bitcast float %6441 to i32
  %6445 = sitofp i32 %6444 to float
  %6446 = fmul fast float %6445, %6439
  %6447 = fadd fast float %6443, %6446
  %6448 = fptosi float %6447 to i32
  %6449 = bitcast i32 %6448 to float
  %6450 = fsub fast float 1.000000e+00, %5290
  %6451 = fsub fast float 1.000000e+00, %5291
  %6452 = fsub fast float 1.000000e+00, %5301
  %6453 = fmul fast float %6449, %6450
  %6454 = fmul fast float %6449, %6451
  %6455 = fmul fast float %6449, %6452
  %6456 = fadd fast float %6453, %5290
  %6457 = fadd fast float %6454, %5291
  %6458 = fadd fast float %6455, %5301
  br i1 %5439, label %6459, label %6482

; <label>:6459                                    ; preds = %6387
  %6460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4384, float %6440, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6461 = extractvalue %dx.types.ResRet.f32 %6460, 0
  %6462 = extractvalue %dx.types.ResRet.f32 %6460, 1
  %6463 = extractvalue %dx.types.ResRet.f32 %6460, 2
  %6464 = fadd fast float %6461, -5.000000e-01
  %6465 = fadd fast float %6462, -5.000000e-01
  %6466 = fadd fast float %6463, -5.000000e-01
  %6467 = fmul fast float %5290, 4.000000e+00
  %6468 = fmul fast float %6467, %6450
  %6469 = fmul fast float %6468, %6464
  %6470 = fmul fast float %5291, 4.000000e+00
  %6471 = fmul fast float %6470, %6451
  %6472 = fmul fast float %6471, %6465
  %6473 = fmul fast float %5301, 4.000000e+00
  %6474 = fmul fast float %6473, %6452
  %6475 = fmul fast float %6474, %6466
  %6476 = fadd fast float %6469, %6456
  %6477 = fadd fast float %6472, %6457
  %6478 = fadd fast float %6475, %6458
  %6479 = call float @dx.op.unary.f32(i32 7, float %6476)  ; Saturate(value)
  %6480 = call float @dx.op.unary.f32(i32 7, float %6477)  ; Saturate(value)
  %6481 = call float @dx.op.unary.f32(i32 7, float %6478)  ; Saturate(value)
  br label %6482

; <label>:6482                                    ; preds = %6459, %6387
  %6483 = phi float [ %6479, %6459 ], [ %6456, %6387 ]
  %6484 = phi float [ %6480, %6459 ], [ %6457, %6387 ]
  %6485 = phi float [ %6481, %6459 ], [ %6458, %6387 ]
  %6486 = fmul fast float %6399, 9.843750e-01
  %6487 = fadd fast float %6486, 7.812500e-03
  %6488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %6487, float %5420, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6489 = extractvalue %dx.types.ResRet.f32 %6488, 0
  %6490 = extractvalue %dx.types.ResRet.f32 %6488, 1
  %6491 = extractvalue %dx.types.ResRet.f32 %6488, 2
  %6492 = extractvalue %dx.types.ResRet.f32 %6488, 3
  %6493 = fsub fast float %6491, %6489
  %6494 = fsub fast float %6492, %6490
  %6495 = fmul fast float %6493, %5426
  %6496 = fmul fast float %6494, %5426
  %6497 = fadd fast float %6495, %6489
  %6498 = fadd fast float %6496, %6490
  %6499 = fmul fast float %6497, %5290
  %6500 = fmul fast float %6497, %5291
  %6501 = fmul fast float %6497, %5301
  %6502 = fadd fast float %6499, %6498
  %6503 = fadd fast float %6500, %6498
  %6504 = fadd fast float %6501, %6498
  br i1 %5439, label %6505, label %6528

; <label>:6505                                    ; preds = %6482
  %6506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %4384, float %6399, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6507 = extractvalue %dx.types.ResRet.f32 %6506, 0
  %6508 = extractvalue %dx.types.ResRet.f32 %6506, 1
  %6509 = extractvalue %dx.types.ResRet.f32 %6506, 2
  %6510 = fadd fast float %6507, -5.000000e-01
  %6511 = fadd fast float %6508, -5.000000e-01
  %6512 = fadd fast float %6509, -5.000000e-01
  %6513 = fmul fast float %5290, 4.000000e+00
  %6514 = fmul fast float %6513, %6450
  %6515 = fmul fast float %6514, %6510
  %6516 = fmul fast float %5291, 4.000000e+00
  %6517 = fmul fast float %6516, %6451
  %6518 = fmul fast float %6517, %6511
  %6519 = fmul fast float %5301, 4.000000e+00
  %6520 = fmul fast float %6519, %6452
  %6521 = fmul fast float %6520, %6512
  %6522 = fadd fast float %6515, %6502
  %6523 = fadd fast float %6518, %6503
  %6524 = fadd fast float %6521, %6504
  %6525 = call float @dx.op.unary.f32(i32 7, float %6522)  ; Saturate(value)
  %6526 = call float @dx.op.unary.f32(i32 7, float %6523)  ; Saturate(value)
  %6527 = call float @dx.op.unary.f32(i32 7, float %6524)  ; Saturate(value)
  br label %6528

; <label>:6528                                    ; preds = %6505, %6482
  %6529 = phi float [ %6525, %6505 ], [ %6502, %6482 ]
  %6530 = phi float [ %6526, %6505 ], [ %6503, %6482 ]
  %6531 = phi float [ %6527, %6505 ], [ %6504, %6482 ]
  %6532 = call float @dx.op.binary.f32(i32 35, float %6530, float %6531)  ; FMax(a,b)
  %6533 = call float @dx.op.binary.f32(i32 35, float %6529, float %6532)  ; FMax(a,b)
  %6534 = fsub fast float 1.000000e+00, %6533
  %6535 = fmul fast float %6483, %6437
  %6536 = fmul fast float %6484, %6437
  %6537 = fmul fast float %6485, %6437
  %6538 = fsub fast float 1.000000e+00, %6400
  %6539 = bitcast float %6538 to i32
  %6540 = sitofp i32 %6539 to float
  %6541 = fmul fast float %6540, 5.000000e+00
  %6542 = fadd fast float %6541, 0xC1EFBF8940000000
  %6543 = fptosi float %6542 to i32
  %6544 = bitcast i32 %6543 to float
  %6545 = fmul fast float %6544, %4385
  %6546 = fmul fast float %6534, %6545
  %6547 = fmul fast float %6546, %5489
  %6548 = fmul fast float %6546, %5490
  %6549 = fmul fast float %6546, %5491
  %6550 = fadd fast float %6547, %6535
  %6551 = fadd fast float %6548, %6536
  %6552 = fadd fast float %6549, %6537
  %6553 = fmul fast float %6405, %6388
  %6554 = fmul fast float %6553, %6534
  %6555 = fmul fast float %6405, %6389
  %6556 = fmul fast float %6555, %6534
  %6557 = fmul fast float %6405, %6390
  %6558 = fmul fast float %6557, %6534
  %6559 = fmul fast float %6553, %6550
  %6560 = fmul fast float %6555, %6551
  %6561 = fmul fast float %6557, %6552
  %6562 = fadd fast float %6554, %5473
  %6563 = fmul fast float %6562, %4381
  %6564 = fadd fast float %6556, %5474
  %6565 = fmul fast float %6564, %4381
  %6566 = fadd fast float %6558, %5475
  %6567 = fmul fast float %6566, %4381
  %6568 = fadd fast float %6559, %5542
  %6569 = fmul fast float %6568, %4381
  %6570 = fadd fast float %6560, %5545
  %6571 = fmul fast float %6570, %4381
  %6572 = fadd fast float %6561, %5548
  %6573 = fmul fast float %6572, %4381
  br label %6574

; <label>:6574                                    ; preds = %6528, %6382, %5466
  %6575 = phi float [ %5543, %5466 ], [ %5543, %6382 ], [ %6569, %6528 ]
  %6576 = phi float [ %5546, %5466 ], [ %5546, %6382 ], [ %6571, %6528 ]
  %6577 = phi float [ %5549, %5466 ], [ %5549, %6382 ], [ %6573, %6528 ]
  %6578 = phi float [ %5538, %5466 ], [ %5538, %6382 ], [ %6563, %6528 ]
  %6579 = phi float [ %5539, %5466 ], [ %5539, %6382 ], [ %6565, %6528 ]
  %6580 = phi float [ %5540, %5466 ], [ %5540, %6382 ], [ %6567, %6528 ]
  %6581 = fmul fast float %4381, %4381
  %6582 = fmul fast float %6581, %5515
  %6583 = fmul fast float %6581, %5516
  %6584 = fmul fast float %6581, %5517
  %6585 = fadd fast float %6582, 1.000000e+00
  %6586 = fadd fast float %6583, 1.000000e+00
  %6587 = fadd fast float %6584, 1.000000e+00
  %6588 = call float @dx.op.dot3.f32(i32 55, float %6585, float %6586, float %6587, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6589 = fsub fast float 1.000000e+00, %6588
  %6590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6591 = extractvalue %dx.types.CBufRet.f32 %6590, 0
  %6592 = fmul fast float %6591, %5521
  %6593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6594 = extractvalue %dx.types.CBufRet.f32 %6593, 3
  %6595 = fsub fast float 1.000000e+00, %4388
  %6596 = call float @dx.op.unary.f32(i32 7, float %6595)  ; Saturate(value)
  %6597 = fadd fast float %6580, %4387
  %6598 = fmul fast float %6597, %4388
  %6599 = fmul fast float %6596, %6594
  %6600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6601 = extractvalue %dx.types.CBufRet.f32 %6600, 3
  %6602 = fmul fast float %6578, %5293
  %6603 = fmul fast float %6579, %5294
  %6604 = fmul fast float %6580, %5295
  %6605 = fcmp fast ogt float %83, %201
  %6606 = and i1 %6605, %4430
  %6607 = or i1 %4509, %6606
  %6608 = icmp eq i32 %4429, 2
  %6609 = fcmp fast ole float %83, %201
  %6610 = and i1 %6609, %6608
  %6611 = or i1 %6610, %6607
  br i1 %6606, label %6612, label %6869

; <label>:6612                                    ; preds = %6574
  %6613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6614 = extractvalue %dx.types.CBufRet.f32 %6613, 2
  %6615 = extractvalue %dx.types.CBufRet.f32 %6613, 3
  %6616 = fmul fast float %6614, %92
  %6617 = fmul fast float %6615, %93
  %6618 = call float @dx.op.unary.f32(i32 7, float %6616)  ; Saturate(value)
  %6619 = call float @dx.op.unary.f32(i32 7, float %6617)  ; Saturate(value)
  %6620 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %6618, float %6619, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6621 = extractvalue %dx.types.ResRet.f32 %6620, 0
  %6622 = extractvalue %dx.types.ResRet.f32 %6620, 1
  %6623 = extractvalue %dx.types.ResRet.f32 %6620, 2
  %6624 = extractvalue %dx.types.ResRet.f32 %6620, 3
  %6625 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %6618, float %6619, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6626 = extractvalue %dx.types.ResRet.f32 %6625, 0
  %6627 = extractvalue %dx.types.ResRet.f32 %6625, 1
  %6628 = extractvalue %dx.types.ResRet.f32 %6625, 2
  %6629 = extractvalue %dx.types.ResRet.f32 %6625, 3
  %6630 = call float @dx.op.binary.f32(i32 35, float %6622, float %6623)  ; FMax(a,b)
  %6631 = call float @dx.op.binary.f32(i32 35, float %6621, float %6630)  ; FMax(a,b)
  %6632 = call float @dx.op.binary.f32(i32 35, float %6631, float %6624)  ; FMax(a,b)
  %6633 = call float @dx.op.binary.f32(i32 36, float %6627, float %6628)  ; FMin(a,b)
  %6634 = call float @dx.op.binary.f32(i32 36, float %6626, float %6633)  ; FMin(a,b)
  %6635 = call float @dx.op.binary.f32(i32 36, float %6634, float %6629)  ; FMin(a,b)
  %6636 = fmul fast float %6632, 2.550000e+02
  %6637 = fadd fast float %6636, 0x3F70101020000000
  %6638 = fptoui float %6637 to i32
  %6639 = fmul fast float %6635, 2.550000e+02
  %6640 = fadd fast float %6639, 0x3F70101020000000
  %6641 = fptoui float %6640 to i32
  %6642 = icmp ult i32 %6638, %6641
  br i1 %6642, label %6643, label %6811

; <label>:6643                                    ; preds = %6612
  %6644 = fcmp fast ogt float %82, 9.843750e-01
  %6645 = fadd fast float %83, -4.000000e+00
  %6646 = select i1 %6644, float -4.000000e+00, float %6645
  %6647 = call float @dx.op.binary.f32(i32 35, float %6646, float 0.000000e+00)  ; FMax(a,b)
  %6648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6649 = extractvalue %dx.types.CBufRet.f32 %6648, 0
  %6650 = fadd fast float %6649, %6647
  %6651 = extractvalue %dx.types.CBufRet.f32 %6648, 2
  %6652 = fmul fast float %6650, %6651
  %6653 = call float @dx.op.unary.f32(i32 23, float %6652)  ; Log(value)
  %6654 = extractvalue %dx.types.CBufRet.f32 %6648, 3
  %6655 = fmul fast float %6654, %6653
  %6656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6657 = extractvalue %dx.types.CBufRet.f32 %6656, 2
  %6658 = fmul fast float %6655, %6657
  %6659 = call float @dx.op.unary.f32(i32 7, float %6658)  ; Saturate(value)
  %6660 = uitofp i32 %6638 to float
  %6661 = uitofp i32 %6641 to float
  %6662 = fadd fast float %6660, 5.000000e-01
  %6663 = fadd fast float %6661, 5.000000e-01
  %6664 = fmul fast float %6657, %6662
  %6665 = fmul fast float %6657, %6663
  %6666 = fadd fast float %6664, 0x3F0FFB4800000000
  %6667 = fadd fast float %6665, 0xBF0FFB4800000000
  %6668 = call float @dx.op.binary.f32(i32 35, float %6659, float %6666)  ; FMax(a,b)
  %6669 = call float @dx.op.binary.f32(i32 36, float %6668, float %6667)  ; FMin(a,b)
  %6670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6671 = extractvalue %dx.types.CBufRet.f32 %6670, 1
  %6672 = extractvalue %dx.types.CBufRet.f32 %6670, 2
  %6673 = extractvalue %dx.types.CBufRet.f32 %6670, 0
  %6674 = fmul fast float %6671, %6669
  %6675 = fadd fast float %6673, %6674
  %6676 = fadd fast float %6673, %6672
  %6677 = fsub fast float %6671, %6672
  %6678 = fadd fast float %6677, %6673
  %6679 = call float @dx.op.binary.f32(i32 35, float %6675, float %6676)  ; FMax(a,b)
  %6680 = call float @dx.op.binary.f32(i32 36, float %6679, float %6678)  ; FMin(a,b)
  %6681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %34, float %6618, float %6619, float %6680, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6682 = extractvalue %dx.types.ResRet.f32 %6681, 0
  %6683 = extractvalue %dx.types.ResRet.f32 %6681, 1
  %6684 = extractvalue %dx.types.ResRet.f32 %6681, 2
  %6685 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6686 = extractvalue %dx.types.CBufRet.i32 %6685, 0
  %6687 = extractvalue %dx.types.CBufRet.i32 %6685, 1
  %6688 = uitofp i32 %6686 to float
  %6689 = uitofp i32 %6687 to float
  %6690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6691 = extractvalue %dx.types.CBufRet.f32 %6690, 0
  %6692 = extractvalue %dx.types.CBufRet.f32 %6690, 1
  %6693 = fmul fast float %6688, %6618
  %6694 = fmul fast float %6689, %6619
  %6695 = fadd fast float %6693, -5.000000e-01
  %6696 = fadd fast float %6694, -5.000000e-01
  %6697 = call float @dx.op.unary.f32(i32 22, float %6695)  ; Frc(value)
  %6698 = call float @dx.op.unary.f32(i32 22, float %6696)  ; Frc(value)
  %6699 = fmul fast float %6697, %6697
  %6700 = fmul fast float %6699, %6697
  %6701 = fsub fast float 3.000000e+00, %6697
  %6702 = fmul fast float %6699, %6701
  %6703 = fmul fast float %6697, 3.000000e+00
  %6704 = fmul fast float %6700, 3.000000e+00
  %6705 = fmul fast float %6699, 6.000000e+00
  %6706 = fsub fast float %6704, %6705
  %6707 = fadd fast float %6706, 4.000000e+00
  %6708 = fmul fast float %6707, 0x3FC5555560000000
  %6709 = fmul fast float %6700, -3.000000e+00
  %6710 = fadd fast float %6699, %6697
  %6711 = fmul fast float %6710, 3.000000e+00
  %6712 = fadd fast float %6709, 1.000000e+00
  %6713 = fadd fast float %6712, %6711
  %6714 = fmul fast float %6700, 0x3FC5555560000000
  %6715 = fmul fast float %6698, %6698
  %6716 = fmul fast float %6715, %6698
  %6717 = fsub fast float 3.000000e+00, %6698
  %6718 = fmul fast float %6715, %6717
  %6719 = fmul fast float %6698, 3.000000e+00
  %6720 = fmul fast float %6716, 3.000000e+00
  %6721 = fmul fast float %6715, 6.000000e+00
  %6722 = fsub fast float %6720, %6721
  %6723 = fadd fast float %6722, 4.000000e+00
  %6724 = fmul fast float %6723, 0x3FC5555560000000
  %6725 = fmul fast float %6716, -3.000000e+00
  %6726 = fadd fast float %6715, %6698
  %6727 = fmul fast float %6726, 3.000000e+00
  %6728 = fadd fast float %6725, 1.000000e+00
  %6729 = fadd fast float %6728, %6727
  %6730 = fmul fast float %6716, 0x3FC5555560000000
  %6731 = fadd fast float %6697, 1.000000e+00
  %6732 = fsub fast float 1.000000e+00, %6703
  %6733 = fadd fast float %6732, %6702
  %6734 = fadd fast float %6733, %6707
  %6735 = fmul fast float %6734, 0x3FC5555560000000
  %6736 = fdiv fast float %6708, %6735
  %6737 = fsub fast float %6731, %6736
  %6738 = fsub fast float 1.000000e+00, %6697
  %6739 = fadd fast float %6713, %6700
  %6740 = fmul fast float %6739, 0x3FC5555560000000
  %6741 = fdiv fast float %6714, %6740
  %6742 = fadd fast float %6738, %6741
  %6743 = fadd fast float %6698, 1.000000e+00
  %6744 = fsub fast float 1.000000e+00, %6719
  %6745 = fadd fast float %6744, %6718
  %6746 = fadd fast float %6745, %6723
  %6747 = fmul fast float %6746, 0x3FC5555560000000
  %6748 = fdiv fast float %6724, %6747
  %6749 = fsub fast float %6743, %6748
  %6750 = fsub fast float 1.000000e+00, %6698
  %6751 = fadd fast float %6729, %6716
  %6752 = fmul fast float %6751, 0x3FC5555560000000
  %6753 = fdiv fast float %6730, %6752
  %6754 = fadd fast float %6753, %6750
  %6755 = fmul fast float %6737, %6691
  %6756 = fsub fast float %6618, %6755
  %6757 = fmul fast float %6742, %6691
  %6758 = fadd fast float %6757, %6618
  %6759 = fmul fast float %6754, %6692
  %6760 = fadd fast float %6759, %6619
  %6761 = fmul fast float %6749, %6692
  %6762 = fsub fast float %6619, %6761
  %6763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %6756, float %6762, float %6680, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6764 = extractvalue %dx.types.ResRet.f32 %6763, 0
  %6765 = extractvalue %dx.types.ResRet.f32 %6763, 1
  %6766 = extractvalue %dx.types.ResRet.f32 %6763, 2
  %6767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %6758, float %6762, float %6680, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6768 = extractvalue %dx.types.ResRet.f32 %6767, 0
  %6769 = extractvalue %dx.types.ResRet.f32 %6767, 1
  %6770 = extractvalue %dx.types.ResRet.f32 %6767, 2
  %6771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %6756, float %6760, float %6680, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6772 = extractvalue %dx.types.ResRet.f32 %6771, 0
  %6773 = extractvalue %dx.types.ResRet.f32 %6771, 1
  %6774 = extractvalue %dx.types.ResRet.f32 %6771, 2
  %6775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %6758, float %6760, float %6680, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6776 = extractvalue %dx.types.ResRet.f32 %6775, 0
  %6777 = extractvalue %dx.types.ResRet.f32 %6775, 1
  %6778 = extractvalue %dx.types.ResRet.f32 %6775, 2
  %6779 = fsub fast float %6772, %6764
  %6780 = fsub fast float %6773, %6765
  %6781 = fsub fast float %6774, %6766
  %6782 = fmul fast float %6779, %6752
  %6783 = fmul fast float %6780, %6752
  %6784 = fmul fast float %6781, %6752
  %6785 = fadd fast float %6782, %6764
  %6786 = fadd fast float %6783, %6765
  %6787 = fadd fast float %6784, %6766
  %6788 = fsub fast float %6776, %6768
  %6789 = fsub fast float %6777, %6769
  %6790 = fsub fast float %6778, %6770
  %6791 = fmul fast float %6788, %6752
  %6792 = fmul fast float %6789, %6752
  %6793 = fmul fast float %6790, %6752
  %6794 = fsub fast float %6768, %6785
  %6795 = fadd fast float %6794, %6791
  %6796 = fsub fast float %6769, %6786
  %6797 = fadd fast float %6796, %6792
  %6798 = fsub fast float %6770, %6787
  %6799 = fadd fast float %6798, %6793
  %6800 = fmul fast float %6795, %6740
  %6801 = fmul fast float %6797, %6740
  %6802 = fmul fast float %6799, %6740
  %6803 = fadd fast float %6800, %6785
  %6804 = fadd fast float %6801, %6786
  %6805 = fadd fast float %6802, %6787
  %6806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6807 = extractvalue %dx.types.CBufRet.f32 %6806, 1
  %6808 = fmul fast float %6803, %6807
  %6809 = fmul fast float %6804, %6807
  %6810 = fmul fast float %6805, %6807
  br label %6811

; <label>:6811                                    ; preds = %6643, %6612
  %6812 = phi float [ %6682, %6643 ], [ 1.000000e+00, %6612 ]
  %6813 = phi float [ %6683, %6643 ], [ 1.000000e+00, %6612 ]
  %6814 = phi float [ %6684, %6643 ], [ 1.000000e+00, %6612 ]
  %6815 = phi float [ %6808, %6643 ], [ 0.000000e+00, %6612 ]
  %6816 = phi float [ %6809, %6643 ], [ 0.000000e+00, %6612 ]
  %6817 = phi float [ %6810, %6643 ], [ 0.000000e+00, %6612 ]
  %6818 = fmul fast float %6815, %6589
  %6819 = fmul fast float %6816, %6589
  %6820 = fmul fast float %6817, %6589
  %6821 = call float @dx.op.dot3.f32(i32 55, float %6812, float %6813, float %6814, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6822 = call float @dx.op.dot3.f32(i32 55, float %6818, float %6819, float %6820, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6823 = select i1 %240, float %6821, float %6812
  %6824 = select i1 %240, float %6821, float %6813
  %6825 = select i1 %240, float 1.000000e+00, float %6814
  %6826 = select i1 %240, float %6822, float %6818
  %6827 = select i1 %240, float 0.000000e+00, float %6819
  %6828 = select i1 %240, float 0.000000e+00, float %6820
  %6829 = fmul fast float %6823, %6602
  %6830 = fmul fast float %6824, %6603
  %6831 = fmul fast float %6825, %6604
  %6832 = fadd fast float %6829, %6826
  %6833 = fadd fast float %6830, %6827
  %6834 = fadd fast float %6828, %6831
  %6835 = fmul fast float %6823, %6575
  %6836 = fmul fast float %6824, %6576
  %6837 = fmul fast float %6825, %6577
  %6838 = fmul fast float %128, %6614
  %6839 = fmul fast float %130, %6615
  %6840 = fsub fast float 1.000000e+00, %6838
  %6841 = fsub fast float 1.000000e+00, %6839
  %6842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6843 = extractvalue %dx.types.CBufRet.f32 %6842, 0
  %6844 = extractvalue %dx.types.CBufRet.f32 %6842, 1
  %6845 = extractvalue %dx.types.CBufRet.f32 %6842, 2
  %6846 = fmul fast float %6840, %6843
  %6847 = fmul fast float %6840, %6844
  %6848 = fmul fast float %6840, %6845
  %6849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6850 = extractvalue %dx.types.CBufRet.f32 %6849, 0
  %6851 = extractvalue %dx.types.CBufRet.f32 %6849, 1
  %6852 = extractvalue %dx.types.CBufRet.f32 %6849, 2
  %6853 = fmul fast float %6841, %6850
  %6854 = fmul fast float %6841, %6851
  %6855 = fmul fast float %6841, %6852
  %6856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6857 = extractvalue %dx.types.CBufRet.f32 %6856, 0
  %6858 = extractvalue %dx.types.CBufRet.f32 %6856, 1
  %6859 = extractvalue %dx.types.CBufRet.f32 %6856, 2
  %6860 = fadd fast float %6853, %6857
  %6861 = fadd fast float %6860, %6846
  %6862 = fadd fast float %6854, %6858
  %6863 = fadd fast float %6862, %6847
  %6864 = fadd fast float %6855, %6859
  %6865 = fadd fast float %6864, %6848
  %6866 = fmul fast float %6861, %201
  %6867 = fmul fast float %6863, %201
  %6868 = fmul fast float %6865, %201
  br label %6869

; <label>:6869                                    ; preds = %6811, %6574
  %6870 = phi float [ %6866, %6811 ], [ %179, %6574 ]
  %6871 = phi float [ %6867, %6811 ], [ %180, %6574 ]
  %6872 = phi float [ %6868, %6811 ], [ %181, %6574 ]
  %6873 = phi float [ %201, %6811 ], [ %83, %6574 ]
  %6874 = phi float [ %6832, %6811 ], [ %6602, %6574 ]
  %6875 = phi float [ %6833, %6811 ], [ %6603, %6574 ]
  %6876 = phi float [ %6834, %6811 ], [ %6604, %6574 ]
  %6877 = phi float [ %6835, %6811 ], [ %6575, %6574 ]
  %6878 = phi float [ %6836, %6811 ], [ %6576, %6574 ]
  %6879 = phi float [ %6837, %6811 ], [ %6577, %6574 ]
  %6880 = phi float [ %6812, %6811 ], [ 1.000000e+00, %6574 ]
  br i1 %6611, label %8035, label %6881

; <label>:6881                                    ; preds = %6869
  %6882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6883 = extractvalue %dx.types.CBufRet.f32 %6882, 0
  %6884 = extractvalue %dx.types.CBufRet.f32 %6882, 1
  %6885 = extractvalue %dx.types.CBufRet.f32 %6882, 2
  %6886 = extractvalue %dx.types.CBufRet.f32 %6882, 3
  %6887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6888 = extractvalue %dx.types.CBufRet.f32 %6887, 0
  %6889 = extractvalue %dx.types.CBufRet.f32 %6887, 1
  %6890 = extractvalue %dx.types.CBufRet.f32 %6887, 2
  %6891 = extractvalue %dx.types.CBufRet.f32 %6887, 3
  %6892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6893 = extractvalue %dx.types.CBufRet.f32 %6892, 0
  %6894 = extractvalue %dx.types.CBufRet.f32 %6892, 1
  %6895 = extractvalue %dx.types.CBufRet.f32 %6892, 2
  %6896 = extractvalue %dx.types.CBufRet.f32 %6892, 3
  %6897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6898 = extractvalue %dx.types.CBufRet.f32 %6897, 0
  %6899 = extractvalue %dx.types.CBufRet.f32 %6897, 1
  %6900 = extractvalue %dx.types.CBufRet.f32 %6897, 2
  %6901 = extractvalue %dx.types.CBufRet.f32 %6897, 3
  %6902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6903 = extractvalue %dx.types.CBufRet.f32 %6902, 3
  %6904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6905 = extractvalue %dx.types.CBufRet.f32 %6904, 3
  %6906 = extractvalue %dx.types.CBufRet.f32 %6904, 0
  %6907 = extractvalue %dx.types.CBufRet.f32 %6904, 1
  %6908 = extractvalue %dx.types.CBufRet.f32 %6904, 2
  %6909 = fcmp fast olt float %6908, -5.000000e-01
  %6910 = call float @dx.op.dot3.f32(i32 55, float %6870, float %6871, float %6872, float %6870, float %6871, float %6872)  ; Dot3(ax,ay,az,bx,by,bz)
  %6911 = call float @dx.op.unary.f32(i32 25, float %6910)  ; Rsqrt(value)
  %6912 = fmul fast float %6911, %6910
  %6913 = fmul fast float %6911, %6870
  %6914 = fmul fast float %6911, %6871
  %6915 = fmul fast float %6911, %6872
  %6916 = fadd fast float %6912, %6886
  %6917 = call float @dx.op.dot3.f32(i32 55, float %6913, float %6914, float %6915, float %6883, float %6884, float %6885)  ; Dot3(ax,ay,az,bx,by,bz)
  %6918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6919 = extractvalue %dx.types.CBufRet.i32 %6918, 1
  %6920 = and i32 %6919, 1
  %6921 = icmp ne i32 %6920, 0
  %6922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6923 = extractvalue %dx.types.CBufRet.f32 %6922, 2
  %6924 = fcmp fast ogt float %6923, 0.000000e+00
  %6925 = and i1 %6921, %6924
  br i1 %6925, label %6926, label %7332, !dx.controlflow.hints !107

; <label>:6926                                    ; preds = %6881
  %6927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6928 = extractvalue %dx.types.CBufRet.f32 %6927, 3
  %6929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6930 = extractvalue %dx.types.CBufRet.f32 %6929, 2
  %6931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6932 = extractvalue %dx.types.CBufRet.f32 %6931, 2
  %6933 = fsub fast float %6930, %6932
  %6934 = and i32 %6919, 2
  %6935 = extractvalue %dx.types.CBufRet.i32 %6918, 0
  %6936 = call i32 @dx.op.binary.i32(i32 40, i32 %6935, i32 3)  ; UMin(a,b)
  %6937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6938 = extractvalue %dx.types.CBufRet.f32 %6937, 0
  %6939 = extractvalue %dx.types.CBufRet.f32 %6937, 1
  %6940 = extractvalue %dx.types.CBufRet.f32 %6931, 0
  %6941 = extractvalue %dx.types.CBufRet.f32 %6931, 1
  %6942 = fsub fast float %6938, %6940
  %6943 = fsub fast float %6939, %6941
  %6944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6945 = extractvalue %dx.types.CBufRet.f32 %6944, 0
  %6946 = fcmp fast ogt float %6945, 0.000000e+00
  %6947 = fsub fast float -0.000000e+00, %6942
  %6948 = fsub fast float -0.000000e+00, %6943
  %6949 = call float @dx.op.dot2.f32(i32 54, float %6913, float %6914, float %6913, float %6914)  ; Dot2(ax,ay,bx,by)
  %6950 = call float @dx.op.dot2.f32(i32 54, float %6913, float %6914, float %6947, float %6948)  ; Dot2(ax,ay,bx,by)
  %6951 = fmul fast float %6950, 2.000000e+00
  %6952 = call float @dx.op.dot2.f32(i32 54, float %6947, float %6948, float %6947, float %6948)  ; Dot2(ax,ay,bx,by)
  %6953 = fmul fast float %6945, %6945
  %6954 = fsub fast float %6952, %6953
  %6955 = fmul fast float %6951, %6951
  %6956 = fmul fast float %6949, 4.000000e+00
  %6957 = fmul fast float %6956, %6954
  %6958 = fsub fast float %6955, %6957
  %6959 = fcmp fast ogt float %6958, 0.000000e+00
  br i1 %6959, label %6960, label %6975

; <label>:6960                                    ; preds = %6926
  %6961 = fcmp fast ogt float %6951, 0.000000e+00
  %6962 = call float @dx.op.unary.f32(i32 24, float %6958)  ; Sqrt(value)
  %6963 = fsub fast float -0.000000e+00, %6962
  %6964 = select i1 %6961, float %6962, float %6963
  %6965 = fadd fast float %6964, %6951
  %6966 = fmul float %6965, -5.000000e-01
  %6967 = fdiv fast float %6966, %6949
  %6968 = call float @dx.op.binary.f32(i32 35, float %6967, float 0.000000e+00)  ; FMax(a,b)
  %6969 = call float @dx.op.binary.f32(i32 36, float %6912, float %6968)  ; FMin(a,b)
  %6970 = fdiv fast float %6954, %6966
  %6971 = call float @dx.op.binary.f32(i32 35, float %6970, float 0.000000e+00)  ; FMax(a,b)
  %6972 = call float @dx.op.binary.f32(i32 36, float %6912, float %6971)  ; FMin(a,b)
  %6973 = call float @dx.op.binary.f32(i32 36, float %6969, float %6972)  ; FMin(a,b)
  %6974 = call float @dx.op.binary.f32(i32 35, float %6969, float %6972)  ; FMax(a,b)
  br label %6975

; <label>:6975                                    ; preds = %6960, %6926
  %6976 = phi float [ %6974, %6960 ], [ -1.000000e+00, %6926 ]
  %6977 = phi float [ %6973, %6960 ], [ -1.000000e+00, %6926 ]
  %6978 = phi i1 [ true, %6960 ], [ false, %6926 ]
  %6979 = and i1 %6946, %6978
  br i1 %6979, label %6980, label %6982

; <label>:6980                                    ; preds = %6975
  %6981 = fcmp fast oeq float %6977, %6976
  br i1 %6981, label %7285, label %6983

; <label>:6982                                    ; preds = %6975
  br i1 %6946, label %7285, label %6983

; <label>:6983                                    ; preds = %6982, %6980
  %6984 = phi float [ %6912, %6982 ], [ %6976, %6980 ]
  %6985 = phi float [ 0.000000e+00, %6982 ], [ %6977, %6980 ]
  %6986 = icmp ne i32 %6934, 0
  %6987 = fmul fast float %6984, %6915
  %6988 = fadd fast float %6987, %6928
  %6989 = fmul fast float %6988, %6984
  %6990 = select i1 %6986, float 0.000000e+00, float %6989
  %6991 = fcmp fast oeq float %6915, 0.000000e+00
  %6992 = fdiv fast float %6933, %6915
  %6993 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6992)  ; FMax(a,b)
  %6994 = select i1 %6991, float %6984, float %6993
  %6995 = call float @dx.op.binary.f32(i32 36, float %6984, float %6994)  ; FMin(a,b)
  %6996 = fcmp fast ogt float %6915, 0.000000e+00
  %6997 = fcmp fast olt float %6933, 0.000000e+00
  br i1 %6996, label %6998, label %7055

; <label>:6998                                    ; preds = %6983
  %6999 = icmp eq i32 %6934, 0
  br i1 %6997, label %7000, label %7044

; <label>:7000                                    ; preds = %6998
  %7001 = select i1 %6999, float %6984, float 0.000000e+00
  %7002 = fsub fast float -0.000000e+00, %7001
  %7003 = call float @dx.op.unary.f32(i32 6, float %7002)  ; FAbs(value)
  %7004 = fmul fast float %7001, %6915
  %7005 = fadd fast float %7004, %6928
  %7006 = fmul fast float %7003, %7005
  %7007 = fsub fast float %6990, %7006
  %7008 = fsub fast float %6984, %7003
  %7009 = select i1 %6999, float %7008, float 0.000000e+00
  %7010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7011 = extractvalue %dx.types.CBufRet.f32 %7010, 0
  %7012 = extractvalue %dx.types.CBufRet.f32 %7010, 1
  %7013 = extractvalue %dx.types.CBufRet.f32 %7010, 2
  %7014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7015 = extractvalue %dx.types.CBufRet.f32 %7014, 0
  %7016 = extractvalue %dx.types.CBufRet.f32 %7014, 1
  %7017 = extractvalue %dx.types.CBufRet.f32 %7014, 2
  %7018 = extractvalue %dx.types.CBufRet.f32 %7014, 3
  %7019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7020 = extractvalue %dx.types.CBufRet.f32 %7019, 3
  %7021 = call float @dx.op.binary.f32(i32 36, float %7007, float %7020)  ; FMin(a,b)
  %7022 = fmul fast float %7018, %7009
  %7023 = call float @dx.op.unary.f32(i32 7, float %7022)  ; Saturate(value)
  %7024 = fsub fast float %7015, %7011
  %7025 = fsub fast float %7016, %7012
  %7026 = fsub fast float %7017, %7013
  %7027 = fmul fast float %7023, %7024
  %7028 = fmul fast float %7023, %7025
  %7029 = fmul fast float %7023, %7026
  %7030 = fadd fast float %7027, %7011
  %7031 = fadd fast float %7028, %7012
  %7032 = fadd fast float %7029, %7013
  %7033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7034 = extractvalue %dx.types.CBufRet.f32 %7033, 0
  %7035 = extractvalue %dx.types.CBufRet.f32 %7033, 1
  %7036 = fadd fast float %7035, %7034
  %7037 = call float @dx.op.unary.f32(i32 7, float %7036)  ; Saturate(value)
  %7038 = extractvalue %dx.types.CBufRet.f32 %7033, 2
  %7039 = extractvalue %dx.types.CBufRet.f32 %7033, 3
  %7040 = fadd fast float %7039, %7038
  %7041 = call float @dx.op.unary.f32(i32 7, float %7040)  ; Saturate(value)
  %7042 = fmul fast float %7037, %7021
  %7043 = fmul fast float %7042, %7041
  br label %7285

; <label>:7044                                    ; preds = %6998
  br i1 %6999, label %7045, label %7066

; <label>:7045                                    ; preds = %7044
  %7046 = call float @dx.op.binary.f32(i32 36, float %6995, float %6985)  ; FMin(a,b)
  %7047 = fsub fast float %6995, %7046
  %7048 = fsub fast float %7047, %6984
  %7049 = call float @dx.op.unary.f32(i32 6, float %7048)  ; FAbs(value)
  %7050 = fadd fast float %7047, %6984
  %7051 = fmul fast float %7050, %6915
  %7052 = fadd fast float %7051, %6928
  %7053 = fmul fast float %7052, %7049
  %7054 = fsub fast float %6990, %7053
  br label %7066

; <label>:7055                                    ; preds = %6983
  br i1 %6997, label %7056, label %7066

; <label>:7056                                    ; preds = %7055
  %7057 = call float @dx.op.binary.f32(i32 35, float %6985, float %6995)  ; FMax(a,b)
  %7058 = icmp eq i32 %6934, 0
  %7059 = select i1 %7058, float %6995, float 0.000000e+00
  %7060 = fsub fast float -0.000000e+00, %7059
  %7061 = call float @dx.op.unary.f32(i32 6, float %7060)  ; FAbs(value)
  %7062 = fmul fast float %7059, %6915
  %7063 = fadd fast float %7062, %6928
  %7064 = fmul fast float %7061, %7063
  %7065 = fsub fast float %6990, %7064
  br label %7066

; <label>:7066                                    ; preds = %7056, %7055, %7045, %7044
  %7067 = phi float [ %6985, %7044 ], [ %6985, %7045 ], [ %7057, %7056 ], [ %6985, %7055 ]
  %7068 = phi float [ 0.000000e+00, %7044 ], [ %7049, %7045 ], [ %7061, %7056 ], [ 0.000000e+00, %7055 ]
  %7069 = phi float [ %6990, %7044 ], [ %7054, %7045 ], [ %7065, %7056 ], [ %6990, %7055 ]
  %7070 = phi float [ %6995, %7044 ], [ %6995, %7045 ], [ %6984, %7056 ], [ %6984, %7055 ]
  %7071 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 0
  store float -1.000000e+00, float* %7071, align 4, !tbaa !108, !noalias !110
  %7072 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 1
  store float -1.000000e+00, float* %7072, align 4, !tbaa !108, !noalias !110
  %7073 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 2
  store float -1.000000e+00, float* %7073, align 4, !tbaa !108, !noalias !110
  %7074 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 0
  store float -1.000000e+00, float* %7074, align 4, !tbaa !108, !noalias !110
  %7075 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 1
  store float -1.000000e+00, float* %7075, align 4, !tbaa !108, !noalias !110
  %7076 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 2
  store float -1.000000e+00, float* %7076, align 4, !tbaa !108, !noalias !110
  %7077 = icmp sgt i32 %6936, 0
  br i1 %7077, label %7078, label %7139

; <label>:7078                                    ; preds = %7066
  br label %7079

; <label>:7079                                    ; preds = %7128, %7078
  %7080 = phi i32 [ %7129, %7128 ], [ 0, %7078 ]
  %7081 = phi i32 [ %7130, %7128 ], [ 0, %7078 ]
  %7082 = add nuw i32 %7081, 171
  %7083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 %7082)  ; CBufferLoadLegacy(handle,regIndex)
  %7084 = extractvalue %dx.types.CBufRet.f32 %7083, 0
  %7085 = extractvalue %dx.types.CBufRet.f32 %7083, 1
  %7086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7087 = extractvalue %dx.types.CBufRet.f32 %7086, 0
  %7088 = extractvalue %dx.types.CBufRet.f32 %7086, 1
  %7089 = fsub fast float %7084, %7087
  %7090 = fsub fast float %7085, %7088
  %7091 = extractvalue %dx.types.CBufRet.f32 %7083, 2
  %7092 = fsub fast float -0.000000e+00, %7089
  %7093 = fsub fast float -0.000000e+00, %7090
  %7094 = call float @dx.op.dot2.f32(i32 54, float %6913, float %6914, float %7092, float %7093)  ; Dot2(ax,ay,bx,by)
  %7095 = fmul fast float %7094, 2.000000e+00
  %7096 = call float @dx.op.dot2.f32(i32 54, float %7092, float %7093, float %7092, float %7093)  ; Dot2(ax,ay,bx,by)
  %7097 = fmul fast float %7091, %7091
  %7098 = fsub fast float %7096, %7097
  %7099 = fmul fast float %7095, %7095
  %7100 = fmul fast float %6956, %7098
  %7101 = fsub fast float %7099, %7100
  %7102 = fcmp fast ogt float %7101, 0.000000e+00
  br i1 %7102, label %7103, label %7118

; <label>:7103                                    ; preds = %7079
  %7104 = fcmp fast ogt float %7095, 0.000000e+00
  %7105 = call float @dx.op.unary.f32(i32 24, float %7101)  ; Sqrt(value)
  %7106 = fsub fast float -0.000000e+00, %7105
  %7107 = select i1 %7104, float %7105, float %7106
  %7108 = fadd fast float %7107, %7095
  %7109 = fmul float %7108, -5.000000e-01
  %7110 = fdiv fast float %7109, %6949
  %7111 = call float @dx.op.binary.f32(i32 35, float %7110, float 0.000000e+00)  ; FMax(a,b)
  %7112 = call float @dx.op.binary.f32(i32 36, float %6984, float %7111)  ; FMin(a,b)
  %7113 = fdiv fast float %7098, %7109
  %7114 = call float @dx.op.binary.f32(i32 35, float %7113, float 0.000000e+00)  ; FMax(a,b)
  %7115 = call float @dx.op.binary.f32(i32 36, float %6984, float %7114)  ; FMin(a,b)
  %7116 = call float @dx.op.binary.f32(i32 36, float %7112, float %7115)  ; FMin(a,b)
  %7117 = call float @dx.op.binary.f32(i32 35, float %7112, float %7115)  ; FMax(a,b)
  br label %7118

; <label>:7118                                    ; preds = %7103, %7079
  %7119 = phi float [ %7117, %7103 ], [ -1.000000e+00, %7079 ]
  %7120 = phi float [ %7116, %7103 ], [ -1.000000e+00, %7079 ]
  %7121 = phi i1 [ true, %7103 ], [ false, %7079 ]
  br i1 %7121, label %7122, label %7128

; <label>:7122                                    ; preds = %7118
  %7123 = call float @dx.op.binary.f32(i32 35, float %7067, float %7120)  ; FMax(a,b)
  %7124 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %7081
  store float %7123, float* %7124, align 4, !tbaa !108, !noalias !110
  %7125 = call float @dx.op.binary.f32(i32 35, float %7067, float %7119)  ; FMax(a,b)
  %7126 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 %7081
  store float %7125, float* %7126, align 4, !tbaa !108, !noalias !110
  %7127 = add nsw i32 %7080, 1
  br label %7128

; <label>:7128                                    ; preds = %7122, %7118
  %7129 = phi i32 [ %7127, %7122 ], [ %7080, %7118 ]
  %7130 = add nuw nsw i32 %7081, 1
  %7131 = icmp eq i32 %7130, %6936
  br i1 %7131, label %7132, label %7079

; <label>:7132                                    ; preds = %7128
  %7133 = load float, float* %7073, align 4, !tbaa !108, !alias.scope !126, !noalias !129
  %7134 = load float, float* %7072, align 4, !tbaa !108, !alias.scope !132, !noalias !133
  %7135 = load float, float* %7071, align 4, !tbaa !108, !alias.scope !134, !noalias !135
  %7136 = load float, float* %7076, align 4, !tbaa !108, !alias.scope !136, !noalias !139
  %7137 = load float, float* %7075, align 4, !tbaa !108, !alias.scope !142, !noalias !143
  %7138 = load float, float* %7074, align 4, !tbaa !108, !alias.scope !144, !noalias !145
  br label %7139

; <label>:7139                                    ; preds = %7132, %7066
  %7140 = phi float [ -1.000000e+00, %7066 ], [ %7138, %7132 ]
  %7141 = phi float [ -1.000000e+00, %7066 ], [ %7137, %7132 ]
  %7142 = phi float [ -1.000000e+00, %7066 ], [ %7136, %7132 ]
  %7143 = phi float [ -1.000000e+00, %7066 ], [ %7135, %7132 ]
  %7144 = phi float [ -1.000000e+00, %7066 ], [ %7134, %7132 ]
  %7145 = phi float [ -1.000000e+00, %7066 ], [ %7133, %7132 ]
  %7146 = phi i32 [ 0, %7066 ], [ %7129, %7132 ]
  %7147 = call float @dx.op.binary.f32(i32 36, float %7144, float %7145)  ; FMin(a,b)
  %7148 = call float @dx.op.binary.f32(i32 36, float %7143, float %7147)  ; FMin(a,b)
  %7149 = call float @dx.op.binary.f32(i32 35, float %7143, float %7144)  ; FMax(a,b)
  %7150 = call float @dx.op.binary.f32(i32 36, float %7149, float %7145)  ; FMin(a,b)
  %7151 = call float @dx.op.binary.f32(i32 36, float %7143, float %7144)  ; FMin(a,b)
  %7152 = call float @dx.op.binary.f32(i32 35, float %7151, float %7150)  ; FMax(a,b)
  %7153 = call float @dx.op.binary.f32(i32 35, float %7144, float %7145)  ; FMax(a,b)
  %7154 = call float @dx.op.binary.f32(i32 35, float %7143, float %7153)  ; FMax(a,b)
  store float %7148, float* %7071, align 4, !tbaa !108, !alias.scope !134, !noalias !135
  store float %7152, float* %7072, align 4, !tbaa !108, !alias.scope !132, !noalias !133
  store float %7154, float* %7073, align 4, !tbaa !108, !alias.scope !126, !noalias !129
  %7155 = call float @dx.op.binary.f32(i32 36, float %7141, float %7142)  ; FMin(a,b)
  %7156 = call float @dx.op.binary.f32(i32 36, float %7140, float %7155)  ; FMin(a,b)
  %7157 = call float @dx.op.binary.f32(i32 35, float %7140, float %7141)  ; FMax(a,b)
  %7158 = call float @dx.op.binary.f32(i32 36, float %7157, float %7142)  ; FMin(a,b)
  %7159 = call float @dx.op.binary.f32(i32 36, float %7140, float %7141)  ; FMin(a,b)
  %7160 = call float @dx.op.binary.f32(i32 35, float %7159, float %7158)  ; FMax(a,b)
  %7161 = call float @dx.op.binary.f32(i32 35, float %7141, float %7142)  ; FMax(a,b)
  %7162 = call float @dx.op.binary.f32(i32 35, float %7140, float %7161)  ; FMax(a,b)
  store float %7156, float* %7074, align 4, !tbaa !108, !alias.scope !144, !noalias !145
  store float %7160, float* %7075, align 4, !tbaa !108, !alias.scope !142, !noalias !143
  store float %7162, float* %7076, align 4, !tbaa !108, !alias.scope !136, !noalias !139
  %7163 = sub nsw i32 3, %7146
  %7164 = icmp sgt i32 %7163, 2
  br i1 %7164, label %7165, label %7203

; <label>:7165                                    ; preds = %7139
  %7166 = icmp eq i32 %6934, 0
  %7167 = fsub fast float %6984, %7068
  %7168 = select i1 %7166, float %7167, float %7068
  %7169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7170 = extractvalue %dx.types.CBufRet.f32 %7169, 0
  %7171 = extractvalue %dx.types.CBufRet.f32 %7169, 1
  %7172 = extractvalue %dx.types.CBufRet.f32 %7169, 2
  %7173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7174 = extractvalue %dx.types.CBufRet.f32 %7173, 0
  %7175 = extractvalue %dx.types.CBufRet.f32 %7173, 1
  %7176 = extractvalue %dx.types.CBufRet.f32 %7173, 2
  %7177 = extractvalue %dx.types.CBufRet.f32 %7173, 3
  %7178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7179 = extractvalue %dx.types.CBufRet.f32 %7178, 3
  %7180 = call float @dx.op.binary.f32(i32 36, float %7069, float %7179)  ; FMin(a,b)
  %7181 = fmul fast float %7177, %7168
  %7182 = call float @dx.op.unary.f32(i32 7, float %7181)  ; Saturate(value)
  %7183 = fsub fast float %7174, %7170
  %7184 = fsub fast float %7175, %7171
  %7185 = fsub fast float %7176, %7172
  %7186 = fmul fast float %7182, %7183
  %7187 = fmul fast float %7182, %7184
  %7188 = fmul fast float %7182, %7185
  %7189 = fadd fast float %7186, %7170
  %7190 = fadd fast float %7187, %7171
  %7191 = fadd fast float %7188, %7172
  %7192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7193 = extractvalue %dx.types.CBufRet.f32 %7192, 0
  %7194 = extractvalue %dx.types.CBufRet.f32 %7192, 1
  %7195 = fadd fast float %7194, %7193
  %7196 = call float @dx.op.unary.f32(i32 7, float %7195)  ; Saturate(value)
  %7197 = extractvalue %dx.types.CBufRet.f32 %7192, 2
  %7198 = extractvalue %dx.types.CBufRet.f32 %7192, 3
  %7199 = fadd fast float %7198, %7197
  %7200 = call float @dx.op.unary.f32(i32 7, float %7199)  ; Saturate(value)
  %7201 = fmul fast float %7196, %7180
  %7202 = fmul fast float %7201, %7200
  br label %7285

; <label>:7203                                    ; preds = %7139
  %7204 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %7163
  %7205 = load float, float* %7204, align 4, !tbaa !108, !noalias !110
  %7206 = fcmp fast olt float %7205, %7070
  %7207 = icmp sgt i32 %7146, 0
  %7208 = and i1 %7207, %7206
  br i1 %7208, label %7209, label %7246

; <label>:7209                                    ; preds = %7203
  br label %7210

; <label>:7210                                    ; preds = %7239, %7209
  %7211 = phi float [ %7240, %7239 ], [ %7068, %7209 ]
  %7212 = phi float [ %7241, %7239 ], [ %7069, %7209 ]
  %7213 = phi float [ %7221, %7239 ], [ %7205, %7209 ]
  %7214 = phi i32 [ %7218, %7239 ], [ %7163, %7209 ]
  %7215 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 %7214
  %7216 = load float, float* %7215, align 4, !tbaa !108, !noalias !110
  %7217 = icmp slt i32 %7214, 2
  %7218 = add nsw i32 %7214, 1
  %7219 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %7218
  %7220 = load float, float* %7219, align 4, !tbaa !108, !noalias !110
  %7221 = select i1 %7217, float %7220, float %6984
  %7222 = call float @dx.op.binary.f32(i32 36, float %7221, float %7216)  ; FMin(a,b)
  %7223 = call float @dx.op.binary.f32(i32 36, float %7070, float %7222)  ; FMin(a,b)
  %7224 = icmp eq i32 %6934, 0
  %7225 = fadd fast float %7223, %7213
  %7226 = fmul fast float %7225, %6915
  %7227 = fadd fast float %7226, %6928
  br i1 %7224, label %7233, label %7228

; <label>:7228                                    ; preds = %7210
  %7229 = fsub fast float %7223, %7213
  %7230 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7229)  ; FMax(a,b)
  %7231 = fmul fast float %7230, %7227
  %7232 = fadd fast float %7231, %7212
  br label %7239

; <label>:7233                                    ; preds = %7210
  %7234 = fsub fast float %7213, %7223
  %7235 = call float @dx.op.unary.f32(i32 6, float %7234)  ; FAbs(value)
  %7236 = fadd fast float %7235, %7211
  %7237 = fmul fast float %7235, %7227
  %7238 = fsub fast float %7212, %7237
  br label %7239

; <label>:7239                                    ; preds = %7233, %7228
  %7240 = phi float [ %7230, %7228 ], [ %7236, %7233 ]
  %7241 = phi float [ %7232, %7228 ], [ %7238, %7233 ]
  %7242 = fcmp fast olt float %7221, %7070
  %7243 = icmp slt i32 %7218, 3
  %7244 = and i1 %7243, %7242
  br i1 %7244, label %7210, label %7245

; <label>:7245                                    ; preds = %7239
  br label %7246

; <label>:7246                                    ; preds = %7245, %7203
  %7247 = phi float [ %7068, %7203 ], [ %7240, %7245 ]
  %7248 = phi float [ %7069, %7203 ], [ %7241, %7245 ]
  %7249 = fsub fast float %6984, %7247
  %7250 = select i1 %6986, float %7247, float %7249
  %7251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7252 = extractvalue %dx.types.CBufRet.f32 %7251, 0
  %7253 = extractvalue %dx.types.CBufRet.f32 %7251, 1
  %7254 = extractvalue %dx.types.CBufRet.f32 %7251, 2
  %7255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7256 = extractvalue %dx.types.CBufRet.f32 %7255, 0
  %7257 = extractvalue %dx.types.CBufRet.f32 %7255, 1
  %7258 = extractvalue %dx.types.CBufRet.f32 %7255, 2
  %7259 = extractvalue %dx.types.CBufRet.f32 %7255, 3
  %7260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7261 = extractvalue %dx.types.CBufRet.f32 %7260, 3
  %7262 = call float @dx.op.binary.f32(i32 36, float %7248, float %7261)  ; FMin(a,b)
  %7263 = fmul fast float %7259, %7250
  %7264 = call float @dx.op.unary.f32(i32 7, float %7263)  ; Saturate(value)
  %7265 = fsub fast float %7256, %7252
  %7266 = fsub fast float %7257, %7253
  %7267 = fsub fast float %7258, %7254
  %7268 = fmul fast float %7264, %7265
  %7269 = fmul fast float %7264, %7266
  %7270 = fmul fast float %7264, %7267
  %7271 = fadd fast float %7268, %7252
  %7272 = fadd fast float %7269, %7253
  %7273 = fadd fast float %7270, %7254
  %7274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7275 = extractvalue %dx.types.CBufRet.f32 %7274, 0
  %7276 = extractvalue %dx.types.CBufRet.f32 %7274, 1
  %7277 = fadd fast float %7276, %7275
  %7278 = call float @dx.op.unary.f32(i32 7, float %7277)  ; Saturate(value)
  %7279 = extractvalue %dx.types.CBufRet.f32 %7274, 2
  %7280 = extractvalue %dx.types.CBufRet.f32 %7274, 3
  %7281 = fadd fast float %7280, %7279
  %7282 = call float @dx.op.unary.f32(i32 7, float %7281)  ; Saturate(value)
  %7283 = fmul fast float %7278, %7262
  %7284 = fmul fast float %7283, %7282
  br label %7285

; <label>:7285                                    ; preds = %7246, %7165, %7000, %6982, %6980
  %7286 = phi float [ %7009, %7000 ], [ %7168, %7165 ], [ %7250, %7246 ], [ 0.000000e+00, %6980 ], [ 0.000000e+00, %6982 ]
  %7287 = phi float [ %7043, %7000 ], [ %7202, %7165 ], [ %7284, %7246 ], [ 0.000000e+00, %6980 ], [ 0.000000e+00, %6982 ]
  %7288 = phi float [ %7030, %7000 ], [ %7189, %7165 ], [ %7271, %7246 ], [ 0.000000e+00, %6980 ], [ 0.000000e+00, %6982 ]
  %7289 = phi float [ %7031, %7000 ], [ %7190, %7165 ], [ %7272, %7246 ], [ 0.000000e+00, %6980 ], [ 0.000000e+00, %6982 ]
  %7290 = phi float [ %7032, %7000 ], [ %7191, %7165 ], [ %7273, %7246 ], [ 0.000000e+00, %6980 ], [ 0.000000e+00, %6982 ]
  %7291 = fmul fast float %6923, %7287
  %7292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7293 = extractvalue %dx.types.CBufRet.f32 %7292, 2
  %7294 = fsub fast float %6930, %7293
  %7295 = fcmp fast olt float %7291, -2.000000e+01
  %7296 = call float @dx.op.unary.f32(i32 21, float %7291)  ; Exp(value)
  %7297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7298 = extractvalue %dx.types.CBufRet.f32 %7297, 2
  %7299 = extractvalue %dx.types.CBufRet.f32 %7297, 3
  %7300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7301 = extractvalue %dx.types.CBufRet.f32 %7300, 2
  %7302 = fmul fast float %7299, %7294
  %7303 = call float @dx.op.unary.f32(i32 7, float %7302)  ; Saturate(value)
  %7304 = fsub fast float 1.000000e+00, %7303
  %7305 = fmul fast float %6915, 5.000000e-01
  %7306 = fadd fast float %7305, 5.000000e-01
  %7307 = call float @dx.op.unary.f32(i32 7, float %7306)  ; Saturate(value)
  %7308 = fsub fast float 1.000000e+00, %7307
  %7309 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7304)  ; FMax(a,b)
  %7310 = fdiv fast float %7308, %7309
  %7311 = fsub fast float %7294, %6872
  %7312 = call float @dx.op.unary.f32(i32 6, float %7311)  ; FAbs(value)
  %7313 = fmul fast float %7312, %7298
  %7314 = call float @dx.op.unary.f32(i32 7, float %7310)  ; Saturate(value)
  %7315 = fsub fast float 1.000000e+00, %7313
  %7316 = fmul fast float %7315, %7314
  %7317 = fadd fast float %7316, %7313
  %7318 = fmul fast float %7301, %7294
  %7319 = call float @dx.op.unary.f32(i32 7, float %7318)  ; Saturate(value)
  %7320 = fsub fast float 1.000000e+00, %7317
  %7321 = fmul fast float %7320, %7319
  %7322 = fadd fast float %7321, %7317
  %7323 = call float @dx.op.unary.f32(i32 7, float %7322)  ; Saturate(value)
  %7324 = fadd fast float %7296, -1.000000e+00
  %7325 = select i1 %7295, float -1.000000e+00, float %7324
  %7326 = fmul fast float %7323, %7325
  %7327 = fadd fast float %7326, 1.000000e+00
  %7328 = fsub fast float -0.000000e+00, %7326
  %7329 = fmul fast float %7288, %7328
  %7330 = fmul fast float %7289, %7328
  %7331 = fmul fast float %7290, %7328
  br label %7332

; <label>:7332                                    ; preds = %7285, %6881
  %7333 = phi float [ %7286, %7285 ], [ 0.000000e+00, %6881 ]
  %7334 = phi float [ %7327, %7285 ], [ 1.000000e+00, %6881 ]
  %7335 = phi float [ %7329, %7285 ], [ 0.000000e+00, %6881 ]
  %7336 = phi float [ %7330, %7285 ], [ 0.000000e+00, %6881 ]
  %7337 = phi float [ %7331, %7285 ], [ 0.000000e+00, %6881 ]
  %7338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7339 = extractvalue %dx.types.CBufRet.f32 %7338, 1
  %7340 = fsub fast float 1.000000e+00, %7334
  %7341 = fmul fast float %7340, %6916
  %7342 = fmul fast float %7341, %7339
  %7343 = fsub fast float %6916, %7342
  br i1 %6909, label %7344, label %7373, !dx.controlflow.hints !146

; <label>:7344                                    ; preds = %7332
  %7345 = fmul fast float %6917, %6906
  %7346 = fadd fast float %7345, %6907
  %7347 = call float @dx.op.unary.f32(i32 7, float %7346)  ; Saturate(value)
  %7348 = fmul fast float %6888, %7343
  %7349 = fsub fast float -0.000000e+00, %7348
  %7350 = fmul fast float %6889, %7343
  %7351 = fsub fast float -0.000000e+00, %7350
  %7352 = call float @dx.op.unary.f32(i32 21, float %7349)  ; Exp(value)
  %7353 = call float @dx.op.unary.f32(i32 21, float %7351)  ; Exp(value)
  %7354 = call float @dx.op.binary.f32(i32 35, float %6896, float %7352)  ; FMax(a,b)
  %7355 = call float @dx.op.binary.f32(i32 35, float %6896, float %7353)  ; FMax(a,b)
  %7356 = fsub fast float %7355, %7354
  %7357 = fmul fast float %7356, %7347
  %7358 = fadd fast float %7357, %7354
  %7359 = call float @dx.op.unary.f32(i32 7, float %7358)  ; Saturate(value)
  %7360 = fsub fast float %6893, %6898
  %7361 = fsub fast float %6894, %6899
  %7362 = fsub fast float %6895, %6900
  %7363 = fmul fast float %7347, %7360
  %7364 = fmul fast float %7347, %7361
  %7365 = fmul fast float %7347, %7362
  %7366 = fadd fast float %7363, %6898
  %7367 = fadd fast float %7364, %6899
  %7368 = fadd fast float %7365, %6900
  %7369 = fsub fast float 1.000000e+00, %7359
  %7370 = fmul fast float %7369, %7366
  %7371 = fmul fast float %7369, %7367
  %7372 = fmul fast float %7369, %7368
  br label %7432

; <label>:7373                                    ; preds = %7332
  %7374 = fmul fast float %7343, %6905
  %7375 = call float @dx.op.unary.f32(i32 7, float %7374)  ; Saturate(value)
  %7376 = fsub fast float 2.000000e+00, %7375
  %7377 = fmul fast float %7375, 9.921875e-01
  %7378 = fmul fast float %7377, %7376
  %7379 = fadd fast float %7378, 3.906250e-03
  %7380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %36, float %7379, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7381 = extractvalue %dx.types.ResRet.f32 %7380, 0
  %7382 = fsub fast float %7375, %7381
  %7383 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7382)  ; FMax(a,b)
  %7384 = fmul fast float %6891, %6872
  %7385 = call float @dx.op.unary.f32(i32 6, float %7384)  ; FAbs(value)
  %7386 = fcmp fast ogt float %7385, 0x3EB0C6F7A0000000
  br i1 %7386, label %7387, label %7393, !dx.controlflow.hints !147

; <label>:7387                                    ; preds = %7373
  %7388 = fmul fast float %7384, 0xBFF7154760000000
  %7389 = call float @dx.op.unary.f32(i32 21, float %7388)  ; Exp(value)
  %7390 = fsub fast float 1.000000e+00, %7389
  %7391 = fdiv fast float %7390, %7384
  %7392 = fmul fast float %7391, %6901
  br label %7393

; <label>:7393                                    ; preds = %7387, %7373
  %7394 = phi float [ %7392, %7387 ], [ %6901, %7373 ]
  %7395 = fadd fast float %7394, %6903
  %7396 = fmul fast float %7395, %7383
  %7397 = fmul fast float %6888, %7396
  %7398 = fsub fast float -0.000000e+00, %7397
  %7399 = fmul fast float %6889, %7396
  %7400 = fsub fast float -0.000000e+00, %7399
  %7401 = fmul fast float %6890, %7396
  %7402 = fsub fast float -0.000000e+00, %7401
  %7403 = call float @dx.op.unary.f32(i32 21, float %7398)  ; Exp(value)
  %7404 = call float @dx.op.unary.f32(i32 21, float %7400)  ; Exp(value)
  %7405 = call float @dx.op.unary.f32(i32 21, float %7402)  ; Exp(value)
  %7406 = fmul fast float %6917, %6917
  %7407 = fadd fast float %7406, 1.000000e+00
  %7408 = fmul fast float %7407, 0x3FAE8EC8A0000000
  %7409 = fmul fast float %7408, %6898
  %7410 = fmul fast float %7408, %6899
  %7411 = fmul fast float %7408, %6900
  %7412 = fmul fast float %6917, %6896
  %7413 = fsub fast float 1.000000e+00, %7412
  %7414 = fmul fast float %6896, %6896
  %7415 = fsub fast float 1.000000e+00, %7414
  %7416 = fmul fast float %7415, 0x3FB45F3060000000
  %7417 = fmul fast float %7413, %7413
  %7418 = fdiv fast float 1.000000e+00, %7417
  %7419 = fmul fast float %7416, %7418
  %7420 = fmul fast float %7419, %6893
  %7421 = fmul fast float %7419, %6894
  %7422 = fmul fast float %7419, %6895
  %7423 = fadd fast float %7420, %7409
  %7424 = fadd fast float %7421, %7410
  %7425 = fadd fast float %7422, %7411
  %7426 = fsub fast float 1.000000e+00, %7403
  %7427 = fsub fast float 1.000000e+00, %7404
  %7428 = fsub fast float 1.000000e+00, %7405
  %7429 = fmul fast float %7423, %7426
  %7430 = fmul fast float %7424, %7427
  %7431 = fmul fast float %7425, %7428
  br label %7432

; <label>:7432                                    ; preds = %7393, %7344
  %7433 = phi float [ %7370, %7344 ], [ %7429, %7393 ]
  %7434 = phi float [ %7371, %7344 ], [ %7430, %7393 ]
  %7435 = phi float [ %7372, %7344 ], [ %7431, %7393 ]
  %7436 = phi float [ %7359, %7344 ], [ %7403, %7393 ]
  %7437 = phi float [ %7359, %7344 ], [ %7404, %7393 ]
  %7438 = phi float [ %7359, %7344 ], [ %7405, %7393 ]
  br i1 %6925, label %7439, label %7637, !dx.controlflow.hints !148

; <label>:7439                                    ; preds = %7432
  %7440 = extractvalue %dx.types.CBufRet.f32 %7338, 0
  %7441 = fmul fast float %7440, %7340
  %7442 = fsub fast float %7335, %7433
  %7443 = fsub fast float %7336, %7434
  %7444 = fsub fast float %7337, %7435
  %7445 = fmul fast float %7441, %7442
  %7446 = fmul fast float %7441, %7443
  %7447 = fmul fast float %7441, %7444
  %7448 = fadd fast float %7445, %7433
  %7449 = fadd fast float %7446, %7434
  %7450 = fadd fast float %7447, %7435
  %7451 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7436)  ; FMax(a,b)
  %7452 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7437)  ; FMax(a,b)
  %7453 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7438)  ; FMax(a,b)
  %7454 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7334)  ; FMax(a,b)
  %7455 = call float @dx.op.binary.f32(i32 35, float %7333, float %7343)  ; FMax(a,b)
  %7456 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7455)  ; FMax(a,b)
  %7457 = fdiv fast float %7333, %7456
  %7458 = call float @dx.op.unary.f32(i32 7, float %7457)  ; Saturate(value)
  %7459 = fdiv fast float %7343, %7456
  %7460 = call float @dx.op.unary.f32(i32 7, float %7459)  ; Saturate(value)
  %7461 = fcmp fast une float %7454, 1.000000e+00
  br i1 %7461, label %7462, label %7475, !dx.controlflow.hints !149

; <label>:7462                                    ; preds = %7439
  %7463 = call float @dx.op.unary.f32(i32 23, float %7454)  ; Log(value)
  %7464 = fmul fast float %7463, 0x3FE62E4300000000
  %7465 = fmul fast float %7335, %7464
  %7466 = fsub fast float -0.000000e+00, %7465
  %7467 = fmul fast float %7336, %7464
  %7468 = fsub fast float -0.000000e+00, %7467
  %7469 = fmul fast float %7337, %7464
  %7470 = fsub fast float -0.000000e+00, %7469
  %7471 = fsub fast float 1.000000e+00, %7454
  %7472 = fdiv fast float %7466, %7471
  %7473 = fdiv fast float %7468, %7471
  %7474 = fdiv fast float %7470, %7471
  br label %7475

; <label>:7475                                    ; preds = %7462, %7439
  %7476 = phi float [ %7472, %7462 ], [ %7335, %7439 ]
  %7477 = phi float [ %7473, %7462 ], [ %7336, %7439 ]
  %7478 = phi float [ %7474, %7462 ], [ %7337, %7439 ]
  %7479 = phi float [ %7464, %7462 ], [ 0.000000e+00, %7439 ]
  %7480 = fcmp fast une float %7451, 1.000000e+00
  br i1 %7480, label %7481, label %7488, !dx.controlflow.hints !150

; <label>:7481                                    ; preds = %7475
  %7482 = call float @dx.op.unary.f32(i32 23, float %7451)  ; Log(value)
  %7483 = fmul fast float %7482, 0x3FE62E4300000000
  %7484 = fmul fast float %7448, %7483
  %7485 = fsub fast float -0.000000e+00, %7484
  %7486 = fsub fast float 1.000000e+00, %7451
  %7487 = fdiv fast float %7485, %7486
  br label %7488

; <label>:7488                                    ; preds = %7481, %7475
  %7489 = phi float [ %7487, %7481 ], [ %7448, %7475 ]
  %7490 = phi float [ %7483, %7481 ], [ 0.000000e+00, %7475 ]
  %7491 = fcmp fast une float %7452, 1.000000e+00
  br i1 %7491, label %7492, label %7499, !dx.controlflow.hints !150

; <label>:7492                                    ; preds = %7488
  %7493 = call float @dx.op.unary.f32(i32 23, float %7452)  ; Log(value)
  %7494 = fmul fast float %7493, 0x3FE62E4300000000
  %7495 = fmul fast float %7449, %7494
  %7496 = fsub fast float -0.000000e+00, %7495
  %7497 = fsub fast float 1.000000e+00, %7452
  %7498 = fdiv fast float %7496, %7497
  br label %7499

; <label>:7499                                    ; preds = %7492, %7488
  %7500 = phi float [ %7498, %7492 ], [ %7449, %7488 ]
  %7501 = phi float [ %7494, %7492 ], [ 0.000000e+00, %7488 ]
  %7502 = fcmp fast une float %7453, 1.000000e+00
  br i1 %7502, label %7503, label %7510, !dx.controlflow.hints !150

; <label>:7503                                    ; preds = %7499
  %7504 = call float @dx.op.unary.f32(i32 23, float %7453)  ; Log(value)
  %7505 = fmul fast float %7504, 0x3FE62E4300000000
  %7506 = fmul fast float %7450, %7505
  %7507 = fsub fast float -0.000000e+00, %7506
  %7508 = fsub fast float 1.000000e+00, %7453
  %7509 = fdiv fast float %7507, %7508
  br label %7510

; <label>:7510                                    ; preds = %7503, %7499
  %7511 = phi float [ %7509, %7503 ], [ %7450, %7499 ]
  %7512 = phi float [ %7505, %7503 ], [ 0.000000e+00, %7499 ]
  %7513 = fmul fast float %7476, %7460
  %7514 = fmul fast float %7477, %7460
  %7515 = fmul fast float %7478, %7460
  %7516 = fmul fast float %7479, %7460
  %7517 = fmul fast float %7489, %7458
  %7518 = fmul fast float %7500, %7458
  %7519 = fmul fast float %7511, %7458
  %7520 = fmul fast float %7490, %7458
  %7521 = fmul fast float %7501, %7458
  %7522 = fmul fast float %7512, %7458
  %7523 = fadd fast float %7517, %7513
  %7524 = fadd fast float %7518, %7514
  %7525 = fadd fast float %7519, %7515
  %7526 = fadd fast float %7520, %7516
  %7527 = fadd fast float %7521, %7516
  %7528 = fadd fast float %7522, %7516
  %7529 = fcmp fast une float %7526, 0.000000e+00
  br i1 %7529, label %7530, label %7537, !dx.controlflow.hints !151

; <label>:7530                                    ; preds = %7510
  %7531 = fmul fast float %7526, 0x3FF7154760000000
  %7532 = call float @dx.op.unary.f32(i32 21, float %7531)  ; Exp(value)
  %7533 = fsub fast float 1.000000e+00, %7532
  %7534 = fmul fast float %7523, %7533
  %7535 = fsub fast float -0.000000e+00, %7534
  %7536 = fdiv fast float %7535, %7526
  br label %7537

; <label>:7537                                    ; preds = %7530, %7510
  %7538 = phi float [ %7532, %7530 ], [ 1.000000e+00, %7510 ]
  %7539 = phi float [ %7536, %7530 ], [ %7523, %7510 ]
  %7540 = fcmp fast une float %7527, 0.000000e+00
  br i1 %7540, label %7541, label %7548, !dx.controlflow.hints !151

; <label>:7541                                    ; preds = %7537
  %7542 = fmul fast float %7527, 0x3FF7154760000000
  %7543 = call float @dx.op.unary.f32(i32 21, float %7542)  ; Exp(value)
  %7544 = fsub fast float 1.000000e+00, %7543
  %7545 = fmul fast float %7524, %7544
  %7546 = fsub fast float -0.000000e+00, %7545
  %7547 = fdiv fast float %7546, %7527
  br label %7548

; <label>:7548                                    ; preds = %7541, %7537
  %7549 = phi float [ %7543, %7541 ], [ 1.000000e+00, %7537 ]
  %7550 = phi float [ %7547, %7541 ], [ %7524, %7537 ]
  %7551 = fcmp fast une float %7528, 0.000000e+00
  br i1 %7551, label %7552, label %7559, !dx.controlflow.hints !151

; <label>:7552                                    ; preds = %7548
  %7553 = fmul fast float %7528, 0x3FF7154760000000
  %7554 = call float @dx.op.unary.f32(i32 21, float %7553)  ; Exp(value)
  %7555 = fsub fast float 1.000000e+00, %7554
  %7556 = fmul fast float %7525, %7555
  %7557 = fsub fast float -0.000000e+00, %7556
  %7558 = fdiv fast float %7557, %7528
  br label %7559

; <label>:7559                                    ; preds = %7552, %7548
  %7560 = phi float [ %7554, %7552 ], [ 1.000000e+00, %7548 ]
  %7561 = phi float [ %7558, %7552 ], [ %7525, %7548 ]
  %7562 = fcmp fast ogt float %7458, %7460
  br i1 %7562, label %7563, label %7583

; <label>:7563                                    ; preds = %7559
  %7564 = fsub fast float 1.000000e+00, %7460
  %7565 = fmul fast float %7476, %7564
  %7566 = fmul fast float %7477, %7564
  %7567 = fmul fast float %7478, %7564
  %7568 = fmul fast float %7479, %7564
  %7569 = fcmp fast une float %7568, 0.000000e+00
  br i1 %7569, label %7570, label %7621, !dx.controlflow.hints !152

; <label>:7570                                    ; preds = %7563
  %7571 = fmul fast float %7568, 0x3FF7154760000000
  %7572 = call float @dx.op.unary.f32(i32 21, float %7571)  ; Exp(value)
  %7573 = fsub fast float 1.000000e+00, %7572
  %7574 = fmul fast float %7565, %7573
  %7575 = fsub fast float -0.000000e+00, %7574
  %7576 = fmul fast float %7566, %7573
  %7577 = fsub fast float -0.000000e+00, %7576
  %7578 = fmul fast float %7567, %7573
  %7579 = fsub fast float -0.000000e+00, %7578
  %7580 = fdiv fast float %7575, %7568
  %7581 = fdiv fast float %7577, %7568
  %7582 = fdiv fast float %7579, %7568
  br label %7621

; <label>:7583                                    ; preds = %7559
  %7584 = fsub fast float 1.000000e+00, %7458
  %7585 = fmul fast float %7489, %7584
  %7586 = fmul fast float %7500, %7584
  %7587 = fmul fast float %7511, %7584
  %7588 = fmul fast float %7490, %7584
  %7589 = fmul fast float %7501, %7584
  %7590 = fmul fast float %7512, %7584
  %7591 = fcmp fast une float %7588, 0.000000e+00
  br i1 %7591, label %7592, label %7599, !dx.controlflow.hints !151

; <label>:7592                                    ; preds = %7583
  %7593 = fmul fast float %7588, 0x3FF7154760000000
  %7594 = call float @dx.op.unary.f32(i32 21, float %7593)  ; Exp(value)
  %7595 = fsub fast float 1.000000e+00, %7594
  %7596 = fmul fast float %7585, %7595
  %7597 = fsub fast float -0.000000e+00, %7596
  %7598 = fdiv fast float %7597, %7588
  br label %7599

; <label>:7599                                    ; preds = %7592, %7583
  %7600 = phi float [ %7598, %7592 ], [ %7585, %7583 ]
  %7601 = phi float [ %7594, %7592 ], [ 1.000000e+00, %7583 ]
  %7602 = fcmp fast une float %7589, 0.000000e+00
  br i1 %7602, label %7603, label %7610, !dx.controlflow.hints !151

; <label>:7603                                    ; preds = %7599
  %7604 = fmul fast float %7589, 0x3FF7154760000000
  %7605 = call float @dx.op.unary.f32(i32 21, float %7604)  ; Exp(value)
  %7606 = fsub fast float 1.000000e+00, %7605
  %7607 = fmul fast float %7586, %7606
  %7608 = fsub fast float -0.000000e+00, %7607
  %7609 = fdiv fast float %7608, %7589
  br label %7610

; <label>:7610                                    ; preds = %7603, %7599
  %7611 = phi float [ %7609, %7603 ], [ %7586, %7599 ]
  %7612 = phi float [ %7605, %7603 ], [ 1.000000e+00, %7599 ]
  %7613 = fcmp fast une float %7590, 0.000000e+00
  br i1 %7613, label %7614, label %7621, !dx.controlflow.hints !151

; <label>:7614                                    ; preds = %7610
  %7615 = fmul fast float %7590, 0x3FF7154760000000
  %7616 = call float @dx.op.unary.f32(i32 21, float %7615)  ; Exp(value)
  %7617 = fsub fast float 1.000000e+00, %7616
  %7618 = fmul fast float %7587, %7617
  %7619 = fsub fast float -0.000000e+00, %7618
  %7620 = fdiv fast float %7619, %7590
  br label %7621

; <label>:7621                                    ; preds = %7614, %7610, %7570, %7563
  %7622 = phi float [ %7620, %7614 ], [ %7582, %7570 ], [ %7567, %7563 ], [ %7587, %7610 ]
  %7623 = phi float [ %7611, %7614 ], [ %7581, %7570 ], [ %7566, %7563 ], [ %7611, %7610 ]
  %7624 = phi float [ %7600, %7614 ], [ %7580, %7570 ], [ %7565, %7563 ], [ %7600, %7610 ]
  %7625 = phi float [ %7616, %7614 ], [ %7572, %7570 ], [ 1.000000e+00, %7563 ], [ 1.000000e+00, %7610 ]
  %7626 = phi float [ %7612, %7614 ], [ %7572, %7570 ], [ 1.000000e+00, %7563 ], [ %7612, %7610 ]
  %7627 = phi float [ %7601, %7614 ], [ %7572, %7570 ], [ 1.000000e+00, %7563 ], [ %7601, %7610 ]
  %7628 = fmul fast float %7627, %7539
  %7629 = fmul fast float %7626, %7550
  %7630 = fmul fast float %7625, %7561
  %7631 = fadd fast float %7628, %7624
  %7632 = fadd fast float %7629, %7623
  %7633 = fadd fast float %7630, %7622
  %7634 = fmul fast float %7627, %7538
  %7635 = fmul fast float %7626, %7549
  %7636 = fmul fast float %7625, %7560
  br label %7637

; <label>:7637                                    ; preds = %7621, %7432
  %7638 = phi float [ %7636, %7621 ], [ %7438, %7432 ]
  %7639 = phi float [ %7635, %7621 ], [ %7437, %7432 ]
  %7640 = phi float [ %7634, %7621 ], [ %7436, %7432 ]
  %7641 = phi float [ %7633, %7621 ], [ %7435, %7432 ]
  %7642 = phi float [ %7632, %7621 ], [ %7434, %7432 ]
  %7643 = phi float [ %7631, %7621 ], [ %7433, %7432 ]
  %7644 = fmul fast float %7643, %6589
  %7645 = fmul fast float %7642, %6589
  %7646 = fmul fast float %7641, %6589
  %7647 = fmul fast float %7640, %6880
  %7648 = call float @dx.op.dot3.f32(i32 55, float %7640, float %7639, float %7638, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7649 = call float @dx.op.dot3.f32(i32 55, float %7644, float %7645, float %7646, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7650 = select i1 %240, float %7648, float %7640
  %7651 = select i1 %240, float %7648, float %7639
  %7652 = select i1 %240, float 1.000000e+00, float %7638
  %7653 = select i1 %240, float %7649, float %7644
  %7654 = select i1 %240, float 0.000000e+00, float %7645
  %7655 = select i1 %240, float 0.000000e+00, float %7646
  %7656 = fmul fast float %7650, %6874
  %7657 = fmul fast float %7651, %6875
  %7658 = fmul fast float %7652, %6876
  %7659 = fadd fast float %7656, %7653
  %7660 = fadd fast float %7657, %7654
  %7661 = fadd fast float %7655, %7658
  %7662 = fmul fast float %7650, %6877
  %7663 = fmul fast float %7651, %6878
  %7664 = fmul fast float %7652, %6879
  %7665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7666 = extractvalue %dx.types.CBufRet.i32 %7665, 0
  %7667 = icmp eq i32 %7666, 0
  br i1 %7667, label %8035, label %7668, !dx.controlflow.hints !153

; <label>:7668                                    ; preds = %7637
  %7669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7670 = extractvalue %dx.types.CBufRet.f32 %7669, 2
  %7671 = extractvalue %dx.types.CBufRet.f32 %7669, 3
  %7672 = fmul fast float %7670, %92
  %7673 = fmul fast float %7671, %93
  %7674 = fmul fast float %7672, 2.000000e+00
  %7675 = fmul fast float %7673, 2.000000e+00
  %7676 = fsub fast float 1.000000e+00, %7674
  %7677 = fsub fast float 1.000000e+00, %7675
  %7678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7679 = extractvalue %dx.types.CBufRet.f32 %7678, 0
  %7680 = extractvalue %dx.types.CBufRet.f32 %7678, 1
  %7681 = extractvalue %dx.types.CBufRet.f32 %7678, 2
  %7682 = fmul fast float %7676, %7679
  %7683 = fmul fast float %7676, %7680
  %7684 = fmul fast float %7676, %7681
  %7685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7686 = extractvalue %dx.types.CBufRet.f32 %7685, 0
  %7687 = extractvalue %dx.types.CBufRet.f32 %7685, 1
  %7688 = extractvalue %dx.types.CBufRet.f32 %7685, 2
  %7689 = fmul fast float %7677, %7686
  %7690 = fmul fast float %7677, %7687
  %7691 = fmul fast float %7677, %7688
  %7692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7693 = extractvalue %dx.types.CBufRet.f32 %7692, 0
  %7694 = extractvalue %dx.types.CBufRet.f32 %7692, 1
  %7695 = extractvalue %dx.types.CBufRet.f32 %7692, 2
  %7696 = fadd fast float %7689, %7693
  %7697 = fadd fast float %7696, %7682
  %7698 = fadd fast float %7690, %7694
  %7699 = fadd fast float %7698, %7683
  %7700 = fadd fast float %7691, %7695
  %7701 = fadd fast float %7700, %7684
  %7702 = fmul fast float %7697, %6873
  %7703 = fmul fast float %7699, %6873
  %7704 = fmul fast float %7701, %6873
  %7705 = fmul fast float %7702, %7702
  %7706 = fmul fast float %7703, %7703
  %7707 = fadd fast float %7705, %7706
  %7708 = fmul fast float %7704, %7704
  %7709 = fadd fast float %7707, %7708
  %7710 = call float @dx.op.unary.f32(i32 24, float %7709)  ; Sqrt(value)
  %7711 = extractvalue %dx.types.CBufRet.f32 %6600, 0
  %7712 = fsub fast float %7710, %7711
  %7713 = extractvalue %dx.types.CBufRet.f32 %6600, 2
  %7714 = fmul fast float %7712, %7713
  %7715 = call float @dx.op.unary.f32(i32 7, float %7714)  ; Saturate(value)
  %7716 = fadd fast float %7715, -5.000000e-01
  %7717 = fmul fast float %7716, 2.000000e+00
  %7718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7719 = extractvalue %dx.types.CBufRet.f32 %7718, 2
  %7720 = call float @dx.op.binary.f32(i32 36, float %7719, float %7717)  ; FMin(a,b)
  %7721 = fsub fast float -0.000000e+00, %7719
  %7722 = fcmp fast ogt float %7720, %7721
  br i1 %7722, label %7723, label %8035, !dx.controlflow.hints !154

; <label>:7723                                    ; preds = %7668
  %7724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7725 = extractvalue %dx.types.CBufRet.f32 %7724, 3
  %7726 = fcmp fast ogt float %7725, 0.000000e+00
  br i1 %7726, label %7727, label %7802, !dx.controlflow.hints !155

; <label>:7727                                    ; preds = %7723
  %7728 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %7729 = extractvalue %dx.types.Dimensions %7728, 0
  %7730 = sitofp i32 %7729 to float
  %7731 = extractvalue %dx.types.Dimensions %7728, 1
  %7732 = sitofp i32 %7731 to float
  %7733 = fmul fast float %7672, %7730
  %7734 = fmul fast float %7673, %7732
  %7735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7736 = extractvalue %dx.types.CBufRet.f32 %7735, 1
  %7737 = fsub fast float -0.000000e+00, %7736
  %7738 = fptoui float %7737 to i32
  %7739 = fptoui float %7733 to i32
  %7740 = fptoui float %7734 to i32
  %7741 = and i32 %7738, 31
  %7742 = lshr i32 %7739, %7741
  %7743 = lshr i32 %7740, %7741
  %7744 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 %7738, i32 %7742, i32 %7743, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7745 = extractvalue %dx.types.ResRet.f32 %7744, 0
  %7746 = fcmp fast olt float %7745, -1.000000e+00
  %7747 = fcmp fast ogt float %7745, -1.000000e+00
  %7748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7749 = extractvalue %dx.types.CBufRet.f32 %7748, 1
  %7750 = select i1 %7747, float %7749, float 1.000000e+00
  %7751 = fadd fast float %7745, 1.000000e+00
  %7752 = fmul fast float %7750, %7751
  %7753 = call float @dx.op.unary.f32(i32 6, float %7752)  ; FAbs(value)
  %7754 = extractvalue %dx.types.CBufRet.f32 %7748, 3
  %7755 = fcmp fast oge float %7753, %7754
  %7756 = select i1 %7755, float 0x4197782600000000, float %7753
  %7757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7758 = extractvalue %dx.types.CBufRet.f32 %7757, 0
  %7759 = extractvalue %dx.types.CBufRet.f32 %7757, 1
  %7760 = extractvalue %dx.types.CBufRet.f32 %7757, 2
  %7761 = select i1 %7746, float %7758, float %7679
  %7762 = select i1 %7746, float %7759, float %7680
  %7763 = select i1 %7746, float %7760, float %7681
  %7764 = fmul fast float %7761, %7676
  %7765 = fmul fast float %7762, %7676
  %7766 = fmul fast float %7763, %7676
  %7767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7768 = extractvalue %dx.types.CBufRet.f32 %7767, 0
  %7769 = extractvalue %dx.types.CBufRet.f32 %7767, 1
  %7770 = extractvalue %dx.types.CBufRet.f32 %7767, 2
  %7771 = select i1 %7746, float %7768, float %7686
  %7772 = select i1 %7746, float %7769, float %7687
  %7773 = select i1 %7746, float %7770, float %7688
  %7774 = fmul fast float %7771, %7677
  %7775 = fmul fast float %7772, %7677
  %7776 = fmul fast float %7773, %7677
  %7777 = fadd fast float %7774, %7764
  %7778 = fadd fast float %7775, %7765
  %7779 = fadd fast float %7776, %7766
  %7780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7781 = extractvalue %dx.types.CBufRet.f32 %7780, 0
  %7782 = extractvalue %dx.types.CBufRet.f32 %7780, 1
  %7783 = extractvalue %dx.types.CBufRet.f32 %7780, 2
  %7784 = select i1 %7746, float %7781, float %7693
  %7785 = select i1 %7746, float %7782, float %7694
  %7786 = select i1 %7746, float %7783, float %7695
  %7787 = fadd fast float %7777, %7784
  %7788 = fadd fast float %7778, %7785
  %7789 = fadd fast float %7779, %7786
  %7790 = fmul fast float %7787, %7756
  %7791 = fmul fast float %7788, %7756
  %7792 = fmul fast float %7789, %7756
  %7793 = fmul fast float %7790, %7790
  %7794 = fmul fast float %7791, %7791
  %7795 = fadd fast float %7793, %7794
  %7796 = fmul fast float %7792, %7792
  %7797 = fadd fast float %7795, %7796
  %7798 = call float @dx.op.unary.f32(i32 24, float %7797)  ; Sqrt(value)
  %7799 = fsub fast float %7798, %7711
  %7800 = fmul fast float %7799, %7713
  %7801 = call float @dx.op.unary.f32(i32 7, float %7800)  ; Saturate(value)
  br label %7802

; <label>:7802                                    ; preds = %7727, %7723
  %7803 = phi float [ %7801, %7727 ], [ 1.000000e+00, %7723 ]
  %7804 = fmul fast float %7720, 5.000000e-01
  %7805 = fadd fast float %7804, 5.000000e-01
  %7806 = call float @dx.op.unary.f32(i32 22, float %7805)  ; Frc(value)
  %7807 = call float @dx.op.unary.f32(i32 27, float %7806)  ; Round_ni(value)
  %7808 = call float @dx.op.unary.f32(i32 22, float %7806)  ; Frc(value)
  %7809 = fmul fast float %7808, 2.000000e+00
  %7810 = fadd fast float %7809, -1.000000e+00
  %7811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %36, float %7672, float %7673, float %7807, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7812 = extractvalue %dx.types.ResRet.f32 %7811, 0
  %7813 = extractvalue %dx.types.ResRet.f32 %7811, 1
  %7814 = extractvalue %dx.types.ResRet.f32 %7811, 2
  %7815 = extractvalue %dx.types.ResRet.f32 %7811, 3
  %7816 = fadd fast float %7812, -5.000000e-01
  %7817 = fadd fast float %7814, -5.000000e-01
  %7818 = fmul fast float %7816, 0xBFD5555560000000
  %7819 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7817, float %7818)  ; FMad(a,b,c)
  %7820 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7813, float 0.000000e+00)  ; FMad(a,b,c)
  %7821 = fadd fast float %7820, %7815
  %7822 = fmul fast float %7816, -7.500000e-01
  %7823 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7817, float %7822)  ; FMad(a,b,c)
  %7824 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7813, float 0.000000e+00)  ; FMad(a,b,c)
  %7825 = fadd fast float %7824, %7815
  %7826 = call float @dx.op.binary.f32(i32 35, float %7819, float -1.000000e+00)  ; FMax(a,b)
  %7827 = call float @dx.op.binary.f32(i32 35, float %7821, float -1.000000e+00)  ; FMax(a,b)
  %7828 = call float @dx.op.binary.f32(i32 35, float %7823, float -1.000000e+00)  ; FMax(a,b)
  %7829 = call float @dx.op.binary.f32(i32 35, float %7825, float -1.000000e+00)  ; FMax(a,b)
  %7830 = call float @dx.op.binary.f32(i32 36, float %7826, float 1.000000e+00)  ; FMin(a,b)
  %7831 = call float @dx.op.binary.f32(i32 36, float %7827, float 1.000000e+00)  ; FMin(a,b)
  %7832 = call float @dx.op.binary.f32(i32 36, float %7828, float 1.000000e+00)  ; FMin(a,b)
  %7833 = call float @dx.op.binary.f32(i32 36, float %7829, float 1.000000e+00)  ; FMin(a,b)
  %7834 = fcmp fast olt float %7830, 0x3FEFFF8020000000
  br i1 %7834, label %7835, label %7950, !dx.controlflow.hints !156

; <label>:7835                                    ; preds = %7802
  %7836 = extractvalue %dx.types.CBufRet.f32 %7718, 3
  %7837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7838 = extractvalue %dx.types.CBufRet.f32 %7837, 0
  %7839 = extractvalue %dx.types.CBufRet.f32 %7837, 1
  %7840 = extractvalue %dx.types.CBufRet.f32 %7837, 2
  %7841 = extractvalue %dx.types.CBufRet.f32 %7837, 3
  %7842 = fsub fast float %7838, %7830
  %7843 = fsub fast float %7839, %7831
  %7844 = fsub fast float %7840, %7832
  %7845 = fsub fast float %7841, %7833
  %7846 = fmul fast float %7842, %7836
  %7847 = fmul fast float %7843, %7836
  %7848 = fmul fast float %7844, %7836
  %7849 = fmul fast float %7845, %7836
  %7850 = fadd fast float %7846, %7830
  %7851 = fadd fast float %7847, %7831
  %7852 = fsub fast float -0.000000e+00, %7851
  %7853 = fadd fast float %7848, %7832
  %7854 = fadd fast float %7849, %7833
  %7855 = fmul fast float %7850, %7850
  %7856 = fsub fast float %7851, %7855
  %7857 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7856)  ; FMax(a,b)
  %7858 = fdiv fast float 1.000000e+00, %7857
  %7859 = fmul fast float %7851, %7850
  %7860 = fsub fast float %7853, %7859
  %7861 = fsub fast float %7810, %7850
  %7862 = fmul fast float %7810, %7810
  %7863 = fsub fast float %7862, %7851
  %7864 = fmul fast float %7861, %7858
  %7865 = fmul fast float %7864, %7860
  %7866 = fsub fast float %7863, %7865
  %7867 = fmul fast float %7851, %7851
  %7868 = fsub fast float %7854, %7867
  %7869 = fmul fast float %7860, %7860
  %7870 = fmul fast float %7869, %7858
  %7871 = fsub fast float %7868, %7870
  %7872 = fdiv fast float %7866, %7871
  %7873 = fmul fast float %7860, %7872
  %7874 = fsub fast float %7861, %7873
  %7875 = fmul fast float %7874, %7858
  %7876 = fmul fast float %7875, %7850
  %7877 = fsub fast float 1.000000e+00, %7876
  %7878 = fmul fast float %7851, %7872
  %7879 = fsub fast float %7877, %7878
  %7880 = fmul fast float %7875, %7875
  %7881 = fmul fast float %7872, 4.000000e+00
  %7882 = fmul fast float %7881, %7879
  %7883 = fsub fast float %7880, %7882
  %7884 = call float @dx.op.unary.f32(i32 24, float %7883)  ; Sqrt(value)
  %7885 = fcmp fast oge float %7875, 0.000000e+00
  %7886 = fsub fast float -0.000000e+00, %7884
  %7887 = select i1 %7885, float %7886, float %7884
  %7888 = fsub fast float %7887, %7875
  %7889 = fdiv fast float %7888, %7872
  %7890 = fdiv fast float %7879, %7888
  %7891 = fmul fast float %7889, 5.000000e-01
  %7892 = fmul fast float %7890, 2.000000e+00
  %7893 = select i1 %7885, float %7891, float %7892
  %7894 = select i1 %7885, float %7892, float %7891
  %7895 = call float @dx.op.binary.f32(i32 35, float %7893, float %7894)  ; FMax(a,b)
  %7896 = call float @dx.op.binary.f32(i32 36, float %7893, float %7894)  ; FMin(a,b)
  %7897 = fcmp fast ogt float %7810, %7896
  br i1 %7897, label %7898, label %7908

; <label>:7898                                    ; preds = %7835
  %7899 = fsub fast float %7810, %7896
  %7900 = fsub fast float %7895, %7896
  %7901 = fmul fast float %7899, %7900
  %7902 = fmul fast float %7895, %7810
  %7903 = fadd fast float %7895, %7810
  %7904 = fmul fast float %7903, %7850
  %7905 = fadd fast float %7902, %7851
  %7906 = fsub fast float %7905, %7904
  %7907 = fdiv fast float %7906, %7901
  br label %7908

; <label>:7908                                    ; preds = %7898, %7835
  %7909 = phi float [ %7907, %7898 ], [ 0.000000e+00, %7835 ]
  %7910 = fcmp fast ogt float %7810, %7895
  %7911 = fsub fast float %7810, %7895
  br i1 %7910, label %7912, label %7922

; <label>:7912                                    ; preds = %7908
  %7913 = fsub fast float %7895, %7896
  %7914 = fmul fast float %7913, %7911
  %7915 = fmul fast float %7896, %7810
  %7916 = fadd fast float %7896, %7810
  %7917 = fmul fast float %7916, %7850
  %7918 = fsub fast float %7852, %7915
  %7919 = fadd fast float %7918, %7917
  %7920 = fdiv fast float %7919, %7914
  %7921 = fadd fast float %7920, %7909
  br label %7922

; <label>:7922                                    ; preds = %7912, %7908
  %7923 = phi float [ %7921, %7912 ], [ %7909, %7908 ]
  %7924 = fsub fast float %7810, %7896
  %7925 = fmul fast float %7924, %7911
  %7926 = fmul fast float %7896, %7895
  %7927 = fadd fast float %7896, %7895
  %7928 = fmul fast float %7927, %7850
  %7929 = fadd fast float %7926, %7851
  %7930 = fsub fast float %7929, %7928
  %7931 = fdiv fast float %7930, %7925
  %7932 = call float @dx.op.unary.f32(i32 7, float %7923)  ; Saturate(value)
  %7933 = fcmp fast oeq float %6601, 0.000000e+00
  %7934 = extractvalue %dx.types.CBufRet.f32 %7718, 0
  %7935 = fcmp fast oeq float %7934, 0.000000e+00
  %7936 = or i1 %7933, %7935
  %7937 = fmul fast float %7934, 2.000000e+00
  %7938 = fadd fast float %7719, %7720
  %7939 = fdiv fast float %7938, %7937
  %7940 = call float @dx.op.unary.f32(i32 7, float %7939)  ; Saturate(value)
  %7941 = fmul fast float %7940, 2.000000e+00
  %7942 = fsub fast float 3.000000e+00, %7941
  %7943 = fmul fast float %7940, %7940
  %7944 = fmul fast float %7943, %7942
  %7945 = select i1 %7936, float 1.000000e+00, float %7944
  %7946 = fmul fast float %7931, %6601
  %7947 = fadd fast float %7932, %7946
  %7948 = call float @dx.op.unary.f32(i32 7, float %7947)  ; Saturate(value)
  %7949 = fmul fast float %7945, %7948
  br label %7950

; <label>:7950                                    ; preds = %7922, %7802
  %7951 = phi float [ %7949, %7922 ], [ 0.000000e+00, %7802 ]
  %7952 = fsub fast float 1.000000e+00, %7951
  %7953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %36, float %7672, float %7673, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7954 = extractvalue %dx.types.ResRet.f32 %7953, 0
  %7955 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7956 = extractvalue %dx.types.CBufRet.i32 %7955, 2
  %7957 = icmp eq i32 %7956, 0
  br i1 %7957, label %7963, label %7958

; <label>:7958                                    ; preds = %7950
  %7959 = call float @dx.op.unary.f32(i32 7, float %7951)  ; Saturate(value)
  %7960 = fadd fast float %7954, -1.000000e+00
  %7961 = fmul fast float %7959, %7960
  %7962 = fadd fast float %7961, 1.000000e+00
  br label %7963

; <label>:7963                                    ; preds = %7958, %7950
  %7964 = phi float [ %7962, %7958 ], [ %7952, %7950 ]
  br i1 %7726, label %7965, label %7983

; <label>:7965                                    ; preds = %7963
  %7966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7967 = extractvalue %dx.types.CBufRet.f32 %7966, 1
  %7968 = fsub fast float %7803, %7967
  %7969 = call float @dx.op.unary.f32(i32 7, float %7968)  ; Saturate(value)
  %7970 = fsub fast float %7803, %7725
  %7971 = call float @dx.op.unary.f32(i32 7, float %7970)  ; Saturate(value)
  %7972 = fsub fast float %7969, %7971
  %7973 = fsub fast float %7805, %7971
  %7974 = fdiv fast float %7973, %7972
  %7975 = call float @dx.op.unary.f32(i32 7, float %7974)  ; Saturate(value)
  %7976 = fmul fast float %7975, 2.000000e+00
  %7977 = fsub fast float 3.000000e+00, %7976
  %7978 = fsub fast float %7954, %7964
  %7979 = fmul fast float %7975, %7975
  %7980 = fmul fast float %7979, %7978
  %7981 = fmul fast float %7980, %7977
  %7982 = fadd fast float %7981, %7964
  br label %7983

; <label>:7983                                    ; preds = %7965, %7963
  %7984 = phi float [ %7982, %7965 ], [ %7964, %7963 ]
  %7985 = call float @dx.op.binary.f32(i32 35, float %7954, float %7984)  ; FMax(a,b)
  %7986 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7987 = extractvalue %dx.types.CBufRet.i32 %7986, 2
  %7988 = and i32 %7987, 1
  %7989 = icmp eq i32 %7988, 0
  %7990 = fcmp fast une float %7985, 1.000000e+00
  %7991 = and i1 %7990, %7989
  br i1 %7991, label %7992, label %8011

; <label>:7992                                    ; preds = %7983
  %7993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %36, float %7672, float %7673, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7994 = extractvalue %dx.types.ResRet.f32 %7993, 0
  %7995 = extractvalue %dx.types.ResRet.f32 %7993, 1
  %7996 = extractvalue %dx.types.ResRet.f32 %7993, 2
  %7997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7998 = extractvalue %dx.types.CBufRet.f32 %7997, 1
  %7999 = fmul fast float %7998, %7994
  %8000 = fmul fast float %7998, %7995
  %8001 = fmul fast float %7998, %7996
  %8002 = fcmp fast ogt float %7954, 0x3FEFFF2E40000000
  %8003 = fsub fast float 1.000000e+00, %7985
  %8004 = fsub fast float 1.000000e+00, %7954
  %8005 = fdiv fast float %8003, %8004
  %8006 = call float @dx.op.unary.f32(i32 7, float %8005)  ; Saturate(value)
  %8007 = select i1 %8002, float 0.000000e+00, float %8006
  %8008 = fmul fast float %7999, %8007
  %8009 = fmul fast float %8000, %8007
  %8010 = fmul fast float %8001, %8007
  br label %8011

; <label>:8011                                    ; preds = %7992, %7983
  %8012 = phi float [ 0.000000e+00, %7983 ], [ %8008, %7992 ]
  %8013 = phi float [ 0.000000e+00, %7983 ], [ %8009, %7992 ]
  %8014 = phi float [ 0.000000e+00, %7983 ], [ %8010, %7992 ]
  %8015 = fmul fast float %8012, %6589
  %8016 = fmul fast float %8013, %6589
  %8017 = fmul fast float %8014, %6589
  %8018 = fmul fast float %7985, %7647
  %8019 = call float @dx.op.dot3.f32(i32 55, float %7985, float %7985, float %7985, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8020 = call float @dx.op.dot3.f32(i32 55, float %8015, float %8016, float %8017, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8021 = select i1 %240, float %8019, float %7985
  %8022 = select i1 %240, float 1.000000e+00, float %7985
  %8023 = select i1 %240, float %8020, float %8015
  %8024 = select i1 %240, float 0.000000e+00, float %8016
  %8025 = select i1 %240, float 0.000000e+00, float %8017
  %8026 = fmul fast float %8021, %7659
  %8027 = fmul fast float %8021, %7660
  %8028 = fmul fast float %8022, %7661
  %8029 = fadd fast float %8026, %8023
  %8030 = fadd fast float %8027, %8024
  %8031 = fadd fast float %8025, %8028
  %8032 = fmul fast float %8021, %7662
  %8033 = fmul fast float %8021, %7663
  %8034 = fmul fast float %8022, %7664
  br label %8035

; <label>:8035                                    ; preds = %8011, %7668, %7637, %6869
  %8036 = phi float [ %6874, %6869 ], [ %7659, %7637 ], [ %8029, %8011 ], [ %7659, %7668 ]
  %8037 = phi float [ %6875, %6869 ], [ %7660, %7637 ], [ %8030, %8011 ], [ %7660, %7668 ]
  %8038 = phi float [ %6876, %6869 ], [ %7661, %7637 ], [ %8031, %8011 ], [ %7661, %7668 ]
  %8039 = phi float [ %6877, %6869 ], [ %7662, %7637 ], [ %8032, %8011 ], [ %7662, %7668 ]
  %8040 = phi float [ %6878, %6869 ], [ %7663, %7637 ], [ %8033, %8011 ], [ %7663, %7668 ]
  %8041 = phi float [ %6879, %6869 ], [ %7664, %7637 ], [ %8034, %8011 ], [ %7664, %7668 ]
  %8042 = phi float [ %6880, %6869 ], [ %7647, %7637 ], [ %8018, %8011 ], [ %7647, %7668 ]
  %8043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8044 = extractvalue %dx.types.CBufRet.f32 %8043, 2
  %8045 = extractvalue %dx.types.CBufRet.f32 %8043, 3
  %8046 = fmul fast float %8044, %92
  %8047 = fmul fast float %8045, %93
  %8048 = call float @dx.op.unary.f32(i32 7, float %8046)  ; Saturate(value)
  %8049 = call float @dx.op.unary.f32(i32 7, float %8047)  ; Saturate(value)
  %8050 = select i1 %6611, i32 2, i32 0
  %8051 = or i32 %8050, 1
  %8052 = uitofp i32 %8051 to float
  %8053 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %8048, float %8049, float %8052, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8054 = extractvalue %dx.types.ResRet.f32 %8053, 0
  %8055 = extractvalue %dx.types.ResRet.f32 %8053, 1
  %8056 = extractvalue %dx.types.ResRet.f32 %8053, 2
  %8057 = extractvalue %dx.types.ResRet.f32 %8053, 3
  %8058 = add nuw nsw i32 %8050, 2
  %8059 = uitofp i32 %8058 to float
  %8060 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %8048, float %8049, float %8059, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8061 = extractvalue %dx.types.ResRet.f32 %8060, 0
  %8062 = extractvalue %dx.types.ResRet.f32 %8060, 1
  %8063 = extractvalue %dx.types.ResRet.f32 %8060, 2
  %8064 = extractvalue %dx.types.ResRet.f32 %8060, 3
  %8065 = call float @dx.op.binary.f32(i32 35, float %8055, float %8056)  ; FMax(a,b)
  %8066 = call float @dx.op.binary.f32(i32 35, float %8054, float %8065)  ; FMax(a,b)
  %8067 = call float @dx.op.binary.f32(i32 35, float %8066, float %8057)  ; FMax(a,b)
  %8068 = call float @dx.op.binary.f32(i32 36, float %8062, float %8063)  ; FMin(a,b)
  %8069 = call float @dx.op.binary.f32(i32 36, float %8061, float %8068)  ; FMin(a,b)
  %8070 = call float @dx.op.binary.f32(i32 36, float %8069, float %8064)  ; FMin(a,b)
  %8071 = fmul fast float %8067, 2.550000e+02
  %8072 = fadd fast float %8071, 0x3F70101020000000
  %8073 = fptoui float %8072 to i32
  %8074 = fmul fast float %8070, 2.550000e+02
  %8075 = fadd fast float %8074, 0x3F70101020000000
  %8076 = fptoui float %8075 to i32
  %8077 = icmp ult i32 %8073, %8076
  br i1 %8077, label %8078, label %8247

; <label>:8078                                    ; preds = %8035
  %8079 = fcmp fast ogt float %82, 9.843750e-01
  %8080 = fadd fast float %6873, -4.000000e+00
  %8081 = select i1 %8079, float -4.000000e+00, float %8080
  %8082 = call float @dx.op.binary.f32(i32 35, float %8081, float 0.000000e+00)  ; FMax(a,b)
  %8083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8084 = extractvalue %dx.types.CBufRet.f32 %8083, 0
  %8085 = fadd fast float %8084, %8082
  %8086 = extractvalue %dx.types.CBufRet.f32 %8083, 2
  %8087 = fmul fast float %8085, %8086
  %8088 = call float @dx.op.unary.f32(i32 23, float %8087)  ; Log(value)
  %8089 = extractvalue %dx.types.CBufRet.f32 %8083, 3
  %8090 = fmul fast float %8089, %8088
  %8091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8092 = extractvalue %dx.types.CBufRet.f32 %8091, 2
  %8093 = fmul fast float %8090, %8092
  %8094 = call float @dx.op.unary.f32(i32 7, float %8093)  ; Saturate(value)
  %8095 = uitofp i32 %8073 to float
  %8096 = uitofp i32 %8076 to float
  %8097 = fadd fast float %8095, 5.000000e-01
  %8098 = fadd fast float %8096, 5.000000e-01
  %8099 = fmul fast float %8092, %8097
  %8100 = fmul fast float %8092, %8098
  %8101 = fadd fast float %8099, 0x3F0FFB4800000000
  %8102 = fadd fast float %8100, 0xBF0FFB4800000000
  %8103 = call float @dx.op.binary.f32(i32 35, float %8094, float %8101)  ; FMax(a,b)
  %8104 = call float @dx.op.binary.f32(i32 36, float %8103, float %8102)  ; FMin(a,b)
  %8105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8106 = extractvalue %dx.types.CBufRet.f32 %8105, 1
  %8107 = extractvalue %dx.types.CBufRet.f32 %8105, 2
  %8108 = extractvalue %dx.types.CBufRet.f32 %8105, 0
  %8109 = select i1 %6611, float %8108, float 0.000000e+00
  %8110 = fmul fast float %8106, %8104
  %8111 = fadd fast float %8109, %8110
  %8112 = fadd fast float %8109, %8107
  %8113 = fsub fast float %8106, %8107
  %8114 = fadd fast float %8113, %8109
  %8115 = call float @dx.op.binary.f32(i32 35, float %8111, float %8112)  ; FMax(a,b)
  %8116 = call float @dx.op.binary.f32(i32 36, float %8115, float %8114)  ; FMin(a,b)
  %8117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %34, float %8048, float %8049, float %8116, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8118 = extractvalue %dx.types.ResRet.f32 %8117, 0
  %8119 = extractvalue %dx.types.ResRet.f32 %8117, 1
  %8120 = extractvalue %dx.types.ResRet.f32 %8117, 2
  %8121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8122 = extractvalue %dx.types.CBufRet.i32 %8121, 0
  %8123 = extractvalue %dx.types.CBufRet.i32 %8121, 1
  %8124 = uitofp i32 %8122 to float
  %8125 = uitofp i32 %8123 to float
  %8126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8127 = extractvalue %dx.types.CBufRet.f32 %8126, 0
  %8128 = extractvalue %dx.types.CBufRet.f32 %8126, 1
  %8129 = fmul fast float %8124, %8048
  %8130 = fmul fast float %8125, %8049
  %8131 = fadd fast float %8129, -5.000000e-01
  %8132 = fadd fast float %8130, -5.000000e-01
  %8133 = call float @dx.op.unary.f32(i32 22, float %8131)  ; Frc(value)
  %8134 = call float @dx.op.unary.f32(i32 22, float %8132)  ; Frc(value)
  %8135 = fmul fast float %8133, %8133
  %8136 = fmul fast float %8135, %8133
  %8137 = fsub fast float 3.000000e+00, %8133
  %8138 = fmul fast float %8135, %8137
  %8139 = fmul fast float %8133, 3.000000e+00
  %8140 = fmul fast float %8136, 3.000000e+00
  %8141 = fmul fast float %8135, 6.000000e+00
  %8142 = fsub fast float %8140, %8141
  %8143 = fadd fast float %8142, 4.000000e+00
  %8144 = fmul fast float %8143, 0x3FC5555560000000
  %8145 = fmul fast float %8136, -3.000000e+00
  %8146 = fadd fast float %8135, %8133
  %8147 = fmul fast float %8146, 3.000000e+00
  %8148 = fadd fast float %8145, 1.000000e+00
  %8149 = fadd fast float %8148, %8147
  %8150 = fmul fast float %8136, 0x3FC5555560000000
  %8151 = fmul fast float %8134, %8134
  %8152 = fmul fast float %8151, %8134
  %8153 = fsub fast float 3.000000e+00, %8134
  %8154 = fmul fast float %8151, %8153
  %8155 = fmul fast float %8134, 3.000000e+00
  %8156 = fmul fast float %8152, 3.000000e+00
  %8157 = fmul fast float %8151, 6.000000e+00
  %8158 = fsub fast float %8156, %8157
  %8159 = fadd fast float %8158, 4.000000e+00
  %8160 = fmul fast float %8159, 0x3FC5555560000000
  %8161 = fmul fast float %8152, -3.000000e+00
  %8162 = fadd fast float %8151, %8134
  %8163 = fmul fast float %8162, 3.000000e+00
  %8164 = fadd fast float %8161, 1.000000e+00
  %8165 = fadd fast float %8164, %8163
  %8166 = fmul fast float %8152, 0x3FC5555560000000
  %8167 = fadd fast float %8133, 1.000000e+00
  %8168 = fsub fast float 1.000000e+00, %8139
  %8169 = fadd fast float %8168, %8138
  %8170 = fadd fast float %8169, %8143
  %8171 = fmul fast float %8170, 0x3FC5555560000000
  %8172 = fdiv fast float %8144, %8171
  %8173 = fsub fast float %8167, %8172
  %8174 = fsub fast float 1.000000e+00, %8133
  %8175 = fadd fast float %8149, %8136
  %8176 = fmul fast float %8175, 0x3FC5555560000000
  %8177 = fdiv fast float %8150, %8176
  %8178 = fadd fast float %8174, %8177
  %8179 = fadd fast float %8134, 1.000000e+00
  %8180 = fsub fast float 1.000000e+00, %8155
  %8181 = fadd fast float %8180, %8154
  %8182 = fadd fast float %8181, %8159
  %8183 = fmul fast float %8182, 0x3FC5555560000000
  %8184 = fdiv fast float %8160, %8183
  %8185 = fsub fast float %8179, %8184
  %8186 = fsub fast float 1.000000e+00, %8134
  %8187 = fadd fast float %8165, %8152
  %8188 = fmul fast float %8187, 0x3FC5555560000000
  %8189 = fdiv fast float %8166, %8188
  %8190 = fadd fast float %8189, %8186
  %8191 = fmul fast float %8173, %8127
  %8192 = fsub fast float %8048, %8191
  %8193 = fmul fast float %8178, %8127
  %8194 = fadd fast float %8193, %8048
  %8195 = fmul fast float %8190, %8128
  %8196 = fadd fast float %8195, %8049
  %8197 = fmul fast float %8185, %8128
  %8198 = fsub fast float %8049, %8197
  %8199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8192, float %8198, float %8116, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8200 = extractvalue %dx.types.ResRet.f32 %8199, 0
  %8201 = extractvalue %dx.types.ResRet.f32 %8199, 1
  %8202 = extractvalue %dx.types.ResRet.f32 %8199, 2
  %8203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8194, float %8198, float %8116, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8204 = extractvalue %dx.types.ResRet.f32 %8203, 0
  %8205 = extractvalue %dx.types.ResRet.f32 %8203, 1
  %8206 = extractvalue %dx.types.ResRet.f32 %8203, 2
  %8207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8192, float %8196, float %8116, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8208 = extractvalue %dx.types.ResRet.f32 %8207, 0
  %8209 = extractvalue %dx.types.ResRet.f32 %8207, 1
  %8210 = extractvalue %dx.types.ResRet.f32 %8207, 2
  %8211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %8194, float %8196, float %8116, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8212 = extractvalue %dx.types.ResRet.f32 %8211, 0
  %8213 = extractvalue %dx.types.ResRet.f32 %8211, 1
  %8214 = extractvalue %dx.types.ResRet.f32 %8211, 2
  %8215 = fsub fast float %8208, %8200
  %8216 = fsub fast float %8209, %8201
  %8217 = fsub fast float %8210, %8202
  %8218 = fmul fast float %8215, %8188
  %8219 = fmul fast float %8216, %8188
  %8220 = fmul fast float %8217, %8188
  %8221 = fadd fast float %8218, %8200
  %8222 = fadd fast float %8219, %8201
  %8223 = fadd fast float %8220, %8202
  %8224 = fsub fast float %8212, %8204
  %8225 = fsub fast float %8213, %8205
  %8226 = fsub fast float %8214, %8206
  %8227 = fmul fast float %8224, %8188
  %8228 = fmul fast float %8225, %8188
  %8229 = fmul fast float %8226, %8188
  %8230 = fsub fast float %8204, %8221
  %8231 = fadd fast float %8230, %8227
  %8232 = fsub fast float %8205, %8222
  %8233 = fadd fast float %8232, %8228
  %8234 = fsub fast float %8206, %8223
  %8235 = fadd fast float %8234, %8229
  %8236 = fmul fast float %8231, %8176
  %8237 = fmul fast float %8233, %8176
  %8238 = fmul fast float %8235, %8176
  %8239 = fadd fast float %8236, %8221
  %8240 = fadd fast float %8237, %8222
  %8241 = fadd fast float %8238, %8223
  %8242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8243 = extractvalue %dx.types.CBufRet.f32 %8242, 1
  %8244 = fmul fast float %8239, %8243
  %8245 = fmul fast float %8240, %8243
  %8246 = fmul fast float %8241, %8243
  br label %8247

; <label>:8247                                    ; preds = %8078, %8035
  %8248 = phi float [ %8118, %8078 ], [ 1.000000e+00, %8035 ]
  %8249 = phi float [ %8119, %8078 ], [ 1.000000e+00, %8035 ]
  %8250 = phi float [ %8120, %8078 ], [ 1.000000e+00, %8035 ]
  %8251 = phi float [ %8244, %8078 ], [ 0.000000e+00, %8035 ]
  %8252 = phi float [ %8245, %8078 ], [ 0.000000e+00, %8035 ]
  %8253 = phi float [ %8246, %8078 ], [ 0.000000e+00, %8035 ]
  %8254 = fmul fast float %8251, %6589
  %8255 = fmul fast float %8252, %6589
  %8256 = fmul fast float %8253, %6589
  %8257 = fmul fast float %8248, %8042
  %8258 = call float @dx.op.dot3.f32(i32 55, float %8248, float %8249, float %8250, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8259 = call float @dx.op.dot3.f32(i32 55, float %8254, float %8255, float %8256, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8260 = select i1 %240, float %8258, float %8248
  %8261 = select i1 %240, float %8258, float %8249
  %8262 = select i1 %240, float 1.000000e+00, float %8250
  %8263 = select i1 %240, float %8259, float %8254
  %8264 = select i1 %240, float 0.000000e+00, float %8255
  %8265 = select i1 %240, float 0.000000e+00, float %8256
  %8266 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8267 = extractvalue %dx.types.CBufRet.i32 %8266, 3
  %8268 = and i32 %8267, 3
  %8269 = icmp ne i32 %8268, 0
  %8270 = and i32 %8267, 4
  %8271 = icmp ne i32 %8270, 0
  %8272 = and i1 %8269, %8271
  %8273 = and i1 %240, %8272
  br i1 %8273, label %8274, label %8280

; <label>:8274                                    ; preds = %8247
  %8275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8276 = extractvalue %dx.types.CBufRet.f32 %8275, 1
  %8277 = fadd fast float %8257, -1.000000e+00
  %8278 = fmul fast float %8276, %8277
  %8279 = fadd fast float %8278, 1.000000e+00
  br label %8280

; <label>:8280                                    ; preds = %8274, %8247
  %8281 = phi float [ %8279, %8274 ], [ %8257, %8247 ]
  %8282 = fadd fast float %8039, %8036
  %8283 = fmul fast float %8260, %8282
  %8284 = fadd fast float %8283, %8263
  %8285 = fadd fast float %8040, %8037
  %8286 = fmul fast float %8261, %8285
  %8287 = fadd fast float %8286, %8264
  %8288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8289 = extractvalue %dx.types.CBufRet.f32 %8288, 0
  br i1 %240, label %8290, label %8313

; <label>:8290                                    ; preds = %8280
  %8291 = fadd fast float %8284, %8287
  %8292 = fmul fast float %8289, %8291
  %8293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8294 = extractvalue %dx.types.CBufRet.f32 %8293, 3
  %8295 = extractvalue %dx.types.CBufRet.f32 %6593, 1
  %8296 = fsub fast float %6598, %6592
  %8297 = fadd fast float %8296, %6599
  %8298 = fsub fast float %8297, %8295
  %8299 = extractvalue %dx.types.CBufRet.f32 %6593, 2
  %8300 = fmul fast float %8298, %8299
  %8301 = call float @dx.op.unary.f32(i32 7, float %8300)  ; Saturate(value)
  %8302 = fsub fast float %8301, %8294
  %8303 = fmul fast float %8302, %8281
  %8304 = fadd fast float %8303, %8294
  %8305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8306 = extractvalue %dx.types.CBufRet.f32 %8305, 0
  %8307 = fsub fast float %8304, %8306
  %8308 = fmul fast float %8307, 1.000000e+01
  %8309 = call float @dx.op.unary.f32(i32 7, float %8308)  ; Saturate(value)
  %8310 = fmul fast float %8309, %6589
  %8311 = fsub fast float %6589, %8310
  %8312 = fmul fast float %8311, %8304
  br label %8337

; <label>:8313                                    ; preds = %8280
  %8314 = fadd fast float %8041, %8038
  %8315 = fmul fast float %8262, %8314
  %8316 = fadd fast float %8315, %8265
  %8317 = fmul fast float %8289, %8284
  %8318 = fmul fast float %8289, %8287
  %8319 = fmul fast float %8289, %8316
  %8320 = call float @dx.op.binary.f32(i32 35, float %8318, float %8319)  ; FMax(a,b)
  %8321 = call float @dx.op.binary.f32(i32 35, float %8317, float %8320)  ; FMax(a,b)
  %8322 = call float @dx.op.binary.f32(i32 35, float %8321, float %6589)  ; FMax(a,b)
  %8323 = fcmp fast ugt float %8322, 0x3F10000000000000
  br i1 %8323, label %8325, label %8324

; <label>:8324                                    ; preds = %8313
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8325

; <label>:8325                                    ; preds = %8324, %8313
  %8326 = add i32 %42, 356
  %8327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %8326, i32 undef)  ; BufferLoad(srv,index,wot)
  %8328 = extractvalue %dx.types.ResRet.i32 %8327, 0
  %8329 = and i32 %8328, 32
  %8330 = icmp eq i32 %8329, 0
  br i1 %8330, label %8337, label %8331

; <label>:8331                                    ; preds = %8325
  %8332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8333 = extractvalue %dx.types.CBufRet.f32 %8332, 0
  %8334 = fmul fast float %8333, 0x3FE99999A0000000
  %8335 = fadd fast float %8333, %8317
  %8336 = fadd fast float %8334, %8319
  br label %8337

; <label>:8337                                    ; preds = %8331, %8325, %8290
  %8338 = phi float [ %8292, %8290 ], [ %8335, %8331 ], [ %8317, %8325 ]
  %8339 = phi float [ %8312, %8290 ], [ %8318, %8331 ], [ %8318, %8325 ]
  %8340 = phi float [ %8311, %8290 ], [ %8336, %8331 ], [ %8319, %8325 ]
  %8341 = phi float [ %8311, %8290 ], [ %6589, %8331 ], [ %6589, %8325 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8342 = call float @dx.op.binary.f32(i32 36, float %8338, float 3.225500e+04)  ; FMin(a,b)
  %8343 = call float @dx.op.binary.f32(i32 36, float %8339, float 3.225500e+04)  ; FMin(a,b)
  %8344 = call float @dx.op.binary.f32(i32 36, float %8340, float 3.225500e+04)  ; FMin(a,b)
  %8345 = call float @dx.op.binary.f32(i32 36, float %8341, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8342)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8343)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8344)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8345)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!54}
!dx.entryPoints = !{!55}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !43, !46}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !23}
!23 = !{i32 0, i32 5}
!24 = !{i32 16, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !30}
!30 = !{i32 0, i32 14}
!31 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!32 = !{i32 23, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!33 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!34 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!35 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!36 = !{i32 27, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!37 = !{i32 28, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!38 = !{i32 29, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!39 = !{i32 30, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!40 = !{i32 31, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !30}
!41 = !{i32 32, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!43 = !{!44, !45}
!44 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!45 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!46 = !{!47, !48, !49, !50, !51, !52, !53}
!47 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!48 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!49 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!50 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!51 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!52 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!53 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!54 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!55 = !{void ()* @ps_main, !"ps_main", !56, !4, !80}
!56 = !{!57, !78, null}
!57 = !{!58, !61, !62, !64, !66, !67, !68, !69, !70, !71, !72, !73, !74, !76, !77}
!58 = !{i32 0, !"SV_Position", i8 9, i8 3, !59, i8 4, i32 1, i8 4, i32 0, i8 0, !60}
!59 = !{i32 0}
!60 = !{i32 3, i32 15}
!61 = !{i32 1, !"COLOR", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 1, i8 0, !60}
!62 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 2, i8 0, !63}
!63 = !{i32 3, i32 3}
!64 = !{i32 3, !"NORMAL", i8 9, i8 0, !59, i8 2, i32 1, i8 3, i32 3, i8 0, !65}
!65 = !{i32 3, i32 7}
!66 = !{i32 4, !"TANGENT", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 4, i8 0, !60}
!67 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !59, i8 2, i32 1, i8 3, i32 5, i8 0, !65}
!68 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 6, i8 0, !60}
!69 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !59, i8 2, i32 1, i8 3, i32 7, i8 0, !65}
!70 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 8, i8 0, !60}
!71 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !59, i8 2, i32 1, i8 2, i32 9, i8 0, !63}
!72 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 10, i8 0, !60}
!73 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 11, i8 0, !65}
!74 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !59, i8 1, i32 1, i8 1, i32 12, i8 0, !75}
!75 = !{i32 3, i32 1}
!76 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !59, i8 1, i32 1, i8 4, i32 13, i8 0, !75}
!77 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !59, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!78 = !{!79}
!79 = !{i32 0, !"SV_Target", i8 9, i8 16, !59, i8 0, i32 1, i8 4, i32 0, i8 0, !60}
!80 = !{i32 0, i64 16}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = !{!87, !87, i64 0}
!87 = !{!"int", !88, i64 0}
!88 = !{!"omnipotent char", !89, i64 0}
!89 = !{!"Simple C/C++ TBAA"}
!90 = !{!91, !93, !95, !97}
!91 = distinct !{!91, !92, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!92 = distinct !{!92, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!93 = distinct !{!93, !94, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!94 = distinct !{!94, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!95 = distinct !{!95, !96, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!96 = distinct !{!96, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!97 = distinct !{!97, !98, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!98 = distinct !{!98, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = !{!109, !109, i64 0}
!109 = !{!"float", !88, i64 0}
!110 = !{!111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!111 = distinct !{!111, !112, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!112 = distinct !{!112, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!113 = distinct !{!113, !114, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!114 = distinct !{!114, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!115 = distinct !{!115, !114, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!116 = distinct !{!116, !117, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!117 = distinct !{!117, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!118 = distinct !{!118, !117, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!119 = distinct !{!119, !117, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!120 = distinct !{!120, !121, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!121 = distinct !{!121, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!122 = distinct !{!122, !121, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!123 = distinct !{!123, !121, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!124 = distinct !{!124, !125, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!125 = distinct !{!125, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"\01?sort@@YAXAIAM00@Z: %c"}
!128 = distinct !{!128, !"\01?sort@@YAXAIAM00@Z"}
!129 = !{!130, !131, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!130 = distinct !{!130, !128, !"\01?sort@@YAXAIAM00@Z: %a"}
!131 = distinct !{!131, !128, !"\01?sort@@YAXAIAM00@Z: %b"}
!132 = !{!131}
!133 = !{!130, !127, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!134 = !{!130}
!135 = !{!131, !127, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!136 = !{!137}
!137 = distinct !{!137, !138, !"\01?sort@@YAXAIAM00@Z: %c"}
!138 = distinct !{!138, !"\01?sort@@YAXAIAM00@Z"}
!139 = !{!140, !141, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!140 = distinct !{!140, !138, !"\01?sort@@YAXAIAM00@Z: %a"}
!141 = distinct !{!141, !138, !"\01?sort@@YAXAIAM00@Z: %b"}
!142 = !{!141}
!143 = !{!140, !137, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!144 = !{!140}
!145 = !{!141, !137, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 2}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}

