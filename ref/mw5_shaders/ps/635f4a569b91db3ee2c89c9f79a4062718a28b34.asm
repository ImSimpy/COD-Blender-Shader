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
; shader hash: 630051e559b1eda662edb10978b8861c
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
  %434 = add i32 %42, 472
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
  br i1 %490, label %1025, label %491

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
  %1012 = add i32 %42, 96
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1012, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %1014, 255
  %1016 = uitofp i32 %1015 to float
  %1017 = lshr i32 %1014, 8
  %1018 = and i32 %1017, 255
  %1019 = uitofp i32 %1018 to float
  %1020 = call float @dx.op.dot3.f32(i32 55, float %881, float %882, float %883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1021 = fmul fast float %1019, %1020
  %1022 = fadd fast float %1021, %1016
  %1023 = fmul fast float %1022, 0x3F70101020000000
  %1024 = call float @dx.op.unary.f32(i32 7, float %1023)  ; Saturate(value)
  br label %1025

; <label>:1025                                    ; preds = %1008, %476
  %1026 = phi float [ 0.000000e+00, %476 ], [ %962, %1008 ]
  %1027 = phi float [ 0.000000e+00, %476 ], [ %963, %1008 ]
  %1028 = phi float [ 0.000000e+00, %476 ], [ %881, %1008 ]
  %1029 = phi float [ 0.000000e+00, %476 ], [ %882, %1008 ]
  %1030 = phi float [ 0.000000e+00, %476 ], [ %883, %1008 ]
  %1031 = phi float [ 0.000000e+00, %476 ], [ %1009, %1008 ]
  %1032 = phi float [ 0.000000e+00, %476 ], [ %1010, %1008 ]
  %1033 = phi float [ 0.000000e+00, %476 ], [ %1011, %1008 ]
  %1034 = phi float [ 0.000000e+00, %476 ], [ %867, %1008 ]
  %1035 = phi float [ 0.000000e+00, %476 ], [ %663, %1008 ]
  %1036 = phi float [ 0.000000e+00, %476 ], [ %961, %1008 ]
  %1037 = phi float [ 0.000000e+00, %476 ], [ %964, %1008 ]
  %1038 = phi float [ 0.000000e+00, %476 ], [ %1024, %1008 ]
  br i1 %424, label %1765, label %1039

; <label>:1039                                    ; preds = %1025
  %1040 = icmp ult i32 %482, 2
  %1041 = add i32 %42, 40
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = add i32 %42, 44
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = or i32 %1046, %1043
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1765, label %1049

; <label>:1049                                    ; preds = %1039
  %1050 = and i32 %1043, 262144
  %1051 = icmp ne i32 %1050, 0
  %1052 = select i1 %1051, float %47, float 1.000000e+00
  %1053 = select i1 %1051, float %48, float 0.000000e+00
  %1054 = select i1 %1051, float %49, float 0.000000e+00
  %1055 = select i1 %1051, float %50, float 1.000000e+00
  %1056 = select i1 %1051, float %51, float %74
  %1057 = select i1 %1051, float %52, float %75
  %1058 = add i32 %42, 300
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = lshr i32 %1060, 16
  %1062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1061)  ; LegacyF16ToF32(value)
  %1063 = fmul fast float %1062, 0x3F50624DE0000000
  %1064 = add i32 %42, 104
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = lshr i32 %1066, 16
  %1068 = and i32 %1067, 255
  %1069 = lshr i32 %1066, 24
  %1070 = add i32 %42, 308
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = and i32 %1072, 65535
  %1074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1073)  ; LegacyF16ToF32(value)
  %1075 = lshr i32 %1072, 16
  %1076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1075)  ; LegacyF16ToF32(value)
  %1077 = add i32 %42, 48
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = lshr i32 %1079, 22
  %1081 = shl nuw nsw i32 %1080, 5
  %1082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1081)  ; LegacyF16ToF32(value)
  %1083 = shl i32 %1079, 4
  %1084 = and i32 %1083, 32752
  %1085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1084)  ; LegacyF16ToF32(value)
  %1086 = lshr i32 %1079, 7
  %1087 = and i32 %1086, 32752
  %1088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1087)  ; LegacyF16ToF32(value)
  %1089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.f32 %1089, 3
  %1091 = fmul fast float %1090, 1.000000e+03
  %1092 = fmul fast float %334, %1091
  %1093 = call float @dx.op.unary.f32(i32 22, float %1092)  ; Frc(value)
  %1094 = fadd fast float %1093, %324
  %1095 = fmul fast float %335, %1091
  %1096 = call float @dx.op.unary.f32(i32 22, float %1095)  ; Frc(value)
  %1097 = fadd fast float %1096, %326
  %1098 = fmul fast float %1063, %1091
  %1099 = call float @dx.op.unary.f32(i32 22, float %1098)  ; Frc(value)
  %1100 = fmul fast float %1099, 0x401921FB60000000
  %1101 = fadd fast float %1100, %1082
  %1102 = call float @dx.op.unary.f32(i32 13, float %1101)  ; Sin(value)
  %1103 = call float @dx.op.unary.f32(i32 12, float %1101)  ; Cos(value)
  %1104 = fsub fast float -0.000000e+00, %1102
  %1105 = fadd fast float %1056, -5.000000e-01
  %1106 = fadd fast float %1057, -5.000000e-01
  %1107 = fmul fast float %1074, %1105
  %1108 = fmul fast float %1076, %1106
  %1109 = fadd fast float %1107, 5.000000e-01
  %1110 = fadd fast float %1108, 5.000000e-01
  %1111 = fmul fast float %1085, %1109
  %1112 = fmul fast float %1088, %1110
  %1113 = fmul fast float %1103, %1111
  %1114 = call float @dx.op.tertiary.f32(i32 46, float %1104, float %1112, float %1113)  ; FMad(a,b,c)
  %1115 = fmul fast float %1102, %1111
  %1116 = call float @dx.op.tertiary.f32(i32 46, float %1103, float %1112, float %1115)  ; FMad(a,b,c)
  %1117 = fadd fast float %1094, %1114
  %1118 = fadd fast float %1097, %1116
  %1119 = icmp ugt i32 %1068, 1
  %1120 = icmp ugt i32 %1066, 33554431
  %1121 = or i1 %1120, %1119
  br i1 %1121, label %1122, label %1147

; <label>:1122                                    ; preds = %1049
  %1123 = add i32 %42, 244
  %1124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1123, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.i32 %1124, 0
  %1126 = lshr i32 %1125, 16
  %1127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1126)  ; LegacyF16ToF32(value)
  %1128 = fmul fast float %1090, %1127
  %1129 = call float @dx.op.unary.f32(i32 22, float %1128)  ; Frc(value)
  %1130 = mul nuw nsw i32 %1068, %1069
  %1131 = uitofp i32 %1130 to float
  %1132 = fmul fast float %1129, %1131
  %1133 = call float @dx.op.unary.f32(i32 27, float %1132)  ; Round_ni(value)
  %1134 = fptoui float %1133 to i32
  %1135 = urem i32 %1134, %1068
  %1136 = udiv i32 %1134, %1069
  %1137 = call float @dx.op.unary.f32(i32 22, float %1117)  ; Frc(value)
  %1138 = call float @dx.op.unary.f32(i32 22, float %1118)  ; Frc(value)
  %1139 = uitofp i32 %1135 to float
  %1140 = uitofp i32 %1136 to float
  %1141 = fadd fast float %1137, %1139
  %1142 = fadd fast float %1138, %1140
  %1143 = uitofp i32 %1068 to float
  %1144 = uitofp i32 %1069 to float
  %1145 = fdiv fast float %1141, %1143
  %1146 = fdiv fast float %1142, %1144
  br label %1147

; <label>:1147                                    ; preds = %1122, %1049
  %1148 = phi float [ %1145, %1122 ], [ %1117, %1049 ]
  %1149 = phi float [ %1146, %1122 ], [ %1118, %1049 ]
  %1150 = and i32 %1043, 256
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1198, label %1152

; <label>:1152                                    ; preds = %1147
  %1153 = add i32 %42, 428
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = add i32 %1155, 0
  %1157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1156, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1158 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1157, %dx.types.Handle %89, float %1148, float %1149, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1159 = extractvalue %dx.types.ResRet.f32 %1158, 0
  %1160 = add i32 %42, 116
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1160, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = shl i32 %1162, 4
  %1164 = and i32 %1163, 32752
  %1165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1164)  ; LegacyF16ToF32(value)
  %1166 = lshr i32 %1162, 7
  %1167 = and i32 %1166, 32752
  %1168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1167)  ; LegacyF16ToF32(value)
  %1169 = fsub fast float 1.000000e+00, %479
  %1170 = call float @dx.op.binary.f32(i32 35, float %1169, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1171 = bitcast float %479 to i32
  %1172 = sitofp i32 %1171 to float
  %1173 = fadd fast float %1172, 0xC1CFBF8940000000
  %1174 = fmul fast float %1168, %1173
  %1175 = fadd fast float %1174, 0x41CFBF8940000000
  %1176 = fptosi float %1175 to i32
  %1177 = bitcast i32 %1176 to float
  %1178 = bitcast float %1170 to i32
  %1179 = sitofp i32 %1178 to float
  %1180 = fadd fast float %1179, 0xC1CFBF8940000000
  %1181 = fmul fast float %1180, %1168
  %1182 = fadd fast float %1181, 0x41CFBF8940000000
  %1183 = fptosi float %1182 to i32
  %1184 = bitcast i32 %1183 to float
  %1185 = fmul fast float %1177, %1165
  %1186 = fmul fast float %1184, %1165
  %1187 = fsub fast float %1170, %1185
  %1188 = fadd fast float %1186, %1170
  %1189 = call float @dx.op.unary.f32(i32 7, float %1187)  ; Saturate(value)
  %1190 = call float @dx.op.unary.f32(i32 7, float %1188)  ; Saturate(value)
  %1191 = fsub fast float %1159, %1189
  %1192 = fsub fast float %1190, %1189
  %1193 = bitcast float %1192 to i32
  %1194 = sub nsw i32 2129859010, %1193
  %1195 = bitcast i32 %1194 to float
  %1196 = fmul fast float %1195, %1191
  %1197 = call float @dx.op.unary.f32(i32 7, float %1196)  ; Saturate(value)
  br label %1198

; <label>:1198                                    ; preds = %1152, %1147
  %1199 = phi float [ %1197, %1152 ], [ %479, %1147 ]
  %1200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.i32 %1200, 0
  %1202 = and i32 %1201, 128
  %1203 = icmp eq i32 %1202, 0
  br i1 %1203, label %1220, label %1204

; <label>:1204                                    ; preds = %1198
  %1205 = add i32 %42, 412
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = add i32 %1207, 0
  %1209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1208, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1210 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1209, %dx.types.Handle %89, float %1148, float %1149, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = and i32 %1213, 524288
  %1215 = icmp ne i32 %1214, 0
  %1216 = fcmp fast ogt float %1211, 0x3FE0101020000000
  %1217 = select i1 %1216, float 1.000000e+00, float 0.000000e+00
  %1218 = select i1 %1215, float %1217, float %1211
  %1219 = fmul fast float %1218, %1199
  br label %1220

; <label>:1220                                    ; preds = %1204, %1198
  %1221 = phi float [ %1219, %1204 ], [ %1199, %1198 ]
  %1222 = fcmp fast ult float %1221, 0x3F70101020000000
  br i1 %1222, label %1765, label %1223

; <label>:1223                                    ; preds = %1220
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = and i32 %1225, 16
  %1227 = icmp eq i32 %1226, 0
  br i1 %1227, label %1426, label %1228

; <label>:1228                                    ; preds = %1223
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = add i32 %42, 364
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = add i32 %1233, 0
  %1235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1234, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1236 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1235, %dx.types.Handle %88, float %1148, float %1149, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1237 = extractvalue %dx.types.ResRet.f32 %1236, 0
  %1238 = extractvalue %dx.types.ResRet.f32 %1236, 1
  %1239 = extractvalue %dx.types.ResRet.f32 %1236, 2
  %1240 = extractvalue %dx.types.ResRet.f32 %1236, 3
  %1241 = and i32 %1230, 255
  %1242 = uitofp i32 %1241 to float
  %1243 = lshr i32 %1230, 8
  %1244 = and i32 %1243, 255
  %1245 = uitofp i32 %1244 to float
  %1246 = fmul fast float %1240, %1242
  %1247 = fadd fast float %1246, %1245
  %1248 = fmul fast float %1247, 0x3F70101000000000
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = and i32 %1250, 512
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1261, label %1253

; <label>:1253                                    ; preds = %1228
  %1254 = add i32 %42, 444
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = add i32 %1256, 0
  %1258 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1257, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1259 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1258, %dx.types.Handle %89, float %1148, float %1149, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1260 = extractvalue %dx.types.ResRet.f32 %1259, 0
  br label %1261

; <label>:1261                                    ; preds = %1253, %1228
  %1262 = phi float [ %1260, %1253 ], [ 1.000000e+00, %1228 ]
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = and i32 %1264, 33554432
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1373, label %1267

; <label>:1267                                    ; preds = %1261
  %1268 = add i32 %42, 240
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = and i32 %1270, 65535
  %1272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1271)  ; LegacyF16ToF32(value)
  %1273 = lshr i32 %1270, 16
  %1274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1273)  ; LegacyF16ToF32(value)
  %1275 = add i32 %42, 244
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = and i32 %1277, 65535
  %1279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1278)  ; LegacyF16ToF32(value)
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = lshr i32 %1281, 24
  %1283 = uitofp i32 %1282 to float
  %1284 = fmul fast float %1283, 0x3F70101020000000
  %1285 = and i32 %1281, 255
  %1286 = uitofp i32 %1285 to float
  %1287 = fmul fast float %1286, 0x3F70101020000000
  %1288 = lshr i32 %1281, 8
  %1289 = and i32 %1288, 255
  %1290 = uitofp i32 %1289 to float
  %1291 = fmul fast float %1290, 0x3F70101020000000
  %1292 = lshr i32 %1281, 16
  %1293 = and i32 %1292, 255
  %1294 = uitofp i32 %1293 to float
  %1295 = fmul fast float %1294, 0x3F70101020000000
  %1296 = add i32 %42, 236
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = lshr i32 %1298, 24
  %1300 = uitofp i32 %1299 to float
  %1301 = fmul fast float %1300, 0x3F70101020000000
  %1302 = and i32 %1298, 255
  %1303 = uitofp i32 %1302 to float
  %1304 = fmul fast float %1303, 0x3F70101020000000
  %1305 = lshr i32 %1298, 8
  %1306 = and i32 %1305, 255
  %1307 = uitofp i32 %1306 to float
  %1308 = fmul fast float %1307, 0x3F70101020000000
  %1309 = lshr i32 %1298, 16
  %1310 = and i32 %1309, 255
  %1311 = uitofp i32 %1310 to float
  %1312 = fmul fast float %1311, 0x3F70101020000000
  %1313 = bitcast float %1237 to i32
  %1314 = ashr i32 %1313, 1
  %1315 = sub nsw i32 1597463174, %1314
  %1316 = bitcast i32 %1315 to float
  %1317 = fmul fast float %1237, 5.000000e-01
  %1318 = fmul fast float %1316, %1316
  %1319 = fmul fast float %1318, %1317
  %1320 = fsub fast float 1.500000e+00, %1319
  %1321 = fmul fast float %1316, %1237
  %1322 = fmul fast float %1321, %1320
  %1323 = bitcast float %1238 to i32
  %1324 = ashr i32 %1323, 1
  %1325 = sub nsw i32 1597463174, %1324
  %1326 = bitcast i32 %1325 to float
  %1327 = fmul fast float %1238, 5.000000e-01
  %1328 = fmul fast float %1326, %1326
  %1329 = fmul fast float %1328, %1327
  %1330 = fsub fast float 1.500000e+00, %1329
  %1331 = fmul fast float %1326, %1238
  %1332 = fmul fast float %1331, %1330
  %1333 = bitcast float %1239 to i32
  %1334 = ashr i32 %1333, 1
  %1335 = sub nsw i32 1597463174, %1334
  %1336 = bitcast i32 %1335 to float
  %1337 = fmul fast float %1239, 5.000000e-01
  %1338 = fmul fast float %1336, %1336
  %1339 = fmul fast float %1338, %1337
  %1340 = fsub fast float 1.500000e+00, %1339
  %1341 = fmul fast float %1336, %1239
  %1342 = fmul fast float %1341, %1340
  %1343 = fsub fast float %1322, %1304
  %1344 = fsub fast float %1332, %1308
  %1345 = fsub fast float %1342, %1312
  %1346 = fmul fast float %1343, %1272
  %1347 = fmul fast float %1344, %1274
  %1348 = fmul fast float %1345, %1279
  %1349 = fadd fast float %1346, %1287
  %1350 = fadd fast float %1347, %1291
  %1351 = fadd fast float %1348, %1295
  %1352 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  %1353 = call float @dx.op.unary.f32(i32 7, float %1350)  ; Saturate(value)
  %1354 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  %1355 = fmul fast float %1352, %1352
  %1356 = fmul fast float %1353, %1353
  %1357 = fmul fast float %1354, %1354
  %1358 = fsub fast float %1355, %1237
  %1359 = fsub fast float %1356, %1238
  %1360 = fsub fast float %1357, %1239
  %1361 = fmul fast float %1358, %1262
  %1362 = fmul fast float %1359, %1262
  %1363 = fmul fast float %1360, %1262
  %1364 = fadd fast float %1361, %1237
  %1365 = fadd fast float %1362, %1238
  %1366 = fadd fast float %1363, %1239
  %1367 = fadd fast float %1284, %1248
  %1368 = fsub fast float %1367, %1301
  %1369 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  %1370 = fsub fast float %1369, %1248
  %1371 = fmul fast float %1370, %1262
  %1372 = fadd fast float %1371, %1248
  br label %1426

; <label>:1373                                    ; preds = %1261
  %1374 = and i32 %1264, 134217728
  %1375 = icmp eq i32 %1374, 0
  br i1 %1375, label %1410, label %1376

; <label>:1376                                    ; preds = %1373
  %1377 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %1378 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %1379 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %1380 = fadd fast float %1377, -5.000000e-01
  %1381 = fadd fast float %1378, -5.000000e-01
  %1382 = fadd fast float %1379, -5.000000e-01
  %1383 = fmul fast float %1380, %1262
  %1384 = fmul fast float %1381, %1262
  %1385 = fmul fast float %1382, %1262
  %1386 = fadd fast float %1383, 5.000000e-01
  %1387 = fadd fast float %1384, 5.000000e-01
  %1388 = fadd fast float %1385, 5.000000e-01
  %1389 = call float @dx.op.unary.f32(i32 24, float %1237)  ; Sqrt(value)
  %1390 = call float @dx.op.unary.f32(i32 24, float %1238)  ; Sqrt(value)
  %1391 = call float @dx.op.unary.f32(i32 24, float %1239)  ; Sqrt(value)
  %1392 = fmul fast float %1386, 2.000000e+00
  %1393 = fsub fast float 1.000000e+00, %1392
  %1394 = fmul fast float %1393, %1389
  %1395 = fadd fast float %1394, %1392
  %1396 = fmul fast float %1395, %1389
  %1397 = fmul fast float %1387, 2.000000e+00
  %1398 = fsub fast float 1.000000e+00, %1397
  %1399 = fmul fast float %1398, %1390
  %1400 = fadd fast float %1399, %1397
  %1401 = fmul fast float %1400, %1390
  %1402 = fmul fast float %1388, 2.000000e+00
  %1403 = fsub fast float 1.000000e+00, %1402
  %1404 = fmul fast float %1403, %1391
  %1405 = fadd fast float %1404, %1402
  %1406 = fmul fast float %1405, %1391
  %1407 = fmul fast float %1396, %1396
  %1408 = fmul fast float %1401, %1401
  %1409 = fmul fast float %1406, %1406
  br label %1426

; <label>:1410                                    ; preds = %1373
  %1411 = fmul fast float %311, %311
  %1412 = fmul fast float %315, %315
  %1413 = fmul fast float %319, %319
  %1414 = fadd fast float %1411, -1.000000e+00
  %1415 = fadd fast float %1412, -1.000000e+00
  %1416 = fadd fast float %1413, -1.000000e+00
  %1417 = fmul fast float %1262, %1414
  %1418 = fmul fast float %1262, %1415
  %1419 = fmul fast float %1262, %1416
  %1420 = fadd fast float %1417, 1.000000e+00
  %1421 = fadd fast float %1418, 1.000000e+00
  %1422 = fadd fast float %1419, 1.000000e+00
  %1423 = fmul fast float %1420, %1237
  %1424 = fmul fast float %1421, %1238
  %1425 = fmul fast float %1422, %1239
  br label %1426

; <label>:1426                                    ; preds = %1410, %1376, %1267, %1223
  %1427 = phi float [ %1372, %1267 ], [ %1248, %1376 ], [ %1248, %1410 ], [ 0x3FA23C0BE0000000, %1223 ]
  %1428 = phi float [ %1364, %1267 ], [ %1407, %1376 ], [ %1423, %1410 ], [ 1.000000e+00, %1223 ]
  %1429 = phi float [ %1365, %1267 ], [ %1408, %1376 ], [ %1424, %1410 ], [ 1.000000e+00, %1223 ]
  %1430 = phi float [ %1366, %1267 ], [ %1409, %1376 ], [ %1425, %1410 ], [ 1.000000e+00, %1223 ]
  %1431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.i32 %1431, 1
  %1433 = and i32 %1432, 1
  %1434 = icmp ne i32 %1433, 0
  %1435 = add i32 %42, 356
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = and i32 %1437, 32
  %1439 = icmp ne i32 %1438, 0
  %1440 = and i1 %1434, %1439
  %1441 = select i1 %1440, float 1.000000e+00, float %1428
  %1442 = select i1 %1440, float 0x3FD3333340000000, float %1429
  %1443 = select i1 %1440, float 0x3FD3333340000000, float %1430
  %1444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.i32 %1444, 0
  %1446 = and i32 %1445, 32
  %1447 = icmp eq i32 %1446, 0
  br i1 %1447, label %1520, label %1448

; <label>:1448                                    ; preds = %1426
  %1449 = add i32 %42, 108
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = add i32 %42, 380
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = add i32 %1454, 0
  %1456 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1455, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1457 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1456, %dx.types.Handle %88, float %1148, float %1149, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1458 = extractvalue %dx.types.ResRet.f32 %1457, 0
  %1459 = extractvalue %dx.types.ResRet.f32 %1457, 1
  %1460 = extractvalue %dx.types.ResRet.f32 %1457, 2
  %1461 = extractvalue %dx.types.ResRet.f32 %1457, 3
  %1462 = and i32 %1451, 255
  %1463 = uitofp i32 %1462 to float
  %1464 = lshr i32 %1451, 8
  %1465 = and i32 %1464, 255
  %1466 = uitofp i32 %1465 to float
  %1467 = lshr i32 %1451, 16
  %1468 = and i32 %1467, 255
  %1469 = uitofp i32 %1468 to float
  %1470 = fmul fast float %1469, 0x3F70101000000000
  %1471 = fmul fast float %1458, %1463
  %1472 = fadd fast float %1471, %1466
  %1473 = fmul fast float %1472, 0x3F70101000000000
  %1474 = fadd fast float %1459, -5.000000e-01
  %1475 = fadd fast float %1461, -5.000000e-01
  %1476 = fmul fast float %1474, %1470
  %1477 = fmul fast float %1475, %1470
  %1478 = fadd fast float %1476, 5.000000e-01
  %1479 = fadd fast float %1477, 5.000000e-01
  %1480 = fmul fast float %1478, 2.000000e+00
  %1481 = fadd fast float %1480, -1.000000e+00
  %1482 = fmul fast float %1479, 2.000000e+00
  %1483 = fadd fast float %1482, -1.000000e+00
  %1484 = fadd fast float %1481, %1483
  %1485 = fmul fast float %1484, 5.000000e-01
  %1486 = fsub fast float %1481, %1483
  %1487 = fmul fast float %1486, 5.000000e-01
  %1488 = call float @dx.op.unary.f32(i32 6, float %1485)  ; FAbs(value)
  %1489 = fsub fast float 1.000000e+00, %1488
  %1490 = call float @dx.op.unary.f32(i32 6, float %1487)  ; FAbs(value)
  %1491 = fsub fast float %1489, %1490
  %1492 = call float @dx.op.dot3.f32(i32 55, float %1485, float %1487, float %1491, float %1485, float %1487, float %1491)  ; Dot3(ax,ay,az,bx,by,bz)
  %1493 = call float @dx.op.unary.f32(i32 25, float %1492)  ; Rsqrt(value)
  %1494 = fmul fast float %1485, %1493
  %1495 = fmul fast float %1487, %1493
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = and i32 %1497, 67108864
  %1499 = icmp eq i32 %1498, 0
  br i1 %1499, label %1516, label %1500

; <label>:1500                                    ; preds = %1448
  %1501 = add i32 %42, 296
  %1502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.i32 %1502, 0
  %1504 = and i32 %1503, 65535
  %1505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1504)  ; LegacyF16ToF32(value)
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = and i32 %1507, 65535
  %1509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1508)  ; LegacyF16ToF32(value)
  %1510 = lshr i32 %1503, 16
  %1511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1510)  ; LegacyF16ToF32(value)
  %1512 = fsub fast float %1473, %1511
  %1513 = fmul fast float %1512, %1505
  %1514 = fadd fast float %1513, %1509
  %1515 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  br label %1516

; <label>:1516                                    ; preds = %1500, %1448
  %1517 = phi float [ %1515, %1500 ], [ %1473, %1448 ]
  %1518 = call float @dx.op.dot2.f32(i32 54, float %1494, float %1495, float %1052, float %1053)  ; Dot2(ax,ay,bx,by)
  %1519 = call float @dx.op.dot2.f32(i32 54, float %1494, float %1495, float %1054, float %1055)  ; Dot2(ax,ay,bx,by)
  br label %1520

; <label>:1520                                    ; preds = %1516, %1426
  %1521 = phi float [ %1517, %1516 ], [ 0x3FD6666660000000, %1426 ]
  %1522 = phi float [ %1518, %1516 ], [ 0.000000e+00, %1426 ]
  %1523 = phi float [ %1519, %1516 ], [ 0.000000e+00, %1426 ]
  %1524 = phi float [ %1460, %1516 ], [ 1.000000e+00, %1426 ]
  %1525 = add i32 %42, 176
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = lshr i32 %1527, 22
  %1529 = shl nuw nsw i32 %1528, 5
  %1530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1529)  ; LegacyF16ToF32(value)
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 64
  %1534 = icmp eq i32 %1533, 0
  br i1 %1534, label %1568, label %1535

; <label>:1535                                    ; preds = %1520
  %1536 = add i32 %42, 396
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = add i32 %1538, 0
  %1540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = and i32 %1542, 131072
  %1544 = icmp eq i32 %1543, 0
  %1545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1540, %dx.types.Handle %88, float %1148, float %1149, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1546 = extractvalue %dx.types.ResRet.f32 %1545, 0
  %1547 = extractvalue %dx.types.ResRet.f32 %1545, 1
  %1548 = extractvalue %dx.types.ResRet.f32 %1545, 2
  %1549 = fmul fast float %1546, %299
  %1550 = fmul fast float %1547, %302
  %1551 = fmul fast float %1548, %305
  br i1 %1544, label %1558, label %1552

; <label>:1552                                    ; preds = %1535
  %1553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1554 = extractvalue %dx.types.CBufRet.f32 %1553, 0
  %1555 = fmul fast float %1554, %1549
  %1556 = fmul fast float %1554, %1550
  %1557 = fmul fast float %1554, %1551
  br label %1558

; <label>:1558                                    ; preds = %1552, %1535
  %1559 = phi float [ %1555, %1552 ], [ %1549, %1535 ]
  %1560 = phi float [ %1556, %1552 ], [ %1550, %1535 ]
  %1561 = phi float [ %1557, %1552 ], [ %1551, %1535 ]
  %1562 = fmul fast float %1559, %1530
  %1563 = select i1 %240, float %1562, float %1559
  %1564 = call float @dx.op.dot3.f32(i32 55, float %1563, float %1560, float %1561, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1565 = select i1 %240, float 0.000000e+00, float %1559
  %1566 = select i1 %240, float %1564, float %1560
  %1567 = select i1 %240, float 0.000000e+00, float %1561
  br label %1568

; <label>:1568                                    ; preds = %1558, %1520
  %1569 = phi float [ %1565, %1558 ], [ 0.000000e+00, %1520 ]
  %1570 = phi float [ %1566, %1558 ], [ 0.000000e+00, %1520 ]
  %1571 = phi float [ %1567, %1558 ], [ 0.000000e+00, %1520 ]
  %1572 = add i32 %42, 112
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1572, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = and i32 %1574, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = lshr i32 %1574, 8
  %1578 = and i32 %1577, 255
  %1579 = uitofp i32 %1578 to float
  %1580 = call float @dx.op.dot3.f32(i32 55, float %1441, float %1442, float %1443, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1581 = fmul fast float %1579, %1580
  %1582 = fadd fast float %1581, %1576
  %1583 = fmul fast float %1582, 0x3F70101020000000
  %1584 = call float @dx.op.unary.f32(i32 7, float %1583)  ; Saturate(value)
  br i1 %1040, label %1585, label %1593

; <label>:1585                                    ; preds = %1568
  %1586 = fsub fast float 1.000000e+00, %1221
  %1587 = fmul fast float %1586, %1028
  %1588 = fmul fast float %1586, %1029
  %1589 = fmul fast float %1586, %1030
  %1590 = fmul fast float %1586, %1031
  %1591 = fmul fast float %1586, %1032
  %1592 = fmul fast float %1586, %1033
  br label %1593

; <label>:1593                                    ; preds = %1585, %1568
  %1594 = phi float [ %1587, %1585 ], [ %1028, %1568 ]
  %1595 = phi float [ %1588, %1585 ], [ %1029, %1568 ]
  %1596 = phi float [ %1589, %1585 ], [ %1030, %1568 ]
  %1597 = phi float [ %1590, %1585 ], [ %1031, %1568 ]
  %1598 = phi float [ %1591, %1585 ], [ %1032, %1568 ]
  %1599 = phi float [ %1592, %1585 ], [ %1033, %1568 ]
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = and i32 %1601, 3
  %1603 = icmp eq i32 %1602, 3
  br i1 %1603, label %1682, label %1604

; <label>:1604                                    ; preds = %1593
  %1605 = and i32 %1601, 16
  %1606 = icmp ne i32 %1605, 0
  %1607 = select i1 %1606, float %1221, float 0.000000e+00
  %1608 = icmp eq i32 %1602, 0
  br i1 %1608, label %1609, label %1637

; <label>:1609                                    ; preds = %1604
  %1610 = and i32 %1601, 64
  %1611 = icmp ne i32 %1610, 0
  %1612 = select i1 %1611, float %1221, float 0.000000e+00
  %1613 = fsub fast float %1441, %1594
  %1614 = fsub fast float %1442, %1595
  %1615 = fsub fast float %1443, %1596
  %1616 = fmul fast float %1607, %1613
  %1617 = fmul fast float %1607, %1614
  %1618 = fmul fast float %1607, %1615
  %1619 = fadd fast float %1616, %1594
  %1620 = fadd fast float %1617, %1595
  %1621 = fadd fast float %1618, %1596
  %1622 = fsub fast float %1427, %1034
  %1623 = fmul fast float %1607, %1622
  %1624 = fadd fast float %1623, %1034
  %1625 = fsub fast float %1569, %1597
  %1626 = fsub fast float %1570, %1598
  %1627 = fsub fast float %1571, %1599
  %1628 = fmul fast float %1612, %1625
  %1629 = fmul fast float %1612, %1626
  %1630 = fmul fast float %1612, %1627
  %1631 = fadd fast float %1628, %1597
  %1632 = fadd fast float %1629, %1598
  %1633 = fadd fast float %1630, %1599
  %1634 = fsub fast float %1584, %1038
  %1635 = fmul fast float %1607, %1634
  %1636 = fadd fast float %1635, %1038
  br label %1682

; <label>:1637                                    ; preds = %1604
  %1638 = icmp eq i32 %1602, 1
  br i1 %1638, label %1639, label %1652

; <label>:1639                                    ; preds = %1637
  %1640 = fadd fast float %1441, -1.000000e+00
  %1641 = fadd fast float %1442, -1.000000e+00
  %1642 = fadd fast float %1443, -1.000000e+00
  %1643 = fmul fast float %1607, %1640
  %1644 = fmul fast float %1607, %1641
  %1645 = fmul fast float %1607, %1642
  %1646 = fadd fast float %1643, 1.000000e+00
  %1647 = fadd fast float %1644, 1.000000e+00
  %1648 = fadd fast float %1645, 1.000000e+00
  %1649 = fmul fast float %1646, %1594
  %1650 = fmul fast float %1647, %1595
  %1651 = fmul fast float %1648, %1596
  br label %1682

; <label>:1652                                    ; preds = %1637
  %1653 = icmp eq i32 %1602, 2
  br i1 %1653, label %1654, label %1682

; <label>:1654                                    ; preds = %1652
  %1655 = call float @dx.op.unary.f32(i32 24, float %1441)  ; Sqrt(value)
  %1656 = call float @dx.op.unary.f32(i32 24, float %1442)  ; Sqrt(value)
  %1657 = call float @dx.op.unary.f32(i32 24, float %1443)  ; Sqrt(value)
  %1658 = fadd fast float %1655, -5.000000e-01
  %1659 = fadd fast float %1656, -5.000000e-01
  %1660 = fadd fast float %1657, -5.000000e-01
  %1661 = fmul fast float %1658, %1607
  %1662 = fmul fast float %1659, %1607
  %1663 = fmul fast float %1660, %1607
  %1664 = fadd fast float %1661, 5.000000e-01
  %1665 = fadd fast float %1662, 5.000000e-01
  %1666 = fadd fast float %1663, 5.000000e-01
  %1667 = fmul fast float %1664, 2.000000e+00
  %1668 = fsub fast float 1.000000e+00, %1667
  %1669 = fmul fast float %1668, %1594
  %1670 = fadd fast float %1669, %1667
  %1671 = fmul fast float %1670, %1594
  %1672 = fmul fast float %1665, 2.000000e+00
  %1673 = fsub fast float 1.000000e+00, %1672
  %1674 = fmul fast float %1673, %1595
  %1675 = fadd fast float %1674, %1672
  %1676 = fmul fast float %1675, %1595
  %1677 = fmul fast float %1666, 2.000000e+00
  %1678 = fsub fast float 1.000000e+00, %1677
  %1679 = fmul fast float %1678, %1596
  %1680 = fadd fast float %1679, %1677
  %1681 = fmul fast float %1680, %1596
  br label %1682

; <label>:1682                                    ; preds = %1654, %1652, %1639, %1609, %1593
  %1683 = phi float [ %1594, %1593 ], [ %1671, %1654 ], [ %1594, %1652 ], [ %1649, %1639 ], [ %1619, %1609 ]
  %1684 = phi float [ %1595, %1593 ], [ %1676, %1654 ], [ %1595, %1652 ], [ %1650, %1639 ], [ %1620, %1609 ]
  %1685 = phi float [ %1596, %1593 ], [ %1681, %1654 ], [ %1596, %1652 ], [ %1651, %1639 ], [ %1621, %1609 ]
  %1686 = phi float [ %1597, %1593 ], [ %1597, %1654 ], [ %1597, %1652 ], [ %1597, %1639 ], [ %1631, %1609 ]
  %1687 = phi float [ %1598, %1593 ], [ %1598, %1654 ], [ %1598, %1652 ], [ %1598, %1639 ], [ %1632, %1609 ]
  %1688 = phi float [ %1599, %1593 ], [ %1599, %1654 ], [ %1599, %1652 ], [ %1599, %1639 ], [ %1633, %1609 ]
  %1689 = phi float [ %1034, %1593 ], [ %1034, %1654 ], [ %1034, %1652 ], [ %1034, %1639 ], [ %1624, %1609 ]
  %1690 = phi float [ %1038, %1593 ], [ %1038, %1654 ], [ %1038, %1652 ], [ %1038, %1639 ], [ %1636, %1609 ]
  %1691 = and i32 %1601, 12
  %1692 = icmp eq i32 %1691, 12
  br i1 %1692, label %1765, label %1693

; <label>:1693                                    ; preds = %1682
  %1694 = and i32 %1601, 2097184
  %1695 = icmp eq i32 %1694, 2097184
  %1696 = select i1 %1695, float %1221, float 0.000000e+00
  %1697 = and i32 %1601, 4194336
  %1698 = icmp eq i32 %1697, 4194336
  %1699 = select i1 %1698, float %1221, float 0.000000e+00
  %1700 = and i32 %1601, 8388640
  %1701 = icmp eq i32 %1700, 8388640
  %1702 = select i1 %1701, float %1221, float 0.000000e+00
  %1703 = icmp eq i32 %1691, 0
  br i1 %1703, label %1704, label %1717

; <label>:1704                                    ; preds = %1693
  %1705 = fsub fast float %1522, %1026
  %1706 = fsub fast float %1523, %1027
  %1707 = fmul fast float %1696, %1705
  %1708 = fmul fast float %1696, %1706
  %1709 = fadd fast float %1707, %1026
  %1710 = fadd fast float %1708, %1027
  %1711 = fsub fast float %1524, %1037
  %1712 = fmul fast float %1699, %1711
  %1713 = fadd fast float %1712, %1037
  %1714 = fsub fast float %1521, %1036
  %1715 = fmul fast float %1702, %1714
  %1716 = fadd fast float %1715, %1036
  br label %1765

; <label>:1717                                    ; preds = %1693
  %1718 = icmp eq i32 %1691, 4
  br i1 %1718, label %1719, label %1751

; <label>:1719                                    ; preds = %1717
  %1720 = fmul fast float %1696, %1522
  %1721 = fmul fast float %1696, %1523
  %1722 = fadd fast float %1720, %1026
  %1723 = fadd fast float %1721, %1027
  %1724 = call float @dx.op.binary.f32(i32 36, float %1037, float %1524)  ; FMin(a,b)
  %1725 = fsub fast float %1724, %1037
  %1726 = fmul fast float %1725, %1699
  %1727 = fadd fast float %1726, %1037
  %1728 = fadd fast float %1521, %1036
  %1729 = fmul fast float %1728, 0x3FF337FAE0000000
  %1730 = fmul fast float %1036, %1036
  %1731 = fmul fast float %1521, %1521
  %1732 = fadd fast float %1731, %1730
  %1733 = fmul fast float %1732, 0x3FE5152B00000000
  %1734 = fmul fast float %1036, 0xBFCC1F85E0000000
  %1735 = fmul fast float %1734, %1521
  %1736 = fadd fast float %1735, 0xBFE1363700000000
  %1737 = fadd fast float %1736, %1729
  %1738 = fsub fast float %1737, %1733
  %1739 = fmul fast float %1728, 0x3FBA6F0D00000000
  %1740 = fmul fast float %1732, 0x3FD0432880000000
  %1741 = fmul fast float %1036, 0xBFEF110800000000
  %1742 = fmul fast float %1741, %1521
  %1743 = fadd fast float %1742, 1.000000e+00
  %1744 = fsub fast float %1743, %1739
  %1745 = fadd fast float %1744, %1740
  %1746 = fdiv fast float %1738, %1745
  %1747 = call float @dx.op.unary.f32(i32 7, float %1746)  ; Saturate(value)
  %1748 = fsub fast float %1747, %1036
  %1749 = fmul fast float %1748, %1702
  %1750 = fadd fast float %1749, %1036
  br label %1765

; <label>:1751                                    ; preds = %1717
  %1752 = icmp eq i32 %1691, 8
  br i1 %1752, label %1753, label %1765

; <label>:1753                                    ; preds = %1751
  %1754 = fmul fast float %1696, %1522
  %1755 = fmul fast float %1696, %1523
  %1756 = fadd fast float %1754, %1026
  %1757 = fadd fast float %1755, %1027
  %1758 = call float @dx.op.binary.f32(i32 36, float %1037, float %1524)  ; FMin(a,b)
  %1759 = fsub fast float %1758, %1037
  %1760 = fmul fast float %1759, %1699
  %1761 = fadd fast float %1760, %1037
  %1762 = fsub fast float %1521, %1036
  %1763 = fmul fast float %1702, %1762
  %1764 = fadd fast float %1763, %1036
  br label %1765

; <label>:1765                                    ; preds = %1753, %1751, %1719, %1704, %1682, %1220, %1039, %1025
  %1766 = phi float [ %1026, %1682 ], [ %1026, %1220 ], [ %1026, %1025 ], [ %1756, %1753 ], [ %1026, %1751 ], [ %1722, %1719 ], [ %1709, %1704 ], [ %1026, %1039 ]
  %1767 = phi float [ %1027, %1682 ], [ %1027, %1220 ], [ %1027, %1025 ], [ %1757, %1753 ], [ %1027, %1751 ], [ %1723, %1719 ], [ %1710, %1704 ], [ %1027, %1039 ]
  %1768 = phi float [ %1683, %1682 ], [ %1028, %1220 ], [ %1028, %1025 ], [ %1683, %1753 ], [ %1683, %1751 ], [ %1683, %1719 ], [ %1683, %1704 ], [ %1028, %1039 ]
  %1769 = phi float [ %1684, %1682 ], [ %1029, %1220 ], [ %1029, %1025 ], [ %1684, %1753 ], [ %1684, %1751 ], [ %1684, %1719 ], [ %1684, %1704 ], [ %1029, %1039 ]
  %1770 = phi float [ %1685, %1682 ], [ %1030, %1220 ], [ %1030, %1025 ], [ %1685, %1753 ], [ %1685, %1751 ], [ %1685, %1719 ], [ %1685, %1704 ], [ %1030, %1039 ]
  %1771 = phi float [ %1686, %1682 ], [ %1031, %1220 ], [ %1031, %1025 ], [ %1686, %1753 ], [ %1686, %1751 ], [ %1686, %1719 ], [ %1686, %1704 ], [ %1031, %1039 ]
  %1772 = phi float [ %1687, %1682 ], [ %1032, %1220 ], [ %1032, %1025 ], [ %1687, %1753 ], [ %1687, %1751 ], [ %1687, %1719 ], [ %1687, %1704 ], [ %1032, %1039 ]
  %1773 = phi float [ %1688, %1682 ], [ %1033, %1220 ], [ %1033, %1025 ], [ %1688, %1753 ], [ %1688, %1751 ], [ %1688, %1719 ], [ %1688, %1704 ], [ %1033, %1039 ]
  %1774 = phi float [ %1689, %1682 ], [ %1034, %1220 ], [ %1034, %1025 ], [ %1689, %1753 ], [ %1689, %1751 ], [ %1689, %1719 ], [ %1689, %1704 ], [ %1034, %1039 ]
  %1775 = phi float [ %1036, %1682 ], [ %1036, %1220 ], [ %1036, %1025 ], [ %1764, %1753 ], [ %1036, %1751 ], [ %1750, %1719 ], [ %1716, %1704 ], [ %1036, %1039 ]
  %1776 = phi float [ %1037, %1682 ], [ %1037, %1220 ], [ %1037, %1025 ], [ %1761, %1753 ], [ %1037, %1751 ], [ %1727, %1719 ], [ %1713, %1704 ], [ %1037, %1039 ]
  %1777 = phi float [ %1690, %1682 ], [ %1038, %1220 ], [ %1038, %1025 ], [ %1690, %1753 ], [ %1690, %1751 ], [ %1690, %1719 ], [ %1690, %1704 ], [ %1038, %1039 ]
  br i1 %426, label %2504, label %1778

; <label>:1778                                    ; preds = %1765
  %1779 = icmp ult i32 %482, 3
  %1780 = add i32 %42, 56
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = add i32 %42, 60
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = or i32 %1785, %1782
  %1787 = icmp eq i32 %1786, 0
  br i1 %1787, label %2504, label %1788

; <label>:1788                                    ; preds = %1778
  %1789 = and i32 %1782, 262144
  %1790 = icmp ne i32 %1789, 0
  %1791 = select i1 %1790, float %47, float 1.000000e+00
  %1792 = select i1 %1790, float %48, float 0.000000e+00
  %1793 = select i1 %1790, float %49, float 0.000000e+00
  %1794 = select i1 %1790, float %50, float 1.000000e+00
  %1795 = select i1 %1790, float %51, float %74
  %1796 = select i1 %1790, float %52, float %75
  %1797 = add i32 %42, 316
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = lshr i32 %1799, 16
  %1801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1800)  ; LegacyF16ToF32(value)
  %1802 = fmul fast float %1801, 0x3F50624DE0000000
  %1803 = add i32 %42, 120
  %1804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %1805 = extractvalue %dx.types.ResRet.i32 %1804, 0
  %1806 = lshr i32 %1805, 16
  %1807 = and i32 %1806, 255
  %1808 = lshr i32 %1805, 24
  %1809 = add i32 %42, 324
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = and i32 %1811, 65535
  %1813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1812)  ; LegacyF16ToF32(value)
  %1814 = lshr i32 %1811, 16
  %1815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1814)  ; LegacyF16ToF32(value)
  %1816 = add i32 %42, 64
  %1817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.i32 %1817, 0
  %1819 = lshr i32 %1818, 22
  %1820 = shl nuw nsw i32 %1819, 5
  %1821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1820)  ; LegacyF16ToF32(value)
  %1822 = shl i32 %1818, 4
  %1823 = and i32 %1822, 32752
  %1824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1823)  ; LegacyF16ToF32(value)
  %1825 = lshr i32 %1818, 7
  %1826 = and i32 %1825, 32752
  %1827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1826)  ; LegacyF16ToF32(value)
  %1828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1829 = extractvalue %dx.types.CBufRet.f32 %1828, 3
  %1830 = fmul fast float %1829, 1.000000e+03
  %1831 = fmul fast float %376, %1830
  %1832 = call float @dx.op.unary.f32(i32 22, float %1831)  ; Frc(value)
  %1833 = fadd fast float %1832, %366
  %1834 = fmul fast float %377, %1830
  %1835 = call float @dx.op.unary.f32(i32 22, float %1834)  ; Frc(value)
  %1836 = fadd fast float %1835, %368
  %1837 = fmul fast float %1802, %1830
  %1838 = call float @dx.op.unary.f32(i32 22, float %1837)  ; Frc(value)
  %1839 = fmul fast float %1838, 0x401921FB60000000
  %1840 = fadd fast float %1839, %1821
  %1841 = call float @dx.op.unary.f32(i32 13, float %1840)  ; Sin(value)
  %1842 = call float @dx.op.unary.f32(i32 12, float %1840)  ; Cos(value)
  %1843 = fsub fast float -0.000000e+00, %1841
  %1844 = fadd fast float %1795, -5.000000e-01
  %1845 = fadd fast float %1796, -5.000000e-01
  %1846 = fmul fast float %1813, %1844
  %1847 = fmul fast float %1815, %1845
  %1848 = fadd fast float %1846, 5.000000e-01
  %1849 = fadd fast float %1847, 5.000000e-01
  %1850 = fmul fast float %1824, %1848
  %1851 = fmul fast float %1827, %1849
  %1852 = fmul fast float %1842, %1850
  %1853 = call float @dx.op.tertiary.f32(i32 46, float %1843, float %1851, float %1852)  ; FMad(a,b,c)
  %1854 = fmul fast float %1841, %1850
  %1855 = call float @dx.op.tertiary.f32(i32 46, float %1842, float %1851, float %1854)  ; FMad(a,b,c)
  %1856 = fadd fast float %1833, %1853
  %1857 = fadd fast float %1836, %1855
  %1858 = icmp ugt i32 %1807, 1
  %1859 = icmp ugt i32 %1805, 33554431
  %1860 = or i1 %1859, %1858
  br i1 %1860, label %1861, label %1886

; <label>:1861                                    ; preds = %1788
  %1862 = add i32 %42, 260
  %1863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1862, i32 undef)  ; BufferLoad(srv,index,wot)
  %1864 = extractvalue %dx.types.ResRet.i32 %1863, 0
  %1865 = lshr i32 %1864, 16
  %1866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1865)  ; LegacyF16ToF32(value)
  %1867 = fmul fast float %1829, %1866
  %1868 = call float @dx.op.unary.f32(i32 22, float %1867)  ; Frc(value)
  %1869 = mul nuw nsw i32 %1807, %1808
  %1870 = uitofp i32 %1869 to float
  %1871 = fmul fast float %1868, %1870
  %1872 = call float @dx.op.unary.f32(i32 27, float %1871)  ; Round_ni(value)
  %1873 = fptoui float %1872 to i32
  %1874 = urem i32 %1873, %1807
  %1875 = udiv i32 %1873, %1808
  %1876 = call float @dx.op.unary.f32(i32 22, float %1856)  ; Frc(value)
  %1877 = call float @dx.op.unary.f32(i32 22, float %1857)  ; Frc(value)
  %1878 = uitofp i32 %1874 to float
  %1879 = uitofp i32 %1875 to float
  %1880 = fadd fast float %1876, %1878
  %1881 = fadd fast float %1877, %1879
  %1882 = uitofp i32 %1807 to float
  %1883 = uitofp i32 %1808 to float
  %1884 = fdiv fast float %1880, %1882
  %1885 = fdiv fast float %1881, %1883
  br label %1886

; <label>:1886                                    ; preds = %1861, %1788
  %1887 = phi float [ %1884, %1861 ], [ %1856, %1788 ]
  %1888 = phi float [ %1885, %1861 ], [ %1857, %1788 ]
  %1889 = and i32 %1782, 256
  %1890 = icmp eq i32 %1889, 0
  br i1 %1890, label %1937, label %1891

; <label>:1891                                    ; preds = %1886
  %1892 = add i32 %42, 432
  %1893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = add i32 %1894, 0
  %1896 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1895, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1897 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1896, %dx.types.Handle %89, float %1887, float %1888, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1898 = extractvalue %dx.types.ResRet.f32 %1897, 0
  %1899 = add i32 %42, 132
  %1900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.i32 %1900, 0
  %1902 = shl i32 %1901, 4
  %1903 = and i32 %1902, 32752
  %1904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1903)  ; LegacyF16ToF32(value)
  %1905 = lshr i32 %1901, 7
  %1906 = and i32 %1905, 32752
  %1907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1906)  ; LegacyF16ToF32(value)
  %1908 = fsub fast float 1.000000e+00, %478
  %1909 = call float @dx.op.binary.f32(i32 35, float %1908, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1910 = bitcast float %478 to i32
  %1911 = sitofp i32 %1910 to float
  %1912 = fadd fast float %1911, 0xC1CFBF8940000000
  %1913 = fmul fast float %1907, %1912
  %1914 = fadd fast float %1913, 0x41CFBF8940000000
  %1915 = fptosi float %1914 to i32
  %1916 = bitcast i32 %1915 to float
  %1917 = bitcast float %1909 to i32
  %1918 = sitofp i32 %1917 to float
  %1919 = fadd fast float %1918, 0xC1CFBF8940000000
  %1920 = fmul fast float %1919, %1907
  %1921 = fadd fast float %1920, 0x41CFBF8940000000
  %1922 = fptosi float %1921 to i32
  %1923 = bitcast i32 %1922 to float
  %1924 = fmul fast float %1916, %1904
  %1925 = fmul fast float %1923, %1904
  %1926 = fsub fast float %1909, %1924
  %1927 = fadd fast float %1925, %1909
  %1928 = call float @dx.op.unary.f32(i32 7, float %1926)  ; Saturate(value)
  %1929 = call float @dx.op.unary.f32(i32 7, float %1927)  ; Saturate(value)
  %1930 = fsub fast float %1898, %1928
  %1931 = fsub fast float %1929, %1928
  %1932 = bitcast float %1931 to i32
  %1933 = sub nsw i32 2129859010, %1932
  %1934 = bitcast i32 %1933 to float
  %1935 = fmul fast float %1934, %1930
  %1936 = call float @dx.op.unary.f32(i32 7, float %1935)  ; Saturate(value)
  br label %1937

; <label>:1937                                    ; preds = %1891, %1886
  %1938 = phi float [ %1936, %1891 ], [ %478, %1886 ]
  %1939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1940 = extractvalue %dx.types.ResRet.i32 %1939, 0
  %1941 = and i32 %1940, 128
  %1942 = icmp eq i32 %1941, 0
  br i1 %1942, label %1959, label %1943

; <label>:1943                                    ; preds = %1937
  %1944 = add i32 %42, 416
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = add i32 %1946, 0
  %1948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1949 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1948, %dx.types.Handle %89, float %1887, float %1888, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1950 = extractvalue %dx.types.ResRet.f32 %1949, 0
  %1951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1952 = extractvalue %dx.types.ResRet.i32 %1951, 0
  %1953 = and i32 %1952, 524288
  %1954 = icmp ne i32 %1953, 0
  %1955 = fcmp fast ogt float %1950, 0x3FE0101020000000
  %1956 = select i1 %1955, float 1.000000e+00, float 0.000000e+00
  %1957 = select i1 %1954, float %1956, float %1950
  %1958 = fmul fast float %1957, %1938
  br label %1959

; <label>:1959                                    ; preds = %1943, %1937
  %1960 = phi float [ %1958, %1943 ], [ %1938, %1937 ]
  %1961 = fcmp fast ult float %1960, 0x3F70101020000000
  br i1 %1961, label %2504, label %1962

; <label>:1962                                    ; preds = %1959
  %1963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1964 = extractvalue %dx.types.ResRet.i32 %1963, 0
  %1965 = and i32 %1964, 16
  %1966 = icmp eq i32 %1965, 0
  br i1 %1966, label %2165, label %1967

; <label>:1967                                    ; preds = %1962
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = add i32 %42, 368
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = add i32 %1972, 0
  %1974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1973, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1975 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1974, %dx.types.Handle %88, float %1887, float %1888, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = extractvalue %dx.types.ResRet.f32 %1975, 1
  %1978 = extractvalue %dx.types.ResRet.f32 %1975, 2
  %1979 = extractvalue %dx.types.ResRet.f32 %1975, 3
  %1980 = and i32 %1969, 255
  %1981 = uitofp i32 %1980 to float
  %1982 = lshr i32 %1969, 8
  %1983 = and i32 %1982, 255
  %1984 = uitofp i32 %1983 to float
  %1985 = fmul fast float %1979, %1981
  %1986 = fadd fast float %1985, %1984
  %1987 = fmul fast float %1986, 0x3F70101000000000
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = and i32 %1989, 512
  %1991 = icmp eq i32 %1990, 0
  br i1 %1991, label %2000, label %1992

; <label>:1992                                    ; preds = %1967
  %1993 = add i32 %42, 448
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = add i32 %1995, 0
  %1997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1996, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1998 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1997, %dx.types.Handle %89, float %1887, float %1888, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1999 = extractvalue %dx.types.ResRet.f32 %1998, 0
  br label %2000

; <label>:2000                                    ; preds = %1992, %1967
  %2001 = phi float [ %1999, %1992 ], [ 1.000000e+00, %1967 ]
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = and i32 %2003, 33554432
  %2005 = icmp eq i32 %2004, 0
  br i1 %2005, label %2112, label %2006

; <label>:2006                                    ; preds = %2000
  %2007 = add i32 %42, 256
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = and i32 %2009, 65535
  %2011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2010)  ; LegacyF16ToF32(value)
  %2012 = lshr i32 %2009, 16
  %2013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2012)  ; LegacyF16ToF32(value)
  %2014 = add i32 %42, 260
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2014, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = and i32 %2016, 65535
  %2018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2017)  ; LegacyF16ToF32(value)
  %2019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.i32 %2019, 0
  %2021 = lshr i32 %2020, 24
  %2022 = uitofp i32 %2021 to float
  %2023 = fmul fast float %2022, 0x3F70101020000000
  %2024 = and i32 %2020, 255
  %2025 = uitofp i32 %2024 to float
  %2026 = fmul fast float %2025, 0x3F70101020000000
  %2027 = lshr i32 %2020, 8
  %2028 = and i32 %2027, 255
  %2029 = uitofp i32 %2028 to float
  %2030 = fmul fast float %2029, 0x3F70101020000000
  %2031 = lshr i32 %2020, 16
  %2032 = and i32 %2031, 255
  %2033 = uitofp i32 %2032 to float
  %2034 = fmul fast float %2033, 0x3F70101020000000
  %2035 = add i32 %42, 252
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2035, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = lshr i32 %2037, 24
  %2039 = uitofp i32 %2038 to float
  %2040 = fmul fast float %2039, 0x3F70101020000000
  %2041 = and i32 %2037, 255
  %2042 = uitofp i32 %2041 to float
  %2043 = fmul fast float %2042, 0x3F70101020000000
  %2044 = lshr i32 %2037, 8
  %2045 = and i32 %2044, 255
  %2046 = uitofp i32 %2045 to float
  %2047 = fmul fast float %2046, 0x3F70101020000000
  %2048 = lshr i32 %2037, 16
  %2049 = and i32 %2048, 255
  %2050 = uitofp i32 %2049 to float
  %2051 = fmul fast float %2050, 0x3F70101020000000
  %2052 = bitcast float %1976 to i32
  %2053 = ashr i32 %2052, 1
  %2054 = sub nsw i32 1597463174, %2053
  %2055 = bitcast i32 %2054 to float
  %2056 = fmul fast float %1976, 5.000000e-01
  %2057 = fmul fast float %2055, %2055
  %2058 = fmul fast float %2057, %2056
  %2059 = fsub fast float 1.500000e+00, %2058
  %2060 = fmul fast float %2055, %1976
  %2061 = fmul fast float %2060, %2059
  %2062 = bitcast float %1977 to i32
  %2063 = ashr i32 %2062, 1
  %2064 = sub nsw i32 1597463174, %2063
  %2065 = bitcast i32 %2064 to float
  %2066 = fmul fast float %1977, 5.000000e-01
  %2067 = fmul fast float %2065, %2065
  %2068 = fmul fast float %2067, %2066
  %2069 = fsub fast float 1.500000e+00, %2068
  %2070 = fmul fast float %2065, %1977
  %2071 = fmul fast float %2070, %2069
  %2072 = bitcast float %1978 to i32
  %2073 = ashr i32 %2072, 1
  %2074 = sub nsw i32 1597463174, %2073
  %2075 = bitcast i32 %2074 to float
  %2076 = fmul fast float %1978, 5.000000e-01
  %2077 = fmul fast float %2075, %2075
  %2078 = fmul fast float %2077, %2076
  %2079 = fsub fast float 1.500000e+00, %2078
  %2080 = fmul fast float %2075, %1978
  %2081 = fmul fast float %2080, %2079
  %2082 = fsub fast float %2061, %2043
  %2083 = fsub fast float %2071, %2047
  %2084 = fsub fast float %2081, %2051
  %2085 = fmul fast float %2082, %2011
  %2086 = fmul fast float %2083, %2013
  %2087 = fmul fast float %2084, %2018
  %2088 = fadd fast float %2085, %2026
  %2089 = fadd fast float %2086, %2030
  %2090 = fadd fast float %2087, %2034
  %2091 = call float @dx.op.unary.f32(i32 7, float %2088)  ; Saturate(value)
  %2092 = call float @dx.op.unary.f32(i32 7, float %2089)  ; Saturate(value)
  %2093 = call float @dx.op.unary.f32(i32 7, float %2090)  ; Saturate(value)
  %2094 = fmul fast float %2091, %2091
  %2095 = fmul fast float %2092, %2092
  %2096 = fmul fast float %2093, %2093
  %2097 = fsub fast float %2094, %1976
  %2098 = fsub fast float %2095, %1977
  %2099 = fsub fast float %2096, %1978
  %2100 = fmul fast float %2097, %2001
  %2101 = fmul fast float %2098, %2001
  %2102 = fmul fast float %2099, %2001
  %2103 = fadd fast float %2100, %1976
  %2104 = fadd fast float %2101, %1977
  %2105 = fadd fast float %2102, %1978
  %2106 = fadd fast float %2023, %1987
  %2107 = fsub fast float %2106, %2040
  %2108 = call float @dx.op.unary.f32(i32 7, float %2107)  ; Saturate(value)
  %2109 = fsub fast float %2108, %1987
  %2110 = fmul fast float %2109, %2001
  %2111 = fadd fast float %2110, %1987
  br label %2165

; <label>:2112                                    ; preds = %2000
  %2113 = and i32 %2003, 134217728
  %2114 = icmp eq i32 %2113, 0
  br i1 %2114, label %2149, label %2115

; <label>:2115                                    ; preds = %2112
  %2116 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %2117 = call float @dx.op.unary.f32(i32 24, float %357)  ; Sqrt(value)
  %2118 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %2119 = fadd fast float %2116, -5.000000e-01
  %2120 = fadd fast float %2117, -5.000000e-01
  %2121 = fadd fast float %2118, -5.000000e-01
  %2122 = fmul fast float %2119, %2001
  %2123 = fmul fast float %2120, %2001
  %2124 = fmul fast float %2121, %2001
  %2125 = fadd fast float %2122, 5.000000e-01
  %2126 = fadd fast float %2123, 5.000000e-01
  %2127 = fadd fast float %2124, 5.000000e-01
  %2128 = call float @dx.op.unary.f32(i32 24, float %1976)  ; Sqrt(value)
  %2129 = call float @dx.op.unary.f32(i32 24, float %1977)  ; Sqrt(value)
  %2130 = call float @dx.op.unary.f32(i32 24, float %1978)  ; Sqrt(value)
  %2131 = fmul fast float %2125, 2.000000e+00
  %2132 = fsub fast float 1.000000e+00, %2131
  %2133 = fmul fast float %2132, %2128
  %2134 = fadd fast float %2133, %2131
  %2135 = fmul fast float %2134, %2128
  %2136 = fmul fast float %2126, 2.000000e+00
  %2137 = fsub fast float 1.000000e+00, %2136
  %2138 = fmul fast float %2137, %2129
  %2139 = fadd fast float %2138, %2136
  %2140 = fmul fast float %2139, %2129
  %2141 = fmul fast float %2127, 2.000000e+00
  %2142 = fsub fast float 1.000000e+00, %2141
  %2143 = fmul fast float %2142, %2130
  %2144 = fadd fast float %2143, %2141
  %2145 = fmul fast float %2144, %2130
  %2146 = fmul fast float %2135, %2135
  %2147 = fmul fast float %2140, %2140
  %2148 = fmul fast float %2145, %2145
  br label %2165

; <label>:2149                                    ; preds = %2112
  %2150 = fmul fast float %353, %353
  %2151 = fmul fast float %357, %357
  %2152 = fmul fast float %361, %361
  %2153 = fadd fast float %2150, -1.000000e+00
  %2154 = fadd fast float %2151, -1.000000e+00
  %2155 = fadd fast float %2152, -1.000000e+00
  %2156 = fmul fast float %2001, %2153
  %2157 = fmul fast float %2001, %2154
  %2158 = fmul fast float %2001, %2155
  %2159 = fadd fast float %2156, 1.000000e+00
  %2160 = fadd fast float %2157, 1.000000e+00
  %2161 = fadd fast float %2158, 1.000000e+00
  %2162 = fmul fast float %2159, %1976
  %2163 = fmul fast float %2160, %1977
  %2164 = fmul fast float %2161, %1978
  br label %2165

; <label>:2165                                    ; preds = %2149, %2115, %2006, %1962
  %2166 = phi float [ %2111, %2006 ], [ %1987, %2115 ], [ %1987, %2149 ], [ 0x3FA23C0BE0000000, %1962 ]
  %2167 = phi float [ %2103, %2006 ], [ %2146, %2115 ], [ %2162, %2149 ], [ 1.000000e+00, %1962 ]
  %2168 = phi float [ %2104, %2006 ], [ %2147, %2115 ], [ %2163, %2149 ], [ 1.000000e+00, %1962 ]
  %2169 = phi float [ %2105, %2006 ], [ %2148, %2115 ], [ %2164, %2149 ], [ 1.000000e+00, %1962 ]
  %2170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2171 = extractvalue %dx.types.CBufRet.i32 %2170, 1
  %2172 = and i32 %2171, 1
  %2173 = icmp ne i32 %2172, 0
  %2174 = add i32 %42, 356
  %2175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2174, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.i32 %2175, 0
  %2177 = and i32 %2176, 32
  %2178 = icmp ne i32 %2177, 0
  %2179 = and i1 %2173, %2178
  %2180 = select i1 %2179, float 1.000000e+00, float %2167
  %2181 = select i1 %2179, float 0x3FD3333340000000, float %2168
  %2182 = select i1 %2179, float 0x3FD3333340000000, float %2169
  %2183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2184 = extractvalue %dx.types.ResRet.i32 %2183, 0
  %2185 = and i32 %2184, 32
  %2186 = icmp eq i32 %2185, 0
  br i1 %2186, label %2259, label %2187

; <label>:2187                                    ; preds = %2165
  %2188 = add i32 %42, 124
  %2189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2188, i32 undef)  ; BufferLoad(srv,index,wot)
  %2190 = extractvalue %dx.types.ResRet.i32 %2189, 0
  %2191 = add i32 %42, 384
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2191, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = add i32 %2193, 0
  %2195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2194, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2195, %dx.types.Handle %88, float %1887, float %1888, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2197 = extractvalue %dx.types.ResRet.f32 %2196, 0
  %2198 = extractvalue %dx.types.ResRet.f32 %2196, 1
  %2199 = extractvalue %dx.types.ResRet.f32 %2196, 2
  %2200 = extractvalue %dx.types.ResRet.f32 %2196, 3
  %2201 = and i32 %2190, 255
  %2202 = uitofp i32 %2201 to float
  %2203 = lshr i32 %2190, 8
  %2204 = and i32 %2203, 255
  %2205 = uitofp i32 %2204 to float
  %2206 = lshr i32 %2190, 16
  %2207 = and i32 %2206, 255
  %2208 = uitofp i32 %2207 to float
  %2209 = fmul fast float %2208, 0x3F70101000000000
  %2210 = fmul fast float %2197, %2202
  %2211 = fadd fast float %2210, %2205
  %2212 = fmul fast float %2211, 0x3F70101000000000
  %2213 = fadd fast float %2198, -5.000000e-01
  %2214 = fadd fast float %2200, -5.000000e-01
  %2215 = fmul fast float %2213, %2209
  %2216 = fmul fast float %2214, %2209
  %2217 = fadd fast float %2215, 5.000000e-01
  %2218 = fadd fast float %2216, 5.000000e-01
  %2219 = fmul fast float %2217, 2.000000e+00
  %2220 = fadd fast float %2219, -1.000000e+00
  %2221 = fmul fast float %2218, 2.000000e+00
  %2222 = fadd fast float %2221, -1.000000e+00
  %2223 = fadd fast float %2220, %2222
  %2224 = fmul fast float %2223, 5.000000e-01
  %2225 = fsub fast float %2220, %2222
  %2226 = fmul fast float %2225, 5.000000e-01
  %2227 = call float @dx.op.unary.f32(i32 6, float %2224)  ; FAbs(value)
  %2228 = fsub fast float 1.000000e+00, %2227
  %2229 = call float @dx.op.unary.f32(i32 6, float %2226)  ; FAbs(value)
  %2230 = fsub fast float %2228, %2229
  %2231 = call float @dx.op.dot3.f32(i32 55, float %2224, float %2226, float %2230, float %2224, float %2226, float %2230)  ; Dot3(ax,ay,az,bx,by,bz)
  %2232 = call float @dx.op.unary.f32(i32 25, float %2231)  ; Rsqrt(value)
  %2233 = fmul fast float %2224, %2232
  %2234 = fmul fast float %2226, %2232
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = and i32 %2236, 67108864
  %2238 = icmp eq i32 %2237, 0
  br i1 %2238, label %2255, label %2239

; <label>:2239                                    ; preds = %2187
  %2240 = add i32 %42, 312
  %2241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2242 = extractvalue %dx.types.ResRet.i32 %2241, 0
  %2243 = and i32 %2242, 65535
  %2244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2243)  ; LegacyF16ToF32(value)
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = and i32 %2246, 65535
  %2248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2247)  ; LegacyF16ToF32(value)
  %2249 = lshr i32 %2242, 16
  %2250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2249)  ; LegacyF16ToF32(value)
  %2251 = fsub fast float %2212, %2250
  %2252 = fmul fast float %2251, %2244
  %2253 = fadd fast float %2252, %2248
  %2254 = call float @dx.op.unary.f32(i32 7, float %2253)  ; Saturate(value)
  br label %2255

; <label>:2255                                    ; preds = %2239, %2187
  %2256 = phi float [ %2254, %2239 ], [ %2212, %2187 ]
  %2257 = call float @dx.op.dot2.f32(i32 54, float %2233, float %2234, float %1791, float %1792)  ; Dot2(ax,ay,bx,by)
  %2258 = call float @dx.op.dot2.f32(i32 54, float %2233, float %2234, float %1793, float %1794)  ; Dot2(ax,ay,bx,by)
  br label %2259

; <label>:2259                                    ; preds = %2255, %2165
  %2260 = phi float [ %2256, %2255 ], [ 0x3FD6666660000000, %2165 ]
  %2261 = phi float [ %2257, %2255 ], [ 0.000000e+00, %2165 ]
  %2262 = phi float [ %2258, %2255 ], [ 0.000000e+00, %2165 ]
  %2263 = phi float [ %2199, %2255 ], [ 1.000000e+00, %2165 ]
  %2264 = add i32 %42, 192
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = lshr i32 %2266, 22
  %2268 = shl nuw nsw i32 %2267, 5
  %2269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2268)  ; LegacyF16ToF32(value)
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = and i32 %2271, 64
  %2273 = icmp eq i32 %2272, 0
  br i1 %2273, label %2307, label %2274

; <label>:2274                                    ; preds = %2259
  %2275 = add i32 %42, 400
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2275, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = add i32 %2277, 0
  %2279 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2278, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = and i32 %2281, 131072
  %2283 = icmp eq i32 %2282, 0
  %2284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2279, %dx.types.Handle %88, float %1887, float %1888, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2285 = extractvalue %dx.types.ResRet.f32 %2284, 0
  %2286 = extractvalue %dx.types.ResRet.f32 %2284, 1
  %2287 = extractvalue %dx.types.ResRet.f32 %2284, 2
  %2288 = fmul fast float %2285, %341
  %2289 = fmul fast float %2286, %344
  %2290 = fmul fast float %2287, %347
  br i1 %2283, label %2297, label %2291

; <label>:2291                                    ; preds = %2274
  %2292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2292, 0
  %2294 = fmul fast float %2293, %2288
  %2295 = fmul fast float %2293, %2289
  %2296 = fmul fast float %2293, %2290
  br label %2297

; <label>:2297                                    ; preds = %2291, %2274
  %2298 = phi float [ %2294, %2291 ], [ %2288, %2274 ]
  %2299 = phi float [ %2295, %2291 ], [ %2289, %2274 ]
  %2300 = phi float [ %2296, %2291 ], [ %2290, %2274 ]
  %2301 = fmul fast float %2298, %2269
  %2302 = select i1 %240, float %2301, float %2298
  %2303 = call float @dx.op.dot3.f32(i32 55, float %2302, float %2299, float %2300, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2304 = select i1 %240, float 0.000000e+00, float %2298
  %2305 = select i1 %240, float %2303, float %2299
  %2306 = select i1 %240, float 0.000000e+00, float %2300
  br label %2307

; <label>:2307                                    ; preds = %2297, %2259
  %2308 = phi float [ %2304, %2297 ], [ 0.000000e+00, %2259 ]
  %2309 = phi float [ %2305, %2297 ], [ 0.000000e+00, %2259 ]
  %2310 = phi float [ %2306, %2297 ], [ 0.000000e+00, %2259 ]
  %2311 = add i32 %42, 128
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = and i32 %2313, 255
  %2315 = uitofp i32 %2314 to float
  %2316 = lshr i32 %2313, 8
  %2317 = and i32 %2316, 255
  %2318 = uitofp i32 %2317 to float
  %2319 = call float @dx.op.dot3.f32(i32 55, float %2180, float %2181, float %2182, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2320 = fmul fast float %2318, %2319
  %2321 = fadd fast float %2320, %2315
  %2322 = fmul fast float %2321, 0x3F70101020000000
  %2323 = call float @dx.op.unary.f32(i32 7, float %2322)  ; Saturate(value)
  br i1 %1779, label %2324, label %2332

; <label>:2324                                    ; preds = %2307
  %2325 = fsub fast float 1.000000e+00, %1960
  %2326 = fmul fast float %2325, %1768
  %2327 = fmul fast float %2325, %1769
  %2328 = fmul fast float %2325, %1770
  %2329 = fmul fast float %2325, %1771
  %2330 = fmul fast float %2325, %1772
  %2331 = fmul fast float %2325, %1773
  br label %2332

; <label>:2332                                    ; preds = %2324, %2307
  %2333 = phi float [ %2326, %2324 ], [ %1768, %2307 ]
  %2334 = phi float [ %2327, %2324 ], [ %1769, %2307 ]
  %2335 = phi float [ %2328, %2324 ], [ %1770, %2307 ]
  %2336 = phi float [ %2329, %2324 ], [ %1771, %2307 ]
  %2337 = phi float [ %2330, %2324 ], [ %1772, %2307 ]
  %2338 = phi float [ %2331, %2324 ], [ %1773, %2307 ]
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = and i32 %2340, 3
  %2342 = icmp eq i32 %2341, 3
  br i1 %2342, label %2421, label %2343

; <label>:2343                                    ; preds = %2332
  %2344 = and i32 %2340, 16
  %2345 = icmp ne i32 %2344, 0
  %2346 = select i1 %2345, float %1960, float 0.000000e+00
  %2347 = icmp eq i32 %2341, 0
  br i1 %2347, label %2348, label %2376

; <label>:2348                                    ; preds = %2343
  %2349 = and i32 %2340, 64
  %2350 = icmp ne i32 %2349, 0
  %2351 = select i1 %2350, float %1960, float 0.000000e+00
  %2352 = fsub fast float %2180, %2333
  %2353 = fsub fast float %2181, %2334
  %2354 = fsub fast float %2182, %2335
  %2355 = fmul fast float %2346, %2352
  %2356 = fmul fast float %2346, %2353
  %2357 = fmul fast float %2346, %2354
  %2358 = fadd fast float %2355, %2333
  %2359 = fadd fast float %2356, %2334
  %2360 = fadd fast float %2357, %2335
  %2361 = fsub fast float %2166, %1774
  %2362 = fmul fast float %2346, %2361
  %2363 = fadd fast float %2362, %1774
  %2364 = fsub fast float %2308, %2336
  %2365 = fsub fast float %2309, %2337
  %2366 = fsub fast float %2310, %2338
  %2367 = fmul fast float %2351, %2364
  %2368 = fmul fast float %2351, %2365
  %2369 = fmul fast float %2351, %2366
  %2370 = fadd fast float %2367, %2336
  %2371 = fadd fast float %2368, %2337
  %2372 = fadd fast float %2369, %2338
  %2373 = fsub fast float %2323, %1777
  %2374 = fmul fast float %2346, %2373
  %2375 = fadd fast float %2374, %1777
  br label %2421

; <label>:2376                                    ; preds = %2343
  %2377 = icmp eq i32 %2341, 1
  br i1 %2377, label %2378, label %2391

; <label>:2378                                    ; preds = %2376
  %2379 = fadd fast float %2180, -1.000000e+00
  %2380 = fadd fast float %2181, -1.000000e+00
  %2381 = fadd fast float %2182, -1.000000e+00
  %2382 = fmul fast float %2346, %2379
  %2383 = fmul fast float %2346, %2380
  %2384 = fmul fast float %2346, %2381
  %2385 = fadd fast float %2382, 1.000000e+00
  %2386 = fadd fast float %2383, 1.000000e+00
  %2387 = fadd fast float %2384, 1.000000e+00
  %2388 = fmul fast float %2385, %2333
  %2389 = fmul fast float %2386, %2334
  %2390 = fmul fast float %2387, %2335
  br label %2421

; <label>:2391                                    ; preds = %2376
  %2392 = icmp eq i32 %2341, 2
  br i1 %2392, label %2393, label %2421

; <label>:2393                                    ; preds = %2391
  %2394 = call float @dx.op.unary.f32(i32 24, float %2180)  ; Sqrt(value)
  %2395 = call float @dx.op.unary.f32(i32 24, float %2181)  ; Sqrt(value)
  %2396 = call float @dx.op.unary.f32(i32 24, float %2182)  ; Sqrt(value)
  %2397 = fadd fast float %2394, -5.000000e-01
  %2398 = fadd fast float %2395, -5.000000e-01
  %2399 = fadd fast float %2396, -5.000000e-01
  %2400 = fmul fast float %2397, %2346
  %2401 = fmul fast float %2398, %2346
  %2402 = fmul fast float %2399, %2346
  %2403 = fadd fast float %2400, 5.000000e-01
  %2404 = fadd fast float %2401, 5.000000e-01
  %2405 = fadd fast float %2402, 5.000000e-01
  %2406 = fmul fast float %2403, 2.000000e+00
  %2407 = fsub fast float 1.000000e+00, %2406
  %2408 = fmul fast float %2407, %2333
  %2409 = fadd fast float %2408, %2406
  %2410 = fmul fast float %2409, %2333
  %2411 = fmul fast float %2404, 2.000000e+00
  %2412 = fsub fast float 1.000000e+00, %2411
  %2413 = fmul fast float %2412, %2334
  %2414 = fadd fast float %2413, %2411
  %2415 = fmul fast float %2414, %2334
  %2416 = fmul fast float %2405, 2.000000e+00
  %2417 = fsub fast float 1.000000e+00, %2416
  %2418 = fmul fast float %2417, %2335
  %2419 = fadd fast float %2418, %2416
  %2420 = fmul fast float %2419, %2335
  br label %2421

; <label>:2421                                    ; preds = %2393, %2391, %2378, %2348, %2332
  %2422 = phi float [ %2333, %2332 ], [ %2410, %2393 ], [ %2333, %2391 ], [ %2388, %2378 ], [ %2358, %2348 ]
  %2423 = phi float [ %2334, %2332 ], [ %2415, %2393 ], [ %2334, %2391 ], [ %2389, %2378 ], [ %2359, %2348 ]
  %2424 = phi float [ %2335, %2332 ], [ %2420, %2393 ], [ %2335, %2391 ], [ %2390, %2378 ], [ %2360, %2348 ]
  %2425 = phi float [ %2336, %2332 ], [ %2336, %2393 ], [ %2336, %2391 ], [ %2336, %2378 ], [ %2370, %2348 ]
  %2426 = phi float [ %2337, %2332 ], [ %2337, %2393 ], [ %2337, %2391 ], [ %2337, %2378 ], [ %2371, %2348 ]
  %2427 = phi float [ %2338, %2332 ], [ %2338, %2393 ], [ %2338, %2391 ], [ %2338, %2378 ], [ %2372, %2348 ]
  %2428 = phi float [ %1774, %2332 ], [ %1774, %2393 ], [ %1774, %2391 ], [ %1774, %2378 ], [ %2363, %2348 ]
  %2429 = phi float [ %1777, %2332 ], [ %1777, %2393 ], [ %1777, %2391 ], [ %1777, %2378 ], [ %2375, %2348 ]
  %2430 = and i32 %2340, 12
  %2431 = icmp eq i32 %2430, 12
  br i1 %2431, label %2504, label %2432

; <label>:2432                                    ; preds = %2421
  %2433 = and i32 %2340, 2097184
  %2434 = icmp eq i32 %2433, 2097184
  %2435 = select i1 %2434, float %1960, float 0.000000e+00
  %2436 = and i32 %2340, 4194336
  %2437 = icmp eq i32 %2436, 4194336
  %2438 = select i1 %2437, float %1960, float 0.000000e+00
  %2439 = and i32 %2340, 8388640
  %2440 = icmp eq i32 %2439, 8388640
  %2441 = select i1 %2440, float %1960, float 0.000000e+00
  %2442 = icmp eq i32 %2430, 0
  br i1 %2442, label %2443, label %2456

; <label>:2443                                    ; preds = %2432
  %2444 = fsub fast float %2261, %1766
  %2445 = fsub fast float %2262, %1767
  %2446 = fmul fast float %2435, %2444
  %2447 = fmul fast float %2435, %2445
  %2448 = fadd fast float %2446, %1766
  %2449 = fadd fast float %2447, %1767
  %2450 = fsub fast float %2263, %1776
  %2451 = fmul fast float %2438, %2450
  %2452 = fadd fast float %2451, %1776
  %2453 = fsub fast float %2260, %1775
  %2454 = fmul fast float %2441, %2453
  %2455 = fadd fast float %2454, %1775
  br label %2504

; <label>:2456                                    ; preds = %2432
  %2457 = icmp eq i32 %2430, 4
  br i1 %2457, label %2458, label %2490

; <label>:2458                                    ; preds = %2456
  %2459 = fmul fast float %2435, %2261
  %2460 = fmul fast float %2435, %2262
  %2461 = fadd fast float %2459, %1766
  %2462 = fadd fast float %2460, %1767
  %2463 = call float @dx.op.binary.f32(i32 36, float %1776, float %2263)  ; FMin(a,b)
  %2464 = fsub fast float %2463, %1776
  %2465 = fmul fast float %2464, %2438
  %2466 = fadd fast float %2465, %1776
  %2467 = fadd fast float %2260, %1775
  %2468 = fmul fast float %2467, 0x3FF337FAE0000000
  %2469 = fmul fast float %1775, %1775
  %2470 = fmul fast float %2260, %2260
  %2471 = fadd fast float %2470, %2469
  %2472 = fmul fast float %2471, 0x3FE5152B00000000
  %2473 = fmul fast float %1775, 0xBFCC1F85E0000000
  %2474 = fmul fast float %2473, %2260
  %2475 = fadd fast float %2474, 0xBFE1363700000000
  %2476 = fadd fast float %2475, %2468
  %2477 = fsub fast float %2476, %2472
  %2478 = fmul fast float %2467, 0x3FBA6F0D00000000
  %2479 = fmul fast float %2471, 0x3FD0432880000000
  %2480 = fmul fast float %1775, 0xBFEF110800000000
  %2481 = fmul fast float %2480, %2260
  %2482 = fadd fast float %2481, 1.000000e+00
  %2483 = fsub fast float %2482, %2478
  %2484 = fadd fast float %2483, %2479
  %2485 = fdiv fast float %2477, %2484
  %2486 = call float @dx.op.unary.f32(i32 7, float %2485)  ; Saturate(value)
  %2487 = fsub fast float %2486, %1775
  %2488 = fmul fast float %2487, %2441
  %2489 = fadd fast float %2488, %1775
  br label %2504

; <label>:2490                                    ; preds = %2456
  %2491 = icmp eq i32 %2430, 8
  br i1 %2491, label %2492, label %2504

; <label>:2492                                    ; preds = %2490
  %2493 = fmul fast float %2435, %2261
  %2494 = fmul fast float %2435, %2262
  %2495 = fadd fast float %2493, %1766
  %2496 = fadd fast float %2494, %1767
  %2497 = call float @dx.op.binary.f32(i32 36, float %1776, float %2263)  ; FMin(a,b)
  %2498 = fsub fast float %2497, %1776
  %2499 = fmul fast float %2498, %2438
  %2500 = fadd fast float %2499, %1776
  %2501 = fsub fast float %2260, %1775
  %2502 = fmul fast float %2441, %2501
  %2503 = fadd fast float %2502, %1775
  br label %2504

; <label>:2504                                    ; preds = %2492, %2490, %2458, %2443, %2421, %1959, %1778, %1765
  %2505 = phi float [ %1766, %2421 ], [ %1766, %1959 ], [ %1766, %1765 ], [ %2495, %2492 ], [ %1766, %2490 ], [ %2461, %2458 ], [ %2448, %2443 ], [ %1766, %1778 ]
  %2506 = phi float [ %1767, %2421 ], [ %1767, %1959 ], [ %1767, %1765 ], [ %2496, %2492 ], [ %1767, %2490 ], [ %2462, %2458 ], [ %2449, %2443 ], [ %1767, %1778 ]
  %2507 = phi float [ %2422, %2421 ], [ %1768, %1959 ], [ %1768, %1765 ], [ %2422, %2492 ], [ %2422, %2490 ], [ %2422, %2458 ], [ %2422, %2443 ], [ %1768, %1778 ]
  %2508 = phi float [ %2423, %2421 ], [ %1769, %1959 ], [ %1769, %1765 ], [ %2423, %2492 ], [ %2423, %2490 ], [ %2423, %2458 ], [ %2423, %2443 ], [ %1769, %1778 ]
  %2509 = phi float [ %2424, %2421 ], [ %1770, %1959 ], [ %1770, %1765 ], [ %2424, %2492 ], [ %2424, %2490 ], [ %2424, %2458 ], [ %2424, %2443 ], [ %1770, %1778 ]
  %2510 = phi float [ %2425, %2421 ], [ %1771, %1959 ], [ %1771, %1765 ], [ %2425, %2492 ], [ %2425, %2490 ], [ %2425, %2458 ], [ %2425, %2443 ], [ %1771, %1778 ]
  %2511 = phi float [ %2426, %2421 ], [ %1772, %1959 ], [ %1772, %1765 ], [ %2426, %2492 ], [ %2426, %2490 ], [ %2426, %2458 ], [ %2426, %2443 ], [ %1772, %1778 ]
  %2512 = phi float [ %2427, %2421 ], [ %1773, %1959 ], [ %1773, %1765 ], [ %2427, %2492 ], [ %2427, %2490 ], [ %2427, %2458 ], [ %2427, %2443 ], [ %1773, %1778 ]
  %2513 = phi float [ %2428, %2421 ], [ %1774, %1959 ], [ %1774, %1765 ], [ %2428, %2492 ], [ %2428, %2490 ], [ %2428, %2458 ], [ %2428, %2443 ], [ %1774, %1778 ]
  %2514 = phi float [ %1775, %2421 ], [ %1775, %1959 ], [ %1775, %1765 ], [ %2503, %2492 ], [ %1775, %2490 ], [ %2489, %2458 ], [ %2455, %2443 ], [ %1775, %1778 ]
  %2515 = phi float [ %1776, %2421 ], [ %1776, %1959 ], [ %1776, %1765 ], [ %2500, %2492 ], [ %1776, %2490 ], [ %2466, %2458 ], [ %2452, %2443 ], [ %1776, %1778 ]
  %2516 = phi float [ %2429, %2421 ], [ %1777, %1959 ], [ %1777, %1765 ], [ %2429, %2492 ], [ %2429, %2490 ], [ %2429, %2458 ], [ %2429, %2443 ], [ %1777, %1778 ]
  br i1 %428, label %3243, label %2517

; <label>:2517                                    ; preds = %2504
  %2518 = icmp ult i32 %482, 4
  %2519 = add i32 %42, 72
  %2520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2521 = extractvalue %dx.types.ResRet.i32 %2520, 0
  %2522 = add i32 %42, 76
  %2523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = or i32 %2524, %2521
  %2526 = icmp eq i32 %2525, 0
  br i1 %2526, label %3243, label %2527

; <label>:2527                                    ; preds = %2517
  %2528 = and i32 %2521, 262144
  %2529 = icmp ne i32 %2528, 0
  %2530 = select i1 %2529, float %47, float 1.000000e+00
  %2531 = select i1 %2529, float %48, float 0.000000e+00
  %2532 = select i1 %2529, float %49, float 0.000000e+00
  %2533 = select i1 %2529, float %50, float 1.000000e+00
  %2534 = select i1 %2529, float %51, float %74
  %2535 = select i1 %2529, float %52, float %75
  %2536 = add i32 %42, 332
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2536, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = lshr i32 %2538, 16
  %2540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2539)  ; LegacyF16ToF32(value)
  %2541 = fmul fast float %2540, 0x3F50624DE0000000
  %2542 = add i32 %42, 136
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = lshr i32 %2544, 16
  %2546 = and i32 %2545, 255
  %2547 = lshr i32 %2544, 24
  %2548 = add i32 %42, 340
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = and i32 %2550, 65535
  %2552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2551)  ; LegacyF16ToF32(value)
  %2553 = lshr i32 %2550, 16
  %2554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2553)  ; LegacyF16ToF32(value)
  %2555 = add i32 %42, 80
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2555, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = lshr i32 %2557, 22
  %2559 = shl nuw nsw i32 %2558, 5
  %2560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2559)  ; LegacyF16ToF32(value)
  %2561 = shl i32 %2557, 4
  %2562 = and i32 %2561, 32752
  %2563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2562)  ; LegacyF16ToF32(value)
  %2564 = lshr i32 %2557, 7
  %2565 = and i32 %2564, 32752
  %2566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2565)  ; LegacyF16ToF32(value)
  %2567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2568 = extractvalue %dx.types.CBufRet.f32 %2567, 3
  %2569 = fmul fast float %2568, 1.000000e+03
  %2570 = fmul fast float %418, %2569
  %2571 = call float @dx.op.unary.f32(i32 22, float %2570)  ; Frc(value)
  %2572 = fadd fast float %2571, %408
  %2573 = fmul fast float %419, %2569
  %2574 = call float @dx.op.unary.f32(i32 22, float %2573)  ; Frc(value)
  %2575 = fadd fast float %2574, %410
  %2576 = fmul fast float %2541, %2569
  %2577 = call float @dx.op.unary.f32(i32 22, float %2576)  ; Frc(value)
  %2578 = fmul fast float %2577, 0x401921FB60000000
  %2579 = fadd fast float %2578, %2560
  %2580 = call float @dx.op.unary.f32(i32 13, float %2579)  ; Sin(value)
  %2581 = call float @dx.op.unary.f32(i32 12, float %2579)  ; Cos(value)
  %2582 = fsub fast float -0.000000e+00, %2580
  %2583 = fadd fast float %2534, -5.000000e-01
  %2584 = fadd fast float %2535, -5.000000e-01
  %2585 = fmul fast float %2552, %2583
  %2586 = fmul fast float %2554, %2584
  %2587 = fadd fast float %2585, 5.000000e-01
  %2588 = fadd fast float %2586, 5.000000e-01
  %2589 = fmul fast float %2563, %2587
  %2590 = fmul fast float %2566, %2588
  %2591 = fmul fast float %2581, %2589
  %2592 = call float @dx.op.tertiary.f32(i32 46, float %2582, float %2590, float %2591)  ; FMad(a,b,c)
  %2593 = fmul fast float %2580, %2589
  %2594 = call float @dx.op.tertiary.f32(i32 46, float %2581, float %2590, float %2593)  ; FMad(a,b,c)
  %2595 = fadd fast float %2572, %2592
  %2596 = fadd fast float %2575, %2594
  %2597 = icmp ugt i32 %2546, 1
  %2598 = icmp ugt i32 %2544, 33554431
  %2599 = or i1 %2598, %2597
  br i1 %2599, label %2600, label %2625

; <label>:2600                                    ; preds = %2527
  %2601 = add i32 %42, 276
  %2602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2603 = extractvalue %dx.types.ResRet.i32 %2602, 0
  %2604 = lshr i32 %2603, 16
  %2605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2604)  ; LegacyF16ToF32(value)
  %2606 = fmul fast float %2568, %2605
  %2607 = call float @dx.op.unary.f32(i32 22, float %2606)  ; Frc(value)
  %2608 = mul nuw nsw i32 %2546, %2547
  %2609 = uitofp i32 %2608 to float
  %2610 = fmul fast float %2607, %2609
  %2611 = call float @dx.op.unary.f32(i32 27, float %2610)  ; Round_ni(value)
  %2612 = fptoui float %2611 to i32
  %2613 = urem i32 %2612, %2546
  %2614 = udiv i32 %2612, %2547
  %2615 = call float @dx.op.unary.f32(i32 22, float %2595)  ; Frc(value)
  %2616 = call float @dx.op.unary.f32(i32 22, float %2596)  ; Frc(value)
  %2617 = uitofp i32 %2613 to float
  %2618 = uitofp i32 %2614 to float
  %2619 = fadd fast float %2615, %2617
  %2620 = fadd fast float %2616, %2618
  %2621 = uitofp i32 %2546 to float
  %2622 = uitofp i32 %2547 to float
  %2623 = fdiv fast float %2619, %2621
  %2624 = fdiv fast float %2620, %2622
  br label %2625

; <label>:2625                                    ; preds = %2600, %2527
  %2626 = phi float [ %2623, %2600 ], [ %2595, %2527 ]
  %2627 = phi float [ %2624, %2600 ], [ %2596, %2527 ]
  %2628 = and i32 %2521, 256
  %2629 = icmp eq i32 %2628, 0
  br i1 %2629, label %2676, label %2630

; <label>:2630                                    ; preds = %2625
  %2631 = add i32 %42, 436
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = add i32 %2633, 0
  %2635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2634, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2636 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2635, %dx.types.Handle %89, float %2626, float %2627, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2637 = extractvalue %dx.types.ResRet.f32 %2636, 0
  %2638 = add i32 %42, 148
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = shl i32 %2640, 4
  %2642 = and i32 %2641, 32752
  %2643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2642)  ; LegacyF16ToF32(value)
  %2644 = lshr i32 %2640, 7
  %2645 = and i32 %2644, 32752
  %2646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2645)  ; LegacyF16ToF32(value)
  %2647 = fsub fast float 1.000000e+00, %477
  %2648 = call float @dx.op.binary.f32(i32 35, float %2647, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2649 = bitcast float %477 to i32
  %2650 = sitofp i32 %2649 to float
  %2651 = fadd fast float %2650, 0xC1CFBF8940000000
  %2652 = fmul fast float %2646, %2651
  %2653 = fadd fast float %2652, 0x41CFBF8940000000
  %2654 = fptosi float %2653 to i32
  %2655 = bitcast i32 %2654 to float
  %2656 = bitcast float %2648 to i32
  %2657 = sitofp i32 %2656 to float
  %2658 = fadd fast float %2657, 0xC1CFBF8940000000
  %2659 = fmul fast float %2658, %2646
  %2660 = fadd fast float %2659, 0x41CFBF8940000000
  %2661 = fptosi float %2660 to i32
  %2662 = bitcast i32 %2661 to float
  %2663 = fmul fast float %2655, %2643
  %2664 = fmul fast float %2662, %2643
  %2665 = fsub fast float %2648, %2663
  %2666 = fadd fast float %2664, %2648
  %2667 = call float @dx.op.unary.f32(i32 7, float %2665)  ; Saturate(value)
  %2668 = call float @dx.op.unary.f32(i32 7, float %2666)  ; Saturate(value)
  %2669 = fsub fast float %2637, %2667
  %2670 = fsub fast float %2668, %2667
  %2671 = bitcast float %2670 to i32
  %2672 = sub nsw i32 2129859010, %2671
  %2673 = bitcast i32 %2672 to float
  %2674 = fmul fast float %2673, %2669
  %2675 = call float @dx.op.unary.f32(i32 7, float %2674)  ; Saturate(value)
  br label %2676

; <label>:2676                                    ; preds = %2630, %2625
  %2677 = phi float [ %2675, %2630 ], [ %477, %2625 ]
  %2678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.i32 %2678, 0
  %2680 = and i32 %2679, 128
  %2681 = icmp eq i32 %2680, 0
  br i1 %2681, label %2698, label %2682

; <label>:2682                                    ; preds = %2676
  %2683 = add i32 %42, 420
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = add i32 %2685, 0
  %2687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2688 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2687, %dx.types.Handle %89, float %2626, float %2627, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2689 = extractvalue %dx.types.ResRet.f32 %2688, 0
  %2690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.i32 %2690, 0
  %2692 = and i32 %2691, 524288
  %2693 = icmp ne i32 %2692, 0
  %2694 = fcmp fast ogt float %2689, 0x3FE0101020000000
  %2695 = select i1 %2694, float 1.000000e+00, float 0.000000e+00
  %2696 = select i1 %2693, float %2695, float %2689
  %2697 = fmul fast float %2696, %2677
  br label %2698

; <label>:2698                                    ; preds = %2682, %2676
  %2699 = phi float [ %2697, %2682 ], [ %2677, %2676 ]
  %2700 = fcmp fast ult float %2699, 0x3F70101020000000
  br i1 %2700, label %3243, label %2701

; <label>:2701                                    ; preds = %2698
  %2702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2703 = extractvalue %dx.types.ResRet.i32 %2702, 0
  %2704 = and i32 %2703, 16
  %2705 = icmp eq i32 %2704, 0
  br i1 %2705, label %2904, label %2706

; <label>:2706                                    ; preds = %2701
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = add i32 %42, 372
  %2710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.i32 %2710, 0
  %2712 = add i32 %2711, 0
  %2713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2712, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2714 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2713, %dx.types.Handle %88, float %2626, float %2627, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2715 = extractvalue %dx.types.ResRet.f32 %2714, 0
  %2716 = extractvalue %dx.types.ResRet.f32 %2714, 1
  %2717 = extractvalue %dx.types.ResRet.f32 %2714, 2
  %2718 = extractvalue %dx.types.ResRet.f32 %2714, 3
  %2719 = and i32 %2708, 255
  %2720 = uitofp i32 %2719 to float
  %2721 = lshr i32 %2708, 8
  %2722 = and i32 %2721, 255
  %2723 = uitofp i32 %2722 to float
  %2724 = fmul fast float %2718, %2720
  %2725 = fadd fast float %2724, %2723
  %2726 = fmul fast float %2725, 0x3F70101000000000
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = and i32 %2728, 512
  %2730 = icmp eq i32 %2729, 0
  br i1 %2730, label %2739, label %2731

; <label>:2731                                    ; preds = %2706
  %2732 = add i32 %42, 452
  %2733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.i32 %2733, 0
  %2735 = add i32 %2734, 0
  %2736 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2735, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2737 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2736, %dx.types.Handle %89, float %2626, float %2627, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2738 = extractvalue %dx.types.ResRet.f32 %2737, 0
  br label %2739

; <label>:2739                                    ; preds = %2731, %2706
  %2740 = phi float [ %2738, %2731 ], [ 1.000000e+00, %2706 ]
  %2741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2742 = extractvalue %dx.types.ResRet.i32 %2741, 0
  %2743 = and i32 %2742, 33554432
  %2744 = icmp eq i32 %2743, 0
  br i1 %2744, label %2851, label %2745

; <label>:2745                                    ; preds = %2739
  %2746 = add i32 %42, 272
  %2747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.i32 %2747, 0
  %2749 = and i32 %2748, 65535
  %2750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2749)  ; LegacyF16ToF32(value)
  %2751 = lshr i32 %2748, 16
  %2752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2751)  ; LegacyF16ToF32(value)
  %2753 = add i32 %42, 276
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = and i32 %2755, 65535
  %2757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2756)  ; LegacyF16ToF32(value)
  %2758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2759 = extractvalue %dx.types.ResRet.i32 %2758, 0
  %2760 = lshr i32 %2759, 24
  %2761 = uitofp i32 %2760 to float
  %2762 = fmul fast float %2761, 0x3F70101020000000
  %2763 = and i32 %2759, 255
  %2764 = uitofp i32 %2763 to float
  %2765 = fmul fast float %2764, 0x3F70101020000000
  %2766 = lshr i32 %2759, 8
  %2767 = and i32 %2766, 255
  %2768 = uitofp i32 %2767 to float
  %2769 = fmul fast float %2768, 0x3F70101020000000
  %2770 = lshr i32 %2759, 16
  %2771 = and i32 %2770, 255
  %2772 = uitofp i32 %2771 to float
  %2773 = fmul fast float %2772, 0x3F70101020000000
  %2774 = add i32 %42, 268
  %2775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2774, i32 undef)  ; BufferLoad(srv,index,wot)
  %2776 = extractvalue %dx.types.ResRet.i32 %2775, 0
  %2777 = lshr i32 %2776, 24
  %2778 = uitofp i32 %2777 to float
  %2779 = fmul fast float %2778, 0x3F70101020000000
  %2780 = and i32 %2776, 255
  %2781 = uitofp i32 %2780 to float
  %2782 = fmul fast float %2781, 0x3F70101020000000
  %2783 = lshr i32 %2776, 8
  %2784 = and i32 %2783, 255
  %2785 = uitofp i32 %2784 to float
  %2786 = fmul fast float %2785, 0x3F70101020000000
  %2787 = lshr i32 %2776, 16
  %2788 = and i32 %2787, 255
  %2789 = uitofp i32 %2788 to float
  %2790 = fmul fast float %2789, 0x3F70101020000000
  %2791 = bitcast float %2715 to i32
  %2792 = ashr i32 %2791, 1
  %2793 = sub nsw i32 1597463174, %2792
  %2794 = bitcast i32 %2793 to float
  %2795 = fmul fast float %2715, 5.000000e-01
  %2796 = fmul fast float %2794, %2794
  %2797 = fmul fast float %2796, %2795
  %2798 = fsub fast float 1.500000e+00, %2797
  %2799 = fmul fast float %2794, %2715
  %2800 = fmul fast float %2799, %2798
  %2801 = bitcast float %2716 to i32
  %2802 = ashr i32 %2801, 1
  %2803 = sub nsw i32 1597463174, %2802
  %2804 = bitcast i32 %2803 to float
  %2805 = fmul fast float %2716, 5.000000e-01
  %2806 = fmul fast float %2804, %2804
  %2807 = fmul fast float %2806, %2805
  %2808 = fsub fast float 1.500000e+00, %2807
  %2809 = fmul fast float %2804, %2716
  %2810 = fmul fast float %2809, %2808
  %2811 = bitcast float %2717 to i32
  %2812 = ashr i32 %2811, 1
  %2813 = sub nsw i32 1597463174, %2812
  %2814 = bitcast i32 %2813 to float
  %2815 = fmul fast float %2717, 5.000000e-01
  %2816 = fmul fast float %2814, %2814
  %2817 = fmul fast float %2816, %2815
  %2818 = fsub fast float 1.500000e+00, %2817
  %2819 = fmul fast float %2814, %2717
  %2820 = fmul fast float %2819, %2818
  %2821 = fsub fast float %2800, %2782
  %2822 = fsub fast float %2810, %2786
  %2823 = fsub fast float %2820, %2790
  %2824 = fmul fast float %2821, %2750
  %2825 = fmul fast float %2822, %2752
  %2826 = fmul fast float %2823, %2757
  %2827 = fadd fast float %2824, %2765
  %2828 = fadd fast float %2825, %2769
  %2829 = fadd fast float %2826, %2773
  %2830 = call float @dx.op.unary.f32(i32 7, float %2827)  ; Saturate(value)
  %2831 = call float @dx.op.unary.f32(i32 7, float %2828)  ; Saturate(value)
  %2832 = call float @dx.op.unary.f32(i32 7, float %2829)  ; Saturate(value)
  %2833 = fmul fast float %2830, %2830
  %2834 = fmul fast float %2831, %2831
  %2835 = fmul fast float %2832, %2832
  %2836 = fsub fast float %2833, %2715
  %2837 = fsub fast float %2834, %2716
  %2838 = fsub fast float %2835, %2717
  %2839 = fmul fast float %2836, %2740
  %2840 = fmul fast float %2837, %2740
  %2841 = fmul fast float %2838, %2740
  %2842 = fadd fast float %2839, %2715
  %2843 = fadd fast float %2840, %2716
  %2844 = fadd fast float %2841, %2717
  %2845 = fadd fast float %2762, %2726
  %2846 = fsub fast float %2845, %2779
  %2847 = call float @dx.op.unary.f32(i32 7, float %2846)  ; Saturate(value)
  %2848 = fsub fast float %2847, %2726
  %2849 = fmul fast float %2848, %2740
  %2850 = fadd fast float %2849, %2726
  br label %2904

; <label>:2851                                    ; preds = %2739
  %2852 = and i32 %2742, 134217728
  %2853 = icmp eq i32 %2852, 0
  br i1 %2853, label %2888, label %2854

; <label>:2854                                    ; preds = %2851
  %2855 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %2856 = call float @dx.op.unary.f32(i32 24, float %399)  ; Sqrt(value)
  %2857 = call float @dx.op.unary.f32(i32 24, float %403)  ; Sqrt(value)
  %2858 = fadd fast float %2855, -5.000000e-01
  %2859 = fadd fast float %2856, -5.000000e-01
  %2860 = fadd fast float %2857, -5.000000e-01
  %2861 = fmul fast float %2858, %2740
  %2862 = fmul fast float %2859, %2740
  %2863 = fmul fast float %2860, %2740
  %2864 = fadd fast float %2861, 5.000000e-01
  %2865 = fadd fast float %2862, 5.000000e-01
  %2866 = fadd fast float %2863, 5.000000e-01
  %2867 = call float @dx.op.unary.f32(i32 24, float %2715)  ; Sqrt(value)
  %2868 = call float @dx.op.unary.f32(i32 24, float %2716)  ; Sqrt(value)
  %2869 = call float @dx.op.unary.f32(i32 24, float %2717)  ; Sqrt(value)
  %2870 = fmul fast float %2864, 2.000000e+00
  %2871 = fsub fast float 1.000000e+00, %2870
  %2872 = fmul fast float %2871, %2867
  %2873 = fadd fast float %2872, %2870
  %2874 = fmul fast float %2873, %2867
  %2875 = fmul fast float %2865, 2.000000e+00
  %2876 = fsub fast float 1.000000e+00, %2875
  %2877 = fmul fast float %2876, %2868
  %2878 = fadd fast float %2877, %2875
  %2879 = fmul fast float %2878, %2868
  %2880 = fmul fast float %2866, 2.000000e+00
  %2881 = fsub fast float 1.000000e+00, %2880
  %2882 = fmul fast float %2881, %2869
  %2883 = fadd fast float %2882, %2880
  %2884 = fmul fast float %2883, %2869
  %2885 = fmul fast float %2874, %2874
  %2886 = fmul fast float %2879, %2879
  %2887 = fmul fast float %2884, %2884
  br label %2904

; <label>:2888                                    ; preds = %2851
  %2889 = fmul fast float %395, %395
  %2890 = fmul fast float %399, %399
  %2891 = fmul fast float %403, %403
  %2892 = fadd fast float %2889, -1.000000e+00
  %2893 = fadd fast float %2890, -1.000000e+00
  %2894 = fadd fast float %2891, -1.000000e+00
  %2895 = fmul fast float %2740, %2892
  %2896 = fmul fast float %2740, %2893
  %2897 = fmul fast float %2740, %2894
  %2898 = fadd fast float %2895, 1.000000e+00
  %2899 = fadd fast float %2896, 1.000000e+00
  %2900 = fadd fast float %2897, 1.000000e+00
  %2901 = fmul fast float %2898, %2715
  %2902 = fmul fast float %2899, %2716
  %2903 = fmul fast float %2900, %2717
  br label %2904

; <label>:2904                                    ; preds = %2888, %2854, %2745, %2701
  %2905 = phi float [ %2850, %2745 ], [ %2726, %2854 ], [ %2726, %2888 ], [ 0x3FA23C0BE0000000, %2701 ]
  %2906 = phi float [ %2842, %2745 ], [ %2885, %2854 ], [ %2901, %2888 ], [ 1.000000e+00, %2701 ]
  %2907 = phi float [ %2843, %2745 ], [ %2886, %2854 ], [ %2902, %2888 ], [ 1.000000e+00, %2701 ]
  %2908 = phi float [ %2844, %2745 ], [ %2887, %2854 ], [ %2903, %2888 ], [ 1.000000e+00, %2701 ]
  %2909 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2910 = extractvalue %dx.types.CBufRet.i32 %2909, 1
  %2911 = and i32 %2910, 1
  %2912 = icmp ne i32 %2911, 0
  %2913 = add i32 %42, 356
  %2914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2913, i32 undef)  ; BufferLoad(srv,index,wot)
  %2915 = extractvalue %dx.types.ResRet.i32 %2914, 0
  %2916 = and i32 %2915, 32
  %2917 = icmp ne i32 %2916, 0
  %2918 = and i1 %2912, %2917
  %2919 = select i1 %2918, float 1.000000e+00, float %2906
  %2920 = select i1 %2918, float 0x3FD3333340000000, float %2907
  %2921 = select i1 %2918, float 0x3FD3333340000000, float %2908
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = and i32 %2923, 32
  %2925 = icmp eq i32 %2924, 0
  br i1 %2925, label %2998, label %2926

; <label>:2926                                    ; preds = %2904
  %2927 = add i32 %42, 140
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = add i32 %42, 388
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = add i32 %2932, 0
  %2934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2933, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2935 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2934, %dx.types.Handle %88, float %2626, float %2627, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2936 = extractvalue %dx.types.ResRet.f32 %2935, 0
  %2937 = extractvalue %dx.types.ResRet.f32 %2935, 1
  %2938 = extractvalue %dx.types.ResRet.f32 %2935, 2
  %2939 = extractvalue %dx.types.ResRet.f32 %2935, 3
  %2940 = and i32 %2929, 255
  %2941 = uitofp i32 %2940 to float
  %2942 = lshr i32 %2929, 8
  %2943 = and i32 %2942, 255
  %2944 = uitofp i32 %2943 to float
  %2945 = lshr i32 %2929, 16
  %2946 = and i32 %2945, 255
  %2947 = uitofp i32 %2946 to float
  %2948 = fmul fast float %2947, 0x3F70101000000000
  %2949 = fmul fast float %2936, %2941
  %2950 = fadd fast float %2949, %2944
  %2951 = fmul fast float %2950, 0x3F70101000000000
  %2952 = fadd fast float %2937, -5.000000e-01
  %2953 = fadd fast float %2939, -5.000000e-01
  %2954 = fmul fast float %2952, %2948
  %2955 = fmul fast float %2953, %2948
  %2956 = fadd fast float %2954, 5.000000e-01
  %2957 = fadd fast float %2955, 5.000000e-01
  %2958 = fmul fast float %2956, 2.000000e+00
  %2959 = fadd fast float %2958, -1.000000e+00
  %2960 = fmul fast float %2957, 2.000000e+00
  %2961 = fadd fast float %2960, -1.000000e+00
  %2962 = fadd fast float %2959, %2961
  %2963 = fmul fast float %2962, 5.000000e-01
  %2964 = fsub fast float %2959, %2961
  %2965 = fmul fast float %2964, 5.000000e-01
  %2966 = call float @dx.op.unary.f32(i32 6, float %2963)  ; FAbs(value)
  %2967 = fsub fast float 1.000000e+00, %2966
  %2968 = call float @dx.op.unary.f32(i32 6, float %2965)  ; FAbs(value)
  %2969 = fsub fast float %2967, %2968
  %2970 = call float @dx.op.dot3.f32(i32 55, float %2963, float %2965, float %2969, float %2963, float %2965, float %2969)  ; Dot3(ax,ay,az,bx,by,bz)
  %2971 = call float @dx.op.unary.f32(i32 25, float %2970)  ; Rsqrt(value)
  %2972 = fmul fast float %2963, %2971
  %2973 = fmul fast float %2965, %2971
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = and i32 %2975, 67108864
  %2977 = icmp eq i32 %2976, 0
  br i1 %2977, label %2994, label %2978

; <label>:2978                                    ; preds = %2926
  %2979 = add i32 %42, 328
  %2980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.i32 %2980, 0
  %2982 = and i32 %2981, 65535
  %2983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2982)  ; LegacyF16ToF32(value)
  %2984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2536, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.i32 %2984, 0
  %2986 = and i32 %2985, 65535
  %2987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2986)  ; LegacyF16ToF32(value)
  %2988 = lshr i32 %2981, 16
  %2989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2988)  ; LegacyF16ToF32(value)
  %2990 = fsub fast float %2951, %2989
  %2991 = fmul fast float %2990, %2983
  %2992 = fadd fast float %2991, %2987
  %2993 = call float @dx.op.unary.f32(i32 7, float %2992)  ; Saturate(value)
  br label %2994

; <label>:2994                                    ; preds = %2978, %2926
  %2995 = phi float [ %2993, %2978 ], [ %2951, %2926 ]
  %2996 = call float @dx.op.dot2.f32(i32 54, float %2972, float %2973, float %2530, float %2531)  ; Dot2(ax,ay,bx,by)
  %2997 = call float @dx.op.dot2.f32(i32 54, float %2972, float %2973, float %2532, float %2533)  ; Dot2(ax,ay,bx,by)
  br label %2998

; <label>:2998                                    ; preds = %2994, %2904
  %2999 = phi float [ %2995, %2994 ], [ 0x3FD6666660000000, %2904 ]
  %3000 = phi float [ %2996, %2994 ], [ 0.000000e+00, %2904 ]
  %3001 = phi float [ %2997, %2994 ], [ 0.000000e+00, %2904 ]
  %3002 = phi float [ %2938, %2994 ], [ 1.000000e+00, %2904 ]
  %3003 = add i32 %42, 208
  %3004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3003, i32 undef)  ; BufferLoad(srv,index,wot)
  %3005 = extractvalue %dx.types.ResRet.i32 %3004, 0
  %3006 = lshr i32 %3005, 22
  %3007 = shl nuw nsw i32 %3006, 5
  %3008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3007)  ; LegacyF16ToF32(value)
  %3009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %3010 = extractvalue %dx.types.ResRet.i32 %3009, 0
  %3011 = and i32 %3010, 64
  %3012 = icmp eq i32 %3011, 0
  br i1 %3012, label %3046, label %3013

; <label>:3013                                    ; preds = %2998
  %3014 = add i32 %42, 404
  %3015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3014, i32 undef)  ; BufferLoad(srv,index,wot)
  %3016 = extractvalue %dx.types.ResRet.i32 %3015, 0
  %3017 = add i32 %3016, 0
  %3018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3017, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = and i32 %3020, 131072
  %3022 = icmp eq i32 %3021, 0
  %3023 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3018, %dx.types.Handle %88, float %2626, float %2627, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3024 = extractvalue %dx.types.ResRet.f32 %3023, 0
  %3025 = extractvalue %dx.types.ResRet.f32 %3023, 1
  %3026 = extractvalue %dx.types.ResRet.f32 %3023, 2
  %3027 = fmul fast float %3024, %383
  %3028 = fmul fast float %3025, %386
  %3029 = fmul fast float %3026, %389
  br i1 %3022, label %3036, label %3030

; <label>:3030                                    ; preds = %3013
  %3031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3032 = extractvalue %dx.types.CBufRet.f32 %3031, 0
  %3033 = fmul fast float %3032, %3027
  %3034 = fmul fast float %3032, %3028
  %3035 = fmul fast float %3032, %3029
  br label %3036

; <label>:3036                                    ; preds = %3030, %3013
  %3037 = phi float [ %3033, %3030 ], [ %3027, %3013 ]
  %3038 = phi float [ %3034, %3030 ], [ %3028, %3013 ]
  %3039 = phi float [ %3035, %3030 ], [ %3029, %3013 ]
  %3040 = fmul fast float %3037, %3008
  %3041 = select i1 %240, float %3040, float %3037
  %3042 = call float @dx.op.dot3.f32(i32 55, float %3041, float %3038, float %3039, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3043 = select i1 %240, float 0.000000e+00, float %3037
  %3044 = select i1 %240, float %3042, float %3038
  %3045 = select i1 %240, float 0.000000e+00, float %3039
  br label %3046

; <label>:3046                                    ; preds = %3036, %2998
  %3047 = phi float [ %3043, %3036 ], [ 0.000000e+00, %2998 ]
  %3048 = phi float [ %3044, %3036 ], [ 0.000000e+00, %2998 ]
  %3049 = phi float [ %3045, %3036 ], [ 0.000000e+00, %2998 ]
  %3050 = add i32 %42, 144
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = and i32 %3052, 255
  %3054 = uitofp i32 %3053 to float
  %3055 = lshr i32 %3052, 8
  %3056 = and i32 %3055, 255
  %3057 = uitofp i32 %3056 to float
  %3058 = call float @dx.op.dot3.f32(i32 55, float %2919, float %2920, float %2921, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3059 = fmul fast float %3057, %3058
  %3060 = fadd fast float %3059, %3054
  %3061 = fmul fast float %3060, 0x3F70101020000000
  %3062 = call float @dx.op.unary.f32(i32 7, float %3061)  ; Saturate(value)
  br i1 %2518, label %3063, label %3071

; <label>:3063                                    ; preds = %3046
  %3064 = fsub fast float 1.000000e+00, %2699
  %3065 = fmul fast float %3064, %2507
  %3066 = fmul fast float %3064, %2508
  %3067 = fmul fast float %3064, %2509
  %3068 = fmul fast float %3064, %2510
  %3069 = fmul fast float %3064, %2511
  %3070 = fmul fast float %3064, %2512
  br label %3071

; <label>:3071                                    ; preds = %3063, %3046
  %3072 = phi float [ %3065, %3063 ], [ %2507, %3046 ]
  %3073 = phi float [ %3066, %3063 ], [ %2508, %3046 ]
  %3074 = phi float [ %3067, %3063 ], [ %2509, %3046 ]
  %3075 = phi float [ %3068, %3063 ], [ %2510, %3046 ]
  %3076 = phi float [ %3069, %3063 ], [ %2511, %3046 ]
  %3077 = phi float [ %3070, %3063 ], [ %2512, %3046 ]
  %3078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %3079 = extractvalue %dx.types.ResRet.i32 %3078, 0
  %3080 = and i32 %3079, 3
  %3081 = icmp eq i32 %3080, 3
  br i1 %3081, label %3160, label %3082

; <label>:3082                                    ; preds = %3071
  %3083 = and i32 %3079, 16
  %3084 = icmp ne i32 %3083, 0
  %3085 = select i1 %3084, float %2699, float 0.000000e+00
  %3086 = icmp eq i32 %3080, 0
  br i1 %3086, label %3087, label %3115

; <label>:3087                                    ; preds = %3082
  %3088 = and i32 %3079, 64
  %3089 = icmp ne i32 %3088, 0
  %3090 = select i1 %3089, float %2699, float 0.000000e+00
  %3091 = fsub fast float %2919, %3072
  %3092 = fsub fast float %2920, %3073
  %3093 = fsub fast float %2921, %3074
  %3094 = fmul fast float %3085, %3091
  %3095 = fmul fast float %3085, %3092
  %3096 = fmul fast float %3085, %3093
  %3097 = fadd fast float %3094, %3072
  %3098 = fadd fast float %3095, %3073
  %3099 = fadd fast float %3096, %3074
  %3100 = fsub fast float %2905, %2513
  %3101 = fmul fast float %3085, %3100
  %3102 = fadd fast float %3101, %2513
  %3103 = fsub fast float %3047, %3075
  %3104 = fsub fast float %3048, %3076
  %3105 = fsub fast float %3049, %3077
  %3106 = fmul fast float %3090, %3103
  %3107 = fmul fast float %3090, %3104
  %3108 = fmul fast float %3090, %3105
  %3109 = fadd fast float %3106, %3075
  %3110 = fadd fast float %3107, %3076
  %3111 = fadd fast float %3108, %3077
  %3112 = fsub fast float %3062, %2516
  %3113 = fmul fast float %3085, %3112
  %3114 = fadd fast float %3113, %2516
  br label %3160

; <label>:3115                                    ; preds = %3082
  %3116 = icmp eq i32 %3080, 1
  br i1 %3116, label %3117, label %3130

; <label>:3117                                    ; preds = %3115
  %3118 = fadd fast float %2919, -1.000000e+00
  %3119 = fadd fast float %2920, -1.000000e+00
  %3120 = fadd fast float %2921, -1.000000e+00
  %3121 = fmul fast float %3085, %3118
  %3122 = fmul fast float %3085, %3119
  %3123 = fmul fast float %3085, %3120
  %3124 = fadd fast float %3121, 1.000000e+00
  %3125 = fadd fast float %3122, 1.000000e+00
  %3126 = fadd fast float %3123, 1.000000e+00
  %3127 = fmul fast float %3124, %3072
  %3128 = fmul fast float %3125, %3073
  %3129 = fmul fast float %3126, %3074
  br label %3160

; <label>:3130                                    ; preds = %3115
  %3131 = icmp eq i32 %3080, 2
  br i1 %3131, label %3132, label %3160

; <label>:3132                                    ; preds = %3130
  %3133 = call float @dx.op.unary.f32(i32 24, float %2919)  ; Sqrt(value)
  %3134 = call float @dx.op.unary.f32(i32 24, float %2920)  ; Sqrt(value)
  %3135 = call float @dx.op.unary.f32(i32 24, float %2921)  ; Sqrt(value)
  %3136 = fadd fast float %3133, -5.000000e-01
  %3137 = fadd fast float %3134, -5.000000e-01
  %3138 = fadd fast float %3135, -5.000000e-01
  %3139 = fmul fast float %3136, %3085
  %3140 = fmul fast float %3137, %3085
  %3141 = fmul fast float %3138, %3085
  %3142 = fadd fast float %3139, 5.000000e-01
  %3143 = fadd fast float %3140, 5.000000e-01
  %3144 = fadd fast float %3141, 5.000000e-01
  %3145 = fmul fast float %3142, 2.000000e+00
  %3146 = fsub fast float 1.000000e+00, %3145
  %3147 = fmul fast float %3146, %3072
  %3148 = fadd fast float %3147, %3145
  %3149 = fmul fast float %3148, %3072
  %3150 = fmul fast float %3143, 2.000000e+00
  %3151 = fsub fast float 1.000000e+00, %3150
  %3152 = fmul fast float %3151, %3073
  %3153 = fadd fast float %3152, %3150
  %3154 = fmul fast float %3153, %3073
  %3155 = fmul fast float %3144, 2.000000e+00
  %3156 = fsub fast float 1.000000e+00, %3155
  %3157 = fmul fast float %3156, %3074
  %3158 = fadd fast float %3157, %3155
  %3159 = fmul fast float %3158, %3074
  br label %3160

; <label>:3160                                    ; preds = %3132, %3130, %3117, %3087, %3071
  %3161 = phi float [ %3072, %3071 ], [ %3149, %3132 ], [ %3072, %3130 ], [ %3127, %3117 ], [ %3097, %3087 ]
  %3162 = phi float [ %3073, %3071 ], [ %3154, %3132 ], [ %3073, %3130 ], [ %3128, %3117 ], [ %3098, %3087 ]
  %3163 = phi float [ %3074, %3071 ], [ %3159, %3132 ], [ %3074, %3130 ], [ %3129, %3117 ], [ %3099, %3087 ]
  %3164 = phi float [ %3075, %3071 ], [ %3075, %3132 ], [ %3075, %3130 ], [ %3075, %3117 ], [ %3109, %3087 ]
  %3165 = phi float [ %3076, %3071 ], [ %3076, %3132 ], [ %3076, %3130 ], [ %3076, %3117 ], [ %3110, %3087 ]
  %3166 = phi float [ %3077, %3071 ], [ %3077, %3132 ], [ %3077, %3130 ], [ %3077, %3117 ], [ %3111, %3087 ]
  %3167 = phi float [ %2513, %3071 ], [ %2513, %3132 ], [ %2513, %3130 ], [ %2513, %3117 ], [ %3102, %3087 ]
  %3168 = phi float [ %2516, %3071 ], [ %2516, %3132 ], [ %2516, %3130 ], [ %2516, %3117 ], [ %3114, %3087 ]
  %3169 = and i32 %3079, 12
  %3170 = icmp eq i32 %3169, 12
  br i1 %3170, label %3243, label %3171

; <label>:3171                                    ; preds = %3160
  %3172 = and i32 %3079, 2097184
  %3173 = icmp eq i32 %3172, 2097184
  %3174 = select i1 %3173, float %2699, float 0.000000e+00
  %3175 = and i32 %3079, 4194336
  %3176 = icmp eq i32 %3175, 4194336
  %3177 = select i1 %3176, float %2699, float 0.000000e+00
  %3178 = and i32 %3079, 8388640
  %3179 = icmp eq i32 %3178, 8388640
  %3180 = select i1 %3179, float %2699, float 0.000000e+00
  %3181 = icmp eq i32 %3169, 0
  br i1 %3181, label %3182, label %3195

; <label>:3182                                    ; preds = %3171
  %3183 = fsub fast float %3000, %2505
  %3184 = fsub fast float %3001, %2506
  %3185 = fmul fast float %3174, %3183
  %3186 = fmul fast float %3174, %3184
  %3187 = fadd fast float %3185, %2505
  %3188 = fadd fast float %3186, %2506
  %3189 = fsub fast float %3002, %2515
  %3190 = fmul fast float %3177, %3189
  %3191 = fadd fast float %3190, %2515
  %3192 = fsub fast float %2999, %2514
  %3193 = fmul fast float %3180, %3192
  %3194 = fadd fast float %3193, %2514
  br label %3243

; <label>:3195                                    ; preds = %3171
  %3196 = icmp eq i32 %3169, 4
  br i1 %3196, label %3197, label %3229

; <label>:3197                                    ; preds = %3195
  %3198 = fmul fast float %3174, %3000
  %3199 = fmul fast float %3174, %3001
  %3200 = fadd fast float %3198, %2505
  %3201 = fadd fast float %3199, %2506
  %3202 = call float @dx.op.binary.f32(i32 36, float %2515, float %3002)  ; FMin(a,b)
  %3203 = fsub fast float %3202, %2515
  %3204 = fmul fast float %3203, %3177
  %3205 = fadd fast float %3204, %2515
  %3206 = fadd fast float %2999, %2514
  %3207 = fmul fast float %3206, 0x3FF337FAE0000000
  %3208 = fmul fast float %2514, %2514
  %3209 = fmul fast float %2999, %2999
  %3210 = fadd fast float %3209, %3208
  %3211 = fmul fast float %3210, 0x3FE5152B00000000
  %3212 = fmul fast float %2514, 0xBFCC1F85E0000000
  %3213 = fmul fast float %3212, %2999
  %3214 = fadd fast float %3213, 0xBFE1363700000000
  %3215 = fadd fast float %3214, %3207
  %3216 = fsub fast float %3215, %3211
  %3217 = fmul fast float %3206, 0x3FBA6F0D00000000
  %3218 = fmul fast float %3210, 0x3FD0432880000000
  %3219 = fmul fast float %2514, 0xBFEF110800000000
  %3220 = fmul fast float %3219, %2999
  %3221 = fadd fast float %3220, 1.000000e+00
  %3222 = fsub fast float %3221, %3217
  %3223 = fadd fast float %3222, %3218
  %3224 = fdiv fast float %3216, %3223
  %3225 = call float @dx.op.unary.f32(i32 7, float %3224)  ; Saturate(value)
  %3226 = fsub fast float %3225, %2514
  %3227 = fmul fast float %3226, %3180
  %3228 = fadd fast float %3227, %2514
  br label %3243

; <label>:3229                                    ; preds = %3195
  %3230 = icmp eq i32 %3169, 8
  br i1 %3230, label %3231, label %3243

; <label>:3231                                    ; preds = %3229
  %3232 = fmul fast float %3174, %3000
  %3233 = fmul fast float %3174, %3001
  %3234 = fadd fast float %3232, %2505
  %3235 = fadd fast float %3233, %2506
  %3236 = call float @dx.op.binary.f32(i32 36, float %2515, float %3002)  ; FMin(a,b)
  %3237 = fsub fast float %3236, %2515
  %3238 = fmul fast float %3237, %3177
  %3239 = fadd fast float %3238, %2515
  %3240 = fsub fast float %2999, %2514
  %3241 = fmul fast float %3180, %3240
  %3242 = fadd fast float %3241, %2514
  br label %3243

; <label>:3243                                    ; preds = %3231, %3229, %3197, %3182, %3160, %2698, %2517, %2504
  %3244 = phi float [ %2505, %3160 ], [ %2505, %2698 ], [ %2505, %2504 ], [ %2505, %2517 ], [ %3187, %3182 ], [ %3200, %3197 ], [ %2505, %3229 ], [ %3234, %3231 ]
  %3245 = phi float [ %2506, %3160 ], [ %2506, %2698 ], [ %2506, %2504 ], [ %2506, %2517 ], [ %3188, %3182 ], [ %3201, %3197 ], [ %2506, %3229 ], [ %3235, %3231 ]
  %3246 = phi float [ %3161, %3160 ], [ %2507, %2698 ], [ %2507, %2504 ], [ %2507, %2517 ], [ %3161, %3182 ], [ %3161, %3197 ], [ %3161, %3229 ], [ %3161, %3231 ]
  %3247 = phi float [ %3162, %3160 ], [ %2508, %2698 ], [ %2508, %2504 ], [ %2508, %2517 ], [ %3162, %3182 ], [ %3162, %3197 ], [ %3162, %3229 ], [ %3162, %3231 ]
  %3248 = phi float [ %3163, %3160 ], [ %2509, %2698 ], [ %2509, %2504 ], [ %2509, %2517 ], [ %3163, %3182 ], [ %3163, %3197 ], [ %3163, %3229 ], [ %3163, %3231 ]
  %3249 = phi float [ %3164, %3160 ], [ %2510, %2698 ], [ %2510, %2504 ], [ %2510, %2517 ], [ %3164, %3182 ], [ %3164, %3197 ], [ %3164, %3229 ], [ %3164, %3231 ]
  %3250 = phi float [ %3165, %3160 ], [ %2511, %2698 ], [ %2511, %2504 ], [ %2511, %2517 ], [ %3165, %3182 ], [ %3165, %3197 ], [ %3165, %3229 ], [ %3165, %3231 ]
  %3251 = phi float [ %3166, %3160 ], [ %2512, %2698 ], [ %2512, %2504 ], [ %2512, %2517 ], [ %3166, %3182 ], [ %3166, %3197 ], [ %3166, %3229 ], [ %3166, %3231 ]
  %3252 = phi float [ %3167, %3160 ], [ %2513, %2698 ], [ %2513, %2504 ], [ %2513, %2517 ], [ %3167, %3182 ], [ %3167, %3197 ], [ %3167, %3229 ], [ %3167, %3231 ]
  %3253 = phi float [ %2514, %3160 ], [ %2514, %2698 ], [ %2514, %2504 ], [ %2514, %2517 ], [ %3194, %3182 ], [ %3228, %3197 ], [ %2514, %3229 ], [ %3242, %3231 ]
  %3254 = phi float [ %2515, %3160 ], [ %2515, %2698 ], [ %2515, %2504 ], [ %2515, %2517 ], [ %3191, %3182 ], [ %3205, %3197 ], [ %2515, %3229 ], [ %3239, %3231 ]
  %3255 = phi float [ %3168, %3160 ], [ %2516, %2698 ], [ %2516, %2504 ], [ %2516, %2517 ], [ %3168, %3182 ], [ %3168, %3197 ], [ %3168, %3229 ], [ %3168, %3231 ]
  %3256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3257 = extractvalue %dx.types.CBufRet.f32 %3256, 0
  %3258 = call float @dx.op.dot2.f32(i32 54, float %3244, float %3245, float %3244, float %3245)  ; Dot2(ax,ay,bx,by)
  %3259 = fmul fast float %3258, 0x3FE3333340000000
  %3260 = fsub fast float 1.000000e+00, %3259
  %3261 = call float @dx.op.dot3.f32(i32 55, float %3244, float %3245, float %3260, float %3244, float %3245, float %3260)  ; Dot3(ax,ay,az,bx,by,bz)
  %3262 = call float @dx.op.unary.f32(i32 25, float %3261)  ; Rsqrt(value)
  %3263 = fmul fast float %3262, %3244
  %3264 = fmul fast float %3262, %3245
  %3265 = fmul fast float %3260, %3262
  %3266 = fmul fast float %3265, %99
  %3267 = fmul fast float %3265, %100
  %3268 = fmul fast float %3265, %101
  %3269 = fmul fast float %3263, %67
  %3270 = fmul fast float %3263, %68
  %3271 = fmul fast float %3263, %69
  %3272 = fadd fast float %3266, %3269
  %3273 = fadd fast float %3267, %3270
  %3274 = fadd fast float %3268, %3271
  %3275 = fmul fast float %111, %3264
  %3276 = fmul fast float %112, %3264
  %3277 = fmul fast float %113, %3264
  %3278 = fadd fast float %3272, %3275
  %3279 = fadd fast float %3273, %3276
  %3280 = fadd fast float %3274, %3277
  %3281 = call float @dx.op.dot3.f32(i32 55, float %3278, float %3279, float %3280, float %3278, float %3279, float %3280)  ; Dot3(ax,ay,az,bx,by,bz)
  %3282 = call float @dx.op.unary.f32(i32 25, float %3281)  ; Rsqrt(value)
  %3283 = fmul fast float %3278, %3282
  %3284 = fmul fast float %3279, %3282
  %3285 = fmul fast float %3280, %3282
  %3286 = icmp eq i32 %43, 65535
  br i1 %3286, label %3805, label %3287

; <label>:3287                                    ; preds = %3243
  %3288 = call float @dx.op.unary.f32(i32 83, float %44)  ; DerivCoarseX(value)
  %3289 = call float @dx.op.unary.f32(i32 83, float %45)  ; DerivCoarseX(value)
  %3290 = call float @dx.op.unary.f32(i32 83, float %46)  ; DerivCoarseX(value)
  %3291 = call float @dx.op.unary.f32(i32 84, float %44)  ; DerivCoarseY(value)
  %3292 = call float @dx.op.unary.f32(i32 84, float %45)  ; DerivCoarseY(value)
  %3293 = call float @dx.op.unary.f32(i32 84, float %46)  ; DerivCoarseY(value)
  %3294 = fadd fast float %3288, %44
  %3295 = fadd fast float %3289, %45
  %3296 = fadd fast float %3290, %46
  %3297 = fadd fast float %3291, %44
  %3298 = fadd fast float %3292, %45
  %3299 = fadd fast float %3293, %46
  %3300 = mul i32 %43, 48
  %3301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3300, i32 undef)  ; BufferLoad(srv,index,wot)
  %3302 = extractvalue %dx.types.ResRet.f32 %3301, 0
  %3303 = extractvalue %dx.types.ResRet.f32 %3301, 1
  %3304 = extractvalue %dx.types.ResRet.f32 %3301, 2
  %3305 = add i32 %3300, 16
  %3306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.f32 %3306, 0
  %3308 = extractvalue %dx.types.ResRet.f32 %3306, 1
  %3309 = extractvalue %dx.types.ResRet.f32 %3306, 2
  %3310 = add i32 %3300, 32
  %3311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.f32 %3311, 0
  %3313 = extractvalue %dx.types.ResRet.f32 %3311, 1
  %3314 = extractvalue %dx.types.ResRet.f32 %3311, 2
  %3315 = extractvalue %dx.types.ResRet.f32 %3311, 3
  %3316 = bitcast float %3315 to i32
  %3317 = fmul fast float %3302, %44
  %3318 = fmul fast float %3303, %45
  %3319 = fmul fast float %3304, %46
  %3320 = fsub fast float %3317, %3307
  %3321 = fsub fast float %3318, %3308
  %3322 = fsub fast float %3319, %3309
  %3323 = call float @dx.op.unary.f32(i32 7, float %3320)  ; Saturate(value)
  %3324 = call float @dx.op.unary.f32(i32 7, float %3321)  ; Saturate(value)
  %3325 = call float @dx.op.unary.f32(i32 7, float %3322)  ; Saturate(value)
  %3326 = fmul fast float %3323, %3312
  %3327 = fmul fast float %3324, %3313
  %3328 = fmul fast float %3325, %3314
  %3329 = fadd fast float %3312, -1.000000e+00
  %3330 = fadd fast float %3313, -1.000000e+00
  %3331 = fadd fast float %3314, -1.000000e+00
  %3332 = call float @dx.op.unary.f32(i32 27, float %3326)  ; Round_ni(value)
  %3333 = call float @dx.op.unary.f32(i32 27, float %3327)  ; Round_ni(value)
  %3334 = call float @dx.op.unary.f32(i32 27, float %3328)  ; Round_ni(value)
  %3335 = call float @dx.op.binary.f32(i32 36, float %3332, float %3329)  ; FMin(a,b)
  %3336 = call float @dx.op.binary.f32(i32 36, float %3333, float %3330)  ; FMin(a,b)
  %3337 = call float @dx.op.binary.f32(i32 36, float %3334, float %3331)  ; FMin(a,b)
  %3338 = fmul fast float %3337, %3313
  %3339 = fadd fast float %3338, %3336
  %3340 = fmul fast float %3339, %3312
  %3341 = fadd fast float %3340, %3335
  %3342 = fptosi float %3341 to i32
  %3343 = add nsw i32 %3342, %3316
  %3344 = shl nsw i32 %3343, 2
  %3345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3344, i32 undef)  ; BufferLoad(srv,index,wot)
  %3346 = extractvalue %dx.types.ResRet.i32 %3345, 0
  %3347 = lshr i32 %3346, 16
  %3348 = icmp eq i32 %3347, 0
  br i1 %3348, label %3773, label %3349

; <label>:3349                                    ; preds = %3287
  br label %3350

; <label>:3350                                    ; preds = %3472, %3349
  %3351 = phi i32 [ %3374, %3472 ], [ %3347, %3349 ]
  %3352 = phi float [ %3473, %3472 ], [ 0.000000e+00, %3349 ]
  %3353 = phi float [ %3474, %3472 ], [ %1035, %3349 ]
  %3354 = phi float [ %3475, %3472 ], [ %3257, %3349 ]
  %3355 = phi float [ %3476, %3472 ], [ %3255, %3349 ]
  %3356 = phi float [ %3477, %3472 ], [ 0.000000e+00, %3349 ]
  %3357 = phi float [ %3478, %3472 ], [ 0.000000e+00, %3349 ]
  %3358 = phi float [ %3479, %3472 ], [ %3249, %3349 ]
  %3359 = phi float [ %3480, %3472 ], [ %3250, %3349 ]
  %3360 = phi float [ %3481, %3472 ], [ %3251, %3349 ]
  %3361 = phi float [ %3482, %3472 ], [ %3283, %3349 ]
  %3362 = phi float [ %3483, %3472 ], [ %3284, %3349 ]
  %3363 = phi float [ %3484, %3472 ], [ %3285, %3349 ]
  %3364 = phi float [ %3485, %3472 ], [ %3254, %3349 ]
  %3365 = phi float [ %3486, %3472 ], [ %3253, %3349 ]
  %3366 = phi float [ %3487, %3472 ], [ 0.000000e+00, %3349 ]
  %3367 = phi float [ %3488, %3472 ], [ %3252, %3349 ]
  %3368 = phi float [ %3489, %3472 ], [ %3246, %3349 ]
  %3369 = phi float [ %3490, %3472 ], [ %3247, %3349 ]
  %3370 = phi float [ %3491, %3472 ], [ %3248, %3349 ]
  %3371 = shl nuw nsw i32 %3351, 2
  %3372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3373 = extractvalue %dx.types.ResRet.i32 %3372, 0
  %3374 = lshr i32 %3373, 16
  %3375 = shl i32 %3373, 8
  %3376 = and i32 %3375, 16776960
  %3377 = or i32 %3376, 48
  %3378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3377, i32 undef)  ; BufferLoad(srv,index,wot)
  %3379 = extractvalue %dx.types.ResRet.f32 %3378, 0
  %3380 = extractvalue %dx.types.ResRet.f32 %3378, 1
  %3381 = extractvalue %dx.types.ResRet.f32 %3378, 2
  %3382 = or i32 %3376, 64
  %3383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.i32 %3383, 0
  %3385 = extractvalue %dx.types.ResRet.i32 %3383, 1
  %3386 = or i32 %3376, 80
  %3387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3386, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.f32 %3387, 2
  %3389 = extractvalue %dx.types.ResRet.f32 %3387, 3
  %3390 = or i32 %3376, 96
  %3391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.f32 %3391, 0
  %3393 = extractvalue %dx.types.ResRet.f32 %3391, 1
  %3394 = extractvalue %dx.types.ResRet.f32 %3391, 2
  %3395 = extractvalue %dx.types.ResRet.f32 %3391, 3
  %3396 = or i32 %3376, 112
  %3397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.f32 %3397, 2
  %3399 = or i32 %3376, 128
  %3400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.f32 %3400, 0
  %3402 = extractvalue %dx.types.ResRet.f32 %3400, 1
  %3403 = extractvalue %dx.types.ResRet.f32 %3400, 2
  %3404 = extractvalue %dx.types.ResRet.f32 %3400, 3
  %3405 = or i32 %3376, 144
  %3406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3405, i32 undef)  ; BufferLoad(srv,index,wot)
  %3407 = extractvalue %dx.types.ResRet.f32 %3406, 0
  %3408 = extractvalue %dx.types.ResRet.f32 %3406, 1
  %3409 = extractvalue %dx.types.ResRet.f32 %3406, 2
  %3410 = extractvalue %dx.types.ResRet.f32 %3406, 3
  %3411 = or i32 %3376, 160
  %3412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.f32 %3412, 0
  %3414 = extractvalue %dx.types.ResRet.f32 %3412, 1
  %3415 = extractvalue %dx.types.ResRet.f32 %3412, 2
  %3416 = extractvalue %dx.types.ResRet.f32 %3412, 3
  %3417 = or i32 %3376, 192
  %3418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3417, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.i32 %3418, 0
  %3420 = or i32 %3376, 208
  %3421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3420, i32 undef)  ; BufferLoad(srv,index,wot)
  %3422 = extractvalue %dx.types.ResRet.f32 %3421, 0
  %3423 = or i32 %3376, 248
  %3424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3423, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.f32 %3424, 0
  %3426 = extractvalue %dx.types.ResRet.f32 %3424, 1
  %3427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3376, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.f32 %3427, 0
  %3429 = extractvalue %dx.types.ResRet.f32 %3427, 1
  %3430 = extractvalue %dx.types.ResRet.f32 %3427, 2
  %3431 = extractvalue %dx.types.ResRet.f32 %3427, 3
  %3432 = call float @dx.op.dot4.f32(i32 56, float %3428, float %3429, float %3430, float %3431, float %44, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3433 = or i32 %3376, 16
  %3434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3433, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.f32 %3434, 0
  %3436 = extractvalue %dx.types.ResRet.f32 %3434, 1
  %3437 = extractvalue %dx.types.ResRet.f32 %3434, 2
  %3438 = extractvalue %dx.types.ResRet.f32 %3434, 3
  %3439 = call float @dx.op.dot4.f32(i32 56, float %3435, float %3436, float %3437, float %3438, float %44, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3440 = or i32 %3376, 32
  %3441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3440, i32 undef)  ; BufferLoad(srv,index,wot)
  %3442 = extractvalue %dx.types.ResRet.f32 %3441, 0
  %3443 = extractvalue %dx.types.ResRet.f32 %3441, 1
  %3444 = extractvalue %dx.types.ResRet.f32 %3441, 2
  %3445 = extractvalue %dx.types.ResRet.f32 %3441, 3
  %3446 = call float @dx.op.dot4.f32(i32 56, float %3442, float %3443, float %3444, float %3445, float %44, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3447 = call float @dx.op.unary.f32(i32 27, float %3432)  ; Round_ni(value)
  %3448 = call float @dx.op.unary.f32(i32 6, float %3447)  ; FAbs(value)
  %3449 = call float @dx.op.unary.f32(i32 27, float %3439)  ; Round_ni(value)
  %3450 = call float @dx.op.unary.f32(i32 6, float %3449)  ; FAbs(value)
  %3451 = call float @dx.op.unary.f32(i32 6, float %3446)  ; FAbs(value)
  %3452 = call float @dx.op.unary.f32(i32 27, float %3451)  ; Round_ni(value)
  %3453 = fadd fast float %3450, %3448
  %3454 = fadd fast float %3453, %3452
  %3455 = fcmp fast oeq float %3454, 0.000000e+00
  %3456 = call float @dx.op.dot4.f32(i32 56, float %3428, float %3429, float %3430, float %3431, float %3294, float %3295, float %3296, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3457 = call float @dx.op.dot4.f32(i32 56, float %3435, float %3436, float %3437, float %3438, float %3294, float %3295, float %3296, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3458 = call float @dx.op.dot4.f32(i32 56, float %3428, float %3429, float %3430, float %3431, float %3297, float %3298, float %3299, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3459 = call float @dx.op.dot4.f32(i32 56, float %3435, float %3436, float %3437, float %3438, float %3297, float %3298, float %3299, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3460 = fsub fast float %3456, %3432
  %3461 = fsub fast float %3458, %3432
  %3462 = fsub fast float %3457, %3439
  %3463 = fsub fast float %3459, %3439
  %3464 = call float @dx.op.dot3.f32(i32 55, float %3379, float %3380, float %3381, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %3465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3466 = extractvalue %dx.types.CBufRet.f32 %3465, 2
  %3467 = fadd fast float %3466, %3464
  %3468 = call float @dx.op.unary.f32(i32 7, float %3467)  ; Saturate(value)
  %3469 = extractvalue %dx.types.CBufRet.f32 %3465, 0
  %3470 = fcmp fast ogt float %3468, %3469
  %3471 = and i1 %3455, %3470
  br i1 %3471, label %3493, label %3472

; <label>:3472                                    ; preds = %3759, %3576, %3493, %3350
  %3473 = phi float [ %3352, %3493 ], [ %3579, %3576 ], [ %3579, %3759 ], [ %3352, %3350 ]
  %3474 = phi float [ %3353, %3493 ], [ %3353, %3576 ], [ %3734, %3759 ], [ %3353, %3350 ]
  %3475 = phi float [ %3354, %3493 ], [ %3354, %3576 ], [ %3733, %3759 ], [ %3354, %3350 ]
  %3476 = phi float [ %3355, %3493 ], [ %3355, %3576 ], [ %3731, %3759 ], [ %3355, %3350 ]
  %3477 = phi float [ %3356, %3493 ], [ %3356, %3576 ], [ %3703, %3759 ], [ %3356, %3350 ]
  %3478 = phi float [ %3357, %3493 ], [ %3357, %3576 ], [ %3701, %3759 ], [ %3357, %3350 ]
  %3479 = phi float [ %3358, %3493 ], [ %3358, %3576 ], [ %3769, %3759 ], [ %3358, %3350 ]
  %3480 = phi float [ %3359, %3493 ], [ %3359, %3576 ], [ %3770, %3759 ], [ %3359, %3350 ]
  %3481 = phi float [ %3360, %3493 ], [ %3360, %3576 ], [ %3771, %3759 ], [ %3360, %3350 ]
  %3482 = phi float [ %3361, %3493 ], [ %3361, %3576 ], [ %3682, %3759 ], [ %3361, %3350 ]
  %3483 = phi float [ %3362, %3493 ], [ %3362, %3576 ], [ %3683, %3759 ], [ %3362, %3350 ]
  %3484 = phi float [ %3363, %3493 ], [ %3363, %3576 ], [ %3684, %3759 ], [ %3363, %3350 ]
  %3485 = phi float [ %3364, %3493 ], [ %3364, %3576 ], [ %3711, %3759 ], [ %3364, %3350 ]
  %3486 = phi float [ %3365, %3493 ], [ %3365, %3576 ], [ %3708, %3759 ], [ %3365, %3350 ]
  %3487 = phi float [ %3366, %3493 ], [ %3366, %3576 ], [ %3705, %3759 ], [ %3366, %3350 ]
  %3488 = phi float [ %3367, %3493 ], [ %3367, %3576 ], [ %3699, %3759 ], [ %3367, %3350 ]
  %3489 = phi float [ %3368, %3493 ], [ %3368, %3576 ], [ %3694, %3759 ], [ %3368, %3350 ]
  %3490 = phi float [ %3369, %3493 ], [ %3369, %3576 ], [ %3695, %3759 ], [ %3369, %3350 ]
  %3491 = phi float [ %3370, %3493 ], [ %3370, %3576 ], [ %3696, %3759 ], [ %3370, %3350 ]
  %3492 = icmp eq i32 %3374, 0
  br i1 %3492, label %3772, label %3350

; <label>:3493                                    ; preds = %3350
  %3494 = extractvalue %dx.types.ResRet.f32 %3378, 3
  %3495 = extractvalue %dx.types.ResRet.f32 %3397, 3
  %3496 = extractvalue %dx.types.ResRet.f32 %3397, 1
  %3497 = extractvalue %dx.types.ResRet.f32 %3397, 0
  %3498 = extractvalue %dx.types.ResRet.f32 %3387, 1
  %3499 = extractvalue %dx.types.ResRet.f32 %3387, 0
  %3500 = extractvalue %dx.types.ResRet.i32 %3383, 3
  %3501 = extractvalue %dx.types.ResRet.i32 %3383, 2
  %3502 = bitcast float %3494 to i32
  %3503 = add i32 %3500, 0
  %3504 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3503, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3505 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3506 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3504, %dx.types.Handle %3505, float %3432, float %3439, float undef, float undef, i32 0, i32 0, i32 undef, float %3460, float %3462, float undef, float %3461, float %3463, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3507 = extractvalue %dx.types.ResRet.f32 %3506, 0
  %3508 = fmul fast float %3507, %3499
  %3509 = fadd fast float %3508, %3498
  %3510 = call float @dx.op.unary.f32(i32 7, float %3509)  ; Saturate(value)
  %3511 = fmul fast float %3432, %3392
  %3512 = call float @dx.op.tertiary.f32(i32 46, float %3393, float %3439, float %3511)  ; FMad(a,b,c)
  %3513 = fadd fast float %3512, %3497
  %3514 = fmul fast float %3432, %3394
  %3515 = call float @dx.op.tertiary.f32(i32 46, float %3395, float %3439, float %3514)  ; FMad(a,b,c)
  %3516 = fadd fast float %3515, %3496
  %3517 = fmul fast float %3460, %3392
  %3518 = call float @dx.op.tertiary.f32(i32 46, float %3393, float %3462, float %3517)  ; FMad(a,b,c)
  %3519 = fmul fast float %3460, %3394
  %3520 = call float @dx.op.tertiary.f32(i32 46, float %3395, float %3462, float %3519)  ; FMad(a,b,c)
  %3521 = fmul fast float %3461, %3392
  %3522 = call float @dx.op.tertiary.f32(i32 46, float %3393, float %3463, float %3521)  ; FMad(a,b,c)
  %3523 = fmul fast float %3461, %3394
  %3524 = call float @dx.op.tertiary.f32(i32 46, float %3395, float %3463, float %3523)  ; FMad(a,b,c)
  %3525 = add i32 %3501, 0
  %3526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3525, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3527 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3526, %dx.types.Handle %3505, float %3513, float %3516, float undef, float undef, i32 0, i32 0, i32 undef, float %3518, float %3520, float undef, float %3522, float %3524, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3528 = extractvalue %dx.types.ResRet.f32 %3527, 0
  %3529 = and i32 %3502, 1024
  %3530 = icmp ne i32 %3529, 0
  %3531 = fcmp fast ogt float %3528, 0x3FE0101020000000
  %3532 = uitofp i1 %3531 to float
  %3533 = select i1 %3530, float %3532, float %3528
  %3534 = and i32 %3502, 8192
  %3535 = icmp ne i32 %3534, 0
  %3536 = select i1 %3535, float %3495, float 1.000000e+00
  %3537 = fmul fast float %3432, 2.000000e+00
  %3538 = fadd fast float %3537, -1.000000e+00
  %3539 = call float @dx.op.unary.f32(i32 6, float %3538)  ; FAbs(value)
  %3540 = fmul fast float %3539, %3425
  %3541 = fsub fast float %3540, %3425
  %3542 = call float @dx.op.unary.f32(i32 7, float %3541)  ; Saturate(value)
  %3543 = fmul fast float %3439, 2.000000e+00
  %3544 = fadd fast float %3543, -1.000000e+00
  %3545 = call float @dx.op.unary.f32(i32 6, float %3544)  ; FAbs(value)
  %3546 = fmul fast float %3545, %3426
  %3547 = fsub fast float %3546, %3426
  %3548 = call float @dx.op.unary.f32(i32 7, float %3547)  ; Saturate(value)
  %3549 = fmul fast float %3451, %3388
  %3550 = fsub fast float %3549, %3388
  %3551 = call float @dx.op.unary.f32(i32 7, float %3550)  ; Saturate(value)
  %3552 = fmul fast float %3510, %3536
  %3553 = fmul fast float %3552, %3507
  %3554 = fmul fast float %3553, %3542
  %3555 = fmul fast float %3554, %3533
  %3556 = fmul fast float %3555, %3548
  %3557 = fmul fast float %3556, %3551
  %3558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3559 = extractvalue %dx.types.CBufRet.f32 %3558, 1
  %3560 = extractvalue %dx.types.CBufRet.f32 %3558, 0
  %3561 = fsub fast float %3468, %3560
  %3562 = fmul fast float %3561, %3559
  %3563 = call float @dx.op.unary.f32(i32 7, float %3562)  ; Saturate(value)
  %3564 = fmul fast float %3557, %3389
  %3565 = fadd fast float %3557, %3389
  %3566 = fmul fast float %3565, %3398
  %3567 = fsub fast float %3566, %3398
  %3568 = call float @dx.op.unary.f32(i32 7, float %3567)  ; Saturate(value)
  %3569 = and i32 %3502, 128
  %3570 = icmp ne i32 %3569, 0
  %3571 = select i1 %3570, float %3568, float %3564
  %3572 = fmul fast float %3571, %3563
  %3573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3574 = extractvalue %dx.types.CBufRet.f32 %3573, 0
  %3575 = fcmp fast ugt float %3572, %3574
  br i1 %3575, label %3576, label %3472

; <label>:3576                                    ; preds = %3493
  %3577 = select i1 %3535, float %3572, float 0.000000e+00
  %3578 = fadd fast float %3577, %3352
  %3579 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  br i1 %3535, label %3472, label %3580

; <label>:3580                                    ; preds = %3576
  %3581 = and i32 %3502, 4
  %3582 = and i32 %3502, 8
  %3583 = add i32 %3384, 0
  %3584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3583, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3585 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3586 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3584, %dx.types.Handle %3585, float %3513, float %3516, float undef, float undef, i32 0, i32 0, i32 undef, float %3518, float %3520, float undef, float %3522, float %3524, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3587 = extractvalue %dx.types.ResRet.f32 %3586, 0
  %3588 = extractvalue %dx.types.ResRet.f32 %3586, 1
  %3589 = extractvalue %dx.types.ResRet.f32 %3586, 2
  %3590 = extractvalue %dx.types.ResRet.f32 %3586, 3
  %3591 = bitcast float %3410 to i32
  %3592 = and i32 %3591, 255
  %3593 = uitofp i32 %3592 to float
  %3594 = lshr i32 %3591, 8
  %3595 = and i32 %3594, 255
  %3596 = uitofp i32 %3595 to float
  %3597 = fmul fast float %3590, %3593
  %3598 = fadd fast float %3597, %3596
  %3599 = fmul fast float %3598, 0x3F70101000000000
  %3600 = add i32 %3385, 0
  %3601 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3600, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3602 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3601, %dx.types.Handle %3585, float %3513, float %3516, float undef, float undef, i32 0, i32 0, i32 undef, float %3518, float %3520, float undef, float %3522, float %3524, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = extractvalue %dx.types.ResRet.f32 %3602, 1
  %3605 = extractvalue %dx.types.ResRet.f32 %3602, 2
  %3606 = extractvalue %dx.types.ResRet.f32 %3602, 3
  %3607 = bitcast float %3404 to i32
  %3608 = and i32 %3607, 255
  %3609 = uitofp i32 %3608 to float
  %3610 = lshr i32 %3607, 8
  %3611 = and i32 %3610, 255
  %3612 = uitofp i32 %3611 to float
  %3613 = lshr i32 %3607, 16
  %3614 = and i32 %3613, 255
  %3615 = uitofp i32 %3614 to float
  %3616 = fmul fast float %3615, 0x3F70101000000000
  %3617 = fmul fast float %3603, %3609
  %3618 = fadd fast float %3617, %3612
  %3619 = fmul fast float %3618, 0x3F70101000000000
  %3620 = fadd fast float %3604, -5.000000e-01
  %3621 = fadd fast float %3606, -5.000000e-01
  %3622 = fmul fast float %3620, %3616
  %3623 = fmul fast float %3621, %3616
  %3624 = fadd fast float %3622, 5.000000e-01
  %3625 = fadd fast float %3623, 5.000000e-01
  %3626 = fmul fast float %3587, %3413
  %3627 = fmul fast float %3588, %3414
  %3628 = fmul fast float %3589, %3415
  %3629 = fmul fast float %3624, 2.000000e+00
  %3630 = fadd fast float %3629, -1.000000e+00
  %3631 = fmul fast float %3625, 2.000000e+00
  %3632 = fadd fast float %3631, -1.000000e+00
  %3633 = fadd fast float %3630, %3632
  %3634 = fmul fast float %3633, 5.000000e-01
  %3635 = fsub fast float %3630, %3632
  %3636 = fmul fast float %3635, 5.000000e-01
  %3637 = call float @dx.op.unary.f32(i32 6, float %3634)  ; FAbs(value)
  %3638 = fsub fast float 1.000000e+00, %3637
  %3639 = call float @dx.op.unary.f32(i32 6, float %3636)  ; FAbs(value)
  %3640 = fsub fast float %3638, %3639
  %3641 = call float @dx.op.dot3.f32(i32 55, float %3634, float %3636, float %3640, float %3634, float %3636, float %3640)  ; Dot3(ax,ay,az,bx,by,bz)
  %3642 = call float @dx.op.unary.f32(i32 25, float %3641)  ; Rsqrt(value)
  %3643 = fmul fast float %3634, %3642
  %3644 = fmul fast float %3636, %3642
  %3645 = fmul fast float %3642, %3640
  %3646 = fmul fast float %3645, %3379
  %3647 = fmul fast float %3645, %3380
  %3648 = fmul fast float %3645, %3381
  %3649 = fmul fast float %3643, %3401
  %3650 = fmul fast float %3643, %3402
  %3651 = fmul fast float %3643, %3403
  %3652 = fadd fast float %3649, %3646
  %3653 = fadd fast float %3650, %3647
  %3654 = fadd fast float %3651, %3648
  %3655 = fmul fast float %3644, %3407
  %3656 = fmul fast float %3644, %3408
  %3657 = fmul fast float %3644, %3409
  %3658 = fadd fast float %3652, %3655
  %3659 = fadd fast float %3653, %3656
  %3660 = fadd fast float %3654, %3657
  %3661 = call float @dx.op.dot3.f32(i32 55, float %3658, float %3659, float %3660, float %3658, float %3659, float %3660)  ; Dot3(ax,ay,az,bx,by,bz)
  %3662 = call float @dx.op.unary.f32(i32 25, float %3661)  ; Rsqrt(value)
  %3663 = fmul fast float %3658, %3662
  %3664 = fmul fast float %3659, %3662
  %3665 = fmul fast float %3660, %3662
  %3666 = icmp ne i32 %3582, 0
  %3667 = select i1 %3666, float 1.000000e+00, float 0.000000e+00
  %3668 = fmul fast float %3572, %3667
  %3669 = and i32 %3502, 1
  %3670 = icmp eq i32 %3669, 0
  br i1 %3670, label %3671, label %3675

; <label>:3671                                    ; preds = %3580
  %3672 = fsub fast float %3663, %3361
  %3673 = fsub fast float %3664, %3362
  %3674 = fsub fast float %3665, %3363
  br label %3675

; <label>:3675                                    ; preds = %3671, %3580
  %3676 = phi float [ %3672, %3671 ], [ %3663, %3580 ]
  %3677 = phi float [ %3673, %3671 ], [ %3664, %3580 ]
  %3678 = phi float [ %3674, %3671 ], [ %3665, %3580 ]
  %3679 = fmul float %3678, %3668
  %3680 = fmul float %3677, %3668
  %3681 = fmul float %3676, %3668
  %3682 = fadd fast float %3681, %3361
  %3683 = fadd fast float %3680, %3362
  %3684 = fadd fast float %3679, %3363
  %3685 = icmp ne i32 %3581, 0
  %3686 = select i1 %3685, float 1.000000e+00, float 0.000000e+00
  %3687 = fmul fast float %3572, %3686
  %3688 = fsub fast float %3626, %3368
  %3689 = fsub fast float %3627, %3369
  %3690 = fsub fast float %3628, %3370
  %3691 = fmul fast float %3688, %3687
  %3692 = fmul fast float %3689, %3687
  %3693 = fmul fast float %3690, %3687
  %3694 = fadd fast float %3691, %3368
  %3695 = fadd fast float %3692, %3369
  %3696 = fadd fast float %3693, %3370
  %3697 = fsub fast float %3599, %3367
  %3698 = fmul fast float %3697, %3687
  %3699 = fadd fast float %3698, %3367
  %3700 = fmul fast float %3687, %3357
  %3701 = fsub fast float %3357, %3700
  %3702 = fmul fast float %3687, %3356
  %3703 = fsub fast float %3356, %3702
  %3704 = fadd fast float %3572, %3366
  %3705 = call float @dx.op.unary.f32(i32 7, float %3704)  ; Saturate(value)
  %3706 = fsub fast float %3619, %3365
  %3707 = fmul fast float %3706, %3668
  %3708 = fadd fast float %3707, %3365
  %3709 = fsub fast float %3605, %3364
  %3710 = fmul fast float %3709, %3668
  %3711 = fadd fast float %3710, %3364
  %3712 = call float @dx.op.dot3.f32(i32 55, float %3626, float %3627, float %3628, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3714 = extractvalue %dx.types.CBufRet.f32 %3713, 0
  %3715 = extractvalue %dx.types.CBufRet.f32 %3713, 1
  %3716 = fmul fast float %3715, %3712
  %3717 = fadd fast float %3716, %3714
  %3718 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3719 = bitcast float %3416 to i32
  %3720 = and i32 %3719, 65535
  %3721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3720)  ; LegacyF16ToF32(value)
  %3722 = lshr i32 %3719, 16
  %3723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3722)  ; LegacyF16ToF32(value)
  %3724 = fcmp fast oge float %3721, 0.000000e+00
  %3725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3726 = extractvalue %dx.types.CBufRet.f32 %3725, 0
  %3727 = select i1 %3724, float %3721, float %3726
  %3728 = fadd fast float %3727, %3723
  %3729 = fsub fast float %3718, %3355
  %3730 = fmul fast float %3729, %3572
  %3731 = fadd fast float %3730, %3355
  %3732 = fmul fast float %3728, %3572
  %3733 = call float @dx.op.binary.f32(i32 35, float %3354, float %3732)  ; FMax(a,b)
  %3734 = call float @dx.op.binary.f32(i32 35, float %3353, float %3572)  ; FMax(a,b)
  %3735 = and i32 %3502, 16
  %3736 = icmp eq i32 %3735, 0
  br i1 %3736, label %3759, label %3737

; <label>:3737                                    ; preds = %3675
  %3738 = bitcast float %3422 to i32
  %3739 = add i32 %3419, 0
  %3740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3739, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3741 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3740, %dx.types.Handle %3585, float %3513, float %3516, float undef, float undef, i32 0, i32 0, i32 undef, float %3518, float %3520, float undef, float %3522, float %3524, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3742 = extractvalue %dx.types.ResRet.f32 %3741, 0
  %3743 = extractvalue %dx.types.ResRet.f32 %3741, 1
  %3744 = extractvalue %dx.types.ResRet.f32 %3741, 2
  %3745 = and i32 %3738, 65535
  %3746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3745)  ; LegacyF16ToF32(value)
  %3747 = fmul fast float %3742, %3413
  %3748 = fmul fast float %3743, %3414
  %3749 = fmul fast float %3744, %3415
  %3750 = and i32 %3502, 16384
  %3751 = icmp ne i32 %3750, 0
  %3752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3753 = extractvalue %dx.types.CBufRet.f32 %3752, 0
  %3754 = select i1 %3751, float %3753, float 1.000000e+00
  %3755 = fmul fast float %3754, %3746
  %3756 = fmul fast float %3747, %3755
  %3757 = fmul fast float %3748, %3755
  %3758 = fmul fast float %3749, %3755
  br label %3759

; <label>:3759                                    ; preds = %3737, %3675
  %3760 = phi float [ %3756, %3737 ], [ 0.000000e+00, %3675 ]
  %3761 = phi float [ %3757, %3737 ], [ 0.000000e+00, %3675 ]
  %3762 = phi float [ %3758, %3737 ], [ 0.000000e+00, %3675 ]
  %3763 = fsub fast float %3760, %3358
  %3764 = fsub fast float %3761, %3359
  %3765 = fsub fast float %3762, %3360
  %3766 = fmul fast float %3763, %3572
  %3767 = fmul fast float %3764, %3572
  %3768 = fmul fast float %3765, %3572
  %3769 = fadd fast float %3766, %3358
  %3770 = fadd fast float %3767, %3359
  %3771 = fadd fast float %3768, %3360
  br label %3472

; <label>:3772                                    ; preds = %3472
  br label %3773

; <label>:3773                                    ; preds = %3772, %3287
  %3774 = phi float [ 0.000000e+00, %3287 ], [ %3473, %3772 ]
  %3775 = phi float [ %1035, %3287 ], [ %3474, %3772 ]
  %3776 = phi float [ %3257, %3287 ], [ %3475, %3772 ]
  %3777 = phi float [ %3255, %3287 ], [ %3476, %3772 ]
  %3778 = phi float [ 0.000000e+00, %3287 ], [ %3477, %3772 ]
  %3779 = phi float [ 0.000000e+00, %3287 ], [ %3478, %3772 ]
  %3780 = phi float [ %3249, %3287 ], [ %3479, %3772 ]
  %3781 = phi float [ %3250, %3287 ], [ %3480, %3772 ]
  %3782 = phi float [ %3251, %3287 ], [ %3481, %3772 ]
  %3783 = phi float [ %3283, %3287 ], [ %3482, %3772 ]
  %3784 = phi float [ %3284, %3287 ], [ %3483, %3772 ]
  %3785 = phi float [ %3285, %3287 ], [ %3484, %3772 ]
  %3786 = phi float [ %3254, %3287 ], [ %3485, %3772 ]
  %3787 = phi float [ %3253, %3287 ], [ %3486, %3772 ]
  %3788 = phi float [ 0.000000e+00, %3287 ], [ %3487, %3772 ]
  %3789 = phi float [ %3252, %3287 ], [ %3488, %3772 ]
  %3790 = phi float [ %3246, %3287 ], [ %3489, %3772 ]
  %3791 = phi float [ %3247, %3287 ], [ %3490, %3772 ]
  %3792 = phi float [ %3248, %3287 ], [ %3491, %3772 ]
  %3793 = call float @dx.op.dot3.f32(i32 55, float %3783, float %3784, float %3785, float %3783, float %3784, float %3785)  ; Dot3(ax,ay,az,bx,by,bz)
  %3794 = call float @dx.op.unary.f32(i32 25, float %3793)  ; Rsqrt(value)
  %3795 = fmul fast float %3794, %3783
  %3796 = fmul fast float %3794, %3784
  %3797 = fmul fast float %3794, %3785
  %3798 = fadd fast float %3788, %1035
  %3799 = call float @dx.op.unary.f32(i32 7, float %3798)  ; Saturate(value)
  %3800 = call float @dx.op.dot3.f32(i32 55, float %3795, float %3796, float %3797, float %3795, float %3796, float %3797)  ; Dot3(ax,ay,az,bx,by,bz)
  %3801 = call float @dx.op.unary.f32(i32 25, float %3800)  ; Rsqrt(value)
  %3802 = fmul fast float %3801, %3795
  %3803 = fmul fast float %3801, %3796
  %3804 = fmul fast float %3801, %3797
  br label %3805

; <label>:3805                                    ; preds = %3773, %3243
  %3806 = phi float [ %3802, %3773 ], [ %3283, %3243 ]
  %3807 = phi float [ %3803, %3773 ], [ %3284, %3243 ]
  %3808 = phi float [ %3804, %3773 ], [ %3285, %3243 ]
  %3809 = phi float [ %3790, %3773 ], [ %3246, %3243 ]
  %3810 = phi float [ %3791, %3773 ], [ %3247, %3243 ]
  %3811 = phi float [ %3792, %3773 ], [ %3248, %3243 ]
  %3812 = phi float [ %3780, %3773 ], [ %3249, %3243 ]
  %3813 = phi float [ %3781, %3773 ], [ %3250, %3243 ]
  %3814 = phi float [ %3782, %3773 ], [ %3251, %3243 ]
  %3815 = phi float [ %3789, %3773 ], [ %3252, %3243 ]
  %3816 = phi float [ %3799, %3773 ], [ %1035, %3243 ]
  %3817 = phi float [ %3787, %3773 ], [ %3253, %3243 ]
  %3818 = phi float [ %3786, %3773 ], [ %3254, %3243 ]
  %3819 = phi float [ %3779, %3773 ], [ 0.000000e+00, %3243 ]
  %3820 = phi float [ %3778, %3773 ], [ 0.000000e+00, %3243 ]
  %3821 = phi float [ %3774, %3773 ], [ 0.000000e+00, %3243 ]
  %3822 = phi float [ %3776, %3773 ], [ %3257, %3243 ]
  %3823 = phi float [ %3775, %3773 ], [ %1035, %3243 ]
  %3824 = phi float [ %3777, %3773 ], [ %3255, %3243 ]
  %3825 = fadd fast float %3815, 0xBFB99999A0000000
  %3826 = call float @dx.op.unary.f32(i32 7, float %3825)  ; Saturate(value)
  %3827 = fmul fast float %3826, 0x3FF1C71C80000000
  %3828 = call float @dx.op.binary.f32(i32 36, float %3815, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3829 = fsub fast float 1.000000e+00, %3827
  %3830 = call float @dx.op.unary.f32(i32 7, float %3829)  ; Saturate(value)
  %3831 = fmul fast float %3830, %3809
  %3832 = fmul fast float %3830, %3810
  %3833 = fmul fast float %3830, %3811
  %3834 = call float @dx.op.unary.f32(i32 7, float %3831)  ; Saturate(value)
  %3835 = call float @dx.op.unary.f32(i32 7, float %3832)  ; Saturate(value)
  %3836 = call float @dx.op.unary.f32(i32 7, float %3833)  ; Saturate(value)
  %3837 = fmul fast float %3827, %3809
  %3838 = fmul fast float %3827, %3810
  %3839 = fmul fast float %3827, %3811
  %3840 = fadd fast float %3837, %3828
  %3841 = fadd fast float %3838, %3828
  %3842 = fadd fast float %3839, %3828
  %3843 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3844 = call float @dx.op.unary.f32(i32 7, float %3841)  ; Saturate(value)
  %3845 = call float @dx.op.unary.f32(i32 7, float %3842)  ; Saturate(value)
  %3846 = call float @dx.op.unary.f32(i32 7, float %3817)  ; Saturate(value)
  %3847 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3848 = extractvalue %dx.types.CBufRet.i32 %3847, 3
  %3849 = and i32 %3848, 8
  %3850 = icmp ne i32 %3849, 0
  %3851 = call float @dx.op.binary.f32(i32 35, float %3834, float %3809)  ; FMax(a,b)
  %3852 = call float @dx.op.binary.f32(i32 35, float %3835, float %3809)  ; FMax(a,b)
  %3853 = call float @dx.op.binary.f32(i32 35, float %3836, float %3809)  ; FMax(a,b)
  %3854 = call float @dx.op.dot3.f32(i32 55, float %3834, float %3835, float %3836, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3855 = select i1 %240, float %3809, float %3834
  %3856 = select i1 %240, float %3854, float %3835
  %3857 = select i1 %240, float 1.000000e+00, float %3836
  %3858 = select i1 %3850, float %3851, float %3855
  %3859 = select i1 %3850, float %3852, float %3856
  %3860 = select i1 %3850, float %3853, float %3857
  %3861 = and i32 %216, 3
  %3862 = select i1 %210, i32 %3861, i32 0
  %3863 = icmp eq i32 %3862, 1
  br i1 %3863, label %3864, label %3940

; <label>:3864                                    ; preds = %3805
  %3865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3866 = extractvalue %dx.types.CBufRet.f32 %3865, 0
  %3867 = extractvalue %dx.types.CBufRet.f32 %3865, 1
  %3868 = fadd fast float %3866, %179
  %3869 = fadd fast float %3867, %180
  %3870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3871 = extractvalue %dx.types.CBufRet.f32 %3870, 0
  %3872 = extractvalue %dx.types.CBufRet.f32 %3870, 1
  %3873 = fsub fast float %3868, %3871
  %3874 = fsub fast float %3869, %3872
  %3875 = fmul fast float %3873, %3873
  %3876 = fmul fast float %3874, %3874
  %3877 = fadd fast float %3875, %3876
  %3878 = call float @dx.op.unary.f32(i32 24, float %3877)  ; Sqrt(value)
  %3879 = extractvalue %dx.types.CBufRet.f32 %3870, 2
  %3880 = fcmp fast olt float %3878, %3879
  br i1 %3880, label %3881, label %3934

; <label>:3881                                    ; preds = %3864
  %3882 = extractvalue %dx.types.CBufRet.f32 %3865, 2
  %3883 = fadd fast float %3882, %181
  %3884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3885 = extractvalue %dx.types.CBufRet.f32 %3884, 0
  %3886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3887 = extractvalue %dx.types.CBufRet.f32 %3886, 0
  %3888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3889 = extractvalue %dx.types.CBufRet.f32 %3888, 0
  %3890 = extractvalue %dx.types.CBufRet.f32 %3884, 1
  %3891 = extractvalue %dx.types.CBufRet.f32 %3886, 1
  %3892 = extractvalue %dx.types.CBufRet.f32 %3888, 1
  %3893 = extractvalue %dx.types.CBufRet.f32 %3884, 3
  %3894 = extractvalue %dx.types.CBufRet.f32 %3886, 3
  %3895 = extractvalue %dx.types.CBufRet.f32 %3888, 3
  %3896 = fadd fast float %3893, %3868
  %3897 = fadd fast float %3894, %3869
  %3898 = fadd fast float %3883, %3895
  %3899 = fmul fast float %3896, %3885
  %3900 = call float @dx.op.tertiary.f32(i32 46, float %3897, float %3887, float %3899)  ; FMad(a,b,c)
  %3901 = call float @dx.op.tertiary.f32(i32 46, float %3898, float %3889, float %3900)  ; FMad(a,b,c)
  %3902 = fmul fast float %3896, %3890
  %3903 = call float @dx.op.tertiary.f32(i32 46, float %3897, float %3891, float %3902)  ; FMad(a,b,c)
  %3904 = call float @dx.op.tertiary.f32(i32 46, float %3898, float %3892, float %3903)  ; FMad(a,b,c)
  %3905 = fsub fast float %3901, %3893
  %3906 = fsub fast float %3904, %3894
  %3907 = fsub fast float %3905, %3871
  %3908 = fadd fast float %3907, %3879
  %3909 = fsub fast float %3906, %3872
  %3910 = fadd fast float %3909, %3879
  %3911 = extractvalue %dx.types.CBufRet.f32 %3870, 3
  %3912 = fmul fast float %3908, %3911
  %3913 = fmul fast float %3910, %3911
  %3914 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3915 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3916 = fsub fast float 1.000000e+00, %3914
  %3917 = fsub fast float 1.000000e+00, %3915
  %3918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %36, float %3916, float %3917, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3919 = extractvalue %dx.types.ResRet.f32 %3918, 0
  %3920 = fcmp fast ugt float %3919, 0.000000e+00
  br i1 %3920, label %3921, label %3934

; <label>:3921                                    ; preds = %3881
  %3922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3922, 2
  %3924 = fmul fast float %3923, %3919
  %3925 = extractvalue %dx.types.CBufRet.f32 %3922, 3
  %3926 = fadd fast float %3925, %3924
  %3927 = extractvalue %dx.types.CBufRet.f32 %3888, 2
  %3928 = fadd fast float %3926, %3895
  %3929 = fmul fast float %3901, %3889
  %3930 = call float @dx.op.tertiary.f32(i32 46, float %3904, float %3892, float %3929)  ; FMad(a,b,c)
  %3931 = call float @dx.op.tertiary.f32(i32 46, float %3928, float %3927, float %3930)  ; FMad(a,b,c)
  %3932 = fsub fast float %3931, %3895
  %3933 = fsub fast float %3932, %3882
  br label %3934

; <label>:3934                                    ; preds = %3921, %3881, %3864
  %3935 = phi i1 [ true, %3921 ], [ false, %3881 ], [ false, %3864 ]
  %3936 = phi float [ %3933, %3921 ], [ -1.310720e+05, %3881 ], [ -1.310720e+05, %3864 ]
  %3937 = fsub fast float %3936, %181
  %3938 = call float @dx.op.unary.f32(i32 7, float %3937)  ; Saturate(value)
  %3939 = select i1 %3935, float %3938, float 1.000000e+00
  br label %3940

; <label>:3940                                    ; preds = %3934, %3805
  %3941 = phi float [ %3939, %3934 ], [ 0.000000e+00, %3805 ]
  %3942 = icmp eq i32 %3862, 3
  %3943 = select i1 %3942, float 1.000000e+00, float %3941
  %3944 = call float @dx.op.binary.f32(i32 35, float %3821, float %3943)  ; FMax(a,b)
  %3945 = fcmp fast olt float %3943, 1.000000e+00
  %3946 = fcmp uge float %57, 0.000000e+00
  %3947 = and i1 %3946, %3945
  br i1 %3947, label %3948, label %3958

; <label>:3948                                    ; preds = %3940
  %3949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %57, float %58, float %59, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 0
  %3951 = extractvalue %dx.types.ResRet.f32 %3949, 1
  %3952 = extractvalue %dx.types.ResRet.f32 %3949, 2
  %3953 = fadd fast float %3950, %3944
  %3954 = fcmp ule float %56, 0.000000e+00
  %3955 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3956 = select i1 %3954, float %3955, float 1.000000e+00
  %3957 = fmul fast float %3956, %3952
  br label %3958

; <label>:3958                                    ; preds = %3948, %3940
  %3959 = phi float [ %3953, %3948 ], [ %3944, %3940 ]
  %3960 = phi float [ %3951, %3948 ], [ 0.000000e+00, %3940 ]
  %3961 = phi float [ %3957, %3948 ], [ 0.000000e+00, %3940 ]
  %3962 = call float @dx.op.unary.f32(i32 7, float %3959)  ; Saturate(value)
  %3963 = call float @dx.op.unary.f32(i32 7, float %3960)  ; Saturate(value)
  %3964 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  %3965 = fcmp fast une float %3963, 0.000000e+00
  %3966 = fcmp fast une float %3964, 0.000000e+00
  %3967 = or i1 %3965, %3966
  br i1 %3967, label %3968, label %4527

; <label>:3968                                    ; preds = %3958
  br i1 %3965, label %3969, label %4242

; <label>:3969                                    ; preds = %3968
  %3970 = call float @dx.op.unary.f32(i32 23, float %3818)  ; Log(value)
  %3971 = fmul fast float %3970, 4.000000e+00
  %3972 = call float @dx.op.unary.f32(i32 21, float %3971)  ; Exp(value)
  %3973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3974 = extractvalue %dx.types.CBufRet.f32 %3973, 0
  %3975 = fmul fast float %3974, %44
  %3976 = fmul fast float %3974, %45
  %3977 = fmul fast float %3974, %46
  %3978 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %3979 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %3980 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %3981 = call float @dx.op.unary.f32(i32 23, float %3978)  ; Log(value)
  %3982 = call float @dx.op.unary.f32(i32 23, float %3979)  ; Log(value)
  %3983 = call float @dx.op.unary.f32(i32 23, float %3980)  ; Log(value)
  %3984 = fmul fast float %3981, 4.000000e+00
  %3985 = fmul fast float %3982, 4.000000e+00
  %3986 = fmul fast float %3983, 4.000000e+00
  %3987 = call float @dx.op.unary.f32(i32 21, float %3984)  ; Exp(value)
  %3988 = call float @dx.op.unary.f32(i32 21, float %3985)  ; Exp(value)
  %3989 = call float @dx.op.unary.f32(i32 21, float %3986)  ; Exp(value)
  %3990 = fadd fast float %3988, %3987
  %3991 = fadd fast float %3990, %3989
  %3992 = fdiv fast float 1.000000e+00, %3991
  %3993 = fmul fast float %3992, %3987
  %3994 = fcmp fast ogt float %53, 0.000000e+00
  %3995 = fcmp fast ogt float %54, 0.000000e+00
  %3996 = fcmp fast ogt float %55, 0.000000e+00
  %3997 = fcmp fast olt float %53, 0.000000e+00
  %3998 = fcmp fast olt float %54, 0.000000e+00
  %3999 = fcmp fast olt float %55, 0.000000e+00
  %4000 = zext i1 %3994 to i32
  %4001 = zext i1 %3995 to i32
  %4002 = zext i1 %3996 to i32
  %4003 = zext i1 %3997 to i32
  %4004 = zext i1 %3998 to i32
  %4005 = zext i1 %3999 to i32
  %4006 = sub nsw i32 %4000, %4003
  %4007 = sub nsw i32 %4001, %4004
  %4008 = sub nsw i32 %4002, %4005
  %4009 = call float @dx.op.unary.f32(i32 83, float %3975)  ; DerivCoarseX(value)
  %4010 = call float @dx.op.unary.f32(i32 83, float %3976)  ; DerivCoarseX(value)
  %4011 = call float @dx.op.unary.f32(i32 83, float %3977)  ; DerivCoarseX(value)
  %4012 = call float @dx.op.unary.f32(i32 84, float %3975)  ; DerivCoarseY(value)
  %4013 = call float @dx.op.unary.f32(i32 84, float %3976)  ; DerivCoarseY(value)
  %4014 = call float @dx.op.unary.f32(i32 84, float %3977)  ; DerivCoarseY(value)
  %4015 = fcmp fast ole float %251, %3993
  %4016 = fmul fast float %3992, %3990
  %4017 = fcmp fast ole float %251, %4016
  %4018 = select i1 %4017, float %3977, float %3975
  %4019 = select i1 %4017, float %3975, float %3976
  %4020 = select i1 %4015, float %3976, float %4018
  %4021 = select i1 %4015, float %3977, float %4019
  %4022 = select i1 %4017, float %4011, float %4009
  %4023 = select i1 %4017, float %4009, float %4010
  %4024 = select i1 %4015, float %4010, float %4022
  %4025 = select i1 %4015, float %4011, float %4023
  %4026 = select i1 %4017, float %4014, float %4012
  %4027 = select i1 %4017, float %4012, float %4013
  %4028 = select i1 %4015, float %4013, float %4026
  %4029 = select i1 %4015, float %4014, float %4027
  %4030 = call float @dx.op.unary.f32(i32 27, float %4020)  ; Round_ni(value)
  %4031 = call float @dx.op.unary.f32(i32 27, float %4021)  ; Round_ni(value)
  %4032 = fptosi float %4030 to i32
  %4033 = fptosi float %4031 to i32
  %4034 = xor i32 %4033, %4032
  %4035 = sitofp i32 %4034 to float
  %4036 = fptosi float %4035 to i32
  %4037 = sitofp i32 %4036 to float
  %4038 = fmul fast float %4037, 0x3FE3C6EF40000000
  %4039 = frem fast float %4030, 2.560000e+02
  %4040 = frem fast float %4031, 2.560000e+02
  %4041 = fptoui float %4039 to i32
  %4042 = fptoui float %4040 to i32
  %4043 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %4041, i32 %4042, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4044 = extractvalue %dx.types.ResRet.f32 %4043, 0
  %4045 = extractvalue %dx.types.ResRet.f32 %4043, 1
  %4046 = extractvalue %dx.types.ResRet.f32 %4043, 2
  %4047 = fadd fast float %4044, %4038
  %4048 = fadd fast float %4045, %4038
  %4049 = fadd fast float %4046, %4038
  %4050 = call float @dx.op.unary.f32(i32 22, float %4047)  ; Frc(value)
  %4051 = call float @dx.op.unary.f32(i32 22, float %4048)  ; Frc(value)
  %4052 = call float @dx.op.unary.f32(i32 22, float %4049)  ; Frc(value)
  %4053 = fmul fast float %4052, 0x401921FB60000000
  %4054 = call float @dx.op.unary.f32(i32 13, float %4053)  ; Sin(value)
  %4055 = call float @dx.op.unary.f32(i32 12, float %4053)  ; Cos(value)
  %4056 = fsub fast float -0.000000e+00, %4055
  %4057 = fmul fast float %4055, %4020
  %4058 = call float @dx.op.tertiary.f32(i32 46, float %4054, float %4021, float %4057)  ; FMad(a,b,c)
  %4059 = fmul fast float %4054, %4020
  %4060 = call float @dx.op.tertiary.f32(i32 46, float %4056, float %4021, float %4059)  ; FMad(a,b,c)
  %4061 = fadd fast float %4058, %4050
  %4062 = fadd fast float %4060, %4051
  %4063 = extractvalue %dx.types.CBufRet.f32 %3973, 3
  %4064 = bitcast float %4063 to i32
  %4065 = icmp eq i32 %4064, 0
  br i1 %4065, label %4104, label %4066

; <label>:4066                                    ; preds = %3969
  %4067 = add i32 %4064, 0
  %4068 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4067, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4069 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4068, %dx.types.Handle %89, float %4061, float %4062, float undef, float undef, i32 0, i32 0, i32 undef, float %4024, float %4025, float undef, float %4028, float %4029, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4070 = extractvalue %dx.types.ResRet.f32 %4069, 0
  %4071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4072 = extractvalue %dx.types.CBufRet.f32 %4071, 1
  %4073 = extractvalue %dx.types.CBufRet.f32 %4071, 2
  %4074 = fsub fast float 1.000000e+00, %3963
  %4075 = call float @dx.op.binary.f32(i32 35, float %4074, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4076 = bitcast float %3963 to i32
  %4077 = sitofp i32 %4076 to float
  %4078 = fadd fast float %4077, 0xC1CFBF8940000000
  %4079 = fmul fast float %4073, %4078
  %4080 = fadd fast float %4079, 0x41CFBF8940000000
  %4081 = fptosi float %4080 to i32
  %4082 = bitcast i32 %4081 to float
  %4083 = bitcast float %4075 to i32
  %4084 = sitofp i32 %4083 to float
  %4085 = fadd fast float %4084, 0xC1CFBF8940000000
  %4086 = fmul fast float %4085, %4073
  %4087 = fadd fast float %4086, 0x41CFBF8940000000
  %4088 = fptosi float %4087 to i32
  %4089 = bitcast i32 %4088 to float
  %4090 = fmul fast float %4082, %4072
  %4091 = fmul fast float %4089, %4072
  %4092 = fsub fast float %4075, %4090
  %4093 = fadd fast float %4091, %4075
  %4094 = call float @dx.op.unary.f32(i32 7, float %4092)  ; Saturate(value)
  %4095 = call float @dx.op.unary.f32(i32 7, float %4093)  ; Saturate(value)
  %4096 = fsub fast float %4070, %4094
  %4097 = fsub fast float %4095, %4094
  %4098 = bitcast float %4097 to i32
  %4099 = sub nsw i32 2129859010, %4098
  %4100 = bitcast i32 %4099 to float
  %4101 = fmul fast float %4100, %4096
  %4102 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4103 = fcmp fast olt float %4102, 0x3F70101020000000
  br i1 %4103, label %4242, label %4104

; <label>:4104                                    ; preds = %4066, %3969
  %4105 = phi float [ %4102, %4066 ], [ %3963, %3969 ]
  %4106 = fmul fast float %4105, %3972
  %4107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.i32 %4107, 1
  %4109 = extractvalue %dx.types.CBufRet.i32 %4107, 0
  %4110 = add i32 %4109, 0
  %4111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4110, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4112 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4111, %dx.types.Handle %88, float %4061, float %4062, float undef, float undef, i32 0, i32 0, i32 undef, float %4024, float %4025, float undef, float %4028, float %4029, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = extractvalue %dx.types.ResRet.f32 %4112, 1
  %4115 = extractvalue %dx.types.ResRet.f32 %4112, 2
  %4116 = extractvalue %dx.types.ResRet.f32 %4112, 3
  %4117 = and i32 %4108, 255
  %4118 = uitofp i32 %4117 to float
  %4119 = lshr i32 %4108, 8
  %4120 = and i32 %4119, 255
  %4121 = uitofp i32 %4120 to float
  %4122 = fmul fast float %4116, %4118
  %4123 = fadd fast float %4122, %4121
  %4124 = fmul fast float %4123, 0x3F70101000000000
  %4125 = fadd fast float %4124, 0xBFB99999A0000000
  %4126 = call float @dx.op.unary.f32(i32 7, float %4125)  ; Saturate(value)
  %4127 = fmul fast float %4126, 0x3FF1C71C80000000
  %4128 = call float @dx.op.binary.f32(i32 36, float %4124, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4129 = fsub fast float 1.000000e+00, %4127
  %4130 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  %4131 = fmul fast float %4130, %4113
  %4132 = fmul fast float %4130, %4114
  %4133 = fmul fast float %4130, %4115
  %4134 = call float @dx.op.unary.f32(i32 7, float %4131)  ; Saturate(value)
  %4135 = call float @dx.op.unary.f32(i32 7, float %4132)  ; Saturate(value)
  %4136 = call float @dx.op.unary.f32(i32 7, float %4133)  ; Saturate(value)
  %4137 = fmul fast float %4127, %4113
  %4138 = fmul fast float %4127, %4114
  %4139 = fmul fast float %4127, %4115
  %4140 = fadd fast float %4137, %4128
  %4141 = fadd fast float %4138, %4128
  %4142 = fadd fast float %4139, %4128
  %4143 = call float @dx.op.unary.f32(i32 7, float %4140)  ; Saturate(value)
  %4144 = call float @dx.op.unary.f32(i32 7, float %4141)  ; Saturate(value)
  %4145 = call float @dx.op.unary.f32(i32 7, float %4142)  ; Saturate(value)
  %4146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4147 = extractvalue %dx.types.CBufRet.i32 %4146, 3
  %4148 = extractvalue %dx.types.CBufRet.i32 %4146, 2
  %4149 = add i32 %4148, 0
  %4150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4149, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4151 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4150, %dx.types.Handle %88, float %4061, float %4062, float undef, float undef, i32 0, i32 0, i32 undef, float %4024, float %4025, float undef, float %4028, float %4029, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = extractvalue %dx.types.ResRet.f32 %4151, 1
  %4154 = extractvalue %dx.types.ResRet.f32 %4151, 2
  %4155 = extractvalue %dx.types.ResRet.f32 %4151, 3
  %4156 = and i32 %4147, 255
  %4157 = uitofp i32 %4156 to float
  %4158 = lshr i32 %4147, 8
  %4159 = and i32 %4158, 255
  %4160 = uitofp i32 %4159 to float
  %4161 = lshr i32 %4147, 16
  %4162 = and i32 %4161, 255
  %4163 = uitofp i32 %4162 to float
  %4164 = fmul fast float %4163, 0x3F70101000000000
  %4165 = fmul fast float %4152, %4157
  %4166 = fadd fast float %4165, %4160
  %4167 = fmul fast float %4166, 0x3F70101000000000
  %4168 = fadd fast float %4153, -5.000000e-01
  %4169 = fadd fast float %4155, -5.000000e-01
  %4170 = fmul fast float %4168, %4164
  %4171 = fmul fast float %4169, %4164
  %4172 = fadd fast float %4170, 5.000000e-01
  %4173 = fadd fast float %4171, 5.000000e-01
  %4174 = fmul fast float %4172, 2.000000e+00
  %4175 = fadd fast float %4174, -1.000000e+00
  %4176 = fmul fast float %4173, 2.000000e+00
  %4177 = fadd fast float %4176, -1.000000e+00
  %4178 = fadd fast float %4175, %4177
  %4179 = fmul fast float %4178, 5.000000e-01
  %4180 = fsub fast float %4175, %4177
  %4181 = fmul fast float %4180, 5.000000e-01
  %4182 = call float @dx.op.unary.f32(i32 6, float %4179)  ; FAbs(value)
  %4183 = fsub fast float 1.000000e+00, %4182
  %4184 = call float @dx.op.unary.f32(i32 6, float %4181)  ; FAbs(value)
  %4185 = fsub fast float %4183, %4184
  %4186 = call float @dx.op.dot3.f32(i32 55, float %4179, float %4181, float %4185, float %4179, float %4181, float %4185)  ; Dot3(ax,ay,az,bx,by,bz)
  %4187 = call float @dx.op.unary.f32(i32 25, float %4186)  ; Rsqrt(value)
  %4188 = fmul fast float %4179, %4187
  %4189 = fmul fast float %4181, %4187
  %4190 = select i1 %4017, i32 %4007, i32 %4008
  %4191 = select i1 %4015, i32 %4006, i32 %4190
  %4192 = sitofp i32 %4191 to float
  %4193 = fmul fast float %4185, %4192
  %4194 = fmul fast float %4193, %4187
  %4195 = select i1 %4017, float %4194, float %4189
  %4196 = select i1 %4017, float %4189, float %4194
  %4197 = select i1 %4015, float %4194, float %4188
  %4198 = select i1 %4015, float %4189, float %4195
  %4199 = select i1 %4015, float %4188, float %4196
  %4200 = fsub fast float %4134, %3858
  %4201 = fsub fast float %4135, %3859
  %4202 = fsub fast float %4136, %3860
  %4203 = fmul fast float %4200, %4106
  %4204 = fmul fast float %4201, %4106
  %4205 = fmul fast float %4202, %4106
  %4206 = fadd fast float %4203, %3858
  %4207 = fadd fast float %4204, %3859
  %4208 = fadd fast float %4205, %3860
  %4209 = fsub fast float %4143, %3843
  %4210 = fsub fast float %4144, %3844
  %4211 = fsub fast float %4145, %3845
  %4212 = fmul fast float %4209, %4106
  %4213 = fmul fast float %4210, %4106
  %4214 = fmul fast float %4211, %4106
  %4215 = fadd fast float %4212, %3843
  %4216 = fadd fast float %4213, %3844
  %4217 = fadd fast float %4214, %3845
  %4218 = fadd fast float %4197, %3806
  %4219 = fadd fast float %4198, %3807
  %4220 = fadd fast float %4199, %3808
  %4221 = call float @dx.op.dot3.f32(i32 55, float %4218, float %4219, float %4220, float %4218, float %4219, float %4220)  ; Dot3(ax,ay,az,bx,by,bz)
  %4222 = call float @dx.op.unary.f32(i32 25, float %4221)  ; Rsqrt(value)
  %4223 = fmul fast float %4218, %4222
  %4224 = fmul fast float %4219, %4222
  %4225 = fmul fast float %4220, %4222
  %4226 = fsub fast float %4223, %3806
  %4227 = fsub fast float %4224, %3807
  %4228 = fsub fast float %4225, %3808
  %4229 = fmul fast float %4226, %4106
  %4230 = fmul fast float %4227, %4106
  %4231 = fmul fast float %4228, %4106
  %4232 = fadd fast float %4229, %3806
  %4233 = fadd fast float %4230, %3807
  %4234 = fadd fast float %4231, %3808
  %4235 = call float @dx.op.binary.f32(i32 36, float %3818, float %4154)  ; FMin(a,b)
  %4236 = fsub fast float %4235, %3818
  %4237 = fmul fast float %4236, %4106
  %4238 = fadd fast float %4237, %3818
  %4239 = fsub fast float %4167, %3846
  %4240 = fmul fast float %4239, %4106
  %4241 = fadd fast float %4240, %3846
  br label %4242

; <label>:4242                                    ; preds = %4104, %4066, %3968
  %4243 = phi float [ %4206, %4104 ], [ %3858, %4066 ], [ %3858, %3968 ]
  %4244 = phi float [ %4207, %4104 ], [ %3859, %4066 ], [ %3859, %3968 ]
  %4245 = phi float [ %4208, %4104 ], [ %3860, %4066 ], [ %3860, %3968 ]
  %4246 = phi float [ %4215, %4104 ], [ %3843, %4066 ], [ %3843, %3968 ]
  %4247 = phi float [ %4216, %4104 ], [ %3844, %4066 ], [ %3844, %3968 ]
  %4248 = phi float [ %4217, %4104 ], [ %3845, %4066 ], [ %3845, %3968 ]
  %4249 = phi float [ %4232, %4104 ], [ %3806, %4066 ], [ %3806, %3968 ]
  %4250 = phi float [ %4233, %4104 ], [ %3807, %4066 ], [ %3807, %3968 ]
  %4251 = phi float [ %4234, %4104 ], [ %3808, %4066 ], [ %3808, %3968 ]
  %4252 = phi float [ %4241, %4104 ], [ %3846, %4066 ], [ %3846, %3968 ]
  %4253 = phi float [ %4238, %4104 ], [ %3818, %4066 ], [ %3818, %3968 ]
  br i1 %3966, label %4254, label %4527

; <label>:4254                                    ; preds = %4242
  %4255 = call float @dx.op.unary.f32(i32 23, float %4253)  ; Log(value)
  %4256 = fmul fast float %4255, 4.000000e+00
  %4257 = call float @dx.op.unary.f32(i32 21, float %4256)  ; Exp(value)
  %4258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4259 = extractvalue %dx.types.CBufRet.f32 %4258, 0
  %4260 = fmul fast float %4259, %44
  %4261 = fmul fast float %4259, %45
  %4262 = fmul fast float %4259, %46
  %4263 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %4264 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %4265 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %4266 = call float @dx.op.unary.f32(i32 23, float %4263)  ; Log(value)
  %4267 = call float @dx.op.unary.f32(i32 23, float %4264)  ; Log(value)
  %4268 = call float @dx.op.unary.f32(i32 23, float %4265)  ; Log(value)
  %4269 = fmul fast float %4266, 4.000000e+00
  %4270 = fmul fast float %4267, 4.000000e+00
  %4271 = fmul fast float %4268, 4.000000e+00
  %4272 = call float @dx.op.unary.f32(i32 21, float %4269)  ; Exp(value)
  %4273 = call float @dx.op.unary.f32(i32 21, float %4270)  ; Exp(value)
  %4274 = call float @dx.op.unary.f32(i32 21, float %4271)  ; Exp(value)
  %4275 = fadd fast float %4273, %4272
  %4276 = fadd fast float %4275, %4274
  %4277 = fdiv fast float 1.000000e+00, %4276
  %4278 = fmul fast float %4277, %4272
  %4279 = fcmp fast ogt float %53, 0.000000e+00
  %4280 = fcmp fast ogt float %54, 0.000000e+00
  %4281 = fcmp fast ogt float %55, 0.000000e+00
  %4282 = fcmp fast olt float %53, 0.000000e+00
  %4283 = fcmp fast olt float %54, 0.000000e+00
  %4284 = fcmp fast olt float %55, 0.000000e+00
  %4285 = zext i1 %4279 to i32
  %4286 = zext i1 %4280 to i32
  %4287 = zext i1 %4281 to i32
  %4288 = zext i1 %4282 to i32
  %4289 = zext i1 %4283 to i32
  %4290 = zext i1 %4284 to i32
  %4291 = sub nsw i32 %4285, %4288
  %4292 = sub nsw i32 %4286, %4289
  %4293 = sub nsw i32 %4287, %4290
  %4294 = call float @dx.op.unary.f32(i32 83, float %4260)  ; DerivCoarseX(value)
  %4295 = call float @dx.op.unary.f32(i32 83, float %4261)  ; DerivCoarseX(value)
  %4296 = call float @dx.op.unary.f32(i32 83, float %4262)  ; DerivCoarseX(value)
  %4297 = call float @dx.op.unary.f32(i32 84, float %4260)  ; DerivCoarseY(value)
  %4298 = call float @dx.op.unary.f32(i32 84, float %4261)  ; DerivCoarseY(value)
  %4299 = call float @dx.op.unary.f32(i32 84, float %4262)  ; DerivCoarseY(value)
  %4300 = fcmp fast ole float %251, %4278
  %4301 = fmul fast float %4277, %4275
  %4302 = fcmp fast ole float %251, %4301
  %4303 = select i1 %4302, float %4262, float %4260
  %4304 = select i1 %4302, float %4260, float %4261
  %4305 = select i1 %4300, float %4261, float %4303
  %4306 = select i1 %4300, float %4262, float %4304
  %4307 = select i1 %4302, float %4296, float %4294
  %4308 = select i1 %4302, float %4294, float %4295
  %4309 = select i1 %4300, float %4295, float %4307
  %4310 = select i1 %4300, float %4296, float %4308
  %4311 = select i1 %4302, float %4299, float %4297
  %4312 = select i1 %4302, float %4297, float %4298
  %4313 = select i1 %4300, float %4298, float %4311
  %4314 = select i1 %4300, float %4299, float %4312
  %4315 = call float @dx.op.unary.f32(i32 27, float %4305)  ; Round_ni(value)
  %4316 = call float @dx.op.unary.f32(i32 27, float %4306)  ; Round_ni(value)
  %4317 = fptosi float %4315 to i32
  %4318 = fptosi float %4316 to i32
  %4319 = xor i32 %4318, %4317
  %4320 = sitofp i32 %4319 to float
  %4321 = fptosi float %4320 to i32
  %4322 = sitofp i32 %4321 to float
  %4323 = fmul fast float %4322, 0x3FE3C6EF40000000
  %4324 = frem fast float %4315, 2.560000e+02
  %4325 = frem fast float %4316, 2.560000e+02
  %4326 = fptoui float %4324 to i32
  %4327 = fptoui float %4325 to i32
  %4328 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %4326, i32 %4327, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4329 = extractvalue %dx.types.ResRet.f32 %4328, 0
  %4330 = extractvalue %dx.types.ResRet.f32 %4328, 1
  %4331 = extractvalue %dx.types.ResRet.f32 %4328, 2
  %4332 = fadd fast float %4329, %4323
  %4333 = fadd fast float %4330, %4323
  %4334 = fadd fast float %4331, %4323
  %4335 = call float @dx.op.unary.f32(i32 22, float %4332)  ; Frc(value)
  %4336 = call float @dx.op.unary.f32(i32 22, float %4333)  ; Frc(value)
  %4337 = call float @dx.op.unary.f32(i32 22, float %4334)  ; Frc(value)
  %4338 = fmul fast float %4337, 0x401921FB60000000
  %4339 = call float @dx.op.unary.f32(i32 13, float %4338)  ; Sin(value)
  %4340 = call float @dx.op.unary.f32(i32 12, float %4338)  ; Cos(value)
  %4341 = fsub fast float -0.000000e+00, %4340
  %4342 = fmul fast float %4340, %4305
  %4343 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %4306, float %4342)  ; FMad(a,b,c)
  %4344 = fmul fast float %4339, %4305
  %4345 = call float @dx.op.tertiary.f32(i32 46, float %4341, float %4306, float %4344)  ; FMad(a,b,c)
  %4346 = fadd fast float %4343, %4335
  %4347 = fadd fast float %4345, %4336
  %4348 = extractvalue %dx.types.CBufRet.f32 %4258, 3
  %4349 = bitcast float %4348 to i32
  %4350 = icmp eq i32 %4349, 0
  br i1 %4350, label %4389, label %4351

; <label>:4351                                    ; preds = %4254
  %4352 = add i32 %4349, 0
  %4353 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4352, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4354 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4353, %dx.types.Handle %89, float %4346, float %4347, float undef, float undef, i32 0, i32 0, i32 undef, float %4309, float %4310, float undef, float %4313, float %4314, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4355 = extractvalue %dx.types.ResRet.f32 %4354, 0
  %4356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.f32 %4356, 1
  %4358 = extractvalue %dx.types.CBufRet.f32 %4356, 2
  %4359 = fsub fast float 1.000000e+00, %3964
  %4360 = call float @dx.op.binary.f32(i32 35, float %4359, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4361 = bitcast float %3964 to i32
  %4362 = sitofp i32 %4361 to float
  %4363 = fadd fast float %4362, 0xC1CFBF8940000000
  %4364 = fmul fast float %4358, %4363
  %4365 = fadd fast float %4364, 0x41CFBF8940000000
  %4366 = fptosi float %4365 to i32
  %4367 = bitcast i32 %4366 to float
  %4368 = bitcast float %4360 to i32
  %4369 = sitofp i32 %4368 to float
  %4370 = fadd fast float %4369, 0xC1CFBF8940000000
  %4371 = fmul fast float %4370, %4358
  %4372 = fadd fast float %4371, 0x41CFBF8940000000
  %4373 = fptosi float %4372 to i32
  %4374 = bitcast i32 %4373 to float
  %4375 = fmul fast float %4367, %4357
  %4376 = fmul fast float %4374, %4357
  %4377 = fsub fast float %4360, %4375
  %4378 = fadd fast float %4376, %4360
  %4379 = call float @dx.op.unary.f32(i32 7, float %4377)  ; Saturate(value)
  %4380 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4381 = fsub fast float %4355, %4379
  %4382 = fsub fast float %4380, %4379
  %4383 = bitcast float %4382 to i32
  %4384 = sub nsw i32 2129859010, %4383
  %4385 = bitcast i32 %4384 to float
  %4386 = fmul fast float %4385, %4381
  %4387 = call float @dx.op.unary.f32(i32 7, float %4386)  ; Saturate(value)
  %4388 = fcmp fast olt float %4387, 0x3F70101020000000
  br i1 %4388, label %4527, label %4389

; <label>:4389                                    ; preds = %4351, %4254
  %4390 = phi float [ %4387, %4351 ], [ %3964, %4254 ]
  %4391 = fmul fast float %4390, %4257
  %4392 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.i32 %4392, 1
  %4394 = extractvalue %dx.types.CBufRet.i32 %4392, 0
  %4395 = add i32 %4394, 0
  %4396 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4395, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4397 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4396, %dx.types.Handle %88, float %4346, float %4347, float undef, float undef, i32 0, i32 0, i32 undef, float %4309, float %4310, float undef, float %4313, float %4314, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4398 = extractvalue %dx.types.ResRet.f32 %4397, 0
  %4399 = extractvalue %dx.types.ResRet.f32 %4397, 1
  %4400 = extractvalue %dx.types.ResRet.f32 %4397, 2
  %4401 = extractvalue %dx.types.ResRet.f32 %4397, 3
  %4402 = and i32 %4393, 255
  %4403 = uitofp i32 %4402 to float
  %4404 = lshr i32 %4393, 8
  %4405 = and i32 %4404, 255
  %4406 = uitofp i32 %4405 to float
  %4407 = fmul fast float %4401, %4403
  %4408 = fadd fast float %4407, %4406
  %4409 = fmul fast float %4408, 0x3F70101000000000
  %4410 = fadd fast float %4409, 0xBFB99999A0000000
  %4411 = call float @dx.op.unary.f32(i32 7, float %4410)  ; Saturate(value)
  %4412 = fmul fast float %4411, 0x3FF1C71C80000000
  %4413 = call float @dx.op.binary.f32(i32 36, float %4409, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4414 = fsub fast float 1.000000e+00, %4412
  %4415 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4416 = fmul fast float %4415, %4398
  %4417 = fmul fast float %4415, %4399
  %4418 = fmul fast float %4415, %4400
  %4419 = call float @dx.op.unary.f32(i32 7, float %4416)  ; Saturate(value)
  %4420 = call float @dx.op.unary.f32(i32 7, float %4417)  ; Saturate(value)
  %4421 = call float @dx.op.unary.f32(i32 7, float %4418)  ; Saturate(value)
  %4422 = fmul fast float %4412, %4398
  %4423 = fmul fast float %4412, %4399
  %4424 = fmul fast float %4412, %4400
  %4425 = fadd fast float %4422, %4413
  %4426 = fadd fast float %4423, %4413
  %4427 = fadd fast float %4424, %4413
  %4428 = call float @dx.op.unary.f32(i32 7, float %4425)  ; Saturate(value)
  %4429 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4430 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4432 = extractvalue %dx.types.CBufRet.i32 %4431, 3
  %4433 = extractvalue %dx.types.CBufRet.i32 %4431, 2
  %4434 = add i32 %4433, 0
  %4435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4434, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4436 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4435, %dx.types.Handle %88, float %4346, float %4347, float undef, float undef, i32 0, i32 0, i32 undef, float %4309, float %4310, float undef, float %4313, float %4314, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4437 = extractvalue %dx.types.ResRet.f32 %4436, 0
  %4438 = extractvalue %dx.types.ResRet.f32 %4436, 1
  %4439 = extractvalue %dx.types.ResRet.f32 %4436, 2
  %4440 = extractvalue %dx.types.ResRet.f32 %4436, 3
  %4441 = and i32 %4432, 255
  %4442 = uitofp i32 %4441 to float
  %4443 = lshr i32 %4432, 8
  %4444 = and i32 %4443, 255
  %4445 = uitofp i32 %4444 to float
  %4446 = lshr i32 %4432, 16
  %4447 = and i32 %4446, 255
  %4448 = uitofp i32 %4447 to float
  %4449 = fmul fast float %4448, 0x3F70101000000000
  %4450 = fmul fast float %4437, %4442
  %4451 = fadd fast float %4450, %4445
  %4452 = fmul fast float %4451, 0x3F70101000000000
  %4453 = fadd fast float %4438, -5.000000e-01
  %4454 = fadd fast float %4440, -5.000000e-01
  %4455 = fmul fast float %4453, %4449
  %4456 = fmul fast float %4454, %4449
  %4457 = fadd fast float %4455, 5.000000e-01
  %4458 = fadd fast float %4456, 5.000000e-01
  %4459 = fmul fast float %4457, 2.000000e+00
  %4460 = fadd fast float %4459, -1.000000e+00
  %4461 = fmul fast float %4458, 2.000000e+00
  %4462 = fadd fast float %4461, -1.000000e+00
  %4463 = fadd fast float %4460, %4462
  %4464 = fmul fast float %4463, 5.000000e-01
  %4465 = fsub fast float %4460, %4462
  %4466 = fmul fast float %4465, 5.000000e-01
  %4467 = call float @dx.op.unary.f32(i32 6, float %4464)  ; FAbs(value)
  %4468 = fsub fast float 1.000000e+00, %4467
  %4469 = call float @dx.op.unary.f32(i32 6, float %4466)  ; FAbs(value)
  %4470 = fsub fast float %4468, %4469
  %4471 = call float @dx.op.dot3.f32(i32 55, float %4464, float %4466, float %4470, float %4464, float %4466, float %4470)  ; Dot3(ax,ay,az,bx,by,bz)
  %4472 = call float @dx.op.unary.f32(i32 25, float %4471)  ; Rsqrt(value)
  %4473 = fmul fast float %4464, %4472
  %4474 = fmul fast float %4466, %4472
  %4475 = select i1 %4302, i32 %4292, i32 %4293
  %4476 = select i1 %4300, i32 %4291, i32 %4475
  %4477 = sitofp i32 %4476 to float
  %4478 = fmul fast float %4470, %4477
  %4479 = fmul fast float %4478, %4472
  %4480 = select i1 %4302, float %4479, float %4474
  %4481 = select i1 %4302, float %4474, float %4479
  %4482 = select i1 %4300, float %4479, float %4473
  %4483 = select i1 %4300, float %4474, float %4480
  %4484 = select i1 %4300, float %4473, float %4481
  %4485 = fsub fast float %4419, %4243
  %4486 = fsub fast float %4420, %4244
  %4487 = fsub fast float %4421, %4245
  %4488 = fmul fast float %4485, %4391
  %4489 = fmul fast float %4486, %4391
  %4490 = fmul fast float %4487, %4391
  %4491 = fadd fast float %4488, %4243
  %4492 = fadd fast float %4489, %4244
  %4493 = fadd fast float %4490, %4245
  %4494 = fsub fast float %4428, %4246
  %4495 = fsub fast float %4429, %4247
  %4496 = fsub fast float %4430, %4248
  %4497 = fmul fast float %4494, %4391
  %4498 = fmul fast float %4495, %4391
  %4499 = fmul fast float %4496, %4391
  %4500 = fadd fast float %4497, %4246
  %4501 = fadd fast float %4498, %4247
  %4502 = fadd fast float %4499, %4248
  %4503 = fadd fast float %4482, %4249
  %4504 = fadd fast float %4483, %4250
  %4505 = fadd fast float %4484, %4251
  %4506 = call float @dx.op.dot3.f32(i32 55, float %4503, float %4504, float %4505, float %4503, float %4504, float %4505)  ; Dot3(ax,ay,az,bx,by,bz)
  %4507 = call float @dx.op.unary.f32(i32 25, float %4506)  ; Rsqrt(value)
  %4508 = fmul fast float %4503, %4507
  %4509 = fmul fast float %4504, %4507
  %4510 = fmul fast float %4505, %4507
  %4511 = fsub fast float %4508, %4249
  %4512 = fsub fast float %4509, %4250
  %4513 = fsub fast float %4510, %4251
  %4514 = fmul fast float %4511, %4391
  %4515 = fmul fast float %4512, %4391
  %4516 = fmul fast float %4513, %4391
  %4517 = fadd fast float %4514, %4249
  %4518 = fadd fast float %4515, %4250
  %4519 = fadd fast float %4516, %4251
  %4520 = call float @dx.op.binary.f32(i32 36, float %4253, float %4439)  ; FMin(a,b)
  %4521 = fsub fast float %4520, %4253
  %4522 = fmul fast float %4521, %4391
  %4523 = fadd fast float %4522, %4253
  %4524 = fsub fast float %4452, %4252
  %4525 = fmul fast float %4524, %4391
  %4526 = fadd fast float %4525, %4252
  br label %4527

; <label>:4527                                    ; preds = %4389, %4351, %4242, %3958
  %4528 = phi float [ %4491, %4389 ], [ %4243, %4351 ], [ %4243, %4242 ], [ %3858, %3958 ]
  %4529 = phi float [ %4492, %4389 ], [ %4244, %4351 ], [ %4244, %4242 ], [ %3859, %3958 ]
  %4530 = phi float [ %4493, %4389 ], [ %4245, %4351 ], [ %4245, %4242 ], [ %3860, %3958 ]
  %4531 = phi float [ %4500, %4389 ], [ %4246, %4351 ], [ %4246, %4242 ], [ %3843, %3958 ]
  %4532 = phi float [ %4501, %4389 ], [ %4247, %4351 ], [ %4247, %4242 ], [ %3844, %3958 ]
  %4533 = phi float [ %4502, %4389 ], [ %4248, %4351 ], [ %4248, %4242 ], [ %3845, %3958 ]
  %4534 = phi float [ %4517, %4389 ], [ %4249, %4351 ], [ %4249, %4242 ], [ %3806, %3958 ]
  %4535 = phi float [ %4518, %4389 ], [ %4250, %4351 ], [ %4250, %4242 ], [ %3807, %3958 ]
  %4536 = phi float [ %4519, %4389 ], [ %4251, %4351 ], [ %4251, %4242 ], [ %3808, %3958 ]
  %4537 = phi float [ %4526, %4389 ], [ %4252, %4351 ], [ %4252, %4242 ], [ %3846, %3958 ]
  %4538 = phi float [ %4523, %4389 ], [ %4253, %4351 ], [ %4253, %4242 ], [ %3818, %3958 ]
  %4539 = fcmp fast une float %3962, 0.000000e+00
  %4540 = call float @dx.op.dot3.f32(i32 55, float %179, float %180, float %181, float %179, float %180, float %181)  ; Dot3(ax,ay,az,bx,by,bz)
  %4541 = call float @dx.op.unary.f32(i32 25, float %4540)  ; Rsqrt(value)
  br i1 %4539, label %4549, label %4542

; <label>:4542                                    ; preds = %4527
  %4543 = fmul fast float %4541, %179
  %4544 = fmul fast float %4541, %180
  %4545 = fmul fast float %4541, %181
  %4546 = fsub fast float -0.000000e+00, %4543
  %4547 = fsub fast float -0.000000e+00, %4544
  %4548 = fsub fast float -0.000000e+00, %4545
  br label %4716

; <label>:4549                                    ; preds = %4527
  %4550 = fmul fast float %179, %4541
  %4551 = fsub fast float -0.000000e+00, %4550
  %4552 = fmul fast float %180, %4541
  %4553 = fsub fast float -0.000000e+00, %4552
  %4554 = fmul fast float %181, %4541
  %4555 = fsub fast float -0.000000e+00, %4554
  %4556 = call float @dx.op.dot3.f32(i32 55, float %4551, float %4553, float %4555, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4557 = fmul fast float %3962, 2.500000e+00
  %4558 = call float @dx.op.unary.f32(i32 7, float %4557)  ; Saturate(value)
  %4559 = fmul fast float %3962, 0x4013FFFFE0000000
  %4560 = fadd fast float %4559, 0xBFFFFFFFE0000000
  %4561 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4562 = fmul fast float %3962, 0x4004000020000000
  %4563 = fadd fast float %4562, 0xBFF8000040000000
  %4564 = call float @dx.op.unary.f32(i32 7, float %4563)  ; Saturate(value)
  %4565 = fmul fast float %3825, 1.000000e+01
  %4566 = call float @dx.op.unary.f32(i32 7, float %4565)  ; Saturate(value)
  %4567 = fmul fast float %4566, 2.000000e+00
  %4568 = fsub fast float 3.000000e+00, %4567
  %4569 = fmul fast float %4566, %4566
  %4570 = fmul fast float %4569, %4568
  %4571 = fsub fast float 1.000000e+00, %4570
  %4572 = fsub fast float 0x3FE3333340000000, %4537
  %4573 = fmul fast float %4572, 0x400AAAAAA0000000
  %4574 = call float @dx.op.unary.f32(i32 7, float %4573)  ; Saturate(value)
  %4575 = fmul fast float %4571, %4574
  %4576 = fmul fast float %4528, 0x3FEA2B8620000000
  %4577 = fmul fast float %4529, 0x3FEA2B8620000000
  %4578 = fmul fast float %4530, 0x3FEA2B8620000000
  %4579 = fadd fast float %4576, 0x3FC81DFBA0000000
  %4580 = fmul fast float %4579, %4528
  %4581 = fadd fast float %4580, 0x3F910E6020000000
  %4582 = fadd fast float %4577, 0x3FC81DFBA0000000
  %4583 = fmul fast float %4582, %4529
  %4584 = fadd fast float %4583, 0x3F910E6020000000
  %4585 = fadd fast float %4578, 0x3FC81DFBA0000000
  %4586 = fmul fast float %4585, %4530
  %4587 = fadd fast float %4586, 0x3F910E6020000000
  %4588 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4589 = call float @dx.op.unary.f32(i32 7, float %4584)  ; Saturate(value)
  %4590 = call float @dx.op.unary.f32(i32 7, float %4587)  ; Saturate(value)
  %4591 = fsub fast float %4588, %4528
  %4592 = fsub fast float %4589, %4529
  %4593 = fsub fast float %4590, %4530
  %4594 = fmul fast float %4591, %4558
  %4595 = fmul fast float %4594, %4575
  %4596 = fmul fast float %4592, %4558
  %4597 = fmul fast float %4596, %4575
  %4598 = fmul fast float %4593, %4558
  %4599 = fmul fast float %4598, %4575
  %4600 = fadd fast float %4595, %4528
  %4601 = fadd fast float %4597, %4529
  %4602 = fadd fast float %4599, %4530
  %4603 = fmul fast float %4538, %4538
  %4604 = fmul fast float %4603, %4603
  %4605 = fadd fast float %4561, 1.000000e+00
  %4606 = fsub fast float %4605, %4575
  %4607 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4608 = call float @dx.op.dot3.f32(i32 55, float %99, float %100, float %101, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4609 = call float @dx.op.unary.f32(i32 7, float %4608)  ; Saturate(value)
  %4610 = fsub fast float 1.000000e+00, %4604
  %4611 = call float @dx.op.binary.f32(i32 36, float %4607, float %4610)  ; FMin(a,b)
  %4612 = call float @dx.op.unary.f32(i32 7, float %4564)  ; Saturate(value)
  %4613 = call float @dx.op.binary.f32(i32 35, float %4611, float %4612)  ; FMax(a,b)
  %4614 = fadd fast float %4609, 0xBFE4CCCCC0000000
  %4615 = fmul fast float %4614, 0x4006DB6DA0000000
  %4616 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4617 = fmul fast float %4616, 2.000000e+00
  %4618 = fsub fast float 3.000000e+00, %4617
  %4619 = bitcast float %4531 to i32
  %4620 = ashr i32 %4619, 1
  %4621 = add nsw i32 %4620, 532487669
  %4622 = bitcast i32 %4621 to float
  %4623 = fsub fast float 1.000000e+00, %4622
  %4624 = bitcast float %4623 to i32
  %4625 = sub nsw i32 2129859010, %4624
  %4626 = bitcast i32 %4625 to float
  %4627 = fmul fast float %4626, 2.000000e+00
  %4628 = bitcast float %4532 to i32
  %4629 = ashr i32 %4628, 1
  %4630 = add nsw i32 %4629, 532487669
  %4631 = bitcast i32 %4630 to float
  %4632 = fsub fast float 1.000000e+00, %4631
  %4633 = bitcast float %4632 to i32
  %4634 = sub nsw i32 2129859010, %4633
  %4635 = bitcast i32 %4634 to float
  %4636 = fmul fast float %4635, 2.000000e+00
  %4637 = bitcast float %4533 to i32
  %4638 = ashr i32 %4637, 1
  %4639 = add nsw i32 %4638, 532487669
  %4640 = bitcast i32 %4639 to float
  %4641 = fsub fast float 1.000000e+00, %4640
  %4642 = bitcast float %4641 to i32
  %4643 = sub nsw i32 2129859010, %4642
  %4644 = bitcast i32 %4643 to float
  %4645 = fmul fast float %4644, 2.000000e+00
  %4646 = fsub fast float 0x4002A9FBE0000000, %4627
  %4647 = fadd fast float %4627, 0x3FD54FDF00000000
  %4648 = bitcast float %4647 to i32
  %4649 = sub nsw i32 2129859010, %4648
  %4650 = bitcast i32 %4649 to float
  %4651 = fmul fast float %4650, %4646
  %4652 = fmul fast float %4651, %4651
  %4653 = fsub fast float 0x4002A9FBE0000000, %4636
  %4654 = fadd fast float %4636, 0x3FD54FDF00000000
  %4655 = bitcast float %4654 to i32
  %4656 = sub nsw i32 2129859010, %4655
  %4657 = bitcast i32 %4656 to float
  %4658 = fmul fast float %4657, %4653
  %4659 = fmul fast float %4658, %4658
  %4660 = fsub fast float 0x4002A9FBE0000000, %4645
  %4661 = fadd fast float %4645, 0x3FD54FDF00000000
  %4662 = bitcast float %4661 to i32
  %4663 = sub nsw i32 2129859010, %4662
  %4664 = bitcast i32 %4663 to float
  %4665 = fmul fast float %4664, %4660
  %4666 = fmul fast float %4665, %4665
  %4667 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4652)  ; FMax(a,b)
  %4668 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4659)  ; FMax(a,b)
  %4669 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4666)  ; FMax(a,b)
  %4670 = fsub fast float 1.000000e+00, %4556
  %4671 = fadd fast float %4670, %4571
  %4672 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  %4673 = fsub fast float 1.000000e+00, %3943
  %4674 = fmul fast float %4613, %4673
  %4675 = fmul fast float %4616, %4616
  %4676 = fmul fast float %4675, %4674
  %4677 = fmul fast float %4676, %4618
  %4678 = fmul fast float %4673, 0xBFE99999A0000000
  %4679 = fmul fast float %4678, %4558
  %4680 = fmul fast float %4679, %4575
  %4681 = fadd fast float %4680, 1.000000e+00
  %4682 = fadd fast float %4537, -1.000000e+00
  %4683 = fmul fast float %4681, %4682
  %4684 = fadd fast float %4683, 1.000000e+00
  %4685 = fsub fast float %4667, %4531
  %4686 = fsub fast float %4668, %4532
  %4687 = fsub fast float %4669, %4533
  %4688 = fmul fast float %4677, %4685
  %4689 = fmul fast float %4677, %4686
  %4690 = fmul fast float %4677, %4687
  %4691 = fadd fast float %4688, %4531
  %4692 = fadd fast float %4689, %4532
  %4693 = fadd fast float %4690, %4533
  %4694 = fsub fast float %99, %4534
  %4695 = fsub fast float %100, %4535
  %4696 = fsub fast float %101, %4536
  %4697 = fmul fast float %4677, %4694
  %4698 = fmul fast float %4677, %4695
  %4699 = fmul fast float %4677, %4696
  %4700 = fadd fast float %4697, %4534
  %4701 = fadd fast float %4698, %4535
  %4702 = fadd fast float %4699, %4536
  %4703 = fmul fast float %4677, %4672
  %4704 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4705 = fsub fast float 1.000000e+00, %4704
  %4706 = fmul fast float %4703, %4705
  %4707 = fadd fast float %4706, %4704
  %4708 = fsub fast float 1.000000e+00, %4538
  %4709 = fmul fast float %4677, %4708
  %4710 = fadd fast float %4709, %4538
  %4711 = call float @dx.op.dot3.f32(i32 55, float %4700, float %4701, float %4702, float %4700, float %4701, float %4702)  ; Dot3(ax,ay,az,bx,by,bz)
  %4712 = call float @dx.op.unary.f32(i32 25, float %4711)  ; Rsqrt(value)
  %4713 = fmul fast float %4700, %4712
  %4714 = fmul fast float %4701, %4712
  %4715 = fmul fast float %4702, %4712
  br label %4716

; <label>:4716                                    ; preds = %4549, %4542
  %4717 = phi float [ %4548, %4542 ], [ %4555, %4549 ]
  %4718 = phi float [ %4547, %4542 ], [ %4553, %4549 ]
  %4719 = phi float [ %4546, %4542 ], [ %4551, %4549 ]
  %4720 = phi float [ %4545, %4542 ], [ %4554, %4549 ]
  %4721 = phi float [ %4544, %4542 ], [ %4552, %4549 ]
  %4722 = phi float [ %4543, %4542 ], [ %4550, %4549 ]
  %4723 = phi float [ %4528, %4542 ], [ %4600, %4549 ]
  %4724 = phi float [ %4529, %4542 ], [ %4601, %4549 ]
  %4725 = phi float [ %4530, %4542 ], [ %4602, %4549 ]
  %4726 = phi float [ %4531, %4542 ], [ %4691, %4549 ]
  %4727 = phi float [ %4532, %4542 ], [ %4692, %4549 ]
  %4728 = phi float [ %4533, %4542 ], [ %4693, %4549 ]
  %4729 = phi float [ %4534, %4542 ], [ %4713, %4549 ]
  %4730 = phi float [ %4535, %4542 ], [ %4714, %4549 ]
  %4731 = phi float [ %4536, %4542 ], [ %4715, %4549 ]
  %4732 = phi float [ %4537, %4542 ], [ %4707, %4549 ]
  %4733 = phi float [ %4538, %4542 ], [ %4710, %4549 ]
  %4734 = select i1 %240, float 0.000000e+00, float %4728
  %4735 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4730, float %4731, float %4719, float %4718, float %4717)  ; Dot3(ax,ay,az,bx,by,bz)
  %4736 = call float @dx.op.unary.f32(i32 7, float %4735)  ; Saturate(value)
  %4737 = call float @dx.op.dot3.f32(i32 55, float %4722, float %4721, float %4720, float %4729, float %4730, float %4731)  ; Dot3(ax,ay,az,bx,by,bz)
  %4738 = fmul fast float %4737, 2.000000e+00
  %4739 = fmul fast float %4738, %4729
  %4740 = fmul fast float %4738, %4730
  %4741 = fmul fast float %4738, %4731
  %4742 = fsub fast float %4722, %4739
  %4743 = fsub fast float %4721, %4740
  %4744 = fsub fast float %4720, %4741
  %4745 = call float @dx.op.binary.f32(i32 36, float %4733, float 1.000000e+00)  ; FMin(a,b)
  %4746 = fsub fast float 1.000000e+00, %4733
  %4747 = bitcast float %4746 to i32
  %4748 = sub nsw i32 2129859010, %4747
  %4749 = bitcast i32 %4748 to float
  %4750 = fsub fast float 1.000000e+00, %63
  %4751 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4752 = call float @dx.op.binary.f32(i32 35, float %4751, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4753 = fdiv fast float %4750, %4752
  %4754 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4730, float %4731, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4755 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4756 = fmul fast float %4755, 5.000000e-01
  %4757 = fadd fast float %4756, 5.000000e-01
  %4758 = fmul fast float %4757, %63
  %4759 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4730, float %4731, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %4760 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4761 = fmul fast float %4760, %4753
  %4762 = fadd fast float %4758, %4761
  %4763 = fsub fast float 5.000000e-01, %4756
  %4764 = fmul fast float %4763, %4723
  %4765 = fmul fast float %4763, %4724
  %4766 = fmul fast float %4763, %4725
  %4767 = fadd fast float %4762, %4764
  %4768 = fadd fast float %4762, %4765
  %4769 = fadd fast float %4762, %4766
  %4770 = call float @dx.op.dot3.f32(i32 55, float %4742, float %4743, float %4744, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4771 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4772 = fmul fast float %4771, 5.000000e-01
  %4773 = fadd fast float %4772, 5.000000e-01
  %4774 = fmul fast float %4773, %63
  %4775 = call float @dx.op.dot3.f32(i32 55, float %4742, float %4743, float %4744, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %4776 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4777 = fmul fast float %4776, %4753
  %4778 = fadd fast float %4774, %4777
  %4779 = fsub fast float 5.000000e-01, %4772
  %4780 = fmul fast float %4779, %4723
  %4781 = fmul fast float %4779, %4724
  %4782 = fmul fast float %4779, %4725
  %4783 = fadd fast float %4778, %4780
  %4784 = fadd fast float %4778, %4781
  %4785 = fadd fast float %4778, %4782
  %4786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.f32 %4786, 0
  %4788 = call float @dx.op.binary.f32(i32 36, float %4723, float %4787)  ; FMin(a,b)
  %4789 = fsub fast float 1.000000e+00, %4745
  %4790 = fmul fast float %4788, %4789
  %4791 = fsub fast float 1.000000e+00, %4790
  %4792 = bitcast float %4791 to i32
  %4793 = sub nsw i32 2129859010, %4792
  %4794 = bitcast i32 %4793 to float
  %4795 = call float @dx.op.binary.f32(i32 36, float %4724, float %4787)  ; FMin(a,b)
  %4796 = fmul fast float %4795, %4789
  %4797 = fsub fast float 1.000000e+00, %4796
  %4798 = bitcast float %4797 to i32
  %4799 = sub nsw i32 2129859010, %4798
  %4800 = bitcast i32 %4799 to float
  %4801 = call float @dx.op.binary.f32(i32 36, float %4725, float %4787)  ; FMin(a,b)
  %4802 = fmul fast float %4801, %4789
  %4803 = fsub fast float 1.000000e+00, %4802
  %4804 = bitcast float %4803 to i32
  %4805 = sub nsw i32 2129859010, %4804
  %4806 = bitcast i32 %4805 to float
  %4807 = fmul fast float %4745, %64
  %4808 = fmul fast float %4807, %4767
  %4809 = fmul fast float %4808, %4794
  %4810 = fmul fast float %4745, %65
  %4811 = fmul fast float %4810, %4768
  %4812 = fmul fast float %4811, %4800
  %4813 = fmul fast float %4745, %66
  %4814 = fmul fast float %4813, %4769
  %4815 = fmul fast float %4814, %4806
  %4816 = call float @dx.op.binary.f32(i32 36, float %4726, float %4787)  ; FMin(a,b)
  %4817 = fmul fast float %4816, %4789
  %4818 = fsub fast float 1.000000e+00, %4817
  %4819 = bitcast float %4818 to i32
  %4820 = sub nsw i32 2129859010, %4819
  %4821 = bitcast i32 %4820 to float
  %4822 = call float @dx.op.binary.f32(i32 36, float %4727, float %4787)  ; FMin(a,b)
  %4823 = fmul fast float %4822, %4789
  %4824 = fsub fast float 1.000000e+00, %4823
  %4825 = bitcast float %4824 to i32
  %4826 = sub nsw i32 2129859010, %4825
  %4827 = bitcast i32 %4826 to float
  %4828 = call float @dx.op.binary.f32(i32 36, float %4734, float %4787)  ; FMin(a,b)
  %4829 = fmul fast float %4828, %4789
  %4830 = fsub fast float 1.000000e+00, %4829
  %4831 = bitcast float %4830 to i32
  %4832 = sub nsw i32 2129859010, %4831
  %4833 = bitcast i32 %4832 to float
  %4834 = fmul fast float %4807, %4783
  %4835 = fmul fast float %4834, %4821
  %4836 = fmul fast float %4810, %4784
  %4837 = fmul fast float %4836, %4827
  %4838 = fmul fast float %4813, %4785
  %4839 = fmul fast float %4838, %4833
  %4840 = call float @dx.op.dot3.f32(i32 55, float %4809, float %4812, float %4815, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4841 = select i1 %240, float 0.000000e+00, float %4809
  %4842 = select i1 %240, float %4840, float %4812
  %4843 = select i1 %240, float 0.000000e+00, float %4815
  %4844 = call float @dx.op.dot3.f32(i32 55, float %4835, float %4837, float %4839, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4845 = select i1 %240, float 0.000000e+00, float %4835
  %4846 = select i1 %240, float %4844, float %4837
  %4847 = select i1 %240, float 0.000000e+00, float %4839
  %4848 = fmul fast float %4736, 9.843750e-01
  %4849 = fmul fast float %4732, 9.843750e-01
  %4850 = fadd fast float %4848, 7.812500e-03
  %4851 = fadd fast float %4849, 7.812500e-03
  %4852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %4850, float %4851, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4853 = extractvalue %dx.types.ResRet.f32 %4852, 2
  %4854 = extractvalue %dx.types.ResRet.f32 %4852, 3
  %4855 = fmul fast float %4853, %4726
  %4856 = fmul fast float %4853, %4727
  %4857 = fmul fast float %4853, %4734
  %4858 = fadd fast float %4855, %4854
  %4859 = fadd fast float %4856, %4854
  %4860 = fadd fast float %4857, %4854
  %4861 = fcmp fast ogt float %3819, 0.000000e+00
  br i1 %4861, label %4862, label %4888

; <label>:4862                                    ; preds = %4716
  %4863 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %3819, float %4736, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4864 = extractvalue %dx.types.ResRet.f32 %4863, 0
  %4865 = extractvalue %dx.types.ResRet.f32 %4863, 1
  %4866 = extractvalue %dx.types.ResRet.f32 %4863, 2
  %4867 = fadd fast float %4864, -5.000000e-01
  %4868 = fadd fast float %4865, -5.000000e-01
  %4869 = fadd fast float %4866, -5.000000e-01
  %4870 = fsub fast float 1.000000e+00, %4726
  %4871 = fsub fast float 1.000000e+00, %4727
  %4872 = fsub fast float 1.000000e+00, %4734
  %4873 = fmul fast float %4726, 4.000000e+00
  %4874 = fmul fast float %4873, %4870
  %4875 = fmul fast float %4874, %4867
  %4876 = fmul fast float %4727, 4.000000e+00
  %4877 = fmul fast float %4876, %4871
  %4878 = fmul fast float %4877, %4868
  %4879 = fmul fast float %4734, 4.000000e+00
  %4880 = fmul fast float %4879, %4872
  %4881 = fmul fast float %4880, %4869
  %4882 = fadd fast float %4875, %4858
  %4883 = fadd fast float %4878, %4859
  %4884 = fadd fast float %4881, %4860
  %4885 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4886 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4887 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  br label %4888

; <label>:4888                                    ; preds = %4862, %4716
  %4889 = phi float [ %4885, %4862 ], [ %4858, %4716 ]
  %4890 = phi float [ %4886, %4862 ], [ %4859, %4716 ]
  %4891 = phi float [ %4887, %4862 ], [ %4860, %4716 ]
  %4892 = call float @dx.op.binary.f32(i32 35, float %4890, float %4891)  ; FMax(a,b)
  %4893 = call float @dx.op.binary.f32(i32 35, float %4889, float %4892)  ; FMax(a,b)
  %4894 = fsub fast float 1.000000e+00, %4893
  %4895 = fmul fast float %4894, %4841
  %4896 = fmul fast float %4894, %4842
  %4897 = fmul fast float %4894, %4843
  %4898 = call float @dx.op.dot3.f32(i32 55, float %4723, float %4724, float %4725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4899 = fcmp fast ogt float %4898, 0x3E7FF19E20000000
  %4900 = fdiv fast float 1.000000e+00, %4898
  %4901 = select i1 %4899, float %4900, float 0.000000e+00
  %4902 = fmul fast float %4901, %4723
  %4903 = fmul fast float %4901, %4724
  %4904 = fmul fast float %4901, %4725
  %4905 = fadd fast float %4902, -1.000000e+00
  %4906 = fadd fast float %4903, -1.000000e+00
  %4907 = fadd fast float %4904, -1.000000e+00
  %4908 = fmul fast float %4905, 5.000000e-01
  %4909 = fmul fast float %4906, 5.000000e-01
  %4910 = fmul fast float %4907, 5.000000e-01
  %4911 = fadd fast float %4908, 1.000000e+00
  %4912 = fadd fast float %4909, 1.000000e+00
  %4913 = fadd fast float %4910, 1.000000e+00
  %4914 = fmul fast float %4889, %4845
  %4915 = fmul fast float %4890, %4846
  %4916 = fmul fast float %4891, %4847
  %4917 = fsub fast float 1.000000e+00, %4736
  %4918 = bitcast float %4917 to i32
  %4919 = sitofp i32 %4918 to float
  %4920 = fmul fast float %4919, 5.000000e+00
  %4921 = fadd fast float %4920, 0xC1EFBF8940000000
  %4922 = fptosi float %4921 to i32
  %4923 = bitcast i32 %4922 to float
  %4924 = fmul fast float %4923, %3820
  %4925 = fmul fast float %4841, %4924
  %4926 = fmul fast float %4925, %4894
  %4927 = fmul fast float %4926, %4911
  %4928 = fmul fast float %4842, %4924
  %4929 = fmul fast float %4928, %4894
  %4930 = fmul fast float %4929, %4912
  %4931 = fmul fast float %4843, %4924
  %4932 = fmul fast float %4931, %4894
  %4933 = fmul fast float %4932, %4913
  %4934 = fmul fast float %4895, %3816
  %4935 = fmul fast float %4896, %3816
  %4936 = fmul fast float %4897, %3816
  %4937 = fadd fast float %4914, %3812
  %4938 = fadd fast float %4937, %4927
  %4939 = fmul fast float %4938, %3816
  %4940 = fadd fast float %4915, %3813
  %4941 = fadd fast float %4940, %4930
  %4942 = fmul fast float %4941, %3816
  %4943 = fadd fast float %4916, %3814
  %4944 = fadd fast float %4943, %4933
  %4945 = fmul fast float %4944, %3816
  %4946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4947 = extractvalue %dx.types.CBufRet.f32 %4946, 3
  %4948 = fcmp fast oeq float %4947, 0.000000e+00
  br i1 %4948, label %5958, label %4949

; <label>:4949                                    ; preds = %4888
  %4950 = extractvalue %dx.types.CBufRet.f32 %4946, 0
  %4951 = extractvalue %dx.types.CBufRet.f32 %4946, 1
  %4952 = extractvalue %dx.types.CBufRet.f32 %4946, 2
  %4953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4954 = extractvalue %dx.types.CBufRet.f32 %4953, 0
  %4955 = extractvalue %dx.types.CBufRet.f32 %4953, 1
  %4956 = extractvalue %dx.types.CBufRet.f32 %4953, 2
  %4957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4958 = extractvalue %dx.types.CBufRet.f32 %4957, 0
  %4959 = extractvalue %dx.types.CBufRet.f32 %4957, 1
  %4960 = call float @dx.op.dot3.f32(i32 55, float %4954, float %4955, float %4956, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4961 = select i1 %240, float %4958, float %4954
  %4962 = select i1 %240, float %4960, float %4955
  %4963 = select i1 %240, float %4959, float %4956
  %4964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4965 = extractvalue %dx.types.CBufRet.f32 %4964, 2
  %4966 = fmul fast float %4965, %99
  %4967 = fmul fast float %4965, %100
  %4968 = fmul fast float %4965, %101
  %4969 = fadd fast float %4966, %179
  %4970 = fadd fast float %4967, %180
  %4971 = fadd fast float %4968, %181
  %4972 = fcmp fast olt float %4947, 0.000000e+00
  br i1 %4972, label %5612, label %4973

; <label>:4973                                    ; preds = %4949
  %4974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.f32 %4974, 0
  %4976 = extractvalue %dx.types.CBufRet.f32 %4974, 1
  %4977 = extractvalue %dx.types.CBufRet.f32 %4974, 2
  %4978 = extractvalue %dx.types.CBufRet.f32 %4974, 3
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = extractvalue %dx.types.CBufRet.f32 %4979, 1
  %4982 = extractvalue %dx.types.CBufRet.f32 %4979, 2
  %4983 = extractvalue %dx.types.CBufRet.f32 %4979, 3
  %4984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.f32 %4984, 0
  %4986 = extractvalue %dx.types.CBufRet.f32 %4984, 1
  %4987 = extractvalue %dx.types.CBufRet.f32 %4984, 2
  %4988 = extractvalue %dx.types.CBufRet.f32 %4984, 3
  %4989 = fmul fast float %4975, %4969
  %4990 = call float @dx.op.tertiary.f32(i32 46, float %4970, float %4976, float %4989)  ; FMad(a,b,c)
  %4991 = call float @dx.op.tertiary.f32(i32 46, float %4971, float %4977, float %4990)  ; FMad(a,b,c)
  %4992 = fadd fast float %4991, %4978
  %4993 = fmul fast float %4980, %4969
  %4994 = call float @dx.op.tertiary.f32(i32 46, float %4970, float %4981, float %4993)  ; FMad(a,b,c)
  %4995 = call float @dx.op.tertiary.f32(i32 46, float %4971, float %4982, float %4994)  ; FMad(a,b,c)
  %4996 = fadd fast float %4995, %4983
  %4997 = fmul fast float %4985, %4969
  %4998 = call float @dx.op.tertiary.f32(i32 46, float %4970, float %4986, float %4997)  ; FMad(a,b,c)
  %4999 = call float @dx.op.tertiary.f32(i32 46, float %4971, float %4987, float %4998)  ; FMad(a,b,c)
  %5000 = fadd fast float %4999, %4988
  %5001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5002 = extractvalue %dx.types.CBufRet.f32 %5001, 0
  %5003 = fcmp fast une float %5002, 0.000000e+00
  %5004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.f32 %5004, 0
  %5006 = extractvalue %dx.types.CBufRet.f32 %5004, 1
  %5007 = extractvalue %dx.types.CBufRet.f32 %5004, 3
  %5008 = fmul fast float %5007, %4992
  %5009 = fmul fast float %5007, %4996
  %5010 = fadd fast float %5008, %5005
  %5011 = fadd fast float %5009, %5006
  %5012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5013 = extractvalue %dx.types.CBufRet.f32 %5012, 0
  %5014 = extractvalue %dx.types.CBufRet.f32 %5012, 1
  %5015 = extractvalue %dx.types.CBufRet.f32 %5012, 3
  %5016 = fmul fast float %5015, %4992
  %5017 = fmul fast float %5015, %4996
  %5018 = fadd fast float %5016, %5013
  %5019 = fadd fast float %5017, %5014
  %5020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5021 = extractvalue %dx.types.CBufRet.f32 %5020, 1
  %5022 = fsub fast float %5021, %5000
  %5023 = extractvalue %dx.types.CBufRet.f32 %5020, 2
  %5024 = fmul fast float %5022, %5023
  %5025 = fsub fast float 1.000000e+00, %5024
  %5026 = call float @dx.op.unary.f32(i32 7, float %5025)  ; Saturate(value)
  br i1 %5003, label %5087, label %5027

; <label>:5027                                    ; preds = %4973
  %5028 = extractvalue %dx.types.CBufRet.f32 %5012, 2
  %5029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5030 = extractvalue %dx.types.CBufRet.f32 %5029, 2
  %5031 = fadd fast float %5030, %5028
  %5032 = fcmp fast ogt float %5031, 0.000000e+00
  br i1 %5032, label %5033, label %5057

; <label>:5033                                    ; preds = %5027
  %5034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5035 = extractvalue %dx.types.CBufRet.f32 %5034, 0
  %5036 = extractvalue %dx.types.CBufRet.f32 %5034, 1
  %5037 = fsub fast float %5018, %5035
  %5038 = fsub fast float %5019, %5036
  %5039 = fcmp fast olt float %5037, 0.000000e+00
  %5040 = fcmp fast olt float %5038, 0.000000e+00
  %5041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5042 = extractvalue %dx.types.CBufRet.f32 %5041, 0
  %5043 = extractvalue %dx.types.CBufRet.f32 %5041, 1
  %5044 = extractvalue %dx.types.CBufRet.f32 %5041, 2
  %5045 = extractvalue %dx.types.CBufRet.f32 %5041, 3
  %5046 = select i1 %5039, float %5042, float %5044
  %5047 = select i1 %5040, float %5043, float %5045
  %5048 = fmul fast float %5046, %5037
  %5049 = fmul fast float %5047, %5038
  %5050 = call float @dx.op.unary.f32(i32 6, float %5048)  ; FAbs(value)
  %5051 = call float @dx.op.unary.f32(i32 6, float %5049)  ; FAbs(value)
  %5052 = extractvalue %dx.types.CBufRet.f32 %4964, 0
  %5053 = call float @dx.op.binary.f32(i32 35, float %5050, float %5051)  ; FMax(a,b)
  %5054 = fsub fast float %5052, %5053
  %5055 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5056 = fmul fast float %5055, %5026
  br label %5057

; <label>:5057                                    ; preds = %5033, %5027
  %5058 = phi float [ %5056, %5033 ], [ 0.000000e+00, %5027 ]
  %5059 = extractvalue %dx.types.CBufRet.f32 %5004, 2
  %5060 = extractvalue %dx.types.CBufRet.f32 %5029, 1
  %5061 = fadd fast float %5060, %5059
  %5062 = fcmp fast ogt float %5061, 0.000000e+00
  br i1 %5062, label %5063, label %5087

; <label>:5063                                    ; preds = %5057
  %5064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.f32 %5064, 0
  %5066 = extractvalue %dx.types.CBufRet.f32 %5064, 1
  %5067 = fsub fast float %5010, %5065
  %5068 = fsub fast float %5011, %5066
  %5069 = fcmp fast olt float %5067, 0.000000e+00
  %5070 = fcmp fast olt float %5068, 0.000000e+00
  %5071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5072 = extractvalue %dx.types.CBufRet.f32 %5071, 0
  %5073 = extractvalue %dx.types.CBufRet.f32 %5071, 1
  %5074 = extractvalue %dx.types.CBufRet.f32 %5071, 2
  %5075 = extractvalue %dx.types.CBufRet.f32 %5071, 3
  %5076 = select i1 %5069, float %5072, float %5074
  %5077 = select i1 %5070, float %5073, float %5075
  %5078 = fmul fast float %5076, %5067
  %5079 = fmul fast float %5077, %5068
  %5080 = call float @dx.op.unary.f32(i32 6, float %5078)  ; FAbs(value)
  %5081 = call float @dx.op.unary.f32(i32 6, float %5079)  ; FAbs(value)
  %5082 = extractvalue %dx.types.CBufRet.f32 %4964, 0
  %5083 = call float @dx.op.binary.f32(i32 35, float %5080, float %5081)  ; FMax(a,b)
  %5084 = fsub fast float %5082, %5083
  %5085 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5086 = fmul fast float %5085, %5026
  br label %5087

; <label>:5087                                    ; preds = %5063, %5057, %4973
  %5088 = phi float [ 0.000000e+00, %4973 ], [ %5086, %5063 ], [ 0.000000e+00, %5057 ]
  %5089 = phi float [ 0.000000e+00, %4973 ], [ %5058, %5063 ], [ %5058, %5057 ]
  %5090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5091 = extractvalue %dx.types.CBufRet.f32 %5090, 1
  %5092 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5094 = extractvalue %dx.types.CBufRet.f32 %5093, 0
  %5095 = extractvalue %dx.types.CBufRet.f32 %5093, 1
  %5096 = fsub fast float %4992, %5094
  %5097 = fsub fast float %4996, %5095
  %5098 = fcmp fast olt float %5096, 0.000000e+00
  %5099 = fcmp fast olt float %5097, 0.000000e+00
  %5100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5101 = extractvalue %dx.types.CBufRet.f32 %5100, 0
  %5102 = extractvalue %dx.types.CBufRet.f32 %5100, 1
  %5103 = extractvalue %dx.types.CBufRet.f32 %5100, 2
  %5104 = extractvalue %dx.types.CBufRet.f32 %5100, 3
  %5105 = select i1 %5098, float %5101, float %5103
  %5106 = select i1 %5099, float %5102, float %5104
  %5107 = fmul fast float %5105, %5096
  %5108 = fmul fast float %5106, %5097
  %5109 = call float @dx.op.unary.f32(i32 6, float %5107)  ; FAbs(value)
  %5110 = call float @dx.op.unary.f32(i32 6, float %5108)  ; FAbs(value)
  %5111 = extractvalue %dx.types.CBufRet.f32 %4964, 0
  %5112 = call float @dx.op.binary.f32(i32 35, float %5109, float %5110)  ; FMax(a,b)
  %5113 = fsub fast float %5111, %5112
  %5114 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5115 = call float @dx.op.binary.f32(i32 36, float %5114, float %5092)  ; FMin(a,b)
  %5116 = fmul fast float %5115, %5026
  %5117 = fsub fast float %5088, %5116
  %5118 = fsub fast float %5089, %5088
  %5119 = fsub fast float %5118, %5116
  %5120 = call float @dx.op.binary.f32(i32 35, float %5088, float %5089)  ; FMax(a,b)
  %5121 = call float @dx.op.binary.f32(i32 35, float %5116, float %5120)  ; FMax(a,b)
  %5122 = fcmp fast olt float %5121, 1.000000e+00
  br i1 %5122, label %5123, label %5521, !dx.controlflow.hints !81

; <label>:5123                                    ; preds = %5087
  %5124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5125 = extractvalue %dx.types.CBufRet.f32 %5124, 0
  %5126 = fcmp fast une float %5125, 0.000000e+00
  br i1 %5126, label %5127, label %5521, !dx.controlflow.hints !82

; <label>:5127                                    ; preds = %5123
  %5128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5129 = extractvalue %dx.types.CBufRet.f32 %5128, 0
  %5130 = extractvalue %dx.types.CBufRet.f32 %5128, 1
  %5131 = extractvalue %dx.types.CBufRet.f32 %5128, 2
  %5132 = extractvalue %dx.types.CBufRet.f32 %5128, 3
  %5133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.f32 %5133, 0
  %5135 = extractvalue %dx.types.CBufRet.f32 %5133, 1
  %5136 = extractvalue %dx.types.CBufRet.f32 %5133, 2
  %5137 = extractvalue %dx.types.CBufRet.f32 %5133, 3
  %5138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.f32 %5138, 0
  %5140 = extractvalue %dx.types.CBufRet.f32 %5138, 1
  %5141 = extractvalue %dx.types.CBufRet.f32 %5138, 2
  %5142 = extractvalue %dx.types.CBufRet.f32 %5138, 3
  %5143 = fmul fast float %5129, %4969
  %5144 = call float @dx.op.tertiary.f32(i32 46, float %4970, float %5130, float %5143)  ; FMad(a,b,c)
  %5145 = call float @dx.op.tertiary.f32(i32 46, float %4971, float %5131, float %5144)  ; FMad(a,b,c)
  %5146 = fadd fast float %5145, %5132
  %5147 = fmul fast float %5134, %4969
  %5148 = call float @dx.op.tertiary.f32(i32 46, float %4970, float %5135, float %5147)  ; FMad(a,b,c)
  %5149 = call float @dx.op.tertiary.f32(i32 46, float %4971, float %5136, float %5148)  ; FMad(a,b,c)
  %5150 = fadd fast float %5149, %5137
  %5151 = fmul fast float %5139, %4969
  %5152 = call float @dx.op.tertiary.f32(i32 46, float %4970, float %5140, float %5151)  ; FMad(a,b,c)
  %5153 = call float @dx.op.tertiary.f32(i32 46, float %4971, float %5141, float %5152)  ; FMad(a,b,c)
  %5154 = fadd fast float %5153, %5142
  %5155 = fcmp fast oge float %5146, 1.000000e+00
  %5156 = fcmp fast oge float %5150, 1.000000e+00
  %5157 = or i1 %5155, %5156
  %5158 = fcmp fast olt float %5146, 0.000000e+00
  %5159 = fcmp fast olt float %5150, 0.000000e+00
  %5160 = or i1 %5158, %5159
  %5161 = or i1 %5157, %5160
  br i1 %5161, label %5521, label %5162, !dx.controlflow.hints !83

; <label>:5162                                    ; preds = %5127
  %5163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5164 = extractvalue %dx.types.CBufRet.f32 %5163, 0
  %5165 = extractvalue %dx.types.CBufRet.f32 %5163, 1
  %5166 = extractvalue %dx.types.CBufRet.f32 %5163, 2
  %5167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.i32 %5167, 2
  %5169 = uitofp i32 %5168 to float
  %5170 = extractvalue %dx.types.CBufRet.i32 %5167, 3
  %5171 = uitofp i32 %5170 to float
  %5172 = extractvalue %dx.types.CBufRet.f32 %5163, 3
  %5173 = fmul fast float %5172, 2.000000e+00
  %5174 = fsub fast float %5146, %5164
  %5175 = fsub fast float %5150, %5165
  %5176 = fmul fast float %5173, %5174
  %5177 = fmul fast float %5173, %5175
  %5178 = fdiv fast float 1.000000e+00, %4952
  %5179 = fmul fast float %5177, %5178
  %5180 = call float @dx.op.unary.f32(i32 6, float %5179)  ; FAbs(value)
  %5181 = fmul fast float %5166, %4971
  %5182 = fmul fast float %5181, %5173
  %5183 = call float @dx.op.unary.f32(i32 6, float %5182)  ; FAbs(value)
  %5184 = call float @dx.op.unary.f32(i32 6, float %5176)  ; FAbs(value)
  %5185 = call float @dx.op.binary.f32(i32 35, float %5183, float %5180)  ; FMax(a,b)
  %5186 = call float @dx.op.binary.f32(i32 35, float %5184, float %5185)  ; FMax(a,b)
  %5187 = fmul fast float %5186, 2.000000e+00
  %5188 = call float @dx.op.unary.f32(i32 23, float %5187)  ; Log(value)
  %5189 = call float @dx.op.binary.f32(i32 35, float %5188, float %5169)  ; FMax(a,b)
  %5190 = call float @dx.op.unary.f32(i32 22, float %5189)  ; Frc(value)
  %5191 = fadd fast float %5190, 0xBFEA666660000000
  %5192 = fmul fast float %5191, 8.000000e+00
  %5193 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5194 = call float @dx.op.unary.f32(i32 27, float %5189)  ; Round_ni(value)
  %5195 = fadd fast float %5194, %5193
  %5196 = call float @dx.op.binary.f32(i32 36, float %5195, float %5171)  ; FMin(a,b)
  %5197 = call float @dx.op.unary.f32(i32 27, float %5196)  ; Round_ni(value)
  %5198 = fsub fast float -0.000000e+00, %5197
  %5199 = call float @dx.op.unary.f32(i32 21, float %5198)  ; Exp(value)
  %5200 = fmul fast float %5199, %5173
  %5201 = fmul fast float %5200, %5146
  %5202 = fmul fast float %5200, %5150
  %5203 = fmul fast float %5201, 2.500000e-01
  %5204 = fmul fast float %5202, 2.500000e-01
  %5205 = fadd fast float %5203, 5.000000e-01
  %5206 = fadd fast float %5204, 5.000000e-01
  %5207 = fsub fast float %5171, %5169
  %5208 = fptoui float %5207 to i32
  %5209 = add i32 %5208, 320
  %5210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 %5209)  ; CBufferLoadLegacy(handle,regIndex)
  %5211 = extractvalue %dx.types.CBufRet.f32 %5210, 0
  %5212 = extractvalue %dx.types.CBufRet.f32 %5210, 1
  %5213 = fcmp fast une float %5196, %5171
  %5214 = fsub fast float %5146, %5211
  %5215 = fsub fast float %5150, %5212
  %5216 = call float @dx.op.unary.f32(i32 6, float %5214)  ; FAbs(value)
  %5217 = call float @dx.op.unary.f32(i32 6, float %5215)  ; FAbs(value)
  %5218 = fmul fast float %5216, %5200
  %5219 = fmul fast float %5217, %5200
  %5220 = fcmp fast olt float %5218, 1.000000e+00
  %5221 = fcmp fast olt float %5219, 1.000000e+00
  %5222 = and i1 %5220, %5221
  %5223 = or i1 %5213, %5222
  br i1 %5223, label %5224, label %5521, !dx.controlflow.hints !84

; <label>:5224                                    ; preds = %5162
  %5225 = fmul fast float %5202, 5.000000e-01
  %5226 = fmul fast float %5201, 5.000000e-01
  %5227 = fadd fast float %5225, 5.000000e-01
  %5228 = fadd fast float %5226, 5.000000e-01
  %5229 = sitofp i32 %5168 to float
  %5230 = fsub fast float %5196, %5229
  %5231 = call float @dx.op.unary.f32(i32 27, float %5230)  ; Round_ni(value)
  %5232 = call float @dx.op.unary.f32(i32 22, float %5196)  ; Frc(value)
  %5233 = call float @dx.op.unary.f32(i32 22, float %5228)  ; Frc(value)
  %5234 = call float @dx.op.unary.f32(i32 22, float %5227)  ; Frc(value)
  %5235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %5233, float %5234, float %5231, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5236 = extractvalue %dx.types.ResRet.f32 %5235, 0
  %5237 = extractvalue %dx.types.ResRet.f32 %5235, 1
  %5238 = extractvalue %dx.types.ResRet.f32 %5235, 2
  %5239 = extractvalue %dx.types.ResRet.f32 %5235, 3
  %5240 = fcmp fast ogt float %5232, 0.000000e+00
  br i1 %5240, label %5241, label %5262, !dx.controlflow.hints !85

; <label>:5241                                    ; preds = %5224
  %5242 = fadd fast float %5231, 1.000000e+00
  %5243 = call float @dx.op.unary.f32(i32 22, float %5205)  ; Frc(value)
  %5244 = call float @dx.op.unary.f32(i32 22, float %5206)  ; Frc(value)
  %5245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %5243, float %5244, float %5242, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5246 = extractvalue %dx.types.ResRet.f32 %5245, 0
  %5247 = extractvalue %dx.types.ResRet.f32 %5245, 1
  %5248 = extractvalue %dx.types.ResRet.f32 %5245, 2
  %5249 = extractvalue %dx.types.ResRet.f32 %5245, 3
  %5250 = fsub fast float %5246, %5236
  %5251 = fsub fast float %5247, %5237
  %5252 = fsub fast float %5248, %5238
  %5253 = fsub fast float %5249, %5239
  %5254 = fmul fast float %5250, %5232
  %5255 = fmul fast float %5251, %5232
  %5256 = fmul fast float %5252, %5232
  %5257 = fmul fast float %5253, %5232
  %5258 = fadd fast float %5254, %5236
  %5259 = fadd fast float %5255, %5237
  %5260 = fadd fast float %5256, %5238
  %5261 = fadd fast float %5257, %5239
  br label %5262

; <label>:5262                                    ; preds = %5241, %5224
  %5263 = phi float [ %5258, %5241 ], [ %5236, %5224 ]
  %5264 = phi float [ %5259, %5241 ], [ %5237, %5224 ]
  %5265 = phi float [ %5260, %5241 ], [ %5238, %5224 ]
  %5266 = phi float [ %5261, %5241 ], [ %5239, %5224 ]
  %5267 = fadd fast float %5263, -5.000000e-01
  %5268 = fadd fast float %5265, -5.000000e-01
  %5269 = fmul fast float %5267, 0xBFD5555560000000
  %5270 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5268, float %5269)  ; FMad(a,b,c)
  %5271 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5264, float 0.000000e+00)  ; FMad(a,b,c)
  %5272 = fadd fast float %5271, %5266
  %5273 = fmul fast float %5267, -7.500000e-01
  %5274 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5268, float %5273)  ; FMad(a,b,c)
  %5275 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5264, float 0.000000e+00)  ; FMad(a,b,c)
  %5276 = fadd fast float %5275, %5266
  %5277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5278 = extractvalue %dx.types.CBufRet.f32 %5277, 0
  %5279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.f32 %5279, 0
  %5281 = extractvalue %dx.types.CBufRet.f32 %5279, 1
  %5282 = extractvalue %dx.types.CBufRet.f32 %5279, 2
  %5283 = extractvalue %dx.types.CBufRet.f32 %5279, 3
  %5284 = fsub fast float %5280, %5270
  %5285 = fsub fast float %5281, %5272
  %5286 = fsub fast float %5282, %5274
  %5287 = fsub fast float %5283, %5276
  %5288 = fmul fast float %5284, %5278
  %5289 = fmul fast float %5285, %5278
  %5290 = fmul fast float %5286, %5278
  %5291 = fmul fast float %5287, %5278
  %5292 = fadd fast float %5288, %5270
  %5293 = fadd fast float %5289, %5272
  %5294 = fadd fast float %5290, %5274
  %5295 = fadd fast float %5291, %5276
  %5296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5297 = extractvalue %dx.types.ResRet.i32 %5296, 0
  %5298 = and i32 %5297, 536870911
  %5299 = uitofp i32 %5298 to float
  %5300 = fmul fast float %5299, %5146
  %5301 = fmul fast float %5299, %5150
  %5302 = fptoui float %5300 to i32
  %5303 = fptoui float %5301 to i32
  %5304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5305 = extractvalue %dx.types.ResRet.i32 %5304, 0
  %5306 = and i32 %5305, 31
  %5307 = lshr i32 %5302, %5306
  %5308 = lshr i32 %5303, %5306
  %5309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5310 = extractvalue %dx.types.ResRet.i32 %5309, 0
  %5311 = and i32 %5310, 31
  %5312 = shl i32 1, %5311
  %5313 = call i32 @dx.op.binary.i32(i32 40, i32 %5312, i32 4)  ; UMin(a,b)
  %5314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5315 = extractvalue %dx.types.ResRet.i32 %5314, 0
  %5316 = extractvalue %dx.types.ResRet.i32 %5314, 1
  %5317 = icmp eq i32 %5313, 0
  br i1 %5317, label %5359, label %5318

; <label>:5318                                    ; preds = %5262
  br label %5319

; <label>:5319                                    ; preds = %5347, %5318
  %5320 = phi i32 [ %5350, %5347 ], [ 0, %5318 ]
  %5321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5322 = extractvalue %dx.types.ResRet.i32 %5321, 0
  %5323 = lshr i32 %5322, 16
  %5324 = and i32 %5323, 31
  %5325 = shl i32 %5308, %5324
  %5326 = add i32 %5325, %5307
  %5327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5328 = extractvalue %dx.types.ResRet.i32 %5327, 0
  %5329 = and i32 %5328, 31
  %5330 = shl i32 %5326, %5329
  %5331 = add i32 %5330, %5320
  %5332 = shl i32 %5331, 2
  %5333 = add i32 %5332, 32
  %5334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5333, i32 undef)  ; BufferLoad(srv,index,wot)
  %5335 = extractvalue %dx.types.ResRet.i32 %5334, 0
  %5336 = icmp slt i32 %5335, 0
  %5337 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %5320
  %5338 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 %5320
  %5339 = bitcast float* %5337 to i32*
  %5340 = bitcast float* %5338 to i32*
  br i1 %5336, label %5341, label %5347

; <label>:5341                                    ; preds = %5319
  %5342 = and i32 %5335, 1073741823
  %5343 = add nuw nsw i32 %5342, 20
  %5344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5343, i32 undef)  ; BufferLoad(srv,index,wot)
  %5345 = extractvalue %dx.types.ResRet.i32 %5344, 0
  %5346 = extractvalue %dx.types.ResRet.i32 %5344, 1
  br label %5347

; <label>:5347                                    ; preds = %5341, %5319
  %5348 = phi i32 [ %5345, %5341 ], [ %5315, %5319 ]
  %5349 = phi i32 [ %5346, %5341 ], [ %5316, %5319 ]
  store i32 %5348, i32* %5339, align 4
  store i32 %5349, i32* %5340, align 4
  %5350 = add nuw i32 %5320, 1
  %5351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5352 = extractvalue %dx.types.CBufRet.i32 %5351, 2
  %5353 = icmp eq i32 %5352, 0
  %5354 = icmp ugt i32 %5335, -1073741825
  %5355 = and i1 %5354, %5353
  %5356 = icmp ult i32 %5350, %5313
  %5357 = and i1 %5355, %5356
  br i1 %5357, label %5319, label %5358

; <label>:5358                                    ; preds = %5347
  br label %5359

; <label>:5359                                    ; preds = %5358, %5262
  %5360 = phi i32 [ 0, %5262 ], [ %5350, %5358 ]
  %5361 = extractvalue %dx.types.CBufRet.f32 %5124, 2
  %5362 = fptoui float %5361 to i32
  %5363 = icmp eq i32 %5362, 0
  br i1 %5363, label %5415, label %5364

; <label>:5364                                    ; preds = %5359
  br label %5365

; <label>:5365                                    ; preds = %5410, %5364
  %5366 = phi i32 [ %5411, %5410 ], [ %5360, %5364 ]
  %5367 = phi i32 [ %5412, %5410 ], [ 0, %5364 ]
  %5368 = lshr i32 %5367, 2
  %5369 = and i32 %5367, 3
  %5370 = add nuw nsw i32 %5368, 83
  %5371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 %5370)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.i32 %5371, 0
  %5373 = extractvalue %dx.types.CBufRet.i32 %5371, 1
  %5374 = extractvalue %dx.types.CBufRet.i32 %5371, 2
  %5375 = extractvalue %dx.types.CBufRet.i32 %5371, 3
  %5376 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 0
  store i32 %5372, i32* %5376, align 4
  %5377 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 1
  store i32 %5373, i32* %5377, align 4
  %5378 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 2
  store i32 %5374, i32* %5378, align 4
  %5379 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 3
  store i32 %5375, i32* %5379, align 4
  %5380 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 %5369
  %5381 = load i32, i32* %5380, align 4, !tbaa !86, !noalias !90
  %5382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5383 = extractvalue %dx.types.ResRet.i32 %5382, 0
  %5384 = lshr i32 %5383, 16
  %5385 = and i32 %5384, 31
  %5386 = shl i32 %5308, %5385
  %5387 = add i32 %5386, %5307
  %5388 = shl i32 %5387, 2
  %5389 = add i32 %5388, %5381
  %5390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5389, i32 undef)  ; BufferLoad(srv,index,wot)
  %5391 = extractvalue %dx.types.ResRet.i32 %5390, 0
  %5392 = icmp eq i32 %5391, 0
  br i1 %5392, label %5410, label %5393

; <label>:5393                                    ; preds = %5365
  %5394 = icmp slt i32 %5391, 0
  %5395 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %5366
  %5396 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 %5366
  %5397 = bitcast float* %5395 to i32*
  %5398 = bitcast float* %5396 to i32*
  br i1 %5394, label %5399, label %5406

; <label>:5399                                    ; preds = %5393
  %5400 = and i32 %5391, 1073741823
  %5401 = add i32 %5381, 20
  %5402 = add i32 %5401, %5400
  %5403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5402, i32 undef)  ; BufferLoad(srv,index,wot)
  %5404 = extractvalue %dx.types.ResRet.i32 %5403, 0
  %5405 = extractvalue %dx.types.ResRet.i32 %5403, 1
  br label %5406

; <label>:5406                                    ; preds = %5399, %5393
  %5407 = phi i32 [ %5404, %5399 ], [ %5315, %5393 ]
  %5408 = phi i32 [ %5405, %5399 ], [ %5316, %5393 ]
  store i32 %5407, i32* %5397, align 4
  store i32 %5408, i32* %5398, align 4
  %5409 = add i32 %5366, 1
  br label %5410

; <label>:5410                                    ; preds = %5406, %5365
  %5411 = phi i32 [ %5366, %5365 ], [ %5409, %5406 ]
  %5412 = add nuw i32 %5367, 1
  %5413 = icmp eq i32 %5412, %5362
  br i1 %5413, label %5414, label %5365

; <label>:5414                                    ; preds = %5410
  br label %5415

; <label>:5415                                    ; preds = %5414, %5359
  %5416 = phi i32 [ %5360, %5359 ], [ %5411, %5414 ]
  %5417 = icmp eq i32 %5416, 1
  %5418 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 0
  %5419 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 0
  br i1 %5417, label %5420, label %5423

; <label>:5420                                    ; preds = %5415
  %5421 = load float, float* %5418, align 4
  %5422 = load float, float* %5419, align 4
  br label %5450

; <label>:5423                                    ; preds = %5415
  %5424 = load float, float* %5418, align 4
  %5425 = load float, float* %5419, align 4
  %5426 = fdiv fast float 1.000000e+00, %5425
  %5427 = fsub fast float %5424, %5426
  %5428 = icmp ugt i32 %5416, 1
  br i1 %5428, label %5429, label %5445

; <label>:5429                                    ; preds = %5423
  br label %5430

; <label>:5430                                    ; preds = %5430, %5429
  %5431 = phi float [ %5440, %5430 ], [ %5427, %5429 ]
  %5432 = phi float [ %5441, %5430 ], [ %5424, %5429 ]
  %5433 = phi i32 [ %5442, %5430 ], [ 1, %5429 ]
  %5434 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %5433
  %5435 = load float, float* %5434, align 4
  %5436 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 %5433
  %5437 = load float, float* %5436, align 4
  %5438 = fdiv fast float 1.000000e+00, %5437
  %5439 = fsub fast float %5435, %5438
  %5440 = call float @dx.op.binary.f32(i32 36, float %5431, float %5439)  ; FMin(a,b)
  %5441 = call float @dx.op.binary.f32(i32 35, float %5432, float %5435)  ; FMax(a,b)
  %5442 = add nuw i32 %5433, 1
  %5443 = icmp eq i32 %5442, %5416
  br i1 %5443, label %5444, label %5430

; <label>:5444                                    ; preds = %5430
  br label %5445

; <label>:5445                                    ; preds = %5444, %5423
  %5446 = phi float [ %5427, %5423 ], [ %5440, %5444 ]
  %5447 = phi float [ %5424, %5423 ], [ %5441, %5444 ]
  %5448 = fsub fast float %5447, %5446
  %5449 = fdiv fast float 1.000000e+00, %5448
  br label %5450

; <label>:5450                                    ; preds = %5445, %5420
  %5451 = phi float [ %5421, %5420 ], [ %5447, %5445 ]
  %5452 = phi float [ %5422, %5420 ], [ %5449, %5445 ]
  %5453 = fadd fast float %5154, %5451
  %5454 = fmul fast float %5453, %5452
  %5455 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  %5456 = fmul fast float %5455, 2.000000e+00
  %5457 = fsub fast float 1.000000e+00, %5456
  %5458 = fmul fast float %5292, %5292
  %5459 = fsub fast float %5293, %5458
  %5460 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5459)  ; FMax(a,b)
  %5461 = fdiv fast float 1.000000e+00, %5460
  %5462 = fmul fast float %5293, %5292
  %5463 = fsub fast float %5294, %5462
  %5464 = fsub fast float %5457, %5292
  %5465 = fmul fast float %5457, %5457
  %5466 = fsub fast float %5465, %5293
  %5467 = fmul fast float %5461, %5463
  %5468 = fmul fast float %5467, %5464
  %5469 = fsub fast float %5466, %5468
  %5470 = fmul fast float %5293, %5293
  %5471 = fsub fast float %5295, %5470
  %5472 = fmul fast float %5463, %5463
  %5473 = fmul fast float %5472, %5461
  %5474 = fsub fast float %5471, %5473
  %5475 = fdiv fast float %5469, %5474
  %5476 = fmul fast float %5475, %5463
  %5477 = fsub fast float %5464, %5476
  %5478 = fmul fast float %5477, %5461
  %5479 = fmul fast float %5478, %5292
  %5480 = fsub fast float 1.000000e+00, %5479
  %5481 = fmul fast float %5475, %5293
  %5482 = fsub fast float %5480, %5481
  %5483 = fmul fast float %5478, %5478
  %5484 = fmul fast float %5475, 4.000000e+00
  %5485 = fmul fast float %5484, %5482
  %5486 = fsub fast float %5483, %5485
  %5487 = call float @dx.op.unary.f32(i32 24, float %5486)  ; Sqrt(value)
  %5488 = fcmp fast oge float %5478, 0.000000e+00
  %5489 = fsub fast float -0.000000e+00, %5487
  %5490 = select i1 %5488, float %5489, float %5487
  %5491 = fsub fast float %5490, %5478
  %5492 = fdiv fast float %5491, %5475
  %5493 = fdiv fast float %5482, %5491
  %5494 = fmul fast float %5492, 5.000000e-01
  %5495 = fmul fast float %5493, 2.000000e+00
  %5496 = select i1 %5488, float %5494, float %5495
  %5497 = select i1 %5488, float %5495, float %5494
  %5498 = call float @dx.op.binary.f32(i32 35, float %5496, float %5497)  ; FMax(a,b)
  %5499 = call float @dx.op.binary.f32(i32 36, float %5496, float %5497)  ; FMin(a,b)
  %5500 = fcmp fast ogt float %5457, %5498
  %5501 = fsub fast float %5457, %5499
  %5502 = fsub fast float %5457, %5498
  %5503 = fsub fast float %5498, %5499
  %5504 = select i1 %5500, float %5502, float %5503
  %5505 = fmul float %5501, %5504
  %5506 = select i1 %5500, float %5499, float %5457
  %5507 = fcmp fast ogt float %5457, %5499
  %5508 = fmul fast float %5506, %5498
  %5509 = fadd fast float %5506, %5498
  %5510 = fmul fast float %5509, %5292
  %5511 = fadd fast float %5508, %5293
  %5512 = fsub fast float %5511, %5510
  %5513 = fdiv fast float %5512, %5505
  %5514 = select i1 %5507, float %5513, float 0.000000e+00
  %5515 = fsub fast float 1.000000e+00, %5514
  %5516 = select i1 %5500, float %5515, float %5514
  %5517 = call float @dx.op.unary.f32(i32 7, float %5516)  ; Saturate(value)
  %5518 = extractvalue %dx.types.CBufRet.f32 %5277, 3
  %5519 = fmul fast float %5518, %5517
  %5520 = fsub fast float 1.000000e+00, %5519
  br label %5521

; <label>:5521                                    ; preds = %5450, %5162, %5127, %5123, %5087
  %5522 = phi float [ 1.000000e+00, %5087 ], [ %5520, %5450 ], [ 1.000000e+00, %5127 ], [ 1.000000e+00, %5162 ], [ 1.000000e+00, %5123 ]
  %5523 = fcmp fast ogt float %5119, 0.000000e+00
  br i1 %5523, label %5524, label %5532, !dx.controlflow.hints !99

; <label>:5524                                    ; preds = %5521
  %5525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.f32 %5525, 2
  %5527 = fadd fast float %5526, %5000
  %5528 = call float @dx.op.binary.f32(i32 35, float %5527, float 0.000000e+00)  ; FMax(a,b)
  %5529 = fadd fast float %5528, 0x3F10000000000000
  %5530 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %38, float %5018, float %5019, float undef, float undef, i32 0, i32 0, i32 undef, float %5529)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5531 = extractvalue %dx.types.ResRet.f32 %5530, 0
  br label %5532

; <label>:5532                                    ; preds = %5524, %5521
  %5533 = phi float [ %5531, %5524 ], [ 1.000000e+00, %5521 ]
  %5534 = fcmp fast ogt float %5117, 0.000000e+00
  br i1 %5534, label %5535, label %5543, !dx.controlflow.hints !100

; <label>:5535                                    ; preds = %5532
  %5536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5537 = extractvalue %dx.types.CBufRet.f32 %5536, 1
  %5538 = fadd fast float %5537, %5000
  %5539 = call float @dx.op.binary.f32(i32 35, float %5538, float 0.000000e+00)  ; FMax(a,b)
  %5540 = fadd fast float %5539, 0x3F10000000000000
  %5541 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %38, float %5010, float %5011, float undef, float undef, i32 0, i32 0, i32 undef, float %5540)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5542 = extractvalue %dx.types.ResRet.f32 %5541, 0
  br label %5543

; <label>:5543                                    ; preds = %5535, %5532
  %5544 = phi float [ %5542, %5535 ], [ 1.000000e+00, %5532 ]
  %5545 = fcmp fast ogt float %5116, 0.000000e+00
  br i1 %5545, label %5546, label %5558, !dx.controlflow.hints !101

; <label>:5546                                    ; preds = %5543
  %5547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5548 = extractvalue %dx.types.CBufRet.f32 %5547, 0
  %5549 = fadd fast float %5548, %5000
  %5550 = call float @dx.op.binary.f32(i32 35, float %5549, float 0.000000e+00)  ; FMax(a,b)
  %5551 = fadd fast float %5550, 0x3F10000000000000
  br i1 %5003, label %5552, label %5555, !dx.controlflow.hints !102

; <label>:5552                                    ; preds = %5546
  %5553 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %38, float %4992, float %4996, float undef, float undef, i32 0, i32 0, i32 undef, float %5551)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5554 = extractvalue %dx.types.ResRet.f32 %5553, 0
  br label %5558

; <label>:5555                                    ; preds = %5546
  %5556 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %38, float %4992, float %4996, float undef, float undef, i32 0, i32 0, i32 undef, float %5551)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5557 = extractvalue %dx.types.ResRet.f32 %5556, 0
  br label %5558

; <label>:5558                                    ; preds = %5555, %5552, %5543
  %5559 = phi float [ %5554, %5552 ], [ %5557, %5555 ], [ 1.000000e+00, %5543 ]
  %5560 = fsub fast float %5533, %5522
  %5561 = fmul fast float %5560, %5089
  %5562 = fadd fast float %5561, %5522
  %5563 = fsub fast float %5544, %5562
  %5564 = fmul fast float %5563, %5088
  %5565 = fadd fast float %5564, %5562
  %5566 = fsub fast float %5559, %5565
  %5567 = fmul fast float %5566, %5116
  %5568 = fadd fast float %5567, %5565
  %5569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5570 = extractvalue %dx.types.CBufRet.f32 %5569, 2
  %5571 = fcmp fast ogt float %5570, 0.000000e+00
  br i1 %5571, label %5572, label %5612, !dx.controlflow.hints !103

; <label>:5572                                    ; preds = %5558
  %5573 = fcmp fast ugt float %5570, 0.000000e+00
  br i1 %5573, label %5574, label %5609

; <label>:5574                                    ; preds = %5572
  %5575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5576 = extractvalue %dx.types.CBufRet.f32 %5575, 0
  %5577 = extractvalue %dx.types.CBufRet.f32 %5575, 1
  %5578 = extractvalue %dx.types.CBufRet.f32 %5575, 2
  %5579 = extractvalue %dx.types.CBufRet.f32 %5575, 3
  %5580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5581 = extractvalue %dx.types.CBufRet.f32 %5580, 0
  %5582 = extractvalue %dx.types.CBufRet.f32 %5580, 1
  %5583 = extractvalue %dx.types.CBufRet.f32 %5580, 2
  %5584 = extractvalue %dx.types.CBufRet.f32 %5580, 3
  %5585 = extractvalue %dx.types.CBufRet.f32 %5569, 0
  %5586 = extractvalue %dx.types.CBufRet.f32 %5569, 1
  %5587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5588 = extractvalue %dx.types.CBufRet.f32 %5587, 0
  %5589 = extractvalue %dx.types.CBufRet.f32 %5587, 1
  %5590 = extractvalue %dx.types.CBufRet.f32 %5587, 2
  %5591 = fadd fast float %5588, %4969
  %5592 = fadd fast float %5589, %4970
  %5593 = fadd fast float %5590, %4971
  %5594 = fmul fast float %5591, %5576
  %5595 = call float @dx.op.tertiary.f32(i32 46, float %5577, float %5592, float %5594)  ; FMad(a,b,c)
  %5596 = call float @dx.op.tertiary.f32(i32 46, float %5578, float %5593, float %5595)  ; FMad(a,b,c)
  %5597 = fadd fast float %5596, %5579
  %5598 = fmul fast float %5591, %5581
  %5599 = call float @dx.op.tertiary.f32(i32 46, float %5582, float %5592, float %5598)  ; FMad(a,b,c)
  %5600 = call float @dx.op.tertiary.f32(i32 46, float %5583, float %5593, float %5599)  ; FMad(a,b,c)
  %5601 = fadd fast float %5600, %5584
  %5602 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %33, float %5597, float %5601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5603 = extractvalue %dx.types.ResRet.f32 %5602, 0
  %5604 = fmul fast float %5603, %5586
  %5605 = fadd fast float %5604, %5585
  %5606 = call float @dx.op.unary.f32(i32 7, float %5605)  ; Saturate(value)
  %5607 = fmul fast float %5606, %5570
  %5608 = fsub fast float 1.000000e+00, %5607
  br label %5609

; <label>:5609                                    ; preds = %5574, %5572
  %5610 = phi float [ %5608, %5574 ], [ 1.000000e+00, %5572 ]
  %5611 = fmul fast float %5610, %5568
  br label %5612

; <label>:5612                                    ; preds = %5609, %5558, %4949
  %5613 = phi float [ 1.000000e+00, %4949 ], [ %5611, %5609 ], [ %5568, %5558 ]
  %5614 = call float @dx.op.binary.f32(i32 36, float %5613, float %5613)  ; FMin(a,b)
  %5615 = call float @dx.op.binary.f32(i32 36, float %5613, float %5614)  ; FMin(a,b)
  %5616 = fcmp fast ogt float %5615, 0.000000e+00
  br i1 %5616, label %5617, label %5778, !dx.controlflow.hints !104

; <label>:5617                                    ; preds = %5612
  %5618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5619 = extractvalue %dx.types.CBufRet.f32 %5618, 0
  %5620 = extractvalue %dx.types.CBufRet.f32 %5618, 1
  %5621 = extractvalue %dx.types.CBufRet.f32 %5618, 2
  %5622 = extractvalue %dx.types.CBufRet.f32 %5618, 3
  %5623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5624 = extractvalue %dx.types.CBufRet.f32 %5623, 0
  %5625 = extractvalue %dx.types.CBufRet.f32 %5623, 1
  %5626 = extractvalue %dx.types.CBufRet.f32 %5623, 2
  %5627 = extractvalue %dx.types.CBufRet.f32 %5623, 3
  %5628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5629 = extractvalue %dx.types.CBufRet.f32 %5628, 0
  %5630 = extractvalue %dx.types.CBufRet.f32 %5628, 1
  %5631 = extractvalue %dx.types.CBufRet.f32 %5628, 2
  %5632 = extractvalue %dx.types.CBufRet.f32 %5628, 3
  %5633 = fmul fast float %5619, %4969
  %5634 = call float @dx.op.tertiary.f32(i32 46, float %4970, float %5620, float %5633)  ; FMad(a,b,c)
  %5635 = call float @dx.op.tertiary.f32(i32 46, float %4971, float %5621, float %5634)  ; FMad(a,b,c)
  %5636 = fadd fast float %5635, %5622
  %5637 = fmul fast float %5624, %4969
  %5638 = call float @dx.op.tertiary.f32(i32 46, float %4970, float %5625, float %5637)  ; FMad(a,b,c)
  %5639 = call float @dx.op.tertiary.f32(i32 46, float %4971, float %5626, float %5638)  ; FMad(a,b,c)
  %5640 = fadd fast float %5639, %5627
  %5641 = fmul fast float %5629, %4969
  %5642 = call float @dx.op.tertiary.f32(i32 46, float %4970, float %5630, float %5641)  ; FMad(a,b,c)
  %5643 = call float @dx.op.tertiary.f32(i32 46, float %4971, float %5631, float %5642)  ; FMad(a,b,c)
  %5644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5645 = extractvalue %dx.types.CBufRet.f32 %5644, 0
  %5646 = extractvalue %dx.types.CBufRet.f32 %5644, 1
  %5647 = extractvalue %dx.types.CBufRet.f32 %5644, 3
  %5648 = fmul fast float %5647, %5636
  %5649 = fmul fast float %5647, %5640
  %5650 = fadd fast float %5648, %5645
  %5651 = fadd fast float %5649, %5646
  %5652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5653 = extractvalue %dx.types.CBufRet.f32 %5652, 0
  %5654 = extractvalue %dx.types.CBufRet.f32 %5652, 1
  %5655 = fsub fast float %5650, %5653
  %5656 = fsub fast float %5651, %5654
  %5657 = fcmp fast olt float %5655, 0.000000e+00
  %5658 = fcmp fast olt float %5656, 0.000000e+00
  %5659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5660 = extractvalue %dx.types.CBufRet.f32 %5659, 0
  %5661 = extractvalue %dx.types.CBufRet.f32 %5659, 1
  %5662 = extractvalue %dx.types.CBufRet.f32 %5659, 2
  %5663 = extractvalue %dx.types.CBufRet.f32 %5659, 3
  %5664 = select i1 %5657, float %5660, float %5662
  %5665 = select i1 %5658, float %5661, float %5663
  %5666 = fmul fast float %5664, %5655
  %5667 = fmul fast float %5665, %5656
  %5668 = call float @dx.op.unary.f32(i32 6, float %5666)  ; FAbs(value)
  %5669 = call float @dx.op.unary.f32(i32 6, float %5667)  ; FAbs(value)
  %5670 = extractvalue %dx.types.CBufRet.f32 %4964, 0
  %5671 = call float @dx.op.binary.f32(i32 35, float %5668, float %5669)  ; FMax(a,b)
  %5672 = fsub fast float %5670, %5671
  %5673 = call float @dx.op.unary.f32(i32 7, float %5672)  ; Saturate(value)
  %5674 = fcmp fast ogt float %5673, 0.000000e+00
  br i1 %5674, label %5675, label %5716, !dx.controlflow.hints !105

; <label>:5675                                    ; preds = %5617
  %5676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %36, float %5650, float %5651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5677 = extractvalue %dx.types.ResRet.f32 %5676, 1
  %5678 = fcmp fast ogt float %5677, 0.000000e+00
  br i1 %5678, label %5679, label %5711

; <label>:5679                                    ; preds = %5675
  %5680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %36, float %5650, float %5651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5681 = extractvalue %dx.types.ResRet.f32 %5680, 0
  %5682 = extractvalue %dx.types.ResRet.f32 %5680, 1
  %5683 = extractvalue %dx.types.ResRet.f32 %5680, 2
  %5684 = extractvalue %dx.types.ResRet.f32 %5680, 3
  %5685 = fsub fast float 1.000000e+00, %5632
  %5686 = fsub fast float %5685, %5643
  %5687 = fmul fast float %5686, 0x400921FB60000000
  %5688 = fadd fast float %5687, 0x3FF921FB60000000
  %5689 = call float @dx.op.unary.f32(i32 13, float %5688)  ; Sin(value)
  %5690 = fadd fast float %5689, -1.000000e+00
  %5691 = fmul fast float %5690, 0x3FD45F3060000000
  %5692 = fmul fast float %5686, 0x401921FB60000000
  %5693 = fadd fast float %5692, 0x400921FB60000000
  %5694 = call float @dx.op.unary.f32(i32 13, float %5693)  ; Sin(value)
  %5695 = fadd fast float %5694, 0x3E7777A5C0000000
  %5696 = fmul fast float %5695, 0x3FC45F3060000000
  %5697 = fmul fast float %5686, 0x4022D97C80000000
  %5698 = fadd fast float %5697, 0x4012D97C80000000
  %5699 = call float @dx.op.unary.f32(i32 13, float %5698)  ; Sin(value)
  %5700 = fadd fast float %5699, 1.000000e+00
  %5701 = fmul fast float %5700, 0x3FBB2995E0000000
  %5702 = fmul fast float %5686, 0x402921FB60000000
  %5703 = fadd fast float %5702, 0x401921FB60000000
  %5704 = call float @dx.op.unary.f32(i32 13, float %5703)  ; Sin(value)
  %5705 = fadd fast float %5704, 0xBE8777A5C0000000
  %5706 = fmul fast float %5705, 0x3FB45F3060000000
  %5707 = call float @dx.op.dot4.f32(i32 56, float %5681, float %5682, float %5683, float %5684, float %5691, float %5696, float %5701, float %5706)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5708 = fmul fast float %5707, 0xBFF7154760000000
  %5709 = call float @dx.op.unary.f32(i32 21, float %5708)  ; Exp(value)
  %5710 = call float @dx.op.unary.f32(i32 7, float %5709)  ; Saturate(value)
  br label %5711

; <label>:5711                                    ; preds = %5679, %5675
  %5712 = phi float [ %5710, %5679 ], [ 1.000000e+00, %5675 ]
  %5713 = fadd fast float %5712, -1.000000e+00
  %5714 = fmul fast float %5713, %5673
  %5715 = fadd fast float %5714, 1.000000e+00
  br label %5716

; <label>:5716                                    ; preds = %5711, %5617
  %5717 = phi float [ %5715, %5711 ], [ 1.000000e+00, %5617 ]
  %5718 = fmul fast float %5717, %5613
  %5719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5720 = extractvalue %dx.types.CBufRet.f32 %5719, 0
  %5721 = extractvalue %dx.types.CBufRet.f32 %5719, 1
  %5722 = extractvalue %dx.types.CBufRet.f32 %5719, 2
  %5723 = fadd fast float %5720, %179
  %5724 = fadd fast float %5721, %180
  %5725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5726 = extractvalue %dx.types.CBufRet.f32 %5725, 1
  %5727 = fsub fast float -0.000000e+00, %5723
  %5728 = fsub fast float -0.000000e+00, %5724
  %5729 = fsub fast float -0.000000e+00, %181
  %5730 = fsub fast float %5729, %5722
  %5731 = fadd fast float %5730, %5726
  %5732 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5727, float %5728, float %5731)  ; Dot3(ax,ay,az,bx,by,bz)
  %5733 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4950, float %4951, float %4952)  ; Dot3(ax,ay,az,bx,by,bz)
  %5734 = fdiv fast float 1.000000e+00, %5733
  %5735 = fmul fast float %5734, %5732
  %5736 = fmul fast float %4950, %5735
  %5737 = fmul fast float %4951, %5735
  %5738 = fadd fast float %5736, %5723
  %5739 = fadd fast float %5737, %5724
  %5740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = extractvalue %dx.types.CBufRet.f32 %5740, 0
  %5742 = extractvalue %dx.types.CBufRet.f32 %5740, 1
  %5743 = fsub fast float %5738, %5741
  %5744 = fsub fast float %5739, %5742
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 2
  %5747 = extractvalue %dx.types.CBufRet.f32 %5745, 3
  %5748 = fmul fast float %5743, %5746
  %5749 = fmul fast float %5744, %5747
  %5750 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.i32 %5750, 3
  %5752 = icmp eq i32 %5751, 0
  br i1 %5752, label %5758, label %5753

; <label>:5753                                    ; preds = %5716
  %5754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %5748, float %5749, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5755 = extractvalue %dx.types.ResRet.f32 %5754, 0
  %5756 = extractvalue %dx.types.ResRet.f32 %5754, 1
  %5757 = extractvalue %dx.types.ResRet.f32 %5754, 2
  br label %5763

; <label>:5758                                    ; preds = %5716
  %5759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %36, float %5748, float %5749, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5760 = extractvalue %dx.types.ResRet.f32 %5759, 0
  %5761 = extractvalue %dx.types.ResRet.f32 %5759, 1
  %5762 = extractvalue %dx.types.ResRet.f32 %5759, 2
  br label %5763

; <label>:5763                                    ; preds = %5758, %5753
  %5764 = phi float [ %5755, %5753 ], [ %5760, %5758 ]
  %5765 = phi float [ %5756, %5753 ], [ %5761, %5758 ]
  %5766 = phi float [ %5757, %5753 ], [ %5762, %5758 ]
  %5767 = extractvalue %dx.types.CBufRet.f32 %5725, 2
  %5768 = fmul fast float %5767, %5764
  %5769 = extractvalue %dx.types.CBufRet.f32 %5725, 0
  %5770 = fsub fast float %5735, %5769
  %5771 = fsub fast float %5770, %5768
  %5772 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5771)  ; FMax(a,b)
  %5773 = fmul fast float %5772, %5765
  %5774 = call float @dx.op.binary.f32(i32 36, float %5766, float %5773)  ; FMin(a,b)
  %5775 = fmul fast float %5774, 0xBFF7154760000000
  %5776 = call float @dx.op.unary.f32(i32 21, float %5775)  ; Exp(value)
  %5777 = fmul fast float %5718, %5776
  br label %5778

; <label>:5778                                    ; preds = %5763, %5612
  %5779 = phi float [ %5777, %5763 ], [ %5613, %5612 ]
  %5780 = call float @dx.op.binary.f32(i32 36, float %5779, float %5779)  ; FMin(a,b)
  %5781 = call float @dx.op.binary.f32(i32 36, float %5779, float %5780)  ; FMin(a,b)
  %5782 = fcmp fast ogt float %5781, 0.000000e+00
  br i1 %5782, label %5783, label %5958, !dx.controlflow.hints !106

; <label>:5783                                    ; preds = %5778
  %5784 = fmul fast float %5779, %4961
  %5785 = fmul fast float %5779, %4962
  %5786 = fmul fast float %5779, %4963
  %5787 = fsub fast float %4950, %4722
  %5788 = fsub fast float %4951, %4721
  %5789 = fsub fast float %4952, %4720
  %5790 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5788, float %5789, float %5787, float %5788, float %5789)  ; Dot3(ax,ay,az,bx,by,bz)
  %5791 = call float @dx.op.unary.f32(i32 25, float %5790)  ; Rsqrt(value)
  %5792 = fmul fast float %5791, %5787
  %5793 = fmul fast float %5791, %5788
  %5794 = fmul fast float %5791, %5789
  %5795 = call float @dx.op.dot3.f32(i32 55, float %4950, float %4951, float %4952, float %4729, float %4730, float %4731)  ; Dot3(ax,ay,az,bx,by,bz)
  %5796 = call float @dx.op.dot3.f32(i32 55, float %4719, float %4718, float %4717, float %5792, float %5793, float %5794)  ; Dot3(ax,ay,az,bx,by,bz)
  %5797 = call float @dx.op.unary.f32(i32 7, float %5795)  ; Saturate(value)
  %5798 = fmul fast float %5797, %5797
  %5799 = fmul fast float %5798, %4749
  %5800 = call float @dx.op.unary.f32(i32 7, float %5799)  ; Saturate(value)
  %5801 = fmul fast float %5800, %5797
  %5802 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4730, float %4731, float %5792, float %5793, float %5794)  ; Dot3(ax,ay,az,bx,by,bz)
  %5803 = fmul fast float %5802, %5802
  %5804 = call float @dx.op.unary.f32(i32 6, float %5795)  ; FAbs(value)
  %5805 = fsub fast float 1.000000e+00, %4732
  %5806 = call float @dx.op.binary.f32(i32 35, float %5805, float 0x3F847AE140000000)  ; FMax(a,b)
  %5807 = fmul fast float %5806, %5806
  %5808 = fmul fast float %5807, %5807
  %5809 = fsub fast float 1.000000e+00, %5808
  %5810 = fmul fast float %4736, %4736
  %5811 = fmul fast float %5810, %5809
  %5812 = fadd fast float %5811, %5808
  %5813 = bitcast float %5812 to i32
  %5814 = ashr i32 %5813, 1
  %5815 = add nsw i32 %5814, 532487669
  %5816 = bitcast i32 %5815 to float
  %5817 = fadd fast float %5816, %4736
  %5818 = fmul fast float %5808, %5803
  %5819 = fsub fast float 1.000000e+00, %5803
  %5820 = fadd fast float %5819, %5818
  %5821 = fmul fast float %5804, %5804
  %5822 = fmul fast float %5821, %5809
  %5823 = fadd fast float %5822, %5808
  %5824 = bitcast float %5823 to i32
  %5825 = ashr i32 %5824, 1
  %5826 = add nsw i32 %5825, 532487669
  %5827 = bitcast i32 %5826 to float
  %5828 = fadd fast float %5827, %5804
  %5829 = fmul fast float %5820, %5820
  %5830 = fmul fast float %5829, %5817
  %5831 = fmul fast float %5830, %5828
  %5832 = fdiv fast float 0x3FF0A00000000000, %5831
  %5833 = fmul fast float %5832, %5808
  %5834 = call float @dx.op.unary.f32(i32 6, float %5796)  ; FAbs(value)
  %5835 = fsub fast float 1.000000e+00, %5834
  %5836 = bitcast float %5835 to i32
  %5837 = sitofp i32 %5836 to float
  %5838 = fmul fast float %5837, 5.000000e+00
  %5839 = fadd fast float %5838, 0xC1EFBF8940000000
  %5840 = fptosi float %5839 to i32
  %5841 = bitcast i32 %5840 to float
  %5842 = fsub fast float 1.000000e+00, %4726
  %5843 = fsub fast float 1.000000e+00, %4727
  %5844 = fsub fast float 1.000000e+00, %4734
  %5845 = fmul fast float %5841, %5842
  %5846 = fmul fast float %5841, %5843
  %5847 = fmul fast float %5841, %5844
  %5848 = fadd fast float %5845, %4726
  %5849 = fadd fast float %5846, %4727
  %5850 = fadd fast float %5847, %4734
  br i1 %4861, label %5851, label %5874

; <label>:5851                                    ; preds = %5783
  %5852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %3819, float %5834, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5853 = extractvalue %dx.types.ResRet.f32 %5852, 0
  %5854 = extractvalue %dx.types.ResRet.f32 %5852, 1
  %5855 = extractvalue %dx.types.ResRet.f32 %5852, 2
  %5856 = fadd fast float %5853, -5.000000e-01
  %5857 = fadd fast float %5854, -5.000000e-01
  %5858 = fadd fast float %5855, -5.000000e-01
  %5859 = fmul fast float %4726, 4.000000e+00
  %5860 = fmul fast float %5859, %5842
  %5861 = fmul fast float %5860, %5856
  %5862 = fmul fast float %4727, 4.000000e+00
  %5863 = fmul fast float %5862, %5843
  %5864 = fmul fast float %5863, %5857
  %5865 = fmul fast float %4734, 4.000000e+00
  %5866 = fmul fast float %5865, %5844
  %5867 = fmul fast float %5866, %5858
  %5868 = fadd fast float %5861, %5848
  %5869 = fadd fast float %5864, %5849
  %5870 = fadd fast float %5867, %5850
  %5871 = call float @dx.op.unary.f32(i32 7, float %5868)  ; Saturate(value)
  %5872 = call float @dx.op.unary.f32(i32 7, float %5869)  ; Saturate(value)
  %5873 = call float @dx.op.unary.f32(i32 7, float %5870)  ; Saturate(value)
  br label %5874

; <label>:5874                                    ; preds = %5851, %5783
  %5875 = phi float [ %5871, %5851 ], [ %5848, %5783 ]
  %5876 = phi float [ %5872, %5851 ], [ %5849, %5783 ]
  %5877 = phi float [ %5873, %5851 ], [ %5850, %5783 ]
  %5878 = fmul fast float %5795, 9.843750e-01
  %5879 = fadd fast float %5878, 7.812500e-03
  %5880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %5879, float %4851, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5881 = extractvalue %dx.types.ResRet.f32 %5880, 2
  %5882 = extractvalue %dx.types.ResRet.f32 %5880, 3
  %5883 = fmul fast float %5881, %4726
  %5884 = fmul fast float %5881, %4727
  %5885 = fmul fast float %5881, %4734
  %5886 = fadd fast float %5883, %5882
  %5887 = fadd fast float %5884, %5882
  %5888 = fadd fast float %5885, %5882
  br i1 %4861, label %5889, label %5912

; <label>:5889                                    ; preds = %5874
  %5890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %3819, float %5795, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5891 = extractvalue %dx.types.ResRet.f32 %5890, 0
  %5892 = extractvalue %dx.types.ResRet.f32 %5890, 1
  %5893 = extractvalue %dx.types.ResRet.f32 %5890, 2
  %5894 = fadd fast float %5891, -5.000000e-01
  %5895 = fadd fast float %5892, -5.000000e-01
  %5896 = fadd fast float %5893, -5.000000e-01
  %5897 = fmul fast float %4726, 4.000000e+00
  %5898 = fmul fast float %5897, %5842
  %5899 = fmul fast float %5898, %5894
  %5900 = fmul fast float %4727, 4.000000e+00
  %5901 = fmul fast float %5900, %5843
  %5902 = fmul fast float %5901, %5895
  %5903 = fmul fast float %4734, 4.000000e+00
  %5904 = fmul fast float %5903, %5844
  %5905 = fmul fast float %5904, %5896
  %5906 = fadd fast float %5899, %5886
  %5907 = fadd fast float %5902, %5887
  %5908 = fadd fast float %5905, %5888
  %5909 = call float @dx.op.unary.f32(i32 7, float %5906)  ; Saturate(value)
  %5910 = call float @dx.op.unary.f32(i32 7, float %5907)  ; Saturate(value)
  %5911 = call float @dx.op.unary.f32(i32 7, float %5908)  ; Saturate(value)
  br label %5912

; <label>:5912                                    ; preds = %5889, %5874
  %5913 = phi float [ %5909, %5889 ], [ %5886, %5874 ]
  %5914 = phi float [ %5910, %5889 ], [ %5887, %5874 ]
  %5915 = phi float [ %5911, %5889 ], [ %5888, %5874 ]
  %5916 = call float @dx.op.binary.f32(i32 35, float %5914, float %5915)  ; FMax(a,b)
  %5917 = call float @dx.op.binary.f32(i32 35, float %5913, float %5916)  ; FMax(a,b)
  %5918 = fsub fast float 1.000000e+00, %5917
  %5919 = fmul fast float %5875, %5833
  %5920 = fmul fast float %5876, %5833
  %5921 = fmul fast float %5877, %5833
  %5922 = fsub fast float 1.000000e+00, %5796
  %5923 = bitcast float %5922 to i32
  %5924 = sitofp i32 %5923 to float
  %5925 = fmul fast float %5924, 5.000000e+00
  %5926 = fadd fast float %5925, 0xC1EFBF8940000000
  %5927 = fptosi float %5926 to i32
  %5928 = bitcast i32 %5927 to float
  %5929 = fmul fast float %5928, %3820
  %5930 = fmul fast float %5918, %5929
  %5931 = fmul fast float %5930, %4911
  %5932 = fmul fast float %5930, %4912
  %5933 = fmul fast float %5930, %4913
  %5934 = fadd fast float %5931, %5919
  %5935 = fadd fast float %5932, %5920
  %5936 = fadd fast float %5933, %5921
  %5937 = fmul fast float %5801, %5784
  %5938 = fmul fast float %5937, %5918
  %5939 = fmul fast float %5801, %5785
  %5940 = fmul fast float %5939, %5918
  %5941 = fmul fast float %5801, %5786
  %5942 = fmul fast float %5941, %5918
  %5943 = fmul fast float %5937, %5934
  %5944 = fmul fast float %5939, %5935
  %5945 = fmul fast float %5941, %5936
  %5946 = fadd fast float %5938, %4895
  %5947 = fmul fast float %5946, %3816
  %5948 = fadd fast float %5940, %4896
  %5949 = fmul fast float %5948, %3816
  %5950 = fadd fast float %5942, %4897
  %5951 = fmul fast float %5950, %3816
  %5952 = fadd fast float %5943, %4938
  %5953 = fmul fast float %5952, %3816
  %5954 = fadd fast float %5944, %4941
  %5955 = fmul fast float %5954, %3816
  %5956 = fadd fast float %5945, %4944
  %5957 = fmul fast float %5956, %3816
  br label %5958

; <label>:5958                                    ; preds = %5912, %5778, %4888
  %5959 = phi float [ %4939, %4888 ], [ %4939, %5778 ], [ %5953, %5912 ]
  %5960 = phi float [ %4942, %4888 ], [ %4942, %5778 ], [ %5955, %5912 ]
  %5961 = phi float [ %4945, %4888 ], [ %4945, %5778 ], [ %5957, %5912 ]
  %5962 = phi float [ %4934, %4888 ], [ %4934, %5778 ], [ %5947, %5912 ]
  %5963 = phi float [ %4935, %4888 ], [ %4935, %5778 ], [ %5949, %5912 ]
  %5964 = phi float [ %4936, %4888 ], [ %4936, %5778 ], [ %5951, %5912 ]
  %5965 = fmul fast float %3816, %3816
  %5966 = fsub fast float 1.000000e+00, %5965
  %5967 = call float @dx.op.dot3.f32(i32 55, float %5966, float %5966, float %5966, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5968 = fsub fast float 1.000000e+00, %5967
  %5969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5970 = extractvalue %dx.types.CBufRet.f32 %5969, 0
  %5971 = fmul fast float %5970, %4917
  %5972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5973 = extractvalue %dx.types.CBufRet.f32 %5972, 3
  %5974 = fsub fast float 1.000000e+00, %3824
  %5975 = call float @dx.op.unary.f32(i32 7, float %5974)  ; Saturate(value)
  %5976 = fadd fast float %5964, %3822
  %5977 = fmul fast float %5976, %3824
  %5978 = fmul fast float %5975, %5973
  %5979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5980 = extractvalue %dx.types.CBufRet.f32 %5979, 3
  %5981 = fmul fast float %5962, %4723
  %5982 = fmul fast float %5963, %4724
  %5983 = fmul fast float %5964, %4725
  %5984 = fcmp fast ogt float %83, %201
  %5985 = and i1 %5984, %3863
  %5986 = or i1 %3942, %5985
  %5987 = icmp eq i32 %3862, 2
  %5988 = fcmp fast ole float %83, %201
  %5989 = and i1 %5988, %5987
  %5990 = or i1 %5989, %5986
  br i1 %5985, label %5991, label %6248

; <label>:5991                                    ; preds = %5958
  %5992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5993 = extractvalue %dx.types.CBufRet.f32 %5992, 2
  %5994 = extractvalue %dx.types.CBufRet.f32 %5992, 3
  %5995 = fmul fast float %5993, %92
  %5996 = fmul fast float %5994, %93
  %5997 = call float @dx.op.unary.f32(i32 7, float %5995)  ; Saturate(value)
  %5998 = call float @dx.op.unary.f32(i32 7, float %5996)  ; Saturate(value)
  %5999 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %5997, float %5998, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6000 = extractvalue %dx.types.ResRet.f32 %5999, 0
  %6001 = extractvalue %dx.types.ResRet.f32 %5999, 1
  %6002 = extractvalue %dx.types.ResRet.f32 %5999, 2
  %6003 = extractvalue %dx.types.ResRet.f32 %5999, 3
  %6004 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %5997, float %5998, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6005 = extractvalue %dx.types.ResRet.f32 %6004, 0
  %6006 = extractvalue %dx.types.ResRet.f32 %6004, 1
  %6007 = extractvalue %dx.types.ResRet.f32 %6004, 2
  %6008 = extractvalue %dx.types.ResRet.f32 %6004, 3
  %6009 = call float @dx.op.binary.f32(i32 35, float %6001, float %6002)  ; FMax(a,b)
  %6010 = call float @dx.op.binary.f32(i32 35, float %6000, float %6009)  ; FMax(a,b)
  %6011 = call float @dx.op.binary.f32(i32 35, float %6010, float %6003)  ; FMax(a,b)
  %6012 = call float @dx.op.binary.f32(i32 36, float %6006, float %6007)  ; FMin(a,b)
  %6013 = call float @dx.op.binary.f32(i32 36, float %6005, float %6012)  ; FMin(a,b)
  %6014 = call float @dx.op.binary.f32(i32 36, float %6013, float %6008)  ; FMin(a,b)
  %6015 = fmul fast float %6011, 2.550000e+02
  %6016 = fadd fast float %6015, 0x3F70101020000000
  %6017 = fptoui float %6016 to i32
  %6018 = fmul fast float %6014, 2.550000e+02
  %6019 = fadd fast float %6018, 0x3F70101020000000
  %6020 = fptoui float %6019 to i32
  %6021 = icmp ult i32 %6017, %6020
  br i1 %6021, label %6022, label %6190

; <label>:6022                                    ; preds = %5991
  %6023 = fcmp fast ogt float %82, 9.843750e-01
  %6024 = fadd fast float %83, -4.000000e+00
  %6025 = select i1 %6023, float -4.000000e+00, float %6024
  %6026 = call float @dx.op.binary.f32(i32 35, float %6025, float 0.000000e+00)  ; FMax(a,b)
  %6027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6028 = extractvalue %dx.types.CBufRet.f32 %6027, 0
  %6029 = fadd fast float %6028, %6026
  %6030 = extractvalue %dx.types.CBufRet.f32 %6027, 2
  %6031 = fmul fast float %6029, %6030
  %6032 = call float @dx.op.unary.f32(i32 23, float %6031)  ; Log(value)
  %6033 = extractvalue %dx.types.CBufRet.f32 %6027, 3
  %6034 = fmul fast float %6033, %6032
  %6035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6036 = extractvalue %dx.types.CBufRet.f32 %6035, 2
  %6037 = fmul fast float %6034, %6036
  %6038 = call float @dx.op.unary.f32(i32 7, float %6037)  ; Saturate(value)
  %6039 = uitofp i32 %6017 to float
  %6040 = uitofp i32 %6020 to float
  %6041 = fadd fast float %6039, 5.000000e-01
  %6042 = fadd fast float %6040, 5.000000e-01
  %6043 = fmul fast float %6036, %6041
  %6044 = fmul fast float %6036, %6042
  %6045 = fadd fast float %6043, 0x3F0FFB4800000000
  %6046 = fadd fast float %6044, 0xBF0FFB4800000000
  %6047 = call float @dx.op.binary.f32(i32 35, float %6038, float %6045)  ; FMax(a,b)
  %6048 = call float @dx.op.binary.f32(i32 36, float %6047, float %6046)  ; FMin(a,b)
  %6049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6050 = extractvalue %dx.types.CBufRet.f32 %6049, 1
  %6051 = extractvalue %dx.types.CBufRet.f32 %6049, 2
  %6052 = extractvalue %dx.types.CBufRet.f32 %6049, 0
  %6053 = fmul fast float %6050, %6048
  %6054 = fadd fast float %6052, %6053
  %6055 = fadd fast float %6052, %6051
  %6056 = fsub fast float %6050, %6051
  %6057 = fadd fast float %6056, %6052
  %6058 = call float @dx.op.binary.f32(i32 35, float %6054, float %6055)  ; FMax(a,b)
  %6059 = call float @dx.op.binary.f32(i32 36, float %6058, float %6057)  ; FMin(a,b)
  %6060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %34, float %5997, float %5998, float %6059, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6061 = extractvalue %dx.types.ResRet.f32 %6060, 0
  %6062 = extractvalue %dx.types.ResRet.f32 %6060, 1
  %6063 = extractvalue %dx.types.ResRet.f32 %6060, 2
  %6064 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6065 = extractvalue %dx.types.CBufRet.i32 %6064, 0
  %6066 = extractvalue %dx.types.CBufRet.i32 %6064, 1
  %6067 = uitofp i32 %6065 to float
  %6068 = uitofp i32 %6066 to float
  %6069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6070 = extractvalue %dx.types.CBufRet.f32 %6069, 0
  %6071 = extractvalue %dx.types.CBufRet.f32 %6069, 1
  %6072 = fmul fast float %6067, %5997
  %6073 = fmul fast float %6068, %5998
  %6074 = fadd fast float %6072, -5.000000e-01
  %6075 = fadd fast float %6073, -5.000000e-01
  %6076 = call float @dx.op.unary.f32(i32 22, float %6074)  ; Frc(value)
  %6077 = call float @dx.op.unary.f32(i32 22, float %6075)  ; Frc(value)
  %6078 = fmul fast float %6076, %6076
  %6079 = fmul fast float %6078, %6076
  %6080 = fsub fast float 3.000000e+00, %6076
  %6081 = fmul fast float %6078, %6080
  %6082 = fmul fast float %6076, 3.000000e+00
  %6083 = fmul fast float %6079, 3.000000e+00
  %6084 = fmul fast float %6078, 6.000000e+00
  %6085 = fsub fast float %6083, %6084
  %6086 = fadd fast float %6085, 4.000000e+00
  %6087 = fmul fast float %6086, 0x3FC5555560000000
  %6088 = fmul fast float %6079, -3.000000e+00
  %6089 = fadd fast float %6078, %6076
  %6090 = fmul fast float %6089, 3.000000e+00
  %6091 = fadd fast float %6088, 1.000000e+00
  %6092 = fadd fast float %6091, %6090
  %6093 = fmul fast float %6079, 0x3FC5555560000000
  %6094 = fmul fast float %6077, %6077
  %6095 = fmul fast float %6094, %6077
  %6096 = fsub fast float 3.000000e+00, %6077
  %6097 = fmul fast float %6094, %6096
  %6098 = fmul fast float %6077, 3.000000e+00
  %6099 = fmul fast float %6095, 3.000000e+00
  %6100 = fmul fast float %6094, 6.000000e+00
  %6101 = fsub fast float %6099, %6100
  %6102 = fadd fast float %6101, 4.000000e+00
  %6103 = fmul fast float %6102, 0x3FC5555560000000
  %6104 = fmul fast float %6095, -3.000000e+00
  %6105 = fadd fast float %6094, %6077
  %6106 = fmul fast float %6105, 3.000000e+00
  %6107 = fadd fast float %6104, 1.000000e+00
  %6108 = fadd fast float %6107, %6106
  %6109 = fmul fast float %6095, 0x3FC5555560000000
  %6110 = fadd fast float %6076, 1.000000e+00
  %6111 = fsub fast float 1.000000e+00, %6082
  %6112 = fadd fast float %6111, %6081
  %6113 = fadd fast float %6112, %6086
  %6114 = fmul fast float %6113, 0x3FC5555560000000
  %6115 = fdiv fast float %6087, %6114
  %6116 = fsub fast float %6110, %6115
  %6117 = fsub fast float 1.000000e+00, %6076
  %6118 = fadd fast float %6092, %6079
  %6119 = fmul fast float %6118, 0x3FC5555560000000
  %6120 = fdiv fast float %6093, %6119
  %6121 = fadd fast float %6117, %6120
  %6122 = fadd fast float %6077, 1.000000e+00
  %6123 = fsub fast float 1.000000e+00, %6098
  %6124 = fadd fast float %6123, %6097
  %6125 = fadd fast float %6124, %6102
  %6126 = fmul fast float %6125, 0x3FC5555560000000
  %6127 = fdiv fast float %6103, %6126
  %6128 = fsub fast float %6122, %6127
  %6129 = fsub fast float 1.000000e+00, %6077
  %6130 = fadd fast float %6108, %6095
  %6131 = fmul fast float %6130, 0x3FC5555560000000
  %6132 = fdiv fast float %6109, %6131
  %6133 = fadd fast float %6132, %6129
  %6134 = fmul fast float %6116, %6070
  %6135 = fsub fast float %5997, %6134
  %6136 = fmul fast float %6121, %6070
  %6137 = fadd fast float %6136, %5997
  %6138 = fmul fast float %6133, %6071
  %6139 = fadd fast float %6138, %5998
  %6140 = fmul fast float %6128, %6071
  %6141 = fsub fast float %5998, %6140
  %6142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %6135, float %6141, float %6059, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6143 = extractvalue %dx.types.ResRet.f32 %6142, 0
  %6144 = extractvalue %dx.types.ResRet.f32 %6142, 1
  %6145 = extractvalue %dx.types.ResRet.f32 %6142, 2
  %6146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %6137, float %6141, float %6059, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6147 = extractvalue %dx.types.ResRet.f32 %6146, 0
  %6148 = extractvalue %dx.types.ResRet.f32 %6146, 1
  %6149 = extractvalue %dx.types.ResRet.f32 %6146, 2
  %6150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %6135, float %6139, float %6059, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6151 = extractvalue %dx.types.ResRet.f32 %6150, 0
  %6152 = extractvalue %dx.types.ResRet.f32 %6150, 1
  %6153 = extractvalue %dx.types.ResRet.f32 %6150, 2
  %6154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %6137, float %6139, float %6059, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6155 = extractvalue %dx.types.ResRet.f32 %6154, 0
  %6156 = extractvalue %dx.types.ResRet.f32 %6154, 1
  %6157 = extractvalue %dx.types.ResRet.f32 %6154, 2
  %6158 = fsub fast float %6151, %6143
  %6159 = fsub fast float %6152, %6144
  %6160 = fsub fast float %6153, %6145
  %6161 = fmul fast float %6158, %6131
  %6162 = fmul fast float %6159, %6131
  %6163 = fmul fast float %6160, %6131
  %6164 = fadd fast float %6161, %6143
  %6165 = fadd fast float %6162, %6144
  %6166 = fadd fast float %6163, %6145
  %6167 = fsub fast float %6155, %6147
  %6168 = fsub fast float %6156, %6148
  %6169 = fsub fast float %6157, %6149
  %6170 = fmul fast float %6167, %6131
  %6171 = fmul fast float %6168, %6131
  %6172 = fmul fast float %6169, %6131
  %6173 = fsub fast float %6147, %6164
  %6174 = fadd fast float %6173, %6170
  %6175 = fsub fast float %6148, %6165
  %6176 = fadd fast float %6175, %6171
  %6177 = fsub fast float %6149, %6166
  %6178 = fadd fast float %6177, %6172
  %6179 = fmul fast float %6174, %6119
  %6180 = fmul fast float %6176, %6119
  %6181 = fmul fast float %6178, %6119
  %6182 = fadd fast float %6179, %6164
  %6183 = fadd fast float %6180, %6165
  %6184 = fadd fast float %6181, %6166
  %6185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6186 = extractvalue %dx.types.CBufRet.f32 %6185, 1
  %6187 = fmul fast float %6182, %6186
  %6188 = fmul fast float %6183, %6186
  %6189 = fmul fast float %6184, %6186
  br label %6190

; <label>:6190                                    ; preds = %6022, %5991
  %6191 = phi float [ %6061, %6022 ], [ 1.000000e+00, %5991 ]
  %6192 = phi float [ %6062, %6022 ], [ 1.000000e+00, %5991 ]
  %6193 = phi float [ %6063, %6022 ], [ 1.000000e+00, %5991 ]
  %6194 = phi float [ %6187, %6022 ], [ 0.000000e+00, %5991 ]
  %6195 = phi float [ %6188, %6022 ], [ 0.000000e+00, %5991 ]
  %6196 = phi float [ %6189, %6022 ], [ 0.000000e+00, %5991 ]
  %6197 = fmul fast float %6194, %5968
  %6198 = fmul fast float %6195, %5968
  %6199 = fmul fast float %6196, %5968
  %6200 = call float @dx.op.dot3.f32(i32 55, float %6191, float %6192, float %6193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6201 = call float @dx.op.dot3.f32(i32 55, float %6197, float %6198, float %6199, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6202 = select i1 %240, float %6200, float %6191
  %6203 = select i1 %240, float %6200, float %6192
  %6204 = select i1 %240, float 1.000000e+00, float %6193
  %6205 = select i1 %240, float %6201, float %6197
  %6206 = select i1 %240, float 0.000000e+00, float %6198
  %6207 = select i1 %240, float 0.000000e+00, float %6199
  %6208 = fmul fast float %6202, %5981
  %6209 = fmul fast float %6203, %5982
  %6210 = fmul fast float %6204, %5983
  %6211 = fadd fast float %6208, %6205
  %6212 = fadd fast float %6209, %6206
  %6213 = fadd fast float %6207, %6210
  %6214 = fmul fast float %6202, %5959
  %6215 = fmul fast float %6203, %5960
  %6216 = fmul fast float %6204, %5961
  %6217 = fmul fast float %128, %5993
  %6218 = fmul fast float %130, %5994
  %6219 = fsub fast float 1.000000e+00, %6217
  %6220 = fsub fast float 1.000000e+00, %6218
  %6221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6222 = extractvalue %dx.types.CBufRet.f32 %6221, 0
  %6223 = extractvalue %dx.types.CBufRet.f32 %6221, 1
  %6224 = extractvalue %dx.types.CBufRet.f32 %6221, 2
  %6225 = fmul fast float %6219, %6222
  %6226 = fmul fast float %6219, %6223
  %6227 = fmul fast float %6219, %6224
  %6228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6229 = extractvalue %dx.types.CBufRet.f32 %6228, 0
  %6230 = extractvalue %dx.types.CBufRet.f32 %6228, 1
  %6231 = extractvalue %dx.types.CBufRet.f32 %6228, 2
  %6232 = fmul fast float %6220, %6229
  %6233 = fmul fast float %6220, %6230
  %6234 = fmul fast float %6220, %6231
  %6235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.f32 %6235, 0
  %6237 = extractvalue %dx.types.CBufRet.f32 %6235, 1
  %6238 = extractvalue %dx.types.CBufRet.f32 %6235, 2
  %6239 = fadd fast float %6232, %6236
  %6240 = fadd fast float %6239, %6225
  %6241 = fadd fast float %6233, %6237
  %6242 = fadd fast float %6241, %6226
  %6243 = fadd fast float %6234, %6238
  %6244 = fadd fast float %6243, %6227
  %6245 = fmul fast float %6240, %201
  %6246 = fmul fast float %6242, %201
  %6247 = fmul fast float %6244, %201
  br label %6248

; <label>:6248                                    ; preds = %6190, %5958
  %6249 = phi float [ %6245, %6190 ], [ %179, %5958 ]
  %6250 = phi float [ %6246, %6190 ], [ %180, %5958 ]
  %6251 = phi float [ %6247, %6190 ], [ %181, %5958 ]
  %6252 = phi float [ %201, %6190 ], [ %83, %5958 ]
  %6253 = phi float [ %6211, %6190 ], [ %5981, %5958 ]
  %6254 = phi float [ %6212, %6190 ], [ %5982, %5958 ]
  %6255 = phi float [ %6213, %6190 ], [ %5983, %5958 ]
  %6256 = phi float [ %6214, %6190 ], [ %5959, %5958 ]
  %6257 = phi float [ %6215, %6190 ], [ %5960, %5958 ]
  %6258 = phi float [ %6216, %6190 ], [ %5961, %5958 ]
  %6259 = phi float [ %6191, %6190 ], [ 1.000000e+00, %5958 ]
  br i1 %5990, label %7414, label %6260

; <label>:6260                                    ; preds = %6248
  %6261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6262 = extractvalue %dx.types.CBufRet.f32 %6261, 0
  %6263 = extractvalue %dx.types.CBufRet.f32 %6261, 1
  %6264 = extractvalue %dx.types.CBufRet.f32 %6261, 2
  %6265 = extractvalue %dx.types.CBufRet.f32 %6261, 3
  %6266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6267 = extractvalue %dx.types.CBufRet.f32 %6266, 0
  %6268 = extractvalue %dx.types.CBufRet.f32 %6266, 1
  %6269 = extractvalue %dx.types.CBufRet.f32 %6266, 2
  %6270 = extractvalue %dx.types.CBufRet.f32 %6266, 3
  %6271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6272 = extractvalue %dx.types.CBufRet.f32 %6271, 0
  %6273 = extractvalue %dx.types.CBufRet.f32 %6271, 1
  %6274 = extractvalue %dx.types.CBufRet.f32 %6271, 2
  %6275 = extractvalue %dx.types.CBufRet.f32 %6271, 3
  %6276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6277 = extractvalue %dx.types.CBufRet.f32 %6276, 0
  %6278 = extractvalue %dx.types.CBufRet.f32 %6276, 1
  %6279 = extractvalue %dx.types.CBufRet.f32 %6276, 2
  %6280 = extractvalue %dx.types.CBufRet.f32 %6276, 3
  %6281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6282 = extractvalue %dx.types.CBufRet.f32 %6281, 3
  %6283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6284 = extractvalue %dx.types.CBufRet.f32 %6283, 3
  %6285 = extractvalue %dx.types.CBufRet.f32 %6283, 0
  %6286 = extractvalue %dx.types.CBufRet.f32 %6283, 1
  %6287 = extractvalue %dx.types.CBufRet.f32 %6283, 2
  %6288 = fcmp fast olt float %6287, -5.000000e-01
  %6289 = call float @dx.op.dot3.f32(i32 55, float %6249, float %6250, float %6251, float %6249, float %6250, float %6251)  ; Dot3(ax,ay,az,bx,by,bz)
  %6290 = call float @dx.op.unary.f32(i32 25, float %6289)  ; Rsqrt(value)
  %6291 = fmul fast float %6290, %6289
  %6292 = fmul fast float %6290, %6249
  %6293 = fmul fast float %6290, %6250
  %6294 = fmul fast float %6290, %6251
  %6295 = fadd fast float %6291, %6265
  %6296 = call float @dx.op.dot3.f32(i32 55, float %6292, float %6293, float %6294, float %6262, float %6263, float %6264)  ; Dot3(ax,ay,az,bx,by,bz)
  %6297 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6298 = extractvalue %dx.types.CBufRet.i32 %6297, 1
  %6299 = and i32 %6298, 1
  %6300 = icmp ne i32 %6299, 0
  %6301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6302 = extractvalue %dx.types.CBufRet.f32 %6301, 2
  %6303 = fcmp fast ogt float %6302, 0.000000e+00
  %6304 = and i1 %6300, %6303
  br i1 %6304, label %6305, label %6711, !dx.controlflow.hints !107

; <label>:6305                                    ; preds = %6260
  %6306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6307 = extractvalue %dx.types.CBufRet.f32 %6306, 3
  %6308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6309 = extractvalue %dx.types.CBufRet.f32 %6308, 2
  %6310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6311 = extractvalue %dx.types.CBufRet.f32 %6310, 2
  %6312 = fsub fast float %6309, %6311
  %6313 = and i32 %6298, 2
  %6314 = extractvalue %dx.types.CBufRet.i32 %6297, 0
  %6315 = call i32 @dx.op.binary.i32(i32 40, i32 %6314, i32 3)  ; UMin(a,b)
  %6316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6317 = extractvalue %dx.types.CBufRet.f32 %6316, 0
  %6318 = extractvalue %dx.types.CBufRet.f32 %6316, 1
  %6319 = extractvalue %dx.types.CBufRet.f32 %6310, 0
  %6320 = extractvalue %dx.types.CBufRet.f32 %6310, 1
  %6321 = fsub fast float %6317, %6319
  %6322 = fsub fast float %6318, %6320
  %6323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6324 = extractvalue %dx.types.CBufRet.f32 %6323, 0
  %6325 = fcmp fast ogt float %6324, 0.000000e+00
  %6326 = fsub fast float -0.000000e+00, %6321
  %6327 = fsub fast float -0.000000e+00, %6322
  %6328 = call float @dx.op.dot2.f32(i32 54, float %6292, float %6293, float %6292, float %6293)  ; Dot2(ax,ay,bx,by)
  %6329 = call float @dx.op.dot2.f32(i32 54, float %6292, float %6293, float %6326, float %6327)  ; Dot2(ax,ay,bx,by)
  %6330 = fmul fast float %6329, 2.000000e+00
  %6331 = call float @dx.op.dot2.f32(i32 54, float %6326, float %6327, float %6326, float %6327)  ; Dot2(ax,ay,bx,by)
  %6332 = fmul fast float %6324, %6324
  %6333 = fsub fast float %6331, %6332
  %6334 = fmul fast float %6330, %6330
  %6335 = fmul fast float %6328, 4.000000e+00
  %6336 = fmul fast float %6335, %6333
  %6337 = fsub fast float %6334, %6336
  %6338 = fcmp fast ogt float %6337, 0.000000e+00
  br i1 %6338, label %6339, label %6354

; <label>:6339                                    ; preds = %6305
  %6340 = fcmp fast ogt float %6330, 0.000000e+00
  %6341 = call float @dx.op.unary.f32(i32 24, float %6337)  ; Sqrt(value)
  %6342 = fsub fast float -0.000000e+00, %6341
  %6343 = select i1 %6340, float %6341, float %6342
  %6344 = fadd fast float %6343, %6330
  %6345 = fmul float %6344, -5.000000e-01
  %6346 = fdiv fast float %6345, %6328
  %6347 = call float @dx.op.binary.f32(i32 35, float %6346, float 0.000000e+00)  ; FMax(a,b)
  %6348 = call float @dx.op.binary.f32(i32 36, float %6291, float %6347)  ; FMin(a,b)
  %6349 = fdiv fast float %6333, %6345
  %6350 = call float @dx.op.binary.f32(i32 35, float %6349, float 0.000000e+00)  ; FMax(a,b)
  %6351 = call float @dx.op.binary.f32(i32 36, float %6291, float %6350)  ; FMin(a,b)
  %6352 = call float @dx.op.binary.f32(i32 36, float %6348, float %6351)  ; FMin(a,b)
  %6353 = call float @dx.op.binary.f32(i32 35, float %6348, float %6351)  ; FMax(a,b)
  br label %6354

; <label>:6354                                    ; preds = %6339, %6305
  %6355 = phi float [ %6353, %6339 ], [ -1.000000e+00, %6305 ]
  %6356 = phi float [ %6352, %6339 ], [ -1.000000e+00, %6305 ]
  %6357 = phi i1 [ true, %6339 ], [ false, %6305 ]
  %6358 = and i1 %6325, %6357
  br i1 %6358, label %6359, label %6361

; <label>:6359                                    ; preds = %6354
  %6360 = fcmp fast oeq float %6356, %6355
  br i1 %6360, label %6664, label %6362

; <label>:6361                                    ; preds = %6354
  br i1 %6325, label %6664, label %6362

; <label>:6362                                    ; preds = %6361, %6359
  %6363 = phi float [ %6291, %6361 ], [ %6355, %6359 ]
  %6364 = phi float [ 0.000000e+00, %6361 ], [ %6356, %6359 ]
  %6365 = icmp ne i32 %6313, 0
  %6366 = fmul fast float %6363, %6294
  %6367 = fadd fast float %6366, %6307
  %6368 = fmul fast float %6367, %6363
  %6369 = select i1 %6365, float 0.000000e+00, float %6368
  %6370 = fcmp fast oeq float %6294, 0.000000e+00
  %6371 = fdiv fast float %6312, %6294
  %6372 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6371)  ; FMax(a,b)
  %6373 = select i1 %6370, float %6363, float %6372
  %6374 = call float @dx.op.binary.f32(i32 36, float %6363, float %6373)  ; FMin(a,b)
  %6375 = fcmp fast ogt float %6294, 0.000000e+00
  %6376 = fcmp fast olt float %6312, 0.000000e+00
  br i1 %6375, label %6377, label %6434

; <label>:6377                                    ; preds = %6362
  %6378 = icmp eq i32 %6313, 0
  br i1 %6376, label %6379, label %6423

; <label>:6379                                    ; preds = %6377
  %6380 = select i1 %6378, float %6363, float 0.000000e+00
  %6381 = fsub fast float -0.000000e+00, %6380
  %6382 = call float @dx.op.unary.f32(i32 6, float %6381)  ; FAbs(value)
  %6383 = fmul fast float %6380, %6294
  %6384 = fadd fast float %6383, %6307
  %6385 = fmul fast float %6382, %6384
  %6386 = fsub fast float %6369, %6385
  %6387 = fsub fast float %6363, %6382
  %6388 = select i1 %6378, float %6387, float 0.000000e+00
  %6389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6389, 0
  %6391 = extractvalue %dx.types.CBufRet.f32 %6389, 1
  %6392 = extractvalue %dx.types.CBufRet.f32 %6389, 2
  %6393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6394 = extractvalue %dx.types.CBufRet.f32 %6393, 0
  %6395 = extractvalue %dx.types.CBufRet.f32 %6393, 1
  %6396 = extractvalue %dx.types.CBufRet.f32 %6393, 2
  %6397 = extractvalue %dx.types.CBufRet.f32 %6393, 3
  %6398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6399 = extractvalue %dx.types.CBufRet.f32 %6398, 3
  %6400 = call float @dx.op.binary.f32(i32 36, float %6386, float %6399)  ; FMin(a,b)
  %6401 = fmul fast float %6397, %6388
  %6402 = call float @dx.op.unary.f32(i32 7, float %6401)  ; Saturate(value)
  %6403 = fsub fast float %6394, %6390
  %6404 = fsub fast float %6395, %6391
  %6405 = fsub fast float %6396, %6392
  %6406 = fmul fast float %6402, %6403
  %6407 = fmul fast float %6402, %6404
  %6408 = fmul fast float %6402, %6405
  %6409 = fadd fast float %6406, %6390
  %6410 = fadd fast float %6407, %6391
  %6411 = fadd fast float %6408, %6392
  %6412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6413 = extractvalue %dx.types.CBufRet.f32 %6412, 0
  %6414 = extractvalue %dx.types.CBufRet.f32 %6412, 1
  %6415 = fadd fast float %6414, %6413
  %6416 = call float @dx.op.unary.f32(i32 7, float %6415)  ; Saturate(value)
  %6417 = extractvalue %dx.types.CBufRet.f32 %6412, 2
  %6418 = extractvalue %dx.types.CBufRet.f32 %6412, 3
  %6419 = fadd fast float %6418, %6417
  %6420 = call float @dx.op.unary.f32(i32 7, float %6419)  ; Saturate(value)
  %6421 = fmul fast float %6416, %6400
  %6422 = fmul fast float %6421, %6420
  br label %6664

; <label>:6423                                    ; preds = %6377
  br i1 %6378, label %6424, label %6445

; <label>:6424                                    ; preds = %6423
  %6425 = call float @dx.op.binary.f32(i32 36, float %6374, float %6364)  ; FMin(a,b)
  %6426 = fsub fast float %6374, %6425
  %6427 = fsub fast float %6426, %6363
  %6428 = call float @dx.op.unary.f32(i32 6, float %6427)  ; FAbs(value)
  %6429 = fadd fast float %6426, %6363
  %6430 = fmul fast float %6429, %6294
  %6431 = fadd fast float %6430, %6307
  %6432 = fmul fast float %6431, %6428
  %6433 = fsub fast float %6369, %6432
  br label %6445

; <label>:6434                                    ; preds = %6362
  br i1 %6376, label %6435, label %6445

; <label>:6435                                    ; preds = %6434
  %6436 = call float @dx.op.binary.f32(i32 35, float %6364, float %6374)  ; FMax(a,b)
  %6437 = icmp eq i32 %6313, 0
  %6438 = select i1 %6437, float %6374, float 0.000000e+00
  %6439 = fsub fast float -0.000000e+00, %6438
  %6440 = call float @dx.op.unary.f32(i32 6, float %6439)  ; FAbs(value)
  %6441 = fmul fast float %6438, %6294
  %6442 = fadd fast float %6441, %6307
  %6443 = fmul fast float %6440, %6442
  %6444 = fsub fast float %6369, %6443
  br label %6445

; <label>:6445                                    ; preds = %6435, %6434, %6424, %6423
  %6446 = phi float [ %6364, %6423 ], [ %6364, %6424 ], [ %6436, %6435 ], [ %6364, %6434 ]
  %6447 = phi float [ 0.000000e+00, %6423 ], [ %6428, %6424 ], [ %6440, %6435 ], [ 0.000000e+00, %6434 ]
  %6448 = phi float [ %6369, %6423 ], [ %6433, %6424 ], [ %6444, %6435 ], [ %6369, %6434 ]
  %6449 = phi float [ %6374, %6423 ], [ %6374, %6424 ], [ %6363, %6435 ], [ %6363, %6434 ]
  %6450 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 0
  store float -1.000000e+00, float* %6450, align 4, !tbaa !108, !noalias !110
  %6451 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 1
  store float -1.000000e+00, float* %6451, align 4, !tbaa !108, !noalias !110
  %6452 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 2
  store float -1.000000e+00, float* %6452, align 4, !tbaa !108, !noalias !110
  %6453 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 0
  store float -1.000000e+00, float* %6453, align 4, !tbaa !108, !noalias !110
  %6454 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 1
  store float -1.000000e+00, float* %6454, align 4, !tbaa !108, !noalias !110
  %6455 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 2
  store float -1.000000e+00, float* %6455, align 4, !tbaa !108, !noalias !110
  %6456 = icmp sgt i32 %6315, 0
  br i1 %6456, label %6457, label %6518

; <label>:6457                                    ; preds = %6445
  br label %6458

; <label>:6458                                    ; preds = %6507, %6457
  %6459 = phi i32 [ %6508, %6507 ], [ 0, %6457 ]
  %6460 = phi i32 [ %6509, %6507 ], [ 0, %6457 ]
  %6461 = add nuw i32 %6460, 171
  %6462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 %6461)  ; CBufferLoadLegacy(handle,regIndex)
  %6463 = extractvalue %dx.types.CBufRet.f32 %6462, 0
  %6464 = extractvalue %dx.types.CBufRet.f32 %6462, 1
  %6465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6466 = extractvalue %dx.types.CBufRet.f32 %6465, 0
  %6467 = extractvalue %dx.types.CBufRet.f32 %6465, 1
  %6468 = fsub fast float %6463, %6466
  %6469 = fsub fast float %6464, %6467
  %6470 = extractvalue %dx.types.CBufRet.f32 %6462, 2
  %6471 = fsub fast float -0.000000e+00, %6468
  %6472 = fsub fast float -0.000000e+00, %6469
  %6473 = call float @dx.op.dot2.f32(i32 54, float %6292, float %6293, float %6471, float %6472)  ; Dot2(ax,ay,bx,by)
  %6474 = fmul fast float %6473, 2.000000e+00
  %6475 = call float @dx.op.dot2.f32(i32 54, float %6471, float %6472, float %6471, float %6472)  ; Dot2(ax,ay,bx,by)
  %6476 = fmul fast float %6470, %6470
  %6477 = fsub fast float %6475, %6476
  %6478 = fmul fast float %6474, %6474
  %6479 = fmul fast float %6335, %6477
  %6480 = fsub fast float %6478, %6479
  %6481 = fcmp fast ogt float %6480, 0.000000e+00
  br i1 %6481, label %6482, label %6497

; <label>:6482                                    ; preds = %6458
  %6483 = fcmp fast ogt float %6474, 0.000000e+00
  %6484 = call float @dx.op.unary.f32(i32 24, float %6480)  ; Sqrt(value)
  %6485 = fsub fast float -0.000000e+00, %6484
  %6486 = select i1 %6483, float %6484, float %6485
  %6487 = fadd fast float %6486, %6474
  %6488 = fmul float %6487, -5.000000e-01
  %6489 = fdiv fast float %6488, %6328
  %6490 = call float @dx.op.binary.f32(i32 35, float %6489, float 0.000000e+00)  ; FMax(a,b)
  %6491 = call float @dx.op.binary.f32(i32 36, float %6363, float %6490)  ; FMin(a,b)
  %6492 = fdiv fast float %6477, %6488
  %6493 = call float @dx.op.binary.f32(i32 35, float %6492, float 0.000000e+00)  ; FMax(a,b)
  %6494 = call float @dx.op.binary.f32(i32 36, float %6363, float %6493)  ; FMin(a,b)
  %6495 = call float @dx.op.binary.f32(i32 36, float %6491, float %6494)  ; FMin(a,b)
  %6496 = call float @dx.op.binary.f32(i32 35, float %6491, float %6494)  ; FMax(a,b)
  br label %6497

; <label>:6497                                    ; preds = %6482, %6458
  %6498 = phi float [ %6496, %6482 ], [ -1.000000e+00, %6458 ]
  %6499 = phi float [ %6495, %6482 ], [ -1.000000e+00, %6458 ]
  %6500 = phi i1 [ true, %6482 ], [ false, %6458 ]
  br i1 %6500, label %6501, label %6507

; <label>:6501                                    ; preds = %6497
  %6502 = call float @dx.op.binary.f32(i32 35, float %6446, float %6499)  ; FMax(a,b)
  %6503 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %6460
  store float %6502, float* %6503, align 4, !tbaa !108, !noalias !110
  %6504 = call float @dx.op.binary.f32(i32 35, float %6446, float %6498)  ; FMax(a,b)
  %6505 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 %6460
  store float %6504, float* %6505, align 4, !tbaa !108, !noalias !110
  %6506 = add nsw i32 %6459, 1
  br label %6507

; <label>:6507                                    ; preds = %6501, %6497
  %6508 = phi i32 [ %6506, %6501 ], [ %6459, %6497 ]
  %6509 = add nuw nsw i32 %6460, 1
  %6510 = icmp eq i32 %6509, %6315
  br i1 %6510, label %6511, label %6458

; <label>:6511                                    ; preds = %6507
  %6512 = load float, float* %6452, align 4, !tbaa !108, !alias.scope !126, !noalias !129
  %6513 = load float, float* %6451, align 4, !tbaa !108, !alias.scope !132, !noalias !133
  %6514 = load float, float* %6450, align 4, !tbaa !108, !alias.scope !134, !noalias !135
  %6515 = load float, float* %6455, align 4, !tbaa !108, !alias.scope !136, !noalias !139
  %6516 = load float, float* %6454, align 4, !tbaa !108, !alias.scope !142, !noalias !143
  %6517 = load float, float* %6453, align 4, !tbaa !108, !alias.scope !144, !noalias !145
  br label %6518

; <label>:6518                                    ; preds = %6511, %6445
  %6519 = phi float [ -1.000000e+00, %6445 ], [ %6517, %6511 ]
  %6520 = phi float [ -1.000000e+00, %6445 ], [ %6516, %6511 ]
  %6521 = phi float [ -1.000000e+00, %6445 ], [ %6515, %6511 ]
  %6522 = phi float [ -1.000000e+00, %6445 ], [ %6514, %6511 ]
  %6523 = phi float [ -1.000000e+00, %6445 ], [ %6513, %6511 ]
  %6524 = phi float [ -1.000000e+00, %6445 ], [ %6512, %6511 ]
  %6525 = phi i32 [ 0, %6445 ], [ %6508, %6511 ]
  %6526 = call float @dx.op.binary.f32(i32 36, float %6523, float %6524)  ; FMin(a,b)
  %6527 = call float @dx.op.binary.f32(i32 36, float %6522, float %6526)  ; FMin(a,b)
  %6528 = call float @dx.op.binary.f32(i32 35, float %6522, float %6523)  ; FMax(a,b)
  %6529 = call float @dx.op.binary.f32(i32 36, float %6528, float %6524)  ; FMin(a,b)
  %6530 = call float @dx.op.binary.f32(i32 36, float %6522, float %6523)  ; FMin(a,b)
  %6531 = call float @dx.op.binary.f32(i32 35, float %6530, float %6529)  ; FMax(a,b)
  %6532 = call float @dx.op.binary.f32(i32 35, float %6523, float %6524)  ; FMax(a,b)
  %6533 = call float @dx.op.binary.f32(i32 35, float %6522, float %6532)  ; FMax(a,b)
  store float %6527, float* %6450, align 4, !tbaa !108, !alias.scope !134, !noalias !135
  store float %6531, float* %6451, align 4, !tbaa !108, !alias.scope !132, !noalias !133
  store float %6533, float* %6452, align 4, !tbaa !108, !alias.scope !126, !noalias !129
  %6534 = call float @dx.op.binary.f32(i32 36, float %6520, float %6521)  ; FMin(a,b)
  %6535 = call float @dx.op.binary.f32(i32 36, float %6519, float %6534)  ; FMin(a,b)
  %6536 = call float @dx.op.binary.f32(i32 35, float %6519, float %6520)  ; FMax(a,b)
  %6537 = call float @dx.op.binary.f32(i32 36, float %6536, float %6521)  ; FMin(a,b)
  %6538 = call float @dx.op.binary.f32(i32 36, float %6519, float %6520)  ; FMin(a,b)
  %6539 = call float @dx.op.binary.f32(i32 35, float %6538, float %6537)  ; FMax(a,b)
  %6540 = call float @dx.op.binary.f32(i32 35, float %6520, float %6521)  ; FMax(a,b)
  %6541 = call float @dx.op.binary.f32(i32 35, float %6519, float %6540)  ; FMax(a,b)
  store float %6535, float* %6453, align 4, !tbaa !108, !alias.scope !144, !noalias !145
  store float %6539, float* %6454, align 4, !tbaa !108, !alias.scope !142, !noalias !143
  store float %6541, float* %6455, align 4, !tbaa !108, !alias.scope !136, !noalias !139
  %6542 = sub nsw i32 3, %6525
  %6543 = icmp sgt i32 %6542, 2
  br i1 %6543, label %6544, label %6582

; <label>:6544                                    ; preds = %6518
  %6545 = icmp eq i32 %6313, 0
  %6546 = fsub fast float %6363, %6447
  %6547 = select i1 %6545, float %6546, float %6447
  %6548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6549 = extractvalue %dx.types.CBufRet.f32 %6548, 0
  %6550 = extractvalue %dx.types.CBufRet.f32 %6548, 1
  %6551 = extractvalue %dx.types.CBufRet.f32 %6548, 2
  %6552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6553 = extractvalue %dx.types.CBufRet.f32 %6552, 0
  %6554 = extractvalue %dx.types.CBufRet.f32 %6552, 1
  %6555 = extractvalue %dx.types.CBufRet.f32 %6552, 2
  %6556 = extractvalue %dx.types.CBufRet.f32 %6552, 3
  %6557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6558 = extractvalue %dx.types.CBufRet.f32 %6557, 3
  %6559 = call float @dx.op.binary.f32(i32 36, float %6448, float %6558)  ; FMin(a,b)
  %6560 = fmul fast float %6556, %6547
  %6561 = call float @dx.op.unary.f32(i32 7, float %6560)  ; Saturate(value)
  %6562 = fsub fast float %6553, %6549
  %6563 = fsub fast float %6554, %6550
  %6564 = fsub fast float %6555, %6551
  %6565 = fmul fast float %6561, %6562
  %6566 = fmul fast float %6561, %6563
  %6567 = fmul fast float %6561, %6564
  %6568 = fadd fast float %6565, %6549
  %6569 = fadd fast float %6566, %6550
  %6570 = fadd fast float %6567, %6551
  %6571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6572 = extractvalue %dx.types.CBufRet.f32 %6571, 0
  %6573 = extractvalue %dx.types.CBufRet.f32 %6571, 1
  %6574 = fadd fast float %6573, %6572
  %6575 = call float @dx.op.unary.f32(i32 7, float %6574)  ; Saturate(value)
  %6576 = extractvalue %dx.types.CBufRet.f32 %6571, 2
  %6577 = extractvalue %dx.types.CBufRet.f32 %6571, 3
  %6578 = fadd fast float %6577, %6576
  %6579 = call float @dx.op.unary.f32(i32 7, float %6578)  ; Saturate(value)
  %6580 = fmul fast float %6575, %6559
  %6581 = fmul fast float %6580, %6579
  br label %6664

; <label>:6582                                    ; preds = %6518
  %6583 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %6542
  %6584 = load float, float* %6583, align 4, !tbaa !108, !noalias !110
  %6585 = fcmp fast olt float %6584, %6449
  %6586 = icmp sgt i32 %6525, 0
  %6587 = and i1 %6586, %6585
  br i1 %6587, label %6588, label %6625

; <label>:6588                                    ; preds = %6582
  br label %6589

; <label>:6589                                    ; preds = %6618, %6588
  %6590 = phi float [ %6619, %6618 ], [ %6447, %6588 ]
  %6591 = phi float [ %6620, %6618 ], [ %6448, %6588 ]
  %6592 = phi float [ %6600, %6618 ], [ %6584, %6588 ]
  %6593 = phi i32 [ %6597, %6618 ], [ %6542, %6588 ]
  %6594 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 %6593
  %6595 = load float, float* %6594, align 4, !tbaa !108, !noalias !110
  %6596 = icmp slt i32 %6593, 2
  %6597 = add nsw i32 %6593, 1
  %6598 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %6597
  %6599 = load float, float* %6598, align 4, !tbaa !108, !noalias !110
  %6600 = select i1 %6596, float %6599, float %6363
  %6601 = call float @dx.op.binary.f32(i32 36, float %6600, float %6595)  ; FMin(a,b)
  %6602 = call float @dx.op.binary.f32(i32 36, float %6449, float %6601)  ; FMin(a,b)
  %6603 = icmp eq i32 %6313, 0
  %6604 = fadd fast float %6602, %6592
  %6605 = fmul fast float %6604, %6294
  %6606 = fadd fast float %6605, %6307
  br i1 %6603, label %6612, label %6607

; <label>:6607                                    ; preds = %6589
  %6608 = fsub fast float %6602, %6592
  %6609 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6608)  ; FMax(a,b)
  %6610 = fmul fast float %6609, %6606
  %6611 = fadd fast float %6610, %6591
  br label %6618

; <label>:6612                                    ; preds = %6589
  %6613 = fsub fast float %6592, %6602
  %6614 = call float @dx.op.unary.f32(i32 6, float %6613)  ; FAbs(value)
  %6615 = fadd fast float %6614, %6590
  %6616 = fmul fast float %6614, %6606
  %6617 = fsub fast float %6591, %6616
  br label %6618

; <label>:6618                                    ; preds = %6612, %6607
  %6619 = phi float [ %6609, %6607 ], [ %6615, %6612 ]
  %6620 = phi float [ %6611, %6607 ], [ %6617, %6612 ]
  %6621 = fcmp fast olt float %6600, %6449
  %6622 = icmp slt i32 %6597, 3
  %6623 = and i1 %6622, %6621
  br i1 %6623, label %6589, label %6624

; <label>:6624                                    ; preds = %6618
  br label %6625

; <label>:6625                                    ; preds = %6624, %6582
  %6626 = phi float [ %6447, %6582 ], [ %6619, %6624 ]
  %6627 = phi float [ %6448, %6582 ], [ %6620, %6624 ]
  %6628 = fsub fast float %6363, %6626
  %6629 = select i1 %6365, float %6626, float %6628
  %6630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6631 = extractvalue %dx.types.CBufRet.f32 %6630, 0
  %6632 = extractvalue %dx.types.CBufRet.f32 %6630, 1
  %6633 = extractvalue %dx.types.CBufRet.f32 %6630, 2
  %6634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6635 = extractvalue %dx.types.CBufRet.f32 %6634, 0
  %6636 = extractvalue %dx.types.CBufRet.f32 %6634, 1
  %6637 = extractvalue %dx.types.CBufRet.f32 %6634, 2
  %6638 = extractvalue %dx.types.CBufRet.f32 %6634, 3
  %6639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6640 = extractvalue %dx.types.CBufRet.f32 %6639, 3
  %6641 = call float @dx.op.binary.f32(i32 36, float %6627, float %6640)  ; FMin(a,b)
  %6642 = fmul fast float %6638, %6629
  %6643 = call float @dx.op.unary.f32(i32 7, float %6642)  ; Saturate(value)
  %6644 = fsub fast float %6635, %6631
  %6645 = fsub fast float %6636, %6632
  %6646 = fsub fast float %6637, %6633
  %6647 = fmul fast float %6643, %6644
  %6648 = fmul fast float %6643, %6645
  %6649 = fmul fast float %6643, %6646
  %6650 = fadd fast float %6647, %6631
  %6651 = fadd fast float %6648, %6632
  %6652 = fadd fast float %6649, %6633
  %6653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6654 = extractvalue %dx.types.CBufRet.f32 %6653, 0
  %6655 = extractvalue %dx.types.CBufRet.f32 %6653, 1
  %6656 = fadd fast float %6655, %6654
  %6657 = call float @dx.op.unary.f32(i32 7, float %6656)  ; Saturate(value)
  %6658 = extractvalue %dx.types.CBufRet.f32 %6653, 2
  %6659 = extractvalue %dx.types.CBufRet.f32 %6653, 3
  %6660 = fadd fast float %6659, %6658
  %6661 = call float @dx.op.unary.f32(i32 7, float %6660)  ; Saturate(value)
  %6662 = fmul fast float %6657, %6641
  %6663 = fmul fast float %6662, %6661
  br label %6664

; <label>:6664                                    ; preds = %6625, %6544, %6379, %6361, %6359
  %6665 = phi float [ %6388, %6379 ], [ %6547, %6544 ], [ %6629, %6625 ], [ 0.000000e+00, %6359 ], [ 0.000000e+00, %6361 ]
  %6666 = phi float [ %6422, %6379 ], [ %6581, %6544 ], [ %6663, %6625 ], [ 0.000000e+00, %6359 ], [ 0.000000e+00, %6361 ]
  %6667 = phi float [ %6409, %6379 ], [ %6568, %6544 ], [ %6650, %6625 ], [ 0.000000e+00, %6359 ], [ 0.000000e+00, %6361 ]
  %6668 = phi float [ %6410, %6379 ], [ %6569, %6544 ], [ %6651, %6625 ], [ 0.000000e+00, %6359 ], [ 0.000000e+00, %6361 ]
  %6669 = phi float [ %6411, %6379 ], [ %6570, %6544 ], [ %6652, %6625 ], [ 0.000000e+00, %6359 ], [ 0.000000e+00, %6361 ]
  %6670 = fmul fast float %6302, %6666
  %6671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6672 = extractvalue %dx.types.CBufRet.f32 %6671, 2
  %6673 = fsub fast float %6309, %6672
  %6674 = fcmp fast olt float %6670, -2.000000e+01
  %6675 = call float @dx.op.unary.f32(i32 21, float %6670)  ; Exp(value)
  %6676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6677 = extractvalue %dx.types.CBufRet.f32 %6676, 2
  %6678 = extractvalue %dx.types.CBufRet.f32 %6676, 3
  %6679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6680 = extractvalue %dx.types.CBufRet.f32 %6679, 2
  %6681 = fmul fast float %6678, %6673
  %6682 = call float @dx.op.unary.f32(i32 7, float %6681)  ; Saturate(value)
  %6683 = fsub fast float 1.000000e+00, %6682
  %6684 = fmul fast float %6294, 5.000000e-01
  %6685 = fadd fast float %6684, 5.000000e-01
  %6686 = call float @dx.op.unary.f32(i32 7, float %6685)  ; Saturate(value)
  %6687 = fsub fast float 1.000000e+00, %6686
  %6688 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6683)  ; FMax(a,b)
  %6689 = fdiv fast float %6687, %6688
  %6690 = fsub fast float %6673, %6251
  %6691 = call float @dx.op.unary.f32(i32 6, float %6690)  ; FAbs(value)
  %6692 = fmul fast float %6691, %6677
  %6693 = call float @dx.op.unary.f32(i32 7, float %6689)  ; Saturate(value)
  %6694 = fsub fast float 1.000000e+00, %6692
  %6695 = fmul fast float %6694, %6693
  %6696 = fadd fast float %6695, %6692
  %6697 = fmul fast float %6680, %6673
  %6698 = call float @dx.op.unary.f32(i32 7, float %6697)  ; Saturate(value)
  %6699 = fsub fast float 1.000000e+00, %6696
  %6700 = fmul fast float %6699, %6698
  %6701 = fadd fast float %6700, %6696
  %6702 = call float @dx.op.unary.f32(i32 7, float %6701)  ; Saturate(value)
  %6703 = fadd fast float %6675, -1.000000e+00
  %6704 = select i1 %6674, float -1.000000e+00, float %6703
  %6705 = fmul fast float %6702, %6704
  %6706 = fadd fast float %6705, 1.000000e+00
  %6707 = fsub fast float -0.000000e+00, %6705
  %6708 = fmul fast float %6667, %6707
  %6709 = fmul fast float %6668, %6707
  %6710 = fmul fast float %6669, %6707
  br label %6711

; <label>:6711                                    ; preds = %6664, %6260
  %6712 = phi float [ %6665, %6664 ], [ 0.000000e+00, %6260 ]
  %6713 = phi float [ %6706, %6664 ], [ 1.000000e+00, %6260 ]
  %6714 = phi float [ %6708, %6664 ], [ 0.000000e+00, %6260 ]
  %6715 = phi float [ %6709, %6664 ], [ 0.000000e+00, %6260 ]
  %6716 = phi float [ %6710, %6664 ], [ 0.000000e+00, %6260 ]
  %6717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6718 = extractvalue %dx.types.CBufRet.f32 %6717, 1
  %6719 = fsub fast float 1.000000e+00, %6713
  %6720 = fmul fast float %6719, %6295
  %6721 = fmul fast float %6720, %6718
  %6722 = fsub fast float %6295, %6721
  br i1 %6288, label %6723, label %6752, !dx.controlflow.hints !146

; <label>:6723                                    ; preds = %6711
  %6724 = fmul fast float %6296, %6285
  %6725 = fadd fast float %6724, %6286
  %6726 = call float @dx.op.unary.f32(i32 7, float %6725)  ; Saturate(value)
  %6727 = fmul fast float %6267, %6722
  %6728 = fsub fast float -0.000000e+00, %6727
  %6729 = fmul fast float %6268, %6722
  %6730 = fsub fast float -0.000000e+00, %6729
  %6731 = call float @dx.op.unary.f32(i32 21, float %6728)  ; Exp(value)
  %6732 = call float @dx.op.unary.f32(i32 21, float %6730)  ; Exp(value)
  %6733 = call float @dx.op.binary.f32(i32 35, float %6275, float %6731)  ; FMax(a,b)
  %6734 = call float @dx.op.binary.f32(i32 35, float %6275, float %6732)  ; FMax(a,b)
  %6735 = fsub fast float %6734, %6733
  %6736 = fmul fast float %6735, %6726
  %6737 = fadd fast float %6736, %6733
  %6738 = call float @dx.op.unary.f32(i32 7, float %6737)  ; Saturate(value)
  %6739 = fsub fast float %6272, %6277
  %6740 = fsub fast float %6273, %6278
  %6741 = fsub fast float %6274, %6279
  %6742 = fmul fast float %6726, %6739
  %6743 = fmul fast float %6726, %6740
  %6744 = fmul fast float %6726, %6741
  %6745 = fadd fast float %6742, %6277
  %6746 = fadd fast float %6743, %6278
  %6747 = fadd fast float %6744, %6279
  %6748 = fsub fast float 1.000000e+00, %6738
  %6749 = fmul fast float %6748, %6745
  %6750 = fmul fast float %6748, %6746
  %6751 = fmul fast float %6748, %6747
  br label %6811

; <label>:6752                                    ; preds = %6711
  %6753 = fmul fast float %6722, %6284
  %6754 = call float @dx.op.unary.f32(i32 7, float %6753)  ; Saturate(value)
  %6755 = fsub fast float 2.000000e+00, %6754
  %6756 = fmul fast float %6754, 9.921875e-01
  %6757 = fmul fast float %6756, %6755
  %6758 = fadd fast float %6757, 3.906250e-03
  %6759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %36, float %6758, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6760 = extractvalue %dx.types.ResRet.f32 %6759, 0
  %6761 = fsub fast float %6754, %6760
  %6762 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6761)  ; FMax(a,b)
  %6763 = fmul fast float %6270, %6251
  %6764 = call float @dx.op.unary.f32(i32 6, float %6763)  ; FAbs(value)
  %6765 = fcmp fast ogt float %6764, 0x3EB0C6F7A0000000
  br i1 %6765, label %6766, label %6772, !dx.controlflow.hints !147

; <label>:6766                                    ; preds = %6752
  %6767 = fmul fast float %6763, 0xBFF7154760000000
  %6768 = call float @dx.op.unary.f32(i32 21, float %6767)  ; Exp(value)
  %6769 = fsub fast float 1.000000e+00, %6768
  %6770 = fdiv fast float %6769, %6763
  %6771 = fmul fast float %6770, %6280
  br label %6772

; <label>:6772                                    ; preds = %6766, %6752
  %6773 = phi float [ %6771, %6766 ], [ %6280, %6752 ]
  %6774 = fadd fast float %6773, %6282
  %6775 = fmul fast float %6774, %6762
  %6776 = fmul fast float %6267, %6775
  %6777 = fsub fast float -0.000000e+00, %6776
  %6778 = fmul fast float %6268, %6775
  %6779 = fsub fast float -0.000000e+00, %6778
  %6780 = fmul fast float %6269, %6775
  %6781 = fsub fast float -0.000000e+00, %6780
  %6782 = call float @dx.op.unary.f32(i32 21, float %6777)  ; Exp(value)
  %6783 = call float @dx.op.unary.f32(i32 21, float %6779)  ; Exp(value)
  %6784 = call float @dx.op.unary.f32(i32 21, float %6781)  ; Exp(value)
  %6785 = fmul fast float %6296, %6296
  %6786 = fadd fast float %6785, 1.000000e+00
  %6787 = fmul fast float %6786, 0x3FAE8EC8A0000000
  %6788 = fmul fast float %6787, %6277
  %6789 = fmul fast float %6787, %6278
  %6790 = fmul fast float %6787, %6279
  %6791 = fmul fast float %6296, %6275
  %6792 = fsub fast float 1.000000e+00, %6791
  %6793 = fmul fast float %6275, %6275
  %6794 = fsub fast float 1.000000e+00, %6793
  %6795 = fmul fast float %6794, 0x3FB45F3060000000
  %6796 = fmul fast float %6792, %6792
  %6797 = fdiv fast float 1.000000e+00, %6796
  %6798 = fmul fast float %6795, %6797
  %6799 = fmul fast float %6798, %6272
  %6800 = fmul fast float %6798, %6273
  %6801 = fmul fast float %6798, %6274
  %6802 = fadd fast float %6799, %6788
  %6803 = fadd fast float %6800, %6789
  %6804 = fadd fast float %6801, %6790
  %6805 = fsub fast float 1.000000e+00, %6782
  %6806 = fsub fast float 1.000000e+00, %6783
  %6807 = fsub fast float 1.000000e+00, %6784
  %6808 = fmul fast float %6802, %6805
  %6809 = fmul fast float %6803, %6806
  %6810 = fmul fast float %6804, %6807
  br label %6811

; <label>:6811                                    ; preds = %6772, %6723
  %6812 = phi float [ %6749, %6723 ], [ %6808, %6772 ]
  %6813 = phi float [ %6750, %6723 ], [ %6809, %6772 ]
  %6814 = phi float [ %6751, %6723 ], [ %6810, %6772 ]
  %6815 = phi float [ %6738, %6723 ], [ %6782, %6772 ]
  %6816 = phi float [ %6738, %6723 ], [ %6783, %6772 ]
  %6817 = phi float [ %6738, %6723 ], [ %6784, %6772 ]
  br i1 %6304, label %6818, label %7016, !dx.controlflow.hints !148

; <label>:6818                                    ; preds = %6811
  %6819 = extractvalue %dx.types.CBufRet.f32 %6717, 0
  %6820 = fmul fast float %6819, %6719
  %6821 = fsub fast float %6714, %6812
  %6822 = fsub fast float %6715, %6813
  %6823 = fsub fast float %6716, %6814
  %6824 = fmul fast float %6820, %6821
  %6825 = fmul fast float %6820, %6822
  %6826 = fmul fast float %6820, %6823
  %6827 = fadd fast float %6824, %6812
  %6828 = fadd fast float %6825, %6813
  %6829 = fadd fast float %6826, %6814
  %6830 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6815)  ; FMax(a,b)
  %6831 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6816)  ; FMax(a,b)
  %6832 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6817)  ; FMax(a,b)
  %6833 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6713)  ; FMax(a,b)
  %6834 = call float @dx.op.binary.f32(i32 35, float %6712, float %6722)  ; FMax(a,b)
  %6835 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6834)  ; FMax(a,b)
  %6836 = fdiv fast float %6712, %6835
  %6837 = call float @dx.op.unary.f32(i32 7, float %6836)  ; Saturate(value)
  %6838 = fdiv fast float %6722, %6835
  %6839 = call float @dx.op.unary.f32(i32 7, float %6838)  ; Saturate(value)
  %6840 = fcmp fast une float %6833, 1.000000e+00
  br i1 %6840, label %6841, label %6854, !dx.controlflow.hints !149

; <label>:6841                                    ; preds = %6818
  %6842 = call float @dx.op.unary.f32(i32 23, float %6833)  ; Log(value)
  %6843 = fmul fast float %6842, 0x3FE62E4300000000
  %6844 = fmul fast float %6714, %6843
  %6845 = fsub fast float -0.000000e+00, %6844
  %6846 = fmul fast float %6715, %6843
  %6847 = fsub fast float -0.000000e+00, %6846
  %6848 = fmul fast float %6716, %6843
  %6849 = fsub fast float -0.000000e+00, %6848
  %6850 = fsub fast float 1.000000e+00, %6833
  %6851 = fdiv fast float %6845, %6850
  %6852 = fdiv fast float %6847, %6850
  %6853 = fdiv fast float %6849, %6850
  br label %6854

; <label>:6854                                    ; preds = %6841, %6818
  %6855 = phi float [ %6851, %6841 ], [ %6714, %6818 ]
  %6856 = phi float [ %6852, %6841 ], [ %6715, %6818 ]
  %6857 = phi float [ %6853, %6841 ], [ %6716, %6818 ]
  %6858 = phi float [ %6843, %6841 ], [ 0.000000e+00, %6818 ]
  %6859 = fcmp fast une float %6830, 1.000000e+00
  br i1 %6859, label %6860, label %6867, !dx.controlflow.hints !150

; <label>:6860                                    ; preds = %6854
  %6861 = call float @dx.op.unary.f32(i32 23, float %6830)  ; Log(value)
  %6862 = fmul fast float %6861, 0x3FE62E4300000000
  %6863 = fmul fast float %6827, %6862
  %6864 = fsub fast float -0.000000e+00, %6863
  %6865 = fsub fast float 1.000000e+00, %6830
  %6866 = fdiv fast float %6864, %6865
  br label %6867

; <label>:6867                                    ; preds = %6860, %6854
  %6868 = phi float [ %6866, %6860 ], [ %6827, %6854 ]
  %6869 = phi float [ %6862, %6860 ], [ 0.000000e+00, %6854 ]
  %6870 = fcmp fast une float %6831, 1.000000e+00
  br i1 %6870, label %6871, label %6878, !dx.controlflow.hints !150

; <label>:6871                                    ; preds = %6867
  %6872 = call float @dx.op.unary.f32(i32 23, float %6831)  ; Log(value)
  %6873 = fmul fast float %6872, 0x3FE62E4300000000
  %6874 = fmul fast float %6828, %6873
  %6875 = fsub fast float -0.000000e+00, %6874
  %6876 = fsub fast float 1.000000e+00, %6831
  %6877 = fdiv fast float %6875, %6876
  br label %6878

; <label>:6878                                    ; preds = %6871, %6867
  %6879 = phi float [ %6877, %6871 ], [ %6828, %6867 ]
  %6880 = phi float [ %6873, %6871 ], [ 0.000000e+00, %6867 ]
  %6881 = fcmp fast une float %6832, 1.000000e+00
  br i1 %6881, label %6882, label %6889, !dx.controlflow.hints !150

; <label>:6882                                    ; preds = %6878
  %6883 = call float @dx.op.unary.f32(i32 23, float %6832)  ; Log(value)
  %6884 = fmul fast float %6883, 0x3FE62E4300000000
  %6885 = fmul fast float %6829, %6884
  %6886 = fsub fast float -0.000000e+00, %6885
  %6887 = fsub fast float 1.000000e+00, %6832
  %6888 = fdiv fast float %6886, %6887
  br label %6889

; <label>:6889                                    ; preds = %6882, %6878
  %6890 = phi float [ %6888, %6882 ], [ %6829, %6878 ]
  %6891 = phi float [ %6884, %6882 ], [ 0.000000e+00, %6878 ]
  %6892 = fmul fast float %6855, %6839
  %6893 = fmul fast float %6856, %6839
  %6894 = fmul fast float %6857, %6839
  %6895 = fmul fast float %6858, %6839
  %6896 = fmul fast float %6868, %6837
  %6897 = fmul fast float %6879, %6837
  %6898 = fmul fast float %6890, %6837
  %6899 = fmul fast float %6869, %6837
  %6900 = fmul fast float %6880, %6837
  %6901 = fmul fast float %6891, %6837
  %6902 = fadd fast float %6896, %6892
  %6903 = fadd fast float %6897, %6893
  %6904 = fadd fast float %6898, %6894
  %6905 = fadd fast float %6899, %6895
  %6906 = fadd fast float %6900, %6895
  %6907 = fadd fast float %6901, %6895
  %6908 = fcmp fast une float %6905, 0.000000e+00
  br i1 %6908, label %6909, label %6916, !dx.controlflow.hints !151

; <label>:6909                                    ; preds = %6889
  %6910 = fmul fast float %6905, 0x3FF7154760000000
  %6911 = call float @dx.op.unary.f32(i32 21, float %6910)  ; Exp(value)
  %6912 = fsub fast float 1.000000e+00, %6911
  %6913 = fmul fast float %6902, %6912
  %6914 = fsub fast float -0.000000e+00, %6913
  %6915 = fdiv fast float %6914, %6905
  br label %6916

; <label>:6916                                    ; preds = %6909, %6889
  %6917 = phi float [ %6911, %6909 ], [ 1.000000e+00, %6889 ]
  %6918 = phi float [ %6915, %6909 ], [ %6902, %6889 ]
  %6919 = fcmp fast une float %6906, 0.000000e+00
  br i1 %6919, label %6920, label %6927, !dx.controlflow.hints !151

; <label>:6920                                    ; preds = %6916
  %6921 = fmul fast float %6906, 0x3FF7154760000000
  %6922 = call float @dx.op.unary.f32(i32 21, float %6921)  ; Exp(value)
  %6923 = fsub fast float 1.000000e+00, %6922
  %6924 = fmul fast float %6903, %6923
  %6925 = fsub fast float -0.000000e+00, %6924
  %6926 = fdiv fast float %6925, %6906
  br label %6927

; <label>:6927                                    ; preds = %6920, %6916
  %6928 = phi float [ %6922, %6920 ], [ 1.000000e+00, %6916 ]
  %6929 = phi float [ %6926, %6920 ], [ %6903, %6916 ]
  %6930 = fcmp fast une float %6907, 0.000000e+00
  br i1 %6930, label %6931, label %6938, !dx.controlflow.hints !151

; <label>:6931                                    ; preds = %6927
  %6932 = fmul fast float %6907, 0x3FF7154760000000
  %6933 = call float @dx.op.unary.f32(i32 21, float %6932)  ; Exp(value)
  %6934 = fsub fast float 1.000000e+00, %6933
  %6935 = fmul fast float %6904, %6934
  %6936 = fsub fast float -0.000000e+00, %6935
  %6937 = fdiv fast float %6936, %6907
  br label %6938

; <label>:6938                                    ; preds = %6931, %6927
  %6939 = phi float [ %6933, %6931 ], [ 1.000000e+00, %6927 ]
  %6940 = phi float [ %6937, %6931 ], [ %6904, %6927 ]
  %6941 = fcmp fast ogt float %6837, %6839
  br i1 %6941, label %6942, label %6962

; <label>:6942                                    ; preds = %6938
  %6943 = fsub fast float 1.000000e+00, %6839
  %6944 = fmul fast float %6855, %6943
  %6945 = fmul fast float %6856, %6943
  %6946 = fmul fast float %6857, %6943
  %6947 = fmul fast float %6858, %6943
  %6948 = fcmp fast une float %6947, 0.000000e+00
  br i1 %6948, label %6949, label %7000, !dx.controlflow.hints !152

; <label>:6949                                    ; preds = %6942
  %6950 = fmul fast float %6947, 0x3FF7154760000000
  %6951 = call float @dx.op.unary.f32(i32 21, float %6950)  ; Exp(value)
  %6952 = fsub fast float 1.000000e+00, %6951
  %6953 = fmul fast float %6944, %6952
  %6954 = fsub fast float -0.000000e+00, %6953
  %6955 = fmul fast float %6945, %6952
  %6956 = fsub fast float -0.000000e+00, %6955
  %6957 = fmul fast float %6946, %6952
  %6958 = fsub fast float -0.000000e+00, %6957
  %6959 = fdiv fast float %6954, %6947
  %6960 = fdiv fast float %6956, %6947
  %6961 = fdiv fast float %6958, %6947
  br label %7000

; <label>:6962                                    ; preds = %6938
  %6963 = fsub fast float 1.000000e+00, %6837
  %6964 = fmul fast float %6868, %6963
  %6965 = fmul fast float %6879, %6963
  %6966 = fmul fast float %6890, %6963
  %6967 = fmul fast float %6869, %6963
  %6968 = fmul fast float %6880, %6963
  %6969 = fmul fast float %6891, %6963
  %6970 = fcmp fast une float %6967, 0.000000e+00
  br i1 %6970, label %6971, label %6978, !dx.controlflow.hints !151

; <label>:6971                                    ; preds = %6962
  %6972 = fmul fast float %6967, 0x3FF7154760000000
  %6973 = call float @dx.op.unary.f32(i32 21, float %6972)  ; Exp(value)
  %6974 = fsub fast float 1.000000e+00, %6973
  %6975 = fmul fast float %6964, %6974
  %6976 = fsub fast float -0.000000e+00, %6975
  %6977 = fdiv fast float %6976, %6967
  br label %6978

; <label>:6978                                    ; preds = %6971, %6962
  %6979 = phi float [ %6977, %6971 ], [ %6964, %6962 ]
  %6980 = phi float [ %6973, %6971 ], [ 1.000000e+00, %6962 ]
  %6981 = fcmp fast une float %6968, 0.000000e+00
  br i1 %6981, label %6982, label %6989, !dx.controlflow.hints !151

; <label>:6982                                    ; preds = %6978
  %6983 = fmul fast float %6968, 0x3FF7154760000000
  %6984 = call float @dx.op.unary.f32(i32 21, float %6983)  ; Exp(value)
  %6985 = fsub fast float 1.000000e+00, %6984
  %6986 = fmul fast float %6965, %6985
  %6987 = fsub fast float -0.000000e+00, %6986
  %6988 = fdiv fast float %6987, %6968
  br label %6989

; <label>:6989                                    ; preds = %6982, %6978
  %6990 = phi float [ %6988, %6982 ], [ %6965, %6978 ]
  %6991 = phi float [ %6984, %6982 ], [ 1.000000e+00, %6978 ]
  %6992 = fcmp fast une float %6969, 0.000000e+00
  br i1 %6992, label %6993, label %7000, !dx.controlflow.hints !151

; <label>:6993                                    ; preds = %6989
  %6994 = fmul fast float %6969, 0x3FF7154760000000
  %6995 = call float @dx.op.unary.f32(i32 21, float %6994)  ; Exp(value)
  %6996 = fsub fast float 1.000000e+00, %6995
  %6997 = fmul fast float %6966, %6996
  %6998 = fsub fast float -0.000000e+00, %6997
  %6999 = fdiv fast float %6998, %6969
  br label %7000

; <label>:7000                                    ; preds = %6993, %6989, %6949, %6942
  %7001 = phi float [ %6999, %6993 ], [ %6961, %6949 ], [ %6946, %6942 ], [ %6966, %6989 ]
  %7002 = phi float [ %6990, %6993 ], [ %6960, %6949 ], [ %6945, %6942 ], [ %6990, %6989 ]
  %7003 = phi float [ %6979, %6993 ], [ %6959, %6949 ], [ %6944, %6942 ], [ %6979, %6989 ]
  %7004 = phi float [ %6995, %6993 ], [ %6951, %6949 ], [ 1.000000e+00, %6942 ], [ 1.000000e+00, %6989 ]
  %7005 = phi float [ %6991, %6993 ], [ %6951, %6949 ], [ 1.000000e+00, %6942 ], [ %6991, %6989 ]
  %7006 = phi float [ %6980, %6993 ], [ %6951, %6949 ], [ 1.000000e+00, %6942 ], [ %6980, %6989 ]
  %7007 = fmul fast float %7006, %6918
  %7008 = fmul fast float %7005, %6929
  %7009 = fmul fast float %7004, %6940
  %7010 = fadd fast float %7007, %7003
  %7011 = fadd fast float %7008, %7002
  %7012 = fadd fast float %7009, %7001
  %7013 = fmul fast float %7006, %6917
  %7014 = fmul fast float %7005, %6928
  %7015 = fmul fast float %7004, %6939
  br label %7016

; <label>:7016                                    ; preds = %7000, %6811
  %7017 = phi float [ %7015, %7000 ], [ %6817, %6811 ]
  %7018 = phi float [ %7014, %7000 ], [ %6816, %6811 ]
  %7019 = phi float [ %7013, %7000 ], [ %6815, %6811 ]
  %7020 = phi float [ %7012, %7000 ], [ %6814, %6811 ]
  %7021 = phi float [ %7011, %7000 ], [ %6813, %6811 ]
  %7022 = phi float [ %7010, %7000 ], [ %6812, %6811 ]
  %7023 = fmul fast float %7022, %5968
  %7024 = fmul fast float %7021, %5968
  %7025 = fmul fast float %7020, %5968
  %7026 = fmul fast float %7019, %6259
  %7027 = call float @dx.op.dot3.f32(i32 55, float %7019, float %7018, float %7017, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7028 = call float @dx.op.dot3.f32(i32 55, float %7023, float %7024, float %7025, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7029 = select i1 %240, float %7027, float %7019
  %7030 = select i1 %240, float %7027, float %7018
  %7031 = select i1 %240, float 1.000000e+00, float %7017
  %7032 = select i1 %240, float %7028, float %7023
  %7033 = select i1 %240, float 0.000000e+00, float %7024
  %7034 = select i1 %240, float 0.000000e+00, float %7025
  %7035 = fmul fast float %7029, %6253
  %7036 = fmul fast float %7030, %6254
  %7037 = fmul fast float %7031, %6255
  %7038 = fadd fast float %7035, %7032
  %7039 = fadd fast float %7036, %7033
  %7040 = fadd fast float %7034, %7037
  %7041 = fmul fast float %7029, %6256
  %7042 = fmul fast float %7030, %6257
  %7043 = fmul fast float %7031, %6258
  %7044 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7045 = extractvalue %dx.types.CBufRet.i32 %7044, 0
  %7046 = icmp eq i32 %7045, 0
  br i1 %7046, label %7414, label %7047, !dx.controlflow.hints !153

; <label>:7047                                    ; preds = %7016
  %7048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7049 = extractvalue %dx.types.CBufRet.f32 %7048, 2
  %7050 = extractvalue %dx.types.CBufRet.f32 %7048, 3
  %7051 = fmul fast float %7049, %92
  %7052 = fmul fast float %7050, %93
  %7053 = fmul fast float %7051, 2.000000e+00
  %7054 = fmul fast float %7052, 2.000000e+00
  %7055 = fsub fast float 1.000000e+00, %7053
  %7056 = fsub fast float 1.000000e+00, %7054
  %7057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7058 = extractvalue %dx.types.CBufRet.f32 %7057, 0
  %7059 = extractvalue %dx.types.CBufRet.f32 %7057, 1
  %7060 = extractvalue %dx.types.CBufRet.f32 %7057, 2
  %7061 = fmul fast float %7055, %7058
  %7062 = fmul fast float %7055, %7059
  %7063 = fmul fast float %7055, %7060
  %7064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7065 = extractvalue %dx.types.CBufRet.f32 %7064, 0
  %7066 = extractvalue %dx.types.CBufRet.f32 %7064, 1
  %7067 = extractvalue %dx.types.CBufRet.f32 %7064, 2
  %7068 = fmul fast float %7056, %7065
  %7069 = fmul fast float %7056, %7066
  %7070 = fmul fast float %7056, %7067
  %7071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7072 = extractvalue %dx.types.CBufRet.f32 %7071, 0
  %7073 = extractvalue %dx.types.CBufRet.f32 %7071, 1
  %7074 = extractvalue %dx.types.CBufRet.f32 %7071, 2
  %7075 = fadd fast float %7068, %7072
  %7076 = fadd fast float %7075, %7061
  %7077 = fadd fast float %7069, %7073
  %7078 = fadd fast float %7077, %7062
  %7079 = fadd fast float %7070, %7074
  %7080 = fadd fast float %7079, %7063
  %7081 = fmul fast float %7076, %6252
  %7082 = fmul fast float %7078, %6252
  %7083 = fmul fast float %7080, %6252
  %7084 = fmul fast float %7081, %7081
  %7085 = fmul fast float %7082, %7082
  %7086 = fadd fast float %7084, %7085
  %7087 = fmul fast float %7083, %7083
  %7088 = fadd fast float %7086, %7087
  %7089 = call float @dx.op.unary.f32(i32 24, float %7088)  ; Sqrt(value)
  %7090 = extractvalue %dx.types.CBufRet.f32 %5979, 0
  %7091 = fsub fast float %7089, %7090
  %7092 = extractvalue %dx.types.CBufRet.f32 %5979, 2
  %7093 = fmul fast float %7091, %7092
  %7094 = call float @dx.op.unary.f32(i32 7, float %7093)  ; Saturate(value)
  %7095 = fadd fast float %7094, -5.000000e-01
  %7096 = fmul fast float %7095, 2.000000e+00
  %7097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7098 = extractvalue %dx.types.CBufRet.f32 %7097, 2
  %7099 = call float @dx.op.binary.f32(i32 36, float %7098, float %7096)  ; FMin(a,b)
  %7100 = fsub fast float -0.000000e+00, %7098
  %7101 = fcmp fast ogt float %7099, %7100
  br i1 %7101, label %7102, label %7414, !dx.controlflow.hints !154

; <label>:7102                                    ; preds = %7047
  %7103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7104 = extractvalue %dx.types.CBufRet.f32 %7103, 3
  %7105 = fcmp fast ogt float %7104, 0.000000e+00
  br i1 %7105, label %7106, label %7181, !dx.controlflow.hints !155

; <label>:7106                                    ; preds = %7102
  %7107 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %7108 = extractvalue %dx.types.Dimensions %7107, 0
  %7109 = sitofp i32 %7108 to float
  %7110 = extractvalue %dx.types.Dimensions %7107, 1
  %7111 = sitofp i32 %7110 to float
  %7112 = fmul fast float %7051, %7109
  %7113 = fmul fast float %7052, %7111
  %7114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7115 = extractvalue %dx.types.CBufRet.f32 %7114, 1
  %7116 = fsub fast float -0.000000e+00, %7115
  %7117 = fptoui float %7116 to i32
  %7118 = fptoui float %7112 to i32
  %7119 = fptoui float %7113 to i32
  %7120 = and i32 %7117, 31
  %7121 = lshr i32 %7118, %7120
  %7122 = lshr i32 %7119, %7120
  %7123 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 %7117, i32 %7121, i32 %7122, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7124 = extractvalue %dx.types.ResRet.f32 %7123, 0
  %7125 = fcmp fast olt float %7124, -1.000000e+00
  %7126 = fcmp fast ogt float %7124, -1.000000e+00
  %7127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7128 = extractvalue %dx.types.CBufRet.f32 %7127, 1
  %7129 = select i1 %7126, float %7128, float 1.000000e+00
  %7130 = fadd fast float %7124, 1.000000e+00
  %7131 = fmul fast float %7129, %7130
  %7132 = call float @dx.op.unary.f32(i32 6, float %7131)  ; FAbs(value)
  %7133 = extractvalue %dx.types.CBufRet.f32 %7127, 3
  %7134 = fcmp fast oge float %7132, %7133
  %7135 = select i1 %7134, float 0x4197782600000000, float %7132
  %7136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7137 = extractvalue %dx.types.CBufRet.f32 %7136, 0
  %7138 = extractvalue %dx.types.CBufRet.f32 %7136, 1
  %7139 = extractvalue %dx.types.CBufRet.f32 %7136, 2
  %7140 = select i1 %7125, float %7137, float %7058
  %7141 = select i1 %7125, float %7138, float %7059
  %7142 = select i1 %7125, float %7139, float %7060
  %7143 = fmul fast float %7140, %7055
  %7144 = fmul fast float %7141, %7055
  %7145 = fmul fast float %7142, %7055
  %7146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7147 = extractvalue %dx.types.CBufRet.f32 %7146, 0
  %7148 = extractvalue %dx.types.CBufRet.f32 %7146, 1
  %7149 = extractvalue %dx.types.CBufRet.f32 %7146, 2
  %7150 = select i1 %7125, float %7147, float %7065
  %7151 = select i1 %7125, float %7148, float %7066
  %7152 = select i1 %7125, float %7149, float %7067
  %7153 = fmul fast float %7150, %7056
  %7154 = fmul fast float %7151, %7056
  %7155 = fmul fast float %7152, %7056
  %7156 = fadd fast float %7153, %7143
  %7157 = fadd fast float %7154, %7144
  %7158 = fadd fast float %7155, %7145
  %7159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7160 = extractvalue %dx.types.CBufRet.f32 %7159, 0
  %7161 = extractvalue %dx.types.CBufRet.f32 %7159, 1
  %7162 = extractvalue %dx.types.CBufRet.f32 %7159, 2
  %7163 = select i1 %7125, float %7160, float %7072
  %7164 = select i1 %7125, float %7161, float %7073
  %7165 = select i1 %7125, float %7162, float %7074
  %7166 = fadd fast float %7156, %7163
  %7167 = fadd fast float %7157, %7164
  %7168 = fadd fast float %7158, %7165
  %7169 = fmul fast float %7166, %7135
  %7170 = fmul fast float %7167, %7135
  %7171 = fmul fast float %7168, %7135
  %7172 = fmul fast float %7169, %7169
  %7173 = fmul fast float %7170, %7170
  %7174 = fadd fast float %7172, %7173
  %7175 = fmul fast float %7171, %7171
  %7176 = fadd fast float %7174, %7175
  %7177 = call float @dx.op.unary.f32(i32 24, float %7176)  ; Sqrt(value)
  %7178 = fsub fast float %7177, %7090
  %7179 = fmul fast float %7178, %7092
  %7180 = call float @dx.op.unary.f32(i32 7, float %7179)  ; Saturate(value)
  br label %7181

; <label>:7181                                    ; preds = %7106, %7102
  %7182 = phi float [ %7180, %7106 ], [ 1.000000e+00, %7102 ]
  %7183 = fmul fast float %7099, 5.000000e-01
  %7184 = fadd fast float %7183, 5.000000e-01
  %7185 = call float @dx.op.unary.f32(i32 22, float %7184)  ; Frc(value)
  %7186 = call float @dx.op.unary.f32(i32 27, float %7185)  ; Round_ni(value)
  %7187 = call float @dx.op.unary.f32(i32 22, float %7185)  ; Frc(value)
  %7188 = fmul fast float %7187, 2.000000e+00
  %7189 = fadd fast float %7188, -1.000000e+00
  %7190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %36, float %7051, float %7052, float %7186, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7191 = extractvalue %dx.types.ResRet.f32 %7190, 0
  %7192 = extractvalue %dx.types.ResRet.f32 %7190, 1
  %7193 = extractvalue %dx.types.ResRet.f32 %7190, 2
  %7194 = extractvalue %dx.types.ResRet.f32 %7190, 3
  %7195 = fadd fast float %7191, -5.000000e-01
  %7196 = fadd fast float %7193, -5.000000e-01
  %7197 = fmul fast float %7195, 0xBFD5555560000000
  %7198 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7196, float %7197)  ; FMad(a,b,c)
  %7199 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7192, float 0.000000e+00)  ; FMad(a,b,c)
  %7200 = fadd fast float %7199, %7194
  %7201 = fmul fast float %7195, -7.500000e-01
  %7202 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7196, float %7201)  ; FMad(a,b,c)
  %7203 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7192, float 0.000000e+00)  ; FMad(a,b,c)
  %7204 = fadd fast float %7203, %7194
  %7205 = call float @dx.op.binary.f32(i32 35, float %7198, float -1.000000e+00)  ; FMax(a,b)
  %7206 = call float @dx.op.binary.f32(i32 35, float %7200, float -1.000000e+00)  ; FMax(a,b)
  %7207 = call float @dx.op.binary.f32(i32 35, float %7202, float -1.000000e+00)  ; FMax(a,b)
  %7208 = call float @dx.op.binary.f32(i32 35, float %7204, float -1.000000e+00)  ; FMax(a,b)
  %7209 = call float @dx.op.binary.f32(i32 36, float %7205, float 1.000000e+00)  ; FMin(a,b)
  %7210 = call float @dx.op.binary.f32(i32 36, float %7206, float 1.000000e+00)  ; FMin(a,b)
  %7211 = call float @dx.op.binary.f32(i32 36, float %7207, float 1.000000e+00)  ; FMin(a,b)
  %7212 = call float @dx.op.binary.f32(i32 36, float %7208, float 1.000000e+00)  ; FMin(a,b)
  %7213 = fcmp fast olt float %7209, 0x3FEFFF8020000000
  br i1 %7213, label %7214, label %7329, !dx.controlflow.hints !156

; <label>:7214                                    ; preds = %7181
  %7215 = extractvalue %dx.types.CBufRet.f32 %7097, 3
  %7216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7217 = extractvalue %dx.types.CBufRet.f32 %7216, 0
  %7218 = extractvalue %dx.types.CBufRet.f32 %7216, 1
  %7219 = extractvalue %dx.types.CBufRet.f32 %7216, 2
  %7220 = extractvalue %dx.types.CBufRet.f32 %7216, 3
  %7221 = fsub fast float %7217, %7209
  %7222 = fsub fast float %7218, %7210
  %7223 = fsub fast float %7219, %7211
  %7224 = fsub fast float %7220, %7212
  %7225 = fmul fast float %7221, %7215
  %7226 = fmul fast float %7222, %7215
  %7227 = fmul fast float %7223, %7215
  %7228 = fmul fast float %7224, %7215
  %7229 = fadd fast float %7225, %7209
  %7230 = fadd fast float %7226, %7210
  %7231 = fsub fast float -0.000000e+00, %7230
  %7232 = fadd fast float %7227, %7211
  %7233 = fadd fast float %7228, %7212
  %7234 = fmul fast float %7229, %7229
  %7235 = fsub fast float %7230, %7234
  %7236 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7235)  ; FMax(a,b)
  %7237 = fdiv fast float 1.000000e+00, %7236
  %7238 = fmul fast float %7230, %7229
  %7239 = fsub fast float %7232, %7238
  %7240 = fsub fast float %7189, %7229
  %7241 = fmul fast float %7189, %7189
  %7242 = fsub fast float %7241, %7230
  %7243 = fmul fast float %7240, %7237
  %7244 = fmul fast float %7243, %7239
  %7245 = fsub fast float %7242, %7244
  %7246 = fmul fast float %7230, %7230
  %7247 = fsub fast float %7233, %7246
  %7248 = fmul fast float %7239, %7239
  %7249 = fmul fast float %7248, %7237
  %7250 = fsub fast float %7247, %7249
  %7251 = fdiv fast float %7245, %7250
  %7252 = fmul fast float %7239, %7251
  %7253 = fsub fast float %7240, %7252
  %7254 = fmul fast float %7253, %7237
  %7255 = fmul fast float %7254, %7229
  %7256 = fsub fast float 1.000000e+00, %7255
  %7257 = fmul fast float %7230, %7251
  %7258 = fsub fast float %7256, %7257
  %7259 = fmul fast float %7254, %7254
  %7260 = fmul fast float %7251, 4.000000e+00
  %7261 = fmul fast float %7260, %7258
  %7262 = fsub fast float %7259, %7261
  %7263 = call float @dx.op.unary.f32(i32 24, float %7262)  ; Sqrt(value)
  %7264 = fcmp fast oge float %7254, 0.000000e+00
  %7265 = fsub fast float -0.000000e+00, %7263
  %7266 = select i1 %7264, float %7265, float %7263
  %7267 = fsub fast float %7266, %7254
  %7268 = fdiv fast float %7267, %7251
  %7269 = fdiv fast float %7258, %7267
  %7270 = fmul fast float %7268, 5.000000e-01
  %7271 = fmul fast float %7269, 2.000000e+00
  %7272 = select i1 %7264, float %7270, float %7271
  %7273 = select i1 %7264, float %7271, float %7270
  %7274 = call float @dx.op.binary.f32(i32 35, float %7272, float %7273)  ; FMax(a,b)
  %7275 = call float @dx.op.binary.f32(i32 36, float %7272, float %7273)  ; FMin(a,b)
  %7276 = fcmp fast ogt float %7189, %7275
  br i1 %7276, label %7277, label %7287

; <label>:7277                                    ; preds = %7214
  %7278 = fsub fast float %7189, %7275
  %7279 = fsub fast float %7274, %7275
  %7280 = fmul fast float %7278, %7279
  %7281 = fmul fast float %7274, %7189
  %7282 = fadd fast float %7274, %7189
  %7283 = fmul fast float %7282, %7229
  %7284 = fadd fast float %7281, %7230
  %7285 = fsub fast float %7284, %7283
  %7286 = fdiv fast float %7285, %7280
  br label %7287

; <label>:7287                                    ; preds = %7277, %7214
  %7288 = phi float [ %7286, %7277 ], [ 0.000000e+00, %7214 ]
  %7289 = fcmp fast ogt float %7189, %7274
  %7290 = fsub fast float %7189, %7274
  br i1 %7289, label %7291, label %7301

; <label>:7291                                    ; preds = %7287
  %7292 = fsub fast float %7274, %7275
  %7293 = fmul fast float %7292, %7290
  %7294 = fmul fast float %7275, %7189
  %7295 = fadd fast float %7275, %7189
  %7296 = fmul fast float %7295, %7229
  %7297 = fsub fast float %7231, %7294
  %7298 = fadd fast float %7297, %7296
  %7299 = fdiv fast float %7298, %7293
  %7300 = fadd fast float %7299, %7288
  br label %7301

; <label>:7301                                    ; preds = %7291, %7287
  %7302 = phi float [ %7300, %7291 ], [ %7288, %7287 ]
  %7303 = fsub fast float %7189, %7275
  %7304 = fmul fast float %7303, %7290
  %7305 = fmul fast float %7275, %7274
  %7306 = fadd fast float %7275, %7274
  %7307 = fmul fast float %7306, %7229
  %7308 = fadd fast float %7305, %7230
  %7309 = fsub fast float %7308, %7307
  %7310 = fdiv fast float %7309, %7304
  %7311 = call float @dx.op.unary.f32(i32 7, float %7302)  ; Saturate(value)
  %7312 = fcmp fast oeq float %5980, 0.000000e+00
  %7313 = extractvalue %dx.types.CBufRet.f32 %7097, 0
  %7314 = fcmp fast oeq float %7313, 0.000000e+00
  %7315 = or i1 %7312, %7314
  %7316 = fmul fast float %7313, 2.000000e+00
  %7317 = fadd fast float %7098, %7099
  %7318 = fdiv fast float %7317, %7316
  %7319 = call float @dx.op.unary.f32(i32 7, float %7318)  ; Saturate(value)
  %7320 = fmul fast float %7319, 2.000000e+00
  %7321 = fsub fast float 3.000000e+00, %7320
  %7322 = fmul fast float %7319, %7319
  %7323 = fmul fast float %7322, %7321
  %7324 = select i1 %7315, float 1.000000e+00, float %7323
  %7325 = fmul fast float %7310, %5980
  %7326 = fadd fast float %7311, %7325
  %7327 = call float @dx.op.unary.f32(i32 7, float %7326)  ; Saturate(value)
  %7328 = fmul fast float %7324, %7327
  br label %7329

; <label>:7329                                    ; preds = %7301, %7181
  %7330 = phi float [ %7328, %7301 ], [ 0.000000e+00, %7181 ]
  %7331 = fsub fast float 1.000000e+00, %7330
  %7332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %36, float %7051, float %7052, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7333 = extractvalue %dx.types.ResRet.f32 %7332, 0
  %7334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7335 = extractvalue %dx.types.CBufRet.i32 %7334, 2
  %7336 = icmp eq i32 %7335, 0
  br i1 %7336, label %7342, label %7337

; <label>:7337                                    ; preds = %7329
  %7338 = call float @dx.op.unary.f32(i32 7, float %7330)  ; Saturate(value)
  %7339 = fadd fast float %7333, -1.000000e+00
  %7340 = fmul fast float %7338, %7339
  %7341 = fadd fast float %7340, 1.000000e+00
  br label %7342

; <label>:7342                                    ; preds = %7337, %7329
  %7343 = phi float [ %7341, %7337 ], [ %7331, %7329 ]
  br i1 %7105, label %7344, label %7362

; <label>:7344                                    ; preds = %7342
  %7345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7346 = extractvalue %dx.types.CBufRet.f32 %7345, 1
  %7347 = fsub fast float %7182, %7346
  %7348 = call float @dx.op.unary.f32(i32 7, float %7347)  ; Saturate(value)
  %7349 = fsub fast float %7182, %7104
  %7350 = call float @dx.op.unary.f32(i32 7, float %7349)  ; Saturate(value)
  %7351 = fsub fast float %7348, %7350
  %7352 = fsub fast float %7184, %7350
  %7353 = fdiv fast float %7352, %7351
  %7354 = call float @dx.op.unary.f32(i32 7, float %7353)  ; Saturate(value)
  %7355 = fmul fast float %7354, 2.000000e+00
  %7356 = fsub fast float 3.000000e+00, %7355
  %7357 = fsub fast float %7333, %7343
  %7358 = fmul fast float %7354, %7354
  %7359 = fmul fast float %7358, %7357
  %7360 = fmul fast float %7359, %7356
  %7361 = fadd fast float %7360, %7343
  br label %7362

; <label>:7362                                    ; preds = %7344, %7342
  %7363 = phi float [ %7361, %7344 ], [ %7343, %7342 ]
  %7364 = call float @dx.op.binary.f32(i32 35, float %7333, float %7363)  ; FMax(a,b)
  %7365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7366 = extractvalue %dx.types.CBufRet.i32 %7365, 2
  %7367 = and i32 %7366, 1
  %7368 = icmp eq i32 %7367, 0
  %7369 = fcmp fast une float %7364, 1.000000e+00
  %7370 = and i1 %7369, %7368
  br i1 %7370, label %7371, label %7390

; <label>:7371                                    ; preds = %7362
  %7372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %36, float %7051, float %7052, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7373 = extractvalue %dx.types.ResRet.f32 %7372, 0
  %7374 = extractvalue %dx.types.ResRet.f32 %7372, 1
  %7375 = extractvalue %dx.types.ResRet.f32 %7372, 2
  %7376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7377 = extractvalue %dx.types.CBufRet.f32 %7376, 1
  %7378 = fmul fast float %7377, %7373
  %7379 = fmul fast float %7377, %7374
  %7380 = fmul fast float %7377, %7375
  %7381 = fcmp fast ogt float %7333, 0x3FEFFF2E40000000
  %7382 = fsub fast float 1.000000e+00, %7364
  %7383 = fsub fast float 1.000000e+00, %7333
  %7384 = fdiv fast float %7382, %7383
  %7385 = call float @dx.op.unary.f32(i32 7, float %7384)  ; Saturate(value)
  %7386 = select i1 %7381, float 0.000000e+00, float %7385
  %7387 = fmul fast float %7378, %7386
  %7388 = fmul fast float %7379, %7386
  %7389 = fmul fast float %7380, %7386
  br label %7390

; <label>:7390                                    ; preds = %7371, %7362
  %7391 = phi float [ 0.000000e+00, %7362 ], [ %7387, %7371 ]
  %7392 = phi float [ 0.000000e+00, %7362 ], [ %7388, %7371 ]
  %7393 = phi float [ 0.000000e+00, %7362 ], [ %7389, %7371 ]
  %7394 = fmul fast float %7391, %5968
  %7395 = fmul fast float %7392, %5968
  %7396 = fmul fast float %7393, %5968
  %7397 = fmul fast float %7364, %7026
  %7398 = call float @dx.op.dot3.f32(i32 55, float %7364, float %7364, float %7364, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7399 = call float @dx.op.dot3.f32(i32 55, float %7394, float %7395, float %7396, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7400 = select i1 %240, float %7398, float %7364
  %7401 = select i1 %240, float 1.000000e+00, float %7364
  %7402 = select i1 %240, float %7399, float %7394
  %7403 = select i1 %240, float 0.000000e+00, float %7395
  %7404 = select i1 %240, float 0.000000e+00, float %7396
  %7405 = fmul fast float %7400, %7038
  %7406 = fmul fast float %7400, %7039
  %7407 = fmul fast float %7401, %7040
  %7408 = fadd fast float %7405, %7402
  %7409 = fadd fast float %7406, %7403
  %7410 = fadd fast float %7404, %7407
  %7411 = fmul fast float %7400, %7041
  %7412 = fmul fast float %7400, %7042
  %7413 = fmul fast float %7401, %7043
  br label %7414

; <label>:7414                                    ; preds = %7390, %7047, %7016, %6248
  %7415 = phi float [ %6253, %6248 ], [ %7038, %7016 ], [ %7408, %7390 ], [ %7038, %7047 ]
  %7416 = phi float [ %6254, %6248 ], [ %7039, %7016 ], [ %7409, %7390 ], [ %7039, %7047 ]
  %7417 = phi float [ %6255, %6248 ], [ %7040, %7016 ], [ %7410, %7390 ], [ %7040, %7047 ]
  %7418 = phi float [ %6256, %6248 ], [ %7041, %7016 ], [ %7411, %7390 ], [ %7041, %7047 ]
  %7419 = phi float [ %6257, %6248 ], [ %7042, %7016 ], [ %7412, %7390 ], [ %7042, %7047 ]
  %7420 = phi float [ %6258, %6248 ], [ %7043, %7016 ], [ %7413, %7390 ], [ %7043, %7047 ]
  %7421 = phi float [ %6259, %6248 ], [ %7026, %7016 ], [ %7397, %7390 ], [ %7026, %7047 ]
  %7422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7423 = extractvalue %dx.types.CBufRet.f32 %7422, 2
  %7424 = extractvalue %dx.types.CBufRet.f32 %7422, 3
  %7425 = fmul fast float %7423, %92
  %7426 = fmul fast float %7424, %93
  %7427 = call float @dx.op.unary.f32(i32 7, float %7425)  ; Saturate(value)
  %7428 = call float @dx.op.unary.f32(i32 7, float %7426)  ; Saturate(value)
  %7429 = select i1 %5990, i32 2, i32 0
  %7430 = or i32 %7429, 1
  %7431 = uitofp i32 %7430 to float
  %7432 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %7427, float %7428, float %7431, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7433 = extractvalue %dx.types.ResRet.f32 %7432, 0
  %7434 = extractvalue %dx.types.ResRet.f32 %7432, 1
  %7435 = extractvalue %dx.types.ResRet.f32 %7432, 2
  %7436 = extractvalue %dx.types.ResRet.f32 %7432, 3
  %7437 = add nuw nsw i32 %7429, 2
  %7438 = uitofp i32 %7437 to float
  %7439 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %36, float %7427, float %7428, float %7438, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7440 = extractvalue %dx.types.ResRet.f32 %7439, 0
  %7441 = extractvalue %dx.types.ResRet.f32 %7439, 1
  %7442 = extractvalue %dx.types.ResRet.f32 %7439, 2
  %7443 = extractvalue %dx.types.ResRet.f32 %7439, 3
  %7444 = call float @dx.op.binary.f32(i32 35, float %7434, float %7435)  ; FMax(a,b)
  %7445 = call float @dx.op.binary.f32(i32 35, float %7433, float %7444)  ; FMax(a,b)
  %7446 = call float @dx.op.binary.f32(i32 35, float %7445, float %7436)  ; FMax(a,b)
  %7447 = call float @dx.op.binary.f32(i32 36, float %7441, float %7442)  ; FMin(a,b)
  %7448 = call float @dx.op.binary.f32(i32 36, float %7440, float %7447)  ; FMin(a,b)
  %7449 = call float @dx.op.binary.f32(i32 36, float %7448, float %7443)  ; FMin(a,b)
  %7450 = fmul fast float %7446, 2.550000e+02
  %7451 = fadd fast float %7450, 0x3F70101020000000
  %7452 = fptoui float %7451 to i32
  %7453 = fmul fast float %7449, 2.550000e+02
  %7454 = fadd fast float %7453, 0x3F70101020000000
  %7455 = fptoui float %7454 to i32
  %7456 = icmp ult i32 %7452, %7455
  br i1 %7456, label %7457, label %7626

; <label>:7457                                    ; preds = %7414
  %7458 = fcmp fast ogt float %82, 9.843750e-01
  %7459 = fadd fast float %6252, -4.000000e+00
  %7460 = select i1 %7458, float -4.000000e+00, float %7459
  %7461 = call float @dx.op.binary.f32(i32 35, float %7460, float 0.000000e+00)  ; FMax(a,b)
  %7462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7463 = extractvalue %dx.types.CBufRet.f32 %7462, 0
  %7464 = fadd fast float %7463, %7461
  %7465 = extractvalue %dx.types.CBufRet.f32 %7462, 2
  %7466 = fmul fast float %7464, %7465
  %7467 = call float @dx.op.unary.f32(i32 23, float %7466)  ; Log(value)
  %7468 = extractvalue %dx.types.CBufRet.f32 %7462, 3
  %7469 = fmul fast float %7468, %7467
  %7470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7471 = extractvalue %dx.types.CBufRet.f32 %7470, 2
  %7472 = fmul fast float %7469, %7471
  %7473 = call float @dx.op.unary.f32(i32 7, float %7472)  ; Saturate(value)
  %7474 = uitofp i32 %7452 to float
  %7475 = uitofp i32 %7455 to float
  %7476 = fadd fast float %7474, 5.000000e-01
  %7477 = fadd fast float %7475, 5.000000e-01
  %7478 = fmul fast float %7471, %7476
  %7479 = fmul fast float %7471, %7477
  %7480 = fadd fast float %7478, 0x3F0FFB4800000000
  %7481 = fadd fast float %7479, 0xBF0FFB4800000000
  %7482 = call float @dx.op.binary.f32(i32 35, float %7473, float %7480)  ; FMax(a,b)
  %7483 = call float @dx.op.binary.f32(i32 36, float %7482, float %7481)  ; FMin(a,b)
  %7484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7485 = extractvalue %dx.types.CBufRet.f32 %7484, 1
  %7486 = extractvalue %dx.types.CBufRet.f32 %7484, 2
  %7487 = extractvalue %dx.types.CBufRet.f32 %7484, 0
  %7488 = select i1 %5990, float %7487, float 0.000000e+00
  %7489 = fmul fast float %7485, %7483
  %7490 = fadd fast float %7488, %7489
  %7491 = fadd fast float %7488, %7486
  %7492 = fsub fast float %7485, %7486
  %7493 = fadd fast float %7492, %7488
  %7494 = call float @dx.op.binary.f32(i32 35, float %7490, float %7491)  ; FMax(a,b)
  %7495 = call float @dx.op.binary.f32(i32 36, float %7494, float %7493)  ; FMin(a,b)
  %7496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %34, float %7427, float %7428, float %7495, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7497 = extractvalue %dx.types.ResRet.f32 %7496, 0
  %7498 = extractvalue %dx.types.ResRet.f32 %7496, 1
  %7499 = extractvalue %dx.types.ResRet.f32 %7496, 2
  %7500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7501 = extractvalue %dx.types.CBufRet.i32 %7500, 0
  %7502 = extractvalue %dx.types.CBufRet.i32 %7500, 1
  %7503 = uitofp i32 %7501 to float
  %7504 = uitofp i32 %7502 to float
  %7505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7506 = extractvalue %dx.types.CBufRet.f32 %7505, 0
  %7507 = extractvalue %dx.types.CBufRet.f32 %7505, 1
  %7508 = fmul fast float %7503, %7427
  %7509 = fmul fast float %7504, %7428
  %7510 = fadd fast float %7508, -5.000000e-01
  %7511 = fadd fast float %7509, -5.000000e-01
  %7512 = call float @dx.op.unary.f32(i32 22, float %7510)  ; Frc(value)
  %7513 = call float @dx.op.unary.f32(i32 22, float %7511)  ; Frc(value)
  %7514 = fmul fast float %7512, %7512
  %7515 = fmul fast float %7514, %7512
  %7516 = fsub fast float 3.000000e+00, %7512
  %7517 = fmul fast float %7514, %7516
  %7518 = fmul fast float %7512, 3.000000e+00
  %7519 = fmul fast float %7515, 3.000000e+00
  %7520 = fmul fast float %7514, 6.000000e+00
  %7521 = fsub fast float %7519, %7520
  %7522 = fadd fast float %7521, 4.000000e+00
  %7523 = fmul fast float %7522, 0x3FC5555560000000
  %7524 = fmul fast float %7515, -3.000000e+00
  %7525 = fadd fast float %7514, %7512
  %7526 = fmul fast float %7525, 3.000000e+00
  %7527 = fadd fast float %7524, 1.000000e+00
  %7528 = fadd fast float %7527, %7526
  %7529 = fmul fast float %7515, 0x3FC5555560000000
  %7530 = fmul fast float %7513, %7513
  %7531 = fmul fast float %7530, %7513
  %7532 = fsub fast float 3.000000e+00, %7513
  %7533 = fmul fast float %7530, %7532
  %7534 = fmul fast float %7513, 3.000000e+00
  %7535 = fmul fast float %7531, 3.000000e+00
  %7536 = fmul fast float %7530, 6.000000e+00
  %7537 = fsub fast float %7535, %7536
  %7538 = fadd fast float %7537, 4.000000e+00
  %7539 = fmul fast float %7538, 0x3FC5555560000000
  %7540 = fmul fast float %7531, -3.000000e+00
  %7541 = fadd fast float %7530, %7513
  %7542 = fmul fast float %7541, 3.000000e+00
  %7543 = fadd fast float %7540, 1.000000e+00
  %7544 = fadd fast float %7543, %7542
  %7545 = fmul fast float %7531, 0x3FC5555560000000
  %7546 = fadd fast float %7512, 1.000000e+00
  %7547 = fsub fast float 1.000000e+00, %7518
  %7548 = fadd fast float %7547, %7517
  %7549 = fadd fast float %7548, %7522
  %7550 = fmul fast float %7549, 0x3FC5555560000000
  %7551 = fdiv fast float %7523, %7550
  %7552 = fsub fast float %7546, %7551
  %7553 = fsub fast float 1.000000e+00, %7512
  %7554 = fadd fast float %7528, %7515
  %7555 = fmul fast float %7554, 0x3FC5555560000000
  %7556 = fdiv fast float %7529, %7555
  %7557 = fadd fast float %7553, %7556
  %7558 = fadd fast float %7513, 1.000000e+00
  %7559 = fsub fast float 1.000000e+00, %7534
  %7560 = fadd fast float %7559, %7533
  %7561 = fadd fast float %7560, %7538
  %7562 = fmul fast float %7561, 0x3FC5555560000000
  %7563 = fdiv fast float %7539, %7562
  %7564 = fsub fast float %7558, %7563
  %7565 = fsub fast float 1.000000e+00, %7513
  %7566 = fadd fast float %7544, %7531
  %7567 = fmul fast float %7566, 0x3FC5555560000000
  %7568 = fdiv fast float %7545, %7567
  %7569 = fadd fast float %7568, %7565
  %7570 = fmul fast float %7552, %7506
  %7571 = fsub fast float %7427, %7570
  %7572 = fmul fast float %7557, %7506
  %7573 = fadd fast float %7572, %7427
  %7574 = fmul fast float %7569, %7507
  %7575 = fadd fast float %7574, %7428
  %7576 = fmul fast float %7564, %7507
  %7577 = fsub fast float %7428, %7576
  %7578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7571, float %7577, float %7495, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7579 = extractvalue %dx.types.ResRet.f32 %7578, 0
  %7580 = extractvalue %dx.types.ResRet.f32 %7578, 1
  %7581 = extractvalue %dx.types.ResRet.f32 %7578, 2
  %7582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7573, float %7577, float %7495, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7583 = extractvalue %dx.types.ResRet.f32 %7582, 0
  %7584 = extractvalue %dx.types.ResRet.f32 %7582, 1
  %7585 = extractvalue %dx.types.ResRet.f32 %7582, 2
  %7586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7571, float %7575, float %7495, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7587 = extractvalue %dx.types.ResRet.f32 %7586, 0
  %7588 = extractvalue %dx.types.ResRet.f32 %7586, 1
  %7589 = extractvalue %dx.types.ResRet.f32 %7586, 2
  %7590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %7573, float %7575, float %7495, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7591 = extractvalue %dx.types.ResRet.f32 %7590, 0
  %7592 = extractvalue %dx.types.ResRet.f32 %7590, 1
  %7593 = extractvalue %dx.types.ResRet.f32 %7590, 2
  %7594 = fsub fast float %7587, %7579
  %7595 = fsub fast float %7588, %7580
  %7596 = fsub fast float %7589, %7581
  %7597 = fmul fast float %7594, %7567
  %7598 = fmul fast float %7595, %7567
  %7599 = fmul fast float %7596, %7567
  %7600 = fadd fast float %7597, %7579
  %7601 = fadd fast float %7598, %7580
  %7602 = fadd fast float %7599, %7581
  %7603 = fsub fast float %7591, %7583
  %7604 = fsub fast float %7592, %7584
  %7605 = fsub fast float %7593, %7585
  %7606 = fmul fast float %7603, %7567
  %7607 = fmul fast float %7604, %7567
  %7608 = fmul fast float %7605, %7567
  %7609 = fsub fast float %7583, %7600
  %7610 = fadd fast float %7609, %7606
  %7611 = fsub fast float %7584, %7601
  %7612 = fadd fast float %7611, %7607
  %7613 = fsub fast float %7585, %7602
  %7614 = fadd fast float %7613, %7608
  %7615 = fmul fast float %7610, %7555
  %7616 = fmul fast float %7612, %7555
  %7617 = fmul fast float %7614, %7555
  %7618 = fadd fast float %7615, %7600
  %7619 = fadd fast float %7616, %7601
  %7620 = fadd fast float %7617, %7602
  %7621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7622 = extractvalue %dx.types.CBufRet.f32 %7621, 1
  %7623 = fmul fast float %7618, %7622
  %7624 = fmul fast float %7619, %7622
  %7625 = fmul fast float %7620, %7622
  br label %7626

; <label>:7626                                    ; preds = %7457, %7414
  %7627 = phi float [ %7497, %7457 ], [ 1.000000e+00, %7414 ]
  %7628 = phi float [ %7498, %7457 ], [ 1.000000e+00, %7414 ]
  %7629 = phi float [ %7499, %7457 ], [ 1.000000e+00, %7414 ]
  %7630 = phi float [ %7623, %7457 ], [ 0.000000e+00, %7414 ]
  %7631 = phi float [ %7624, %7457 ], [ 0.000000e+00, %7414 ]
  %7632 = phi float [ %7625, %7457 ], [ 0.000000e+00, %7414 ]
  %7633 = fmul fast float %7630, %5968
  %7634 = fmul fast float %7631, %5968
  %7635 = fmul fast float %7632, %5968
  %7636 = fmul fast float %7627, %7421
  %7637 = call float @dx.op.dot3.f32(i32 55, float %7627, float %7628, float %7629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7638 = call float @dx.op.dot3.f32(i32 55, float %7633, float %7634, float %7635, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7639 = select i1 %240, float %7637, float %7627
  %7640 = select i1 %240, float %7637, float %7628
  %7641 = select i1 %240, float 1.000000e+00, float %7629
  %7642 = select i1 %240, float %7638, float %7633
  %7643 = select i1 %240, float 0.000000e+00, float %7634
  %7644 = select i1 %240, float 0.000000e+00, float %7635
  %7645 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7646 = extractvalue %dx.types.CBufRet.i32 %7645, 3
  %7647 = and i32 %7646, 3
  %7648 = icmp ne i32 %7647, 0
  %7649 = and i32 %7646, 4
  %7650 = icmp ne i32 %7649, 0
  %7651 = and i1 %7648, %7650
  %7652 = and i1 %240, %7651
  br i1 %7652, label %7653, label %7659

; <label>:7653                                    ; preds = %7626
  %7654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7655 = extractvalue %dx.types.CBufRet.f32 %7654, 1
  %7656 = fadd fast float %7636, -1.000000e+00
  %7657 = fmul fast float %7655, %7656
  %7658 = fadd fast float %7657, 1.000000e+00
  br label %7659

; <label>:7659                                    ; preds = %7653, %7626
  %7660 = phi float [ %7658, %7653 ], [ %7636, %7626 ]
  %7661 = fadd fast float %7418, %7415
  %7662 = fmul fast float %7639, %7661
  %7663 = fadd fast float %7662, %7642
  %7664 = fadd fast float %7419, %7416
  %7665 = fmul fast float %7640, %7664
  %7666 = fadd fast float %7665, %7643
  %7667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7668 = extractvalue %dx.types.CBufRet.f32 %7667, 0
  br i1 %240, label %7669, label %7693

; <label>:7669                                    ; preds = %7659
  %7670 = fadd fast float %7663, %7666
  %7671 = fmul fast float %7668, %7670
  %7672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7673 = extractvalue %dx.types.CBufRet.f32 %7672, 3
  %7674 = extractvalue %dx.types.CBufRet.f32 %5972, 1
  %7675 = fsub fast float %5977, %5971
  %7676 = fadd fast float %7675, %5978
  %7677 = fsub fast float %7676, %7674
  %7678 = extractvalue %dx.types.CBufRet.f32 %5972, 2
  %7679 = fmul fast float %7677, %7678
  %7680 = call float @dx.op.unary.f32(i32 7, float %7679)  ; Saturate(value)
  %7681 = fsub fast float %7680, %7673
  %7682 = fmul fast float %7681, %7660
  %7683 = fadd fast float %7682, %7673
  %7684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7685 = extractvalue %dx.types.CBufRet.f32 %7684, 0
  %7686 = fsub fast float %7683, %7685
  %7687 = fmul fast float %7686, 1.000000e+01
  %7688 = call float @dx.op.unary.f32(i32 7, float %7687)  ; Saturate(value)
  %7689 = fsub fast float %3823, %5968
  %7690 = fmul fast float %7688, %7689
  %7691 = fadd fast float %7690, %5968
  %7692 = fmul fast float %7691, %7683
  br label %7717

; <label>:7693                                    ; preds = %7659
  %7694 = fadd fast float %7420, %7417
  %7695 = fmul fast float %7641, %7694
  %7696 = fadd fast float %7695, %7644
  %7697 = fmul fast float %7668, %7663
  %7698 = fmul fast float %7668, %7666
  %7699 = fmul fast float %7668, %7696
  %7700 = call float @dx.op.binary.f32(i32 35, float %7698, float %7699)  ; FMax(a,b)
  %7701 = call float @dx.op.binary.f32(i32 35, float %7697, float %7700)  ; FMax(a,b)
  %7702 = call float @dx.op.binary.f32(i32 35, float %7701, float %5968)  ; FMax(a,b)
  %7703 = fcmp fast ugt float %7702, 0x3F10000000000000
  br i1 %7703, label %7705, label %7704

; <label>:7704                                    ; preds = %7693
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7705

; <label>:7705                                    ; preds = %7704, %7693
  %7706 = add i32 %42, 356
  %7707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %7706, i32 undef)  ; BufferLoad(srv,index,wot)
  %7708 = extractvalue %dx.types.ResRet.i32 %7707, 0
  %7709 = and i32 %7708, 32
  %7710 = icmp eq i32 %7709, 0
  br i1 %7710, label %7717, label %7711

; <label>:7711                                    ; preds = %7705
  %7712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7713 = extractvalue %dx.types.CBufRet.f32 %7712, 0
  %7714 = fmul fast float %7713, 0x3FE99999A0000000
  %7715 = fadd fast float %7713, %7697
  %7716 = fadd fast float %7714, %7699
  br label %7717

; <label>:7717                                    ; preds = %7711, %7705, %7669
  %7718 = phi float [ %7671, %7669 ], [ %7715, %7711 ], [ %7697, %7705 ]
  %7719 = phi float [ %7692, %7669 ], [ %7698, %7711 ], [ %7698, %7705 ]
  %7720 = phi float [ %7691, %7669 ], [ %7716, %7711 ], [ %7699, %7705 ]
  %7721 = phi float [ %7691, %7669 ], [ %5968, %7711 ], [ %5968, %7705 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7722 = call float @dx.op.binary.f32(i32 36, float %7718, float 3.225500e+04)  ; FMin(a,b)
  %7723 = call float @dx.op.binary.f32(i32 36, float %7719, float 3.225500e+04)  ; FMin(a,b)
  %7724 = call float @dx.op.binary.f32(i32 36, float %7720, float 3.225500e+04)  ; FMin(a,b)
  %7725 = call float @dx.op.binary.f32(i32 36, float %7721, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7722)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7723)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7724)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7725)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

